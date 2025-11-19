uint64_t sub_18D145B68()
{
  outlined consume of Path.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_18D145BB0()
{
  outlined consume of Path.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_18D145BF0()
{
  outlined consume of GraphicsFilter(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

uint64_t *DisplayList.init(_:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  *&v19[12] = *(a1 + 60);
  v4 = a1[2];
  *v19 = a1[3];
  v5 = *a1;
  v17 = a1[1];
  v18 = v4;
  v16 = v5;
  if ((~*&v19[16] & 0xC0000000) != 0 || *&v19[16] != 3221225472 || *v19 | *&v19[8] | *(&v18 + 1))
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Item>, &type metadata for DisplayList.Item, MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    v10 = a1[2];
    v11 = a1[3];
    v12 = *a1;
    v9[3] = a1[1];
    v9[4] = v10;
    v9[5] = v11;
    *(v9 + 92) = *(a1 + 60);
    v9[1] = xmmword_18DDA6EB0;
    v9[2] = v12;
    outlined init with copy of DisplayList.Item(&v16, v14);
    DisplayList.Item.features.getter(v14);
    v8 = v14[0];
    v14[2] = v18;
    v15[0] = *v19;
    *(v15 + 12) = *&v19[12];
    v14[0] = v16;
    v14[1] = v17;
    DisplayList.Item.properties.getter(&v13);
    result = outlined destroy of DisplayList.Item(&v16);
    v7 = v13;
  }

  else
  {
    result = outlined destroy of DisplayList.Item(&v16);
    v7 = 0;
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v9;
  *(a2 + 8) = v8;
  *(a2 + 12) = v7;
  return result;
}

void DisplayList.Item.features.getter(_WORD *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[8];
  v4 = v3 >> 30;
  if (v3 >> 30 > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_71;
    }

    v13 = *(v2 + 16);
    if (!v13)
    {
      *a1 = 128;
      return;
    }

    if (v13 < 8)
    {
      v14 = 0;
      LOWORD(v15) = 128;
LABEL_49:
      v37 = v13 - v14;
      v38 = (v2 + 40 * v14 + 64);
      do
      {
        v39 = *v38;
        v38 += 20;
        LOWORD(v15) = v39 | v15;
        --v37;
      }

      while (v37);
LABEL_51:
      *a1 = v15;
      return;
    }

    if (v13 >= 0x10)
    {
      v30 = xmmword_18DDA6EC0;
      v14 = v13 & 0x7FFFFFFFFFFFFFF0;
      v31 = 0uLL;
      v32 = v1[5];
      v33 = v13 & 0x7FFFFFFFFFFFFFF0;
      do
      {
        v34.i16[0] = v32[32];
        v34.i16[1] = v32[52];
        v34.i16[2] = v32[72];
        v34.i16[3] = v32[92];
        v34.i16[4] = v32[112];
        v34.i16[5] = v32[132];
        v34.i16[6] = v32[152];
        v34.i16[7] = v32[172];
        v35.i16[0] = v32[192];
        v35.i16[1] = v32[212];
        v35.i16[2] = v32[232];
        v35.i16[3] = v32[252];
        v35.i16[4] = v32[272];
        v35.i16[5] = v32[292];
        v35.i16[6] = v32[312];
        v35.i16[7] = v32[332];
        v30 = vorrq_s8(v34, v30);
        v31 = vorrq_s8(v35, v31);
        v32 += 320;
        v33 -= 16;
      }

      while (v33);
      v36 = vorrq_s8(v31, v30);
      *v36.i8 = vorr_s8(*v36.i8, *&vextq_s8(v36, v36, 8uLL));
      LOWORD(v15) = v36.i16[0] | v36.i16[2] | ((v36.i32[0] | v36.i32[1]) >> 16);
      if (v13 == v14)
      {
        goto LABEL_51;
      }

      if ((v13 & 8) == 0)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v14 = 0;
      LOWORD(v15) = 128;
    }

    v21 = v14;
    v14 = v13 & 0x7FFFFFFFFFFFFFF8;
    v22 = v15;
    v23 = v21 - (v13 & 0x7FFFFFFFFFFFFFF8);
    v24 = (v2 + 40 * v21 + 184);
    do
    {
      v25.i16[0] = *(v24 - 60);
      v25.i16[1] = *(v24 - 40);
      v25.i16[2] = *(v24 - 20);
      v25.i16[3] = *v24;
      v25.i16[4] = v24[20];
      v25.i16[5] = v24[40];
      v25.i16[6] = v24[60];
      v25.i16[7] = v24[80];
      v22 = vorrq_s8(v25, v22);
      v24 += 160;
      v23 += 8;
    }

    while (v23);
    v26 = vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL));
    v15 = v26.i16[0] | v26.i16[2] | ((v26.i32[0] | v26.i32[1]) >> 16);
    if (v13 == v14)
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  v5 = v1[6];
  v6 = v1[7];
  if (v4)
  {
    v16 = a1;
    if (BYTE4(v5) <= 0xCu)
    {
      if (BYTE4(v5) > 6u)
      {
        if (BYTE4(v5) == 7)
        {
          v17 = *(v2 + 24);
          outlined copy of DisplayList.Item.Value(v2, v5, v6, v3);

          outlined consume of DisplayList.Effect(v2, v5, 7);
          goto LABEL_68;
        }

        if (BYTE4(v5) == 11)
        {
          outlined copy of DisplayList.Item.Value(v1[5], v1[6], v1[7], v1[8]);

          outlined consume of DisplayList.Effect(v2, v5, 11);
          v17 = 4;
          goto LABEL_68;
        }
      }

      else
      {
        if (BYTE4(v5) == 2)
        {
          outlined copy of DisplayList.Item.Value(v1[5], v1[6], v1[7], v1[8]);

          outlined consume of DisplayList.Effect(v2, v5, 2);
          if ((v2 & 4) != 0)
          {
            v45 = 1025;
          }

          else
          {
            v45 = 1024;
          }

          if ((v2 & 0x200) != 0)
          {
            v17 = v45;
          }

          else
          {
            v17 = (v2 & 4) >> 2;
          }

          goto LABEL_68;
        }

        if (BYTE4(v5) == 3)
        {
          outlined init with copy of AnyTrackedValue(v2 + 16, &v47);
          v18 = *(&v48 + 1);
          v19 = v49;
          __swift_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
          v20 = *(v19 + 56);
          outlined copy of DisplayList.Item.Value(v2, v5, v6, v3);
          v20(&v46, v18, v19);
          v17 = v46 | 0x400;
          __swift_destroy_boxed_opaque_existential_1(&v47);

          outlined consume of DisplayList.Effect(v2, v5, 3);
          goto LABEL_68;
        }
      }
    }

    else if (BYTE4(v5) <= 0xFu)
    {
      if (BYTE4(v5) == 13)
      {
        outlined copy of DisplayList.Item.Value(v1[5], v1[6], v1[7], v1[8]);

        outlined consume of DisplayList.Effect(v2, v5, 13);
        v17 = 2;
        goto LABEL_68;
      }

      if (BYTE4(v5) == 15)
      {
        outlined copy of DisplayList.Item.Value(v1[5], v1[6], v1[7], v1[8]);

        v27 = v2;
        v28 = v5;
        LOBYTE(v29) = 15;
LABEL_67:
        outlined consume of DisplayList.Effect(v27, v28, v29);
        v17 = 0;
        goto LABEL_68;
      }
    }

    else
    {
      switch(BYTE4(v5))
      {
        case 0x10u:
          outlined copy of DisplayList.Item.Value(v1[5], v1[6], v1[7], v1[8]);

          outlined consume of DisplayList.Effect(v2, v5, 16);
          v17 = 64;
          goto LABEL_68;
        case 0x11u:
          outlined copy of DisplayList.Item.Value(v1[5], v1[6], v1[7], v1[8]);

          outlined consume of DisplayList.Effect(v2, v5, 17);
          v17 = 32;
          goto LABEL_68;
        case 0x12u:
          (*(*v2 + 112))(&v47);
          outlined copy of DisplayList.Item.Value(v2, v5, v6, v3);

          outlined consume of DisplayList.Effect(v2, v5, 18);
          v17 = v47 | 0x11;
LABEL_68:
          *v16 = v17 | v3;
          return;
      }
    }

    outlined copy of DisplayList.Item.Value(v1[5], v1[6], v1[7], v1[8]);

    v27 = v2;
    v28 = v5;
    v29 = HIDWORD(v5);
    goto LABEL_67;
  }

  v7 = v2 >> 60;
  if ((v2 >> 60) > 10)
  {
    switch(v7)
    {
      case 0xE:
        v40 = a1;
        outlined copy of DisplayList.Content.Value(v1[5]);
        a1 = v40;
        break;
      case 0xD:
        break;
      case 0xB:
        *a1 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x18) | 0x200;
        return;
      default:
        goto LABEL_71;
    }

    *a1 = 2;
    return;
  }

  if (v7 == 6)
  {
    *a1 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    return;
  }

  if (v7 == 8)
  {
    v41 = a1;
    outlined init with copy of AnyTrackedValue((v2 & 0xFFFFFFFFFFFFFFFLL) + 16, &v47);
    v42 = *(&v48 + 1);
    v43 = v49;
    __swift_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
    v44 = *(v43 + 40);
    outlined copy of DisplayList.Content.Value(v2);
    v44(&v46, v42, v43);
    *v41 = v46 | 0x400;
    __swift_destroy_boxed_opaque_existential_1(&v47);
    outlined consume of DisplayList.Item.Value(v2, v5, v6, v3);
    return;
  }

  if (v7 != 10)
  {
    goto LABEL_71;
  }

  v8 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v9 = *(v8 + 216);
  if (!v9)
  {
    goto LABEL_71;
  }

  v10 = a1;
  outlined copy of DisplayList.Content.Value(v2);
  if ([v9 length] >= 1)
  {
    if (one-time initialization token for updateSchedule != -1)
    {
      swift_once();
    }

    v11 = static NSAttributedStringKey.updateSchedule;
    [v9 length];
    if ([v9 attribute:v11 atIndex:0 effectiveRange:0])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      outlined destroy of Any?(&v47, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>);
      v12 = *(v8 + 256);
      outlined consume of DisplayList.Item.Value(v2, v5, v6, v3);
      a1 = v10;
      if (v12)
      {
        *v10 = 8;
        return;
      }

      goto LABEL_71;
    }

    v47 = 0u;
    v48 = 0u;
    outlined destroy of Any?(&v47, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>);
  }

  outlined consume of DisplayList.Item.Value(v2, v5, v6, v3);
  a1 = v10;
LABEL_71:
  *a1 = 0;
}

uint64_t DisplayList.Item.properties.getter@<X0>(__int32 *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[8];
  v4 = v3 >> 30;
  if (v3 >> 30 > 1)
  {
    if (v4 != 2 || (v5 = *(v2 + 16)) == 0)
    {
LABEL_10:
      *a1 = 0;
      return result;
    }

    if (v5 > 7)
    {
      v7 = v5 & 0x7FFFFFFFFFFFFFF8;
      v13 = (v2 + 188);
      v14 = 0uLL;
      v15 = v5 & 0x7FFFFFFFFFFFFFF8;
      v16 = 0uLL;
      do
      {
        v17.i32[0] = *(v13 - 30);
        v17.i32[1] = *(v13 - 20);
        v17.i32[2] = *(v13 - 10);
        v17.i32[3] = *v13;
        v18.i32[0] = v13[10];
        v18.i32[1] = v13[20];
        v18.i32[2] = v13[30];
        v18.i32[3] = v13[40];
        v14 = vorrq_s8(v17, v14);
        v16 = vorrq_s8(v18, v16);
        v13 += 80;
        v15 -= 8;
      }

      while (v15);
      v19 = vorrq_s8(v16, v14);
      *v19.i8 = vorr_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL));
      v6 = v19.i32[0] | v19.i32[1];
      if (v5 == v7)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    v20 = v5 - v7;
    v21 = (v2 + 40 * v7 + 68);
    do
    {
      v22 = *v21;
      v21 += 10;
      v6 |= v22;
      --v20;
    }

    while (v20);
LABEL_20:
    *a1 = v6;
    return result;
  }

  if (!v4)
  {
    if (v2 >> 60 == 6 || v2 >> 60 == 11)
    {
      *a1 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
      return result;
    }

    goto LABEL_10;
  }

  v8 = v1[6];
  if (BYTE4(v8) == 2)
  {
    v10 = a1;
    result = outlined copy of DisplayList.Effect(v1[5], v1[6], 2);
    v12 = v2;
  }

  else
  {
    v9 = v1[7];
    v10 = a1;
    if (BYTE4(v8) == 7)
    {
      v12 = *(v2 + 28);
      outlined copy of DisplayList.Item.Value(v2, v8, v9, v3);
      outlined consume of DisplayList.Effect(v2, v8, 7);
    }

    else if (BYTE4(v8) == 18)
    {
      (*(*v2 + 120))(&v23);
      outlined copy of DisplayList.Item.Value(v2, v8, v9, v3);
      outlined consume of DisplayList.Effect(v2, v8, 18);

      v12 = v23;
    }

    else
    {
      outlined copy of DisplayList.Effect(v1[5], v1[6], SBYTE4(v8));

      outlined consume of DisplayList.Effect(v2, v8, SBYTE4(v8));

      v12 = 0;
    }
  }

  *v10 = v12 | HIDWORD(v3);
  return result;
}

uint64_t initializeWithCopy for DisplayList.Item(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = *(a2 + 64);
  outlined copy of DisplayList.Item.Value(v5, v6, v7, v8);
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  *(a1 + 56) = v7;
  *(a1 + 64) = v8;
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t type metadata accessor for DisplayList.ArchiveIDs()
{
  result = type metadata singleton initialization cache for DisplayList.ArchiveIDs;
  if (!type metadata singleton initialization cache for DisplayList.ArchiveIDs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DisplayList.Item.canonicalizeIdentityEffect(list:)(uint64_t result)
{
  v2 = *result;
  if (*(*result + 16) == 1)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 64);
    v5 = *(v2 + 72);
    v6 = *(v2 + 80);
    v7 = *(v2 + 88);
    v8 = *(v2 + 96);
    v9 = *(v2 + 104);
    *v1 = vaddq_f64(*(v2 + 32), *v1);
    *(v1 + 16) = v3;
    v10 = *(v1 + 32);
    v11 = *(v1 + 40);
    if (v4 > v10)
    {
      v10 = v4;
    }

    *(v1 + 32) = v10;
    v12 = *(v1 + 48);
    v13 = *(v1 + 56);
    v14 = *(v1 + 64);
    outlined copy of DisplayList.Item.Value(v5, v6, v7, v8);
    result = outlined consume of DisplayList.Item.Value(v11, v12, v13, v14);
    *(v1 + 40) = v5;
    *(v1 + 48) = v6;
    *(v1 + 56) = v7;
    *(v1 + 64) = v8;
    if (v9)
    {
      *(v1 + 72) = v9;
    }
  }

  return result;
}

void PlacementData.setGeometry(_:at:layoutDirection:)(__int128 *a1, unint64_t a2, unsigned __int8 *a3)
{
  v5 = a1[1];
  v28 = *a1;
  v29 = v5;
  v6 = a1[3];
  v30 = a1[2];
  v31 = v6;
  v7 = *a3;
  v8 = *(v3 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 8) = v8;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
  *(v3 + 8) = v8;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (*(v8 + 2) <= a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v10 = &v8[64 * a2];
  v12 = *(v10 + 4);
  v11 = v10 + 32;
  v13 = *v11;
  v14 = *(v11 + 1);
  v15 = *(v11 + 3);
  v27[2] = *(v11 + 2);
  v27[3] = v15;
  v27[0] = v13;
  v27[1] = v14;
  outlined destroy of ViewGeometry(v27);
  v16 = v12 & 0xFFFFFFFFFFFFFLL;
  if ((~v12 & 0x7FF0000000000000) == 0 && v16 != 0)
  {
    ++*(v3 + 16);
  }

  v18 = v28;
  v19 = v29;
  v20 = v31;
  *(v11 + 2) = v30;
  *(v11 + 3) = v20;
  *v11 = v18;
  *(v11 + 1) = v19;
  if (v7 == *(v3 + 56))
  {
    outlined init with copy of ViewGeometry(&v28, v26);
  }

  else
  {
    v21 = *(v3 + 24);
    v22 = *(v3 + 32);
    v23 = *(v3 + 40);
    v24 = *(v3 + 48);
    outlined init with copy of ViewGeometry(&v28, v26);
    v32.origin.x = v21;
    v32.origin.y = v22;
    v32.size.width = v23;
    v32.size.height = v24;
    MaxX = CGRectGetMaxX(v32);
    v33.origin.x = *v11;
    v33.origin.y = *(v11 + 1);
    v33.size.width = *(v11 + 4);
    v33.size.height = *(v11 + 5);
    *v11 = MaxX - (CGRectGetMaxX(v33) - v21);
  }

  *(v3 + 8) = v8;
}

uint64_t outlined destroy of HitTestableEvent?(uint64_t a1, unint64_t *a2)
{
  type metadata accessor for HitTestableEvent?(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI16HitTestableEventVSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for Attribute<LayoutGestureBox.Value>(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata completion function for DisplayList.ArchiveIDs()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t LayoutSubview.place(at:anchor:dimensions:)(uint64_t *a1, double a2, double a3, double a4, double a5)
{
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = a2 - v6 * a4;
  if (a4 == 0.0)
  {
    v8 = a2;
  }

  v9 = a3 - a5 * *&v7;
  if (a5 == 0.0)
  {
    v9 = a3;
  }

  if (((~*&v8 & 0x7FF0000000000000) != 0 || (*&v8 & 0xFFFFFFFFFFFFFLL) == 0) && ((~*&v9 & 0x7FF0000000000000) != 0 || (*&v9 & 0xFFFFFFFFFFFFFLL) == 0))
  {
    v12 = *a1;
    v13 = a1[1];
    v14 = a1[5];
    v15 = *(v5 + 12);
    *&v20 = v8;
    *(&v20 + 1) = v9;
    *&v21 = v12;
    *(&v21 + 1) = v13;
    *v22 = v6;
    *&v22[8] = v7;
    *&v22[24] = v14;

    v16 = _threadLayoutData();
    if (v16)
    {
      if ((*v16 & 1) == 0)
      {
        v19[0] = v20;
        v19[1] = v21;
        v19[2] = *v22;
        v19[3] = *&v22[16];
        v18 = 0;
        PlacementData.setGeometry(_:at:layoutDirection:)(v19, v15, &v18);
        return outlined destroy of ViewGeometry(&v20);
      }

      __break(1u);
    }

    __break(1u);
  }

  _StringGuts.grow(_:)(34);
  MEMORY[0x193ABEDD0](0xD000000000000018, 0x800000018DD7C5B0);
  type metadata accessor for CGPoint(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  type metadata accessor for CGSize(0);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(char *a1, uint64_t a2, int a3, unint64_t a4)
{

  return specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(a1, a2, a3, a4, 0x7974696361704F5FLL, 0xEE00746365666645, &type metadata for _OpacityEffect.Kind, type metadata accessor for _OpacityEffect.Type);
}

{
  v4 = MEMORY[0x1E69E7DE0];

  return specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(a1, a2, a3, a4, 0x74616F6C464743, 0xE700000000000000, v4, type metadata accessor for CGFloat.Type);
}

{

  return specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(a1, a2, a3, a4, 0x736172746E6F435FLL, 0xEF74636566664574, &type metadata for _ContrastEffect.Kind, type metadata accessor for _ContrastEffect.Type);
}

{

  return specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(a1, a2, a3, a4, 0x7465736E495FLL, 0xE600000000000000, &type metadata for ContainerRelativeShape._Inset.Kind, type metadata accessor for ContainerRelativeShape._Inset.Type);
}

{

  return specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(a1, a2, a3, a4, 0x7465736E495FLL, 0xE600000000000000, &type metadata for Circle._Inset.Kind, type metadata accessor for Circle._Inset.Type);
}

{

  return specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(a1, a2, a3, a4, 0x7465736E495FLL, 0xE600000000000000, &type metadata for Ellipse._Inset.Kind, type metadata accessor for Ellipse._Inset.Type);
}

{

  return specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(a1, a2, a3, a4, 0x7465736E495FLL, 0xE600000000000000, &type metadata for Rectangle._Inset.Kind, type metadata accessor for Rectangle._Inset.Type);
}

{
  v4 = MEMORY[0x1E69E63B0];

  return specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(a1, a2, a3, a4, 0x656C62756F44, 0xE600000000000000, v4, type metadata accessor for Double.Type);
}

uint64_t assignWithCopy for DisplayList(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  return a1;
}

uint64_t outlined consume of Path.Storage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 <= 3)
  {
  }

  return result;
}

uint64_t outlined copy of Path.Storage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 <= 3)
  {
  }

  return result;
}

uint64_t type metadata completion function for CachedView()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance CachedView<A, B>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for CachedView<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t CachedView.updateValue()(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 24);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v28 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = v3;
  *(&v10 + 1) = v6;
  v29 = *(v9 + 32);
  v35 = v29;
  v34 = v10;
  v11 = type metadata accessor for IDView();
  v33 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  v14 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v3;
  if (!AGGraphGetOutputValue() || ((*(v14 + 16))(v17, v1, a1), v27 = *(a1 + 52), CachedView.view.getter(v13), v18 = v28, (*(v7 + 16))(v28, &v13[*(v11 + 52)], v6), (*(v33 + 8))(v13, v11), v19 = dispatch thunk of static Equatable.== infix(_:_:)(), v20 = *(v7 + 8), v20(v18, v6), result = (v20)(&v17[v27], v6), (v19 & 1) != 0))
  {
    CachedView.view.getter(v13);
    v23 = v31;
    v22 = v32;
    v24 = v30;
    (*(v32 + 16))(v31, v13, v30);
    v25 = (*(v33 + 8))(v13, v11);
    MEMORY[0x1EEE9AC00](v25);
    *(&v27 - 2) = a1;
    *(&v27 - 1) = swift_getWitnessTable();
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v23, partial apply for closure #1 in StatefulRule.value.setter, (&v27 - 4), v24, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v26);
    return (*(v22 + 8))(v23, v24);
  }

  return result;
}

uint64_t CachedView.view.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for IDView();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t partial apply for closure #1 in static ViewModifier.makeImplicitRoot(modifier:inputs:body:)()
{
  v1 = *(v0 + 16);
  v2 = _ViewInputs.implicitRootBodyInputs.getter(v4);
  v1(v2, v4);
  return outlined destroy of _ViewListInputs(v4);
}

uint64_t MakeModifiedRoot.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v37 = a2;
  v79 = *MEMORY[0x1E69E9840];
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v4 + 14);
  v69[2] = *(v4 + 10);
  v69[3] = v11;
  v69[4] = *(v4 + 18);
  v70 = v4[22];
  v12 = *(v4 + 6);
  v69[0] = *(v4 + 2);
  v69[1] = v12;
  v13 = *(v4 + 14);
  v75 = *(v4 + 10);
  v76 = v13;
  v77 = *(v4 + 18);
  v78 = v4[22];
  v14 = *(v4 + 6);
  v73 = *(v4 + 2);
  v74 = v14;
  v16 = *(v15 + 24);
  outlined init with copy of _ViewInputs(v69, v71);
  v16(a3, a4);
  LOBYTE(v63) = 1;
  HIDWORD(v36) = _ViewInputs.intern<A>(_:id:)(v10, &v63, a3);
  (*(v8 + 8))(v10, a3);
  v71[2] = v75;
  v71[3] = v76;
  v71[4] = v77;
  v72 = v78;
  v71[0] = v73;
  v71[1] = v74;
  outlined destroy of _ViewInputs(v71);
  v17 = *(v4 + 2);
  v18 = *(v4 + 14);
  v75 = *(v4 + 10);
  v76 = v18;
  v77 = *(v4 + 18);
  v78 = v4[22];
  v19 = *(v4 + 6);
  v73 = v17;
  v74 = v19;
  v66 = v18;
  v67 = v77;
  v64 = v19;
  v65 = v75;
  v68 = v78;
  v63 = v17;
  outlined init with copy of _ViewInputs(&v73, &v57);
  v20 = *(*(a4 + 8) + 8);
  v21 = *(v20 + 8);

  v22 = v21(a3, v20);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(&v63, v22);

  v23 = v37;
  v24 = *(v37 + 16);
  v25 = *v5;
  v59 = v65;
  v60 = v66;
  v61 = v67;
  v62 = v68;
  v57 = v63;
  v58 = v64;
  v26 = *(v5 + 12);
  v27 = *(v5 + 13);
  v28 = swift_allocObject();
  *(v28 + 16) = v24;
  *(v28 + 24) = a3;
  v29 = *(v23 + 24);
  *(v28 + 32) = v29;
  *(v28 + 40) = a4;
  *(v28 + 48) = HIDWORD(v36);
  *(v28 + 56) = v26;
  *(v28 + 64) = v27;
  ShouldRecordTree = AGSubgraphShouldRecordTree();

  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v49 = v59;
  v50 = v60;
  v51 = v61;
  v52 = v62;
  v47 = v57;
  v48 = v58;
  v31 = v59;
  LODWORD(v49) = 0;
  LODWORD(v39[0]) = v25;
  v53[0] = v57;
  v53[1] = v58;
  v54 = v62;
  v53[3] = v60;
  v53[4] = v61;
  v53[2] = v49;
  v43 = v49;
  v44 = v60;
  v45 = v61;
  v46 = v62;
  v41 = v57;
  v42 = v58;
  v32 = *(v29 + 24);
  outlined init with copy of _ViewInputs(&v57, v55);
  outlined init with copy of _ViewInputs(v53, v55);
  v32(v38, v39, &v41, partial apply for closure #1 in MakeModifiedRoot.visit<A>(type:), v28, v24, v29);
  v55[2] = v43;
  v55[3] = v44;
  v55[4] = v45;
  v56 = v46;
  v55[0] = v41;
  v55[1] = v42;
  outlined destroy of _ViewInputs(v55);
  LODWORD(v49) = v31;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(v38, &v47);
    AGSubgraphEndTreeElement();
  }

  v39[2] = v49;
  v39[3] = v50;
  v39[4] = v51;
  v40 = v52;
  v39[0] = v47;
  v39[1] = v48;
  outlined destroy of _ViewInputs(v39);
  v43 = v65;
  v44 = v66;
  v45 = v67;
  v46 = v68;
  v41 = v63;
  v42 = v64;
  outlined destroy of _ViewInputs(&v41);
  v33 = v38[0];
  v34 = v38[1];

  *(v5 + 14) = v33;
  *(v5 + 15) = v34;
  return result;
}

uint64_t sub_18D147AAC()
{

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in MakeModifiedRoot.visit<A>(type:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  v7 = *(v2 + 56);
  v6 = *(v2 + 64);
  v8 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v8;
  v11[4] = *(a2 + 64);
  v12 = *(a2 + 80);
  v9 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v9;
  _GraphValue.init(_:)(v5, &v13);
  return (*(*(v4 + 8) + 32))(&v13, v11, v7, v6, v3);
}

uint64_t destroy for MakeModifiedRoot()
{
}

uint64_t lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_3(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t one-time initialization function for legacyInterpolation()
{
  if (one-time initialization token for v6 != -1)
  {
    swift_once();
  }

  v0 = static Semantics.v6;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    result = dyld_program_sdk_at_least();
  }

  else
  {
    result = static Semantics.forced >= v0;
  }

  static Color.Resolved.legacyInterpolation = result ^ 1;
  return result;
}

uint64_t RoundedRectangle.path(in:)@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v9 = *v5;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  IsNull = CGRectIsNull(*&a2);
  v13 = 0uLL;
  if (IsNull)
  {
    result = 0;
    v15 = 6;
    a5 = 0.0;
  }

  else if (v9 == 0.0 && v10 == 0.0 || (v18.origin.x = a2, v18.size.width = a4, v18.origin.y = a3, v18.size.height = a5, CGRectIsInfinite(v18)))
  {
    v15 = 0;
    result = *&a2;
    *&v13 = a3;
    *(&v13 + 1) = a4;
  }

  else
  {
    result = swift_allocObject();
    *(result + 16) = a2;
    *(result + 24) = a3;
    *(result + 32) = a4;
    *(result + 40) = a5;
    *(result + 48) = v9;
    *(result + 56) = v10;
    v15 = 2;
    a5 = 0.0;
    *(result + 64) = v11;
    v13 = 0uLL;
  }

  *a1 = result;
  *(a1 + 8) = v13;
  *(a1 + 24) = a5;
  *(a1 + 32) = v15;
  return result;
}

uint64_t closure #1 in DynamicPreferenceCombiner.value.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  Value = AGGraphGetValue();
  v4 = *(*(AssociatedTypeWitness - 8) + 16);

  return v4(a1, Value, AssociatedTypeWitness);
}

uint64_t assignWithCopy for DynamicViewListItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  __swift_assign_boxed_opaque_existential_1((a1 + 16), (a2 + 16));
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  v4 = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 72) = v4;
  return a1;
}

uint64_t assignWithCopy for DynamicContainer.Info(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  return a1;
}

unint64_t outlined copy of DisplayList.Content.Value(unint64_t result)
{
  switch(result >> 60)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t initializeWithCopy for DisplayList.ViewUpdater.Model.State(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  outlined copy of GraphicsBlendMode(v4, v5);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v6;
  *(a1 + 64) = *(a2 + 64);
  v7 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v7;
  v8 = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 109) = *(a2 + 109);
  *(a1 + 110) = *(a2 + 110);
  v9 = *(a2 + 112);
  *(a1 + 96) = v8;

  if ((~v9 & 0xF000000000000007) != 0)
  {
  }

  v10 = *(a2 + 120);
  *(a1 + 112) = v9;
  *(a1 + 120) = v10;
  v11 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v11;
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);

  return a1;
}

uint64_t specialized static DisplayList.ViewUpdater.Model.merge(item:index:into:)(__int128 *a1, _OWORD *a2, uint64_t a3)
{
  *angle = *a2;
  if ((a1[4] & 0xC0000000) == 0x80000000)
  {
    if (*(*(a3 + 120) + 16))
    {
      v5 = *(a1 + 5);
      specialized Array._customRemoveLast()(&__dst);
      if (BYTE4(__dst.c))
      {
        specialized Array.remove(at:)(*(*(a3 + 120) + 16) - 1, &__dst);
        v6 = *&__dst.a;
        c_low = LODWORD(__dst.c);
      }

      else
      {
        c_low = LODWORD(__dst.c);
        v6 = *&__dst.a;
      }

      v11 = (v5 + 24);
      v12 = *(v5 + 16) + 1;
      v9 = MEMORY[0x1E69E7CC0];
      v10 = 0x40000000;
      while (--v12)
      {
        v13 = v11;
        v11 += 20;
        if ((vminv_u16(vmovn_s32(vceqq_s32(*(v13 + 4), v6))) & 1) != 0 && *(v13 + 6) == c_low)
        {
          v9 = *(v11 - 1);
          v8 = *v11;
          v14 = *(v11 + 1);

          v10 = (v14 << 32) | 0x40000000;
          goto LABEL_13;
        }
      }

      v8 = 0;
    }

    else
    {
      v8 = 0;
      v9 = MEMORY[0x1E69E7CC0];
      v10 = 0x40000000;
    }

LABEL_13:
    v15 = v10 | v8;
    outlined consume of DisplayList.Item.Value(*(a1 + 5), *(a1 + 6), *(a1 + 7), *(a1 + 8));
    *(a1 + 40) = xmmword_18DDA6ED0;
    *(a1 + 7) = v9;
    *(a1 + 8) = v15;
  }

  if (*(a3 + 8) != 1.0)
  {
    v19 = *(a3 + 16);
    v20 = *(a3 + 24);
    outlined copy of GraphicsBlendMode(v19, v20);
    if (one-time initialization token for normal != -1)
    {
      swift_once();
    }

    v21 = static GraphicsBlendMode.normal;
    v22 = byte_1ED52F818;
    if (v20)
    {
      if (byte_1ED52F818)
      {
        swift_unknownObjectRetain();
        outlined consume of GraphicsBlendMode(v19, 1);
        outlined consume of GraphicsBlendMode(v21, 1);
        if (v19 != v21)
        {
          goto LABEL_32;
        }

        goto LABEL_15;
      }

      swift_unknownObjectRetain();
    }

    else if ((byte_1ED52F818 & 1) == 0)
    {
      outlined consume of GraphicsBlendMode(v19, 0);
      outlined consume of GraphicsBlendMode(v21, 0);
      if (v19 != v21)
      {
        goto LABEL_32;
      }

      goto LABEL_15;
    }

    outlined copy of GraphicsBlendMode(v21, v22);
    outlined consume of GraphicsBlendMode(v19, v20);
    outlined consume of GraphicsBlendMode(v21, v22);
    outlined consume of GraphicsBlendMode(v19, v20);
    goto LABEL_32;
  }

LABEL_15:
  if ((*(a3 + 108) & 1) == 0)
  {
    v16 = *(a3 + 88);
    v17 = *(v16 + 16);
    if (!v17)
    {
      goto LABEL_40;
    }

    v18 = (v16 + 32);
    while (1)
    {
      memmove(&__dst, v18, 0x7CuLL);
      if (_s7SwiftUI14GraphicsFilterOWOg(&__dst) != 7)
      {
        break;
      }

      _s7SwiftUI14GraphicsFilterOWOj6_(&__dst);
      v18 += 128;
      if (!--v17)
      {
        goto LABEL_40;
      }
    }
  }

LABEL_32:
  v23 = *(a1 + 8);
  if ((v23 & 0xC0000000) != 0x40000000)
  {
    goto LABEL_40;
  }

  v25 = *(a1 + 5);
  v24 = *(a1 + 6);
  v26 = *(a1 + 7);
  if (BYTE4(v24) != 10)
  {
    outlined copy of DisplayList.Effect(*(a1 + 5), *(a1 + 6), SBYTE4(v24));

    v28 = v25;
    v29 = v24;
    v30 = HIDWORD(v24);
LABEL_38:
    outlined consume of DisplayList.Effect(v28, v29, v30);
    goto LABEL_39;
  }

  memmove(&__dst, (v25 + 16), 0x7CuLL);
  if (_s7SwiftUI14GraphicsFilterOWOg(&__dst) != 15)
  {
    outlined copy of DisplayList.Item.Value(v25, v24, *&v26, v23);
    v28 = v25;
    v29 = v24;
    LOBYTE(v30) = 10;
    goto LABEL_38;
  }

  v27 = _s7SwiftUI14GraphicsFilterOWOj6_(&__dst);
  outlined copy of DisplayList.Item.Value(v25, v24, *&v26, v23);
  outlined consume of DisplayList.Effect(v25, v24, 10);
  *&t1.tx = *(v27 + 32);
  *v166 = *(v27 + 48);
  *&v166[16] = *(v27 + 64);
  *&v166[29] = *(v27 + 77);
  *&t1.a = *v27;
  *&t1.c = *(v27 + 16);
  t2.a = v26;
  LOWORD(t2.b) = v23;
  HIDWORD(t2.b) = HIDWORD(v23);
  DisplayList.Item.rewriteVibrancyFilterAsBackdrop(_:list:)(&t1, &t2);
LABEL_39:

LABEL_40:
  v31 = a1[1];
  v32 = a1[3];
  v187 = a1[2];
  v188[0] = v32;
  *(v188 + 12) = *(a1 + 60);
  v33 = *a1;
  v34 = *a1;
  v186[1] = a1[1];
  v186[0] = v33;
  v35 = a1[3];
  *&__dst.tx = v187;
  *v173 = v35;
  *&v173[12] = *(a1 + 60);
  *&__dst.a = v34;
  *&__dst.c = v31;
  outlined init with copy of DisplayList.Item(v186, &t1);
  v36 = DisplayList.Item.discardContainingClips(state:)(a3);
  v189 = __dst;
  v190[0] = *v173;
  *(v190 + 12) = *&v173[12];
  outlined destroy of DisplayList.Item(&v189);
  if (v36)
  {
    v37 = 4;
  }

  else
  {
    v37 = 0;
  }

  if (*(*(a3 + 80) + 16))
  {
    v38 = a1[1];
    v181[0] = *a1;
    v181[1] = v38;
    v39 = a1[3];
    v41 = *a1;
    v40 = a1[1];
    v182 = a1[2];
    v183[0] = v39;
    *(v183 + 12) = *(a1 + 60);
    v42 = a1[3];
    *&__dst.tx = a1[2];
    *v173 = v42;
    *&v173[12] = *(a1 + 60);
    *tx = v181[0];
    v43 = *&v182;
    *&__dst.a = v41;
    *&__dst.c = v40;
    outlined init with copy of DisplayList.Item(v181, &t1);
    v44 = specialized DisplayList.Item.canMergeWithClipMask(state:)();
    v184 = __dst;
    v185[0] = *v173;
    *(v185 + 12) = *&v173[12];
    outlined destroy of DisplayList.Item(&v184);
    if ((v44 & 1) == 0 || (v45 = *(a3 + 144), v46 = *(a3 + 112), v168 = *(a3 + 128), v169 = v45, v47 = *(a3 + 144), v170 = *(a3 + 160), v48 = *(a3 + 80), v49 = *(a3 + 48), *&v166[16] = *(a3 + 64), *&v166[32] = v48, v50 = *(a3 + 80), v51 = *(a3 + 112), *v167 = *(a3 + 96), *&v167[16] = v51, v52 = *(a3 + 16), *&t1.a = *a3, *&t1.c = v52, v53 = *(a3 + 48), v55 = *a3, v54 = *(a3 + 16), *&t1.tx = *(a3 + 32), *v166 = v53, v160 = v168, v161 = v47, v162 = *(a3 + 160), *&v157[16] = *&v166[16], v158 = v50, *v159 = *v167, *&v159[16] = v46, *&t2.a = v55, *&t2.c = v54, v171 = *(a3 + 176), v163 = *(a3 + 176), *&t2.tx = *&t1.tx, *v157 = v49, DisplayList.ViewUpdater.Model.State.clipRect()(&v164), v177 = v160, v178 = v161, v179 = v162, v180 = v163, *&v173[16] = *&v157[16], v174 = v158, v175 = *v159, v176 = *&v159[16], __dst = t2, *v173 = *v157, outlined init with copy of DisplayList.ViewUpdater.Model.State(&t1, &v154), outlined destroy of DisplayList.ViewUpdater.Model.State(&__dst), v164.value.style != SwiftUI_RoundedCornerStyle_unknownDefault) && (v56 = a1[1], *&v154.a = *a1, *&v154.c = v56, v57 = a1[3], v59 = *a1, v58 = a1[1], *&v154.tx = a1[2], v155[0] = v57, *(v155 + 12) = *(a1 + 60), v60 = a1[3], *&v152.tx = a1[2], v153[0] = v60, *(v153 + 12) = *(a1 + 60), *tx = *&v154.a, v43 = v154.tx, *&v152.a = v59, *&v152.c = v58, rect = v164.value.rect, cornerSize = v164.value.cornerSize, v151 = v164.value.style & 1, outlined init with copy of DisplayList.Item(&v154, v148), v61 = DisplayList.Item.canMergeWithClipRect(_:state:)(&rect), t2 = v152, *v157 = v153[0], *&v157[12] = *(v153 + 12), outlined destroy of DisplayList.Item(&t2), (v61 & 1) == 0))
    {
      v37 = v37 | 2;
    }

    v62 = *tx;
  }

  else
  {
    v62 = v186[0];
    v43 = *&v187;
  }

  b = *(&v62 + 1);
  txa = *&v62;
  if (v37 & 2) == 0 && (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*(a3 + 32), xmmword_18DDAA020), vceqq_f64(*(a3 + 48), xmmword_18DDAB500))))))
  {
    v64 = a1[1];
    *&t1.a = *a1;
    *&t1.c = v64;
    v65 = a1[3];
    v67 = *a1;
    v66 = a1[1];
    *&t1.tx = a1[2];
    *v166 = v65;
    *&v166[12] = *(a1 + 60);
    v68 = a1[3];
    *&t2.tx = a1[2];
    *v157 = v68;
    *&v157[12] = *(a1 + 60);
    txa = t1.a;
    b = t1.b;
    v43 = t1.tx;
    *&t2.a = v67;
    *&t2.c = v66;
    outlined init with copy of DisplayList.Item(&t1, &v154);
    v69 = DisplayList.Item.canMergeWithTransform()();
    __dst = t2;
    *v173 = *v157;
    *&v173[12] = *&v157[12];
    outlined destroy of DisplayList.Item(&__dst);
    if (!v69)
    {
      v37 = v37 | 2;
    }
  }

  if ((v37 & 2) == 0 && (*(a3 + 96) || *(*(a3 + 88) + 16)))
  {
    v70 = *a1;
    b = *(a1 + 1);
    v71 = a1[2];
    *&__dst.c = a1[1];
    *&__dst.tx = v71;
    *v173 = a1[3];
    *&v173[12] = *(a1 + 60);
    txa = v70;
    __dst.a = v70;
    __dst.b = b;
    if (DisplayList.Item.canInheritShadowOrFilters.getter())
    {
      v37 = v37;
    }

    else
    {
      v37 = v37 | 2;
    }
  }

  if ((v37 & 2) != 0)
  {
    goto LABEL_71;
  }

  if ((*(a3 + 104) & 2) == 0)
  {
    goto LABEL_72;
  }

  v72 = *(a1 + 16) >> 30;
  if (v72 <= 1)
  {
    v73 = *(a1 + 5);
    if (v72)
    {
      v74 = *(a1 + 12);
      v75 = *(a1 + 13);
      outlined copy of DisplayList.Effect(*(a1 + 5), v74, v75);
      if (v75 != 3)
      {
        outlined consume of DisplayList.Effect(v73, v74, v75);
        goto LABEL_72;
      }

      outlined consume of DisplayList.Effect(v73, v74, 3);
    }

    else if (v73 >> 61 != 4)
    {
      goto LABEL_72;
    }

    v37 = v37 | 2;
LABEL_71:
    DisplayList.ViewUpdater.Model.State.reset()();
    goto LABEL_72;
  }

  if (v72 != 3)
  {
    goto LABEL_159;
  }

LABEL_72:
  v76 = *(a3 + 48);
  *&__dst.a = *(a3 + 32);
  *&__dst.c = v76;
  *&__dst.tx = *(a3 + 64);
  CGAffineTransformTranslate(&t1, &__dst, txa, b);
  a = t1.a;
  v78 = t1.b;
  c = t1.c;
  d = t1.d;
  v81 = t1.tx;
  ty = t1.ty;
  *(a3 + 32) = t1.a;
  *(a3 + 40) = v78;
  *(a3 + 48) = c;
  *(a3 + 56) = d;
  *(a3 + 64) = v81;
  *(a3 + 72) = ty;
  if (*&v43 <= *(a3 + 144))
  {
    v83 = *(a3 + 144);
  }

  else
  {
    v83 = v43;
  }

  *(a3 + 144) = v83;
  v84 = *(a1 + 16) >> 30;
  if (v84 > 1)
  {
    if (v84 == 3)
    {
      return v37 & 0xFFFFFFFD;
    }

LABEL_159:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    JUMPOUT(0x18D149550);
  }

  v85 = *(a1 + 5);
  if (!v84)
  {
    if (v85 >> 60 == 2)
    {
      if (!*(*((v85 & 0xFFFFFFFFFFFFFFFLL) + 0x28) + 16))
      {
        return v37 | 1;
      }
    }

    else if (v85 >> 60 || !*(*(v85 + 40) + 16))
    {
      return v37 | 1;
    }

    specialized Array.append<A>(contentsOf:)(v92);
    v93 = *(a3 + 160);
    if (*&v43 > *&v93)
    {
      v93 = v43;
    }

    *(a3 + 160) = v93;
    return v37 | 1;
  }

  v86 = *(a1 + 6);
  switch(BYTE4(v86))
  {
    case 1:
      outlined copy of DisplayList.Effect(v85, v86, 1);
      outlined consume of DisplayList.Effect(v85, v86, 1);
      return v37;
    case 2:
      outlined copy of DisplayList.Effect(v85, v86, 2);
      *(a3 + 104) |= v85;
      v102 = *(a3 + 176);
      if (*&v43 > *&v102)
      {
        v102 = v43;
      }

      *(a3 + 176) = v102;
      return v37;
    case 3:
      outlined copy of DisplayList.Effect(v85, v86, 3);
      v103 = v85;
      v104 = v86;
      v105 = 3;
      goto LABEL_124;
    case 4:
      outlined copy of DisplayList.Effect(v85, v86, 4);
      *(a3 + 8) = *(a3 + 8) * *&v85;
      v95 = *(a3 + 128);
      if (*&v43 > *&v95)
      {
        v95 = v43;
      }

      *(a3 + 128) = v95;
      return v37;
    case 5:
      outlined copy of DisplayList.Effect(v85, v86, 5);
      outlined consume of GraphicsBlendMode(*(a3 + 16), *(a3 + 24));
      *(a3 + 16) = v85;
      *(a3 + 24) = v86 & 1;
      v106 = *(a3 + 136);
      if (*&v43 > *&v106)
      {
        v106 = v43;
      }

      *(a3 + 136) = v106;
      return v37;
    case 6:
      outlined copy of DisplayList.Effect(v85, v86, 6);
      v107 = *(v85 + 32);
      *&__dst.a = *(v85 + 16);
      *&__dst.c = v107;
      LOBYTE(__dst.tx) = *(v85 + 48);
      if (*(v85 + 50))
      {
        v108 = 256;
      }

      else
      {
        v108 = 0;
      }

      DisplayList.ViewUpdater.Model.State.addClip(_:style:)(&__dst, v108 | *(v85 + 49));
      outlined consume of DisplayList.Effect(v85, v86, 6);
      v109 = *(a3 + 152);
      if (*&v43 > *&v109)
      {
        v109 = v43;
      }

      *(a3 + 152) = v109;
      return v37;
    case 7:
      outlined copy of DisplayList.Effect(v85, v86, 7);
      outlined consume of DisplayList.Effect(v85, v86, 7);
      v37 = v37 | 1;
      *(a3 + 108) = 1;
      return v37;
    case 8:
      outlined copy of DisplayList.Effect(v85, v86, 8);
      v103 = v85;
      v104 = v86;
      v105 = 8;
LABEL_124:
      outlined consume of DisplayList.Effect(v103, v104, v105);
      return v37 | 1;
    case 9:
      outlined copy of DisplayList.Effect(v85, v86, 9);
      v97 = *(v85 + 16);
      v96 = *(v85 + 32);
      v98 = *(v85 + 48);
      v99 = *(v85 + 24);
      if (*(v85 + 88) > 1u)
      {
        if (*(v85 + 88) == 2)
        {
          *anglea = *(v85 + 16);
          txc = *(v85 + 32);
          CGAffineTransformMakeTranslation(&__dst, *(v85 + 24), *&v96);
          CGAffineTransformRotate(&t1, &__dst, anglea[0]);
          __dst = t1;
          CGAffineTransformTranslate(&t1, &__dst, -v99, -txc);
          *&v97 = t1.a;
          v99 = t1.b;
          *&v96 = t1.c;
          v100 = t1.d;
          *&v98 = t1.tx;
          v101 = t1.ty;
          goto LABEL_136;
        }

        v128 = *(v85 + 64);
        *&v173[16] = *(v85 + 80);
        *&__dst.a = v97;
        *&__dst.c = v96;
        *&__dst.tx = v98;
        *v173 = v128;
        _Rotation3DEffect.Data.transform.getter(&t2);
        v97 = *&t2.a;
        v96 = *&t2.c;
        v98 = *&t2.tx;
        *&v184.a = *v157;
        v127 = *&v157[16];
      }

      else
      {
        if (!*(v85 + 88))
        {
          v100 = *(v85 + 40);
          v101 = *(v85 + 56);
LABEL_136:
          *&__dst.a = v97;
          __dst.b = v99;
          *&__dst.c = v96;
          __dst.d = v100;
          *&__dst.tx = v98;
          __dst.ty = v101;
          *&t1.a = v97;
          t1.b = v99;
          *&t1.c = v96;
          t1.d = v100;
          *&t1.tx = v98;
          t1.ty = v101;
          t2.a = a;
          t2.b = v78;
          t2.c = c;
          t2.d = d;
          t2.tx = v81;
          t2.ty = ty;
          CGAffineTransformConcat(&v154, &t1, &t2);
          v119 = *&v154.c;
          v120 = *&v154.tx;
          *(a3 + 32) = *&v154.a;
          *(a3 + 48) = v119;
          *(a3 + 64) = v120;
          *(a3 + 144) = v83;
          DisplayList.ViewUpdater.Model.State.adjust(for:)(&__dst);
          outlined consume of DisplayList.Effect(v85, v86, 9);
          return v37;
        }

        *&v184.a = *(v85 + 64);
        v127 = *(v85 + 80);
      }

      v184.c = v127;
      *&t1.a = v97;
      *&t1.c = v96;
      *&t1.tx = v98;
      *v166 = *&v184.a;
      *&v166[16] = v127;
      *&__dst.a = 0x3FF0000000000000uLL;
      *&__dst.c = 0uLL;
      *&__dst.tx = 0x3FF0000000000000uLL;
      *v173 = 0uLL;
      *&v173[16] = 0x3FF0000000000000;
      v129 = specialized static ProjectionTransform.== infix(_:_:)(&t1.a, &__dst.a);
      outlined consume of DisplayList.Effect(v85, v86, 9);
      if (!v129 && (v37 & 1) == 0)
      {
        return v37 | 1;
      }

      return v37;
    case 0xA:
      outlined copy of DisplayList.Effect(v85, v86, 10);
      v110 = *(v85 + 96);
      *&v166[16] = *(v85 + 80);
      *&v166[32] = v110;
      *v167 = *(v85 + 112);
      *&v167[12] = *(v85 + 124);
      v111 = *(v85 + 32);
      *&t1.a = *(v85 + 16);
      *&t1.c = v111;
      v112 = *(v85 + 64);
      *&t1.tx = *(v85 + 48);
      *v166 = v112;
      memmove(&__dst, (v85 + 16), 0x7CuLL);
      v113 = _s7SwiftUI14GraphicsFilterOWOg(&__dst);
      if (v113 == 4)
      {
        v121 = _s7SwiftUI14GraphicsFilterOWOj6_(&__dst);
        type metadata accessor for MutableBox<ResolvedShadowStyle>(0, &lazy cache variable for type metadata for MutableBox<ResolvedShadowStyle>, &type metadata for ResolvedShadowStyle, type metadata accessor for MutableBox);
        v122 = swift_allocObject();
        v124 = *(v121 + 16);
        v123 = *(v121 + 32);
        v125 = *v121;
        *(v122 + 61) = *(v121 + 45);
        *(v122 + 16) = v125;
        *(v122 + 32) = v124;
        *(v122 + 48) = v123;

        outlined consume of DisplayList.Effect(v85, v86, 10);
        *(a3 + 96) = v122;
        v126 = *(a3 + 168);
        if (*&v43 > *&v126)
        {
          v126 = v43;
        }

        *(a3 + 168) = v126;
      }

      else
      {
        if (v113 == 18)
        {
          _s7SwiftUI14GraphicsFilterOWOj6_(&__dst);
LABEL_144:
          outlined consume of DisplayList.Effect(v85, v86, 10);
          return v37;
        }

        *&v157[16] = *&v166[16];
        v158 = *&v166[32];
        *v159 = *v167;
        *&v159[12] = *&v167[12];
        t2 = t1;
        *v157 = *v166;
        outlined init with copy of GraphicsFilter(&t1, &v154);
        if (GraphicsFilter.isIdentity.getter())
        {
          outlined destroy of GraphicsFilter(&t1);
          goto LABEL_144;
        }

        v131 = *(a3 + 88);
        outlined init with copy of GraphicsFilter(&t1, &t2);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v131 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v131 + 2) + 1, 1, v131);
        }

        v133 = *(v131 + 2);
        v132 = *(v131 + 3);
        if (v133 >= v132 >> 1)
        {
          v131 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v132 > 1), v133 + 1, 1, v131);
        }

        outlined destroy of GraphicsFilter(&t1);
        *(v131 + 2) = v133 + 1;
        v134 = &v131[128 * v133];
        v135 = *v166;
        v136 = *&t1.a;
        v137 = *&t1.c;
        *(v134 + 4) = *&t1.tx;
        *(v134 + 5) = v135;
        *(v134 + 2) = v136;
        *(v134 + 3) = v137;
        v139 = *&v166[32];
        v138 = *v167;
        v140 = *&v166[16];
        *(v134 + 140) = *&v167[12];
        *(v134 + 7) = v139;
        *(v134 + 8) = v138;
        *(v134 + 6) = v140;
        outlined consume of DisplayList.Effect(v85, v86, 10);
        *(a3 + 88) = v131;
        v141 = *(a3 + 160);
        if (*&v43 > *&v141)
        {
          v141 = v43;
        }

        *(a3 + 160) = v141;
      }

      break;
    case 0xB:
    case 0xD:
      goto LABEL_159;
    case 0xC:
      outlined copy of DisplayList.Effect(v85, v86, 12);
      outlined consume of DisplayList.Effect(v85, v86, 12);
      return v37;
    case 0xE:
      outlined copy of DisplayList.Effect(v85, v86, 14);
      outlined consume of DisplayList.Effect(v85, v86, 14);
      return v37;
    case 0xF:
      outlined copy of DisplayList.Effect(v85, v86, 15);
      outlined consume of DisplayList.Effect(v85, v86, 15);
      return v37;
    case 0x10:
      outlined copy of DisplayList.Effect(v85, v86, 16);
      *txb = *(v85 + 16);
      v114 = *(v85 + 32);
      v115 = *(a3 + 120);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v115 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v115 + 2) + 1, 1, v115);
      }

      v117 = *(v115 + 2);
      v116 = *(v115 + 3);
      if (v117 >= v116 >> 1)
      {
        v115 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v116 > 1), v117 + 1, 1, v115);
      }

      *(v115 + 2) = v117 + 1;
      v118 = &v115[20 * v117];
      *(v118 + 2) = *txb;
      *(v118 + 12) = v114;
      outlined consume of DisplayList.Effect(v85, v86, 16);
      *(a3 + 120) = v115;
      return v37;
    case 0x11:
      outlined copy of DisplayList.Effect(v85, v86, 17);
      outlined consume of DisplayList.Effect(v85, v86, 17);
      return v37;
    case 0x12:
      outlined copy of DisplayList.Effect(v85, v86, 18);
      outlined consume of DisplayList.Effect(v85, v86, 18);
      return v37;
    case 0x13:
      outlined copy of DisplayList.Effect(v85, v86, 19);
      outlined consume of DisplayList.Effect(v85, v86, 19);
      return v37;
    case 0x14:
      if (v85 | v86)
      {
        outlined copy of DisplayList.Effect(v85, v86, 20);
        v37 = v37 | 1;
        if (v85 ^ 1 | v86)
        {
          *(a3 + 110) = 1;
        }
      }

      else
      {
        outlined copy of DisplayList.Effect(v85, v86, 20);
      }

      return v37;
    default:
      outlined copy of DisplayList.Effect(v85, v86, 0);
      if (*(v85 + 16))
      {
        v87 = *(v85 + 32);
        if (v87)
        {
          v88 = *(v85 + 24);
          v89 = swift_allocObject();
          *(v89 + 16) = v88;
          *(v89 + 24) = v87;
          v90 = v89 | 0x8000000000000000;
          v91 = *(a3 + 112);

          outlined consume of BackdropGroupID?(v91);
          outlined consume of DisplayList.Effect(v85, v86, 0);
          *(a3 + 112) = v90;
        }

        else
        {
          v130 = swift_allocObject();
          *(v130 + 16) = *angle;
          outlined consume of BackdropGroupID?(*(a3 + 112));
          outlined consume of DisplayList.Effect(v85, v86, 0);
          *(a3 + 112) = v130;
        }
      }

      else
      {
        outlined consume of BackdropGroupID?(*(a3 + 112));
        outlined consume of DisplayList.Effect(v85, v86, 0);
        *(a3 + 112) = 0xF000000000000007;
      }

      return v37;
  }

  return v37;
}

uint64_t sub_18D1495B4()
{

  return swift_deallocObject();
}

uint64_t DisplayList.Item.discardContainingClips(state:)(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = *(v2 + 2);
  if (!v3)
  {
    return 1;
  }

  v5 = *v1;
  v177 = *(v1 + 16);
  v178 = *(v1 + 8);
  r2 = *(v1 + 24);
  v7 = *(v1 + 40);
  v6 = *(v1 + 48);
  v9 = *(v1 + 56);
  v8 = *(v1 + 64);
  v10 = *(v2 + 2);
  v11 = *(v2 + 5);
  v191 = *(v2 + 4);
  v192 = v11;
  v193[0] = *(v2 + 6);
  *(v193 + 11) = *(v2 + 107);
  v12 = *(v2 + 3);
  v190.origin = v10;
  v190.size = v12;
  if (v191 <= 2u)
  {
    if (v191 < 2u)
    {
      IsNull = CGRectIsNull(v190);
      goto LABEL_18;
    }

    if (!CGRectIsNull(*(*&v10.x + 16)))
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (v191 != 5)
  {
    if (v191 == 6)
    {
      outlined destroy of DisplayList.ViewUpdater.Model.Clip(&v190);
      return 0;
    }

    goto LABEL_180;
  }

  if (!*(*&v10.x + 16))
  {
    if (*(*&v10.x + 24))
    {
      goto LABEL_8;
    }

    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (*(*&v10.x + 16) != 1)
  {
    outlined init with copy of DisplayList.ViewUpdater.Model.Clip(&v190, &__dst);
    if (one-time initialization token for bufferCallbacks != -1)
    {
      swift_once();
    }

    goto LABEL_17;
  }

LABEL_8:
  outlined init with copy of DisplayList.ViewUpdater.Model.Clip(&v190, &__dst);
LABEL_17:
  IsNull = RBPathIsEmpty();
LABEL_18:
  v14 = IsNull;
  outlined destroy of DisplayList.ViewUpdater.Model.Clip(&v190);
  if (v14)
  {
    return 0;
  }

LABEL_20:
  if ((v8 & 0xC0000000) != 0)
  {
    return 1;
  }

  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  if ((v16 != 0.0 || v17 != 0.0) && (*(a1 + 32) != 0.0 || v18 != 0.0))
  {
    return 1;
  }

  __dst.a = *(a1 + 32);
  __dst.b = v16;
  __dst.c = v17;
  __dst.d = v18;
  *&__dst.tx = *(a1 + 64);
  CGAffineTransformInvert(&v184, &__dst);
  b = v184.b;
  a = v184.a;
  d = v184.d;
  c = v184.c;
  ty = v184.ty;
  tx = v184.tx;
  outlined copy of DisplayList.Content.Value(v7);
  v168 = v8;
  v167 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_176:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  }

  v19 = 0;
  *(a1 + 80) = v2;
  v20 = v7;
  v7 >>= 60;
  v166 = v20;
  v159 = v20 & 0xFFFFFFFFFFFFFFFLL;
  v148 = *(MEMORY[0x1E695F050] + 8);
  v149 = *MEMORY[0x1E695F050];
  v146 = *(MEMORY[0x1E695F050] + 24);
  v147 = *(MEMORY[0x1E695F050] + 16);
  v21 = 0.0;
  v22 = 1;
  v169 = v5;
  while (1)
  {
    while (1)
    {
      if (v19 < 0)
      {
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
        goto LABEL_176;
      }

      if (v19 >= *(v2 + 2))
      {
        goto LABEL_170;
      }

      v23 = &v2[96 * v19 + 32];
      if (*(v23 + 88) == 1)
      {
        break;
      }

LABEL_28:
      if (++v19 >= v3)
      {
        goto LABEL_164;
      }
    }

    v24 = *v23;
    v25 = *(v23 + 32);
    if (v25 == 2)
    {
      v27 = *(v24 + 32);
      v28 = *(v24 + 40);
      v29 = *(v24 + 48);
      v179 = *(v24 + 56);
      v24 = *(v24 + 16);
    }

    else
    {
      v26 = *(v23 + 16);
      if (v25 == 1)
      {
        v27 = *(v23 + 16);
        v28 = *(v23 + 24);
        if (vabdd_f64(v26, v28) >= 0.001)
        {
          goto LABEL_28;
        }

        v29 = v26 * 0.5;
        v179 = v26 * 0.5;
      }

      else
      {
        if (*(v23 + 32))
        {
          goto LABEL_28;
        }

        v27 = *(v23 + 16);
        v28 = *(v23 + 24);
        v29 = 0.0;
        v179 = 0.0;
      }
    }

    v30 = *(&v24 + 1);
    __dst.a = a;
    __dst.b = b;
    __dst.c = c;
    __dst.d = d;
    __dst.tx = tx;
    __dst.ty = ty;
    v195 = CGRectApplyAffineTransform(*&v24, &__dst);
    x = v195.origin.x;
    y = v195.origin.y;
    width = v195.size.width;
    height = v195.size.height;
    if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v179 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      __dst.a = a;
      __dst.b = b;
      __dst.c = c;
      __dst.d = d;
      __dst.tx = tx;
      __dst.ty = ty;
      v194.width = v29;
      v194.height = v179;
      v35 = CGSizeApplyAffineTransform(v194, &__dst);
      v29 = copysign(v35.width, v29);
      v5 = v169;
      v179 = copysign(v35.height, v179);
    }

    if (v7 > 0xC)
    {
LABEL_164:
      outlined consume of DisplayList.Item.Value(v166, v167, v9, v168);
      return 1;
    }

    if (((1 << v7) & 0x1C4F) == 0)
    {
      break;
    }

    v196.origin.x = x;
    v196.origin.y = y;
    v196.size.width = width;
    v196.size.height = height;
    v218.origin.x = v5;
    v218.size.width = v177;
    v218.origin.y = v178;
    v218.size.height = r2;
    v197 = CGRectIntersection(v196, v218);
    if (CGRectIsEmpty(v197))
    {
      v140 = v166;
      v141 = v167;
      v142 = v9;
      v143 = v168;
      goto LABEL_167;
    }

    if (v22)
    {
      v36 = *(a1 + 88);
      v37 = *(a1 + 96);
      if (!v37)
      {
        v21 = 0.0;
        v40 = *(v36 + 16);
        if (!v40)
        {
          goto LABEL_57;
        }

LABEL_52:
        v41 = (v36 + 32);
        do
        {
          memmove(&__dst, v41, 0x7CuLL);
          if (!_s7SwiftUI14GraphicsFilterOWOg(&__dst))
          {
            v42 = _s7SwiftUI14GraphicsFilterOWOj6_(&__dst);
            if ((*(v42 + 8) & 1) == 0)
            {
              v21 = v21 + *v42 * 2.8;
            }
          }

          v41 += 128;
          --v40;
        }

        while (v40);
        goto LABEL_57;
      }

      swift_beginAccess();
      v38 = fabs(v37[6]);
      v39 = fabs(v37[7]);
      if (v38 <= v39)
      {
        v38 = v39;
      }

      v21 = v37[5] * 2.8 + 0.0 + v38;
      v40 = *(v36 + 16);
      if (v40)
      {
        goto LABEL_52;
      }
    }

LABEL_57:
    if (v21 != 0.0)
    {
      v198.origin.x = x;
      v198.origin.y = y;
      v198.size.width = width;
      v198.size.height = height;
      v199 = CGRectInset(v198, v21, v21);
      x = v199.origin.x;
      y = v199.origin.y;
      width = v199.size.width;
      height = v199.size.height;
      if (CGRectIsEmpty(v199))
      {
        goto LABEL_27;
      }

      if (v29 - v21 < 0.0)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = v29 - v21;
      }

      v43 = v179 - v21;
      if (v179 - v21 < 0.0)
      {
        v43 = 0.0;
      }

      v179 = v43;
    }

    v200.origin.x = x;
    v200.origin.y = y;
    v200.size.width = width;
    v200.size.height = height;
    v201 = CGRectInset(v200, -0.001, -0.001);
    v219.origin.x = v5;
    v219.size.width = v177;
    v219.origin.y = v178;
    v219.size.height = r2;
    if (!CGRectContainsRect(v201, v219))
    {
LABEL_27:
      v22 = 0;
      goto LABEL_28;
    }

    if (v29 > 0.0 || v179 > 0.0)
    {
      v202.origin.x = x;
      v202.origin.y = y;
      v202.size.width = width;
      v202.size.height = height;
      v44 = fabs(CGRectGetWidth(v202)) * 0.5;
      v203.origin.x = x;
      v203.origin.y = y;
      v203.size.width = width;
      v203.size.height = height;
      v45 = fabs(CGRectGetHeight(v203)) * 0.5;
      if (v45 >= v44)
      {
        v45 = v44;
      }

      v5 = v169;
      if (v45 >= v29)
      {
        v46 = v29;
      }

      else
      {
        v46 = v45;
      }

      if (v45 >= v179)
      {
        v45 = v179;
      }

      v47 = v46 * 0.292893219;
      v48 = v45 * 0.292893219;
      v204.origin.x = x;
      v204.origin.y = y;
      v204.size.width = width;
      v204.size.height = height;
      v205 = CGRectInset(v204, v47, v48);
      v220.origin.x = v169;
      v220.size.width = v177;
      v220.origin.y = v178;
      v220.size.height = r2;
      if (!CGRectContainsRect(v205, v220))
      {
        v22 = 0;
        goto LABEL_28;
      }
    }

LABEL_152:
    v102 = v3 - 1;
    if (v19 != v3 - 1)
    {
      v103 = *(v2 + 2);
      if (v19 >= v103)
      {
        goto LABEL_172;
      }

      v104 = *(v23 + 16);
      *&v184.a = *v23;
      *&v184.c = v104;
      v105 = *(v23 + 32);
      v106 = *(v23 + 48);
      v107 = *(v23 + 64);
      *(v186 + 11) = *(v23 + 75);
      v185 = v106;
      v186[0] = v107;
      *&v184.tx = v105;
      if (v102 >= v103)
      {
        goto LABEL_173;
      }

      v108 = 96 * v102;
      v109 = &v2[96 * v102 + 32];
      v110 = *(v109 + 1);
      *&__dst.a = *v109;
      *&__dst.c = v110;
      v111 = *(v109 + 2);
      v112 = *(v109 + 3);
      v113 = *(v109 + 4);
      *(v189 + 11) = *(v109 + 75);
      v188 = v112;
      v189[0] = v113;
      *&__dst.tx = v111;
      outlined init with copy of DisplayList.ViewUpdater.Model.Clip(&v184, v182);
      outlined init with copy of DisplayList.ViewUpdater.Model.Clip(&__dst, v182);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      }

      if (v19 >= *(v2 + 2))
      {
        goto LABEL_174;
      }

      v114 = v2 + 32;
      v115 = &v2[96 * v19 + 32];
      v116 = *(v115 + 1);
      v180[0] = *v115;
      v180[1] = v116;
      v117 = *(v115 + 2);
      v118 = *(v115 + 3);
      v119 = *(v115 + 4);
      *(v181 + 11) = *(v115 + 75);
      v180[3] = v118;
      v181[0] = v119;
      v180[2] = v117;
      v121 = v188;
      v120 = v189[0];
      v122 = *&__dst.tx;
      *(v115 + 75) = *(v189 + 11);
      *(v115 + 3) = v121;
      *(v115 + 4) = v120;
      *(v115 + 2) = v122;
      v123 = *&__dst.c;
      *v115 = *&__dst.a;
      *(v115 + 1) = v123;
      outlined destroy of DisplayList.ViewUpdater.Model.Clip(v180);
      if (v102 >= *(v2 + 2))
      {
        goto LABEL_175;
      }

      v124 = &v114[v108];
      v125 = *&v114[v108 + 16];
      v182[0] = *&v114[96 * v102];
      v182[1] = v125;
      v126 = *&v114[v108 + 32];
      v127 = *&v114[v108 + 48];
      v128 = *&v114[v108 + 64];
      *(v183 + 11) = *&v114[v108 + 75];
      v182[3] = v127;
      v183[0] = v128;
      v182[2] = v126;
      v130 = v185;
      v129 = v186[0];
      v131 = *&v184.tx;
      *(v124 + 75) = *(v186 + 11);
      *(v124 + 3) = v130;
      *(v124 + 4) = v129;
      *(v124 + 2) = v131;
      v132 = *&v184.c;
      *v124 = *&v184.a;
      *(v124 + 1) = v132;
      outlined destroy of DisplayList.ViewUpdater.Model.Clip(v182);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    }

    v133 = *(v2 + 2);
    if (v102 >= v133)
    {
      goto LABEL_171;
    }

    v134 = v133 - 1;
    v135 = &v2[96 * v102];
    v136 = *(v135 + 3);
    *&__dst.a = *(v135 + 2);
    *&__dst.c = v136;
    v137 = *(v135 + 4);
    v138 = *(v135 + 5);
    v139 = *(v135 + 6);
    *(v189 + 11) = *(v135 + 107);
    v188 = v138;
    v189[0] = v139;
    *&__dst.tx = v137;
    memmove(v135 + 32, v135 + 128, 96 * (v133 - v3));
    *(v2 + 2) = v134;
    outlined destroy of DisplayList.ViewUpdater.Model.Clip(&__dst);
    v22 = 0;
    *(a1 + 80) = v2;
    --v3;
    if (v19 >= v102)
    {
      goto LABEL_164;
    }
  }

  if (v7 != 4)
  {
    goto LABEL_164;
  }

  rect2 = v7;
  v50 = *(v159 + 16);
  v49 = *(v159 + 24);
  v51 = *(v159 + 32);
  v52 = *(v159 + 40);
  v53 = *(v159 + 48);
  v164 = v53;
  v160 = v52;
  v161 = v49;
  v162 = v51;
  v158 = v50;
  if (v53 > 2)
  {
    if (v53 == 5)
    {
      if (*(v50 + 16))
      {
        if (*(v50 + 16) == 1)
        {
          outlined copy of Path.Storage(v50, v49, v51, v52, 5u);
          outlined copy of DisplayList.Item.Value(v166, v167, v9, v168);
          outlined copy of Path.Storage(v50, v161, v162, v52, 5u);
          RBPathGetBoundingRect();
        }

        else
        {
          outlined copy of Path.Storage(v50, v49, v51, v52, 5u);
          outlined copy of DisplayList.Item.Value(v166, v167, v9, v168);
          outlined copy of Path.Storage(v50, v161, v162, v52, 5u);
          v58 = MEMORY[0x193AC3640](v50 + 24);
        }

        v62 = v58;
        v151 = v60;
        v154 = v59;
        v145 = v61;
        v67 = v50;
      }

      else
      {
        v66 = *(v50 + 24);
        if (!v66)
        {
          goto LABEL_178;
        }

        path = v66;
        outlined copy of Path.Storage(v50, v161, v162, v52, 5u);
        outlined copy of DisplayList.Item.Value(v166, v167, v9, v168);
        outlined copy of Path.Storage(v50, v161, v162, v52, 5u);
        PathBoundingBox = CGPathGetPathBoundingBox(path);
        v62 = PathBoundingBox.origin.x;
        v151 = PathBoundingBox.size.width;
        v154 = PathBoundingBox.origin.y;
        v145 = PathBoundingBox.size.height;

        v67 = v50;
      }

      outlined consume of Path.Storage(v67, v161, v162, v52, 5u);
      goto LABEL_94;
    }

    if (v53 != 6)
    {
      goto LABEL_180;
    }

    outlined copy of DisplayList.Item.Value(v166, v167, v9, v168);
    v54 = v148;
    v56 = v149;
    v57 = v146;
    v55 = v147;
  }

  else
  {
    if (v53 < 2)
    {
      v150 = *(v159 + 32);
      v153 = *(v159 + 24);
      outlined copy of DisplayList.Item.Value(v166, v167, v9, v168);
      v55 = v150;
      v54 = v153;
      v56 = *&v50;
      v57 = *&v52;
      goto LABEL_95;
    }

    v62 = *(v50 + 16);
    v151 = *(v50 + 32);
    v154 = *(v50 + 24);
    v145 = *(v50 + 40);
    v63 = *(v159 + 32);
    v64 = *(v159 + 24);
    outlined copy of DisplayList.Item.Value(v166, v167, v9, v168);
    v65 = v63;
    v52 = v160;
    outlined copy of Path.Storage(v158, v64, v65, v160, 2u);
LABEL_94:
    v55 = v151;
    v54 = v154;
    v56 = v62;
    v57 = v145;
  }

LABEL_95:
  v7 = rect2;
  v68 = v5 + v56;
  v69 = v178 + v54;
  v207.origin.x = x;
  v207.origin.y = y;
  v207.size.width = width;
  v207.size.height = height;
  v208 = CGRectIntersection(v207, *(&v55 - 2));
  if (!CGRectIsEmpty(v208))
  {
    if (v22)
    {
      v71 = *(a1 + 88);
      v70 = *(a1 + 96);
      if (v70)
      {
        swift_beginAccess();
        v72 = fabs(v70[6]);
        v73 = fabs(v70[7]);
        if (v72 <= v73)
        {
          v72 = v73;
        }

        v21 = v70[5] * 2.8 + 0.0 + v72;
      }

      else
      {
        v21 = 0.0;
      }

      v74 = *(v71 + 16);
      if (v74)
      {
        v75 = (v71 + 32);
        do
        {
          memmove(&__dst, v75, 0x7CuLL);
          if (!_s7SwiftUI14GraphicsFilterOWOg(&__dst))
          {
            v76 = _s7SwiftUI14GraphicsFilterOWOj6_(&__dst);
            if ((*(v76 + 8) & 1) == 0)
            {
              v21 = v21 + *v76 * 2.8;
            }
          }

          v75 += 128;
          --v74;
        }

        while (v74);
      }
    }

    v77 = v164;
    if (v21 == 0.0)
    {
      v78 = v160;
      if (v164 <= 2)
      {
        goto LABEL_110;
      }

LABEL_122:
      if (v77 == 5)
      {
        if (*(v158 + 16))
        {
          v152 = 0.0;
          v83 = v78;
          if (*(v158 + 16) == 1)
          {
            RBPathGetBoundingRect();
          }

          else
          {
            v84 = MEMORY[0x193AC3640](v158 + 24);
          }

          v90 = v84;
          v80 = v85;
          rect2a = v86;
          v165 = v87;
          v91 = v158;
          v92 = v161;
          v93 = v162;
          v94 = v83;
        }

        else
        {
          v152 = 0.0;
          v88 = *(v158 + 24);
          if (!v88)
          {
            goto LABEL_179;
          }

          v89 = v88;
          v211 = CGPathGetPathBoundingBox(v89);
          v90 = v211.origin.x;
          v80 = v211.origin.y;
          rect2a = v211.size.width;
          v165 = v211.size.height;

          v91 = v158;
          v92 = v161;
          v93 = v162;
          v94 = v160;
        }

        outlined consume of Path.Storage(v91, v92, v93, v94, 5u);
        v79 = v90;
LABEL_136:
        v155 = 0.0;
      }

      else
      {
        v152 = 0.0;
        v155 = 0.0;
        v80 = v148;
        v79 = v149;
        rect2a = v147;
        v165 = v146;
        if (v77 != 6)
        {
          outlined consume of Path.Storage(v158, v161, v162, v78, v77);
          goto LABEL_180;
        }
      }

      goto LABEL_137;
    }

    v209.origin.x = x;
    v209.origin.y = y;
    v209.size.width = width;
    v209.size.height = height;
    v210 = CGRectInset(v209, v21, v21);
    x = v210.origin.x;
    y = v210.origin.y;
    width = v210.size.width;
    height = v210.size.height;
    IsEmpty = CGRectIsEmpty(v210);
    v78 = v160;
    if (IsEmpty)
    {
      outlined consume of Path.Storage(v158, v161, v162, v160, v164);
      goto LABEL_141;
    }

    if (v29 - v21 < 0.0)
    {
      v29 = 0.0;
    }

    else
    {
      v29 = v29 - v21;
    }

    v82 = v179 - v21;
    if (v179 - v21 < 0.0)
    {
      v82 = 0.0;
    }

    v179 = v82;
    v77 = v164;
    if (v164 > 2)
    {
      goto LABEL_122;
    }

LABEL_110:
    if (!v77)
    {
      v152 = 0.0;
      v79 = *&v158;
      v80 = *&v161;
      rect2a = *&v162;
      v165 = *&v78;
      goto LABEL_136;
    }

    if (v77 == 1)
    {
      v79 = *&v158;
      v80 = *&v161;
      rect2a = *&v162;
      v165 = *&v78;
      if (vabdd_f64(*&v162, *&v78) >= 0.001)
      {
        v152 = 0.0;
        v155 = 0.0;
      }

      else
      {
        v152 = *&v162 * 0.5;
        v155 = *&v162 * 0.5;
      }
    }

    else
    {
      outlined consume of Path.Storage(v158, v161, v162, v78, 2u);
      v79 = *(v158 + 16);
      v80 = *(v158 + 24);
      v165 = *(v158 + 40);
      v155 = *(v158 + 48);
      rect2a = *(v158 + 32);
      v152 = *(v158 + 56);
    }

LABEL_137:
    v95 = v169 + v79;
    v212.origin.x = x;
    v212.origin.y = y;
    v212.size.width = width;
    v212.size.height = height;
    v213 = CGRectInset(v212, -0.001, -0.001);
    v163 = v95;
    v221.origin.x = v95;
    v221.origin.y = v178 + v80;
    v221.size.width = rect2a;
    v221.size.height = v165;
    if (CGRectContainsRect(v213, v221))
    {
      if (v29 <= v155 && v179 <= v152)
      {
        outlined consume of DisplayList.Item.Value(v166, v167, v9, v168);
LABEL_151:
        v5 = v169;
        goto LABEL_152;
      }

      v214.origin.x = x;
      v214.origin.y = y;
      v214.size.width = width;
      v214.size.height = height;
      v96 = fabs(CGRectGetWidth(v214)) * 0.5;
      v215.origin.x = x;
      v215.origin.y = y;
      v215.size.width = width;
      v215.size.height = height;
      v97 = fabs(CGRectGetHeight(v215)) * 0.5;
      if (v97 >= v96)
      {
        v97 = v96;
      }

      if (v97 >= v29)
      {
        v98 = v29;
      }

      else
      {
        v98 = v97;
      }

      if (v97 >= v179)
      {
        v97 = v179;
      }

      v99 = v98 * 0.292893219;
      v100 = v97 * 0.292893219;
      v216.origin.x = x;
      v216.origin.y = y;
      v216.size.width = width;
      v216.size.height = height;
      v217 = CGRectInset(v216, v99, v100);
      v222.origin.y = v178 + v80;
      v222.origin.x = v163;
      v222.size.width = rect2a;
      v222.size.height = v165;
      v101 = CGRectContainsRect(v217, v222);
      outlined consume of DisplayList.Item.Value(v166, v167, v9, v168);
      if (v101)
      {
        goto LABEL_151;
      }
    }

    else
    {
LABEL_141:
      outlined consume of DisplayList.Item.Value(v166, v167, v9, v168);
    }

    v22 = 0;
    v5 = v169;
    goto LABEL_28;
  }

  outlined consume of Path.Storage(v158, v161, v162, v52, v164);
  outlined consume of DisplayList.Item.Value(v166, v167, v9, v168);
  v140 = v166;
  v141 = v167;
  v142 = v9;
  v143 = v168;
LABEL_167:
  outlined consume of DisplayList.Item.Value(v140, v141, v142, v143);
  return 0;
}

void DisplayList.ViewUpdater.Platform._makeItemView(item:state:)(unint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = &v119;
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  v10 = *v3;
  if (!(v9 >> 30))
  {
    v11 = 60;
    v12 = 56;
    v13 = 53;
    v14 = 52;
    v15 = 48;
    switch(v6 >> 60)
    {
      case 1uLL:
        if ((v10 & 4) != 0)
        {
          v103 = *(a2 + 26);
          outlined copy of DisplayList.Content.Value(a1[5]);
          if ((v103 & 0x200) == 0)
          {
            if (one-time initialization token for caLayer != -1)
            {
              swift_once();
            }

            v10 = static DisplayList.ViewUpdater.Platform.caLayer;
          }
        }

        else
        {
          outlined copy of DisplayList.Content.Value(a1[5]);
        }

        *&v118[0] = v10;
        v93 = 1;
        goto LABEL_135;
      case 2uLL:
        if ((v10 & 4) != 0)
        {
          v94 = *(a2 + 26);
          outlined copy of DisplayList.Content.Value(a1[5]);
          if ((v94 & 0x200) == 0)
          {
            if (one-time initialization token for caLayer != -1)
            {
              swift_once();
            }

            v10 = static DisplayList.ViewUpdater.Platform.caLayer;
          }
        }

        else
        {
          outlined copy of DisplayList.Content.Value(a1[5]);
        }

        *&v118[0] = v10;
        v93 = 8;
        goto LABEL_135;
      case 3uLL:
        if ((v10 & 4) != 0)
        {
          v95 = *(a2 + 26);
          outlined copy of DisplayList.Content.Value(a1[5]);
          if ((v95 & 0x200) == 0)
          {
            if (one-time initialization token for caLayer != -1)
            {
              swift_once();
            }

            v10 = static DisplayList.ViewUpdater.Platform.caLayer;
          }
        }

        else
        {
          outlined copy of DisplayList.Content.Value(a1[5]);
        }

        v96 = type metadata accessor for ImageLayer();
        LOBYTE(v119) = 2;
        v19 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 104))(v96, &v119);
        swift_unknownObjectRetain();
        v97 = CoreViewLayer(v10 & 3, v19);
        v98 = AGMakeUniqueID();
        outlined consume of DisplayList.Item.Value(v6, v7, v8, v9);
        v25 = v98;
        v26 = v97;
        v27 = 2;
        goto LABEL_128;
      case 4uLL:
        v65 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v140[0] = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v140[1] = v65;
        v141 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v66 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
        v67 = a2[9];
        v126 = a2[8];
        v127 = v67;
        v128 = a2[10];
        v129 = *(a2 + 22);
        v68 = a2[5];
        v123 = a2[4];
        *v124 = v68;
        v69 = a2[7];
        *&v124[16] = a2[6];
        v125 = v69;
        v70 = a2[1];
        v119 = *a2;
        v120 = v70;
        v71 = a2[3];
        v121 = a2[2];
        v122 = v71;
        v73 = DisplayList.ViewUpdater.Model.State.hasDODEffects.getter();
        outlined copy of DisplayList.Content.Value(v6);
        outlined copy of DisplayList.Item.Value(v6, v7, v8, v9);
        outlined init with copy of Path(v140, &v119);
        ShapeType.init(_:)(v140, &v119);
        v124[1] = (v73 & 1) == 0;
        *&v124[8] = 0;
        (*(*v66 + 152))(&v119, &type metadata for Visitor #1 in static ShapeLayerHelper.layerType(_:_:mayClip:), &protocol witness table for Visitor #1 in static ShapeLayerHelper.layerType(_:_:mayClip:));
        v74 = *&v124[8];
        if (*&v124[8])
        {
          v118[2] = v121;
          v118[3] = v122;
          v118[4] = v123;
          v118[5] = *v124;
          v118[0] = v119;
          v118[1] = v120;
          outlined destroy of Visitor #1 in static ShapeLayerHelper.layerType(_:_:mayClip:)(v118);
          if ((v10 & 4) != 0 && (*(a2 + 26) & 0x200) == 0)
          {
            if (one-time initialization token for caLayer != -1)
            {
              swift_once();
            }

            v10 = static DisplayList.ViewUpdater.Platform.caLayer;
          }

          v130 = 3;
          v19 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 104))(v74, &v130);
          swift_unknownObjectRetain();
          v75 = CoreViewLayer(v10 & 3, v19);
          v76 = AGMakeUniqueID();
          outlined consume of DisplayList.Item.Value(v6, v7, v8, v9);
          outlined consume of DisplayList.Item.Value(v6, v7, v8, v9);
          v25 = v76;
          v26 = v75;
          v27 = 3;
LABEL_128:
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = vdupq_n_s64(0x7FF0000000000000uLL);
          v34 = 0uLL;
LABEL_129:
          v48 = v10;
          v49 = -1;
LABEL_145:
          v50 = 0x7FF0000000000000;
          v22 = v19;
          goto LABEL_146;
        }

        __break(1u);
LABEL_149:

        break;
      case 5uLL:
      case 6uLL:
        if ((v10 & 4) != 0)
        {
          v61 = *(a2 + 26);
          outlined copy of DisplayList.Content.Value(a1[5]);
          if ((v61 & 0x200) == 0)
          {
            if (one-time initialization token for caLayer != -1)
            {
              swift_once();
            }

            v10 = static DisplayList.ViewUpdater.Platform.caLayer;
          }
        }

        else
        {
          outlined copy of DisplayList.Content.Value(a1[5]);
        }

        v62 = type metadata accessor for SDFLayer();
        LOBYTE(v119) = 4;
        v19 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 104))(v62, &v119);
        swift_unknownObjectRetain();
        v63 = CoreViewLayer(v10 & 3, v19);
        v64 = AGMakeUniqueID();
        outlined consume of DisplayList.Item.Value(v6, v7, v8, v9);
        v25 = v64;
        v26 = v63;
        v27 = 4;
        goto LABEL_128;
      case 7uLL:
        if ((v10 & 4) != 0)
        {
          v92 = *(a2 + 26);
          outlined copy of DisplayList.Content.Value(a1[5]);
          if ((v92 & 0x200) == 0)
          {
            if (one-time initialization token for caLayer != -1)
            {
              swift_once();
            }

            v10 = static DisplayList.ViewUpdater.Platform.caLayer;
          }
        }

        else
        {
          outlined copy of DisplayList.Content.Value(a1[5]);
        }

        *&v118[0] = v10;
        v93 = 6;
LABEL_135:
        LOBYTE(v140[0]) = v93;
        DisplayList.ViewUpdater.ViewInfo.init(platform:kind:)(v118, v140, &v119);
        outlined consume of DisplayList.Item.Value(v6, v7, v8, v9);
        goto LABEL_136;
      case 8uLL:
        v116 = a1[7];
        v78 = a1[6];
        outlined init with copy of AnyTrackedValue((v6 & 0xFFFFFFFFFFFFFFFLL) + 16, &v119);
        v79 = *(&v120 + 1);
        v80 = v121.i64[0];
        __swift_project_boxed_opaque_existential_1(&v119, *(&v120 + 1));
        v81 = *(v80 + 16);
        outlined copy of DisplayList.Content.Value(v6);
        outlined copy of DisplayList.Content.Value(v6);
        v82 = v81(v79, v80);
        if (!v82)
        {
          *&v118[0] = v10;
          v82 = DisplayList.ViewUpdater.Platform.missingPlatformView()();
        }

        v19 = v82;
        v83 = v78;
        LOBYTE(v118[0]) = 15;
        (*((v10 & 0xFFFFFFFFFFFFFFF8) + 112))(v82, v118);
        swift_unknownObjectRetain();
        v84 = CoreViewLayer(v10 & 3, v19);
        v5 = AGMakeUniqueID();
        outlined consume of DisplayList.Item.Value(v6, v83, v116, v9);
        __swift_destroy_boxed_opaque_existential_1(&v119);
        outlined consume of DisplayList.Item.Value(v6, v83, v116, v9);
        v25 = v5;
        v26 = v84;
        v27 = 15;
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = vdupq_n_s64(0x7FF0000000000000uLL);
        *&v34 = 0x2000200020002;
        *(&v34 + 1) = 0x2000200020002;
        goto LABEL_129;
      case 9uLL:
        outlined init with copy of AnyTrackedValue((v6 & 0xFFFFFFFFFFFFFFFLL) + 16, &v119);
        if ((v10 & 4) != 0)
        {
          v87 = *(a2 + 26);
          outlined copy of DisplayList.Item.Value(v6, v7, v8, v9);
          outlined copy of DisplayList.Content.Value(v6);
          v60 = v7;
          if ((v87 & 0x200) == 0)
          {
            if (one-time initialization token for caLayer != -1)
            {
              swift_once();
            }

            v10 = static DisplayList.ViewUpdater.Platform.caLayer;
          }
        }

        else
        {
          outlined copy of DisplayList.Item.Value(v6, v7, v8, v9);
          outlined copy of DisplayList.Content.Value(v6);
          v60 = v7;
        }

        v88 = *(&v120 + 1);
        v89 = v121.i64[0];
        __swift_project_boxed_opaque_existential_1(&v119, *(&v120 + 1));
        v90 = (*(v89 + 16))(v88, v89);
        LOBYTE(v118[0]) = 17;
        v19 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 104))(v90, v118);
        swift_unknownObjectRetain();
        v91 = CoreViewLayer(v10 & 3, v19);
        v5 = AGMakeUniqueID();
        outlined consume of DisplayList.Item.Value(v6, v60, v8, v9);
        __swift_destroy_boxed_opaque_existential_1(&v119);
        outlined consume of DisplayList.Item.Value(v6, v60, v8, v9);
        v25 = v5;
        v26 = v91;
        v27 = 17;
        goto LABEL_128;
      case 0xAuLL:
        v77 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        if ((v10 & 4) != 0)
        {
          v104 = *(a2 + 26);
          outlined copy of DisplayList.Item.Value(a1[5], v7, v8, v9);
          outlined copy of DisplayList.Content.Value(v6);
          if ((v104 & 0x200) == 0)
          {
            if (one-time initialization token for caLayer != -1)
            {
              swift_once();
            }

            v10 = static DisplayList.ViewUpdater.Platform.caLayer;
          }
        }

        else
        {
          outlined copy of DisplayList.Item.Value(a1[5], v7, v8, v9);
          outlined copy of DisplayList.Content.Value(v6);
        }

        if (one-time initialization token for defaultFlags != -1)
        {
          swift_once();
        }

        LODWORD(v119) = -1;
        WORD2(v119) = 768;
        DWORD2(v119) = static RasterizationOptions.Flags.defaultFlags & 0xFFFFFFFE | v77;
        BYTE12(v119) = 3;
        v19 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 120))(&v119);
        swift_unknownObjectRetain_n();
        v105 = CoreViewLayer(v10 & 3, v19);
        v106 = AGMakeUniqueID();
        swift_unknownObjectRelease();
        outlined consume of DisplayList.Item.Value(v6, v7, v8, v9);
        outlined consume of DisplayList.Item.Value(v6, v7, v8, v9);
        v25 = v106;
        v26 = v105;
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = vdupq_n_s64(0x7FF0000000000000uLL);
        v34 = 0uLL;
        v48 = v10;
        goto LABEL_144;
      case 0xBuLL:
        goto LABEL_54;
      case 0xCuLL:
        v11 = 52;
        v12 = 48;
        v13 = 45;
        v14 = 44;
        v15 = 40;
LABEL_54:
        v112 = a1[6];
        v115 = a1[7];
        v51 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + v11);
        v52 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + v12);
        LOWORD(v5) = *((v6 & 0xFFFFFFFFFFFFFFFLL) + v13);
        v53 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + v14);
        v54 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + v15);
        v55 = *v3;
        if ((*v3 & 4) != 0)
        {
          v56 = *(a2 + 26);
          outlined copy of DisplayList.Content.Value(v6);
          if ((v56 & 0x200) == 0)
          {
            if (one-time initialization token for caLayer != -1)
            {
              swift_once();
            }

            v55 = static DisplayList.ViewUpdater.Platform.caLayer;
          }
        }

        else
        {
          outlined copy of DisplayList.Content.Value(v6);
        }

        LODWORD(v119) = v54;
        BYTE4(v119) = v53;
        BYTE5(v119) = v5;
        DWORD2(v119) = v52;
        BYTE12(v119) = v51;
        v19 = (*((v55 & 0xFFFFFFFFFFFFFFF8) + 120))(&v119);
        swift_unknownObjectRetain_n();
        v57 = CoreViewLayer(v55 & 3, v19);
        v58 = AGMakeUniqueID();
        swift_unknownObjectRelease();
        outlined consume of DisplayList.Item.Value(v6, v112, v115, v9);
        v48 = v55;
        v25 = v58;
        v26 = v57;
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = vdupq_n_s64(0x7FF0000000000000uLL);
        v34 = 0uLL;
LABEL_144:
        v49 = -1;
        v27 = 9;
        goto LABEL_145;
      case 0xDuLL:
        goto LABEL_149;
      case 0xEuLL:
        goto LABEL_152;
      default:
        if ((v10 & 4) != 0)
        {
          v99 = *(a2 + 26);
          outlined copy of DisplayList.Content.Value(a1[5]);
          if ((v99 & 0x200) == 0)
          {
            if (one-time initialization token for caLayer != -1)
            {
              swift_once();
            }

            v10 = static DisplayList.ViewUpdater.Platform.caLayer;
          }
        }

        else
        {
          outlined copy of DisplayList.Content.Value(a1[5]);
        }

        v100 = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for CABackdropLayer);
        LOBYTE(v119) = 7;
        v19 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 104))(v100, &v119);
        swift_unknownObjectRetain();
        v101 = CoreViewLayer(v10 & 3, v19);
        v102 = AGMakeUniqueID();
        outlined consume of DisplayList.Item.Value(v6, v7, v8, v9);
        v25 = v102;
        v26 = v101;
        v27 = 7;
        goto LABEL_128;
    }

    while (1)
    {
LABEL_152:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  if (v9 >> 30 != 1)
  {
    goto LABEL_152;
  }

  if (BYTE4(v7) <= 7u)
  {
    if (BYTE4(v7) <= 6u)
    {
      if (BYTE4(v7) != 3)
      {
        goto LABEL_152;
      }

      outlined copy of DisplayList.Effect(a1[5], v7, 3);
      outlined init with copy of AnyTrackedValue(v6 + 16, &v119);
      v16 = *(&v120 + 1);
      v17 = v121.i64[0];
      __swift_project_boxed_opaque_existential_1(&v119, *(&v120 + 1));
      v18 = (*(v17 + 16))(v16, v17);
      if (!v18)
      {
        *&v118[0] = v10;
        v18 = DisplayList.ViewUpdater.Platform.missingPlatformView()();
      }

      v19 = v18;
      LOBYTE(v118[0]) = 16;
      (*((v10 & 0xFFFFFFFFFFFFFFF8) + 112))(v18, v118);
      v20 = *(&v120 + 1);
      v21 = v121.i64[0];
      __swift_project_boxed_opaque_existential_1(&v119, *(&v120 + 1));
      v22 = (*(v21 + 40))(v19, v20, v21);
      v23 = CoreViewLayer(v10 & 3, v19);
      v24 = AGMakeUniqueID();
      __swift_destroy_boxed_opaque_existential_1(&v119);
      outlined consume of DisplayList.Effect(v6, v7, 3);
      v25 = v24;
      v26 = v23;
      v27 = 16;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = vdupq_n_s64(0x7FF0000000000000uLL);
      *&v34 = 0x2000200020002;
      *(&v34 + 1) = 0x2000200020002;
LABEL_47:
      v48 = v10;
      v49 = -1;
      v50 = 0x7FF0000000000000;
LABEL_146:
      v85 = v33;
      goto LABEL_147;
    }

    if ((v10 & 4) == 0 || (*(a2 + 105) & 2) != 0)
    {
      outlined copy of DisplayList.Effect(a1[5], v7, 7);
    }

    else
    {
      v36 = *(v6 + 24) | v9;
      outlined copy of DisplayList.Effect(a1[5], v7, 7);
      if ((v36 & 0x400) == 0)
      {
        v37 = one-time initialization token for caLayer;

        if (v37 != -1)
        {
          swift_once();
        }

        v10 = static DisplayList.ViewUpdater.Platform.caLayer;
      }
    }

    *&v118[0] = v10;
    LOBYTE(v140[0]) = 14;
    DisplayList.ViewUpdater.ViewInfo.init(platform:kind:)(v118, v140, &v119);
    v38 = v6;
    v39 = v7;
    v40 = 7;
    goto LABEL_30;
  }

  if (BYTE4(v7) > 0x14u)
  {
LABEL_13:
    if (BYTE4(v7) == 8)
    {
      if ((v10 & 4) == 0 || (*(a2 + 105) & 2) != 0)
      {
        outlined copy of DisplayList.Effect(a1[5], v7, 8);
      }

      else
      {
        outlined copy of DisplayList.Effect(a1[5], v7, 8);
        if ((v9 & 0x400) == 0)
        {
          v35 = one-time initialization token for caLayer;

          if (v35 != -1)
          {
            swift_once();
          }

          v10 = static DisplayList.ViewUpdater.Platform.caLayer;
        }
      }

      type metadata accessor for SDFLayer();
      LOBYTE(v119) = 5;
      v19 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 104))();
      swift_unknownObjectRetain_n();
      v46 = CoreViewLayer(v10 & 3, v19);
      v114 = AGMakeUniqueID();
      LOBYTE(v119) = 0;
      v5 = *((v10 & 0xFFFFFFFFFFFFFFF8) + 96);
      v47 = v46;
      v22 = (v5)(&v119);
      CoreViewAddSubview(v10 & 3, v19, v10 & 3, v22, 0);
      swift_unknownObjectRelease();
      *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7SwiftUI8SDFLayer_hasContentLayer) = 1;
      swift_unknownObjectRelease();

      outlined consume of DisplayList.Effect(v6, v7, 8);
      v25 = v114;
      v26 = v47;
      v27 = 5;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = vdupq_n_s64(0x7FF0000000000000uLL);
      v34 = 0uLL;
      goto LABEL_47;
    }

    v41 = *(v6 + 64);
    v133 = *(v6 + 48);
    v134 = v41;
    v135 = *(v6 + 80);
    v42 = *(v6 + 32);
    v131 = *(v6 + 16);
    v132 = v42;
    v43 = *(v6 + 88);
    if ((v10 & 4) == 0 || (*(a2 + 105) & 2) != 0)
    {
      outlined copy of DisplayList.Effect(v6, v7, 9);
    }

    else
    {
      outlined copy of DisplayList.Effect(v6, v7, 9);
      if ((v9 & 0x400) == 0)
      {
        v44 = one-time initialization token for caLayer;

        if (v44 != -1)
        {
          swift_once();
        }

        v10 = static DisplayList.ViewUpdater.Platform.caLayer;
        goto LABEL_50;
      }
    }

LABEL_50:
    if (v43 > 2)
    {

      v121 = v133;
      v122 = v134;
      *&v123 = v135;
      v119 = v131;
      v120 = v132;
      _Rotation3DEffect.Data.transform.getter(v118);
    }

    else
    {
      if (v43 != 1)
      {
        goto LABEL_152;
      }
    }

    *&v140[0] = v10;
    v130 = 12;
    DisplayList.ViewUpdater.ViewInfo.init(platform:kind:)(v140, &v130, &v119);
    outlined consume of DisplayList.Effect(v6, v7, 9);
    v19 = *(&v119 + 1);
    v48 = v119;
    v22 = *(&v120 + 1);
    v26 = v120;
    v33 = v121;
    v85 = v122;
    v27 = v123;
    v138 = *(&v123 + 2);
    v139 = WORD3(v123);
    v25 = *(&v123 + 1);
    v49 = *v124;
    v34 = *&v124[8];
    v29 = *&v124[24];
    LOWORD(v5) = *&v124[26];
    v30 = *&v124[28];
    v31 = v125;
    v32 = BYTE1(v125);
    v136 = *(&v125 + 2);
    v137 = WORD3(v125);
    v28 = BYTE1(v123) | 4;
    v50 = *(&v125 + 1);
    goto LABEL_147;
  }

  if (BYTE4(v7) == 15)
  {
    outlined copy of DisplayList.Effect(a1[5], v7, 15);
    *&v118[0] = v10;
    LOBYTE(v140[0]) = 18;
    DisplayList.ViewUpdater.ViewInfo.init(platform:kind:)(v118, v140, &v119);
    v38 = v6;
    v39 = v7;
    v40 = 15;
LABEL_30:
    outlined consume of DisplayList.Effect(v38, v39, v40);
LABEL_136:
    v19 = *(&v119 + 1);
    v48 = v119;
    v22 = *(&v120 + 1);
    v26 = v120;
    v33 = v121;
    v85 = v122;
    v27 = v123;
    v28 = BYTE1(v123);
    v138 = *(&v123 + 2);
    v139 = WORD3(v123);
    v25 = *(&v123 + 1);
    v49 = *v124;
    v34 = *&v124[8];
    v29 = *&v124[24];
    LOWORD(v5) = *&v124[26];
    v30 = *&v124[28];
    v31 = v125;
    v32 = BYTE1(v125);
    v136 = *(&v125 + 2);
    v137 = WORD3(v125);
    v50 = *(&v125 + 1);
    goto LABEL_147;
  }

  if (BYTE4(v7) != 20)
  {
    if (((1 << SBYTE4(v7)) & 0xF7C00) != 0)
    {
      goto LABEL_152;
    }

    goto LABEL_13;
  }

  if (!(v6 ^ 1 | v7))
  {
    if ((v10 & 4) == 0 || (*(a2 + 105) & 2) != 0)
    {
      outlined copy of DisplayList.Effect(a1[5], v7, 20);
    }

    else
    {
      outlined copy of DisplayList.Effect(a1[5], v7, 20);
      if ((v9 & 0x400) == 0)
      {
        v45 = one-time initialization token for caLayer;

        if (v45 != -1)
        {
          swift_once();
        }

        v10 = static DisplayList.ViewUpdater.Platform.caLayer;
      }
    }

    *&v118[0] = v10;
    LOBYTE(v140[0]) = 11;
    DisplayList.ViewUpdater.ViewInfo.init(platform:kind:)(v118, v140, &v119);
    goto LABEL_136;
  }

  if (v6 ^ 2 | v7)
  {
    goto LABEL_152;
  }

  if ((v10 & 4) == 0 || (*(a2 + 105) & 2) != 0)
  {
    outlined copy of DisplayList.Effect(a1[5], v7, 20);
  }

  else
  {
    outlined copy of DisplayList.Effect(a1[5], v7, 20);
    if ((v9 & 0x400) == 0)
    {
      v86 = one-time initialization token for caLayer;

      if (v86 != -1)
      {
        swift_once();
      }

      v10 = static DisplayList.ViewUpdater.Platform.caLayer;
    }
  }

  *&v118[0] = v10;
  LOBYTE(v140[0]) = 10;
  DisplayList.ViewUpdater.ViewInfo.init(platform:kind:)(v118, v140, &v119);
  v19 = *(&v119 + 1);
  v22 = *(&v120 + 1);
  v110 = v121;
  v111 = v122;
  v108 = BYTE1(v123);
  v109 = v123;
  v138 = *(&v123 + 2);
  v139 = WORD3(v123);
  v49 = *v124;
  v113 = v119;
  v117 = *(&v123 + 1);
  v107 = *&v124[8];
  v29 = *&v124[24];
  LOWORD(v5) = *&v124[26];
  v30 = *&v124[28];
  v31 = v125;
  v32 = BYTE1(v125);
  v136 = *(&v125 + 2);
  v137 = WORD3(v125);
  v50 = *(&v125 + 1);
  v26 = v120;
  [v26 setAllowsGroupOpacity_];
  [v26 setAllowsGroupBlending_];

  v33 = v110;
  v85 = v111;
  v34 = v107;
  v28 = v108;
  v27 = v109;
  v48 = v113;
  v25 = v117;
LABEL_147:
  *a3 = v48;
  *(a3 + 8) = v19;
  *(a3 + 16) = v26;
  *(a3 + 24) = v22;
  *(a3 + 32) = v33;
  *(a3 + 48) = v85;
  *(a3 + 64) = v27;
  *(a3 + 65) = v28;
  *(a3 + 66) = v138;
  *(a3 + 70) = v139;
  *(a3 + 72) = v25;
  *(a3 + 80) = v49;
  *(a3 + 88) = v34;
  *(a3 + 104) = v29;
  *(a3 + 106) = v5;
  *(a3 + 108) = v30;
  *(a3 + 112) = v31;
  *(a3 + 113) = v32;
  *(a3 + 114) = v136;
  *(a3 + 118) = v137;
  *(a3 + 120) = v50;
}

uint64_t *DisplayList.ViewUpdater.updateInheritedView(container:from:parentState:)(uint64_t a1, _OWORD *a2, unint64_t a3)
{
  v4 = v3;
  v136 = *MEMORY[0x1E69E9840];
  v7 = a2[1];
  v8 = a2[3];
  v125 = a2[2];
  v126[0] = v8;
  *(v126 + 12) = *(a2 + 60);
  v9 = a2[1];
  v124[0] = *a2;
  v124[1] = v9;
  v121 = v7;
  v122 = v125;
  *v123 = a2[3];
  *&v123[12] = *(a2 + 60);
  v120 = v124[0];
  v10 = *a3;
  v11 = *(a3 + 16);
  v12 = *(a3 + 48);
  v127[2] = *(a3 + 32);
  v127[3] = v12;
  v13 = *(a3 + 16);
  v14 = *(a3 + 32);
  v15 = *a3;
  v127[0] = v10;
  v127[1] = v13;
  v16 = *(a3 + 80);
  v17 = *(a3 + 112);
  v130 = *(a3 + 96);
  v131 = v17;
  v18 = *(a3 + 80);
  v19 = *(a3 + 48);
  v128 = *(a3 + 64);
  v129 = v18;
  v20 = *(a3 + 144);
  v134 = *(a3 + 160);
  v21 = *(a3 + 144);
  v22 = *(a3 + 112);
  v132 = *(a3 + 128);
  v133 = v21;
  v116 = v132;
  v117 = v20;
  v118 = *(a3 + 160);
  v112 = v128;
  v113 = v16;
  v114 = v130;
  v115 = v22;
  v135 = *(a3 + 176);
  v119 = *(a3 + 176);
  v108 = v15;
  v109 = v11;
  v110 = v14;
  v111 = v19;
  swift_beginAccess();
  v23 = *(v3 + 120);
  v94 = *(v3 + 104);
  LOBYTE(v95) = v23;
  outlined init with copy of DisplayList.Item(v124, v98);
  outlined init with copy of DisplayList.ViewUpdater.Model.State(v127, v98);
  v24 = specialized static DisplayList.ViewUpdater.Model.merge(item:index:into:)(&v120, &v94, &v108);
  if (v24 & 4) != 0 || (v99 = v122, v100[0] = *v123, *(v100 + 12) = *&v123[12], *v98 = v120, *&v98[16] = v121, DisplayList.Item.features.getter(&v94), (v94))
  {
    if ((v24 & 2) == 0)
    {
      if (v24)
      {
        swift_beginAccess();
        v96 = v122;
        v97[0] = *v123;
        *(v97 + 12) = *&v123[12];
        v94 = v120;
        v95 = v121;
        v92 = v122;
        v93[0] = *v123;
        *(v93 + 12) = *&v123[12];
        v90 = v120;
        v91 = v121;
        outlined init with copy of DisplayList.Item(&v94, v98);
        DisplayList.ViewUpdater.updateItemView(container:from:localState:)(a1, &v90, &v108);
        v99 = v92;
        v100[0] = v93[0];
        *(v100 + 12) = *(v93 + 12);
        *v98 = v90;
        *&v98[16] = v91;
        outlined destroy of DisplayList.Item(v98);
      }

      else
      {
        swift_beginAccess();
        if ((*&v123[16] & 0xC0000000) == 0x40000000)
        {
          *v98 = *&v123[8];
          *&v98[8] = *&v123[16];
          *&v98[12] = *&v123[20];
          DisplayList.ViewUpdater.update(container:from:parentState:)(a1, v98, &v108);
        }
      }

      goto LABEL_43;
    }

    v64 = (v3 + 104);
    v92 = v122;
    v93[0] = *v123;
    *(v93 + 12) = *&v123[12];
    v90 = v120;
    v91 = v121;
    v99 = v122;
    v100[0] = *v123;
    *(v100 + 12) = *&v123[12];
    *v98 = v120;
    *&v98[16] = v121;
    *&v82 = *a1;
    v32 = v82;
    v33 = *(a1 + 16);
    swift_beginAccess();
    outlined init with copy of DisplayList.Item(&v90, &v94);
    DisplayList.ViewUpdater.ViewCache.update(item:platform:state:tag:in:)(v98, &v82, a3, 1, v33, &v70);
    swift_endAccess();
    v95 = *&v98[16];
    v96 = v99;
    v97[0] = v100[0];
    *(v97 + 12) = *(v100 + 12);
    v94 = *v98;
    outlined destroy of DisplayList.Item(&v94);
    *(v3 + 192) &= BYTE3(v73) & 1;
    v34 = *(a1 + 32);
    v35 = *(&v73 + 1);
    v36 = v70;
    CoreViewAddSubview(v32 & 3, *(a1 + 8), v70 & 3, *(&v70 + 1), v34);
    *(a1 + 32) = v34 + 1;
    v37 = *(a1 + 24);
    if (v35 < v37)
    {
      v37 = v35;
    }

    *(a1 + 24) = v37;
    if ((BYTE2(v73) & 1) != 0 || (*(v4 + 193) & 1) == 0)
    {
      v68 = INFINITY;
      v69 = 0;
      v66 = v36;
      v67 = v71;
      if (v24)
      {
        swift_beginAccess();
        v88 = v122;
        *v89 = *v123;
        *&v89[12] = *&v123[12];
        v86 = v120;
        v87 = v121;
        v83 = v121;
        v84 = v122;
        v85[0] = *v123;
        *(v85 + 12) = *&v123[12];
        v82 = v120;
        swift_unknownObjectRetain();
        outlined init with copy of DisplayList.Item(&v86, v98);
        DisplayList.ViewUpdater.updateItemView(container:from:localState:)(&v66, &v82, &v108);
        v99 = v84;
        v100[0] = v85[0];
        *(v100 + 12) = *(v85 + 12);
        *v98 = v82;
        *&v98[16] = v83;
        outlined destroy of DisplayList.Item(v98);
      }

      else
      {
        swift_beginAccess();
        if ((*&v123[16] & 0xC0000000) == 0x40000000 && (v48 = *(*&v123[8] + 16)) != 0)
        {
          v49 = (*&v123[8] + 32);
          swift_unknownObjectRetain();
          do
          {
            *v98 = *v49;
            v50 = v49[1];
            v51 = v49[2];
            v52 = v49[3];
            *(v100 + 12) = *(v49 + 60);
            v99 = v51;
            v100[0] = v52;
            *&v98[16] = v50;
            *&v89[12] = *(v49 + 60);
            v87 = v49[1];
            v88 = v49[2];
            *v89 = v49[3];
            v86 = *v49;
            v53 = *&v89[24];
            swift_beginAccess();
            if (v53)
            {
              v54 = 0;
              v55 = *(v4 + 108);
              v65 = *(v4 + 104);
              v56 = *(v4 + 112);
              v57 = *(v4 + 120);
              v58 = 1;
              *(v4 + 104) = v53;
            }

            else
            {
              v58 = 0;
              v65 = *(v4 + 104);
              v54 = *(v4 + 108) + 1;
              v56 = *(v4 + 112);
              v57 = *(v4 + 120);
              v55 = v54;
            }

            *(v4 + 108) = v54;
            *(v4 + 120) = v58;
            *&v78[0] = v66;
            outlined init with copy of DisplayList.Item(v98, &v82);
            outlined init with copy of DisplayList.Item(v98, &v82);
            DisplayList.ViewUpdater.ViewCache.prepare(item:platform:parentState:)(&v86, v78, &v108, &v82);
            swift_endAccess();
            v59 = *&v82;
            if (*&v82 >= v68)
            {
              v59 = v68;
            }

            v68 = v59;
            v78[2] = v88;
            v79[0] = *v89;
            *(v79 + 12) = *&v89[12];
            v78[0] = v86;
            v78[1] = v87;
            v76 = v88;
            v77[0] = *v89;
            *(v77 + 12) = *&v89[12];
            v74 = v86;
            v75 = v87;
            outlined init with copy of DisplayList.Item(v78, &v82);
            DisplayList.ViewUpdater.updateInheritedView(container:from:parentState:)(&v66, &v74, &v108);
            outlined destroy of DisplayList.Item(v98);
            v80[2] = v76;
            v81[0] = v77[0];
            *(v81 + 12) = *(v77 + 12);
            v80[0] = v74;
            v80[1] = v75;
            outlined destroy of DisplayList.Item(v80);
            v84 = v88;
            v85[0] = *v89;
            *(v85 + 12) = *&v89[12];
            v82 = v86;
            v83 = v87;
            outlined destroy of DisplayList.Item(&v82);
            v60 = *(v4 + 120);
            if ((v60 & 0xC) != 0)
            {
              v61 = *v64;
              if ((*(v4 + 120) & 4) != 0)
              {
                *(v4 + 104) = *(v4 + 112);
              }

              if ((v60 & 8) != 0)
              {
                *(v4 + 112) = v61;
              }
            }

            if (v60)
            {
              *(v4 + 104) = v65;
              *(v4 + 108) = v55;
            }

            if ((v60 & 2) != 0)
            {
              *(v4 + 112) = v56;
            }

            *(v4 + 120) = v57;
            v49 += 5;
            --v48;
          }

          while (v48);
        }

        else
        {
          swift_unknownObjectRetain();
        }
      }

      v62 = v68;
      *v98 = v66;
      *&v98[8] = v67;
      *&v98[24] = v68;
      *&v99 = v69;
      swift_beginAccess();
      swift_unknownObjectRetain();
      DisplayList.ViewUpdater.Container.removeRemaining(viewCache:)((v4 + 40));
      swift_endAccess();
      swift_unknownObjectRelease();
      *&v86 = v62;
      swift_beginAccess();
      DisplayList.ViewUpdater.ViewCache.setNextUpdate(_:in:)(&v86, &v70);
      swift_endAccess();
      swift_unknownObjectRelease();
    }

    else if ((*&v123[16] & 0xC0000000) == 0x40000000)
    {
      v38 = *&v123[8];
      v39 = *(&v122 + 1);
      v40 = *v123;
      v41 = HIDWORD(*v123);
      swift_beginAccess();
      v42 = *(v38 + 16);
      if (v42)
      {
        outlined copy of DisplayList.Effect(v39, v40, v41);

        v43 = *(v38 + 48);
        v44 = *(v38 + 80);
        v99 = *(v38 + 64);
        v100[0] = v44;
        *(v100 + 12) = *(v38 + 92);
        *v98 = *(v38 + 32);
        *&v98[16] = v43;
        DisplayList.Index.skip(item:)(v98);
        v45 = v42 - 1;
        if (v45)
        {
          v46 = (v38 + 112);
          do
          {
            *&v98[16] = v46[1];
            v99 = v46[2];
            v100[0] = v46[3];
            *(v100 + 12) = *(v46 + 60);
            v47 = *v46;
            v46 += 5;
            *v98 = v47;
            DisplayList.Index.skip(item:)(v98);
            --v45;
          }

          while (v45);
        }
      }

      else
      {
        outlined copy of DisplayList.Effect(v39, v40, v41);
      }

      swift_endAccess();

      *&v86 = v39;
      DWORD2(v86) = v40;
      BYTE12(v86) = v41;
      swift_beginAccess();
      DisplayList.Index.skip(effect:)(&v86);
      swift_endAccess();
      v104 = v116;
      v105 = v117;
      v106 = v118;
      v107 = v119;
      v100[1] = v112;
      v101 = v113;
      v102 = v114;
      v103 = v115;
      *v98 = v108;
      *&v98[16] = v109;
      v99 = v110;
      v100[0] = v111;
      outlined destroy of DisplayList.ViewUpdater.Model.State(v98);
      outlined consume of DisplayList.Effect(v39, v40, v41);
      goto LABEL_48;
    }

    v104 = v116;
    v105 = v117;
    v106 = v118;
    v107 = v119;
    v100[1] = v112;
    v101 = v113;
    v102 = v114;
    v103 = v115;
    *v98 = v108;
    *&v98[16] = v109;
    v99 = v110;
    v100[0] = v111;
    outlined destroy of DisplayList.ViewUpdater.Model.State(v98);
LABEL_48:
    *v98 = v70;
    *&v98[16] = v71;
    v99 = v72;
    v100[0] = v73;
    outlined destroy of DisplayList.ViewUpdater.ViewCache.Result(v98);
    goto LABEL_49;
  }

  if ((*&v123[16] & 0xC0000000) == 0x40000000)
  {
    v25 = *&v123[8];
    swift_beginAccess();
    v26 = *(v25 + 16);
    if (v26)
    {
      v27 = *(v25 + 48);
      v28 = *(v25 + 80);
      v99 = *(v25 + 64);
      v100[0] = v28;
      *(v100 + 12) = *(v25 + 92);
      *v98 = *(v25 + 32);
      *&v98[16] = v27;
      DisplayList.Index.skip(item:)(v98);
      v29 = v26 - 1;
      if (v29)
      {
        v30 = (v25 + 112);
        do
        {
          *&v98[16] = v30[1];
          v99 = v30[2];
          v100[0] = v30[3];
          *(v100 + 12) = *(v30 + 60);
          v31 = *v30;
          v30 += 5;
          *v98 = v31;
          DisplayList.Index.skip(item:)(v98);
          --v29;
        }

        while (v29);
      }
    }

    swift_endAccess();
  }

LABEL_43:
  v104 = v116;
  v105 = v117;
  v106 = v118;
  v107 = v119;
  v100[1] = v112;
  v101 = v113;
  v102 = v114;
  v103 = v115;
  *v98 = v108;
  *&v98[16] = v109;
  v99 = v110;
  v100[0] = v111;
  outlined destroy of DisplayList.ViewUpdater.Model.State(v98);
LABEL_49:
  v99 = v122;
  v100[0] = *v123;
  *(v100 + 12) = *&v123[12];
  *v98 = v120;
  *&v98[16] = v121;
  return outlined destroy of DisplayList.Item(v98);
}

uint64_t DisplayList.ViewUpdater.updateItemView(container:from:localState:)(uint64_t a1, _OWORD *a2, unint64_t a3)
{
  v4 = v3;
  v7 = a2[1];
  v8 = a2[3];
  v127 = a2[2];
  *v128 = v8;
  *&v128[12] = *(a2 + 60);
  v9 = a2[1];
  v126[0] = *a2;
  v126[1] = v9;
  v119 = v7;
  v120 = v127;
  v121[0] = a2[3];
  *(v121 + 12) = *(a2 + 60);
  v118 = v126[0];
  *&v106 = *a1;
  v10 = v106;
  v11 = *(a1 + 16);
  swift_beginAccess();
  v87 = a3;
  DisplayList.ViewUpdater.ViewCache.update(item:platform:state:tag:in:)(&v118, &v106, a3, 0, v11, &v122);
  swift_endAccess();
  *(v3 + 192) &= BYTE3(v125) & 1;
  v12 = *(&v122 + 1);
  v13 = *(a1 + 32);
  v14 = *(&v125 + 1);
  v84 = v122;
  CoreViewAddSubview(v10 & 3, *(a1 + 8), v122 & 3, *(&v122 + 1), v13);
  *(a1 + 32) = v13 + 1;
  v15 = *(a1 + 24);
  if (v14 < v15)
  {
    v15 = v14;
  }

  *(a1 + 24) = v15;
  if ((*&v128[16] & 0xC0000000) == 0x40000000)
  {
    v16 = *v128;
    v17 = *&v128[8];
    v18 = *(&v127 + 1);
    if ((BYTE2(v125) & 1) != 0 || (*(v4 + 193) & 1) == 0)
    {
      v83 = HIDWORD(*v128);
      outlined init with copy of DisplayList.Item(v126, &v118);
      DisplayList.ViewUpdater.Model.State.reset()();
      v26 = *(&v123 + 1);
      v117 = 0;
      v114 = v84;
      v115 = v123;
      v116 = INFINITY;
      v27 = *(v17 + 16);
      v78 = *(&v123 + 1);
      if (v27)
      {
        v79 = v18;
        v81 = v16;
        swift_unknownObjectRetain();
        v28 = v27 - 1;
        v29 = 32;
        v85 = v17;
        while (1)
        {
          v118 = *(v17 + v29);
          v30 = *(v17 + v29 + 16);
          v31 = *(v17 + v29 + 32);
          v32 = *(v17 + v29 + 48);
          *(v121 + 12) = *(v17 + v29 + 60);
          v120 = v31;
          v121[0] = v32;
          v119 = v30;
          *&v113[12] = *(v17 + v29 + 60);
          v111 = *(v17 + v29 + 16);
          v112 = *(v17 + v29 + 32);
          *v113 = *(v17 + v29 + 48);
          v110 = *(v17 + v29);
          v33 = *&v113[24];
          swift_beginAccess();
          if (v33)
          {
            v34 = *(v4 + 104);
            v35 = *(v4 + 108);
            v36 = *(v4 + 112);
            v37 = *(v4 + 120);
            v38 = 1;
            *(v4 + 104) = v33;
            *(v4 + 108) = 0;
          }

          else
          {
            v38 = 0;
            v34 = *(v4 + 104);
            v35 = *(v4 + 108) + 1;
            *(v4 + 108) = v35;
            v36 = *(v4 + 112);
            v37 = *(v4 + 120);
          }

          *(v4 + 120) = v38;
          *&v98 = v114;
          outlined init with copy of DisplayList.Item(&v118, &v106);
          outlined init with copy of DisplayList.Item(&v118, &v106);
          DisplayList.ViewUpdater.ViewCache.prepare(item:platform:parentState:)(&v110, &v98, v87, &v106);
          swift_endAccess();
          v39 = *&v106;
          if (*&v106 >= v116)
          {
            v39 = v116;
          }

          v116 = v39;
          v100 = v112;
          v101[0] = *v113;
          *(v101 + 12) = *&v113[12];
          v98 = v110;
          v99 = v111;
          v95 = v111;
          v96 = v112;
          v97[0] = *v113;
          *(v97 + 12) = *&v113[12];
          v94 = v110;
          outlined init with copy of DisplayList.Item(&v98, v93);
          DisplayList.ViewUpdater.updateInheritedView(container:from:parentState:)(&v114, &v94, v87);
          outlined destroy of DisplayList.Item(&v118);
          v104 = v96;
          v105[0] = v97[0];
          *(v105 + 12) = *(v97 + 12);
          v102 = v94;
          v103 = v95;
          outlined destroy of DisplayList.Item(&v102);
          v107 = v111;
          v108 = v112;
          v109[0] = *v113;
          *(v109 + 12) = *&v113[12];
          v106 = v110;
          outlined destroy of DisplayList.Item(&v106);
          v40 = *(v4 + 120);
          if ((v40 & 0xC) != 0)
          {
            v41 = *(v4 + 104);
            if ((*(v4 + 120) & 4) != 0)
            {
              *(v4 + 104) = *(v4 + 112);
            }

            if ((v40 & 8) != 0)
            {
              *(v4 + 112) = v41;
            }
          }

          if (v40)
          {
            *(v4 + 104) = v34;
            *(v4 + 108) = v35;
          }

          v17 = v85;
          if ((v40 & 2) != 0)
          {
            *(v4 + 112) = v36;
          }

          *(v4 + 120) = v37;
          if (!v28)
          {
            break;
          }

          --v28;
          v29 += 80;
        }

        v42 = v114;
        v43 = *(&v115 + 1);
        v44 = v115;
        v45 = v116;
        v46 = v117;
        v18 = v79;
        v16 = v81;
      }

      else
      {
        v44 = v123;
        swift_unknownObjectRetain();

        v46 = 0;
        v45 = INFINITY;
        v43 = v26;
        v42 = v84;
      }

      *&v118 = v42;
      *(&v118 + 1) = v44;
      *&v119 = v43;
      *(&v119 + 1) = v45;
      *&v120 = v46;
      swift_beginAccess();
      swift_unknownObjectRetain();
      DisplayList.ViewUpdater.Container.removeRemaining(viewCache:)((v4 + 40));
      swift_endAccess();
      swift_unknownObjectRelease();
      if (BYTE4(v16) == 7)
      {
        v47 = *(v18 + 16);

        v48 = v84;
        v49 = CoreViewMaskView(v84 & 3, v12);
        if (v49)
        {
          v91 = INFINITY;
          v92 = 0;
          v88 = v84;
          v89 = v49;
          v90 = v78;
          v50 = *(v47 + 16);
          if (v50)
          {
            v80 = v18;
            v82 = v16;
            swift_unknownObjectRetain_n();
            v51 = v50 - 1;
            v52 = 32;
            v86 = v47;
            while (1)
            {
              v118 = *(v47 + v52);
              v53 = *(v47 + v52 + 16);
              v54 = *(v47 + v52 + 32);
              v55 = *(v47 + v52 + 48);
              *(v121 + 12) = *(v47 + v52 + 60);
              v120 = v54;
              v121[0] = v55;
              v119 = v53;
              *&v113[12] = *(v47 + v52 + 60);
              v111 = *(v47 + v52 + 16);
              v112 = *(v47 + v52 + 32);
              *v113 = *(v47 + v52 + 48);
              v110 = *(v47 + v52);
              v56 = *&v113[24];
              swift_beginAccess();
              if (v56)
              {
                v58 = *(v4 + 104);
                v57 = *(v4 + 108);
                v59 = *(v4 + 112);
                v60 = *(v4 + 120);
                v61 = 1;
                *(v4 + 104) = v56;
                *(v4 + 108) = 0;
              }

              else
              {
                v61 = 0;
                v58 = *(v4 + 104);
                v57 = *(v4 + 108) + 1;
                *(v4 + 108) = v57;
                v59 = *(v4 + 112);
                v60 = *(v4 + 120);
              }

              *(v4 + 120) = v61;
              *&v98 = v88;
              outlined init with copy of DisplayList.Item(&v118, &v106);
              outlined init with copy of DisplayList.Item(&v118, &v106);
              DisplayList.ViewUpdater.ViewCache.prepare(item:platform:parentState:)(&v110, &v98, v87, &v106);
              swift_endAccess();
              v62 = *&v106;
              if (*&v106 >= v91)
              {
                v62 = v91;
              }

              v91 = v62;
              v100 = v112;
              v101[0] = *v113;
              *(v101 + 12) = *&v113[12];
              v98 = v110;
              v99 = v111;
              v95 = v111;
              v96 = v112;
              v97[0] = *v113;
              *(v97 + 12) = *&v113[12];
              v94 = v110;
              outlined init with copy of DisplayList.Item(&v98, v93);
              DisplayList.ViewUpdater.updateInheritedView(container:from:parentState:)(&v88, &v94, v87);
              outlined destroy of DisplayList.Item(&v118);
              v104 = v96;
              v105[0] = v97[0];
              *(v105 + 12) = *(v97 + 12);
              v102 = v94;
              v103 = v95;
              outlined destroy of DisplayList.Item(&v102);
              v108 = v112;
              v109[0] = *v113;
              *(v109 + 12) = *&v113[12];
              v106 = v110;
              v107 = v111;
              outlined destroy of DisplayList.Item(&v106);
              v63 = *(v4 + 120);
              if ((v63 & 0xC) != 0)
              {
                v64 = *(v4 + 104);
                if ((*(v4 + 120) & 4) != 0)
                {
                  *(v4 + 104) = *(v4 + 112);
                }

                if ((v63 & 8) != 0)
                {
                  *(v4 + 112) = v64;
                }
              }

              if (v63)
              {
                *(v4 + 104) = v58;
                *(v4 + 108) = v57;
              }

              if ((v63 & 2) != 0)
              {
                *(v4 + 112) = v59;
              }

              *(v4 + 120) = v60;
              v47 = v86;
              if (!v51)
              {
                break;
              }

              --v51;
              v52 += 80;
            }

            v48 = v88;
            v65 = v89;
            v66 = v90;
            v67 = v91;
            v68 = v92;
            v18 = v80;
            LOBYTE(v16) = v82;
          }

          else
          {
            v76 = v49;
            swift_unknownObjectRetain_n();

            v68 = 0;
            v67 = INFINITY;
            v66 = v78;
            v65 = v76;
          }

          *&v118 = v48;
          *(&v118 + 1) = v65;
          *&v119 = v66;
          *(&v119 + 1) = v67;
          *&v120 = v68;
          swift_beginAccess();
          swift_unknownObjectRetain();
          DisplayList.ViewUpdater.Container.removeRemaining(viewCache:)((v4 + 40));
          swift_endAccess();
          swift_unknownObjectRelease_n();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v67 < v45)
          {
            v45 = v67;
          }
        }

        else
        {
        }
      }

      *&v110 = v45;
      swift_beginAccess();
      DisplayList.ViewUpdater.ViewCache.setNextUpdate(_:in:)(&v110, &v122);
      swift_endAccess();
      outlined consume of DisplayList.Effect(v18, v16, v83);
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = HIDWORD(*v128);
      swift_beginAccess();
      v20 = *(v17 + 16);
      if (v20)
      {
        outlined init with copy of DisplayList.Item(v126, &v118);
        v21 = *(v17 + 48);
        v22 = *(v17 + 80);
        v120 = *(v17 + 64);
        v121[0] = v22;
        *(v121 + 12) = *(v17 + 92);
        v118 = *(v17 + 32);
        v119 = v21;
        DisplayList.Index.skip(item:)(&v118);
        v23 = v20 - 1;
        if (v23)
        {
          v24 = (v17 + 112);
          do
          {
            v119 = v24[1];
            v120 = v24[2];
            v121[0] = v24[3];
            *(v121 + 12) = *(v24 + 60);
            v25 = *v24;
            v24 += 5;
            v118 = v25;
            DisplayList.Index.skip(item:)(&v118);
            --v23;
          }

          while (v23);
        }
      }

      else
      {
        outlined init with copy of DisplayList.Item(v126, &v118);
      }

      swift_endAccess();

      if (BYTE4(v16) == 7)
      {
        v69 = *(v18 + 16);
        swift_beginAccess();
        v70 = *(v69 + 16);
        if (v70)
        {

          v71 = *(v69 + 48);
          v72 = *(v69 + 80);
          v120 = *(v69 + 64);
          v121[0] = v72;
          *(v121 + 12) = *(v69 + 92);
          v118 = *(v69 + 32);
          v119 = v71;
          DisplayList.Index.skip(item:)(&v118);
          v73 = v70 - 1;
          if (v73)
          {
            v74 = (v69 + 112);
            do
            {
              v119 = v74[1];
              v120 = v74[2];
              v121[0] = v74[3];
              *(v121 + 12) = *(v74 + 60);
              v75 = *v74;
              v74 += 5;
              v118 = v75;
              DisplayList.Index.skip(item:)(&v118);
              --v73;
            }

            while (v73);
          }
        }

        else
        {
        }

        swift_endAccess();
        outlined consume of DisplayList.Effect(v18, v16, 7);
      }

      else
      {
        outlined consume of DisplayList.Effect(v18, v16, v19);
      }
    }
  }

  v118 = v122;
  v119 = v123;
  v120 = v124;
  v121[0] = v125;
  return outlined destroy of DisplayList.ViewUpdater.ViewCache.Result(&v118);
}

uint64_t DisplayList.ViewUpdater.ViewCache.update(item:platform:state:tag:in:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a1;
  v8 = &v228;
  v236 = *MEMORY[0x1E69E9840];
  v189 = *a1;
  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  v179 = *(a1 + 32);
  v11 = *(a1 + 56);
  v234 = *(a1 + 40);
  v235 = v11;
  v167 = *(a1 + 72);
  v12 = *(v6 + 16);
  v166 = *(v6 + 17);
  v14 = *(v6 + 18);
  v13 = *(v6 + 19);
  v15 = *a2;
  v16 = *v6;
  LOBYTE(v182) = a4;
  v163 = v13;
  v164 = v14;
  v162 = v12;
  v165 = *a2 & 3;
  if (!*(v16 + 16) || ((a4 & 1) == 0 ? (v17 = 0) : (v17 = 256), v159 = a4 & 1, v160 = v17, v171 = v12 | (v166 << 32), v18 = specialized __RawDictionaryStorage.find<A>(_:)(v171, v14 | (v13 << 32), v17 | (*a2 & 3)), (v19 & 1) == 0))
  {
    v37 = objc_opt_self();
    LODWORD(v171) = [v37 disableActions];
    v173 = v37;
    [v37 setDisableActions_];
    if ((v182 & 1) == 0)
    {
      v39 = *(v172 + 80);
      *v222 = v15;
      v228 = *v7;
      *&v229 = v10;
      *(&v229 + 1) = v9;
      v38 = v179;
      *v230 = v179;
      *&v230[8] = *(v7 + 40);
      *&v230[24] = *(v7 + 56);
      *&v230[40] = v167;
      v176 = *(v172 + 64);
      DisplayList.ViewUpdater.Platform._makeItemView(item:state:)(&v228, a3, v225);
      *&v214 = v15;
      *v222 = v176;
      v222[16] = v39;
      v228 = *v7;
      *&v229 = v10;
      *(&v229 + 1) = v9;
      *v230 = v179;
      *&v230[8] = *(v7 + 40);
      *&v230[24] = *(v7 + 56);
      *&v230[40] = v167;
      v8 = &v228;
      DisplayList.ViewUpdater.Platform.updateItemView(_:index:item:state:)(v225, v222, &v228, a3);
      v175 = DWORD2(v176);
      goto LABEL_17;
    }

    if ((v15 & 4) == 0 || (*(a3 + 104) & 0x200) != 0 || (v228 = *v7, *&v229 = v10, *(&v229 + 1) = v9, *v230 = v179, *&v230[8] = *(v7 + 40), *&v230[24] = *(v7 + 56), *&v230[40] = v167, DisplayList.Item.features.getter(v225), (*v225 & 0x400) != 0))
    {
LABEL_15:
      *v8 = v15;
      v222[0] = 0;
      DisplayList.ViewUpdater.ViewInfo.init(platform:kind:)(&v228, v222, v225);
      *v222 = *v225;
      *v8 = *v7;
      *(v8 + 16) = v10;
      *(v8 + 24) = v9;
      v38 = v179;
      *(v8 + 32) = v179;
      *(v8 + 40) = *(v7 + 40);
      *(v8 + 56) = *(v7 + 56);
      *&v230[40] = v167;
      DisplayList.ViewUpdater.Platform.updateState(_:item:size:state:)(v225, &v228, a3, v10, v9);
      v175 = v14;
LABEL_17:
      v40 = *v225;
      v214 = *&v226[10];
      LOWORD(v215) = *&v226[26];
      v41 = v227;
      [v173 setDisableActions_];
      if (v38)
      {
        v42 = (2 * ((33 * (v38 >> 16)) ^ v38)) | 1;
      }

      else
      {
        LOWORD(v42) = 0;
      }

      v43 = *(v172 + 84);
      *v8 = v40;
      *(v8 + 24) = *&v225[24];
      *(v8 + 40) = *&v225[40];
      *(v8 + 56) = *&v225[56];
      v44 = *&v225[72];
      *(v8 + 8) = *&v225[8];
      *(v8 + 72) = v44;
      *(v8 + 80) = a5;
      v180 = v42;
      WORD4(v231) = v42;
      *(v8 + 90) = *&v226[10];
      WORD5(v232) = *&v226[26];
      v174 = v43;
      HIDWORD(v232) = v43;
      *(v8 + 112) = v41;
      v45 = *(v8 + 8);
      v46 = *(v8 + 24);
      swift_unknownObjectRetain_n();
      outlined init with copy of DisplayList.ViewUpdater.ViewInfo(&v228, v222);
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v222 = *v172;
      v48 = v162 | (v166 << 32);
      v183 = v182 & 1;
      if (v183)
      {
        v49 = 256;
      }

      else
      {
        v49 = 0;
      }

      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v228, v48, v164 | (v163 << 32), v49 | v165, isUniquelyReferenced_nonNull_native);
      *v172 = *v222;
      swift_unknownObjectRelease();
      v50 = *(v172 + 8);
      if (*(v50 + 16))
      {
        v51 = specialized __RawDictionaryStorage.find<A>(_:)(v45);
        if (v52)
        {
          v53 = *(v50 + 56) + 20 * v51;
          if (*(v53 + 17))
          {
            v54 = 256;
          }

          else
          {
            v54 = 0;
          }

          specialized Dictionary.removeValue(forKey:)(*v53, *(v53 + 8), v54 | *(v53 + 16), v222);
          outlined destroy of DisplayList.ViewUpdater.ViewInfo?(v222);
        }
      }

      v55 = swift_isUniquelyReferenced_nonNull_native();
      *v222 = *(v172 + 8);
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v48, v164 | (v163 << 32), v49 | v165, v45, v55);
      *(v172 + 8) = *v222;
      if (!v175 && v167)
      {
        [*(v8 + 16) setSwiftUI:v167 displayListID:?];
      }

      v56 = *(v8 + 72);
      v57 = BYTE1(v233);
      *v222 = v40;
      *&v222[24] = *&v225[24];
      *&v222[40] = *&v225[40];
      *&v222[56] = *&v225[56];
      *&v222[8] = *&v225[8];
      *&v222[72] = *&v225[72];
      *v223 = a5;
      *&v223[8] = v180;
      *&v223[26] = v215;
      *&v223[10] = v214;
      *&v223[28] = v174;
      v224 = v41;
      result = outlined destroy of DisplayList.ViewUpdater.ViewInfo(v222);
      *a6 = v40;
      *(a6 + 8) = v41;
      *(a6 + 16) = v46;
      *(a6 + 24) = v56;
      *(a6 + 32) = v162;
      *(a6 + 36) = v166;
      *(a6 + 40) = v164;
      *(a6 + 44) = v163;
      *(a6 + 48) = v165;
      *(a6 + 49) = v183;
      *(a6 + 50) = 1;
      *(a6 + 51) = (v57 & 1) == 0;
      *(a6 + 56) = *(&v41 + 1);
      return result;
    }

    if (one-time initialization token for caLayer == -1)
    {
LABEL_14:
      v15 = static DisplayList.ViewUpdater.Platform.caLayer;
      goto LABEL_15;
    }

LABEL_103:
    swift_once();
    goto LABEL_14;
  }

  v20 = (*(v16 + 56) + (v18 << 7));
  v21 = v20[4];
  v22 = v20[5];
  v23 = v20[7];
  v220 = v20[6];
  v24 = *v20;
  v25 = v20[1];
  v26 = v20[3];
  v216 = v20[2];
  v217 = v26;
  v214 = v24;
  v215 = v25;
  v221 = v23;
  v218 = v21;
  v219 = v22;
  v27 = *v20;
  v28 = v20[1];
  v29 = v20[3];
  *&v222[32] = v20[2];
  *&v222[48] = v29;
  *v222 = v27;
  *&v222[16] = v28;
  v30 = v20[4];
  v31 = v20[5];
  v32 = v20[7];
  *&v223[16] = v20[6];
  v224 = v32;
  *&v222[64] = v30;
  *v223 = v31;
  if (HIDWORD(v220) == *(v172 + 84))
  {
    goto LABEL_105;
  }

  v158 = v14 | (v13 << 32);
  *&v223[28] = *(v172 + 84);
  if (v221 == 1)
  {
    LOBYTE(v224) = 0;
    outlined init with copy of DisplayList.ViewUpdater.ViewInfo(&v214, &v228);
    v33 = v165;
    v34 = v12 | (v166 << 32);
    v35 = v172;
    v36 = v158;
    specialized Set._Variant.remove(_:)(v171, v158, v160 | v165, &v228);
  }

  else
  {
    outlined init with copy of DisplayList.ViewUpdater.ViewInfo(&v214, &v228);
    v33 = v165;
    v34 = v12 | (v166 << 32);
    v35 = v172;
    v36 = v158;
  }

  *&v230[32] = *&v222[64];
  v231 = *v223;
  v232 = *&v223[16];
  v233 = v224;
  v228 = *v222;
  v229 = *&v222[16];
  *v230 = *&v222[32];
  *&v230[16] = *&v222[48];
  LODWORD(v173) = *&v223[8];
  v177 = *v223;
  v59 = *&v222[8];
  outlined init with copy of DisplayList.ViewUpdater.ViewInfo(&v228, v225);
  v170 = v59;
  swift_unknownObjectRetain();
  v60 = swift_isUniquelyReferenced_nonNull_native();
  *v225 = *v35;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v228, v34, v36, v160 | v33, v60);
  v14 = *v225;
  *v35 = *v225;
  if (v179)
  {
    v61 = a5;
    v62 = a3;
    if (v173 == ((2 * ((33 * WORD1(v179)) ^ v179)) | 1))
    {
LABEL_36:
      LODWORD(a5) = *(*v62 + 8) >= *(&v233 + 1);
      *(&v224 + 1) = 0x7FF0000000000000;
      goto LABEL_39;
    }
  }

  else
  {
    v61 = a5;
    v62 = a3;
    if (!v173)
    {
      goto LABEL_36;
    }
  }

  *(&v224 + 1) = 0x7FF0000000000000;
  LODWORD(a5) = 1;
LABEL_39:
  v63 = v59;
  if (v177 != v61)
  {
    *v223 = v61;
    DisplayList.ViewUpdater.ViewInfo.Seeds.invalidate()();
  }

  v64 = v228;
  swift_unknownObjectRelease();
  if ((v182 & 1) == 0)
  {
    *&v190 = v15;
    v65 = *(v172 + 80);
    v206 = *(v172 + 64);
    v182 = v206;
    LOBYTE(v207) = v65;
    *v225 = *v7;
    *&v225[16] = v10;
    *&v225[24] = v9;
    *&v225[32] = v179;
    *&v225[40] = *(v7 + 40);
    v66 = *(v7 + 56);
    v7 = &v190;
    *&v225[56] = v66;
    *&v225[72] = v167;
    DisplayList.ViewUpdater.Platform.updateItemView(_:index:item:state:)(v222, &v206, v225, v62);
    v67 = DWORD2(v182);
    v8 = v222;
    if (BYTE1(v224))
    {
      goto LABEL_58;
    }

    goto LABEL_54;
  }

  if ((v15 & 4) == 0 || (v62[26] & 0x200) != 0)
  {
    v7 = &v190;
  }

  else
  {
    *v225 = *v7;
    *&v225[16] = v10;
    *&v225[24] = v9;
    *&v225[32] = v179;
    *&v225[40] = *(v7 + 40);
    *&v225[56] = *(v7 + 56);
    *&v225[72] = v167;
    DisplayList.Item.features.getter(&v206);
    v7 = &v190;
    if ((v206 & 0x400) == 0)
    {
      if (one-time initialization token for caLayer != -1)
      {
        swift_once();
      }

      v15 = static DisplayList.ViewUpdater.Platform.caLayer;
    }
  }

  if (v64 != v15)
  {
    *&v225[64] = *&v222[64];
    *v226 = *v223;
    *&v226[16] = *&v223[16];
    v227 = v224;
    *v225 = *v222;
    *&v225[16] = *&v222[16];
    *&v225[32] = *&v222[32];
    *&v225[48] = *&v222[48];
    outlined destroy of DisplayList.ViewUpdater.ViewInfo(v225);
    *&v206 = v15;
    LOBYTE(v190) = 0;
    DisplayList.ViewUpdater.ViewInfo.init(platform:kind:)(&v206, &v190, v222);
  }

  *&v206 = *v222;
  *v225 = v189;
  *&v225[16] = v10;
  *&v225[24] = v9;
  *&v225[32] = v179;
  v8 = v222;
  *&v225[40] = v234;
  *&v225[56] = v235;
  *&v225[72] = v167;
  DisplayList.ViewUpdater.Platform.updateState(_:item:size:state:)(v222, v225, v62, v10, v9);
  v67 = v164;
  if ((BYTE1(v224) & 1) == 0)
  {
LABEL_54:
    if (v179)
    {
      v68 = (2 * ((33 * (v179 >> 16)) ^ v179)) | 1;
    }

    else
    {
      LOWORD(v68) = 0;
    }

    *&v223[8] = v68;
  }

LABEL_58:
  if (*&v222[8] == v59)
  {
LABEL_96:
    *v225 = *v222;
    *&v225[16] = *&v222[16];
    *&v225[64] = *&v222[64];
    *v226 = *v223;
    *&v226[16] = *&v223[16];
    v227 = v224;
    *&v225[32] = *&v222[32];
    *&v225[48] = *&v222[48];
    v132 = *&v222[8];
    v133 = *&v222[24];
    v134 = *&v222[72];
    v135 = BYTE1(v224);
    outlined init with copy of DisplayList.ViewUpdater.ViewInfo(v225, &v206);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v136 = swift_isUniquelyReferenced_nonNull_native();
    *&v206 = *v172;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v225, v171, v36, v160 | v165, v136);
    *v172 = v206;
    v137 = *(&v224 + 1);
    *a6 = *v222;
    *(a6 + 8) = v132;
    *(a6 + 16) = v133;
    *(a6 + 24) = v134;
    *(a6 + 32) = v162;
    *(a6 + 36) = v166;
    *(a6 + 40) = v164;
    *(a6 + 44) = v163;
    *(a6 + 48) = v165;
    *(a6 + 49) = v159;
    *(a6 + 50) = a5;
    *(a6 + 51) = (v135 & 1) == 0;
    *(a6 + 56) = v137;
    v208 = *&v222[32];
    v209 = *&v222[48];
    v206 = *v222;
    v207 = *&v222[16];
    v212 = *&v223[16];
    v213 = v224;
    v210 = *&v222[64];
    v211 = *v223;
    return outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v206);
  }

  v156 = *&v222[8];
  v157 = v67;
  specialized Dictionary.removeValue(forKey:)(v59, v225);
  v69 = v64 & 3;
  swift_unknownObjectRetain();
  CoreViewRemoveFromSuperview(v69, v59);
  v70 = CoreViewSubviewsCount(v69, v59);
  if (v70 < 0)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v71 = v70;
  v72 = v171;
  if (!v70)
  {
LABEL_92:
    v131 = swift_isUniquelyReferenced_nonNull_native();
    *v225 = *(v172 + 8);
    v36 = v158;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v72, v158, v160 | v165, v156, v131);
    *(v172 + 8) = *v225;
    if (!v157)
    {
      if (v167)
      {
        [*&v222[16] setSwiftUI:v167 displayListID:?];
      }
    }

    swift_unknownObjectRelease();
    LOBYTE(a5) = 1;
    goto LABEL_96;
  }

  v73 = *(v172 + 8);
  v74 = v70;
  v169 = v69;
  v168 = v70;
  a5 = v73;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (v71 < v74)
        {
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }

        --v74;
        v225[0] = v69;
        v75 = CoreViewSubviewAtIndex(v69, v63, v74, v225);
        if (v225[0] != v69 && one-time initialization token for caLayer != -1)
        {
          swift_once();
        }

        if (*(v73 + 16))
        {
          break;
        }

        swift_unknownObjectRelease();
        if (!v74)
        {
          goto LABEL_92;
        }
      }

      v76 = specialized __RawDictionaryStorage.find<A>(_:)(v75);
      if (v77)
      {
        break;
      }

      swift_unknownObjectRelease();
      v73 = a5;
      if (!v74)
      {
        goto LABEL_92;
      }
    }

    if (!*(v14 + 16))
    {
      goto LABEL_98;
    }

    v78 = (*(a5 + 56) + 20 * v76);
    v79 = *v78;
    v13 = v78[1];
    v80 = v78[2];
    v12 = v78[3];
    v81 = *(v78 + 16);
    v82 = *(v78 + 17);
    v173 = v79;
    if (v82)
    {
      v83 = 256;
    }

    else
    {
      v83 = 0;
    }

    LOWORD(v182) = v81;
    v178 = v83;
    v179 = v80 | (v12 << 32);
    a3 = v79 | (v13 << 32);
    v84 = specialized __RawDictionaryStorage.find<A>(_:)(a3, v179, v83 | v81);
    if ((v85 & 1) == 0)
    {
      goto LABEL_99;
    }

    v86 = *(v14 + 56) + (v84 << 7);
    v88 = *(v86 + 32);
    v87 = *(v86 + 48);
    v89 = *(v86 + 16);
    *v225 = *v86;
    *&v225[16] = v89;
    *&v225[32] = v88;
    *&v225[48] = v87;
    v90 = *(v86 + 64);
    v91 = *(v86 + 80);
    v92 = *(v86 + 112);
    *&v226[16] = *(v86 + 96);
    v227 = v92;
    *&v225[64] = v90;
    *v226 = v91;
    v93 = v92;
    v94 = *v86;
    v95 = *(v86 + 32);
    v200 = *(v86 + 16);
    v201 = v95;
    v199 = v94;
    v96 = *(v86 + 48);
    v97 = *(v86 + 64);
    v98 = *(v86 + 96);
    v204 = *(v86 + 80);
    v205 = v98;
    v202 = v96;
    v203 = v97;
    v99 = *(v86 + 113);
    *(v198 + 7) = *(v86 + 120);
    v198[0] = v99;
    if (v93 != 1)
    {
      break;
    }

    v210 = v203;
    v211 = v204;
    v212 = v205;
    v206 = v199;
    v207 = v200;
    v208 = v201;
    v209 = v202;
    LOBYTE(v213) = v227;
    *(&v213 + 1) = *(v198 + 7);
    *(&v213 + 1) = v198[0];
    outlined init with copy of DisplayList.ViewUpdater.ViewInfo(v225, &v190);
    outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v206);
    swift_unknownObjectRelease();
LABEL_86:
    v63 = v170;
    v72 = v171;
    v69 = v169;
    v71 = v168;
    v73 = a5;
    if (!v74)
    {
      goto LABEL_92;
    }
  }

  v210 = v203;
  v211 = v204;
  v212 = v205;
  v206 = v199;
  v207 = v200;
  v208 = v201;
  v209 = v202;
  LOBYTE(v213) = 1;
  *(&v213 + 1) = *(v198 + 7);
  *(&v213 + 1) = v198[0];
  outlined init with copy of DisplayList.ViewUpdater.ViewInfo(v225, &v190);
  outlined init with copy of DisplayList.ViewUpdater.ViewInfo(&v206, &v190);
  v7 = swift_isUniquelyReferenced_nonNull_native();
  v188 = *v172;
  v100 = v188;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a3, v179, v178 | v182);
  v102 = v100[2];
  v103 = (v101 & 1) == 0;
  v104 = v102 + v103;
  if (__OFADD__(v102, v103))
  {
    goto LABEL_100;
  }

  LODWORD(v14) = v101;
  if (v100[3] >= v104)
  {
    if (v7)
    {
      v7 = &v190;
      if ((v101 & 1) == 0)
      {
        goto LABEL_80;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      v7 = &v190;
      if ((v14 & 1) == 0)
      {
        goto LABEL_80;
      }
    }

    goto LABEL_84;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v104, v7);
  v105 = specialized __RawDictionaryStorage.find<A>(_:)(a3, v179, v178 | v182);
  if ((v14 & 1) == (v106 & 1))
  {
    v8 = v105;
    v7 = &v190;
    if ((v14 & 1) == 0)
    {
LABEL_80:
      v14 = v188;
      v188[(v8 >> 6) + 8] |= 1 << v8;
      v107 = *(v14 + 48) + 20 * v8;
      *v107 = v173;
      *(v107 + 4) = v13;
      *(v107 + 8) = v80;
      *(v107 + 12) = v12;
      *(v107 + 16) = v182;
      *(v107 + 17) = v82;
      v108 = (*(v14 + 56) + (v8 << 7));
      v110 = v212;
      v109 = v213;
      v111 = v211;
      v108[4] = v210;
      v108[5] = v111;
      v108[6] = v110;
      v108[7] = v109;
      v113 = v208;
      v112 = v209;
      v114 = v207;
      *v108 = v206;
      v108[1] = v114;
      v108[2] = v113;
      v108[3] = v112;
      v115 = *(v14 + 16);
      v116 = __OFADD__(v115, 1);
      v117 = v115 + 1;
      if (v116)
      {
        goto LABEL_101;
      }

      *(v14 + 16) = v117;
      goto LABEL_85;
    }

LABEL_84:
    v14 = v188;
    v118 = (v188[7] + (v8 << 7));
    v119 = v118[3];
    v121 = *v118;
    v120 = v118[1];
    v192 = v118[2];
    v193 = v119;
    v190 = v121;
    v191 = v120;
    v122 = v118[7];
    v124 = v118[4];
    v123 = v118[5];
    v196 = v118[6];
    v197 = v122;
    v194 = v124;
    v195 = v123;
    v125 = v206;
    v126 = v207;
    v127 = v209;
    v118[2] = v208;
    v118[3] = v127;
    *v118 = v125;
    v118[1] = v126;
    v128 = v210;
    v129 = v211;
    v130 = v213;
    v118[6] = v212;
    v118[7] = v130;
    v118[4] = v128;
    v118[5] = v129;
    outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v190);
LABEL_85:
    *v172 = v14;
    specialized Set._Variant.insert(_:)(v187, a3, v179, v178 | v182);
    v194 = v203;
    v195 = v204;
    v196 = v205;
    v190 = v199;
    v191 = v200;
    v192 = v201;
    v193 = v202;
    LOBYTE(v197) = 1;
    *(&v197 + 1) = *(v198 + 7);
    *(&v197 + 1) = v198[0];
    outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v190);
    swift_unknownObjectRelease();
    v8 = v222;
    goto LABEL_86;
  }

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_105:
  v138 = v12;
  v139 = *(v172 + 96);
  v140 = *(v172 + 100);
  *v225 = *(v172 + 88);
  *&v225[8] = v139;
  *&v225[12] = v140;
  outlined init with copy of DisplayList.ViewUpdater.ViewInfo(&v214, &v228);
  v186 = DisplayList.minimalDescription.getter();
  v184 = v141;
  static os_log_type_t.error.getter();
  if (one-time initialization token for internalErrorsLog != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v142 = static Log.internalErrorsLog;
  _s7SwiftUI11DisplayListV10ArchiveIDsVSgMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
  v143 = swift_allocObject();
  v144 = MEMORY[0x1E69E7668];
  v145 = MEMORY[0x1E69E76D0];
  *(v143 + 16) = xmmword_18DDAC2E0;
  *(v143 + 56) = v144;
  *(v143 + 64) = v145;
  v146 = v138;
  *(v143 + 32) = v138;
  *(v143 + 96) = v144;
  *(v143 + 104) = v145;
  *(v143 + 72) = v166;
  *(v143 + 136) = v144;
  *(v143 + 144) = v145;
  *(v143 + 112) = v14;
  *(v143 + 176) = v144;
  *(v143 + 184) = v145;
  *(v143 + 152) = v13;
  *v225 = 0;
  *&v225[8] = 0xE000000000000000;
  LOBYTE(v206) = v222[64];
  v147 = v142;
  _print_unlocked<A, B>(_:_:)();
  v148 = *v225;
  v149 = *&v225[8];
  v150 = MEMORY[0x1E69E6158];
  *(v143 + 216) = MEMORY[0x1E69E6158];
  v151 = lazy protocol witness table accessor for type String and conformance String();
  *(v143 + 192) = v148;
  *(v143 + 200) = v149;
  *(v143 + 256) = v150;
  *(v143 + 264) = v151;
  *(v143 + 224) = v151;
  *(v143 + 232) = v186;
  *(v143 + 240) = v184;

  os_log(_:dso:log:_:_:)();

  *&v206 = 0;
  *(&v206 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(37);
  MEMORY[0x193ABEDD0](0x6465746165706572, 0xEF203A7765697620);
  *&v190 = 35;
  *(&v190 + 1) = 0xE100000000000000;
  LODWORD(v199) = v146;
  v152 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v152);

  MEMORY[0x193ABEDD0](v190, *(&v190 + 1));

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  LODWORD(v190) = v166;
  v153 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v153);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  *&v190 = 35;
  *(&v190 + 1) = 0xE100000000000000;
  LODWORD(v199) = v164;
  v154 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v154);

  MEMORY[0x193ABEDD0](v190, *(&v190 + 1));

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  LODWORD(v190) = v163;
  v155 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v155);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  LOBYTE(v190) = v222[64];
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  MEMORY[0x193ABEDD0](v186, v184);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t CoreViewAddSubview(uint64_t result, void *a2, int a3, void *a4, uint64_t a5)
{
  if (!result)
  {
    if (a3)
    {
      CoreViewAddSubview_cold_1();
    }

    v7 = a2;
    goto LABEL_7;
  }

  if (result != 1)
  {
    return result;
  }

  if (!a3)
  {
    v7 = [a2 layer];
LABEL_7:

    return [v7 insertSublayer:a4 atIndex:a5];
  }

  if (a3 != 1)
  {
    CoreViewAddSubview_cold_2();
  }

  return _UIKitAddSubview(a4, a2, a5);
}

void DisplayList.ViewUpdater.Platform.updateItemView(_:index:item:state:)(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  v550 = *MEMORY[0x1E69E9840];
  type metadata accessor for SDFShape.BackdropObserver?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v495 - v9;
  v11 = type metadata accessor for Date();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v495 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v495 - v17;
  v19 = a3[3];
  *&v548.tx = a3[2];
  *v549 = v19;
  *&v549[12] = *(a3 + 60);
  v20 = a3[1];
  *&v548.a = *a3;
  *&v548.c = v20;
  v21 = *v4;
  ty = v548.ty;
  v23 = v19;
  v24 = *&v549[16];
  v25 = *&v549[16] >> 30;
  if (!(*&v549[16] >> 30))
  {
    if (*(a1 + 90) != *v549)
    {
      v35 = *(a4 + 144);
      v36 = *(a4 + 112);
      v541 = *(a4 + 128);
      v542 = v35;
      v37 = *(a4 + 144);
      v543 = *(a4 + 160);
      v38 = *(a4 + 80);
      v39 = *(a4 + 48);
      *&v537[64] = *(a4 + 64);
      v538 = v38;
      v40 = *(a4 + 80);
      v41 = *(a4 + 112);
      v539 = *(a4 + 96);
      v540 = v41;
      v42 = *(a4 + 16);
      *v537 = *a4;
      *&v537[16] = v42;
      v43 = *(a4 + 48);
      v45 = *a4;
      v44 = *(a4 + 16);
      *&v537[32] = *(a4 + 32);
      *&v537[48] = v43;
      v533 = v541;
      v534 = v37;
      v535 = *(a4 + 160);
      *&v532[64] = *&v537[64];
      *&v532[80] = v40;
      *&v532[96] = v539;
      *&v532[112] = v36;
      *v532 = v45;
      *&v532[16] = v44;
      v544 = *(a4 + 176);
      v536 = *(a4 + 176);
      *&v532[32] = *&v537[32];
      *&v532[48] = v39;
      v46 = *&v548.c;
      v508 = *&v548.c;
      *(a1 + 113) = 0;
      v506 = a1;
      v47 = *(a1 + 65);
      if ((v47 & 0x20) != 0)
      {
        v47 &= ~0x20u;
        *(v506 + 65) = v47;
      }

      switch(*&ty >> 60)
      {
        case 1:
          v511 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          LODWORD(v512) = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v145 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x24);
          v146 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x25);
          v49 = v506;
          v147 = v19;
          if (*(v506 + 64) == 1)
          {
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v537, &v525);
          }

          else
          {
            *&v545 = v21;
            v367 = a3[3];
            *&v517.tx = a3[2];
            v518[0] = v367;
            *(v518 + 12) = *(a3 + 60);
            v368 = a3[1];
            *&v517.a = *a3;
            *&v517.c = v368;
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v537, &v525);
            DisplayList.ViewUpdater.Platform._makeItemView(item:state:)(&v517, a4, &v514);
            v369 = *(v49 + 80);
            v526[1] = *(v49 + 64);
            v527[0] = v369;
            v370 = *(v49 + 112);
            v527[1] = *(v49 + 96);
            v527[2] = v370;
            v371 = *(v49 + 16);
            *&v525.a = *v49;
            *&v525.c = v371;
            v372 = *(v49 + 48);
            *&v525.tx = *(v49 + 32);
            v526[0] = v372;
            v373 = *&v514.a;
            v374 = *&v514.c;
            v375 = v515;
            *(v49 + 32) = *&v514.tx;
            *(v49 + 48) = v375;
            *v49 = v373;
            *(v49 + 16) = v374;
            v376 = v516[0];
            v377 = v516[1];
            v378 = v516[3];
            *(v49 + 96) = v516[2];
            *(v49 + 112) = v378;
            *(v49 + 64) = v376;
            *(v49 + 80) = v377;
            outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v525);
          }

          v379 = *(v49 + 16);
          if (one-time initialization token for cache != -1)
          {
            swift_once();
          }

          v380 = specialized ObjectCache.subscript.getter(&v511);
          [v379 setBackgroundColor_];

          [v379 setAllowsEdgeAntialiasing_];
          v381 = 0;
          if (v146)
          {
            v382 = MEMORY[0x1E69792A8];
            if (*&v512 > 1.0)
            {
              v382 = MEMORY[0x1E6979298];
              if (v146 == 2)
              {
                v382 = MEMORY[0x1E69792A0];
              }

              v381 = 1;
            }
          }

          else
          {
            v382 = MEMORY[0x1E69792A8];
          }

          v454 = *v382;
          [v379 contentsEDRStrength];
          v456 = v455;
          [v379 contentsCDRStrength];
          v458 = v457;
          [v379 setPreferredDynamicRange_];
          [v379 contentsEDRStrength];
          v460 = v459;
          [v379 contentsCDRStrength];
          if (v460 != v456)
          {
            v462 = v460 - v456;
            v463 = v461;
            CALayer.animateEDRProperty(_:interval:)(0xD000000000000013, 0x800000018DD7DBC0, v462);
            v461 = v463;
          }

          if (v461 != v458)
          {
            CALayer.animateEDRProperty(_:interval:)(0xD000000000000013, 0x800000018DD7DBE0, v461 - v458);
          }

          [v379 setWantsExtendedDynamicRangeContent_];

          outlined destroy of DisplayList.Item(&v548);
          LOWORD(v23) = v147;
          goto LABEL_273;
        case 2:
          v49 = v506;
          if (*(v506 + 64) == 8)
          {
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v537, &v525);
          }

          else
          {
            *&v511 = v21;
            v304 = a3[3];
            *&v517.tx = a3[2];
            v518[0] = v304;
            *(v518 + 12) = *(a3 + 60);
            v305 = a3[1];
            *&v517.a = *a3;
            *&v517.c = v305;
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v537, &v525);
            DisplayList.ViewUpdater.Platform._makeItemView(item:state:)(&v517, a4, &v514);
            v306 = *(v49 + 80);
            v526[1] = *(v49 + 64);
            v527[0] = v306;
            v307 = *(v49 + 112);
            v527[1] = *(v49 + 96);
            v527[2] = v307;
            v308 = *(v49 + 16);
            *&v525.a = *v49;
            *&v525.c = v308;
            v309 = *(v49 + 48);
            *&v525.tx = *(v49 + 32);
            v526[0] = v309;
            v310 = *&v514.a;
            v311 = *&v514.c;
            v312 = v515;
            *(v49 + 32) = *&v514.tx;
            *(v49 + 48) = v312;
            *v49 = v310;
            *(v49 + 16) = v311;
            v313 = v516[0];
            v314 = v516[1];
            v315 = v516[3];
            *(v49 + 96) = v516[2];
            *(v49 + 112) = v315;
            *(v49 + 64) = v313;
            *(v49 + 80) = v314;
            outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v525);
          }

          goto LABEL_273;
        case 3:
          v140 = v19;
          v141 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x50);
          v518[0] = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x40);
          v518[1] = v141;
          v519[0] = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x60);
          *(v519 + 12) = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x6C);
          v142 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          *&v517.a = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          *&v517.c = v142;
          *&v517.tx = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          v49 = v506;
          if (*(v506 + 64) == 2)
          {
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v537, &v525);
            outlined init with copy of GraphicsImage(&v517, &v525);
          }

          else
          {
            *&v545 = v21;
            v316 = a3[3];
            v513[0] = a3[2];
            v513[1] = v316;
            *(&v513[1] + 12) = *(a3 + 60);
            v317 = a3[1];
            v511 = *a3;
            v512 = v317;
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v537, &v525);
            outlined init with copy of GraphicsImage(&v517, &v525);
            DisplayList.ViewUpdater.Platform._makeItemView(item:state:)(&v511, a4, &v514);
            v47 = BYTE1(v516[0]);
            v318 = *(v49 + 80);
            v526[1] = *(v49 + 64);
            v527[0] = v318;
            v319 = *(v49 + 112);
            v527[1] = *(v49 + 96);
            v527[2] = v319;
            v320 = *(v49 + 16);
            *&v525.a = *v49;
            *&v525.c = v320;
            v321 = *(v49 + 48);
            *&v525.tx = *(v49 + 32);
            v526[0] = v321;
            *(v49 + 64) = v516[0];
            v322 = v515;
            *(v49 + 32) = *&v514.tx;
            *(v49 + 48) = v322;
            v323 = *&v514.c;
            *v49 = *&v514.a;
            *(v49 + 16) = v323;
            *(v49 + 65) = v47;
            *(v49 + 66) = *(v516 + 2);
            *(v49 + 82) = *(&v516[1] + 2);
            *(v49 + 98) = *(&v516[2] + 2);
            *(v49 + 112) = v516[3];
            outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v525);
          }

          v324 = *(v49 + 16);
          type metadata accessor for ImageLayer();
          swift_dynamicCastClassUnconditional();
          v526[0] = v518[0];
          v526[1] = v518[1];
          v527[0] = v519[0];
          *(v527 + 12) = *(v519 + 12);
          v525 = v517;
          v325 = v324;
          ImageLayer.update(image:size:)(&v525, *&v46, *(&v46 + 1));
          v526[1] = v518[1];
          v527[0] = v519[0];
          *(v527 + 12) = *(v519 + 12);
          v525 = v517;
          v526[0] = v518[0];
          v326 = GraphicsImage.bitmapOrientation.getter();
          v327 = v326;
          CGAffineTransform.apply(_:in:)(v326, *&v46, *(&v46 + 1));

          outlined destroy of GraphicsImage(&v517);
          outlined destroy of DisplayList.Item(&v548);
          if (v327 >= 4)
          {
            v328 = *&v46;
          }

          else
          {
            v328 = *(&v46 + 1);
          }

          if (v327 >= 4)
          {
            v329 = *(&v46 + 1);
          }

          else
          {
            v329 = *&v46;
          }

          *&v508 = v329;
          *(&v508 + 1) = v328;
          if ((v47 & 0x20) == 0)
          {
            *(v49 + 65) = v47 | 0x20;
          }

          LOWORD(v23) = v140;
          goto LABEL_273;
        case 4:
          v50 = v19;
          v127 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v511 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v512 = v127;
          LOBYTE(v513[0]) = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          v128 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x38);
          v129 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x40);
          v130 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x41);
          v49 = v506;
          if (*(v506 + 64) == 3)
          {
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v537, &v525);
          }

          else
          {
            *&v545 = v21;
            v255 = a3[3];
            *&v517.tx = a3[2];
            v518[0] = v255;
            *(v518 + 12) = *(a3 + 60);
            v256 = a3[1];
            *&v517.a = *a3;
            *&v517.c = v256;
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v537, &v525);
            DisplayList.ViewUpdater.Platform._makeItemView(item:state:)(&v517, a4, &v514);
            v257 = *(v49 + 80);
            v526[1] = *(v49 + 64);
            v527[0] = v257;
            v258 = *(v49 + 112);
            v527[1] = *(v49 + 96);
            v527[2] = v258;
            v259 = *(v49 + 16);
            *&v525.a = *v49;
            *&v525.c = v259;
            v260 = *(v49 + 48);
            *&v525.tx = *(v49 + 32);
            v526[0] = v260;
            v261 = *&v514.a;
            v262 = *&v514.c;
            v263 = v515;
            *(v49 + 32) = *&v514.tx;
            *(v49 + 48) = v263;
            *v49 = v261;
            *(v49 + 16) = v262;
            v264 = v516[0];
            v265 = v516[1];
            v266 = v516[3];
            *(v49 + 96) = v516[2];
            *(v49 + 112) = v266;
            *(v49 + 64) = v264;
            *(v49 + 80) = v265;
            outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v525);
          }

          v525.a = *v49;
          if (v130)
          {
            v267 = 256;
          }

          else
          {
            v267 = 0;
          }

          DisplayList.ViewUpdater.Platform.updateShapeView(_:state:size:path:paint:style:contentsChanged:)(v49, v532, &v508, &v511, v128, v267 | v129, 1);
          goto LABEL_221;
        case 5:
          v139 = v19;
          v148 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v511 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v512 = v148;
          v513[0] = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          *&v513[1] = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x40);
          v49 = v506;
          if (*(v506 + 64) == 4)
          {
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v537, &v525);
            outlined init with copy of SDFShape(&v511, &v525);
          }

          else
          {
            *&v545 = v21;
            v386 = a3[3];
            *&v517.tx = a3[2];
            v518[0] = v386;
            *(v518 + 12) = *(a3 + 60);
            v387 = a3[1];
            *&v517.a = *a3;
            *&v517.c = v387;
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v537, &v525);
            outlined init with copy of SDFShape(&v511, &v525);
            DisplayList.ViewUpdater.Platform._makeItemView(item:state:)(&v517, a4, &v514);
            v388 = *(v49 + 80);
            v526[1] = *(v49 + 64);
            v527[0] = v388;
            v389 = *(v49 + 112);
            v527[1] = *(v49 + 96);
            v527[2] = v389;
            v390 = *(v49 + 16);
            *&v525.a = *v49;
            *&v525.c = v390;
            v391 = *(v49 + 48);
            *&v525.tx = *(v49 + 32);
            v526[0] = v391;
            v392 = *&v514.a;
            v393 = *&v514.c;
            v394 = v515;
            *(v49 + 32) = *&v514.tx;
            *(v49 + 48) = v394;
            *v49 = v392;
            *(v49 + 16) = v393;
            v395 = v516[0];
            v396 = v516[1];
            v397 = v516[3];
            *(v49 + 96) = v516[2];
            *(v49 + 112) = v397;
            *(v49 + 64) = v395;
            *(v49 + 80) = v396;
            outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v525);
          }

          v514.a = *v49;
          *&v525.a = v511;
          *&v525.c = v512;
          *&v525.tx = v513[0];
          *&v526[0] = *&v513[1];
          DisplayList.ViewUpdater.Platform.updateSDFShapeView(_:state:shape:contentsChanged:)(v49, v532, &v525, 1);
          outlined destroy of SDFShape(&v511);
          goto LABEL_224;
        case 6:
          *&v505 = v19;
          v149 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v150 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v151 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
          v152 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v153 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x28);
          v49 = v506;
          if (*(v506 + 64) == 4)
          {
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v537, &v525);
          }

          else
          {
            *&v511 = v21;
            v398 = a3[3];
            *&v517.tx = a3[2];
            v518[0] = v398;
            *(v518 + 12) = *(a3 + 60);
            v399 = a3[1];
            *&v517.a = *a3;
            *&v517.c = v399;
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v537, &v525);
            DisplayList.ViewUpdater.Platform._makeItemView(item:state:)(&v517, a4, &v514);
            v400 = *(v49 + 80);
            v526[1] = *(v49 + 64);
            v527[0] = v400;
            v401 = *(v49 + 112);
            v527[1] = *(v49 + 96);
            v527[2] = v401;
            v402 = *(v49 + 16);
            *&v525.a = *v49;
            *&v525.c = v402;
            v403 = *(v49 + 48);
            *&v525.tx = *(v49 + 32);
            v526[0] = v403;
            v404 = *&v514.a;
            v405 = *&v514.c;
            v406 = v515;
            *(v49 + 32) = *&v514.tx;
            *(v49 + 48) = v406;
            *v49 = v404;
            *(v49 + 16) = v405;
            v407 = v516[0];
            v408 = v516[1];
            v409 = v516[3];
            *(v49 + 96) = v516[2];
            *(v49 + 112) = v409;
            *(v49 + 64) = v407;
            *(v49 + 80) = v408;
            outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v525);
          }

          type metadata accessor for SDFLayer();
          swift_dynamicCastClassUnconditional();
          v525.a = v149;
          LOWORD(v525.b) = v150;
          HIDWORD(v525.b) = v151;
          LODWORD(v517.a) = v153;
          v410 = *&v532[112];
          v514.a = *(*v532 + 24);
          outlined copy of BackdropGroupID?(*&v532[112]);
          SDFLayer.update(list:size:style:options:in:backdropGroupID:)(&v525, v152, *&v46, *(&v46 + 1), &v517, &v514.a, v410);
          outlined consume of BackdropGroupID?(v410);
          goto LABEL_242;
        case 7:
          v143 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v545 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v546 = v143;
          v547 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          v144 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x48);
          v511 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x38);
          v512 = v144;
          v513[0] = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x58);
          *(v513 + 13) = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x65);
          v49 = v506;
          if (*(v506 + 64) == 6)
          {
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v537, &v525);
          }

          else
          {
            v507 = v21;
            v330 = a3[3];
            *&v517.tx = a3[2];
            v518[0] = v330;
            *(v518 + 12) = *(a3 + 60);
            v331 = a3[1];
            *&v517.a = *a3;
            *&v517.c = v331;
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v537, &v525);
            DisplayList.ViewUpdater.Platform._makeItemView(item:state:)(&v517, a4, &v514);
            v47 = BYTE1(v516[0]);
            v332 = *(v49 + 80);
            v526[1] = *(v49 + 64);
            v527[0] = v332;
            v333 = *(v49 + 112);
            v527[1] = *(v49 + 96);
            v527[2] = v333;
            v334 = *(v49 + 16);
            *&v525.a = *v49;
            *&v525.c = v334;
            v335 = *(v49 + 48);
            *&v525.tx = *(v49 + 32);
            v526[0] = v335;
            *(v49 + 64) = v516[0];
            v336 = v515;
            *(v49 + 32) = *&v514.tx;
            *(v49 + 48) = v336;
            v337 = *&v514.c;
            *v49 = *&v514.a;
            *(v49 + 16) = v337;
            *(v49 + 65) = v47;
            *(v49 + 66) = *(v516 + 2);
            *(v49 + 82) = *(&v516[1] + 2);
            *(v49 + 98) = *(&v516[2] + 2);
            *(v49 + 112) = v516[3];
            outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v525);
          }

          v338 = *v49;
          Path.boundingRect.getter();
          x = v555.origin.x;
          y = v555.origin.y;
          width = v555.size.width;
          height = v555.size.height;
          if (CGRectIsNull(v555))
          {
            x = 0.0;
            y = 0.0;
            width = 0.0;
            height = 0.0;
          }

          *&v514.c = v545;
          *&v514.tx = v546;
          *(v516 + 8) = v511;
          v343 = *(v49 + 16);
          v514.a = v338;
          *&v514.b = v343;
          LOBYTE(v515) = v547;
          *(&v515 + 1) = x;
          *v516 = y;
          *(&v516[1] + 8) = v512;
          *(&v516[2] + 8) = v513[0];
          *(&v516[3] + 5) = *(v513 + 13);
          BYTE13(v516[3]) = 1;
          v344 = v343;
          outlined init with copy of Path(&v545, &v525);
          specialized ShapeLayerShadowHelper.visitPaint<A>(_:)(1.0, 1.0, 1.0, 1.0);
          v526[1] = v516[0];
          v527[0] = v516[1];
          v527[1] = v516[2];
          *(&v527[1] + 14) = *(&v516[2] + 14);
          v525 = v514;
          v526[0] = v515;
          outlined destroy of ShapeLayerShadowHelper(&v525);
          if ((v47 & 0x20) == 0)
          {
            *(v49 + 65) = v47 | 0x20;
          }

          v514 = *&v532[32];
          CGAffineTransformTranslate(&v517, &v514, x, y);
          *&v532[32] = v517;
          outlined destroy of DisplayList.Item(&v548);
          *&v508 = width;
          *(&v508 + 1) = height;
          goto LABEL_273;
        case 8:
          v160 = v21;
          *&v505 = v19;
          outlined init with copy of AnyTrackedValue((*&ty & 0xFFFFFFFFFFFFFFFLL) + 16, &v511);
          v49 = v506;
          if (*(v506 + 64) == 15)
          {
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v537, &v525);
          }

          else
          {
            *&v545 = v160;
            v517 = v548;
            v518[0] = *v549;
            *(v518 + 12) = *&v549[12];
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v537, &v525);
            DisplayList.ViewUpdater.Platform._makeItemView(item:state:)(&v517, a4, &v514);
            v436 = *(v49 + 80);
            v526[1] = *(v49 + 64);
            v527[0] = v436;
            v437 = *(v49 + 112);
            v527[1] = *(v49 + 96);
            v527[2] = v437;
            v438 = *(v49 + 16);
            *&v525.a = *v49;
            *&v525.c = v438;
            v439 = *(v49 + 48);
            *&v525.tx = *(v49 + 32);
            v526[0] = v439;
            v440 = *&v514.a;
            v441 = *&v514.c;
            v442 = v515;
            *(v49 + 32) = *&v514.tx;
            *(v49 + 48) = v442;
            *v49 = v440;
            *(v49 + 16) = v441;
            v443 = v516[0];
            v444 = v516[1];
            v445 = v516[3];
            *(v49 + 96) = v516[2];
            *(v49 + 112) = v445;
            *(v49 + 64) = v443;
            *(v49 + 80) = v444;
            outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v525);
          }

          v446 = *(v49 + 8);
          v447 = *(&v512 + 1);
          v448 = *&v513[0];
          __swift_project_boxed_opaque_existential_1(&v511, *(&v512 + 1));
          v449 = *(v448 + 24);
          swift_unknownObjectRetain();
          v449(v49 + 8, v447, v448);
          if (v446 != *(v49 + 8))
          {
            LOBYTE(v525.a) = 15;
            (*((*&v160 & 0xFFFFFFFFFFFFFFF8) + 112))();
            DisplayList.ViewUpdater.ViewInfo.reset()();
          }

          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(&v511);
          goto LABEL_242;
        case 9:
          v138 = v21;
          v139 = v19;
          outlined init with copy of AnyTrackedValue((*&ty & 0xFFFFFFFFFFFFFFFLL) + 16, &v511);
          v49 = v506;
          if (*(v506 + 64) == 17)
          {
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v537, &v525);
          }

          else
          {
            *&v545 = v138;
            v517 = v548;
            v518[0] = *v549;
            *(v518 + 12) = *&v549[12];
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v537, &v525);
            DisplayList.ViewUpdater.Platform._makeItemView(item:state:)(&v517, a4, &v514);
            v291 = *(v49 + 80);
            v526[1] = *(v49 + 64);
            v527[0] = v291;
            v292 = *(v49 + 112);
            v527[1] = *(v49 + 96);
            v527[2] = v292;
            v293 = *(v49 + 16);
            *&v525.a = *v49;
            *&v525.c = v293;
            v294 = *(v49 + 48);
            *&v525.tx = *(v49 + 32);
            v526[0] = v294;
            v295 = *&v514.a;
            v296 = *&v514.c;
            v297 = v515;
            *(v49 + 32) = *&v514.tx;
            *(v49 + 48) = v297;
            *v49 = v295;
            *(v49 + 16) = v296;
            v298 = v516[0];
            v299 = v516[1];
            v300 = v516[3];
            *(v49 + 96) = v516[2];
            *(v49 + 112) = v300;
            *(v49 + 64) = v298;
            *(v49 + 80) = v299;
            outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v525);
          }

          v301 = *(v49 + 16);
          [v301 setContentsScale_];
          v302 = *(&v512 + 1);
          v303 = *&v513[0];
          __swift_project_boxed_opaque_existential_1(&v511, *(&v512 + 1));
          (*(v303 + 24))(v301, v302, v303);
          __swift_destroy_boxed_opaque_existential_1(&v511);
LABEL_224:
          outlined destroy of DisplayList.Item(&v548);
          LOWORD(v23) = v139;
          goto LABEL_273;
        case 0xALL:
          v502 = v15;
          v503 = *&v18;
          v499 = v16;
          v154 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          *&v504 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v155 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v156 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x28);
          v157 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          v158 = v506;
          v159 = *(v506 + 64);
          *&v505 = v19;
          if (v159 == 9)
          {
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v537, &v525);
          }

          else
          {
            *&v511 = v21;
            v411 = a3[3];
            *&v517.tx = a3[2];
            v518[0] = v411;
            *(v518 + 12) = *(a3 + 60);
            v412 = a3[1];
            *&v517.a = *a3;
            *&v517.c = v412;
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v537, &v525);
            DisplayList.ViewUpdater.Platform._makeItemView(item:state:)(&v517, a4, &v514);
            v413 = *(v158 + 80);
            v526[1] = *(v158 + 64);
            v527[0] = v413;
            v414 = *(v158 + 112);
            v527[1] = *(v158 + 96);
            v527[2] = v414;
            v415 = *(v158 + 16);
            *&v525.a = *v158;
            *&v525.c = v415;
            v416 = *(v158 + 48);
            *&v525.tx = *(v158 + 32);
            v526[0] = v416;
            v417 = *&v514.a;
            v418 = *&v514.c;
            v419 = v515;
            *(v158 + 32) = *&v514.tx;
            *(v158 + 48) = v419;
            *v158 = v417;
            *(v158 + 16) = v418;
            v420 = v516[0];
            v421 = v516[1];
            v422 = v516[3];
            *(v158 + 96) = v516[2];
            *(v158 + 112) = v422;
            *(v158 + 64) = v420;
            *(v158 + 80) = v421;
            outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v525);
          }

          v423 = *v158;
          if (one-time initialization token for defaultFlags != -1)
          {
            swift_once();
          }

          v424 = static RasterizationOptions.Flags.defaultFlags & 0xFFFFFFFE | v155;
          v425 = *(*v532 + 24);
          v426 = swift_allocObject();
          *(v426 + 16) = v504;
          *(v426 + 24) = v154;
          *(v426 + 32) = v155;
          *(v426 + 40) = v156;
          *(v426 + 48) = v157;
          v427 = v158 + 8;
          v428 = *(v158 + 8);
          v429 = *&v46 != *(v427 + 40);
          if (*(&v46 + 1) != *(v427 + 48))
          {
            v429 = 1;
          }

          LODWORD(v501) = v429;
          v514.a = v423;
          LODWORD(v525.a) = -1;
          WORD2(v525.a) = 768;
          LODWORD(v525.b) = v424;
          BYTE4(v525.b) = 3;

          swift_unknownObjectRetain();

          *&v430 = COERCE_DOUBLE(DisplayList.ViewUpdater.Platform.updateDrawingView(_:options:contentsScale:)(v427, &v525, v425));
          v432 = v431;
          ObjectType = swift_getObjectType();
          *&v525.a = partial apply for closure #1 in DisplayList.ViewUpdater.Platform.updateItemView(_:index:item:state:);
          *&v525.b = v426;
          memset(&v525.c, 0, 24);
          LOBYTE(v525.ty) = 1;
          v433 = *(v432 + 40);

          v434 = LODWORD(v501);
          v501 = *&v430;
          LOBYTE(v430) = v433(&v525, v434, ObjectType, v432);
          outlined consume of PlatformDrawableContent?(*&v525.a, *&v525.b, *&v525.c, *&v525.d, *&v525.tx, LOBYTE(v525.ty));
          *(v427 + 105) = (v430 & 1) == 0;
          if (*v427 == v428)
          {
            v435 = v506;
          }

          else
          {
            v435 = v506;
            DisplayList.ViewUpdater.ViewInfo.reset()();
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v464 = *(*v532 + 8);
          v465 = *(v435 + 120);
          static Date.now.getter();
          v466 = *(v504 + 216);
          if (!v466 || [*(v504 + 216) length] < 1)
          {
            goto LABEL_265;
          }

          if (one-time initialization token for updateSchedule != -1)
          {
            swift_once();
          }

          v467 = static NSAttributedStringKey.updateSchedule;
          [v466 length];
          if ([v466 attribute:v467 atIndex:0 effectiveRange:0])
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            outlined destroy of HitTestableEvent?(&v514, &lazy cache variable for type metadata for Any?);
            NSAttributedString.updateSchedule.getter(&v525);
            v468 = *&v525.d;
            v469 = *&v525.tx;
            __swift_project_boxed_opaque_existential_1(&v525, *&v525.d);
            LOBYTE(v514.a) = 0;
            TimelineSchedule.nextEntry(after:mode:limit:)(*&v503, &v514, 60, 0, v468, v469, v10);
            v470 = v499;
            v471 = v502;
            (*(v499 + 56))(v10, 0, 1, v502);
            __swift_destroy_boxed_opaque_existential_1(&v525);
            if ((*(v470 + 48))(v10, 1, v471) != 1)
            {
              v472 = v502;
              (*(v470 + 32))(v13, v10, v502);
              Date.timeIntervalSince(_:)();
              v474 = v473;
              v475 = *(v470 + 8);
              v475(v13, v472);
              v476 = v464 + v474;
              goto LABEL_267;
            }
          }

          else
          {
            memset(&v514, 0, 32);
            outlined destroy of HitTestableEvent?(&v514, &lazy cache variable for type metadata for Any?);
LABEL_265:
            v470 = v499;
            (*(v499 + 56))(v10, 1, 1, v502);
          }

          outlined destroy of (PaintType, ShapeType)(v10, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], type metadata accessor for SDFShape.BackdropObserver?);
          v475 = *(v470 + 8);
          v476 = INFINITY;
LABEL_267:
          v475(*&v503, v502);
          outlined destroy of DisplayList.Item(&v548);
          if (v476 >= v465)
          {
            a = v465;
          }

          else
          {
            a = v476;
          }

          v49 = v506;
LABEL_271:
          *(v49 + 120) = a;
LABEL_272:
          LOWORD(v23) = v505;
LABEL_273:
          if ((*(v49 + 65) & 0x20) != 0)
          {
            tx = v548.tx;
            if (*&v548.tx <= v534)
            {
              tx = *&v534;
            }

            *&v534 = tx;
          }

          if ((*(v49 + 113) & 1) == 0 && *(v49 + 120) == INFINITY)
          {
            *(v49 + 90) = v23;
          }

          v514.a = *v49;
          v525 = v548;
          v526[0] = *v549;
          *(v526 + 12) = *&v549[12];
          DisplayList.ViewUpdater.Platform.updateState(_:item:size:state:)(v49, &v525, v532, *&v508, *(&v508 + 1));
          outlined destroy of DisplayList.Item(&v548);
          v528 = v533;
          v529 = v534;
          v530 = v535;
          v531 = v536;
          v526[1] = *&v532[64];
          v527[0] = *&v532[80];
          v527[1] = *&v532[96];
          v527[2] = *&v532[112];
          v525 = *v532;
          v526[0] = *&v532[48];
          break;
        case 0xBLL:
          *&v504 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          *&v119 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v120 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
          v121 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          ObjectType = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x28);
          v501 = v121;
          v122 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          v123 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x34);
          v124 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x35);
          v125 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x38);
          v498 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x3C);
          LODWORD(v499) = v125;
          v49 = v506;
          v126 = *(v506 + 64);
          *&v505 = v19;
          if (v126 == 9)
          {
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v537, &v525);
          }

          else
          {
            *&v511 = v21;
            v230 = a3[3];
            *&v517.tx = a3[2];
            v518[0] = v230;
            *(v518 + 12) = *(a3 + 60);
            v231 = a3[1];
            *&v517.a = *a3;
            *&v517.c = v231;
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v537, &v525);
            DisplayList.ViewUpdater.Platform._makeItemView(item:state:)(&v517, a4, &v514);
            v232 = *(v49 + 80);
            v526[1] = *(v49 + 64);
            v527[0] = v232;
            v233 = *(v49 + 112);
            v527[1] = *(v49 + 96);
            v527[2] = v233;
            v234 = *(v49 + 16);
            *&v525.a = *v49;
            *&v525.c = v234;
            v235 = *(v49 + 48);
            *&v525.tx = *(v49 + 32);
            v526[0] = v235;
            v236 = *&v514.a;
            v237 = *&v514.c;
            v238 = v515;
            *(v49 + 32) = *&v514.tx;
            *(v49 + 48) = v238;
            *v49 = v236;
            *(v49 + 16) = v237;
            v239 = v516[0];
            v240 = v516[1];
            v241 = v516[3];
            *(v49 + 96) = v516[2];
            *(v49 + 112) = v241;
            *(v49 + 64) = v239;
            *(v49 + 80) = v240;
            outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v525);
          }

          v242 = *(*a4 + 8);
          v243 = *v49;
          v244 = *(*a4 + 24);
          v245 = *&v46 != *(v49 + 48);
          if (*(&v46 + 1) != *(v49 + 56))
          {
            v245 = 1;
          }

          v497 = v245;
          v502 = v120;
          v503 = v119;
          *&v246 = *&v119 | (v120 << 32);
          v496 = *(v49 + 8);
          v514.a = v243;
          LODWORD(v525.a) = v122;
          BYTE4(v525.a) = v123;
          BYTE5(v525.a) = v124;
          LODWORD(v525.b) = v499;
          BYTE4(v525.b) = v498;
          v247 = *&v504;

          swift_unknownObjectRetain();
          DisplayList.ViewUpdater.Platform.updateDrawingView(_:options:contentsScale:)((v49 + 8), &v525, v244);
          v249 = v248;
          v250 = swift_getObjectType();
          v525.a = v247;
          v525.b = v246;
          v525.c = v501;
          *&v525.d = ObjectType;
          v525.tx = v242;
          LOBYTE(v525.ty) = 2;
          v251 = *(v249 + 40);

          v252 = v251(&v525, v497, v250, v249);
          v253 = v496;
          v254 = v252;
          outlined consume of PlatformDrawableContent?(*&v525.a, *&v525.b, *&v525.c, *&v525.d, *&v525.tx, LOBYTE(v525.ty));
          *(v49 + 113) = (v254 & 1) == 0;
          if (*(v49 + 8) != v253)
          {
            DisplayList.ViewUpdater.ViewInfo.reset()();
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v450 = *&v504;

          v451 = *(v49 + 120);
          v525.a = v450;
          LOWORD(v525.b) = LOWORD(v503);
          HIDWORD(v525.b) = v502;
          v517.a = v242;
          DisplayList.nextUpdate(after:)(v452);
          outlined destroy of DisplayList.Item(&v548);
          a = v514.a;
          if (v514.a >= v451)
          {
            a = v451;
          }

          goto LABEL_271;
        case 0xCLL:
          v131 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v132 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v503 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          *&v504 = v132;
          v133 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x28);
          v134 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x2C);
          v135 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x2D);
          v136 = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          LODWORD(v502) = *((*&ty & 0xFFFFFFFFFFFFFFFLL) + 0x34);
          v49 = v506;
          v137 = *(v506 + 64);
          *&v505 = v19;
          if (v137 == 9)
          {
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v537, &v525);
          }

          else
          {
            *&v511 = v21;
            v268 = a3[3];
            *&v517.tx = a3[2];
            v518[0] = v268;
            *(v518 + 12) = *(a3 + 60);
            v269 = a3[1];
            *&v517.a = *a3;
            *&v517.c = v269;
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v537, &v525);
            DisplayList.ViewUpdater.Platform._makeItemView(item:state:)(&v517, a4, &v514);
            v270 = *(v49 + 80);
            v526[1] = *(v49 + 64);
            v527[0] = v270;
            v271 = *(v49 + 112);
            v527[1] = *(v49 + 96);
            v527[2] = v271;
            v272 = *(v49 + 16);
            *&v525.a = *v49;
            *&v525.c = v272;
            v273 = *(v49 + 48);
            *&v525.tx = *(v49 + 32);
            v526[0] = v273;
            v274 = *&v514.a;
            v275 = *&v514.c;
            v276 = v515;
            *(v49 + 32) = *&v514.tx;
            *(v49 + 48) = v276;
            *v49 = v274;
            *(v49 + 16) = v275;
            v277 = v516[0];
            v278 = v516[1];
            v279 = v516[3];
            *(v49 + 96) = v516[2];
            *(v49 + 112) = v279;
            *(v49 + 64) = v277;
            *(v49 + 80) = v278;
            outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v525);
          }

          v280 = *v49;
          v281 = *(*a4 + 24);
          v282 = *&v46 != *(v49 + 48);
          if (*(&v46 + 1) != *(v49 + 56))
          {
            v282 = 1;
          }

          LODWORD(v501) = v282;
          ObjectType = *(v49 + 8);
          v514.a = v280;
          LODWORD(v525.a) = v133;
          BYTE4(v525.a) = v134;
          BYTE5(v525.a) = v135;
          LODWORD(v525.b) = v136;
          BYTE4(v525.b) = v502;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          DisplayList.ViewUpdater.Platform.updateDrawingView(_:options:contentsScale:)((v49 + 8), &v525, v281);
          v284 = v283;
          v285 = v131;
          v286 = swift_getObjectType();
          v525.a = v285;
          v525.b = v503;
          v525.tx = 0.0;
          *&v525.c = v504;
          v525.d = 0.0;
          LOBYTE(v525.ty) = 3;
          v287 = *(v284 + 40);
          swift_unknownObjectRetain();
          v288 = v287(&v525, LODWORD(v501), v286, v284);
          v289 = ObjectType;
          v290 = v288;
          outlined consume of PlatformDrawableContent?(*&v525.a, *&v525.b, *&v525.c, *&v525.d, *&v525.tx, LOBYTE(v525.ty));
          *(v49 + 113) = (v290 & 1) == 0;
          if (*(v49 + 8) != v289)
          {
            DisplayList.ViewUpdater.ViewInfo.reset()();
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
LABEL_242:
          outlined destroy of DisplayList.Item(&v548);
          goto LABEL_272;
        case 0xDLL:
        case 0xELL:
          goto LABEL_290;
        default:
          v48 = *(*&ty + 16);
          v511 = *(*&ty + 20);
          LODWORD(v512) = *(*&ty + 36);
          v49 = v506;
          v50 = v19;
          if (*(v506 + 64) == 7)
          {
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v537, &v525);
          }

          else
          {
            *&v545 = v21;
            v345 = a3[3];
            *&v517.tx = a3[2];
            v518[0] = v345;
            *(v518 + 12) = *(a3 + 60);
            v346 = a3[1];
            *&v517.a = *a3;
            *&v517.c = v346;
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.Item(&v548, &v525);
            outlined init with copy of DisplayList.ViewUpdater.Model.State(v537, &v525);
            DisplayList.ViewUpdater.Platform._makeItemView(item:state:)(&v517, a4, &v514);
            v347 = *(v49 + 80);
            v526[1] = *(v49 + 64);
            v527[0] = v347;
            v348 = *(v49 + 112);
            v527[1] = *(v49 + 96);
            v527[2] = v348;
            v349 = *(v49 + 16);
            *&v525.a = *v49;
            *&v525.c = v349;
            v350 = *(v49 + 48);
            *&v525.tx = *(v49 + 32);
            v526[0] = v350;
            v351 = *&v514.a;
            v352 = *&v514.c;
            v353 = v515;
            *(v49 + 32) = *&v514.tx;
            *(v49 + 48) = v353;
            *v49 = v351;
            *(v49 + 16) = v352;
            v354 = v516[0];
            v355 = v516[1];
            v356 = v516[3];
            *(v49 + 96) = v516[2];
            *(v49 + 112) = v356;
            *(v49 + 64) = v354;
            *(v49 + 80) = v355;
            outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v525);
          }

          v357 = *(v49 + 16);
          objc_opt_self();
          v358 = swift_dynamicCastObjCClassUnconditional();
          v359 = v48 == 0.0;
          if (v48 == 0.0)
          {
            v360 = 1.0;
          }

          else
          {
            v360 = v48;
          }

          v361 = v357;
          [v358 setScale_];
          [v358 setAllowsInPlaceFiltering_];
          v362 = one-time initialization token for cache;
          v363 = v361;
          if (v362 != -1)
          {
            swift_once();
          }

          v364 = specialized ObjectCache.subscript.getter(&v511);
          [v358 setBackgroundColor_];

          v365 = *(a4 + 112);
          if ((~v365 & 0xF000000000000007) != 0)
          {

            v383 = BackdropGroupID.string.getter(v365);
            v385 = v384;
            outlined consume of BackdropGroupID?(v365);
            v366 = MEMORY[0x193ABEC20](v383, v385);
          }

          else
          {
            v366 = 0;
          }

          [v358 setGroupName_];

LABEL_221:
          outlined destroy of DisplayList.Item(&v548);
          LOWORD(v23) = v50;
          goto LABEL_273;
      }

      goto LABEL_281;
    }

    *&v504 = v548.ty;
    outlined init with copy of DisplayList.Item(&v548, v537);
    if ((*(a1 + 65) & 0x20) == 0)
    {
      goto LABEL_4;
    }

LABEL_34:
    v58 = *(a4 + 144);
    v59 = *(a4 + 112);
    v541 = *(a4 + 128);
    v542 = v58;
    v60 = *(a4 + 144);
    v543 = *(a4 + 160);
    v61 = *(a4 + 80);
    v62 = *(a4 + 48);
    *&v537[64] = *(a4 + 64);
    v538 = v61;
    v63 = *(a4 + 80);
    v64 = *(a4 + 112);
    v539 = *(a4 + 96);
    v540 = v64;
    v65 = *(a4 + 16);
    *v537 = *a4;
    *&v537[16] = v65;
    v66 = *(a4 + 48);
    v68 = *a4;
    v67 = *(a4 + 16);
    *&v537[32] = *(a4 + 32);
    *&v537[48] = v66;
    v533 = v541;
    v534 = v60;
    v535 = *(a4 + 160);
    *&v532[64] = *&v537[64];
    *&v532[80] = v63;
    *&v532[96] = v539;
    *&v532[112] = v59;
    *v532 = v68;
    *&v532[16] = v67;
    v544 = *(a4 + 176);
    v536 = *(a4 + 176);
    *&v532[32] = *&v537[32];
    *&v532[48] = v62;
    d = v548.d;
    c = v548.c;
    if (v25)
    {
      v71 = v23;
      outlined init with copy of DisplayList.ViewUpdater.Model.State(v537, &v525);

      if (BYTE4(v23) == 8)
      {
        v72 = v504;
        v73 = -*(v504 + 16);
        v74 = -*(v504 + 24);
        v525 = *&v532[32];
        CGAffineTransformTranslate(&v514, &v525, v73, v74);
        *&v532[32] = v514;
        outlined consume of DisplayList.Effect(v72, v71, 8);
      }

      else
      {
        v85 = HIDWORD(v23);
        *(a1 + 90) = 0;
        LODWORD(v503) = static os_log_type_t.fault.getter();
        if (one-time initialization token for internalErrorsLog != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v86 = static Log.internalErrorsLog;
        type metadata accessor for SDFShape.BackdropObserver?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
        v87 = swift_allocObject();
        *(v87 + 16) = xmmword_18DDAB4C0;
        v88 = v504;
        *&v525.a = v504;
        LODWORD(v525.b) = v71;
        BYTE4(v525.b) = v85;
        v89 = v86;
        v502 = HIDWORD(v71);
        v90 = v89;
        outlined copy of DisplayList.Effect(v88, v71, SBYTE4(v71));
        EnumTag = AGTypeGetEnumTag();
        outlined consume of DisplayList.Effect(*&v525.a, SLOBYTE(v525.b), SBYTE4(v525.b));
        v92 = MEMORY[0x1E69E6530];
        v93 = MEMORY[0x1E69E65A8];
        *(v87 + 56) = MEMORY[0x1E69E6530];
        *(v87 + 64) = v93;
        *(v87 + 32) = EnumTag;
        LOBYTE(v525.a) = *(a1 + 64);
        v94 = AGTypeGetEnumTag();
        *(v87 + 96) = v92;
        *(v87 + 104) = v93;
        *(v87 + 72) = v94;
        os_log(_:dso:log:_:_:)();

        outlined consume of DisplayList.Effect(v88, v71, v502);
      }

      goto LABEL_50;
    }

    v75 = *&v504;
    v76 = v504 >> 60;
    if ((v504 >> 60) <= 5)
    {
      if (v76 > 2)
      {
        if (v76 == 3)
        {
          v477 = *((v504 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
          v515 = *((v504 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
          v516[0] = v477;
          v516[1] = *((v504 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
          *(&v516[1] + 12) = *((v504 & 0xFFFFFFFFFFFFFFFLL) + 0x6C);
          v478 = *((v504 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          *&v514.a = *((v504 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          *&v514.c = v478;
          v479 = *((v504 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
          *&v514.tx = *((v504 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          v480 = *((v504 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
          v481 = *((v504 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
          v518[0] = v479;
          v518[1] = v480;
          v519[0] = v481;
          *(v519 + 12) = *((v504 & 0xFFFFFFFFFFFFFFFLL) + 0x6C);
          v482 = *((v504 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          *&v517.a = *((v504 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          *&v517.c = v482;
          *&v517.tx = *((v504 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          outlined init with copy of DisplayList.Item(&v548, &v525);
          outlined init with copy of DisplayList.ViewUpdater.Model.State(v537, &v525);
          outlined init with copy of GraphicsImage(&v514, &v525);
          v483 = GraphicsImage.bitmapOrientation.getter();
          v484 = v483;
          CGAffineTransform.apply(_:in:)(v483, c, d);
          outlined destroy of GraphicsImage(&v514);
          outlined destroy of DisplayList.Item(&v548);
          outlined destroy of DisplayList.Item(&v548);
          if (v484 >= 4)
          {
            v485 = c;
          }

          else
          {
            v485 = d;
          }

          if (v484 >= 4)
          {
            c = d;
          }

          d = v485;
          goto LABEL_50;
        }

        if (v76 != 4)
        {
          v486 = -*((v504 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v487 = -*((v504 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v525 = *&v537[32];
          CGAffineTransformTranslate(&v514, &v525, v486, v487);
          *&v532[32] = v514;
          outlined init with copy of DisplayList.ViewUpdater.Model.State(v537, &v525);
LABEL_285:
          outlined destroy of DisplayList.Item(&v548);
LABEL_50:
          v102 = v548.tx;
          if (*&v548.tx <= v534)
          {
            v102 = *&v534;
          }

          *&v534 = v102;
          *&v545 = *a1;
          v525 = v548;
          v526[0] = *v549;
          *(v526 + 12) = *&v549[12];
          DisplayList.ViewUpdater.Platform.updateState(_:item:size:state:)(a1, &v525, v532, c, d);
          v528 = v533;
          v529 = v534;
          v530 = v535;
          v531 = v536;
          v526[1] = *&v532[64];
          v527[0] = *&v532[80];
          v527[1] = *&v532[96];
          v527[2] = *&v532[112];
          v525 = *v532;
          v526[0] = *&v532[48];
LABEL_281:
          outlined destroy of DisplayList.ViewUpdater.Model.State(&v525);
          return;
        }

        v103 = *v537;
        v104 = *((v504 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        *&v517.a = *((v504 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        *&v517.c = v104;
        LOBYTE(v517.tx) = *((v504 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v105 = swift_getObjectType();
        v106 = *(v103 + 24);
        if (v105 == type metadata accessor for ColorShapeLayer())
        {
          outlined init with copy of DisplayList.Item(&v548, &v525);
          outlined init with copy of DisplayList.ViewUpdater.Model.State(v537, &v525);
          v112 = 0.0;
          v113 = 0.0;
        }

        else
        {
          outlined init with copy of DisplayList.Item(&v548, &v525);
          outlined init with copy of DisplayList.ViewUpdater.Model.State(v537, &v525);
          Path.boundingRect.getter();
          v107 = v552.origin.x;
          v108 = v552.origin.y;
          v109 = v552.size.width;
          v110 = v552.size.height;
          IsNull = CGRectIsNull(v552);
          if (IsNull)
          {
            v112 = 0.0;
          }

          else
          {
            v112 = v107;
          }

          if (IsNull)
          {
            v113 = 0.0;
          }

          else
          {
            v113 = v108;
          }

          if (IsNull)
          {
            c = 0.0;
          }

          else
          {
            c = v109;
          }

          if (IsNull)
          {
            d = 0.0;
          }

          else
          {
            d = v110;
          }

          if (v105 == type metadata accessor for PaintShapeLayer())
          {
            v114 = 1.0 / v106;
            v553.origin.x = v112;
            v553.origin.y = v113;
            v553.size.width = c;
            v553.size.height = d;
            v554 = CGRectStandardize(v553);
            v115 = v554.origin.x + v554.size.width;
            v116 = v554.origin.y + v554.size.height;
            v117 = 1.0 / v106 * 0.5;
            v118 = v117 + v554.origin.x;
            if (1.0 / v106 == 1.0)
            {
              v112 = floor(v118);
              v113 = floor(v117 + v554.origin.y);
              c = round(floor(v117 + v115) - v112);
              d = round(floor(v117 + v116) - v113);
            }

            else
            {
              v112 = v114 * floor(v118 / v114);
              v113 = v114 * floor((v117 + v554.origin.y) / v114);
              c = v114 * round((v114 * floor((v117 + v115) / v114) - v112) / v114);
              d = v114 * round((v114 * floor((v117 + v116) / v114) - v113) / v114);
            }
          }
        }

        v525 = *&v532[32];
        v83 = v112;
        v84 = v113;
LABEL_284:
        CGAffineTransformTranslate(&v514, &v525, v83, v84);
        v489 = v514.tx;
        v490 = v514.ty;
        v504 = *&v514.c;
        v505 = *&v514.a;
        outlined destroy of DisplayList.Item(&v548);
        *&v532[32] = v505;
        *&v532[48] = v504;
        *&v532[64] = v489;
        *&v532[72] = v490;
        goto LABEL_285;
      }
    }

    else if ((v76 - 8) >= 7 && v76 != 6)
    {
      v77 = *((v504 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      *&v517.a = *((v504 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      *&v517.c = v77;
      LOBYTE(v517.tx) = *((v504 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      outlined init with copy of DisplayList.Item(&v548, &v525);
      outlined init with copy of DisplayList.ViewUpdater.Model.State(v537, &v525);
      Path.boundingRect.getter();
      v78 = v551.origin.x;
      v79 = v551.origin.y;
      v80 = v551.size.width;
      v81 = v551.size.height;
      v82 = CGRectIsNull(v551);
      v83 = 0.0;
      v84 = 0.0;
      c = 0.0;
      d = 0.0;
      if (!v82)
      {
        v83 = v78;
        v84 = v79;
        c = v80;
        d = v81;
      }

      v525 = *&v532[32];
      goto LABEL_284;
    }

    *(a1 + 90) = 0;
    outlined init with copy of DisplayList.ViewUpdater.Model.State(v537, &v525);
    static os_log_type_t.fault.getter();
    if (one-time initialization token for internalErrorsLog != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v95 = static Log.internalErrorsLog;
    type metadata accessor for SDFShape.BackdropObserver?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v96 = swift_allocObject();
    *(v96 + 16) = xmmword_18DDAB4C0;
    v517.a = v75;
    outlined init with copy of DisplayList.Item(&v548, &v525);
    v97 = v95;
    v98 = AGTypeGetEnumTag();
    outlined consume of DisplayList.Content.Value(*&v517.a);
    v99 = MEMORY[0x1E69E6530];
    v100 = MEMORY[0x1E69E65A8];
    *(v96 + 56) = MEMORY[0x1E69E6530];
    *(v96 + 64) = v100;
    *(v96 + 32) = v98;
    LOBYTE(v525.a) = *(a1 + 64);
    v101 = AGTypeGetEnumTag();
    *(v96 + 96) = v99;
    *(v96 + 104) = v100;
    *(v96 + 72) = v101;
    os_log(_:dso:log:_:_:)();
    outlined destroy of DisplayList.Item(&v548);

    goto LABEL_50;
  }

  v506 = a1;
  if (v25 != 1)
  {
    goto LABEL_290;
  }

  *&v505 = *v549;
  v29 = HIDWORD(*v549);
  a1 = v506;
  v30 = *(v506 + 90);
  *&v504 = v548.ty;
  v31 = v548.tx;
  if (*&v548.tx)
  {
    LODWORD(v32) = (2 * ((33 * (*&v548.tx >> 16)) ^ LODWORD(v548.tx))) | 1;
    if (v30 != ((2 * ((33 * WORD1(v548.tx)) ^ LOWORD(v548.tx))) | 1))
    {
      v33 = v21;
      outlined init with copy of DisplayList.Item(&v548, v537);
      v34 = v33;
      goto LABEL_100;
    }
  }

  else if (v30)
  {
    v32 = v21;
    outlined init with copy of DisplayList.Item(&v548, v537);
    v34 = v32;
    LOWORD(v32) = 0;
    goto LABEL_100;
  }

  v23 = v505;
  if (BYTE4(v505) != 9)
  {
    v51 = v548.ty;
    outlined init with copy of DisplayList.Item(&v548, v537);
    outlined init with copy of DisplayList.Item(&v548, v537);

    v52 = *&v51;
    v53 = v23;
    v54 = v29;
    goto LABEL_33;
  }

  if (*(*&v548.ty + 88) > 1u)
  {
    if (*(*&v548.ty + 88) != 2)
    {
      v503 = v21;
      v56 = *(*&v548.ty + 48);
      *&v532[16] = *(*&v548.ty + 32);
      *&v532[32] = v56;
      *&v532[48] = *(*&v548.ty + 64);
      *&v532[64] = *(*&v548.ty + 80);
      *v532 = *(*&v548.ty + 16);
      outlined init with copy of DisplayList.Item(&v548, v537);
      outlined init with copy of DisplayList.Item(&v548, v537);
      _Rotation3DEffect.Data.transform.getter(&v511);
      v23 = v505;
      goto LABEL_29;
    }

LABEL_27:
    v55 = v548.ty;
    outlined init with copy of DisplayList.Item(&v548, v537);
    outlined init with copy of DisplayList.Item(&v548, v537);

    v52 = *&v55;
LABEL_32:
    v53 = v23;
    v54 = 9;
LABEL_33:
    outlined consume of DisplayList.Effect(v52, v53, v54);
    if ((*(a1 + 65) & 0x20) == 0)
    {
LABEL_4:
      outlined destroy of DisplayList.Item(&v548);
      if (*(a1 + 64) != 9 || v548.c == *(a1 + 48) && v548.d == *(a1 + 56))
      {
        goto LABEL_9;
      }

      swift_unknownObjectRetain();
      v26 = swift_getObjectType();
      v27 = swift_conformsToProtocol2();
      if (v27)
      {
        memset(v537, 0, 40);
        v537[40] = -1;
        v28 = (*(v27 + 40))(v537, 1, v26, v27);
        swift_unknownObjectRelease();
        *(a1 + 113) = (v28 & 1) == 0;
LABEL_9:
        *v532 = *a1;
        *v537 = v548;
        *&v537[48] = *v549;
        *&v537[60] = *&v549[12];
        DisplayList.ViewUpdater.Platform.updateState(_:item:size:state:)(a1, v537, a4, v548.c, v548.d);
        return;
      }

      __break(1u);
LABEL_290:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      JUMPOUT(0x18D1515C8);
    }

    goto LABEL_34;
  }

  if (!*(*&v548.ty + 88))
  {
    goto LABEL_27;
  }

  v503 = v21;
  outlined init with copy of DisplayList.Item(&v548, v537);
  outlined init with copy of DisplayList.Item(&v548, v537);
LABEL_29:
  v57 = *(a4 + 144);
  if (v57)
  {
    if (*(a1 + 96) == ((2 * ((33 * WORD1(v57)) ^ v57)) | 1))
    {
LABEL_31:

      v52 = v504;
      goto LABEL_32;
    }
  }

  else if (!*(a1 + 96))
  {
    goto LABEL_31;
  }

  outlined destroy of DisplayList.Item(&v548);
  if (v31 == 0.0)
  {
    LOWORD(v32) = 0;
  }

  else
  {
    LODWORD(v32) = (2 * ((33 * (*&v31 >> 16)) ^ LODWORD(v31))) | 1;
  }

  v34 = v503;
LABEL_100:
  *(a1 + 90) = LOWORD(v32);
  *(a1 + 113) = 0;
  if ((*(a1 + 65) & 0x20) != 0)
  {
    *(a1 + 65) &= ~0x20u;
  }

  if (v29 <= 7u)
  {
    if (v29 <= 6u)
    {
      v503 = v34;
      if (v29 != 3)
      {
        goto LABEL_290;
      }

      v502 = v29;

      outlined init with copy of AnyTrackedValue(v504 + 16, &v525);
      if (*(a1 + 64) != 16)
      {
        v514.a = v503;
        *v537 = v548;
        *&v537[48] = *v549;
        *&v537[60] = *&v549[12];
        DisplayList.ViewUpdater.Platform._makeItemView(item:state:)(v537, a4, v532);
        v161 = *(a1 + 80);
        *&v537[64] = *(a1 + 64);
        v538 = v161;
        v162 = *(a1 + 112);
        v539 = *(a1 + 96);
        v540 = v162;
        v163 = *(a1 + 16);
        *v537 = *a1;
        *&v537[16] = v163;
        v164 = *(a1 + 48);
        *&v537[32] = *(a1 + 32);
        *&v537[48] = v164;
        v165 = *v532;
        v166 = *&v532[16];
        v167 = *&v532[48];
        *(a1 + 32) = *&v532[32];
        *(a1 + 48) = v167;
        *a1 = v165;
        *(a1 + 16) = v166;
        v168 = *&v532[64];
        v169 = *&v532[80];
        v170 = *&v532[112];
        *(a1 + 96) = *&v532[96];
        *(a1 + 112) = v170;
        *(a1 + 64) = v168;
        *(a1 + 80) = v169;
        outlined destroy of DisplayList.ViewUpdater.ViewInfo(v537);
      }

      v172 = (a1 + 8);
      v171 = *(a1 + 8);
      v173 = v525.d;
      v174 = v525.tx;
      __swift_project_boxed_opaque_existential_1(&v525, *&v525.d);
      v175 = *(*&v174 + 32);
      swift_unknownObjectRetain();
      v176 = v174;
      a1 = v506;
      v175(v172, *&v173, *&v176);
      if (v171 != *v172)
      {
        v537[0] = 15;
        (*((*&v503 & 0xFFFFFFFFFFFFFFF8) + 112))();
        DisplayList.ViewUpdater.ViewInfo.reset()();
      }

      v177 = v525.d;
      v178 = v525.tx;
      __swift_project_boxed_opaque_existential_1(&v525, *&v525.d);
      v179 = (*(*&v178 + 40))(*(a1 + 8), COERCE_CGFLOAT(*&v177), COERCE_CGFLOAT(*&v178));
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      *(a1 + 24) = v179;
      __swift_destroy_boxed_opaque_existential_1(&v525);
      LOBYTE(v29) = v502;
      goto LABEL_163;
    }

    v184 = *&v34;
    if ((LOBYTE(v34) & 4) != 0)
    {
      v184 = *&v34;
      if ((*(a4 + 105) & 2) == 0)
      {
        v184 = *&v34;
        if (!(*(v504 + 24) & 0x400 | v24 & 0x400))
        {
          if (one-time initialization token for caLayer != -1)
          {
            v492 = v34;
            swift_once();
            v34 = v492;
          }

          v184 = static DisplayList.ViewUpdater.Platform.caLayer;
        }
      }
    }

    v185 = v34;

    if (*(a1 + 64) == 14)
    {
LABEL_121:
      if (*a1 == v184)
      {
        goto LABEL_163;
      }
    }

LABEL_161:
    v525.a = v185;
    goto LABEL_162;
  }

  if (v29 <= 0x14u)
  {
    if (v29 == 15)
    {
      v186 = v34;

      if (*(a1 + 64) != 18)
      {
        v525.a = v186;
LABEL_162:
        *v537 = v548;
        *&v537[48] = *v549;
        *&v537[60] = *&v549[12];
        DisplayList.ViewUpdater.Platform._makeItemView(item:state:)(v537, a4, v532);
        v199 = *(a1 + 80);
        *&v537[64] = *(a1 + 64);
        v538 = v199;
        v200 = *(a1 + 112);
        v539 = *(a1 + 96);
        v540 = v200;
        v201 = *(a1 + 16);
        *v537 = *a1;
        *&v537[16] = v201;
        v202 = *(a1 + 48);
        *&v537[32] = *(a1 + 32);
        *&v537[48] = v202;
        v203 = *v532;
        v204 = *&v532[16];
        v205 = *&v532[48];
        *(a1 + 32) = *&v532[32];
        *(a1 + 48) = v205;
        *a1 = v203;
        *(a1 + 16) = v204;
        v206 = *&v532[64];
        v207 = *&v532[80];
        v208 = *&v532[112];
        *(a1 + 96) = *&v532[96];
        *(a1 + 112) = v208;
        *(a1 + 64) = v206;
        *(a1 + 80) = v207;
        outlined destroy of DisplayList.ViewUpdater.ViewInfo(v537);
        goto LABEL_163;
      }

      goto LABEL_163;
    }

    if (v29 == 20)
    {
      if (v504 ^ 1 | v505)
      {
        if (v504 ^ 2 | v505)
        {
          goto LABEL_290;
        }

        v184 = *&v34;
        if ((LOBYTE(v34) & 4) != 0)
        {
          v184 = *&v34;
          if (!(*(a4 + 104) & 0x200 | v24 & 0x400))
          {
            if (one-time initialization token for caLayer != -1)
            {
              v494 = v34;
              swift_once();
              v34 = v494;
            }

            v184 = static DisplayList.ViewUpdater.Platform.caLayer;
          }
        }

        v185 = v34;

        if (*(a1 + 64) == 10)
        {
          goto LABEL_121;
        }
      }

      else
      {
        v184 = *&v34;
        if ((LOBYTE(v34) & 4) != 0)
        {
          v184 = *&v34;
          if (!(*(a4 + 104) & 0x200 | v24 & 0x400))
          {
            if (one-time initialization token for caLayer != -1)
            {
              v493 = v34;
              swift_once();
              v34 = v493;
            }

            v184 = static DisplayList.ViewUpdater.Platform.caLayer;
          }
        }

        v185 = v34;

        if (*(a1 + 64) == 11)
        {
          goto LABEL_121;
        }
      }

      goto LABEL_161;
    }

    if (((1 << v29) & 0xF7C00) != 0)
    {
      goto LABEL_290;
    }
  }

  if (v29 != 8)
  {
    v187 = *(v504 + 64);
    v522 = *(v504 + 48);
    v523 = v187;
    v524 = *(v504 + 80);
    v188 = *(v504 + 32);
    v520 = *(v504 + 16);
    v521 = v188;
    v189 = *&v34;
    v190 = *(v504 + 88);
    if ((LOBYTE(v34) & 4) != 0)
    {
      v189 = *&v34;
      if (!(*(a4 + 104) & 0x200 | v24 & 0x400))
      {
        if (one-time initialization token for caLayer != -1)
        {
          v491 = v34;
          swift_once();
          v34 = v491;
        }

        v189 = static DisplayList.ViewUpdater.Platform.caLayer;
      }
    }

    v191 = v34;

    if (v190 > 1)
    {
      if (v190 != 2)
      {
        *&v537[32] = v522;
        *&v537[48] = v523;
        *&v537[64] = v524;
        *v537 = v520;
        *&v537[16] = v521;
        _Rotation3DEffect.Data.transform.getter(v509);
LABEL_150:
        if (*(a1 + 64) != 12 || *a1 != v189)
        {
          v525.a = v191;
          *v537 = v548;
          *&v537[48] = *v549;
          *&v537[60] = *&v549[12];
          DisplayList.ViewUpdater.Platform._makeItemView(item:state:)(v537, a4, v532);
          v192 = *(a1 + 80);
          *&v537[64] = *(a1 + 64);
          v538 = v192;
          v193 = *(a1 + 112);
          v539 = *(a1 + 96);
          v540 = v193;
          v194 = *(a1 + 16);
          *v537 = *a1;
          *&v537[16] = v194;
          v195 = *(a1 + 48);
          *&v537[32] = *(a1 + 32);
          *&v537[48] = v195;
          v189 = *v532;
          v196 = *&v532[120];
          *a1 = *v532;
          *(a1 + 56) = *&v532[56];
          *(a1 + 40) = *&v532[40];
          *(a1 + 24) = *&v532[24];
          *(a1 + 8) = *&v532[8];
          *(a1 + 120) = v196;
          *(a1 + 104) = *&v532[104];
          *(a1 + 88) = *&v532[88];
          *(a1 + 72) = *&v532[72];
          outlined destroy of DisplayList.ViewUpdater.ViewInfo(v537);
        }

        v197 = *(a4 + 48);
        *v532 = *(a4 + 32);
        *&v532[24] = v197;
        *&v532[16] = 0;
        *&v532[40] = 0;
        *&v532[48] = *(a4 + 64);
        *&v532[64] = 0x3FF0000000000000;
        v198 = ProjectionTransform.concatenating(_:)(v532, &v525);
        (*((v189 & 0xFFFFFFFFFFFFFFF8) + 136))(&v525, *(a1 + 8), v198);
      }
    }

    else if (v190)
    {
      v509[2] = v522;
      v509[3] = v523;
      v510 = v524;
      v509[0] = v520;
      v509[1] = v521;
      goto LABEL_150;
    }

LABEL_163:
    v514.a = *a1;
    *v537 = v548;
    *&v537[48] = *v549;
    *&v537[60] = *&v549[12];
    DisplayList.ViewUpdater.Platform.updateState(_:item:size:state:)(a1, v537, a4, v548.c, v548.d);
    outlined consume of DisplayList.Effect(v504, v505, v29);
    return;
  }

  v180 = v504;
  v181 = *(v504 + 32);
  *&v514.a = *(v504 + 16);
  *&v514.c = v181;
  *&v514.tx = *(v504 + 48);
  *&v515 = *(v504 + 64);
  if ((LOBYTE(v34) & 4) != 0)
  {
    v183 = v34;
    if ((*(a4 + 105) & 2) != 0 || (v24 & 0x400) != 0)
    {
      outlined init with copy of SDFShape(&v514, v537);
      v182 = v183;
    }

    else
    {
      outlined init with copy of SDFShape(&v514, v537);
      if (one-time initialization token for caLayer != -1)
      {
        swift_once();
      }

      v182 = *&static DisplayList.ViewUpdater.Platform.caLayer;
    }
  }

  else
  {
    v182 = v34;
    outlined init with copy of SDFShape(&v514, v537);
    v183 = v182;
  }

  if (*(a1 + 64) != 5 || *a1 != *&v182)
  {
    v525.a = v183;
    *v537 = v548;
    *&v537[48] = *v549;
    *&v537[60] = *&v549[12];
    DisplayList.ViewUpdater.Platform._makeItemView(item:state:)(v537, a4, v532);
    v209 = *(a1 + 80);
    *&v537[64] = *(a1 + 64);
    v538 = v209;
    v210 = *(a1 + 112);
    v539 = *(a1 + 96);
    v540 = v210;
    v211 = *(a1 + 16);
    *v537 = *a1;
    *&v537[16] = v211;
    v212 = *(a1 + 48);
    *&v537[32] = *(a1 + 32);
    *&v537[48] = v212;
    v213 = *v532;
    v214 = *&v532[16];
    v215 = *&v532[48];
    *(a1 + 32) = *&v532[32];
    *(a1 + 48) = v215;
    *a1 = v213;
    *(a1 + 16) = v214;
    v216 = *&v532[64];
    v217 = *&v532[80];
    v218 = *&v532[112];
    *(a1 + 96) = *&v532[96];
    *(a1 + 112) = v218;
    *(a1 + 64) = v216;
    *(a1 + 80) = v217;
    outlined destroy of DisplayList.ViewUpdater.ViewInfo(v537);
    v182 = *a1;
  }

  v219 = *(a4 + 144);
  v220 = *(a4 + 112);
  v533 = *(a4 + 128);
  v534 = v219;
  v221 = *(a4 + 144);
  v535 = *(a4 + 160);
  v222 = *(a4 + 80);
  v223 = *(a4 + 48);
  *&v532[64] = *(a4 + 64);
  *&v532[80] = v222;
  v224 = *(a4 + 80);
  v225 = *(a4 + 112);
  *&v532[96] = *(a4 + 96);
  *&v532[112] = v225;
  v226 = *(a4 + 16);
  *v532 = *a4;
  *&v532[16] = v226;
  v227 = *(a4 + 48);
  v229 = *a4;
  v228 = *(a4 + 16);
  *&v532[32] = *(a4 + 32);
  *&v532[48] = v227;
  v528 = v533;
  v529 = v221;
  v530 = *(a4 + 160);
  v526[1] = *&v532[64];
  v527[0] = v224;
  v527[1] = *&v532[96];
  v527[2] = v220;
  *&v525.a = v229;
  *&v525.c = v228;
  v536 = *(a4 + 176);
  v531 = *(a4 + 176);
  *&v525.tx = *&v532[32];
  v526[0] = v223;
  *&v545 = v182;
  v517 = v514;
  *&v518[0] = v515;
  outlined init with copy of DisplayList.ViewUpdater.Model.State(v532, v537);
  DisplayList.ViewUpdater.Platform.updateSDFShapeView(_:state:shape:contentsChanged:)(a1, &v525, &v517, 1);
  v517.a = *a1;
  *v537 = v548;
  *&v537[48] = *v549;
  *&v537[60] = *&v549[12];
  DisplayList.ViewUpdater.Platform.updateState(_:item:size:state:)(a1, v537, &v525, v548.c, v548.d);
  outlined destroy of SDFShape(&v514);
  v541 = v528;
  v542 = v529;
  v543 = v530;
  v544 = v531;
  *&v537[64] = v526[1];
  v538 = v527[0];
  v539 = v527[1];
  v540 = v527[2];
  *v537 = v525;
  *&v537[48] = v526[0];
  outlined destroy of DisplayList.ViewUpdater.Model.State(v537);
  outlined consume of DisplayList.Effect(v180, v505, 8);
}

uint64_t sub_18D151604()
{

  return swift_deallocObject();
}

uint64_t _UIKitAddSubview(void *a1, void *a2, uint64_t a3)
{
  v6 = [a2 layer];
  v7 = [v6 sublayers];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 count];
  }

  else
  {
    v9 = 0;
  }

  v10 = [a1 layer];
  if (v9 <= a3 || (result = [v8 objectAtIndexedSubscript:a3], result != v10))
  {
    if (CALayerGetSuperlayer() == v6)
    {
      if (a3 + 1 < v9 && [v8 objectAtIndexedSubscript:?] == v10)
      {
        v10 = [v8 objectAtIndexedSubscript:a3];
        if (!v10)
        {
          _UIKitAddSubview_cold_1();
        }
      }

      else
      {
        v9 = a3;
      }

      [v6 insertSublayer:v10 atIndex:v9];

      return [a2 _invalidateSubviewCache];
    }

    else
    {

      return [a2 swiftui_insertManagedSubview:a1 atIndex:a3];
    }
  }

  return result;
}

uint64_t CoreViewSetFilters(uint64_t result, void *a2, uint64_t a3)
{
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    a2 = [a2 layer];
  }

  return [a2 setFilters:a3];
}

uint64_t *DisplayList.ViewUpdater.update(container:from:parentState:)(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = *(*a2 + 16);
  if (v4)
  {
    v5 = v3;
    v6 = result;
    v7 = (*a2 + 32);
    do
    {
      v37[0] = *v7;
      v8 = v7[1];
      v9 = v7[2];
      v10 = v7[3];
      *(v38 + 12) = *(v7 + 60);
      v37[2] = v9;
      v38[0] = v10;
      v37[1] = v8;
      *&v36[12] = *(v7 + 60);
      v11 = v7[3];
      v35 = v7[2];
      *v36 = v11;
      v12 = v7[1];
      v33 = *v7;
      v34 = v12;
      v13 = *&v36[24];
      swift_beginAccess();
      if (v13)
      {
        v14 = *(v5 + 108);
        v22 = *(v5 + 104);
        v15 = *(v5 + 112);
        v16 = *(v5 + 120);
        v17 = 1;
        *(v5 + 104) = v13;
        *(v5 + 108) = 0;
      }

      else
      {
        v17 = 0;
        v22 = *(v5 + 104);
        v14 = *(v5 + 108) + 1;
        *(v5 + 108) = v14;
        v15 = *(v5 + 112);
        v16 = *(v5 + 120);
      }

      *(v5 + 120) = v17;
      *v27 = *v6;
      outlined init with copy of DisplayList.Item(v37, v31);
      outlined init with copy of DisplayList.Item(v37, v31);
      DisplayList.ViewUpdater.ViewCache.prepare(item:platform:parentState:)(&v33, v27, a3, v31);
      swift_endAccess();
      v18 = *&v31[0];
      if (*v31 >= v6[3])
      {
        v18 = *(v6 + 3);
      }

      *(v6 + 3) = v18;
      v27[2] = v35;
      v28[0] = *v36;
      *(v28 + 12) = *&v36[12];
      v27[0] = v33;
      v27[1] = v34;
      v25 = v35;
      v26[0] = *v36;
      *(v26 + 12) = *&v36[12];
      v23 = v33;
      v24 = v34;
      outlined init with copy of DisplayList.Item(v27, v31);
      DisplayList.ViewUpdater.updateInheritedView(container:from:parentState:)(v6, &v23, a3);
      outlined destroy of DisplayList.Item(v37);
      v29[2] = v25;
      v30[0] = v26[0];
      *(v30 + 12) = *(v26 + 12);
      v29[0] = v23;
      v29[1] = v24;
      outlined destroy of DisplayList.Item(v29);
      v31[2] = v35;
      v32[0] = *v36;
      *(v32 + 12) = *&v36[12];
      v31[0] = v33;
      v31[1] = v34;
      result = outlined destroy of DisplayList.Item(v31);
      v19 = *(v5 + 120);
      if ((v19 & 0xC) != 0)
      {
        v20 = *(v5 + 104);
        if ((*(v5 + 120) & 4) != 0)
        {
          *(v5 + 104) = *(v5 + 112);
        }

        if ((v19 & 8) != 0)
        {
          *(v5 + 112) = v20;
        }
      }

      if (v19)
      {
        *(v5 + 104) = v22;
        *(v5 + 108) = v14;
      }

      if ((v19 & 2) != 0)
      {
        *(v5 + 112) = v15;
      }

      *(v5 + 120) = v16;
      v7 += 5;
      --v4;
    }

    while (v4);
  }

  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, unint64_t a2, unint64_t a3, __int16 a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4 & 0x1FF);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4 & 0x1FF);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + (v13 << 7);

    return outlined assign with take of DisplayList.ViewUpdater.ViewInfo(a1, v24);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v13, a2, a3, a4 & 0x1FF, a1, v23);
  }
}

uint64_t destroy for DisplayList.ViewUpdater.ViewCache.Result()
{
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

void DisplayList.ViewUpdater.Platform.updateState(_:item:size:state:)(uint64_t a1, __int128 *a2, uint64_t a3, double a4, double a5)
{
  v11 = *(a2 + 4);
  v12 = *v5;
  v13 = *(a3 + 128);
  if (v13)
  {
    if (*(a1 + 92) == ((2 * ((33 * WORD1(v13)) ^ v13)) | 1))
    {
      goto LABEL_8;
    }
  }

  else if (!*(a1 + 92))
  {
    goto LABEL_8;
  }

  CoreViewSetOpacity(*v5 & 3, *(a1 + 8), *(a3 + 8));
  v14 = *(a3 + 128);
  if (v14)
  {
    LODWORD(v14) = (2 * ((33 * (v14 >> 16)) ^ v14)) | 1;
  }

  *(a1 + 92) = v14;
LABEL_8:
  v15 = *(a3 + 136);
  if (v15)
  {
    if (*(a1 + 94) == ((2 * ((33 * WORD1(v15)) ^ v15)) | 1))
    {
      goto LABEL_24;
    }
  }

  else if (!*(a1 + 94))
  {
    goto LABEL_24;
  }

  v16 = *(a3 + 16);
  if (*(a3 + 24))
  {
    *(&v51 + 1) = swift_getObjectType();
    *&v50 = v16;
    swift_unknownObjectRetain();
  }

  else
  {
    if (_RBBlendModeGetCompositingFilter(*(a3 + 16)))
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v57 = 0u;
      v58 = 0u;
    }

    v50 = v57;
    v51 = v58;
  }

  v17 = *(a1 + 8);
  outlined init with copy of Any?(&v50, &v57);
  v18 = *(&v58 + 1);
  if (*(&v58 + 1))
  {
    v19 = __swift_project_boxed_opaque_existential_1(&v57, *(&v58 + 1));
    v49[1] = v49;
    v20 = *(v18 - 8);
    v21 = MEMORY[0x1EEE9AC00](v19);
    v23 = v11;
    v24 = v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v24, v21);
    v25 = _bridgeAnythingToObjectiveC<A>(_:)();
    v26 = v24;
    v11 = v23;
    (*(v20 + 8))(v26, v18);
    __swift_destroy_boxed_opaque_existential_1(&v57);
  }

  else
  {
    v25 = 0;
  }

  CoreViewSetCompositingFilter(v12 & 3, v17, v25);
  swift_unknownObjectRelease();
  outlined destroy of HitTestableEvent?(&v50, &lazy cache variable for type metadata for Any?);
  v27 = *(a3 + 136);
  if (v27)
  {
    LODWORD(v27) = (2 * ((33 * (v27 >> 16)) ^ v27)) | 1;
  }

  *(a1 + 94) = v27;
LABEL_24:
  v28 = *(a3 + 160);
  if (v28)
  {
    if (*(a1 + 100) == ((2 * ((33 * WORD1(v28)) ^ v28)) | 1))
    {
      goto LABEL_38;
    }
  }

  else if (!*(a1 + 100))
  {
    goto LABEL_38;
  }

  v29 = *(a3 + 88);
  *&v50 = v29;
  v30 = *(a1 + 64);

  if (v30 == 9)
  {
    v31 = specialized Array<A>.popColorMultiply(drawable:)(&v50, a1);
    v34 = *(a1 + 16);
    if ((v33 & 0x100000000) != 0)
    {
      v35 = 0;
    }

    else
    {
      *&v57 = v31;
      *(&v57 + 1) = v32;
      LODWORD(v58) = v33;
      if (one-time initialization token for cache != -1)
      {
        swift_once();
      }

      v35 = specialized ObjectCache.subscript.getter(&v57);
    }

    [v34 setContentsMultiplyColor_];

    v29 = v50;
  }

  v56 = v12;
  DisplayList.ViewUpdater.Platform.setFilters(_:of:)(v29, *(a1 + 8));

  v36 = *(a3 + 160);
  if (v36)
  {
    LODWORD(v36) = (2 * ((33 * (v36 >> 16)) ^ v36)) | 1;
  }

  *(a1 + 100) = v36;
LABEL_38:
  v37 = *(a3 + 152);
  if (v37)
  {
    if (*(a1 + 98) != ((2 * ((33 * WORD1(v37)) ^ v37)) | 1))
    {
      goto LABEL_46;
    }
  }

  else if (*(a1 + 98))
  {
    goto LABEL_46;
  }

  v38 = *(a3 + 144);
  if (v38)
  {
    if (*(a1 + 96) == ((2 * ((33 * WORD1(v38)) ^ v38)) | 1))
    {
LABEL_44:
      LOBYTE(v39) = 0;
      goto LABEL_51;
    }
  }

  else if (!*(a1 + 96))
  {
    goto LABEL_44;
  }

LABEL_46:
  v40 = *(a1 + 65);
  *&v50 = v12;
  DisplayList.ViewUpdater.Platform.updateClipShapes(_:state:)(a1, a3);
  v41 = *(a3 + 152);
  if (v41)
  {
    LODWORD(v41) = (2 * ((33 * (v41 >> 16)) ^ v41)) | 1;
  }

  *(a1 + 98) = v41;
  if ((v40 & 8) != 0)
  {
    LOBYTE(v39) = 1;
  }

  else
  {
    v39 = (*(a1 + 65) >> 3) & 1;
  }

LABEL_51:
  v56 = v12;
  v42 = a2[1];
  v50 = *a2;
  v51 = v42;
  v52 = v11;
  v53 = *(a2 + 40);
  v54 = *(a2 + 56);
  v55 = *(a2 + 18);
  if ((DisplayList.ViewUpdater.Platform.updateGeometry(_:item:size:state:clipRectChanged:)(a1, a4, a5, &v50, a3, v39) & 1) == 0)
  {
    v43 = *(a3 + 168);
    if (v43)
    {
      if (*(a1 + 102) != ((2 * ((33 * WORD1(v43)) ^ v43)) | 1))
      {
        goto LABEL_60;
      }
    }

    else if (*(a1 + 102))
    {
      goto LABEL_60;
    }

    if (v11)
    {
      if (*(a1 + 88) == ((2 * ((33 * WORD1(v11)) ^ v11)) | 1))
      {
        goto LABEL_63;
      }
    }

    else if (!*(a1 + 88))
    {
      goto LABEL_63;
    }
  }

LABEL_60:
  v56 = v12;
  v44 = a2[1];
  v50 = *a2;
  v51 = v44;
  v52 = v11;
  v53 = *(a2 + 40);
  v54 = *(a2 + 56);
  v55 = *(a2 + 18);
  DisplayList.ViewUpdater.Platform.updateShadow(_:state:item:)(a1, a3, &v50);
  v45 = *(a3 + 168);
  if (v45)
  {
    LODWORD(v45) = (2 * ((33 * (v45 >> 16)) ^ v45)) | 1;
  }

  *(a1 + 102) = v45;
LABEL_63:
  v46 = *(a3 + 176);
  if (v46)
  {
    if (*(a1 + 104) == ((2 * ((33 * WORD1(v46)) ^ v46)) | 1))
    {
      goto LABEL_70;
    }
  }

  else if (!*(a1 + 104))
  {
    goto LABEL_70;
  }

  *&v50 = v12;
  DisplayList.ViewUpdater.Platform.updateProperties(_:state:)(a1, a3);
  v47 = *(a3 + 176);
  if (v47)
  {
    LODWORD(v47) = (2 * ((33 * (v47 >> 16)) ^ v47)) | 1;
  }

  *(a1 + 104) = v47;
LABEL_70:
  v48 = *(a1 + 64);
  if (v48 > 0x11 || ((1 << v48) & 0x38204) == 0)
  {
    [*(a1 + 16) setContentsScale_];
  }
}

void __swiftcall DisplayList.ViewUpdater.Model.State.clipRect()(SwiftUI::FixedRoundedRect_optional *__return_ptr retstr)
{
  if (*(*(v1 + 80) + 16) != 1)
  {
    goto LABEL_10;
  }

  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v29 = *(v1 + 56);
  v6 = *(v1 + 72);
  DisplayList.ViewUpdater.Model.Clip.clipRect()(&v32);
  style = v32.value.style;
  if (v32.value.style == SwiftUI_RoundedCornerStyle_unknownDefault)
  {
    goto LABEL_10;
  }

  width = v32.value.cornerSize.width;
  height = v32.value.cornerSize.height;
  v11 = v32.value.rect.size.width;
  v10 = v32.value.rect.size.height;
  x = v32.value.rect.origin.x;
  y = v32.value.rect.origin.y;
  v14 = v3 == 0.0;
  if (*&v29 != 0.0)
  {
    v14 = 0;
  }

  v15 = v5 == 0.0 && v4 == 0.0;
  if (v15 || v14)
  {
    v32.value.rect.origin.x = v3;
    v32.value.rect.origin.y = v4;
    v32.value.rect.size.width = v5;
    *&v32.value.rect.size.height = v29;
    v32.value.cornerSize.height = v6;
    CGAffineTransformInvert(&v31, &v32);
    a = v31.a;
    b = v31.b;
    c = v31.c;
    d = v31.d;
    v32.value.rect.origin.x = v31.a;
    v32.value.rect.origin.y = v31.b;
    v32.value.rect.size = *&v31.c;
    ty = v31.ty;
    tx = v31.tx;
    v32.value.cornerSize = *&v31.tx;
    v34.origin.x = x;
    v34.origin.y = y;
    v34.size.width = v11;
    v34.size.height = v10;
    v35 = CGRectApplyAffineTransform(v34, &v32);
    v21 = v35.size.width;
    v22 = v35.size.height;
    if ((~*&width & 0x7FF0000000000000) != 0 && (*&height & 0x7FF0000000000000) != 0x7FF0000000000000)
    {
      v32.value.rect.origin.x = a;
      v32.value.rect.origin.y = b;
      v32.value.rect.size.width = c;
      v32.value.rect.size.height = d;
      v32.value.cornerSize.width = tx;
      v32.value.cornerSize.height = ty;
      v23 = v35.origin.x;
      v33.width = width;
      v24 = v35.origin.y;
      v33.height = height;
      v25 = CGSizeApplyAffineTransform(v33, &v32);
      v26 = copysign(v25.width, width);
      v27 = copysign(v25.height, height);
      v35.origin.y = v24;
      width = v26;
      height = v27;
      v35.origin.x = v23;
    }

    v16 = style & 1;
    retstr->value.rect.origin.x = v35.origin.x;
    retstr->value.rect.origin.y = v35.origin.y;
    retstr->value.rect.size.width = v21;
    retstr->value.rect.size.height = v22;
    retstr->value.cornerSize.width = width;
    retstr->value.cornerSize.height = height;
  }

  else
  {
LABEL_10:
    retstr->value.rect.size = 0u;
    retstr->value.cornerSize = 0u;
    retstr->value.rect.origin = 0u;
    v16 = SwiftUI_RoundedCornerStyle_unknownDefault;
  }

  retstr->value.style = v16;
}

void DisplayList.ViewUpdater.Platform.updateClipShapes(_:state:)(uint64_t a1, __int128 *a2)
{
  v5 = a2[9];
  v6 = a2[7];
  v63 = a2[8];
  v64 = v5;
  v7 = a2[9];
  v65 = a2[10];
  v8 = a2[5];
  v9 = a2[3];
  v59 = a2[4];
  v60 = v8;
  v10 = a2[5];
  v11 = a2[7];
  v61 = a2[6];
  v62 = v11;
  v12 = a2[1];
  v56[0] = *a2;
  v56[1] = v12;
  v13 = a2[3];
  v15 = *a2;
  v14 = a2[1];
  v57 = a2[2];
  v58 = v13;
  v51 = v63;
  v52 = v7;
  v53 = a2[10];
  v47 = v59;
  v48 = v10;
  v49 = v61;
  v50 = v6;
  *&v45.a = v15;
  *&v45.c = v14;
  v16 = *v2;
  v66 = *(a2 + 22);
  v54 = *(a2 + 22);
  *&v45.tx = v57;
  v46 = v9;
  DisplayList.ViewUpdater.Model.State.clipRect()(&v55);
  v73 = v51;
  v74 = v52;
  v75 = v53;
  v76 = v54;
  v69 = v47;
  v70 = v48;
  v71 = v49;
  v72 = v50;
  v67 = v45;
  v68 = v46;
  outlined init with copy of DisplayList.ViewUpdater.Model.State(v56, &transform);
  outlined destroy of DisplayList.ViewUpdater.Model.State(&v67);
  style = v55.value.style;
  if (v55.value.style == SwiftUI_RoundedCornerStyle_unknownDefault)
  {
    v18 = *(a1 + 65);
    if ((v18 & 8) != 0)
    {
      v18 &= ~8u;
      *(a1 + 65) = v18;
      CoreViewSetClipsToBounds(v16 & 3, *(a1 + 8), 0, 0);
      v19 = *(a1 + 16);
      [v19 bounds];
      [v19 setBounds_];
      [v19 setCornerRadius_];
      [v19 setCornerCurve_];
    }

    v20 = *(a2 + 10);
    if (*(v20 + 16))
    {
      v21 = *(a1 + 16);

      v22 = [v21 mask];
      if (v22)
      {
        v23 = v22;
        type metadata accessor for MaskLayer();
        v24 = swift_dynamicCastClass();
        if (v24)
        {
          v25 = v24;
          v26 = v23;
          goto LABEL_24;
        }
      }

      v25 = [objc_allocWithZone(type metadata accessor for MaskLayer()) init];
      [v25 setAnchorPoint_];
      [v25 setNoAnimationDelegate];
      [v21 setMask_];

      if ((v18 & 0x10) == 0)
      {
        *(a1 + 65) = v18 | 0x10;
      }

LABEL_24:
      v40 = a2[3];
      *&v45.a = a2[2];
      *&v45.c = v40;
      *&v45.tx = a2[4];
      CGAffineTransformInvert(&transform, &v45);

      v42 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI11DisplayListV11ViewUpdaterC5ModelO4ClipV_Tt1g5(v41, v20);

      if (v42)
      {
        v45 = *&v25[OBJC_IVAR____TtC7SwiftUI9MaskLayer_clipTransform];
        v43 = static CGAffineTransform.== infix(_:_:)();

        if (v43)
        {
          goto LABEL_29;
        }
      }

      else
      {
      }

      MaskLayer.setClips(_:transform:)(v20, &transform);
LABEL_29:

      return;
    }

    if ((v18 & 0x10) == 0)
    {
      return;
    }

    [*(a1 + 16) setMask_];
    v39 = v18 & 0xEF;
LABEL_20:
    *(a1 + 65) = v39;
    return;
  }

  height = v55.value.rect.size.height;
  width = v55.value.cornerSize.width;
  y = v55.value.rect.origin.y;
  v29 = v55.value.rect.size.width;
  x = v55.value.rect.origin.x;
  CoreViewSetClipsToBounds(v16 & 3, *(a1 + 8), 1, 0);
  v32 = *(a1 + 16);
  v77.origin.x = x;
  v77.origin.y = y;
  v77.size.width = v29;
  v77.size.height = height;
  v33 = CGRectGetWidth(v77);
  v78.origin.x = x;
  v78.origin.y = y;
  v78.size.width = v29;
  v78.size.height = height;
  v34 = CGRectGetHeight(v78);
  if (v34 >= v33)
  {
    v34 = v33;
  }

  v35 = v34 * 0.5;
  if (v35 >= width)
  {
    v35 = width;
  }

  [v32 setCornerRadius_];
  v36 = MEMORY[0x1E69796E8];
  if ((style & 1) == 0)
  {
    v36 = MEMORY[0x1E69796E0];
  }

  v37 = *v36;
  [v32 setCornerCurve_];

  v38 = *(a1 + 65);
  if ((v38 & 8) == 0)
  {
    v38 |= 8u;
    *(a1 + 65) = v38;
  }

  if ((v38 & 0x10) != 0)
  {
    [v32 setMask_];
    v39 = v38 & 0xEF;
    goto LABEL_20;
  }
}

uint64_t DisplayList.ViewUpdater.Platform.updateGeometry(_:item:size:state:clipRectChanged:)(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, char a6)
{
  height = a3;
  width = a2;
  v11 = *v6;
  v13 = *(a1 + 48);
  v12 = *(a1 + 56);
  v14 = v12 != a3 || v13 != a2;
  v15 = *(a1 + 96);
  v16 = *(a5 + 144);
  if (v16)
  {
    v17 = (2 * ((33 * WORD1(v16)) ^ v16)) | 1;
  }

  else
  {
    v17 = 0;
  }

  *(a1 + 96) = v17;
  if (!((v15 != v17) | v14 & 1) && (a6 & 1) == 0)
  {
    return 0;
  }

  v19 = *(a5 + 64);
  v18 = *(a5 + 72);
  v20 = *(a1 + 65);
  if ((v20 & 8) != 0)
  {
    v22 = *(a5 + 144);
    v23 = *(a5 + 112);
    v77 = *(a5 + 128);
    v78 = v22;
    v24 = *(a5 + 144);
    v79 = *(a5 + 160);
    v25 = *(a5 + 80);
    v26 = *(a5 + 48);
    v73 = *(a5 + 64);
    v74 = v25;
    v27 = *(a5 + 80);
    v28 = *(a5 + 112);
    v75 = *(a5 + 96);
    v76 = v28;
    v29 = *(a5 + 16);
    v70[0] = *a5;
    v70[1] = v29;
    v30 = *(a5 + 48);
    v32 = *a5;
    v31 = *(a5 + 16);
    v71 = *(a5 + 32);
    v72 = v30;
    v65 = v77;
    v66 = v24;
    v67 = *(a5 + 160);
    v61 = v73;
    v62 = v27;
    v63 = v75;
    v64 = v23;
    v57 = v32;
    v58 = v31;
    v80 = *(a5 + 176);
    v68 = *(a5 + 176);
    v59 = v71;
    v60 = v26;
    DisplayList.ViewUpdater.Model.State.clipRect()(&v69);
    v89 = v65;
    v90 = v66;
    v91 = v67;
    v92 = v68;
    v85 = v61;
    v86 = v62;
    v87 = v63;
    v88 = v64;
    v81 = v57;
    v82 = v58;
    v83 = v59;
    v84 = v60;
    outlined init with copy of DisplayList.ViewUpdater.Model.State(v70, v56);
    outlined destroy of DisplayList.ViewUpdater.Model.State(&v81);
    if (v69.value.style != SwiftUI_RoundedCornerStyle_unknownDefault)
    {
      width = v69.value.rect.size.width;
      height = v69.value.rect.size.height;
      x = v69.value.rect.origin.x;
      y = v69.value.rect.origin.y;
      v14 |= a6;
      v19 = v19 + v69.value.rect.origin.x;
      v18 = v18 + v69.value.rect.origin.y;
      if (v15 == v17 && (a6 & 1) == 0)
      {
        if ((v14 & 1) == 0)
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          if ((v20 & 4) == 0)
          {
            goto LABEL_51;
          }

          goto LABEL_111;
        }

        goto LABEL_42;
      }

LABEL_26:
      if (v19 != *(a1 + 32) || v18 != *(a1 + 40))
      {
        v34 = 1;
        *(a1 + 32) = v19;
        *(a1 + 40) = v18;
        if ((v14 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_31:
        if (width == v13 && height == v12)
        {
LABEL_33:
          v38 = 0;
          v39 = 1;
          if ((v34 & 1) == 0)
          {
            v37 = 0;
            if ((v20 & 4) != 0)
            {
              goto LABEL_111;
            }

LABEL_51:
            if (v15 == v17)
            {
              goto LABEL_63;
            }

            goto LABEL_52;
          }

LABEL_98:
          if ((v20 & 1) == 0)
          {
            goto LABEL_99;
          }

          goto LABEL_47;
        }

        *(a1 + 48) = width;
        *(a1 + 56) = height;
        v38 = 1;
        if ((v34 & 1) == 0)
        {
          v37 = 0;
          v39 = 1;
          if ((v20 & 4) == 0)
          {
            goto LABEL_51;
          }

          goto LABEL_111;
        }

        v39 = 1;
        if ((v20 & 1) == 0)
        {
          goto LABEL_99;
        }

LABEL_47:
        v37 = 1;
        if (x == 0.0 && y == 0.0)
        {
          v20 &= ~1u;
          *(a1 + 65) = v20;
        }

        if ((v20 & 4) == 0)
        {
          goto LABEL_51;
        }

LABEL_111:
        if (v38 & 1) != 0 || (v37)
        {
          v53 = v11 & 3;
          CoreViewSetSize(v11 & 3, *(a1 + 8));
        }

        else
        {
          v53 = v11 & 3;
        }

        v52 = *(a1 + 8);
        v54 = CoreViewLayer(v53, v52);
        [v54 setRasterizationScale_];

        if (v38)
        {
          goto LABEL_118;
        }

        goto LABEL_116;
      }

      if ((v14 & 1) == 0)
      {
        goto LABEL_44;
      }

LABEL_42:
      if (width == v13 && height == v12)
      {
LABEL_44:
        v38 = 0;
        v39 = 0;
        if (v20)
        {
          goto LABEL_47;
        }

        goto LABEL_99;
      }

LABEL_46:
      v39 = 0;
      *(a1 + 48) = width;
      *(a1 + 56) = height;
      v38 = 1;
      if (v20)
      {
        goto LABEL_47;
      }

LABEL_99:
      if (x == 0.0 && y == 0.0)
      {
        v37 = 0;
        if ((v20 & 4) != 0)
        {
          goto LABEL_111;
        }
      }

      else
      {
        v20 |= 1u;
        *(a1 + 65) = v20;
        v37 = 1;
        if ((v20 & 4) != 0)
        {
          goto LABEL_111;
        }
      }

      goto LABEL_51;
    }
  }

  if (v20)
  {
    x = 0.0;
    if (v15 == v17)
    {
      if ((v14 & 1) == 0)
      {
        v38 = 0;
        v39 = 0;
        y = 0.0;
        goto LABEL_98;
      }

      y = 0.0;
      goto LABEL_46;
    }

    y = 0.0;
    goto LABEL_26;
  }

  if (v15 == v17)
  {
    if ((v14 & 1) == 0)
    {
      v38 = 0;
      v37 = 0;
      v39 = 0;
      y = 0.0;
      x = 0.0;
      if ((v20 & 4) != 0)
      {
        goto LABEL_111;
      }

      goto LABEL_63;
    }

    goto LABEL_95;
  }

  if (v19 != *(a1 + 32) || v18 != *(a1 + 40))
  {
    v34 = 0;
    x = 0.0;
    y = 0.0;
    *(a1 + 32) = v19;
    *(a1 + 40) = v18;
    if ((v14 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (v14)
  {
LABEL_95:
    v37 = 0;
    v39 = 0;
    *(a1 + 48) = width;
    *(a1 + 56) = height;
    v38 = 1;
    x = 0.0;
    y = 0.0;
    if ((v20 & 4) != 0)
    {
      goto LABEL_111;
    }

    goto LABEL_51;
  }

  v38 = 0;
  v37 = 0;
  v39 = 0;
  y = 0.0;
  x = 0.0;
  if ((v20 & 4) != 0)
  {
    goto LABEL_111;
  }

LABEL_52:
  v41 = *(a5 + 40);
  v42 = 1;
  if (*(a5 + 32) == 1.0 && v41 == 0.0 && *(a5 + 48) == 0.0)
  {
    v43 = *(a5 + 56);
    v42 = v43 != 1.0;
    if ((v20 & 2) == 0 && v43 == 1.0)
    {
      goto LABEL_63;
    }
  }

  v44 = *(a1 + 8);
  *&v81 = *(a5 + 32);
  *(&v81 + 1) = v41;
  v82 = *(a5 + 48);
  v83 = 0uLL;
  CoreViewSetTransform(v11 & 3, v44, &v81);
  if (v42)
  {
    if ((v20 & 2) != 0)
    {
      goto LABEL_63;
    }

    v45 = v20 | 2;
  }

  else
  {
    if ((v20 & 2) == 0)
    {
      goto LABEL_63;
    }

    v45 = v20 & 0xF9;
  }

  *(a1 + 65) = v45;
LABEL_63:
  v46 = 0.0;
  if ((*&v19 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v47 = 0.0;
  }

  else
  {
    v47 = v19;
  }

  if ((~*&v19 & 0x7FF0000000000000) != 0)
  {
    v47 = v19;
  }

  if ((*&v18 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v48 = 0.0;
  }

  else
  {
    v48 = v18;
  }

  if ((~*&v18 & 0x7FF0000000000000) != 0)
  {
    v48 = v18;
  }

  if ((*&x & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v49 = 0.0;
  }

  else
  {
    v49 = x;
  }

  if ((~*&x & 0x7FF0000000000000) != 0)
  {
    v49 = x;
  }

  if ((*&y & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v50 = 0.0;
  }

  else
  {
    v50 = y;
  }

  if ((~*&y & 0x7FF0000000000000) != 0)
  {
    v50 = y;
  }

  if ((*&width & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v51 = 0.0;
  }

  else
  {
    v51 = width;
  }

  if ((~*&width & 0x7FF0000000000000) != 0)
  {
    v51 = width;
  }

  if ((*&height & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v46 = height;
  }

  if ((~*&height & 0x7FF0000000000000) != 0)
  {
    v46 = height;
  }

  v52 = *(a1 + 8);
  CoreViewSetGeometry(v11 & 3, v52, *(a1 + 64) - 15 < 3, v39, v37, v38, v47, v48, v49, v50, v51, v46);
  if (v38)
  {
    goto LABEL_118;
  }

LABEL_116:
  if (!v37)
  {
    return 0;
  }

LABEL_118:
  if (*(a1 + 64) == 14)
  {
    CoreViewSetMaskGeometry(v11 & 3, v52, x, y, width, height);
  }

  return 1;
}

void CoreViewSetGeometry(int a1, void *a2, char a3, int a4, int a5, int a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v21 = a2;
  if (!a1)
  {
    if (a4)
    {
      [a2 setPosition:{a7, a8}];
    }

    if ((a5 & 1) != 0 || a6)
    {

      [v21 setBounds:{a9, a10, a11, a12}];
    }

    return;
  }

  if (a1 != 1)
  {
    return;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __CoreViewSetGeometry_block_invoke;
  block[3] = &unk_1E7242240;
  block[4] = a2;
  if (CoreViewSetGeometry_onceToken == -1)
  {
    if (a3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_once(&CoreViewSetGeometry_onceToken, block);
    if (a3)
    {
LABEL_5:
      if (a5)
      {
        CoreViewSetGeometry_cold_1();
      }

      goto LABEL_17;
    }
  }

  if (CoreViewSetGeometry_supportsGeometryObservation != 1 || ([v21 _shouldNotifyGeometryObservers] & 1) == 0)
  {
    v25 = [v21 layer];
    v21 = v25;
    if (a4)
    {
      [v25 setPosition:{a7, a8}];
    }

    if ((a5 & 1) != 0 || a6)
    {
      goto LABEL_27;
    }

    return;
  }

LABEL_17:
  if (a4)
  {
    [v21 setCenter:{a7, a8}];
  }

  if ((a5 & ~a3 & 1) != 0 || a6)
  {
    if ((a5 & ~a3 & 1) == 0)
    {
      [v21 bounds];
      a9 = v23;
      a10 = v24;
    }

LABEL_27:
    [v21 setBounds:{a9, a10, a11, a12}];
  }
}

void DisplayList.ViewUpdater.Platform.updateShadow(_:state:item:)(uint64_t a1, void *a2, void *a3)
{
  v91 = *MEMORY[0x1E69E9840];
  v6 = *v3;
  v7 = a2[12];
  if (v7)
  {
    v8 = a3[8];
    if (*(a1 + 64))
    {
      v9 = (a3[8] & 0xC0000000) == 0;
    }

    else
    {
      v9 = 0;
    }

    if (!v9)
    {
      goto LABEL_12;
    }

    v10 = a3[5];
    v11 = a3[6];
    v12 = a3[7];
    if (v10 >> 60 != 4)
    {
      if (v10 >> 60 != 1)
      {
LABEL_12:
        swift_beginAccess();
        v79 = *(v7 + 16);
        LODWORD(v80) = *(v7 + 32);
        v27 = *(v7 + 40);
        v28 = *(v7 + 48);
        v29 = *(v7 + 56);
        v30 = *(a1 + 8);
        v31 = one-time initialization token for cache;

        if (v31 != -1)
        {
          swift_once();
        }

        v32 = specialized ObjectCache.subscript.getter(&v79);
        CoreViewSetShadow(v6 & 3, v30, v32, v27, v28, v29);

        return;
      }

      v13 = *((v10 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
      v14 = *(a1 + 16);
      swift_beginAccess();
      v15 = *(v7 + 24);
      v16 = *(v7 + 32);
      v17 = *(v7 + 40);
      v18 = *(v7 + 48);
      v19 = *(v7 + 56);
      *&v20 = v13 * *(v7 + 28);
      v21 = (*(v7 + 68) >> 4) & 1;
      v22 = *(v7 + 16);
      outlined copy of DisplayList.Item.Value(v10, v11, v12, v8);
      outlined copy of DisplayList.Item.Value(v10, v11, v12, v8);

      [v14 setShadowPathIsBounds_];
      [v14 setShadowPath_];
      [v14 setPunchoutShadow_];
      *&v75 = v22;
      *(&v75 + 1) = __PAIR64__(v20, v15);
      LODWORD(v76) = v16;
      v78[0] = v6 & 3;
      v23 = CoreViewLayerView(v6 & 3, v14, v78);
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      v24 = v78[0];
      __swift_project_boxed_opaque_existential_1(&v84, *(&v85 + 1));
      v25 = _bridgeAnythingToObjectiveC<A>(_:)();
      if (one-time initialization token for cache != -1)
      {
        swift_once();
      }

      v26 = specialized ObjectCache.subscript.getter(&v75);
      CoreViewSetShadow(v24, v25, v26, v17, v18, v19);

      outlined consume of DisplayList.Item.Value(v10, v11, v12, v8);
      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_1(&v84);
LABEL_49:
      outlined consume of DisplayList.Item.Value(v10, v11, v12, v8);
      return;
    }

    v35 = *((v10 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v74 = *((v10 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v72 = *((v10 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v73 = *((v10 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    v36 = *((v10 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v71 = *((v10 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
    v69 = *(a1 + 16);
    ObjectType = swift_getObjectType();
    v38 = *(*a2 + 24);
    v70 = v36;
    if (ObjectType == type metadata accessor for ColorShapeLayer())
    {
      outlined copy of DisplayList.Item.Value(v10, v11, v12, v8);
      outlined copy of DisplayList.Item.Value(v10, v11, v12, v8);

      x = 0.0;
      y = 0.0;
LABEL_48:
      swift_beginAccess();
      v61 = *(v7 + 48);
      v76 = *(v7 + 32);
      *v77 = v61;
      *&v77[13] = *(v7 + 61);
      v75 = *(v7 + 16);
      *&v79 = v6;
      *(&v79 + 1) = v69;
      *&v80 = v35;
      *(&v80 + 1) = v72;
      *&v81 = v74;
      *(&v81 + 1) = v73;
      LOBYTE(v82) = v70;
      *(&v82 + 1) = x;
      *v83 = y;
      *&v83[24] = v76;
      *&v83[8] = v75;
      *&v83[53] = *&v77[13];
      *&v83[40] = *v77;
      v83[61] = 0;
      v62 = *(*v71 + 152);
      outlined copy of Path.Storage(v35, v72, v74, v73, v70);
      v63 = v69;
      v62(&v79, &type metadata for ShapeLayerShadowHelper, &protocol witness table for ShapeLayerShadowHelper);

      outlined consume of DisplayList.Item.Value(v10, v11, v12, v8);
      v88 = *v83;
      v89 = *&v83[16];
      v90[0] = *&v83[32];
      *(v90 + 14) = *&v83[46];
      v84 = v79;
      v85 = v80;
      v86 = v81;
      v87 = v82;
      outlined destroy of ShapeLayerShadowHelper(&v84);
      goto LABEL_49;
    }

    v39 = ObjectType;
    if (v36 <= 2)
    {
      if (v36 >= 2)
      {
        x = v35[2];
        y = v35[3];
        width = v35[4];
        height = v35[5];
      }

      else
      {
        height = *&v73;
        width = *&v74;
        y = *&v72;
        x = *&v35;
      }

      goto LABEL_35;
    }

    if (v36 == 5)
    {
      if (*(v35 + 16))
      {
        if (*(v35 + 16) == 1)
        {
          outlined copy of DisplayList.Item.Value(v10, v11, v12, v8);
          outlined copy of DisplayList.Item.Value(v10, v11, v12, v8);

          outlined copy of Path.Storage(v35, v72, v74, v73, 5u);
          RBPathGetBoundingRect();
          x = v44;
          y = v45;
          width = v46;
          height = v47;
          v48 = v35;
          v49 = v72;
          v50 = v74;
          v51 = v73;
LABEL_55:
          outlined consume of Path.Storage(v48, v49, v50, v51, 5u);
          goto LABEL_36;
        }

        outlined copy of DisplayList.Item.Value(v10, v11, v12, v8);
        outlined copy of DisplayList.Item.Value(v10, v11, v12, v8);

        outlined copy of Path.Storage(v35, v72, v74, v73, 5u);
        x = MEMORY[0x193AC3640](v35 + 3);
        y = v66;
        width = v67;
        height = v68;
        v48 = v35;
        v49 = v72;
        v50 = v74;
LABEL_54:
        v51 = v73;
        goto LABEL_55;
      }

      v64 = *(v35 + 3);
      if (v64)
      {
        v65 = v64;
        outlined copy of DisplayList.Item.Value(v10, v11, v12, v8);
        outlined copy of DisplayList.Item.Value(v10, v11, v12, v8);

        outlined copy of Path.Storage(v35, v72, v74, v73, 5u);
        PathBoundingBox = CGPathGetPathBoundingBox(v65);
        x = PathBoundingBox.origin.x;
        y = PathBoundingBox.origin.y;
        width = PathBoundingBox.size.width;
        height = PathBoundingBox.size.height;

        v48 = v35;
        v49 = v72;
        v50 = v74;
        goto LABEL_54;
      }

      __break(1u);
    }

    else if (v36 == 6)
    {
      x = *MEMORY[0x1E695F050];
      y = *(MEMORY[0x1E695F050] + 8);
      width = *(MEMORY[0x1E695F050] + 16);
      height = *(MEMORY[0x1E695F050] + 24);
LABEL_35:
      outlined copy of DisplayList.Item.Value(v10, v11, v12, v8);
      outlined copy of DisplayList.Item.Value(v10, v11, v12, v8);

LABEL_36:
      v52 = v39;
      v93.origin.x = x;
      v93.origin.y = y;
      v93.size.width = width;
      v93.size.height = height;
      IsNull = CGRectIsNull(v93);
      if (IsNull)
      {
        x = 0.0;
        y = 0.0;
      }

      if (v52 == type metadata accessor for PaintShapeLayer())
      {
        if (IsNull)
        {
          v54 = 0.0;
        }

        else
        {
          v54 = height;
        }

        if (IsNull)
        {
          v55 = 0.0;
        }

        else
        {
          v55 = width;
        }

        v56 = 1.0 / v38;
        v57 = x;
        v58 = y;
        v94 = CGRectStandardize(*(&v54 - 3));
        v59 = 1.0 / v38 * 0.5;
        v60 = v59 + v94.origin.x;
        if (1.0 / v38 == 1.0)
        {
          x = floor(v60);
          y = floor(v59 + v94.origin.y);
        }

        else
        {
          x = v56 * floor(v60 / v56);
          y = v56 * floor((v59 + v94.origin.y) / v56);
        }
      }

      goto LABEL_48;
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v33 = a2[21];
  if (v33)
  {
    if (*(a1 + 102) == ((2 * ((33 * WORD1(v33)) ^ v33)) | 1))
    {
      return;
    }
  }

  else if (!*(a1 + 102))
  {
    return;
  }

  if (*(a1 + 64) - 15 >= 3)
  {
    v34 = *(a1 + 8);

    CoreViewSetShadow(v6 & 3, v34, 0, 0.0, 0.0, 0.0);
  }
}