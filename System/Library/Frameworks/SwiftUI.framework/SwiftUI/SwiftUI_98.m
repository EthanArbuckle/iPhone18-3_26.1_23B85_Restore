uint64_t initializeWithTake for PlatformItemList.Item(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v7 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v7;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 235) = *(a2 + 235);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  v9 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v9;
  v10 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v10;
  v11 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v11;
  v12 = *(a2 + 272);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = v12;
  v13 = *(a2 + 368);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = v13;
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = *(a2 + 400);
  v14 = *(a2 + 304);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = v14;
  v15 = *(a2 + 336);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = v15;
  v16 = *(a2 + 456);
  *(a1 + 440) = *(a2 + 440);
  *(a1 + 456) = v16;
  *(a1 + 472) = *(a2 + 472);
  v17 = *(a2 + 424);
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 424) = v17;
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 489) = *(a2 + 489);
  *(a1 + 512) = *(a2 + 512);
  *(a1 + 528) = *(a2 + 528);
  memcpy((a1 + 536), (a2 + 536), 0x130uLL);
  v18 = *(a2 + 856);
  *(a1 + 840) = *(a2 + 840);
  *(a1 + 856) = v18;
  *(a1 + 872) = *(a2 + 872);
  *(a1 + 888) = *(a2 + 888);
  *(a1 + 896) = *(a2 + 896);
  *(a1 + 904) = *(a2 + 904);
  *(a1 + 920) = *(a2 + 920);
  *(a1 + 936) = *(a2 + 936);
  *(a1 + 944) = *(a2 + 944);
  *(a1 + 952) = *(a2 + 952);
  *(a1 + 953) = *(a2 + 953);
  v19 = a3[28];
  v20 = (a1 + v19);
  v21 = (a2 + v19);
  v22 = type metadata accessor for CommandOperation();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v21, 1, v22))
  {
    _s7SwiftUI16CommandOperationVSgMaTm_0(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
    memcpy(v20, v21, *(*(v24 - 8) + 64));
  }

  else
  {
    *v20 = *v21;
    v25 = *(v22 + 20);
    v26 = &v20[v25];
    v27 = &v21[v25];
    v28 = *&v21[v25 + 16];
    *v26 = *&v21[v25];
    *(v26 + 1) = v28;
    v29 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v30 = type metadata accessor for UUID();
    (*(*(v30 - 8) + 32))(&v26[v29], &v27[v29], v30);
    *&v20[*(v22 + 24)] = *&v21[*(v22 + 24)];
    (*(v23 + 56))(v20, 0, 1, v22);
  }

  v31 = a3[30];
  *(a1 + a3[29]) = *(a2 + a3[29]);
  *(a1 + v31) = *(a2 + v31);
  v32 = a3[32];
  *(a1 + a3[31]) = *(a2 + a3[31]);
  *(a1 + v32) = *(a2 + v32);
  v33 = a3[34];
  *(a1 + a3[33]) = *(a2 + a3[33]);
  *(a1 + v33) = *(a2 + v33);
  return a1;
}

uint64_t type metadata completion function for PlatformItemListReader()
{
  result = type metadata accessor for _VariadicView.Tree();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for PlatformItemListReader(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 32);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (*(v5 + 80) & 0xF8 ^ 0x1F8u) & (v6 + 16);
  v8 = *a2;
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-17 - v6) | v6) - *(v5 + 64) - v7 >= 0xFFFFFFFFFFFFFFE7)
  {
    v11 = a2[1];
    *a1 = v8;
    a1[1] = v11;
    v12 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v13;
    v14 = *(v5 + 16);

    v14(v12 + 1, v13 + 1, v4);
  }

  else
  {
    *a1 = v8;
    a1 = (v8 + v7);
  }

  return a1;
}

uint64_t destroy for PlatformItemListReader(uint64_t a1, uint64_t a2)
{

  v4 = *(*(a2 + 32) - 8);
  v5 = *(v4 + 8);
  v6 = (*(v4 + 80) + ((a1 + (*(v4 + 80) | 7) + 16) & ~(*(v4 + 80) | 7)) + 16) & ~*(v4 + 80);

  return v5(v6);
}

void *initializeWithCopy for PlatformItemListReader(void *a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a3 + 32);
  v6 = *(*(v5 - 8) + 16);
  v7 = *(*(v5 - 8) + 80);
  v8 = (v7 | 7) + 16;
  v9 = ((a1 + v8) & ~(v7 | 7));
  v10 = ((a2 + v8) & ~(v7 | 7));
  *v9 = *v10;
  v11 = v9 + v7 + 16;
  v12 = v10 + v7 + 16;

  v6(v11 & ~v7, v12 & ~v7, v5);
  return a1;
}

void *assignWithCopy for PlatformItemListReader(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;

  v7 = *(*(a3 + 32) - 8);
  v8 = *(v7 + 24);
  v9 = *(v7 + 80);
  v10 = (v9 | 7) + 16;
  v11 = ((a1 + v10) & ~(v9 | 7));
  v12 = ((a2 + v10) & ~(v9 | 7));
  *v11 = *v12;
  v11[1] = v12[1];
  v8((v11 + v9 + 16) & ~v9, (v12 + v9 + 16) & ~v9);
  return a1;
}

_OWORD *initializeWithTake for PlatformItemListReader(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 32) - 8);
  v5 = *(v4 + 32);
  v6 = *(v4 + 80);
  v7 = (v6 | 7) + 16;
  v8 = ((a1 + v7) & ~(v6 | 7));
  v9 = ((a2 + v7) & ~(v6 | 7));
  *v8 = *v9;
  v5((v8 + v6 + 16) & ~v6, (v9 + v6 + 16) & ~v6);
  return a1;
}

_OWORD *assignWithTake for PlatformItemListReader(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(*(a3 + 32) - 8);
  v7 = *(v6 + 40);
  v8 = *(v6 + 80);
  v9 = (v8 | 7) + 16;
  v10 = ((a1 + v9) & ~(v8 | 7));
  v11 = ((a2 + v9) & ~(v8 | 7));
  *v10 = *v11;
  v10[1] = v11[1];
  v7((v10 + v8 + 16) & ~v8, (v11 + v8 + 16) & ~v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for PlatformItemListReader(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 32) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = v6 | 7;
  v9 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v10 = *(*(*(a3 + 32) - 8) + 64) - (((-17 - v6) | v6) + ((-17 - v6) | v8)) - 2;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v6 + ((a1 + v8 + 16) & ~v8) + 16) & ~v6);
      }

      v16 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v7 + (v10 | v15) + 1;
}

void storeEnumTagSinglePayload for PlatformItemListReader(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 32) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 32) - 8) + 64);
  v11 = v10 + ((v9 + 16) & ~(v9 | 7));
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v11 <= 3)
    {
      v17 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 < a2)
  {
    v15 = ~v8 + a2;
    if (v11 < 4)
    {
      v16 = (v15 >> (8 * v11)) + 1;
      if (v11)
      {
        v19 = v15 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v19;
            if (v14 > 1)
            {
LABEL_57:
              if (v14 == 2)
              {
                *&a1[v11] = v16;
              }

              else
              {
                *&a1[v11] = v16;
              }

              return;
            }
          }

          else
          {
            *a1 = v15;
            if (v14 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v14 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v14)
    {
      a1[v11] = v16;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v11] = 0;
LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!v14)
  {
    goto LABEL_30;
  }

  a1[v11] = 0;
  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = (&a1[(v9 | 7) + 16] & ~(v9 | 7));
    if (v7 >= a2)
    {
      v24 = *(v6 + 56);

      v24(&v20[v9 + 16] & ~v9);
    }

    else
    {
      if (v10 <= 3)
      {
        v21 = ~(-1 << (8 * v10));
      }

      else
      {
        v21 = -1;
      }

      if (v10)
      {
        v22 = v21 & (~v7 + a2);
        if (v10 <= 3)
        {
          v23 = v10;
        }

        else
        {
          v23 = 4;
        }

        bzero(v20, v10);
        if (v23 > 2)
        {
          if (v23 == 3)
          {
            *v20 = v22;
            v20[2] = BYTE2(v22);
          }

          else
          {
            *v20 = v22;
          }
        }

        else if (v23 == 1)
        {
          *v20 = v22;
        }

        else
        {
          *v20 = v22;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *a1 = a2 - 1;
  }
}

uint64_t protocol witness for Rule.value.getter in conformance PlatformItemListTextRepresentable.PlatformRepresentation@<X0>(uint64_t *a1@<X8>)
{
  result = PlatformItemListTextRepresentable.PlatformRepresentation.value.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance PlatformItemListImageRepresentable.PlatformRepresentation@<X0>(uint64_t *a1@<X8>)
{
  result = PlatformItemListImageRepresentable.PlatformRepresentation.value.getter();
  *a1 = result;
  return result;
}

uint64_t implicit closure #1 in static PlatformItemListViewThatFitsRepresentable.makeRepresentation(inputs:state:outputs:)()
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)();
  lazy protocol witness table accessor for type PlatformItemListViewThatFitsRepresentable.FittingChildrenPlatformItemList and conformance PlatformItemListViewThatFitsRepresentable.FittingChildrenPlatformItemList();

  v0 = Attribute.init<A>(body:value:flags:update:)();

  return v0;
}

uint64_t closure #1 in PlatformItemListViewThatFitsRepresentable.FittingChildrenPlatformItemList.value.getter(uint64_t *a1)
{
  v2 = type metadata accessor for PlatformItemList.Item();
  v3 = (v2 - 8);
  v33 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;

  v36 = MEMORY[0x1E69E7CC0];
  v34 = &v36;
  SizeFittingState.applyChildren(selectLast:to:)(0);
  _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(&v37);
  memset(v35, 0, 304);
  v8[32] = 0;
  *(v8 + 3) = 0;
  *(v8 + 8) = 0u;
  *(v8 + 5) = -1;
  v8[56] = 1;
  v9 = v46;
  *(v8 + 12) = v45;
  *(v8 + 13) = v9;
  *(v8 + 14) = v47[0];
  *(v8 + 235) = *(v47 + 11);
  v10 = v42;
  *(v8 + 8) = v41;
  *(v8 + 9) = v10;
  v11 = v44;
  *(v8 + 10) = v43;
  *(v8 + 11) = v11;
  v12 = v38;
  *(v8 + 4) = v37;
  *(v8 + 5) = v12;
  v13 = v40;
  *(v8 + 6) = v39;
  *(v8 + 7) = v13;
  *(v8 + 19) = 0u;
  *(v8 + 20) = 0u;
  *(v8 + 17) = 0u;
  *(v8 + 18) = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 42) = 0x3FFFFFFFCLL;
  *(v8 + 344) = 0u;
  *(v8 + 360) = 0u;
  *(v8 + 376) = 0u;
  *(v8 + 392) = 0u;
  *(v8 + 51) = 0;
  *(v8 + 52) = 1;
  *(v8 + 424) = 0u;
  *(v8 + 440) = 0u;
  *(v8 + 456) = 0u;
  v8[472] = 0;
  *(v8 + 60) = 0;
  *(v8 + 488) = 0u;
  v8[504] = 0;
  *(v8 + 32) = 0u;
  v8[528] = 4;
  *(v8 + 536) = 0u;
  *(v8 + 552) = 0u;
  *(v8 + 568) = 0u;
  *(v8 + 584) = 0u;
  *(v8 + 600) = 0u;
  *(v8 + 616) = 0u;
  *(v8 + 632) = 0u;
  *(v8 + 648) = 0u;
  *(v8 + 664) = 0u;
  *(v8 + 680) = 0u;
  *(v8 + 696) = 0u;
  *(v8 + 712) = 0u;
  *(v8 + 728) = 0u;
  *(v8 + 744) = 0u;
  *(v8 + 760) = 0u;
  *(v8 + 776) = 0u;
  *(v8 + 792) = 0u;
  *(v8 + 808) = 0u;
  *(v8 + 824) = 0u;
  *(v8 + 840) = 0u;
  *(v8 + 107) = 0;
  *(v8 + 108) = 1;
  *(v8 + 118) = 0;
  *(v8 + 872) = 0u;
  *(v8 + 888) = 0u;
  *(v8 + 904) = 0u;
  *(v8 + 920) = 0u;
  *(v8 + 476) = 1283;
  v8[954] = 3;
  v14 = v3[30];
  v15 = type metadata accessor for CommandOperation();
  (*(*(v15 - 8) + 56))(&v8[v14], 1, 1, v15);
  v8[v3[31]] = 0;
  v8[v3[32]] = 0;
  v8[v3[33]] = 2;
  v8[v3[34]] = 0;
  v8[v3[35]] = 0;
  v16 = v3[36];
  *v8 = 0;
  v17 = *(v8 + 13);
  v48[8] = *(v8 + 12);
  v48[9] = v17;
  v49[0] = *(v8 + 14);
  *(v49 + 11) = *(v8 + 235);
  v18 = *(v8 + 9);
  v48[4] = *(v8 + 8);
  v48[5] = v18;
  v19 = *(v8 + 11);
  v48[6] = *(v8 + 10);
  v48[7] = v19;
  v20 = *(v8 + 5);
  v48[0] = *(v8 + 4);
  v48[1] = v20;
  v21 = *(v8 + 7);
  v48[2] = *(v8 + 6);
  v48[3] = v21;
  _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(v48, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
  v22 = v46;
  *(v8 + 12) = v45;
  *(v8 + 13) = v22;
  *(v8 + 14) = v47[0];
  *(v8 + 235) = *(v47 + 11);
  v23 = v42;
  *(v8 + 8) = v41;
  *(v8 + 9) = v23;
  v24 = v44;
  *(v8 + 10) = v43;
  *(v8 + 11) = v24;
  v25 = v38;
  *(v8 + 4) = v37;
  *(v8 + 5) = v25;
  v26 = v40;
  *(v8 + 6) = v39;
  *(v8 + 7) = v26;
  v27 = *(v8 + 456);
  v50[2] = *(v8 + 440);
  v50[3] = v27;
  v51 = v8[472];
  v28 = *(v8 + 424);
  v50[0] = *(v8 + 408);
  v50[1] = v28;
  _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(v50, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
  *(v8 + 408) = xmmword_18CD633F0;
  *(v8 + 424) = 0u;
  *(v8 + 440) = 0u;
  *(v8 + 456) = 0u;
  v8[472] = 0;
  outlined assign with take of PlatformItemList.Item.Accessibility?(v35, (v8 + 536), &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?, &type metadata for PlatformItemList.Item.Accessibility);
  *&v8[v16] = 0;
  *(v8 + 6) = 0;
  *(v8 + 117) = v36;
  outlined init with copy of PlatformItemList.Item(v8, v5);
  _s7SwiftUI16CommandOperationVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItemList.Item>, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6F90]);
  v29 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_18CD63400;
  outlined init with take of PlatformItemList.Item(v5, v30 + v29);
  *a1 = v30;
  return _s7SwiftUI16CommandOperationVWOhTm_0(v8, type metadata accessor for PlatformItemList.Item);
}

uint64_t closure #1 in closure #1 in PlatformItemListViewThatFitsRepresentable.FittingChildrenPlatformItemList.value.getter(uint64_t *a1, uint64_t a2, void **a3)
{
  v5 = type metadata accessor for PlatformItemList.Item();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 2);
  v16 = *a1;
  v17 = v9;
  if ((PreferencesOutputs.subscript.getter() & 0x100000000) == 0)
  {
    AGGraphGetValue();

    PlatformItemList.mergedContentItem.getter(v10, v8);

    v11 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
      *a3 = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v13 > 1, v14 + 1, 1, v11);
      *a3 = v11;
    }

    v11[2] = v14 + 1;
    outlined init with take of PlatformItemList.Item(v8, v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14);
  }

  return 0;
}

uint64_t protocol witness for Rule.value.getter in conformance PlatformItemListViewThatFitsRepresentable.FittingChildrenPlatformItemList@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for closure #1 in PlatformItemListViewThatFitsRepresentable.FittingChildrenPlatformItemList.value.getter;
  *(v4 + 24) = v3;
  *a1 = thunk for @escaping @callee_guaranteed (@inout PlatformItemList) -> ()partial apply;
  a1[1] = v4;
}

uint64_t protocol witness for static PlatformViewThatFitsRepresentable.shouldMakeRepresentation(inputs:) in conformance PlatformItemListViewThatFitsRepresentable(uint64_t a1)
{
  v3 = *(a1 + 48);
  v1 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  result = 0;
  if (v1)
  {
    lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
    PropertyList.subscript.getter();
    return (v3 >> 6) & 1;
  }

  return result;
}

uint64_t protocol witness for static PlatformViewThatFitsRepresentable.makeRepresentation(inputs:state:outputs:) in conformance PlatformItemListViewThatFitsRepresentable()
{

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
}

_BYTE *closure #1 in PlatformItemListDynamicHiddenRepresentable.PlatformItemListTransform.value.getter(void *a1)
{
  result = AGGraphGetValue();
  if (*result == 1)
  {
    result = AGGraphGetValue();
    if ((result[8] & 2) == 0)
    {

      *a1 = MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance PlatformItemListNamedImageRepresentable.NamedResolvedRule@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, void *a3@<X8>)
{
  v7 = *v3;
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = v8;
  *a3 = a2;
  a3[1] = result;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed PlatformItemList) -> (@out B)(uint64_t a1)
{
  v2 = *(v1 + 64);
  v4 = a1;
  return v2(&v4);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned ()?) -> (@unowned Bool)@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t assignWithTake for OnPlatformContainerSelectionModifier(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (!*a1)
  {
    if (v4)
    {
      v6 = a2[1];
      *a1 = v4;
      *(a1 + 8) = v6;
      goto LABEL_8;
    }

LABEL_7:
    *a1 = *a2;
    goto LABEL_8;
  }

  if (!v4)
  {

    goto LABEL_7;
  }

  v5 = a2[1];
  *a1 = v4;
  *(a1 + 8) = v5;

LABEL_8:
  *(a1 + 16) = *(a2 + 16);
  v7 = *(a2 + 32);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  *(a1 + 24) = a2[3];
  *(a1 + 32) = v7;
  outlined consume of Environment<Selector?>.Content(v8, v9);
  v10 = a2[7];
  v11 = *(a2 + 64);
  v12 = *(a2 + 65);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v16 = *(a1 + 65);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 56) = v10;
  v17 = *(a1 + 64);
  *(a1 + 64) = v11;
  *(a1 + 65) = v12;
  outlined consume of Environment<KeyboardShortcut?>.Content(v13, v14, v15, v17, v16);
  v18 = *(a2 + 80);
  v19 = *(a1 + 72);
  v20 = *(a1 + 80);
  *(a1 + 72) = a2[9];
  *(a1 + 80) = v18;
  outlined consume of Environment<Selector?>.Content(v19, v20);
  return a1;
}

uint64_t getEnumTagSinglePayload for OnPlatformContainerSelectionModifier(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for OnPlatformContainerSelectionModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t destroy for OnPlatformContainerSecondaryNavigationModifier(uint64_t a1)
{
  if (*(a1 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  if (*(a1 + 40))
  {
  }

  v2 = *(a1 + 56);
  v3 = *(a1 + 64);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

uint64_t initializeWithCopy for OnPlatformContainerSecondaryNavigationModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    (**(v4 - 8))(a1, a2);
  }

  else
  {
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    *(a1 + 32) = *(a2 + 32);
  }

  v7 = *(a2 + 40);
  if (v7)
  {
    v8 = *(a2 + 48);
    *(a1 + 40) = v7;
    *(a1 + 48) = v8;
  }

  else
  {
    *(a1 + 40) = *(a2 + 40);
  }

  v9 = *(a2 + 56);
  v10 = *(a2 + 64);
  outlined copy of Environment<Selector?>.Content(v9, v10);
  *(a1 + 56) = v9;
  *(a1 + 64) = v10;
  return a1;
}

uint64_t assignWithCopy for OnPlatformContainerSecondaryNavigationModifier(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 3);
  if (*(a1 + 24))
  {
    if (v4)
    {
      __swift_assign_boxed_opaque_existential_1(a1, a2);
    }

    else
    {
      outlined destroy of AnyNavigationLinkPresentedValue(a1);
      v5 = *(a2 + 4);
      v6 = a2[1];
      *a1 = *a2;
      *(a1 + 16) = v6;
      *(a1 + 32) = v5;
    }
  }

  else if (v4)
  {
    *(a1 + 24) = v4;
    *(a1 + 32) = *(a2 + 4);
    (**(v4 - 8))(a1, a2);
  }

  else
  {
    v7 = *a2;
    v8 = a2[1];
    *(a1 + 32) = *(a2 + 4);
    *a1 = v7;
    *(a1 + 16) = v8;
  }

  v9 = *(a2 + 5);
  if (!*(a1 + 40))
  {
    if (v9)
    {
      v11 = *(a2 + 6);
      *(a1 + 40) = v9;
      *(a1 + 48) = v11;

      goto LABEL_15;
    }

LABEL_14:
    *(a1 + 40) = *(a2 + 40);
    goto LABEL_15;
  }

  if (!v9)
  {

    goto LABEL_14;
  }

  v10 = *(a2 + 6);
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;

LABEL_15:
  v12 = *(a2 + 7);
  v13 = *(a2 + 64);
  outlined copy of Environment<Selector?>.Content(v12, v13);
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  *(a1 + 56) = v12;
  *(a1 + 64) = v13;
  outlined consume of Environment<Selector?>.Content(v14, v15);
  return a1;
}

uint64_t assignWithTake for OnPlatformContainerSecondaryNavigationModifier(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    if (*(a2 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }

    else
    {
      outlined destroy of AnyNavigationLinkPresentedValue(a1);
    }
  }

  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a2 + 40);
  if (!*(a1 + 40))
  {
    if (v5)
    {
      v7 = *(a2 + 48);
      *(a1 + 40) = v5;
      *(a1 + 48) = v7;
      goto LABEL_12;
    }

LABEL_11:
    *(a1 + 40) = *(a2 + 40);
    goto LABEL_12;
  }

  if (!v5)
  {

    goto LABEL_11;
  }

  v6 = *(a2 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;

LABEL_12:
  v8 = *(a2 + 64);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v8;
  outlined consume of Environment<Selector?>.Content(v9, v10);
  return a1;
}

uint64_t getEnumTagSinglePayload for OnPlatformContainerSecondaryNavigationModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for OnPlatformContainerSecondaryNavigationModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformItemList.Item.SelectionBehavior.VisualStyle and conformance PlatformItemList.Item.SelectionBehavior.VisualStyle()
{
  result = lazy protocol witness table cache variable for type PlatformItemList.Item.SelectionBehavior.VisualStyle and conformance PlatformItemList.Item.SelectionBehavior.VisualStyle;
  if (!lazy protocol witness table cache variable for type PlatformItemList.Item.SelectionBehavior.VisualStyle and conformance PlatformItemList.Item.SelectionBehavior.VisualStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemList.Item.SelectionBehavior.VisualStyle and conformance PlatformItemList.Item.SelectionBehavior.VisualStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformItemListViewThatFitsRepresentable.FittingChildrenPlatformItemList and conformance PlatformItemListViewThatFitsRepresentable.FittingChildrenPlatformItemList()
{
  result = lazy protocol witness table cache variable for type PlatformItemListViewThatFitsRepresentable.FittingChildrenPlatformItemList and conformance PlatformItemListViewThatFitsRepresentable.FittingChildrenPlatformItemList;
  if (!lazy protocol witness table cache variable for type PlatformItemListViewThatFitsRepresentable.FittingChildrenPlatformItemList and conformance PlatformItemListViewThatFitsRepresentable.FittingChildrenPlatformItemList)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemListViewThatFitsRepresentable.FittingChildrenPlatformItemList and conformance PlatformItemListViewThatFitsRepresentable.FittingChildrenPlatformItemList);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformItemListDynamicHiddenRepresentable.PlatformItemListTransform and conformance PlatformItemListDynamicHiddenRepresentable.PlatformItemListTransform()
{
  result = lazy protocol witness table cache variable for type PlatformItemListDynamicHiddenRepresentable.PlatformItemListTransform and conformance PlatformItemListDynamicHiddenRepresentable.PlatformItemListTransform;
  if (!lazy protocol witness table cache variable for type PlatformItemListDynamicHiddenRepresentable.PlatformItemListTransform and conformance PlatformItemListDynamicHiddenRepresentable.PlatformItemListTransform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemListDynamicHiddenRepresentable.PlatformItemListTransform and conformance PlatformItemListDynamicHiddenRepresentable.PlatformItemListTransform);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<OnPlatformContainerSecondaryNavigationModifier>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<OnPlatformContainerSecondaryNavigationModifier>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<OnPlatformContainerSecondaryNavigationModifier>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<OnPlatformContainerSecondaryNavigationModifier>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>();
    lazy protocol witness table accessor for type _ViewModifier_Content<PlatformItemListContentModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<OnPlatformContainerSecondaryNavigationModifier> and conformance _ViewModifier_Content<A>, &lazy cache variable for type metadata for _ViewModifier_Content<OnPlatformContainerSecondaryNavigationModifier>, lazy protocol witness table accessor for type OnPlatformContainerSecondaryNavigationModifier and conformance OnPlatformContainerSecondaryNavigationModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<OnPlatformContainerSecondaryNavigationModifier>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<OnPlatformContainerSecondaryNavigationModifier>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<OnPlatformContainerSecondaryNavigationModifier>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>)
  {
    type metadata accessor for _ViewModifier_Content<PlatformItemListContentModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<OnPlatformContainerSecondaryNavigationModifier>, lazy protocol witness table accessor for type OnPlatformContainerSecondaryNavigationModifier and conformance OnPlatformContainerSecondaryNavigationModifier);
    type metadata accessor for PlatformItemListTransformModifier<SelectionPlatformItemListFlags>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<OnPlatformContainerSecondaryNavigationModifier>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type OnPlatformContainerSecondaryNavigationModifier and conformance OnPlatformContainerSecondaryNavigationModifier()
{
  result = lazy protocol witness table cache variable for type OnPlatformContainerSecondaryNavigationModifier and conformance OnPlatformContainerSecondaryNavigationModifier;
  if (!lazy protocol witness table cache variable for type OnPlatformContainerSecondaryNavigationModifier and conformance OnPlatformContainerSecondaryNavigationModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OnPlatformContainerSecondaryNavigationModifier and conformance OnPlatformContainerSecondaryNavigationModifier);
  }

  return result;
}

uint64_t specialized Sequence.flatMap<A>(_:)(uint64_t a1)
{
  v23 = *(a1 + 16);
  if (!v23)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v22 = a1 + 32;
  while (1)
  {
    v4 = *(v22 + 8 * v1);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      v6 = __CocoaSet.count.getter();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v21 = __CocoaSet.count.getter();
      v9 = v21 + v6;
      if (__OFADD__(v21, v6))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v7)
      {
        v10 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v9 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      __CocoaSet.count.getter();
      goto LABEL_15;
    }

    if (v7)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v2 = result;
    v10 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    if (v5)
    {
      break;
    }

    v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v12 >> 1) - v11) < v6)
    {
      goto LABEL_36;
    }

    v27 = v6;
    v24 = v2;
    v25 = v1;
    if (v5)
    {
      if (v13 < 1)
      {
        goto LABEL_38;
      }

      type metadata accessor for [UIWindow]();
      lazy protocol witness table accessor for type [UIWindow] and conformance [A](&lazy protocol witness table cache variable for type [UIWindow] and conformance [A], type metadata accessor for [UIWindow]);
      for (i = 0; i != v13; ++i)
      {
        v15 = specialized protocol witness for Collection.subscript.read in conformance [A](v26, i, v4);
        v17 = *v16;
        (v15)(v26, 0);
        *(v10 + 8 * v11 + 32 + 8 * i) = v17;
      }
    }

    else
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIWindow);
      swift_arrayInitWithCopy();
    }

    v2 = v24;
    v1 = v25;
    if (v27 >= 1)
    {
      v18 = *(v10 + 16);
      v19 = __OFADD__(v18, v27);
      v20 = v18 + v27;
      if (v19)
      {
        goto LABEL_37;
      }

      *(v10 + 16) = v20;
    }

LABEL_4:
    if (++v1 == v23)
    {
      return v2;
    }
  }

  result = __CocoaSet.count.getter();
  v13 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v6 <= 0)
  {
    goto LABEL_4;
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

void *closure #1 in static OpenURLAction._defaultAction(env:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  OpenURLAction.SystemHandlerInput.url.getter();
  v10 = type metadata accessor for OpenURLAction.SystemHandlerInput();
  v11 = *(a1 + *(v10 + 20));
  v12 = (a1 + *(v10 + 24));
  v14 = *v12;
  v13 = v12[1];
  v58 = v14;
  v59 = v13;
  if (v11 != 1)
  {
    goto LABEL_33;
  }

  v54 = a3;
  v55 = v9;
  v57 = v7;
  v15 = [objc_opt_self() sharedApplication];
  v16 = [v15 connectedScenes];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIScene);
  lazy protocol witness table accessor for type UIScene and conformance NSObject();
  v17 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Sequence.compactMap<A>(_:)(v17);
  v19 = v18;

  if (!(v19 >> 62))
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v56 = v6;
    if (v20)
    {
      goto LABEL_4;
    }

LABEL_14:

    v23 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v30 = specialized Sequence.flatMap<A>(_:)(v23);

    v7 = v57;
    if (v30 >> 62)
    {
LABEL_31:
      v31 = __CocoaSet.count.getter();
      if (v31)
      {
LABEL_17:
        v32 = 0;
        while (1)
        {
          if ((v30 & 0xC000000000000001) != 0)
          {
            v33 = MEMORY[0x18D00E9C0](v32, v30);
          }

          else
          {
            if (v32 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_30;
            }

            v33 = *(v30 + 8 * v32 + 32);
          }

          isa = v33;
          v35 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            __break(1u);
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

          if (([(objc_class *)v33 isKeyWindow]& 1) != 0)
          {
            break;
          }

          ++v32;
          if (v35 == v31)
          {
            goto LABEL_32;
          }
        }

        v9 = v55;
        URL._bridgeToObjectiveC()(v36);
        v38 = v37;
        v39 = _makeSafariViewController(v37);

        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
        swift_dynamicCast();
        v40 = v60;
        v41 = [(objc_class *)isa rootViewController];
        if (v41)
        {
          v42 = v41;
          [v41 presentViewController:v40 animated:1 completion:0];
        }

        v6 = v56;
        goto LABEL_37;
      }
    }

    else
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v31)
      {
        goto LABEL_17;
      }
    }

LABEL_32:

    a3 = v54;
    v9 = v55;
    v6 = v56;
LABEL_33:
    aBlock = a2;
    v62 = a3;
    v43 = EnvironmentValues.sceneSession.getter();
    if (v43 && (v44 = v43, v40 = [v43 scene], v44, v40))
    {
      URL._bridgeToObjectiveC()(v45);
      isa = v46;
      v65 = v58;
      v66 = v59;
      aBlock = MEMORY[0x1E69E9820];
      v62 = 1107296256;
      v63 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v64 = &block_descriptor_9_0;
      v47 = _Block_copy(&aBlock);

      [v40 openURL:isa options:0 completionHandler:v47];
      _Block_release(v47);
    }

    else
    {
      v48 = [objc_opt_self() sharedApplication];
      URL._bridgeToObjectiveC()(v49);
      v40 = v50;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo38UIApplicationOpenExternalURLOptionsKeya_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      type metadata accessor for UIApplicationOpenExternalURLOptionsKey(0);
      lazy protocol witness table accessor for type [UIWindow] and conformance [A](&lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey, type metadata accessor for UIApplicationOpenExternalURLOptionsKey);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v65 = v58;
      v66 = v59;
      aBlock = MEMORY[0x1E69E9820];
      v62 = 1107296256;
      v63 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v64 = &block_descriptor_6;
      v51 = _Block_copy(&aBlock);

      [v48 openURL:v40 options:isa completionHandler:v51];
      _Block_release(v51);
    }

LABEL_37:

    return (*(v7 + 8))(v9, v6);
  }

  v20 = __CocoaSet.count.getter();
  v56 = v6;
  if (!v20)
  {
    goto LABEL_14;
  }

LABEL_4:
  aBlock = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20 & ~(v20 >> 63), 0);
  if ((v20 & 0x8000000000000000) == 0)
  {
    v52 = 0;
    v53 = a2;
    v22 = 0;
    v23 = aBlock;
    do
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x18D00E9C0](v22, v19);
      }

      else
      {
        v24 = *(v19 + 8 * v22 + 32);
      }

      v25 = v24;
      v26 = [v25 windows];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIWindow);
      v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock = v23;
      v29 = *(v23 + 16);
      v28 = *(v23 + 24);
      if (v29 >= v28 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
        v23 = aBlock;
      }

      ++v22;
      *(v23 + 16) = v29 + 1;
      *(v23 + 8 * v29 + 32) = v27;
    }

    while (v20 != v22);

    a2 = v53;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

void closure #1 in static OpenURLAction._defaultSensitiveAction.getter(uint64_t a1)
{
  v2 = type metadata accessor for OpenURLAction.SystemHandlerInput();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = [objc_allocWithZone(MEMORY[0x1E69636B8]) init];
  [v25 setSensitive_];
  v9 = [objc_opt_self() sharedApplication];
  v10 = [v9 connectedScenes];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIScene);
  lazy protocol witness table accessor for type UIScene and conformance NSObject();
  v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = specialized Collection.first.getter(v11);

  if (v12)
  {
    v13 = [v12 _currentOpenApplicationEndpoint];
  }

  else
  {
    v13 = 0;
  }

  [v25 setTargetConnectionEndpoint_];

  v14 = [objc_opt_self() defaultWorkspace];
  if (v14)
  {
    v15 = v14;
    OpenURLAction.SystemHandlerInput.url.getter();
    URL._bridgeToObjectiveC()(v16);
    v18 = v17;
    (*(v6 + 8))(v8, v5);
    outlined init with copy of OpenURLAction.SystemHandlerInput(a1, &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v20 = swift_allocObject();
    outlined init with take of OpenURLAction.SystemHandlerInput(&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
    aBlock[4] = partial apply for closure #1 in closure #1 in static OpenURLAction._defaultSensitiveAction.getter;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [String : Any]?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_29;
    v21 = _Block_copy(aBlock);
    v22 = v25;

    [v15 openURL:v18 configuration:v22 completionHandler:v21];

    _Block_release(v21);
  }

  else
  {
    v23 = v25;
  }
}

uint64_t closure #1 in closure #1 in static OpenURLAction._defaultSensitiveAction.getter(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](a1);
    v5 = a2;
    specialized static Log.internalWarning(_:)(partial apply for implicit closure #1 in closure #1 in closure #1 in static OpenURLAction._defaultSensitiveAction.getter);
  }

  v6 = type metadata accessor for OpenURLAction.SystemHandlerInput();
  return (*(a3 + *(v6 + 24)))(a2 == 0);
}

uint64_t outlined init with copy of OpenURLAction.SystemHandlerInput(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenURLAction.SystemHandlerInput();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of OpenURLAction.SystemHandlerInput(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenURLAction.SystemHandlerInput();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in static OpenURLAction._defaultSensitiveAction.getter(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for OpenURLAction.SystemHandlerInput() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in closure #1 in static OpenURLAction._defaultSensitiveAction.getter(a1, a2, v6);
}

uint64_t implicit closure #1 in closure #1 in closure #1 in static OpenURLAction._defaultSensitiveAction.getter(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v11 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);
  MEMORY[0x18D00C9B0](0xD00000000000001DLL, 0x800000018CD49250);
  OpenURLAction.SystemHandlerInput.url.getter();
  lazy protocol witness table accessor for type [UIWindow] and conformance [A](&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v7);

  (*(v4 + 8))(v6, v3);
  MEMORY[0x18D00C9B0](0x3A726F727245202ELL, 0xE900000000000020);
  v9[1] = a2;
  type metadata accessor for Error();
  _print_unlocked<A, B>(_:_:)();
  return v10;
}

uint64_t lazy protocol witness table accessor for type [UIWindow] and conformance [A](unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for [UIWindow]()
{
  if (!lazy cache variable for type metadata for [UIWindow])
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIWindow);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [UIWindow]);
    }
  }
}

uint64_t FocusStateBindingResponder.defaultFocusItem(in:)@<X0>(_OWORD *a1@<X8>)
{
  IsValid = AGSubgraphIsValid();
  if (IsValid)
  {
    IsValid = static Update.ensure<A>(_:)();
  }

  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = xmmword_18CD6A6D0;
  MEMORY[0x1EEE9AC00](IsValid);
  MEMORY[0x1EEE9AC00](v3);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v5 = result;

    closure #2 in FocusStateBindingResponder.defaultFocusItem(in:)(v6, v5, a1, &v13);

    if (!v13)
    {
      v7 = MultiViewResponder.children.getter();
      v8 = v7;
      v9 = v7 & 0xFFFFFFFFFFFFFF8;
      if (v7 >> 62)
      {
LABEL_20:
        v10 = __CocoaSet.count.getter();
      }

      else
      {
        v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      for (i = 0; v10 != i; ++i)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          MEMORY[0x18D00E9C0](i, v8);
          if (__OFADD__(i, 1))
          {
LABEL_16:
            __break(1u);
          }
        }

        else
        {
          if (i >= *(v9 + 16))
          {
            __break(1u);
            goto LABEL_20;
          }

          if (__OFADD__(i, 1))
          {
            goto LABEL_16;
          }
        }

        dispatch thunk of ResponderNode.visit(applying:)();

        if (v12 == 2)
        {
        }
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void FocusState.Binding.wrappedValue.getter()
{
  type metadata accessor for Binding();

  JUMPOUT(0x18D00ACC0);
}

void (*FocusState.Binding.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v8 = *(a2 + 16);
  v6[1] = v8;
  v9 = *(v8 - 8);
  v6[2] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[4] = v11;
  v12 = type metadata accessor for Binding();
  MEMORY[0x18D00ACC0](v12);
  return FocusState.Binding.wrappedValue.modify;
}

void FocusState.Binding.wrappedValue.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    type metadata accessor for Binding();
    specialized Binding.wrappedValue.setter();
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    type metadata accessor for Binding();
    specialized Binding.wrappedValue.setter();
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void (*FocusState.wrappedValue.modify(void *a1, uint64_t a2))(void **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  FocusState.getValue(forReading:)(1, a2, v11);
  return SceneStorage.wrappedValue.modify;
}

uint64_t specialized implicit closure #1 in _GraphInputs.focusBridge.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for FocusStateBindingModifier<Bool>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FocusBridgeKey>, &type metadata for FocusBridgeKey, &protocol witness table for FocusBridgeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<FocusBridgeKey> and conformance EnvironmentPropertyKey<A>();

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for FocusStateBindingModifier<Bool>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FocusBridgeKey>, &type metadata for FocusBridgeKey, &protocol witness table for FocusBridgeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<FocusBridgeKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }

  Strong = swift_weakLoadStrong();
  outlined destroy of WeakBox<FocusBridge>(v5);

  *a2 = Strong;
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for FocusState(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  if (v7 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-9 - (((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + v7)) | v7) - v6 >= 0xFFFFFFFFFFFFFFE7)
  {
    v11 = *(v5 + 16);
    v11(a1, a2, v4);
    v13 = ((v3 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    v14 = a2 + v6 + 7;
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8) + 8;
    *v13 = *(v14 & 0xFFFFFFFFFFFFFFF8);

    v11(v13 + 1, v15, v4);
  }

  else
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v7 & 0xF8 ^ 0x1F8) & (v7 + 16)));
  }

  return v3;
}

unint64_t initializeWithTake for FocusState(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 32);
  v7(a1, a2, v5);
  v8 = *(v6 + 64) + 7;
  v9 = ((v8 + a1) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v7((v9 + *(v6 + 80) + 8) & ~*(v6 + 80), (v10 + *(v6 + 80) + 8) & ~*(v6 + 80), v5);
  return a1;
}

unint64_t assignWithTake for FocusState(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 40);
  v7(a1, a2, v5);
  v8 = *(v6 + 64) + 7;
  v9 = ((v8 + a1) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;

  v7((v9 + *(v6 + 80) + 8) & ~*(v6 + 80), (v10 + *(v6 + 80) + 8) & ~*(v6 + 80), v5);
  return a1;
}

uint64_t getEnumTagSinglePayload for FocusState(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + *(v4 + 80) + 8) & ~*(v4 + 80)) + v6;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 >= 0x7FFFFFFE)
      {
        return (*(v4 + 48))();
      }

      v15 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      if ((v15 + 1) >= 2)
      {
        return v15;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

char *storeEnumTagSinglePayload for FocusState(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + *(v5 + 80) + 8) & ~*(v5 + 80)) + v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v16 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v16))
      {
        v12 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v12 = v17;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v15 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v18 = v13 & ~(-1 << (8 * v9));
        v19 = result;
        bzero(result, v9);
        result = v19;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v19 = v18;
            if (v12 > 1)
            {
LABEL_46:
              if (v12 == 2)
              {
                *&result[v9] = v15;
              }

              else
              {
                *&result[v9] = v15;
              }

              return result;
            }
          }

          else
          {
            *v19 = v13;
            if (v12 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v19 = v18;
        v19[2] = BYTE2(v18);
      }

      if (v12 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v14 = result;
      bzero(result, v9);
      result = v14;
      *v14 = v13;
      v15 = 1;
      if (v12 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v12)
    {
      result[v9] = v15;
    }

    return result;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v9] = 0;
  }

  else if (v12)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 < 0x7FFFFFFE)
  {
    v21 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v21 = 0;
      *v21 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *v21 = a2;
    }
  }

  else
  {
    v20 = *(v5 + 56);

    return v20();
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for FocusState.Binding(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 80) & 0x100000;
  v8 = ((-17 - v6) | v6) - *(v5 + 64);
  v9 = *a2;
  *a1 = *a2;
  if (v6 <= 7 && v7 == 0 && v8 >= 0xFFFFFFFFFFFFFFE7)
  {
    v12 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v13;
    v14 = *(v5 + 16);

    v14(v12 + 1, v13 + 1, v4);
  }

  else
  {
    a1 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  return a1;
}

void *assignWithCopy for FocusState.Binding(void *a1, void *a2, uint64_t a3)
{
  v5 = a2 + 15;
  *a1 = *a2;

  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *(v5 & 0xFFFFFFFFFFFFFFF8);

  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 24))((v6 + *(v7 + 80) + 8) & ~*(v7 + 80), (*(v7 + 80) + 8 + (v5 & 0xFFFFFFFFFFFFFFF8)) & ~*(v7 + 80));
  return a1;
}

void *initializeWithTake for FocusState.Binding(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 32))((v4 + *(v6 + 80) + 8) & ~*(v6 + 80), (v5 + *(v6 + 80) + 8) & ~*(v6 + 80));
  return a1;
}

void *assignWithTake for FocusState.Binding(void *a1, void *a2, uint64_t a3)
{
  v5 = a2 + 15;
  *a1 = *a2;

  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v5 &= 0xFFFFFFFFFFFFFFF8;
  *v6 = *v5;

  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 40))((v6 + *(v7 + 80) + 8) & ~*(v7 + 80), (*(v7 + 80) + 8 + v5) & ~*(v7 + 80));
  return a1;
}

uint64_t assignWithCopy for FocusStateBindingModifier.ListItemFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  return a1;
}

uint64_t assignWithTake for FocusStateBindingModifier.ListItemFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  return a1;
}

uint64_t getEnumTagSinglePayload for FocusStateBindingModifier.ListItemFilter(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 29))
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

uint64_t storeEnumTagSinglePayload for FocusStateBindingModifier.ListItemFilter(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 29) = 1;
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

    *(result + 29) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined destroy of FocusItem??(uint64_t a1)
{
  type metadata accessor for FocusItem??();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for FocusItem??()
{
  if (!lazy cache variable for type metadata for FocusItem??)
  {
    type metadata accessor for FocusItem?(255, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FocusItem??);
    }
  }
}

uint64_t specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(unsigned __int16 a1)
{
  if ((a1 >> 14) > 1u)
  {
    if (a1 >> 14 != 2)
    {
      v3 = 0xE700000000000000;
      v1 = 0x646E756F626E75;
      goto LABEL_14;
    }
  }

  else if (!(a1 >> 14))
  {
    v1 = String.init<A>(describing:)();
    v3 = v2;
    goto LABEL_14;
  }

  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v1 = 0x6F43656C62756F64;
    }

    else
    {
      v1 = 7105633;
    }

    if (v4 == 1)
    {
      v3 = 0xEC0000006E6D756CLL;
    }

    else
    {
      v3 = 0xE300000000000000;
    }
  }

  else
  {
    v1 = 0x6E4F6C6961746564;
    v3 = 0xEA0000000000796CLL;
  }

LABEL_14:
  MEMORY[0x18D00C9B0](v1, v3);
}

uint64_t specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(uint64_t a1)
{
  if (static DropSession.ID.invalid == a1)
  {
    v1 = 0x800000018CD49400;
  }

  else
  {
    _StringGuts.grow(_:)(25);

    v2 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v2);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v1 = 0x800000018CD493E0;
  }

  MEMORY[0x18D00C9B0](0xD000000000000016, v1);
}

uint64_t DropSession.LocalSession.draggedItemIDs<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*v3)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v35[0] = a2;
  v35[1] = a2;
  v35[2] = a3;
  v35[3] = a3;
  v9 = type metadata accessor for DraggingItem.Identifier();
  v10 = _arrayConditionalCast<A, B>(_:)();
  if (!v10)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v11 = v10;
  static Log.dragAndDrop.getter();
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    v14 = outlined destroy of Logger?(v8);
  }

  else
  {

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v32 = v18;
      v34 = swift_slowAlloc();
      v35[0] = v34;
      *v18 = 136315138;
      v19 = MEMORY[0x18D00CC60](v11, v9);
      v33 = v16;
      v20 = v19;
      v22 = v21;

      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v35);

      v24 = v32;
      v25 = v33;
      *(v32 + 1) = v23;
      v26 = v24;
      _os_log_impl(&dword_18BD4A000, v25, v17, "DropSession has successfully obtained local objects: %s", v24, 0xCu);
      v27 = v34;
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x18D0110E0](v27, -1, -1);
      MEMORY[0x18D0110E0](v26, -1, -1);
    }

    else
    {
    }

    v14 = (*(v13 + 8))(v8, v12);
  }

  v35[0] = v11;
  MEMORY[0x1EEE9AC00](v14);
  *(&v32 - 2) = a2;
  *(&v32 - 1) = a3;
  v28 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v31 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in DragSession.draggedItemIDs<A>(for:), (&v32 - 4), v28, a2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v30);

  return v31;
}

Swift::Int DropSession.ID.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

uint64_t DropSession.Phase.hash(into:)()
{
  v1 = *v0;
  if ((v1 - 6) < 4u)
  {
    v2 = qword_18CD9EB08[(v1 - 6)];
    return MEMORY[0x18D00F6F0](v2);
  }

  MEMORY[0x18D00F6F0](3);
  if (v1 < 2)
  {
    if (v1)
    {
      v2 = 1;
    }

    else
    {
      v2 = v1;
    }

    return MEMORY[0x18D00F6F0](v2);
  }

  if (v1 <= 2)
  {
    v2 = 2;
    return MEMORY[0x18D00F6F0](v2);
  }

  if (v1 == 3)
  {
    v2 = 3;
    return MEMORY[0x18D00F6F0](v2);
  }

  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

Swift::Int DropSession.Phase.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if ((v1 - 6) < 4u)
  {
    v2 = qword_18CD9EB08[(v1 - 6)];
LABEL_11:
    MEMORY[0x18D00F6F0](v2);
    return Hasher._finalize()();
  }

  MEMORY[0x18D00F6F0](3);
  if (v1 < 2)
  {
    if (v1)
    {
      v2 = 1;
    }

    else
    {
      v2 = v1;
    }

    goto LABEL_11;
  }

  if (v1 <= 2)
  {
    v2 = 2;
    goto LABEL_11;
  }

  if (v1 == 3)
  {
    v2 = 3;
    goto LABEL_11;
  }

  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DropSession.Phase()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if ((v1 - 6) < 4u)
  {
    v2 = qword_18CD9EB08[(v1 - 6)];
LABEL_11:
    MEMORY[0x18D00F6F0](v2);
    return Hasher._finalize()();
  }

  MEMORY[0x18D00F6F0](3);
  if (v1 < 2)
  {
    if (v1)
    {
      v2 = 1;
    }

    else
    {
      v2 = v1;
    }

    goto LABEL_11;
  }

  if (v1 <= 2)
  {
    v2 = 2;
    goto LABEL_11;
  }

  if (v1 == 3)
  {
    v2 = 3;
    goto LABEL_11;
  }

  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

uint64_t DropSession.localSession.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return outlined copy of WidgetAuxiliaryTextImagePreference?(v2);
}

uint64_t DropSession.localSession.setter(uint64_t *a1)
{
  v2 = *a1;
  result = outlined consume of WidgetAuxiliaryTextImagePreference?(*(v1 + 16));
  *(v1 + 16) = v2;
  return result;
}

unint64_t DropSession.ID.description.getter()
{
  if (*v0 != static DropSession.ID.invalid)
  {
    _StringGuts.grow(_:)(25);

    v1 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v1);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
  }

  return 0xD000000000000016;
}

uint64_t DropSession.Phase.description.getter()
{
  v1 = *v0;
  if (v1 > 7)
  {
    if (v1 != 8)
    {
      if (v1 == 9)
      {
        return 0xD000000000000017;
      }

      goto LABEL_8;
    }

    return 0x676E6974697865;
  }

  else
  {
    if (v1 != 6)
    {
      if (v1 == 7)
      {
        return 0x657669746361;
      }

LABEL_8:
      _StringGuts.grow(_:)(23);
      MEMORY[0x18D00C9B0](0xD000000000000015, 0x800000018CD42A80);
      _print_unlocked<A, B>(_:_:)();
      return 0;
    }

    return 0x676E697265746E65;
  }
}

uint64_t DropSession.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[2];
  _StringGuts.grow(_:)(99);
  MEMORY[0x18D00C9B0](0xD000000000000010, 0x800000018CD49440);
  specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(v1);
  MEMORY[0x18D00C9B0](0x3A6573616870202CLL, 0xE900000000000020);
  v3 = DropSession.Phase.description.getter();
  MEMORY[0x18D00C9B0](v3);

  MEMORY[0x18D00C9B0](0xD000000000000010, 0x800000018CD49460);
  if (v2 == 1)
  {
    v4 = 0xE300000000000000;
    v5 = 7104878;
  }

  else
  {
    _print_unlocked<A, B>(_:_:)();
    v5 = 0;
    v4 = 0xE000000000000000;
  }

  MEMORY[0x18D00C9B0](v5, v4);

  MEMORY[0x18D00C9B0](0x43736D657469202CLL, 0xEE00203A746E756FLL);
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v6);

  MEMORY[0x18D00C9B0](0xD000000000000017, 0x800000018CD49480);
  v7 = DropOperation.Set.description.getter();
  MEMORY[0x18D00C9B0](v7);

  MEMORY[0x18D00C9B0](0x203A657A6973202CLL, 0xE800000000000000);
  type metadata accessor for CGSize(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18D00C9B0](41, 0xE100000000000000);
  return 0;
}

uint64_t CachedDropSession.__deallocating_deinit()
{
  outlined consume of WidgetAuxiliaryTextImagePreference?(*(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t specialized static DropSession.Phase.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a2 > 7u)
  {
    if (v3 == 8)
    {
      if (v2 != 8)
      {
        return 0;
      }
    }

    else
    {
      if (v3 != 9)
      {
        goto LABEL_10;
      }

      if (v2 != 9)
      {
        return 0;
      }
    }

    return 1;
  }

  if (v3 == 6)
  {
    return v2 == 6;
  }

  if (v3 == 7)
  {
    return v2 == 7;
  }

LABEL_10:
  if ((v2 - 6) < 4)
  {
    return 0;
  }

  if (*a2 < 2u)
  {
    if (*a2)
    {
      v3 = 1;
    }

    v4 = *a1 <= 2u;
    if (*a1 < 2u)
    {
      goto LABEL_15;
    }

    goto LABEL_24;
  }

  if (*a2 <= 2u)
  {
    v3 = 2;
    v4 = *a1 <= 2u;
    if (*a1 >= 2u)
    {
      goto LABEL_24;
    }

LABEL_15:
    if (*a1)
    {
      v2 = 1;
    }

    return v3 == v2;
  }

  if (v3 != 3)
  {
    _diagnoseUnavailableCodeReached()();
    __break(1u);
    goto LABEL_34;
  }

  v3 = 3;
  v4 = *a1 <= 2u;
  if (*a1 < 2u)
  {
    goto LABEL_15;
  }

LABEL_24:
  if (v4)
  {
    v2 = 2;
    return v3 == v2;
  }

  if (v2 == 3)
  {
    v2 = 3;
    return v3 == v2;
  }

LABEL_34:
  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type DropSession.ID and conformance DropSession.ID()
{
  result = lazy protocol witness table cache variable for type DropSession.ID and conformance DropSession.ID;
  if (!lazy protocol witness table cache variable for type DropSession.ID and conformance DropSession.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DropSession.ID and conformance DropSession.ID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DropSession.ID and conformance DropSession.ID;
  if (!lazy protocol witness table cache variable for type DropSession.ID and conformance DropSession.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DropSession.ID and conformance DropSession.ID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DropSession.Phase and conformance DropSession.Phase()
{
  result = lazy protocol witness table cache variable for type DropSession.Phase and conformance DropSession.Phase;
  if (!lazy protocol witness table cache variable for type DropSession.Phase and conformance DropSession.Phase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DropSession.Phase and conformance DropSession.Phase);
  }

  return result;
}

uint64_t destroy for DropSession(uint64_t a1)
{
  result = *(a1 + 16);
  if (result != 1)
  {
  }

  return result;
}

__n128 initializeWithCopy for DropSession(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 16);
  if (v3 != 1)
  {
    v4 = a1;

    a1 = v4;
  }

  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  result = *(a2 + 56);
  *(a1 + 56) = result;
  return result;
}

uint64_t assignWithCopy for DropSession(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = (a1 + 16);
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v5 == 1)
  {
    if (v6 != 1)
    {
      *v4 = v6;

      goto LABEL_9;
    }

    v7 = 1;
  }

  else
  {
    if (v6 != 1)
    {
      *v4 = v6;

      goto LABEL_9;
    }

    outlined destroy of DropSession.LocalSession(v4);
    v7 = *(a2 + 16);
  }

  *v4 = v7;
LABEL_9:
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

__n128 assignWithTake for DropSession(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = (a1 + 16);
  v4 = *(a2 + 16);
  if (*(a1 + 16) == 1)
  {
    if (v4 == 1)
    {
      *v3 = 1;
    }

    else
    {
      *v3 = v4;
    }
  }

  else
  {
    v5 = a1;
    if (v4 == 1)
    {
      outlined destroy of DropSession.LocalSession(a1 + 16);
      *v3 = 1;
    }

    else
    {
      *v3 = v4;
    }

    a1 = v5;
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  result = *(a2 + 56);
  *(a1 + 56) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DropSession(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 72))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for DropSession(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DropSession.Phase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_20;
  }

  v2 = a2 + 9;
  if (a2 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 9;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 9;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 6)
  {
    v8 = v7 - 5;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 5)
  {
    return v8 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DropSession.Phase(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 9;
  if (a3 + 9 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF7)
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for DropSession.Phase(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 6)
  {
    return v1 - 5;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for DropSession.Phase(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 5;
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ContainerBackgroundRendererModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t OnModifierKeysChangedModifier.body(content:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  v21 = v1[2];
  type metadata accessor for MainActor();

  outlined init with copy of State<EventModifiers>(&v21, &v19);
  v4 = static MainActor.shared.getter();
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E85E0];
  *(v5 + 16) = v4;
  *(v5 + 24) = v6;
  v7 = v2[1];
  *(v5 + 32) = *v2;
  *(v5 + 48) = v7;
  *(v5 + 64) = v2[2];
  v8 = type metadata accessor for TaskPriority();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TaskPriority.userInitiated.getter();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v19 = 0;
    v20 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v19 = 0xD00000000000002ELL;
    v20 = 0x800000018CD494E0;
    v18[1] = 124;
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v12);

    v13 = v20;
    *a1 = v19;
    a1[1] = v13;
    v14 = type metadata accessor for _TaskModifier2(0);
    a1[2] = 0;
    a1[3] = 0;
    result = (*(v9 + 32))(a1 + *(v14 + 24), v11, v8);
    v16 = (a1 + *(v14 + 28));
    *v16 = &async function pointer to partial apply for closure #1 in OnModifierKeysChangedModifier.body(content:);
    v16[1] = v5;
  }

  else
  {
    v17 = type metadata accessor for _TaskModifier(0);
    result = (*(v9 + 32))(a1 + *(v17 + 20), v11, v8);
    *a1 = &async function pointer to partial apply for closure #1 in OnModifierKeysChangedModifier.body(content:);
    a1[1] = v5;
  }

  return result;
}

uint64_t closure #1 in OnModifierKeysChangedModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[30] = a3;
  v3[31] = type metadata accessor for MainActor();
  v3[32] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[33] = v5;
  v3[34] = v4;

  return MEMORY[0x1EEE6DFA0](closure #1 in OnModifierKeysChangedModifier.body(content:), v5, v4);
}

uint64_t closure #1 in OnModifierKeysChangedModifier.body(content:)()
{
  v1 = v0[30];
  if (*(v1 + 8))
  {
    if (one-time initialization token for _modifierKeySource != -1)
    {
      swift_once();
    }

    outlined init with copy of _Benchmark(&static EventModifiers._modifierKeySource, (v0 + 15));
    v2 = v0[18];
    v3 = v0[19];
    __swift_project_boxed_opaque_existential_1(v0 + 15, v2);
    v4 = (*(v3 + 16))(v2, v3);
    __swift_destroy_boxed_opaque_existential_1((v0 + 15));
    v1 = v0[30];
    if (v4)
    {
      (*(v1 + 16))(0, v4);
      v5 = *(v1 + 40);
      v0[29] = v4;
      if (v5)
      {
        dispatch thunk of AnyLocation.set(_:transaction:)();
      }

      v1 = v0[30];
    }
  }

  v6 = *v1;
  if (one-time initialization token for _modifierKeySource != -1)
  {
    swift_once();
  }

  outlined init with copy of _Benchmark(&static EventModifiers._modifierKeySource, (v0 + 9));
  v0[14] = v6;
  EventModifiers.AsyncValues.makeAsyncIterator()(v0 + 2);
  outlined destroy of AccessibilityRelationshipScope.Key((v0 + 9));
  v0[35] = static MainActor.shared.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in OnModifierKeysChangedModifier.body(content:), 0, 0);
}

{
  v1 = v0[5];
  v2 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v1);
  v0[36] = swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for Optional();
  v0[37] = v3;
  v0[38] = *(v3 - 8);
  v4 = swift_task_alloc();
  v0[39] = v4;
  v5 = swift_task_alloc();
  v0[40] = v5;
  *v5 = v0;
  v5[1] = closure #1 in OnModifierKeysChangedModifier.body(content:);

  return MEMORY[0x1EEE6D8C8](v4, v1, v2);
}

{

  if (v0)
  {

    v1 = closure #1 in OnModifierKeysChangedModifier.body(content:);
  }

  else
  {
    v1 = closure #1 in OnModifierKeysChangedModifier.body(content:);
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

{
  v1 = v0[39];
  v2 = v0[36];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[38] + 8))(v1, v0[37]);

LABEL_8:
    if (v0[35])
    {
      swift_getObjectType();
      v14 = dispatch thunk of Actor.unownedExecutor.getter();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    v17 = closure #1 in OnModifierKeysChangedModifier.body(content:);
LABEL_12:

    return MEMORY[0x1EEE6DFA0](v17, v14, v16);
  }

  v0[23] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 20);
  (*(v3 + 32))(boxed_opaque_existential_1, v1, v2);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = v0[26];
  v7 = v0[7];
  v6 = v0[8];
  v0[41] = v5;
  v0[42] = v6;
  v8 = v6 & v5;
  if (v7 != v8)
  {
    v18 = v0[35];
    v0[7] = v8;
    if (v18)
    {
      swift_getObjectType();
      v14 = dispatch thunk of Actor.unownedExecutor.getter();
      v16 = v19;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    v17 = closure #1 in OnModifierKeysChangedModifier.body(content:);
    goto LABEL_12;
  }

  v9 = v0[5];
  v10 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v9);
  v0[36] = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v0[37] = v11;
  v0[38] = *(v11 - 8);
  v12 = swift_task_alloc();
  v0[39] = v12;
  v13 = swift_task_alloc();
  v0[40] = v13;
  *v13 = v0;
  v13[1] = closure #1 in OnModifierKeysChangedModifier.body(content:);

  return MEMORY[0x1EEE6D8C8](v12, v9, v10);
}

{

  if (*(v0 + 280))
  {
    swift_getObjectType();
    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v2;
  }

  else
  {
    v1 = 0;
    v3 = 0;
  }

  return MEMORY[0x1EEE6DFA0](closure #1 in OnModifierKeysChangedModifier.body(content:), v1, v3);
}

{

  v1 = *(v0 + 264);
  v2 = *(v0 + 272);

  return MEMORY[0x1EEE6DFA0](closure #1 in OnModifierKeysChangedModifier.body(content:), v1, v2);
}

{

  outlined destroy of AccessibilityRelationshipScope.Key(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 264);
  v2 = *(v0 + 272);

  return MEMORY[0x1EEE6DFA0](closure #1 in OnModifierKeysChangedModifier.body(content:), v1, v2);
}

{
  v1 = v0[30];
  v2 = v0[41] & v0[42];
  v3 = v1[2];
  v4 = v1[5];
  v0[24] = v1[4];
  v0[25] = v4;
  type metadata accessor for State<EventModifiers>();
  State.wrappedValue.getter();
  v3(v0[27], v2);
  v0[28] = v2;
  if (v4)
  {
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  v0[35] = static MainActor.shared.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in OnModifierKeysChangedModifier.body(content:), 0, 0);
}

uint64_t static EventModifiers.current.getter()
{
  if (one-time initialization token for _modifierKeySource != -1)
  {
    swift_once();
  }

  outlined init with copy of _Benchmark(&static EventModifiers._modifierKeySource, v4);
  v0 = v5;
  v1 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v2 = (*(v1 + 16))(v0, v1);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2;
}

uint64_t static EventModifiers.values(mask:initial:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (one-time initialization token for _modifierKeySource != -1)
  {
    swift_once();
  }

  result = outlined init with copy of _Benchmark(&static EventModifiers._modifierKeySource, a2);
  *(a2 + 40) = a1;
  return result;
}

uint64_t EventModifiers.AsyncValues.Iterator.init(_:mask:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(v7 + 24))(v17, v6, v7);
  v8 = __swift_project_boxed_opaque_existential_1(v17, v18);
  v9 = MEMORY[0x1EEE9AC00](v8);
  (*(v11 + 16))(&v17[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  a3[3] = swift_getAssociatedTypeWitness();
  a3[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(a3);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  __swift_destroy_boxed_opaque_existential_1(v17);
  if (one-time initialization token for _modifierKeySource != -1)
  {
    swift_once();
  }

  outlined init with copy of _Benchmark(&static EventModifiers._modifierKeySource, v17);
  v12 = v18;
  v13 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v14 = (*(v13 + 16))(v12, v13);
  __swift_destroy_boxed_opaque_existential_1(v17);
  a3[5] = v14 & a2;
  a3[6] = a2;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t EventModifiers.AsyncValues.Iterator.next()()
{
  *(v1 + 56) = v0;
  return MEMORY[0x1EEE6DFA0](EventModifiers.AsyncValues.Iterator.next(), 0, 0);
}

{
  v1 = v0[7];
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  v0[8] = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v0[9] = v4;
  v0[10] = *(v4 - 8);
  v5 = swift_task_alloc();
  v0[11] = v5;
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = EventModifiers.AsyncValues.Iterator.next();

  return MEMORY[0x1EEE6D8C8](v5, v2, v3);
}

{

  if (v0)
  {

    v1 = EventModifiers.AsyncValues.Iterator.next();
  }

  else
  {
    v1 = EventModifiers.AsyncValues.Iterator.next();
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

{
  v1 = v0[11];
  v2 = v0[8];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[10] + 8))(v1, v0[9]);

LABEL_8:
    v6 = 0;
    v12 = 1;
LABEL_9:
    v13 = v0[1];

    return v13(v6, v12);
  }

  v0[5] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(v3 + 32))(boxed_opaque_existential_1, v1, v2);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = v0[7];
  v6 = v5[6] & v0[6];
  if (v5[5] != v6)
  {
    v12 = 0;
    v5[5] = v6;
    goto LABEL_9;
  }

  v7 = v5[3];
  v8 = v5[4];
  __swift_mutable_project_boxed_opaque_existential_1(v0[7], v7);
  v0[8] = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v0[9] = v9;
  v0[10] = *(v9 - 8);
  v10 = swift_task_alloc();
  v0[11] = v10;
  v11 = swift_task_alloc();
  v0[12] = v11;
  *v11 = v0;
  v11[1] = EventModifiers.AsyncValues.Iterator.next();

  return MEMORY[0x1EEE6D8C8](v10, v7, v8);
}

{

  v1 = *(v0 + 8);

  return v1(0, 1);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance EventModifiers.AsyncValues.Iterator(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = protocol witness for AsyncIteratorProtocol.next() in conformance EventModifiers.AsyncValues.Iterator;

  return EventModifiers.AsyncValues.Iterator.next()();
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance EventModifiers.AsyncValues.Iterator(uint64_t a1, char a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  v6 = *(v8 + 8);

  return v6();
}

uint64_t _s7SwiftUI14EventModifiersV11AsyncValuesV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = swift_task_alloc();
  v3[5] = v4;
  *v4 = v3;
  v4[1] = _s7SwiftUI14EventModifiersV11AsyncValuesV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return EventModifiers.AsyncValues.Iterator.next()();
}

uint64_t _s7SwiftUI14EventModifiersV11AsyncValuesV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_(uint64_t a1, char a2)
{
  v5 = *v2;
  v6 = *(*v2 + 24);

  if (v6)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  *(v5 + 56) = a2;
  *(v5 + 48) = a1;

  return MEMORY[0x1EEE6DFA0](_s7SwiftUI14EventModifiersV11AsyncValuesV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY1_, v7, v9);
}

uint64_t _s7SwiftUI14EventModifiersV11AsyncValuesV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY1_()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 48);
  *(v2 + 8) = v1 & 1;
  return (*(v0 + 8))();
}

unint64_t lazy protocol witness table accessor for type EventModifiers.AsyncValues.Iterator and conformance EventModifiers.AsyncValues.Iterator()
{
  result = lazy protocol witness table cache variable for type EventModifiers.AsyncValues.Iterator and conformance EventModifiers.AsyncValues.Iterator;
  if (!lazy protocol witness table cache variable for type EventModifiers.AsyncValues.Iterator and conformance EventModifiers.AsyncValues.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EventModifiers.AsyncValues.Iterator and conformance EventModifiers.AsyncValues.Iterator);
  }

  return result;
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance EventModifiers.AsyncValues@<X0>(uint64_t *a1@<X8>)
{
  outlined init with copy of _Benchmark(v1, v4);
  EventModifiers.AsyncValues.Iterator.init(_:mask:)(v4, *(v1 + 40), a1);
  return outlined destroy of AccessibilityRelationshipScope.Key(v1);
}

uint64_t initializeWithCopy for EventModifiers.AsyncValues.Iterator(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t *assignWithCopy for EventModifiers.AsyncValues.Iterator(uint64_t *a1, uint64_t *a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  a1[5] = a2[5];
  a1[6] = a2[6];
  return a1;
}

uint64_t assignWithTake for EventModifiers.AsyncValues.Iterator(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for EventModifiers.AsyncValues.Iterator(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for EventModifiers.AsyncValues.Iterator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithTake for OnModifierKeysChangedModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;

  return a1;
}

uint64_t partial apply for closure #1 in OnModifierKeysChangedModifier.body(content:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in OnModifierKeysChangedModifier.body(content:)(v2, v3, v0 + 32);
}

uint64_t outlined init with copy of TextEditorStyleConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextEditorStyleConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AutomaticTextEditorStyle.Body.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TextEditorStyleConfiguration(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TextEditorStyleConfiguration(v1, v5);
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 10) = 0;
  v6 = type metadata accessor for TextEditor(0);
  return outlined init with take of TextEditor.Storage(v5, a1 + *(v6 + 20));
}

uint64_t protocol witness for View.body.getter in conformance AutomaticTextEditorStyle.Body@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TextEditorStyleConfiguration(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TextEditorStyleConfiguration(v1, v5);
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 10) = 0;
  v6 = type metadata accessor for TextEditor(0);
  return outlined init with take of TextEditor.Storage(v5, a1 + *(v6 + 20));
}

uint64_t outlined init with take of TextEditor.Storage(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextEditor.Storage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for AutomaticTextEditorStyle.Body()
{
  result = type metadata singleton initialization cache for AutomaticTextEditorStyle.Body;
  if (!type metadata singleton initialization cache for AutomaticTextEditorStyle.Body)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AutomaticTextEditorStyle.Body(uint64_t *a1, uint64_t *a2)
{
  v4 = *(*(type metadata accessor for TextEditor.Storage(0) - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v18 = *a2;
    *a1 = *a2;
    a1 = (v18 + ((v4 + 16) & ~v4));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v6 = a2[1];
    *a1 = *a2;
    a1[1] = v6;
    if (EnumCaseMultiPayload == 1)
    {
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
      v8 = *(v7 + 32);
      v9 = type metadata accessor for AttributedString();
      v10 = *(*(v9 - 8) + 16);

      v10(a1 + v8, a2 + v8, v9);
      v11 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
      v12 = (a1 + v11);
      v13 = (a2 + v11);
      type metadata accessor for Binding<AttributedTextSelection>(0);
      v15 = v14;
      v16 = *(v14 - 8);
      if ((*(v16 + 48))(v13, 1, v14))
      {
        _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
        memcpy(v12, v13, *(*(v17 - 8) + 64));
      }

      else
      {
        v59 = v12;
        v29 = v13[1];
        *v12 = *v13;
        v12[1] = v29;
        v30 = *(v15 + 32);
        __dst = v12 + v30;
        v31 = v13 + v30;
        v32 = type metadata accessor for AttributedTextSelection.Indices(0);
        v33 = *(v32 - 8);
        v34 = *(v33 + 48);

        if (v34(v31, 1, v32))
        {
          _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
          v36 = __dst;
          memcpy(__dst, v31, *(*(v35 - 8) + 64));
        }

        else
        {
          v36 = __dst;
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<AttributedString.Index>();
            v48 = v47;
          }

          else
          {
            v48 = type metadata accessor for AttributedString.Index();
          }

          (*(*(v48 - 8) + 16))(__dst, v31);
          swift_storeEnumTagMultiPayload();
          (*(v33 + 56))(__dst, 0, 1, v32);
        }

        v51 = type metadata accessor for AttributedTextSelection(0);
        v52 = *(v51 + 20);
        v53 = type metadata accessor for AttributeContainer();
        v54 = *(v53 - 8);
        if ((*(v54 + 48))(&v31[v52], 1, v53))
        {
          v55 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
          memcpy(&v36[v52], &v31[v52], *(*(v55 - 8) + 64));
        }

        else
        {
          (*(v54 + 16))(&v36[v52], &v31[v52], v53);
          (*(v54 + 56))(&v36[v52], 0, 1, v53);
        }

        v36[*(v51 + 24)] = v31[*(v51 + 24)];
        (*(v16 + 56))(v59, 0, 1, v15);
      }
    }

    else
    {
      v19 = a2[3];
      a1[2] = a2[2];
      a1[3] = v19;
      type metadata accessor for (Binding<String>, Binding<TextSelection?>?)();
      v21 = *(v20 + 48);
      v22 = (a1 + v21);
      v23 = (a2 + v21);
      type metadata accessor for Binding<TextSelection?>(0);
      v25 = v24;
      v26 = *(v24 - 1);
      v27 = *(v26 + 48);

      if (v27(v23, 1, v25))
      {
        _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
        memcpy(v22, v23, *(*(v28 - 8) + 64));
      }

      else
      {
        v37 = v23[1];
        *v22 = *v23;
        v22[1] = v37;
        __dsta = v25;
        v60 = v22;
        v38 = v25[8];
        v39 = v22 + v38;
        v40 = v23 + v38;
        v41 = type metadata accessor for TextSelection(0);
        v42 = *(v41 - 8);
        v43 = *(v42 + 48);

        if (v43(v40, 1, v41))
        {
          type metadata accessor for TextSelection?(0);
          memcpy(v39, v40, *(*(v44 - 8) + 64));
          v46 = __dsta;
          v45 = v60;
        }

        else
        {
          v49 = type metadata accessor for TextSelection.Indices(0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<String.Index>();
            (*(*(v50 - 8) + 16))(v39, v40, v50);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            memcpy(v39, v40, *(*(v49 - 8) + 64));
          }

          v46 = __dsta;
          v45 = v60;
          v39[*(v41 + 20)] = v40[*(v41 + 20)];
          (*(v42 + 56))(v39, 0, 1, v41);
        }

        (*(v26 + 56))(v45, 0, 1, v46);
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t destroy for AutomaticTextEditorStyle.Body(uint64_t a1)
{
  type metadata accessor for TextEditor.Storage(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload != 1)
  {

    type metadata accessor for (Binding<String>, Binding<TextSelection?>?)();
    v14 = a1 + *(v13 + 48);
    type metadata accessor for Binding<TextSelection?>(0);
    v16 = v15;
    result = (*(*(v15 - 8) + 48))(v14, 1, v15);
    if (result)
    {
      return result;
    }

    v17 = *(v16 + 32);
    v18 = type metadata accessor for TextSelection(0);
    result = (*(*(v18 - 8) + 48))(v14 + v17, 1, v18);
    if (result)
    {
      return result;
    }

    type metadata accessor for TextSelection.Indices(0);
    result = swift_getEnumCaseMultiPayload();
    if (result != 1)
    {
      return result;
    }

    type metadata accessor for RangeSet<String.Index>();
    v20 = v19;
    v21 = *(*(v19 - 8) + 8);
    v22 = v14 + v17;
    goto LABEL_15;
  }

  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v4 = *(v3 + 32);
  v5 = type metadata accessor for AttributedString();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = a1 + *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
  type metadata accessor for Binding<AttributedTextSelection>(0);
  v8 = v7;
  result = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (!result)
  {

    v10 = v6 + *(v8 + 32);
    v11 = type metadata accessor for AttributedTextSelection.Indices(0);
    if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<AttributedString.Index>();
      }

      else
      {
        v12 = type metadata accessor for AttributedString.Index();
      }

      (*(*(v12 - 8) + 8))(v10, v12);
    }

    v23 = *(type metadata accessor for AttributedTextSelection(0) + 20);
    v24 = type metadata accessor for AttributeContainer();
    v25 = *(v24 - 8);
    result = (*(v25 + 48))(v10 + v23, 1, v24);
    if (!result)
    {
      v21 = *(v25 + 8);
      v22 = v10 + v23;
      v20 = v24;
LABEL_15:

      return v21(v22, v20);
    }
  }

  return result;
}

char *initializeWithCopy for AutomaticTextEditorStyle.Body(char *a1, char *a2)
{
  type metadata accessor for TextEditor.Storage(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  if (EnumCaseMultiPayload == 1)
  {
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
    v7 = *(v6 + 32);
    v8 = type metadata accessor for AttributedString();
    v9 = *(*(v8 - 8) + 16);

    v9(&a1[v7], &a2[v7], v8);
    v10 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
    v11 = &a1[v10];
    v12 = &a2[v10];
    type metadata accessor for Binding<AttributedTextSelection>(0);
    v14 = v13;
    v15 = *(v13 - 8);
    if ((*(v15 + 48))(v12, 1, v13))
    {
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
      memcpy(v11, v12, *(*(v16 - 8) + 64));
    }

    else
    {
      v56 = v11;
      v27 = *(v12 + 1);
      *v11 = *v12;
      *(v11 + 1) = v27;
      v28 = *(v14 + 32);
      __dst = &v11[v28];
      v29 = &v12[v28];
      v30 = type metadata accessor for AttributedTextSelection.Indices(0);
      v31 = *(v30 - 8);
      v32 = *(v31 + 48);

      if (v32(v29, 1, v30))
      {
        _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
        v34 = __dst;
        memcpy(__dst, v29, *(*(v33 - 8) + 64));
      }

      else
      {
        v34 = __dst;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>();
          v45 = v44;
        }

        else
        {
          v45 = type metadata accessor for AttributedString.Index();
        }

        (*(*(v45 - 8) + 16))(__dst, v29);
        swift_storeEnumTagMultiPayload();
        (*(v31 + 56))(__dst, 0, 1, v30);
      }

      v48 = type metadata accessor for AttributedTextSelection(0);
      v49 = *(v48 + 20);
      v50 = type metadata accessor for AttributeContainer();
      v51 = *(v50 - 8);
      if ((*(v51 + 48))(&v29[v49], 1, v50))
      {
        v52 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        memcpy(&v34[v49], &v29[v49], *(*(v52 - 8) + 64));
      }

      else
      {
        (*(v51 + 16))(&v34[v49], &v29[v49], v50);
        (*(v51 + 56))(&v34[v49], 0, 1, v50);
      }

      v34[*(v48 + 24)] = v29[*(v48 + 24)];
      (*(v15 + 56))(v56, 0, 1, v14);
    }
  }

  else
  {
    v17 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v17;
    type metadata accessor for (Binding<String>, Binding<TextSelection?>?)();
    v19 = *(v18 + 48);
    v20 = &a1[v19];
    v21 = &a2[v19];
    type metadata accessor for Binding<TextSelection?>(0);
    v23 = v22;
    v24 = *(v22 - 8);
    v25 = *(v24 + 48);

    if (v25(v21, 1, v23))
    {
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
      memcpy(v20, v21, *(*(v26 - 8) + 64));
    }

    else
    {
      v35 = v20;
      v36 = *(v21 + 1);
      *v35 = *v21;
      v35[1] = v36;
      v37 = *(v23 + 32);
      v57 = v35;
      __dsta = v35 + v37;
      v38 = &v21[v37];
      v39 = type metadata accessor for TextSelection(0);
      v40 = *(v39 - 8);
      v41 = *(v40 + 48);

      if (v41(v38, 1, v39))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(__dsta, v38, *(*(v42 - 8) + 64));
        v43 = v57;
      }

      else
      {
        v46 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<String.Index>();
          (*(*(v47 - 8) + 16))(__dsta, v38, v47);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(__dsta, v38, *(*(v46 - 8) + 64));
        }

        v43 = v57;
        __dsta[*(v39 + 20)] = v38[*(v39 + 20)];
        (*(v40 + 56))(__dsta, 0, 1, v39);
      }

      (*(v24 + 56))(v43, 0, 1, v23);
    }
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

char *assignWithCopy for AutomaticTextEditorStyle.Body(char *a1, char *a2)
{
  if (a1 != a2)
  {
    outlined destroy of TextEditor.Storage(a1);
    type metadata accessor for TextEditor.Storage(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);
    if (EnumCaseMultiPayload == 1)
    {
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
      v6 = *(v5 + 32);
      v7 = type metadata accessor for AttributedString();
      v8 = *(*(v7 - 8) + 16);

      v8(&a1[v6], &a2[v6], v7);
      v9 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
      v10 = &a1[v9];
      v11 = &a2[v9];
      type metadata accessor for Binding<AttributedTextSelection>(0);
      v13 = v12;
      v14 = *(v12 - 8);
      if ((*(v14 + 48))(v11, 1, v12))
      {
        _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
        memcpy(v10, v11, *(*(v15 - 8) + 64));
      }

      else
      {
        v50 = v10;
        *v10 = *v11;
        *(v10 + 1) = *(v11 + 1);
        v25 = *(v13 + 32);
        __dst = &v10[v25];
        v26 = &v11[v25];
        v27 = type metadata accessor for AttributedTextSelection.Indices(0);
        v28 = *(v27 - 8);
        v29 = *(v28 + 48);

        if (v29(v26, 1, v27))
        {
          _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
          v31 = __dst;
          memcpy(__dst, v26, *(*(v30 - 8) + 64));
        }

        else
        {
          v31 = __dst;
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<AttributedString.Index>();
            v39 = v38;
          }

          else
          {
            v39 = type metadata accessor for AttributedString.Index();
          }

          (*(*(v39 - 8) + 16))(__dst, v26);
          swift_storeEnumTagMultiPayload();
          (*(v28 + 56))(__dst, 0, 1, v27);
        }

        v42 = type metadata accessor for AttributedTextSelection(0);
        v43 = *(v42 + 20);
        v44 = type metadata accessor for AttributeContainer();
        v45 = *(v44 - 8);
        if ((*(v45 + 48))(&v26[v43], 1, v44))
        {
          v46 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
          memcpy(&v31[v43], &v26[v43], *(*(v46 - 8) + 64));
        }

        else
        {
          (*(v45 + 16))(&v31[v43], &v26[v43], v44);
          (*(v45 + 56))(&v31[v43], 0, 1, v44);
        }

        v31[*(v42 + 24)] = v26[*(v42 + 24)];
        (*(v14 + 56))(v50, 0, 1, v13);
      }
    }

    else
    {
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 3) = *(a2 + 3);
      type metadata accessor for (Binding<String>, Binding<TextSelection?>?)();
      v17 = *(v16 + 48);
      v18 = &a1[v17];
      v19 = &a2[v17];
      type metadata accessor for Binding<TextSelection?>(0);
      v21 = v20;
      v22 = *(v20 - 8);
      v23 = *(v22 + 48);

      if (v23(v19, 1, v21))
      {
        _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
        memcpy(v18, v19, *(*(v24 - 8) + 64));
      }

      else
      {
        *v18 = *v19;
        *(v18 + 1) = *(v19 + 1);
        v32 = *(v21 + 32);
        __dsta = &v18[v32];
        v33 = &v19[v32];
        v34 = type metadata accessor for TextSelection(0);
        v35 = *(v34 - 8);
        v36 = *(v35 + 48);

        if (v36(v33, 1, v34))
        {
          type metadata accessor for TextSelection?(0);
          memcpy(__dsta, v33, *(*(v37 - 8) + 64));
        }

        else
        {
          v40 = type metadata accessor for TextSelection.Indices(0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<String.Index>();
            (*(*(v41 - 8) + 16))(__dsta, v33, v41);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            memcpy(__dsta, v33, *(*(v40 - 8) + 64));
          }

          __dsta[*(v34 + 20)] = v33[*(v34 + 20)];
          (*(v35 + 56))(__dsta, 0, 1, v34);
        }

        (*(v22 + 56))(v18, 0, 1, v21);
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t initializeWithTake for AutomaticTextEditorStyle.Body(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TextEditor.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v4;
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
    v6 = *(v5 + 32);
    v7 = type metadata accessor for AttributedString();
    (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
    v8 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
    v9 = (a1 + v8);
    v10 = (a2 + v8);
    type metadata accessor for Binding<AttributedTextSelection>(0);
    v12 = v11;
    v13 = *(v11 - 8);
    if ((*(v13 + 48))(v10, 1, v11))
    {
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
      memcpy(v9, v10, *(*(v14 - 8) + 64));
    }

    else
    {
      v24 = v10[1];
      *v9 = *v10;
      v9[1] = v24;
      v25 = *(v12 + 32);
      v26 = v9 + v25;
      v27 = v10 + v25;
      v28 = type metadata accessor for AttributedTextSelection.Indices(0);
      v29 = *(v28 - 8);
      v49 = v26;
      if ((*(v29 + 48))(v27, 1, v28))
      {
        _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
        memcpy(v26, v27, *(*(v30 - 8) + 64));
      }

      else
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>();
          v39 = v38;
        }

        else
        {
          v39 = type metadata accessor for AttributedString.Index();
        }

        (*(*(v39 - 8) + 32))(v26, v27);
        swift_storeEnumTagMultiPayload();
        (*(v29 + 56))(v26, 0, 1, v28);
      }

      v42 = type metadata accessor for AttributedTextSelection(0);
      v43 = *(v42 + 20);
      v44 = type metadata accessor for AttributeContainer();
      v45 = *(v44 - 8);
      if ((*(v45 + 48))(&v27[v43], 1, v44))
      {
        v46 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        v47 = v49;
        memcpy(&v49[v43], &v27[v43], *(*(v46 - 8) + 64));
      }

      else
      {
        (*(v45 + 32))(&v49[v43], &v27[v43], v44);
        (*(v45 + 56))(&v49[v43], 0, 1, v44);
        v47 = v49;
      }

      v47[*(v42 + 24)] = v27[*(v42 + 24)];
      (*(v13 + 56))(v9, 0, 1, v12);
    }
  }

  else
  {
    v15 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v15;
    type metadata accessor for (Binding<String>, Binding<TextSelection?>?)();
    v17 = *(v16 + 48);
    v18 = (a1 + v17);
    v19 = (a2 + v17);
    type metadata accessor for Binding<TextSelection?>(0);
    v21 = v20;
    v22 = *(v20 - 8);
    if ((*(v22 + 48))(v19, 1, v20))
    {
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
      memcpy(v18, v19, *(*(v23 - 8) + 64));
    }

    else
    {
      v31 = v19[1];
      *v18 = *v19;
      v18[1] = v31;
      v32 = *(v21 + 32);
      v33 = v18 + v32;
      v34 = v19 + v32;
      v35 = type metadata accessor for TextSelection(0);
      v36 = *(v35 - 8);
      if ((*(v36 + 48))(v34, 1, v35))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(v33, v34, *(*(v37 - 8) + 64));
      }

      else
      {
        v40 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<String.Index>();
          (*(*(v41 - 8) + 32))(v33, v34, v41);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(v33, v34, *(*(v40 - 8) + 64));
        }

        v33[*(v35 + 20)] = v34[*(v35 + 20)];
        (*(v36 + 56))(v33, 0, 1, v35);
      }

      (*(v22 + 56))(v18, 0, 1, v21);
    }
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithTake for AutomaticTextEditorStyle.Body(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of TextEditor.Storage(a1);
    type metadata accessor for TextEditor.Storage(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v4;
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
      v6 = *(v5 + 32);
      v7 = type metadata accessor for AttributedString();
      (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
      v8 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
      v9 = (a1 + v8);
      v10 = (a2 + v8);
      type metadata accessor for Binding<AttributedTextSelection>(0);
      v12 = v11;
      v13 = *(v11 - 8);
      if ((*(v13 + 48))(v10, 1, v11))
      {
        _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
        memcpy(v9, v10, *(*(v14 - 8) + 64));
      }

      else
      {
        v24 = v10[1];
        *v9 = *v10;
        v9[1] = v24;
        v25 = *(v12 + 32);
        v26 = v9 + v25;
        v27 = v10 + v25;
        v28 = type metadata accessor for AttributedTextSelection.Indices(0);
        v29 = *(v28 - 8);
        v49 = v26;
        if ((*(v29 + 48))(v27, 1, v28))
        {
          _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
          memcpy(v26, v27, *(*(v30 - 8) + 64));
        }

        else
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<AttributedString.Index>();
            v39 = v38;
          }

          else
          {
            v39 = type metadata accessor for AttributedString.Index();
          }

          (*(*(v39 - 8) + 32))(v26, v27);
          swift_storeEnumTagMultiPayload();
          (*(v29 + 56))(v26, 0, 1, v28);
        }

        v42 = type metadata accessor for AttributedTextSelection(0);
        v43 = *(v42 + 20);
        v44 = type metadata accessor for AttributeContainer();
        v45 = *(v44 - 8);
        if ((*(v45 + 48))(&v27[v43], 1, v44))
        {
          v46 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
          v47 = v49;
          memcpy(&v49[v43], &v27[v43], *(*(v46 - 8) + 64));
        }

        else
        {
          (*(v45 + 32))(&v49[v43], &v27[v43], v44);
          (*(v45 + 56))(&v49[v43], 0, 1, v44);
          v47 = v49;
        }

        v47[*(v42 + 24)] = v27[*(v42 + 24)];
        (*(v13 + 56))(v9, 0, 1, v12);
      }
    }

    else
    {
      v15 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v15;
      type metadata accessor for (Binding<String>, Binding<TextSelection?>?)();
      v17 = *(v16 + 48);
      v18 = (a1 + v17);
      v19 = (a2 + v17);
      type metadata accessor for Binding<TextSelection?>(0);
      v21 = v20;
      v22 = *(v20 - 8);
      if ((*(v22 + 48))(v19, 1, v20))
      {
        _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
        memcpy(v18, v19, *(*(v23 - 8) + 64));
      }

      else
      {
        v31 = v19[1];
        *v18 = *v19;
        v18[1] = v31;
        v32 = *(v21 + 32);
        v33 = v18 + v32;
        v34 = v19 + v32;
        v35 = type metadata accessor for TextSelection(0);
        v36 = *(v35 - 8);
        if ((*(v36 + 48))(v34, 1, v35))
        {
          type metadata accessor for TextSelection?(0);
          memcpy(v33, v34, *(*(v37 - 8) + 64));
        }

        else
        {
          v40 = type metadata accessor for TextSelection.Indices(0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<String.Index>();
            (*(*(v41 - 8) + 32))(v33, v34, v41);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            memcpy(v33, v34, *(*(v40 - 8) + 64));
          }

          v33[*(v35 + 20)] = v34[*(v35 + 20)];
          (*(v36 + 56))(v33, 0, 1, v35);
        }

        (*(v22 + 56))(v18, 0, 1, v21);
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<TextEditor, TextEditorStyleModifier<SystemTextEditorStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<TextEditor, TextEditorStyleModifier<SystemTextEditorStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<TextEditor, TextEditorStyleModifier<SystemTextEditorStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<TextEditor, TextEditorStyleModifier<SystemTextEditorStyle>>();
    lazy protocol witness table accessor for type AutomaticTextEditorStyle.Body and conformance AutomaticTextEditorStyle.Body(&lazy protocol witness table cache variable for type TextEditor and conformance TextEditor, type metadata accessor for TextEditor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<TextEditor, TextEditorStyleModifier<SystemTextEditorStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<TextEditor, TextEditorStyleModifier<SystemTextEditorStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<TextEditor, TextEditorStyleModifier<SystemTextEditorStyle>>)
  {
    type metadata accessor for TextEditor(255);
    type metadata accessor for TextEditorStyleModifier<SystemTextEditorStyle>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<TextEditor, TextEditorStyleModifier<SystemTextEditorStyle>>);
    }
  }
}

void type metadata accessor for TextEditorStyleModifier<SystemTextEditorStyle>()
{
  if (!lazy cache variable for type metadata for TextEditorStyleModifier<SystemTextEditorStyle>)
  {
    lazy protocol witness table accessor for type SystemTextEditorStyle and conformance SystemTextEditorStyle();
    v0 = type metadata accessor for TextEditorStyleModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TextEditorStyleModifier<SystemTextEditorStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SystemTextEditorStyle and conformance SystemTextEditorStyle()
{
  result = lazy protocol witness table cache variable for type SystemTextEditorStyle and conformance SystemTextEditorStyle;
  if (!lazy protocol witness table cache variable for type SystemTextEditorStyle and conformance SystemTextEditorStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemTextEditorStyle and conformance SystemTextEditorStyle);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AutomaticTextEditorStyle.Body and conformance AutomaticTextEditorStyle.Body(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type WindowFocusability.Role and conformance WindowFocusability.Role()
{
  result = lazy protocol witness table cache variable for type WindowFocusability.Role and conformance WindowFocusability.Role;
  if (!lazy protocol witness table cache variable for type WindowFocusability.Role and conformance WindowFocusability.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WindowFocusability.Role and conformance WindowFocusability.Role);
  }

  return result;
}

void protocol witness for View.body.getter in conformance SidebarDisclosureGroupStyle.Container(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);

  v8 = specialized Environment.wrappedValue.getter(v3, v4);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
}

uint64_t protocol witness for DisclosureGroupStyle.makeBody(configuration:) in conformance SidebarDisclosureGroupStyle@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
}

uint64_t destroy for SidebarDisclosureGroupStyle.Container(uint64_t a1)
{
  outlined consume of Environment<Bool>.Content(*a1, *(a1 + 8));
}

uint64_t initializeWithCopy for SidebarDisclosureGroupStyle.Container(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = a2[3];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v6;
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t *assignWithCopy for SidebarDisclosureGroupStyle.Container(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);
  a1[2] = a2[2];

  a1[3] = a2[3];

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t *assignWithTake for SidebarDisclosureGroupStyle.Container(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);

  *(a1 + 1) = *(a2 + 1);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for SidebarDisclosureGroupStyle.Container(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SidebarDisclosureGroupStyle.Container(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SidebarDisclosureGroupStyle.Container and conformance SidebarDisclosureGroupStyle.Container()
{
  result = lazy protocol witness table cache variable for type SidebarDisclosureGroupStyle.Container and conformance SidebarDisclosureGroupStyle.Container;
  if (!lazy protocol witness table cache variable for type SidebarDisclosureGroupStyle.Container and conformance SidebarDisclosureGroupStyle.Container)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SidebarDisclosureGroupStyle.Container and conformance SidebarDisclosureGroupStyle.Container);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ListDisclosureGroupStyledContainer<SidebarDisclosureGroupStyle> and conformance ListDisclosureGroupStyledContainer<A>()
{
  result = lazy protocol witness table cache variable for type ListDisclosureGroupStyledContainer<SidebarDisclosureGroupStyle> and conformance ListDisclosureGroupStyledContainer<A>;
  if (!lazy protocol witness table cache variable for type ListDisclosureGroupStyledContainer<SidebarDisclosureGroupStyle> and conformance ListDisclosureGroupStyledContainer<A>)
  {
    type metadata accessor for ListDisclosureGroupStyledContainer<SidebarDisclosureGroupStyle>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListDisclosureGroupStyledContainer<SidebarDisclosureGroupStyle> and conformance ListDisclosureGroupStyledContainer<A>);
  }

  return result;
}

void type metadata accessor for ListDisclosureGroupStyledContainer<SidebarDisclosureGroupStyle>()
{
  if (!lazy cache variable for type metadata for ListDisclosureGroupStyledContainer<SidebarDisclosureGroupStyle>)
  {
    lazy protocol witness table accessor for type SidebarDisclosureGroupStyle and conformance SidebarDisclosureGroupStyle();
    v0 = type metadata accessor for ListDisclosureGroupStyledContainer();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ListDisclosureGroupStyledContainer<SidebarDisclosureGroupStyle>);
    }
  }
}

SwiftUI::AnimationTimelineSchedule __swiftcall AnimationTimelineSchedule.init(minimumInterval:paused:)(SwiftUI::AnimationTimelineSchedule minimumInterval, Swift::Bool paused)
{
  v4 = *&minimumInterval.paused;
  if (paused)
  {
    v4 = 0.00833333333;
  }

  *v3 = v4;
  *(v3 + 8) = v2;
  minimumInterval.minimumInterval = v4;
  return minimumInterval;
}

uint64_t AnimationTimelineSchedule.entries(from:mode:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 8) | *a2;
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v3;
  }

  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 16))(a3, a1, v8);
  result = type metadata accessor for AnimationTimelineSchedule.Entries();
  v10 = a3 + *(result + 20);
  *v10 = v7;
  *(v10 + 8) = v6 & 1;
  return result;
}

uint64_t AnimationTimelineSchedule.Entries.next()@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + *(type metadata accessor for AnimationTimelineSchedule.Entries() + 20) + 8))
  {
    v3 = type metadata accessor for Date();
    v4 = *(*(v3 - 8) + 56);

    return v4(a1, 1, 1, v3);
  }

  else
  {
    v6 = type metadata accessor for Date();
    v7 = *(v6 - 8);
    (*(v7 + 16))(a1, v1, v6);
    (*(v7 + 56))(a1, 0, 1, v6);

    return static Date.+= infix(_:_:)();
  }
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance AnimationTimelineSchedule.Entries()
{
  v1 = specialized _copySequenceToContiguousArray<A>(_:)(v0);
  outlined destroy of AnimationTimelineSchedule.Entries(v0);
  return v1;
}

uint64_t *initializeBufferWithCopyOfBuffer for AnimationTimelineSchedule.Entries(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = a1 + v8;
    v10 = a2 + v8;
    *v9 = *v10;
    v9[8] = v10[8];
  }

  return a1;
}

uint64_t initializeWithCopy for AnimationTimelineSchedule.Entries(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *v9;
  *(v8 + 8) = *(v9 + 8);
  return a1;
}

uint64_t assignWithCopy for AnimationTimelineSchedule.Entries(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = *(v9 + 8);
  *v8 = *v9;
  *(v8 + 8) = v10;
  return a1;
}

uint64_t initializeWithTake for AnimationTimelineSchedule.Entries(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *v9;
  *(v8 + 8) = *(v9 + 8);
  return a1;
}

uint64_t assignWithTake for AnimationTimelineSchedule.Entries(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *v9;
  *(v8 + 8) = *(v9 + 8);
  return a1;
}

uint64_t UISplitViewControllerProxyStorage.proxy.getter@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type Map<UISplitViewControllerProxyModifier, (_:)> and conformance Map<A, B>(&lazy protocol witness table cache variable for type UISplitViewControllerProxyStorage and conformance UISplitViewControllerProxyStorage, type metadata accessor for UISplitViewControllerProxyStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a1 = *(v1 + 16);
}

uint64_t UISplitViewControllerProxy.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v7 & 1) != 0))
  {
    outlined init with copy of Any(*(v5 + 56) + 32 * v6, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  type metadata accessor for Any?();
  v8 = *(v4 + *MEMORY[0x1E69E6F98] + 8);
  v9 = swift_dynamicCast();
  return (*(*(v8 - 8) + 56))(a2, v9 ^ 1u, 1, v8);
}

uint64_t View.splitViewControllerProxy(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x18D00A570](v4, a3, &type metadata for UISplitViewControllerProxyModifier);
}

uint64_t UISplitViewControllerProxy.subscript.setter(uint64_t a1, void *a2)
{
  specialized UISplitViewControllerProxy.subscript.setter(a1, a2);
  v3 = type metadata accessor for Optional();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1, v3);
}

void (*UISplitViewControllerProxy.subscript.modify(void *a1, uint64_t *a2))(void ***a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = type metadata accessor for Optional();
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  UISplitViewControllerProxy.subscript.getter(a2, v11);
  return UISplitViewControllerProxy.subscript.modify;
}

void UISplitViewControllerProxy.subscript.modify(void ***a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (v6[2])((*a1)[4], v4, v5);

    specialized UISplitViewControllerProxy.subscript.setter(v3, v7);
    v8 = v6[1];
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {

    specialized UISplitViewControllerProxy.subscript.setter(v4, v7);
    (v6[1])(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t static UISplitViewControllerProxyModifier._makeView(modifier:inputs:body:)(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 48);
  v5 = *(a2 + 16);
  v25 = *(a2 + 32);
  v26 = v4;
  v6 = *(a2 + 48);
  v27 = *(a2 + 64);
  v7 = *(a2 + 16);
  v24[0] = *a2;
  v24[1] = v7;
  v20 = v25;
  v21 = v6;
  v22 = *(a2 + 64);
  v8 = *a1;
  v28 = *(a2 + 80);
  v23 = *(a2 + 80);
  v18 = v24[0];
  v19 = v5;
  LODWORD(v31) = v8;
  *(&v31 + 1) = partial apply for specialized closure #1 in Attribute.subscript.getter;
  *&v32 = swift_getKeyPath();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _ViewInputs(v24, v37);
  type metadata accessor for (_:)();
  type metadata accessor for Map<UISplitViewControllerProxyModifier, (_:)>();
  lazy protocol witness table accessor for type Map<UISplitViewControllerProxyModifier, (_:)> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<UISplitViewControllerProxyModifier, (_:)> and conformance Map<A, B>, type metadata accessor for Map<UISplitViewControllerProxyModifier, (_:)>);

  v9 = Attribute.init<A>(body:value:flags:update:)();

  lazy protocol witness table accessor for type UISplitViewControllerProxyKey and conformance UISplitViewControllerProxyKey();
  PropertyList.subscript.getter();
  DWORD2(v37[0]) = v9;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for UISplitViewControllerProxyStorage();
  lazy protocol witness table accessor for type UISplitViewControllerProxyModifier.EnsureObservableProxy and conformance UISplitViewControllerProxyModifier.EnsureObservableProxy();
  Attribute.init<A>(body:value:flags:update:)();
  *&v37[0] = AGCreateWeakAttribute();
  PropertyList.subscript.setter();
  v29[2] = v20;
  v29[3] = v21;
  v29[4] = v22;
  v30 = v23;
  v29[0] = v18;
  v29[1] = v19;
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v17 = v23;
  v12 = v18;
  v13 = v19;
  v10 = outlined init with copy of _ViewInputs(v29, v37);
  a3(v10, &v12);
  v33 = v14;
  v34 = v15;
  v35 = v16;
  v36 = v17;
  v31 = v12;
  v32 = v13;
  outlined destroy of _ViewInputs(&v31);
  v37[2] = v20;
  v37[3] = v21;
  v37[4] = v22;
  v38 = v23;
  v37[0] = v18;
  v37[1] = v19;
  return outlined destroy of _ViewInputs(v37);
}

uint64_t key path setter for UISplitViewControllerProxyModifier.transform : UISplitViewControllerProxyModifier(uint64_t *a1, uint64_t (**a2)())
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@inout UISplitViewControllerProxy) -> (@out ());
  a2[1] = v5;
  return result;
}

void (**UISplitViewControllerProxyModifier.EnsureObservableProxy.updateValue()())(unint64_t *)
{
  v18 = *MEMORY[0x1E69E9840];
  Attribute = AGWeakAttributeGetAttribute();
  v1 = *MEMORY[0x1E698D3F8];
  type metadata accessor for UISplitViewControllerProxyStorage();
  if (Attribute == v1)
  {
    if (!AGGraphGetOutputValue())
    {
      v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs14PartialKeyPathCySo21UISplitViewControllerCG_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      type metadata accessor for (_:)();
      v13 = *AGGraphGetValue();

      v13(&v16);

      v14 = v16;
      v15 = swift_allocObject();
      ObservationRegistrar.init()();
      *(v15 + 16) = v14;
      v17 = v15;
      AGGraphSetOutputValue();
    }

    v2 = 0;
  }

  else
  {
    Value = AGGraphGetValue();
    v5 = v4;
    v2 = *Value;
    if ((v4 & 1) != 0 || !AGGraphGetOutputValue())
    {
      v16 = v2;

      AGGraphSetOutputValue();
      goto LABEL_9;
    }
  }

  v5 = 0;
LABEL_9:
  type metadata accessor for (_:)();
  result = AGGraphGetValue();
  v7 = *result;
  if (v8)
  {
    goto LABEL_12;
  }

  if (!v2)
  {
    return result;
  }

  if (v5)
  {
LABEL_12:
    type metadata accessor for UISplitViewControllerProxyStorage();
    result = AGGraphGetOutputValue();
    if (result)
    {
      v9 = *result;
      swift_getKeyPath();
      v16 = v9;
      lazy protocol witness table accessor for type Map<UISplitViewControllerProxyModifier, (_:)> and conformance Map<A, B>(&lazy protocol witness table cache variable for type UISplitViewControllerProxyStorage and conformance UISplitViewControllerProxyStorage, type metadata accessor for UISplitViewControllerProxyStorage);

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v16 = *(v9 + 2);

      v7(&v16);

      LOBYTE(v17) = 17;
      result = AGGraphGetOutputValue();
      if (result)
      {
        v10 = swift_allocObject();
        swift_weakInit();
        v11 = v16;
        v12 = swift_allocObject();
        *(v12 + 16) = v10;
        *(v12 + 24) = v11;

        static Update.enqueueAction(reason:_:)();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }
}

uint64_t closure #1 in UISplitViewControllerProxyModifier.EnsureObservableProxy.updateValue()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type Map<UISplitViewControllerProxyModifier, (_:)> and conformance Map<A, B>(&lazy protocol witness table cache variable for type UISplitViewControllerProxyStorage and conformance UISplitViewControllerProxyStorage, type metadata accessor for UISplitViewControllerProxyStorage);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t key path getter for UISplitViewControllerProxyStorage.proxy : UISplitViewControllerProxyStorage@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type Map<UISplitViewControllerProxyModifier, (_:)> and conformance Map<A, B>(&lazy protocol witness table cache variable for type UISplitViewControllerProxyStorage and conformance UISplitViewControllerProxyStorage, type metadata accessor for UISplitViewControllerProxyStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
}

uint64_t key path setter for UISplitViewControllerProxyStorage.proxy : UISplitViewControllerProxyStorage()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type Map<UISplitViewControllerProxyModifier, (_:)> and conformance Map<A, B>(&lazy protocol witness table cache variable for type UISplitViewControllerProxyStorage and conformance UISplitViewControllerProxyStorage, type metadata accessor for UISplitViewControllerProxyStorage);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t UISplitViewControllerProxyStorage.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC7SwiftUI33UISplitViewControllerProxyStorage___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance UISplitViewControllerProxyKey()
{
  type metadata accessor for UISplitViewControllerProxyStorage();

  return static WeakAttribute.== infix(_:_:)();
}

uint64_t specialized UISplitViewControllerProxy.subscript.setter(uint64_t a1, void *a2)
{
  v4 = *(*a2 + *MEMORY[0x1E69E6F98] + 8);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5, v7);
  v10 = *(v4 - 8);
  if ((*(v10 + 48))(v9, 1, v4) == 1)
  {
    (*(v6 + 8))(v9, v5);
    v13 = 0u;
    v14 = 0u;
  }

  else
  {
    *(&v14 + 1) = v4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v13);
    (*(v10 + 32))(boxed_opaque_existential_1, v9, v4);
  }

  return specialized Dictionary.subscript.setter(&v13, a2);
}

void type metadata accessor for Map<UISplitViewControllerProxyModifier, (_:)>()
{
  if (!lazy cache variable for type metadata for Map<UISplitViewControllerProxyModifier, (_:)>)
  {
    type metadata accessor for (_:)();
    v0 = type metadata accessor for Map();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Map<UISplitViewControllerProxyModifier, (_:)>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type UISplitViewControllerProxyModifier.EnsureObservableProxy and conformance UISplitViewControllerProxyModifier.EnsureObservableProxy()
{
  result = lazy protocol witness table cache variable for type UISplitViewControllerProxyModifier.EnsureObservableProxy and conformance UISplitViewControllerProxyModifier.EnsureObservableProxy;
  if (!lazy protocol witness table cache variable for type UISplitViewControllerProxyModifier.EnsureObservableProxy and conformance UISplitViewControllerProxyModifier.EnsureObservableProxy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UISplitViewControllerProxyModifier.EnsureObservableProxy and conformance UISplitViewControllerProxyModifier.EnsureObservableProxy);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Map<UISplitViewControllerProxyModifier, (_:)> and conformance Map<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PlainButtonStyle.buttonStyleRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  return result;
}

uint64_t protocol witness for ButtonStyleConvertible.buttonStyleRepresentation.getter in conformance PlainButtonStyle@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  return result;
}

void protocol witness for PrimitiveButtonStyle.makeBody(configuration:) in conformance PlainButtonStyle_Car(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(a1, v7, type metadata accessor for PrimitiveButtonStyleConfiguration);
  *a2 = *v7;
  v8 = *(v5 + 32);
  _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_2(0, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(&v7[v8], &a2[*(v9 + 36)], type metadata accessor for ButtonAction);
  outlined destroy of PrimitiveButtonStyleConfiguration(v7);
  KeyPath = swift_getKeyPath();
  type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle_UIKit>>();
  v12 = &a2[*(v11 + 36)];
  *v12 = KeyPath;
  v12[8] = 0;
}

uint64_t PlainButtonStyle_UIKit.makeBody(configuration:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = *a1;
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(a1, &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PrimitiveButtonStyleConfiguration);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  outlined init with take of PrimitiveButtonStyleConfiguration(&v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8);
  v11[12] = 1;
  v11[8] = 1;
  v11[0] = 1;
  type metadata accessor for ModifiedContent<UIKitButton<PrimitiveButtonStyleConfiguration.Label>, UIKitSystemButtonConfigurationModifier>(0, &lazy cache variable for type metadata for ModifiedContent<UIKitButton<PrimitiveButtonStyleConfiguration.Label>, UIKitSystemButtonConfigurationModifier>, &lazy cache variable for type metadata for UIKitButton<PrimitiveButtonStyleConfiguration.Label>, type metadata accessor for UIKitButton, type metadata accessor for UIKitSystemButtonConfigurationModifier);
  result = static UIButton.Configuration.plain()();
  *a2 = v7;
  *(a2 + 8) = partial apply for implicit closure #2 in implicit closure #1 in FlexibleBorderedButtonStyle.makeBody(configuration:);
  *(a2 + 16) = v9;
  *(a2 + 24) = 0;
  *(a2 + 28) = 0;
  *(a2 + 36) = 1;
  *(a2 + 37) = 514;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 56) = 0;
  *(a2 + 80) = 1;
  return result;
}

uint64_t key path getter for EnvironmentValues.isFocused : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_2(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusedKey>, &type metadata for EnvironmentValues.IsFocusedKey, &protocol witness table for EnvironmentValues.IsFocusedKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsFocusedKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_2(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusedKey>, &type metadata for EnvironmentValues.IsFocusedKey, &protocol witness table for EnvironmentValues.IsFocusedKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsFocusedKey> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.isFocused : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_2(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusedKey>, &type metadata for EnvironmentValues.IsFocusedKey, &protocol witness table for EnvironmentValues.IsFocusedKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsFocusedKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

void type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle_UIKit>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle_UIKit>>)
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_2(255, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
    type metadata accessor for PrimitiveButtonStyleContainerModifier<PlainButtonStyle_Car>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<PlainButtonStyle_UIKit>, lazy protocol witness table accessor for type PlainButtonStyle_UIKit and conformance PlainButtonStyle_UIKit, &unk_1EFFC1510, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle_UIKit>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PlainButtonStyle_UIKit and conformance PlainButtonStyle_UIKit()
{
  result = lazy protocol witness table cache variable for type PlainButtonStyle_UIKit and conformance PlainButtonStyle_UIKit;
  if (!lazy protocol witness table cache variable for type PlainButtonStyle_UIKit and conformance PlainButtonStyle_UIKit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlainButtonStyle_UIKit and conformance PlainButtonStyle_UIKit);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<PlainButtonStyle_UIKit> and conformance PrimitiveButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<PlainButtonStyle_UIKit> and conformance PrimitiveButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<PlainButtonStyle_UIKit> and conformance PrimitiveButtonStyleContainerModifier<A>)
  {
    type metadata accessor for PrimitiveButtonStyleContainerModifier<PlainButtonStyle_Car>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<PlainButtonStyle_UIKit>, lazy protocol witness table accessor for type PlainButtonStyle_UIKit and conformance PlainButtonStyle_UIKit, &unk_1EFFC1510, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<PlainButtonStyle_UIKit> and conformance PrimitiveButtonStyleContainerModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<UIKitButton<PrimitiveButtonStyleConfiguration.Label>, UIKitSystemButtonConfigurationModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<UIKitButton<PrimitiveButtonStyleConfiguration.Label>, UIKitSystemButtonConfigurationModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<UIKitButton<PrimitiveButtonStyleConfiguration.Label>, UIKitSystemButtonConfigurationModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<UIKitButton<PrimitiveButtonStyleConfiguration.Label>, UIKitSystemButtonConfigurationModifier>(255, &lazy cache variable for type metadata for ModifiedContent<UIKitButton<PrimitiveButtonStyleConfiguration.Label>, UIKitSystemButtonConfigurationModifier>, &lazy cache variable for type metadata for UIKitButton<PrimitiveButtonStyleConfiguration.Label>, type metadata accessor for UIKitButton, type metadata accessor for UIKitSystemButtonConfigurationModifier);
    lazy protocol witness table accessor for type UIKitButton<PrimitiveButtonStyleConfiguration.Label> and conformance UIKitButton<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<UIKitButton<PrimitiveButtonStyleConfiguration.Label>, UIKitSystemButtonConfigurationModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UIKitButton<PrimitiveButtonStyleConfiguration.Label> and conformance UIKitButton<A>()
{
  result = lazy protocol witness table cache variable for type UIKitButton<PrimitiveButtonStyleConfiguration.Label> and conformance UIKitButton<A>;
  if (!lazy protocol witness table cache variable for type UIKitButton<PrimitiveButtonStyleConfiguration.Label> and conformance UIKitButton<A>)
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_2(255, &lazy cache variable for type metadata for UIKitButton<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for UIKitButton);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitButton<PrimitiveButtonStyleConfiguration.Label> and conformance UIKitButton<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _VariadicView.Tree<PassthroughNavigationView, _NavigationViewStyleConfiguration.Content> and conformance <> _VariadicView.Tree<A, B>()
{
  result = lazy protocol witness table cache variable for type _VariadicView.Tree<PassthroughNavigationView, _NavigationViewStyleConfiguration.Content> and conformance <> _VariadicView.Tree<A, B>;
  if (!lazy protocol witness table cache variable for type _VariadicView.Tree<PassthroughNavigationView, _NavigationViewStyleConfiguration.Content> and conformance <> _VariadicView.Tree<A, B>)
  {
    type metadata accessor for _VariadicView.Tree<PassthroughNavigationView, _NavigationViewStyleConfiguration.Content>();
    lazy protocol witness table accessor for type PassthroughNavigationView and conformance PassthroughNavigationView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView.Tree<PassthroughNavigationView, _NavigationViewStyleConfiguration.Content> and conformance <> _VariadicView.Tree<A, B>);
  }

  return result;
}

void type metadata accessor for _VariadicView.Tree<PassthroughNavigationView, _NavigationViewStyleConfiguration.Content>()
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<PassthroughNavigationView, _NavigationViewStyleConfiguration.Content>)
  {
    v0 = type metadata accessor for _VariadicView.Tree();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _VariadicView.Tree<PassthroughNavigationView, _NavigationViewStyleConfiguration.Content>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PassthroughNavigationView and conformance PassthroughNavigationView()
{
  result = lazy protocol witness table cache variable for type PassthroughNavigationView and conformance PassthroughNavigationView;
  if (!lazy protocol witness table cache variable for type PassthroughNavigationView and conformance PassthroughNavigationView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PassthroughNavigationView and conformance PassthroughNavigationView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PassthroughNavigationView and conformance PassthroughNavigationView;
  if (!lazy protocol witness table cache variable for type PassthroughNavigationView and conformance PassthroughNavigationView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PassthroughNavigationView and conformance PassthroughNavigationView);
  }

  return result;
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeViewList(root:inputs:body:) in conformance PassthroughNavigationView(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type PassthroughNavigationView and conformance PassthroughNavigationView();

  return MEMORY[0x1EEDDCF90](a1, a2, a3, a4, a5, v10);
}

uint64_t protocol witness for _VariadicView_ViewRoot.body(children:) in conformance PassthroughNavigationView@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;

  return outlined init with copy of _VariadicView_Children(a1, a2 + 24);
}

unint64_t instantiation function for generic protocol witness table for PassthroughNavigationView(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PassthroughNavigationView and conformance PassthroughNavigationView();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type HStack<_VariadicView_Children> and conformance HStack<A>()
{
  result = lazy protocol witness table cache variable for type HStack<_VariadicView_Children> and conformance HStack<A>;
  if (!lazy protocol witness table cache variable for type HStack<_VariadicView_Children> and conformance HStack<A>)
  {
    type metadata accessor for HStack<_VariadicView_Children>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HStack<_VariadicView_Children> and conformance HStack<A>);
  }

  return result;
}

void type metadata accessor for HStack<_VariadicView_Children>()
{
  if (!lazy cache variable for type metadata for HStack<_VariadicView_Children>)
  {
    v0 = type metadata accessor for HStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HStack<_VariadicView_Children>);
    }
  }
}

uint64_t OutlineGroup<>.init<A>(_:children:content:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v36 = a2;
  v37 = a4;
  v38 = a9;
  v39 = a3;
  v35 = a1;
  v13 = (*a2 + *MEMORY[0x1E69E77B0]);
  v14 = *v13;
  v15 = *(v13[1] + 16);
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v46 = v15;
  v47 = a5;
  v48 = a6;
  v49 = a6;
  v50 = a6;
  v51 = a7;
  v52 = AssociatedConformanceWitness;
  v17 = type metadata accessor for OutlinePrimitive.Base();
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
  v20 = &v30 - v19;
  v21 = *(v15 - 8);
  (*(v21 + 16))(&v30 - v19, a1, v15, v18);
  swift_storeEnumTagMultiPayload();
  v40 = v15;
  v41 = a5;
  v42 = a6;
  v43 = v14;
  v44 = a7;
  v45 = a8;
  v22 = a8;
  KeyPath = swift_getKeyPath();
  v23 = a5;
  v24 = a7;
  v25 = AssociatedConformanceWitness;
  v32 = static OutlineGroup.ChildPath.state(_:)(v36, v23, a6, a6, a6, a7, AssociatedConformanceWitness);
  v31 = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = a6;
  *(v27 + 24) = v22;
  v28 = v37;

  OutlineGroup.init(base:id:children:parentContent:leafContent:grouping:)(v20, KeyPath, v32, v31, v39, v28, v39, v28, v38, partial apply for defaultGrouping<A>(isExpanded:parent:), v27, v15, a6, a6, a6, v24, v25);

  return (*(v21 + 8))(v35, v15);
}

{
  v31 = a8;
  v32 = a1;
  v33 = a4;
  v34 = a9;
  v35 = a3;
  v36 = a2;
  v13 = (*a2 + *MEMORY[0x1E69E77B0]);
  v14 = *v13;
  v15 = *(v13[1] + 16);
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v43 = v15;
  v44 = a5;
  v30 = v15;
  v45 = a6;
  v46 = a6;
  v47 = a6;
  v48 = a7;
  v49 = AssociatedConformanceWitness;
  v17 = type metadata accessor for OutlinePrimitive.Base();
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
  v20 = &KeyPath - v19;
  v21 = *(v14 - 8);
  (*(v21 + 16))(&KeyPath - v19, a1, v14, v18);
  swift_storeEnumTagMultiPayload();
  v37 = v15;
  v38 = a5;
  v39 = a6;
  v40 = v14;
  v22 = v31;
  v41 = a7;
  v42 = v31;
  KeyPath = swift_getKeyPath();
  v23 = static OutlineGroup.ChildPath.state(_:)(v36, a5, a6, a6, a6, a7, AssociatedConformanceWitness);
  v25 = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = a6;
  *(v26 + 24) = v22;
  v27 = v33;

  OutlineGroup.init(base:id:children:parentContent:leafContent:grouping:)(v20, KeyPath, v23, v25, v35, v27, v35, v27, v34, defaultGrouping<A>(isExpanded:parent:)partial apply, v26, v30, a6, a6, a6, a7, AssociatedConformanceWitness);

  return (*(v21 + 8))(v32, v14);
}

uint64_t OutlineGroup<>.init<A>(_:children:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v31 = a1;
  v32 = a6;
  v33 = a2;
  v10 = (*a2 + *MEMORY[0x1E69E77B0]);
  v11 = *v10;
  v12 = *(v10[1] + 16);
  v13 = type metadata accessor for TableRow();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = v12;
  v40 = a3;
  v41 = v13;
  v42 = v13;
  v43 = v13;
  v44 = a4;
  v45 = AssociatedConformanceWitness;
  v15 = type metadata accessor for OutlinePrimitive.Base();
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v18 = &v26 - v17;
  v30 = *(v11 - 8);
  (*(v30 + 16))(&v26 - v17, a1, v11, v16);
  swift_storeEnumTagMultiPayload();
  v34 = v12;
  v35 = a3;
  v36 = v11;
  v37 = a4;
  v38 = a5;
  KeyPath = swift_getKeyPath();
  v19 = swift_checkMetadataState();
  v20 = static OutlineGroup.ChildPath.state(_:)(v33, a3, v19, v19, v19, a4, AssociatedConformanceWitness);
  v27 = v21;
  v28 = v20;
  v22 = swift_allocObject();
  v22[2] = v12;
  v22[3] = a3;
  v22[4] = v11;
  v22[5] = a4;
  v22[6] = a5;
  v23 = swift_allocObject();
  v23[2] = v12;
  v23[3] = a3;
  v23[4] = v11;
  v23[5] = a4;
  v23[6] = a5;
  v24 = swift_allocObject();
  *(v24 + 16) = v19;
  *(v24 + 24) = swift_getWitnessTable();
  OutlineGroup.init(base:id:children:parentContent:leafContent:grouping:)(v18, KeyPath, v28, v27, partial apply for closure #1 in OutlineGroup<>.init<A>(_:children:), v22, partial apply for closure #2 in OutlineGroup<>.init<A>(_:children:), v23, v32, defaultGrouping<A>(isExpanded:parent:)partial apply, v24, v12, v19, v19, v19, a4, AssociatedConformanceWitness);

  return (*(v30 + 8))(v31, v11);
}

{
  v31 = a1;
  v32 = a6;
  v33 = a2;
  v10 = (*a2 + *MEMORY[0x1E69E77B0]);
  v11 = *v10;
  v12 = *(v10[1] + 16);
  v13 = type metadata accessor for TableRow();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = v12;
  v40 = a3;
  v41 = v13;
  v42 = v13;
  v43 = v13;
  v44 = a4;
  v45 = AssociatedConformanceWitness;
  v15 = type metadata accessor for OutlinePrimitive.Base();
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v18 = &v26 - v17;
  v30 = *(v12 - 8);
  (*(v30 + 16))(&v26 - v17, a1, v12, v16);
  swift_storeEnumTagMultiPayload();
  v34 = v12;
  v35 = a3;
  v36 = v11;
  v37 = a4;
  v38 = a5;
  KeyPath = swift_getKeyPath();
  v19 = swift_checkMetadataState();
  v20 = static OutlineGroup.ChildPath.state(_:)(v33, a3, v19, v19, v19, a4, AssociatedConformanceWitness);
  v27 = v21;
  v28 = v20;
  v22 = swift_allocObject();
  v22[2] = v12;
  v22[3] = a3;
  v22[4] = v11;
  v22[5] = a4;
  v22[6] = a5;
  v23 = swift_allocObject();
  v23[2] = v12;
  v23[3] = a3;
  v23[4] = v11;
  v23[5] = a4;
  v23[6] = a5;
  v24 = swift_allocObject();
  *(v24 + 16) = v19;
  *(v24 + 24) = swift_getWitnessTable();
  OutlineGroup.init(base:id:children:parentContent:leafContent:grouping:)(v18, KeyPath, v28, v27, partial apply for closure #1 in OutlineGroup<>.init<A>(_:children:), v22, partial apply for closure #1 in OutlineGroup<>.init<A>(_:children:), v23, v32, defaultGrouping<A>(isExpanded:parent:)partial apply, v24, v12, v19, v19, v19, a4, AssociatedConformanceWitness);

  return (*(v30 + 8))(v31, v12);
}

uint64_t closure #1 in OutlineGroup<>.init<A>(_:children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  return TableRow.init(_:)(v7, a2, a3);
}

uint64_t OutlineGroup<>.init<A>(_:id:children:content:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v34 = a8;
  v35 = a5;
  v37 = a2;
  v38 = a4;
  v32 = a1;
  v36 = a9;
  v13 = *a2;
  v14 = *a3;
  v31[1] = a3;
  v15 = *MEMORY[0x1E69E77B0];
  v33 = *(*(v14 + *MEMORY[0x1E69E77B0] + 8) + 16);
  v16 = *(v13 + v15 + 8);
  v17 = *(v13 + v15);
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = v33;
  v40 = v16;
  v41 = a6;
  v42 = a6;
  v43 = a6;
  v44 = a7;
  v45 = AssociatedConformanceWitness;
  v19 = type metadata accessor for OutlinePrimitive.Base();
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v19);
  v22 = v31 - v21;
  v23 = *(v17 - 8);
  (*(v23 + 16))(v31 - v21, a1, v17, v20);
  swift_storeEnumTagMultiPayload();
  v24 = static OutlineGroup.ChildPath.state(_:)(a3, v16, a6, a6, a6, a7, AssociatedConformanceWitness);
  v26 = v25;
  v27 = swift_allocObject();
  v28 = v34;
  v29 = v35;
  *(v27 + 16) = a6;
  *(v27 + 24) = v28;

  OutlineGroup.init(base:id:children:parentContent:leafContent:grouping:)(v22, v37, v24, v26, v38, v29, v38, v29, v36, defaultGrouping<A>(isExpanded:parent:)partial apply, v27, v33, a6, a6, a6, a7, AssociatedConformanceWitness);

  return (*(v23 + 8))(v32, v17);
}

uint64_t OutlineGroup<>.init<A>(_:id:children:content:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v32 = a8;
  v33 = a5;
  v35 = a2;
  v36 = a4;
  v31 = a1;
  v34 = a9;
  v13 = *a2;
  v14 = *a3;
  v30 = a3;
  v15 = *(*(v14 + *MEMORY[0x1E69E77B0] + 8) + 16);
  v16 = *(v13 + *MEMORY[0x1E69E77B0] + 8);
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v37 = v15;
  v38 = v16;
  v39 = a6;
  v40 = a6;
  v41 = a6;
  v42 = a7;
  v43 = AssociatedConformanceWitness;
  v18 = type metadata accessor for OutlinePrimitive.Base();
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
  v21 = &v30 - v20;
  v22 = *(v15 - 8);
  (*(v22 + 16))(&v30 - v20, a1, v15, v19);
  swift_storeEnumTagMultiPayload();
  v23 = static OutlineGroup.ChildPath.state(_:)(a3, v16, a6, a6, a6, a7, AssociatedConformanceWitness);
  v25 = v24;
  v26 = swift_allocObject();
  v27 = v32;
  v28 = v33;
  *(v26 + 16) = a6;
  *(v26 + 24) = v27;

  OutlineGroup.init(base:id:children:parentContent:leafContent:grouping:)(v21, v35, v23, v25, v36, v28, v36, v28, v34, defaultGrouping<A>(isExpanded:parent:)partial apply, v26, v15, a6, a6, a6, a7, AssociatedConformanceWitness);

  return (*(v22 + 8))(v31, v15);
}

uint64_t OutlineGroup<>.init<A>(_:children:expandedElements:content:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v35 = a7;
  v36 = a5;
  v39 = a9;
  v40 = a6;
  v37 = a4;
  v38 = a3;
  v33 = a1;
  v34 = a2;
  v15 = (*a2 + *MEMORY[0x1E69E77B0]);
  v16 = *v15;
  v17 = *(v15[1] + 16);
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v47 = v17;
  v48 = a8;
  v49 = a10;
  v50 = a10;
  v51 = a10;
  v52 = a11;
  v53 = AssociatedConformanceWitness;
  v18 = type metadata accessor for OutlinePrimitive.Base();
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
  v21 = &v29 - v20;
  v22 = *(v17 - 8);
  (*(v22 + 16))(&v29 - v20, a1, v17, v19);
  swift_storeEnumTagMultiPayload();
  v41 = v17;
  v42 = a8;
  v43 = a10;
  v44 = v16;
  v45 = a11;
  v46 = a12;
  KeyPath = swift_getKeyPath();
  v23 = a8;
  v24 = AssociatedConformanceWitness;
  v30 = static OutlineGroup.ChildPath.state(_:)(v34, v23, a10, a10, a10, a11, AssociatedConformanceWitness);
  v29 = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = a10;
  *(v26 + 24) = a12;
  v27 = v35;

  OutlineGroup.init(base:id:children:parentContent:leafContent:grouping:expandedElements:)(v21, KeyPath, v30, v29, v40, v27, v40, v27, v39, defaultGrouping<A>(isExpanded:parent:)partial apply, v26, v38, v37, v36, v17, a10, a10, a10, a11, v24);

  return (*(v22 + 8))(v33, v17);
}

{
  v36 = a7;
  v37 = a5;
  v41 = a6;
  v42 = a2;
  v38 = a4;
  v39 = a3;
  v35 = a1;
  v40 = a9;
  v34 = a12;
  v15 = (*a2 + *MEMORY[0x1E69E77B0]);
  v16 = *v15;
  v17 = *(v15[1] + 16);
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v49 = v17;
  v50 = a8;
  v33 = v17;
  v51 = a10;
  v52 = a10;
  v53 = a10;
  v54 = a11;
  v55 = AssociatedConformanceWitness;
  v19 = type metadata accessor for OutlinePrimitive.Base();
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v19);
  v22 = &v31 - v21;
  v23 = *(v16 - 8);
  (*(v23 + 16))(&v31 - v21, a1, v16, v20);
  swift_storeEnumTagMultiPayload();
  v43 = v17;
  v44 = a8;
  v45 = a10;
  v46 = v16;
  v24 = v34;
  v47 = a11;
  v48 = v34;
  KeyPath = swift_getKeyPath();
  v25 = static OutlineGroup.ChildPath.state(_:)(v42, a8, a10, a10, a10, a11, AssociatedConformanceWitness);
  v27 = v26;
  v28 = swift_allocObject();
  *(v28 + 16) = a10;
  *(v28 + 24) = v24;
  v29 = v36;

  OutlineGroup.init(base:id:children:parentContent:leafContent:grouping:expandedElements:)(v22, KeyPath, v25, v27, v41, v29, v41, v29, v40, defaultGrouping<A>(isExpanded:parent:)partial apply, v28, v39, v38, v37, v33, a10, a10, a10, a11, AssociatedConformanceWitness);

  return (*(v23 + 8))(v35, v16);
}

uint64_t OutlineGroup<>.init<A>(_:id:childrenGetter:content:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v29 = a3;
  v30 = a5;
  v32 = a8;
  v33 = a4;
  v27 = a1;
  v31 = a2;
  v13 = *a2;
  v28 = a10;
  v14 = *(v13 + *MEMORY[0x1E69E77B0] + 8);
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = a6;
  v35 = v14;
  v36 = a7;
  v37 = a7;
  v38 = a7;
  v39 = a9;
  v40 = AssociatedConformanceWitness;
  v16 = type metadata accessor for OutlinePrimitive.Base();
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v16);
  v19 = &v27 - v18;
  v20 = *(a6 - 8);
  (*(v20 + 16))(&v27 - v18, a1, a6, v17);
  swift_storeEnumTagMultiPayload();
  v29 = static OutlineGroup.ChildPath.closure(_:)(v29);
  v22 = v21;
  v23 = swift_allocObject();
  v24 = v28;
  *(v23 + 16) = a7;
  *(v23 + 24) = v24;
  v25 = v30;

  OutlineGroup.init(base:id:children:parentContent:leafContent:grouping:)(v19, v31, v29, v22, v33, v25, v33, v25, v32, defaultGrouping<A>(isExpanded:parent:)partial apply, v23, a6, a7, a7, a7, a9, AssociatedConformanceWitness);

  return (*(v20 + 8))(v27, a6);
}

uint64_t OutlineGroup<>.init<A>(_:id:expandedElements:childrenGetter:content:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v35 = a8;
  v36 = a7;
  v32 = a5;
  v33 = a4;
  v34 = a3;
  v27 = a1;
  v31 = a2;
  v29 = a6;
  v30 = a9;
  v28 = a13;
  v14 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v37 = a10;
  v38 = v14;
  v39 = a11;
  v40 = a11;
  v41 = a11;
  v42 = a12;
  v43 = AssociatedConformanceWitness;
  v16 = type metadata accessor for OutlinePrimitive.Base();
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v16);
  v19 = &v27 - v18;
  v20 = *(a10 - 8);
  (*(v20 + 16))(&v27 - v18, a1, a10, v17);
  swift_storeEnumTagMultiPayload();
  v29 = static OutlineGroup.ChildPath.closure(_:)(v29);
  v22 = v21;
  v23 = swift_allocObject();
  v24 = v28;
  *(v23 + 16) = a11;
  *(v23 + 24) = v24;
  v25 = v30;

  OutlineGroup.init(base:id:children:parentContent:leafContent:grouping:expandedElements:)(v19, v31, v29, v22, v36, v25, v36, v25, v35, defaultGrouping<A>(isExpanded:parent:)partial apply, v23, v34, v33, v32, a10, a11, a11, a11, a12, AssociatedConformanceWitness);

  return (*(v20 + 8))(v27, a10);
}

uint64_t OutlineGroup<>.baseItems.getter()
{
  v0 = type metadata accessor for OutlinePrimitive.Base();
  result = OutlinePrimitive.Base.count.getter(v0);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for Range<Int>();
    swift_getAssociatedTypeWitness();
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    return Sequence.compactMap<A>(_:)();
  }

  return result;
}

uint64_t closure #1 in OutlineGroup<>.baseItems.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for OutlineGroup();
  v4 = type metadata accessor for OutlinePrimitive.Base();
  return OutlinePrimitive.Base.itemAt(index:)(v3, v4, a2);
}

void OutlineGroup<>.IsExpandedProjection.get(base:)()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();

  JUMPOUT(0x18D00D1E0);
}

uint64_t OutlineGroup<>.IsExpandedProjection.set(base:newValue:)(uint64_t a1, char a2, uint64_t a3)
{
  v19[1] = a1;
  v5 = *(a3 + 24);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - v8;
  v10 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v19 - v16;
  if (a2)
  {
    (*(v10 + 16))(v13, v3, v5, v15);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for Set();
    Set.insert(_:)();
    return (*(v10 + 8))(v17, v5);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for Set();
    Set.remove(_:)();
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t static OutlineGroup<>.IsExpandedProjection.== infix(_:_:)()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t OutlineGroup<>.IsExpandedProjection.hash(into:)()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int OutlineGroup<>.IsExpandedProjection.hashValue.getter()
{
  Hasher.init(_seed:)();
  OutlineGroup<>.IsExpandedProjection.hash(into:)();
  return Hasher._finalize()();
}

uint64_t OutlineGroup<>.OutlineGroupSubgroup.$expandedItems.getter()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Set();
  type metadata accessor for Binding();
  Binding.projectedValue.getter();
  return v1;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance OutlineGroup<A, B, C, D, E><>.IsExpandedProjection()
{
  Hasher.init(_seed:)();
  OutlineGroup<>.IsExpandedProjection.hash(into:)();
  return Hasher._finalize()();
}

uint64_t OutlineGroup<>.OutlineGroupSubgroup.tableRowBody.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v44 = a2;
  v42 = *(a1 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v41 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(v6 + 32);
  MEMORY[0x1EEE9AC00](v6);
  v39 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v13[6];
  v40 = v13[5];
  *&v15 = v13[2];
  *(&v15 + 1) = v9;
  v46 = v15;
  v17.i64[0] = v16;
  v17.i64[1] = v40;
  v38 = v17;
  v49 = v17;
  v48 = v15;
  v50 = v14;
  IsExpandedProjection = type metadata accessor for OutlineGroup<>.IsExpandedProjection();
  v19 = *(IsExpandedProjection - 8);
  MEMORY[0x1EEE9AC00](IsExpandedProjection);
  v21 = v34 - v20;
  v36 = OutlineGroup<>.OutlineGroupSubgroup.$expandedItems.getter();
  v34[2] = v22;
  v34[1] = v23;
  *&v48 = v36;
  *(&v48 + 1) = v22;
  v49.i64[0] = v23;
  v37 = *(a1 + 60);
  swift_getAtKeyPath();
  (*(v10 + 32))(v21, v12, v9);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for Set();
  type metadata accessor for Binding();
  swift_getWitnessTable();
  Binding.projecting<A>(_:)();
  (*(v19 + 8))(v21, IsExpandedProjection);

  v24 = v53;
  v25 = v54;
  LOBYTE(v19) = v55;
  v26 = v39;
  (*(v3 + *(a1 + 68)))(v3 + v37);
  v28 = v41;
  v27 = v42;
  (*(v42 + 16))(v41, v3, a1);
  v29 = (*(v27 + 80) + 56) & ~*(v27 + 80);
  v30 = swift_allocObject();
  v31 = v38;
  *(v30 + 16) = v46;
  *(v30 + 32) = v31;
  *(v30 + 48) = v14;
  (*(v27 + 32))(v30 + v29, v28, a1);
  v32 = v45;
  v49 = vdupq_n_s64(v45);
  v48 = v46;
  v50 = v45;
  v51 = v40;
  v52 = AssociatedConformanceWitness;
  type metadata accessor for OutlineGroup();
  v47 = v14;
  swift_getWitnessTable();
  return DisclosureTableRow.init(isExpanded:label:content:)(v24, v25, v19, v26, partial apply for closure #1 in OutlineGroup<>.OutlineGroupSubgroup.tableRowBody.getter, v32, v44);
}

uint64_t closure #1 in OutlineGroup<>.OutlineGroupSubgroup.tableRowBody.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v30 = a5;
  v31 = a4;
  v32 = a3;
  v33 = a6;
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v11;
  v35 = v12;
  v36 = v13;
  v37 = v14;
  v38 = v15;
  v16 = type metadata accessor for OutlineGroup<>.OutlineGroupSubgroup();
  (*(v8 + 16))(v10, a1 + v16[16], a2);
  v17 = *(a1 + v16[20]);

  v18 = OutlineGroup<>.OutlineGroupSubgroup.$expandedItems.getter();
  v20 = v19;
  v22 = v21;
  v23 = v16[18];
  v24 = *(a1 + v16[19]);
  v25 = a1 + v23;
  v26 = *(a1 + v23);
  v27 = *(v25 + 8);

  return OutlineGroup<>.init<A>(_:id:expandedElements:childrenGetter:content:)(v10, v17, v18, v20, v22, v24, v26, v33, v27, a2, v32, v31, v30);
}

uint64_t OutlineGroup<>.OutlineGroupSubgroup.init(expandedItems:element:data:parentContent:leafContent:children:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14)
{
  v18 = *a13;
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  v19 = (v18 + *MEMORY[0x1E69E77B0]);
  v20 = type metadata accessor for OutlineGroup<>.OutlineGroupSubgroup();
  (*(*(*v19 - 8) + 32))(&a9[v20[15]], a4);
  result = (*(*(a14 - 8) + 32))(&a9[v20[16]], a5, a14);
  v22 = &a9[v20[17]];
  *v22 = a6;
  *(v22 + 1) = a7;
  v23 = &a9[v20[18]];
  *v23 = a8;
  *(v23 + 1) = a10;
  v24 = &a9[v20[19]];
  *v24 = a11;
  *(v24 + 1) = a12;
  *&a9[v20[20]] = a13;
  return result;
}

uint64_t OutlineGroup<>.tableRowBody.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = OutlineGroup<>.baseItems.getter();
  v21 = *(v3 + *(a1 + 80));
  (*(v6 + 16))(v8, v3, a1);
  v9 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v10 = swift_allocObject();
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  *(v10 + 2) = v12;
  *(v10 + 3) = v11;
  v13 = *(a1 + 32);
  v14 = *(a1 + 56);
  *(v10 + 4) = v13;
  *(v10 + 5) = v14;
  *(v10 + 6) = a2;
  (*(v6 + 32))(&v10[v9], v8, a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for Array();
  v16 = v21;

  v26 = v12;
  v27 = v11;
  v28 = v13;
  v29 = v14;
  v30 = a2;
  type metadata accessor for OutlineGroup<>.OutlineGroupSubgroup();
  v17 = type metadata accessor for _ConditionalContent();
  WitnessTable = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  v25 = a2;
  swift_getWitnessTable();
  return ForEach<>.init<A>(_:id:content:)(&v31, v16, partial apply for closure #1 in OutlineGroup<>.tableRowBody.getter, v10, v15, v17, AssociatedTypeWitness, WitnessTable);
}

uint64_t closure #1 in OutlineGroup<>.tableRowBody.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v79 = a2;
  v80 = a1;
  v87 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v73 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v74 = &v66 - v14;
  v90 = a3;
  v91 = a4;
  v92 = a5;
  v93 = a6;
  v94 = a7;
  v15 = type metadata accessor for OutlineGroup<>.OutlineGroupSubgroup();
  v78 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v77 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v75 = &v66 - v18;
  v72 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v71 = (&v66 - v23);
  v69 = type metadata accessor for Optional();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v25 = &v66 - v24;
  v26 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v70 = &v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v67 = &v66 - v30;
  v84 = v15;
  v31 = type metadata accessor for _ConditionalContent();
  v82 = *(v31 - 8);
  v83 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v81 = &v66 - v32;
  v86 = a7;
  swift_getAssociatedConformanceWitness();
  v85 = AssociatedTypeWitness;
  v33 = v79;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v90 = a3;
  v91 = a4;
  v92 = a5;
  v93 = a5;
  v94 = a5;
  v95 = a6;
  v76 = a6;
  v96 = AssociatedConformanceWitness;
  v35 = type metadata accessor for OutlineGroup();
  v36 = (v33 + v35[21]);
  v38 = *v36;
  v37 = v36[1];
  v39 = v80;
  (*v36)();
  if ((*(v26 + 48))(v25, 1, a3) == 1)
  {
    (*(v68 + 8))(v25, v69);
    (*(v33 + v35[23]))(v39);
    v40 = v71;
    v42 = v85;
    v41 = v86;
    static TableRowBuilder.buildExpression<A>(_:)(v21, v85, a5, v86);
    v43 = *(v72 + 8);
    v43(v21, a5);
    static TableRowBuilder.buildExpression<A>(_:)(v40, v42, a5, v41);
    v43(v40, a5);
    swift_getWitnessTable();
    v44 = v81;
    static TableRowBuilder.buildEither<A, B>(second:)(v21, a5, v81);
    v43(v21, a5);
  }

  else
  {
    v45 = *(v26 + 32);
    v72 = v37;
    v71 = v38;
    v46 = v67;
    v45(v67, v25, a3);
    v69 = OutlineGroup.$expandedElements.getter();
    v68 = v47;
    v66 = v48;
    v49 = v74;
    v50 = v85;
    (*(v73 + 16))(v74, v39, v85);
    v51 = v70;
    v45(v70, v46, a3);
    v52 = (v33 + v35[22]);
    v53 = *v52;
    v54 = v52[1];
    v55 = (v33 + v35[23]);
    v56 = *v55;
    v73 = v55[1];
    v80 = *(v33 + v35[20]);
    v57 = v86;
    v42 = v50;
    v58 = v77;
    OutlineGroup<>.OutlineGroupSubgroup.init(expandedItems:element:data:parentContent:leafContent:children:id:)(v69, v68, v66, v49, v51, v53, v54, v56, v77, v73, v71, v72, v80, a3);
    v59 = v84;
    WitnessTable = swift_getWitnessTable();
    v61 = v75;
    static TableRowBuilder.buildExpression<A>(_:)(v58, v42, v59, WitnessTable);
    v62 = *(v78 + 8);

    v41 = v57;

    v62(v58, v59);
    static TableRowBuilder.buildExpression<A>(_:)(v61, v42, v59, WitnessTable);
    v62(v61, v59);
    v44 = v81;
    static TableRowBuilder.buildEither<A, B>(first:)(v58, v59, v81);
    v62(v58, v59);
  }

  v88 = swift_getWitnessTable();
  v89 = v41;
  v63 = v83;
  v64 = swift_getWitnessTable();
  static TableRowBuilder.buildExpression<A>(_:)(v44, v42, v63, v64);
  return (*(v82 + 8))(v44, v63);
}

uint64_t partial apply for closure #1 in OutlineGroup<>.tableRowBody.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v11 = *(v2 + 16);
  v6 = *(v2 + 32);
  v5 = *(v2 + 40);
  v7 = *(v2 + 48);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v8 = *(type metadata accessor for OutlineGroup() - 8);
  v9 = v2 + ((*(v8 + 80) + 56) & ~*(v8 + 80));

  return closure #1 in OutlineGroup<>.tableRowBody.getter(a1, v9, v11, *(&v11 + 1), v6, v5, v7, a2);
}

uint64_t type metadata completion function for OutlineGroup<>.OutlineGroupSubgroup()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for OutlineGroup<>.OutlineGroupSubgroup(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(v5 - 8);
  v11 = *(v10 + 80);
  v12 = v9 + v11;
  v13 = *(v10 + 64) + 7;
  v14 = (*(v10 + 80) | *(v7 + 80)) & 0x100000;
  v15 = *a2;
  *a1 = *a2;
  if ((v11 | v8) > 7 || v14 != 0 || ((((((((v13 + ((v9 + v11 + ((v8 + 24) & ~v8)) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v36 = (v15 + (((v11 | v8) & 0xF8 ^ 0x1F8) & ((v11 | v8) + 16)));
  }

  else
  {
    v18 = ~v8;
    v38 = ~v11;
    v39 = a1;
    v19 = a2[2];
    a1[1] = a2[1];
    a1[2] = v19;
    v20 = a1 + v8;
    v21 = a2 + v8;
    v22 = (v20 + 24) & v18;
    v23 = (v21 + 24) & v18;
    v24 = *(v7 + 16);
    v25 = AssociatedTypeWitness;

    v24(v22, v23, v25);
    v26 = (v22 + v12) & v38;
    (*(v10 + 16))(v26, (v23 + v12) & v38, v5);
    v27 = ((v13 + v26) & 0xFFFFFFFFFFFFFFF8);
    v28 = ((v13 + ((v23 + v12) & v38)) & 0xFFFFFFFFFFFFFFF8);
    v29 = v28[1];
    *v27 = *v28;
    v27[1] = v29;
    v30 = ((v27 + 23) & 0xFFFFFFFFFFFFFFF8);
    v31 = ((v28 + 23) & 0xFFFFFFFFFFFFFFF8);
    v32 = v31[1];
    *v30 = *v31;
    v30[1] = v32;
    v33 = ((v30 + 23) & 0xFFFFFFFFFFFFFFF8);
    v34 = ((v31 + 23) & 0xFFFFFFFFFFFFFFF8);
    v35 = v34[1];
    *v33 = *v34;
    v33[1] = v35;
    *((v33 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v34 + 23) & 0xFFFFFFFFFFFFFFF8);

    v36 = v39;
  }

  return v36;
}

uint64_t destroy for OutlineGroup<>.OutlineGroupSubgroup(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = v6 + 8;
  v8 = (a1 + *(v6 + 80) + 24) & ~*(v6 + 80);
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  (*(*(v4 - 8) + 8))((v8 + *(v7 + 56) + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80), v4);
}

void *initializeWithCopy for OutlineGroup<>.OutlineGroupSubgroup(void *a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a1 = *a2;
  a1[1] = v5;
  a1[2] = a2[2];
  v6 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v11 = *(v8 + 80);
  v12 = (a1 + v11 + 24) & ~v11;
  v13 = (a2 + v11 + 24) & ~v11;

  v9(v12, v13, AssociatedTypeWitness);
  v14 = *(v6 - 8);
  v15 = v14 + 16;
  v16 = *(v14 + 80);
  v17 = *(v10 + 48) + v16;
  v18 = (v17 + v12) & ~v16;
  v19 = (v17 + v13) & ~v16;
  (*(v14 + 16))(v18, v19, v6);
  v20 = *(v15 + 48) + 7;
  v21 = ((v20 + v18) & 0xFFFFFFFFFFFFFFF8);
  v22 = ((v20 + v19) & 0xFFFFFFFFFFFFFFF8);
  v23 = v22[1];
  *v21 = *v22;
  v21[1] = v23;
  v24 = ((v21 + 23) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v22 + 23) & 0xFFFFFFFFFFFFFFF8);
  v26 = v25[1];
  *v24 = *v25;
  v24[1] = v26;
  v27 = ((v24 + 23) & 0xFFFFFFFFFFFFFFF8);
  v28 = ((v25 + 23) & 0xFFFFFFFFFFFFFFF8);
  v29 = v28[1];
  *v27 = *v28;
  v27[1] = v29;
  *((v27 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v28 + 23) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

void *assignWithCopy for OutlineGroup<>.OutlineGroupSubgroup(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  v6 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = (a1 + v10 + 24) & ~v10;
  v12 = (a2 + v10 + 24) & ~v10;
  (*(v8 + 24))(v11, v12, AssociatedTypeWitness);
  v13 = *(v9 + 40);
  v14 = *(v6 - 8);
  v15 = v14 + 24;
  v16 = *(v14 + 80);
  v17 = v13 + v16;
  v18 = (v17 + v11) & ~v16;
  v19 = (v17 + v12) & ~v16;
  (*(v14 + 24))(v18, v19, v6);
  v20 = *(v15 + 40) + 7;
  v21 = ((v20 + v18) & 0xFFFFFFFFFFFFFFF8);
  v22 = ((v20 + v19) & 0xFFFFFFFFFFFFFFF8);
  v23 = v22[1];
  *v21 = *v22;
  v21[1] = v23;

  v24 = ((v21 + 23) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v22 + 23) & 0xFFFFFFFFFFFFFFF8);
  v26 = v25[1];
  *v24 = *v25;
  v24[1] = v26;

  v27 = ((v24 + 23) & 0xFFFFFFFFFFFFFFF8);
  v28 = ((v25 + 23) & 0xFFFFFFFFFFFFFFF8);
  v29 = v28[1];
  *v27 = *v28;
  v27[1] = v29;

  *((v27 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v28 + 23) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t initializeWithTake for OutlineGroup<>.OutlineGroupSubgroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = v7 + 32;
  v9 = *(v7 + 80);
  v10 = (v9 + 24 + a1) & ~v9;
  v11 = (v9 + 24 + a2) & ~v9;
  (*(v7 + 32))(v10, v11, AssociatedTypeWitness);
  v12 = *(v8 + 32);
  v13 = *(v5 - 8);
  v14 = v13 + 32;
  v15 = *(v13 + 80);
  v16 = v12 + v15;
  v17 = (v16 + v10) & ~v15;
  v18 = (v16 + v11) & ~v15;
  (*(v13 + 32))(v17, v18, v5);
  v19 = *(v14 + 32) + 7;
  v20 = ((v19 + v17) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v19 + v18) & 0xFFFFFFFFFFFFFFF8);
  *v20 = *v21;
  v22 = ((v20 + 23) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v21 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v22 = *v23;
  v24 = ((v22 + 23) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v23 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v24 = *v25;
  *((v24 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v25 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *assignWithTake for OutlineGroup<>.OutlineGroupSubgroup(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  v6 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  v11 = (a1 + v10 + 24) & ~v10;
  v12 = (a2 + v10 + 24) & ~v10;
  (*(v8 + 40))(v11, v12, AssociatedTypeWitness);
  v13 = *(v9 + 24);
  v14 = *(v6 - 8);
  v15 = v14 + 40;
  v16 = *(v14 + 80);
  v17 = v13 + v16;
  v18 = (v17 + v11) & ~v16;
  v19 = (v17 + v12) & ~v16;
  (*(v14 + 40))(v18, v19, v6);
  v20 = *(v15 + 24) + 7;
  v21 = ((v20 + v18) & 0xFFFFFFFFFFFFFFF8);
  v22 = v20 + v19;
  v23 = (v22 & 0xFFFFFFFFFFFFFFF8) + 23;
  *v21 = *(v22 & 0xFFFFFFFFFFFFFFF8);

  v24 = ((v21 + 23) & 0xFFFFFFFFFFFFFFF8);
  v23 &= 0xFFFFFFFFFFFFFFF8;
  *v24 = *v23;

  v25 = ((v24 + 23) & 0xFFFFFFFFFFFFFFF8);
  v26 = ((v23 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v25 = *v26;

  *((v25 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v26 + 23) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for OutlineGroup<>.OutlineGroupSubgroup(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v5 - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v8 + 80);
  if (v7 <= v9)
  {
    v13 = *(v8 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (v14 >= a2)
  {
    goto LABEL_30;
  }

  v15 = ((((((((*(*(v5 - 8) + 64) + ((v11 + v12 + ((v10 + 24) & ~v10)) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v14 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v14 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if ((v13 & 0x80000000) != 0)
  {
    v25 = (a1 + v10 + 24) & ~v10;
    if (v7 == v14)
    {
      v26 = *(v6 + 48);

      return v26(v25);
    }

    else
    {
      v27 = *(v8 + 48);
      v28 = (v25 + v11 + v12) & ~v12;

      return v27(v28, v9, v5);
    }
  }

  else
  {
    v24 = *(a1 + 1);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }
}

void storeEnumTagSinglePayload for OutlineGroup<>.OutlineGroupSubgroup(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(v7 - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v10 + 80);
  if (v9 <= v11)
  {
    v15 = *(v10 + 84);
  }

  else
  {
    v15 = *(v8 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = ((((((((*(*(v7 - 8) + 64) + ((v13 + v14 + ((v12 + 24) & ~v12)) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v16 >= a3)
  {
    v20 = 0;
    v21 = a2 - v16;
    if (a2 <= v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((((((((*(*(v7 - 8) + 64) + ((v13 + v14 + ((v12 + 24) & ~v12)) & ~v14) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v18 = a3 - v16 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v16;
    if (a2 <= v16)
    {
LABEL_20:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(a1 + v17) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v17) = 0;
      }

      else if (v20)
      {
        *(a1 + v17) = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        if ((v15 & 0x80000000) != 0)
        {
          v24 = (a1 + v12 + 24) & ~v12;
          if (v9 == v16)
          {
            v25 = *(v8 + 56);

            v25(v24, a2);
          }

          else
          {
            v26 = *(v10 + 56);
            v27 = (v24 + v13 + v14) & ~v14;

            v26(v27, a2, v11, v7);
          }
        }

        else if ((a2 & 0x80000000) != 0)
        {
          a1[1] = 0;
          a1[2] = 0;
          *a1 = a2 & 0x7FFFFFFF;
        }

        else
        {
          a1[1] = (a2 - 1);
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  if (((((((((*(*(v7 - 8) + 64) + ((v13 + v14 + ((v12 + 24) & ~v12)) & ~v14) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v22 = v21;
  }

  else
  {
    v22 = 1;
  }

  if (v17)
  {
    v23 = ~v16 + a2;
    bzero(a1, v17);
    *a1 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *(a1 + v17) = v22;
    }

    else
    {
      *(a1 + v17) = v22;
    }
  }

  else if (v20)
  {
    *(a1 + v17) = v22;
  }
}

uint64_t protocol witness for TableRowGenerator.rowIDs.getter in conformance EmptyTableRowGenerator()
{
  type metadata accessor for WrappedTableRowIDs<[TableRowID]>();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t partial apply for closure #1 in OutlineGroup<>.OutlineGroupSubgroup.tableRowBody.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = *(type metadata accessor for OutlineGroup<>.OutlineGroupSubgroup() - 8);
  v8 = v1 + ((*(v7 + 80) + 56) & ~*(v7 + 80));

  return closure #1 in OutlineGroup<>.OutlineGroupSubgroup.tableRowBody.getter(v8, v3, v4, v5, v6, a1);
}

uint64_t type metadata completion function for OutlineGroup<>.IsExpandedProjection()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t BarAppearanceBridge.update(environment:)(void *a1)
{
  v2 = v1;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v4 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_barConfigurations;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(&v23), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 80 * v6 + 8);
    swift_endAccess();

    outlined destroy of ToolbarPlacement.Role(&v23);
    if (v8)
    {
      v25 = 0;
      v23 = 0u;
      v24 = 0u;
      v9 = a1[1];
      type metadata accessor for ModifiedContent<Divider, OpacityRendererEffect>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarForegroundStyleKey>, &type metadata for EnvironmentValues.ToolbarForegroundStyleKey, &protocol witness table for EnvironmentValues.ToolbarForegroundStyleKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ToolbarForegroundStyleKey> and conformance EnvironmentPropertyKey<A>();

      if (v9)
      {

        PropertyList.Tracker.value<A>(_:for:)();
      }

      else
      {
        PropertyList.subscript.getter();
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, &v23, isUniquelyReferenced_nonNull_native);
      outlined destroy of ToolbarPlacement.Role(&v23);
      type metadata accessor for ModifiedContent<Divider, OpacityRendererEffect>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarForegroundStyleKey>, &type metadata for EnvironmentValues.ToolbarForegroundStyleKey, &protocol witness table for EnvironmentValues.ToolbarForegroundStyleKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ToolbarForegroundStyleKey> and conformance EnvironmentPropertyKey<A>();

      PropertyList.subscript.setter();
      if (v9)
      {
        PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
      }
    }

    else
    {
    }
  }

  else
  {
    swift_endAccess();
    outlined destroy of ToolbarPlacement.Role(&v23);
  }

  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v11 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_barBackgroundViewModels;
  swift_beginAccess();
  if (*(*(v2 + v11) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(&v23), (v12 & 1) != 0))
  {
    swift_endAccess();
    outlined destroy of ToolbarPlacement.Role(&v23);
  }

  else
  {
    swift_endAccess();
    outlined destroy of ToolbarPlacement.Role(&v23);
    type metadata accessor for PrimaryBarViewModel(0);
    v13 = swift_allocObject();
    LOBYTE(v23) = 0;
    Published.init(initialValue:)();
    LOBYTE(v23) = 2;
    type metadata accessor for Published<Visibility>(0, &lazy cache variable for type metadata for ColorScheme?, MEMORY[0x1E697DBD8], MEMORY[0x1E69E6720]);
    Published.init(initialValue:)();
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    swift_beginAccess();

    v14 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v2 + v11);
    *(v2 + v11) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, &v23, v14);
    outlined destroy of ToolbarPlacement.Role(&v23);
    *(v2 + v11) = v22;
    swift_endAccess();
  }

  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  swift_beginAccess();
  v15 = *(v2 + v11);
  if (*(v15 + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(&v23), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);
    swift_endAccess();

    outlined destroy of ToolbarPlacement.Role(&v23);
    if (*v18 == _TtC7SwiftUI19PrimaryBarViewModel)
    {
      goto LABEL_22;
    }
  }

  else
  {
    swift_endAccess();
    outlined destroy of ToolbarPlacement.Role(&v23);
  }

  v18 = 0;
LABEL_22:
  *&v23 = v18;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>>();
  lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>>);

  PropertyList.subscript.setter();
  if (a1[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  v19 = a1[1];
  v20 = (v2 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastEnvironment);
  *v20 = *a1;
  v20[1] = v19;
}

uint64_t BarAppearanceBridge.toolbarInputContentDidChange(_:updateContext:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E6720];
  type metadata accessor for ToolbarContentDescription?(0, &lazy cache variable for type metadata for ToolbarContentDescription?, type metadata accessor for ToolbarContentDescription, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v19 - v8;
  outlined init with copy of BarAppearanceBridge.UpdateContext(a2, v22);
  v10 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_updateContext;
  swift_beginAccess();
  v11 = MEMORY[0x1E69E6720];
  outlined assign with take of BarAppearanceBridge.UpdateContext?(v22, v2 + v10, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext, MEMORY[0x1E69E6720], type metadata accessor for Published<Visibility>);
  swift_endAccess();
  outlined init with copy of ToolbarContentDescription(a1, v9);
  v12 = type metadata accessor for ToolbarContentDescription(0);
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  v13 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastToolbarInputContent;
  swift_beginAccess();
  outlined assign with take of BarAppearanceBridge.UpdateContext?(v9, v2 + v13, &lazy cache variable for type metadata for ToolbarContentDescription?, type metadata accessor for ToolbarContentDescription, v6, type metadata accessor for ToolbarContentDescription?);
  swift_endAccess();
  memset(v19, 0, 40);
  v14 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_toUpdateBars;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v2 + v14);
  *(v2 + v14) = 0x8000000000000000;
  specialized _NativeSet.update(with:isUnique:)(v19, isUniquelyReferenced_nonNull_native, v22);
  *(v2 + v14) = v20;
  swift_endAccess();
  _s7SwiftUI22NavigationTitleStorageVSgWOhTm_0(v22, &lazy cache variable for type metadata for ToolbarPlacement.Role?, &type metadata for ToolbarPlacement.Role);
  PreferenceValues.init()();
  v16 = v21;
  outlined init with copy of NavigationTitleStorage?(v3 + v10, v19, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext, v11);
  if (v19[0])
  {
    outlined init with take of BarAppearanceBridge.UpdateContext(v19, v22);
    closure #1 in BarAppearanceBridge.updateNavigationBar(updating:preferences:)(v22, v3, v16);

    outlined destroy of BarAppearanceBridge.UpdateContext(v22);
    BarAppearanceBridge.updateBarsToConfiguration()();
    v17 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_pendingUpdates;
    if ((*(v3 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_pendingUpdates) & 2) != 0)
    {
      BarAppearanceBridge.platformUpdateNavigationAdaptor()();
    }

    v23 = 0;
    memset(v22, 0, sizeof(v22));
    swift_beginAccess();
    outlined assign with take of BarAppearanceBridge.UpdateContext?(v22, v3 + v10, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext, MEMORY[0x1E69E6720], type metadata accessor for Published<Visibility>);
    result = swift_endAccess();
    *(v3 + v17) = 0;
  }

  else
  {
    _s7SwiftUI22NavigationTitleStorageVSgWOhTm_0(v19, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t PlatformBarUpdater.__deallocating_deinit()
{

  outlined destroy of weak FallbackResponderProvider?(v0 + 32);

  v1 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t one-time initialization function for bar()
{
  static Material.bar.getter();
  result = AnyShapeStyle.init<A>(_:)();
  static PlatformBarBackground.Backgrounds.bar = result;
  return result;
}

double PlatformBarBackground.body.getter@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = static HorizontalAlignment.center.getter();
  v18 = 0;
  v9 = a2 & 1;
  if (a2)
  {
    v10 = 4;
  }

  else
  {
    v10 = 1;
  }

  closure #1 in PlatformBarBackground.body.getter(a1, v9, &v15, a4);
  v19 = v15;
  v20[0] = v16[0];
  *(v20 + 10) = *(v16 + 10);
  v21 = v15;
  v22[0] = v16[0];
  *(v22 + 10) = *(v16 + 10);
  outlined init with copy of TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>(&v19, &v14);
  outlined destroy of TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>(&v21, &lazy cache variable for type metadata for TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>, type metadata accessor for (ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??), MEMORY[0x1E6981F40]);
  *&v17[7] = v19;
  *&v17[23] = v20[0];
  *&v17[33] = *(v20 + 10);
  v11 = *&v17[16];
  *(a3 + 17) = *v17;
  v12 = v18;
  *a3 = v8;
  *(a3 + 8) = 0;
  *(a3 + 16) = v12;
  *(a3 + 33) = v11;
  result = *&v17[32];
  *(a3 + 49) = *&v17[32];
  *(a3 + 65) = v17[48];
  *(a3 + 72) = 1;
  *(a3 + 80) = v10;
  return result;
}

uint64_t closure #1 in PlatformBarBackground.body.getter@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v6 = a1;
  if (a2)
  {
    v8 = a4;
    if (a1)
    {
      v9 = one-time initialization token for bar;

      if (v9 != -1)
      {
        swift_once();
      }

      if (static PlatformBarBackground.Backgrounds.bar == v6)
      {
      }

      else
      {
        v10 = dispatch thunk of AnyShapeStyleBox.isEqual(to:)();

        if ((v10 & 1) == 0)
        {
          v11 = 1;
          v8 = 0.0;
          v12 = v6;
LABEL_22:

          v15 = 0;
          v16 = 0.0;
          v6 = v12;
          goto LABEL_25;
        }
      }

      v11 = 0;
      v12 = v6;
      v8 = a4;
      goto LABEL_22;
    }

    goto LABEL_15;
  }

  if (!a1)
  {
    v8 = 0.0;
LABEL_15:
    if (one-time initialization token for bar != -1)
    {
      swift_once();
    }

    v12 = static PlatformBarBackground.Backgrounds.bar;

    if (a2)
    {
      v11 = 0;
      goto LABEL_22;
    }

    v6 = v12;
    goto LABEL_24;
  }

  v13 = one-time initialization token for bar;

  if (v13 != -1)
  {
    swift_once();
  }

  result = static PlatformBarBackground.Backgrounds.bar;
  if (static PlatformBarBackground.Backgrounds.bar == v6)
  {
    v8 = 0.0;
    goto LABEL_24;
  }

  result = dispatch thunk of AnyShapeStyleBox.isEqual(to:)();
  v8 = 0.0;
  if (result)
  {
LABEL_24:
    v11 = 0;
    v15 = 0;
    v16 = a4;
    goto LABEL_25;
  }

  v11 = 0;
  v15 = 1;
  v16 = 0.0;
LABEL_25:
  v17 = a4;
  *a3 = v8;
  *(a3 + 8) = v11;
  *(a3 + 9) = (a2 & 1) == 0;
  *(a3 + 16) = v6;
  *(a3 + 24) = v17;
  *(a3 + 28) = 256;
  *(a3 + 32) = v16;
  *(a3 + 40) = v15;
  *(a3 + 41) = a2 & 1;
  return result;
}

uint64_t BarEnvironmentViewModel.visibility.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t BarEnvironmentViewModel.colorScheme.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance BarEnvironmentViewModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BarEnvironmentViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for PlatformBarBackground(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for PlatformBarBackground(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for PlatformBarBackground(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for PlatformBarBackground(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for PlatformBarBackground(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t assignWithCopy for PlatformBarUpdater.UpdateContext(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  *(a1 + 8) = v8;
  v9 = v8;

  return a1;
}

uint64_t assignWithTake for PlatformBarUpdater.UpdateContext(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  return a1;
}

uint64_t assignWithCopy for BarAppearanceBridge.UpdateContext(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  *(a1 + 8) = v8;
  v9 = v8;

  v10 = *(a2 + 24);
  if (*(a1 + 24) != 2)
  {
    if (v10 == 2)
    {
      outlined destroy of PushTarget(a1 + 16);
      v12 = *(a2 + 25);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 25) = v12;
      goto LABEL_9;
    }

    swift_unknownObjectWeakCopyAssign();
LABEL_8:
    *(a1 + 24) = *(a2 + 24);
    v13 = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 32) = v13;
    goto LABEL_9;
  }

  if (v10 != 2)
  {
    swift_unknownObjectWeakCopyInit();
    goto LABEL_8;
  }

  v11 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 16) = v11;
LABEL_9:
  swift_unknownObjectWeakCopyAssign();
  swift_unknownObjectWeakCopyAssign();
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t assignWithTake for BarAppearanceBridge.UpdateContext(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v6 = *(a2 + 24);
  if (*(a1 + 24) == 2)
  {
    if (v6 != 2)
    {
      swift_unknownObjectWeakTakeInit();
LABEL_8:
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      goto LABEL_9;
    }
  }

  else
  {
    if (v6 != 2)
    {
      swift_unknownObjectWeakTakeAssign();
      goto LABEL_8;
    }

    outlined destroy of PushTarget(a1 + 16);
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
LABEL_9:
  swift_unknownObjectWeakTakeAssign();
  swift_unknownObjectWeakTakeAssign();
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t initializeWithCopy for BarAppearanceBridge.PlatformStorage(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_unknownObjectWeakCopyInit();
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

_BYTE *assignWithCopy for BarAppearanceBridge.PlatformStorage(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  swift_unknownObjectWeakCopyAssign();
  a1[16] = a2[16];
  return a1;
}

uint64_t initializeWithTake for BarAppearanceBridge.PlatformStorage(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_unknownObjectWeakTakeInit();
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for BarAppearanceBridge.PlatformStorage(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  swift_unknownObjectWeakTakeAssign();
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for BarAppearanceBridge.PlatformStorage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[17])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for BarAppearanceBridge.PlatformStorage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BarAppearanceBridge.Updates and conformance BarAppearanceBridge.Updates()
{
  result = lazy protocol witness table cache variable for type BarAppearanceBridge.Updates and conformance BarAppearanceBridge.Updates;
  if (!lazy protocol witness table cache variable for type BarAppearanceBridge.Updates and conformance BarAppearanceBridge.Updates)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BarAppearanceBridge.Updates and conformance BarAppearanceBridge.Updates);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BarAppearanceBridge.Updates and conformance BarAppearanceBridge.Updates;
  if (!lazy protocol witness table cache variable for type BarAppearanceBridge.Updates and conformance BarAppearanceBridge.Updates)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BarAppearanceBridge.Updates and conformance BarAppearanceBridge.Updates);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BarAppearanceBridge.Updates and conformance BarAppearanceBridge.Updates;
  if (!lazy protocol witness table cache variable for type BarAppearanceBridge.Updates and conformance BarAppearanceBridge.Updates)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BarAppearanceBridge.Updates and conformance BarAppearanceBridge.Updates);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BarAppearanceBridge.Updates and conformance BarAppearanceBridge.Updates;
  if (!lazy protocol witness table cache variable for type BarAppearanceBridge.Updates and conformance BarAppearanceBridge.Updates)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BarAppearanceBridge.Updates and conformance BarAppearanceBridge.Updates);
  }

  return result;
}

uint64_t outlined init with copy of TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ToolbarContentDescription?(0, &lazy cache variable for type metadata for TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>, type metadata accessor for (ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??), MEMORY[0x1E6981F40]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)()
{
  if (!lazy cache variable for type metadata for (ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??))
  {
    type metadata accessor for ToolbarContentDescription?(255, &lazy cache variable for type metadata for ModifiedContent<Divider, OpacityRendererEffect>??, type metadata accessor for ModifiedContent<Divider, OpacityRendererEffect>?, MEMORY[0x1E69E6720]);
    type metadata accessor for _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??));
    }
  }
}

void type metadata accessor for ModifiedContent<Divider, OpacityRendererEffect>?()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Divider, OpacityRendererEffect>?)
  {
    type metadata accessor for ModifiedContent<Divider, OpacityRendererEffect>(255, &lazy cache variable for type metadata for ModifiedContent<Divider, OpacityRendererEffect>, &type metadata for Divider, MEMORY[0x1E697FCA0], MEMORY[0x1E697E830]);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Divider, OpacityRendererEffect>?);
    }
  }
}

void type metadata accessor for _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>()
{
  if (!lazy cache variable for type metadata for _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>)
  {
    type metadata accessor for ModifiedContent<Divider, OpacityRendererEffect>(255, &lazy cache variable for type metadata for _OpacityShapeStyle<AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E697F5B0]);
    lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
    lazy protocol witness table accessor for type _OpacityShapeStyle<AnyShapeStyle> and conformance _OpacityShapeStyle<A>();
    v0 = type metadata accessor for _ShapeView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _OpacityShapeStyle<AnyShapeStyle> and conformance _OpacityShapeStyle<A>()
{
  result = lazy protocol witness table cache variable for type _OpacityShapeStyle<AnyShapeStyle> and conformance _OpacityShapeStyle<A>;
  if (!lazy protocol witness table cache variable for type _OpacityShapeStyle<AnyShapeStyle> and conformance _OpacityShapeStyle<A>)
  {
    type metadata accessor for ModifiedContent<Divider, OpacityRendererEffect>(255, &lazy cache variable for type metadata for _OpacityShapeStyle<AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E697F5B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _OpacityShapeStyle<AnyShapeStyle> and conformance _OpacityShapeStyle<A>);
  }

  return result;
}

uint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, unint64_t *a6, uint64_t a7, unint64_t *a8)
{
  v8 = a4;
  if (!a3)
  {
    v13 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v13;
  }

  v9 = a3;
  if (*(a4 + 16) == a3)
  {
    return v8;
  }

  type metadata accessor for _SetStorage<UIScene>(0, a5, a6, a7, a8);
  result = static _SetStorage.allocate(capacity:)();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 56;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_17:
    v20 = *(v13 + 40);
    v21 = *(*(v8 + 48) + 8 * (v17 | (v15 << 6)));
    result = NSObject._rawHashValue(seed:)(v20);
    v22 = -1 << *(v13 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v16 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    *(*(v13 + 48) + 8 * v25) = v21;
    ++*(v13 + 16);
    if (__OFSUB__(v9--, 1))
    {
      goto LABEL_32;
    }

    if (!v9)
    {
      goto LABEL_6;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_6;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v14 = (v19 - 1) & v19;
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

uint64_t specialized closure #1 in _NativeSet.subtracting<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v46 = v7 - 1;
  v8 = a3 + 56;
  while (2)
  {
    while (2)
    {
      while (2)
      {
        v9 = *a5;
        v10 = a5[1];
        v12 = a5[2];
        v11 = a5[3];
        v13 = a5[4];
        if (!v13)
        {
          v15 = (v12 + 64) >> 6;
          v16 = a5[3];
          while (1)
          {
            v14 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              __break(1u);
              goto LABEL_67;
            }

            if (v14 >= v15)
            {
              break;
            }

            v13 = *(v10 + 8 * v14);
            ++v16;
            if (v13)
            {
              goto LABEL_9;
            }
          }

          if (v15 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (v12 + 64) >> 6;
          }

          v36 = 0uLL;
          *v37 = 0;
          *&v37[8] = xmmword_18CD9F780;
          *a5 = v9;
          a5[1] = v10;
          a5[2] = v12;
          a5[3] = v29 - 1;
          a5[4] = 0;
LABEL_65:
          _s7SwiftUI22NavigationTitleStorageVSgWOhTm_0(&v36, &lazy cache variable for type metadata for ToolbarPlacement.Role?, &type metadata for ToolbarPlacement.Role);

          return specialized _NativeSet.extractSubset(using:count:)(v31, a2, v46, a3);
        }

        v14 = a5[3];
LABEL_9:
        v17 = (v13 - 1) & v13;
        outlined init with copy of ToolbarPlacement.Role(*(v9 + 48) + 40 * (__clz(__rbit64(v13)) | (v14 << 6)), &v36);
        v18 = *&v37[8];
        *a5 = v9;
        a5[1] = v10;
        a5[2] = v12;
        a5[3] = v14;
        a5[4] = v17;
        if (v18 == 7)
        {
          goto LABEL_65;
        }

        v44[0] = v36;
        v44[1] = *v37;
        v45 = *&v37[16];
        Hasher.init(_seed:)();
        outlined init with copy of ToolbarPlacement.Role(v44, &v41);
        if (*(&v42 + 1) <= 2)
        {
          switch(*(&v42 + 1))
          {
            case 0:
              v19 = 0;
              goto LABEL_26;
            case 1:
              v19 = 1;
              goto LABEL_26;
            case 2:
              v19 = 2;
LABEL_26:
              MEMORY[0x18D00F6F0](v19);
              goto LABEL_27;
          }
        }

        else
        {
          if (*(&v42 + 1) <= 4)
          {
            if (*(&v42 + 1) == 3)
            {
              v19 = 3;
            }

            else
            {
              v19 = 4;
            }

            goto LABEL_26;
          }

          if (*(&v42 + 1) == 5)
          {
            v19 = 5;
            goto LABEL_26;
          }

          if (*(&v42 + 1) == 6)
          {
            v19 = 7;
            goto LABEL_26;
          }
        }

        v34[0] = v41;
        v34[1] = v42;
        v35 = v43;
        MEMORY[0x18D00F6F0](6);
        AnyHashable.hash(into:)();
        outlined destroy of AnyHashable(v34);
LABEL_27:
        v20 = Hasher._finalize()();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v8 + 8 * (v22 >> 6))) == 0)
        {
LABEL_2:
          result = outlined destroy of ToolbarPlacement.Role(v44);
          continue;
        }

        break;
      }

      v25 = ~v21;
      while (1)
      {
        outlined init with copy of ToolbarPlacement.Role(*(a3 + 48) + 40 * v22, &v41);
        outlined init with copy of ToolbarPlacement.Role(&v41, &v36);
        outlined init with copy of ToolbarPlacement.Role(v44, &v38);
        if (*&v37[8] <= 2)
        {
          switch(*&v37[8])
          {
            case 0:
              outlined destroy of ToolbarPlacement.Role(&v41);
              if (!*(&v39 + 1))
              {
                goto LABEL_57;
              }

              goto LABEL_52;
            case 1:
              outlined destroy of ToolbarPlacement.Role(&v41);
              if (*(&v39 + 1) == 1)
              {
                goto LABEL_57;
              }

              goto LABEL_52;
            case 2:
              outlined destroy of ToolbarPlacement.Role(&v41);
              if (*(&v39 + 1) == 2)
              {
                goto LABEL_57;
              }

              goto LABEL_52;
          }
        }

        else
        {
          if (*&v37[8] <= 4)
          {
            if (*&v37[8] == 3)
            {
              outlined destroy of ToolbarPlacement.Role(&v41);
              if (*(&v39 + 1) == 3)
              {
                goto LABEL_57;
              }
            }

            else
            {
              outlined destroy of ToolbarPlacement.Role(&v41);
              if (*(&v39 + 1) == 4)
              {
                goto LABEL_57;
              }
            }

            goto LABEL_52;
          }

          if (*&v37[8] == 5)
          {
            outlined destroy of ToolbarPlacement.Role(&v41);
            if (*(&v39 + 1) == 5)
            {
              goto LABEL_57;
            }

            goto LABEL_52;
          }

          if (*&v37[8] == 6)
          {
            outlined destroy of ToolbarPlacement.Role(&v41);
            if (*(&v39 + 1) == 6)
            {
              goto LABEL_57;
            }

            goto LABEL_52;
          }
        }

        outlined init with copy of ToolbarPlacement.Role(&v36, v34);
        if (*(&v39 + 1) >= 7uLL)
        {
          break;
        }

        outlined destroy of ToolbarPlacement.Role(&v41);
        outlined destroy of AnyHashable(v34);
LABEL_52:
        _s7SwiftUI16ToolbarPlacementV4RoleO_AEtWOhTm_0(&v36, type metadata accessor for (ToolbarPlacement.Role, ToolbarPlacement.Role));
LABEL_53:
        v22 = (v22 + 1) & v25;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if ((*(v8 + 8 * (v22 >> 6)) & (1 << v22)) == 0)
        {
          goto LABEL_2;
        }
      }

      v32[0] = v38;
      v32[1] = v39;
      v33 = v40;
      v26 = MEMORY[0x18D00E7E0](v34, v32);
      outlined destroy of AnyHashable(v32);
      outlined destroy of ToolbarPlacement.Role(&v41);
      outlined destroy of AnyHashable(v34);
      if ((v26 & 1) == 0)
      {
        outlined destroy of ToolbarPlacement.Role(&v36);
        goto LABEL_53;
      }

LABEL_57:
      outlined destroy of ToolbarPlacement.Role(&v36);
      result = outlined destroy of ToolbarPlacement.Role(v44);
      v27 = v31[v23];
      v31[v23] = v27 & ~v24;
      if ((v27 & v24) == 0)
      {
        continue;
      }

      break;
    }

    v28 = v46 - 1;
    if (!__OFSUB__(v46, 1))
    {
      --v46;
      if (!v28)
      {
        return MEMORY[0x1E69E7CD0];
      }

      continue;
    }

    break;
  }

LABEL_67:
  __break(1u);
  return result;
}

void type metadata accessor for _SetStorage<ToolbarPlacement.Role>()
{
  if (!lazy cache variable for type metadata for _SetStorage<ToolbarPlacement.Role>)
  {
    lazy protocol witness table accessor for type ToolbarPlacement.Role and conformance ToolbarPlacement.Role();
    v0 = type metadata accessor for _SetStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SetStorage<ToolbarPlacement.Role>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>> and conformance VStack<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of ToolbarContentDescription(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolbarContentDescription(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>>, _SafeAreaRegionsIgnoringLayout>();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>> and conformance VStack<A>, type metadata accessor for VStack<TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>>, _SafeAreaRegionsIgnoringLayout>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>>, _SafeAreaRegionsIgnoringLayout>)
  {
    type metadata accessor for VStack<TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>>, _SafeAreaRegionsIgnoringLayout>);
    }
  }
}

void type metadata accessor for VStack<TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>>()
{
  if (!lazy cache variable for type metadata for VStack<TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>>)
  {
    type metadata accessor for ToolbarContentDescription?(255, &lazy cache variable for type metadata for TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>, type metadata accessor for (ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??), MEMORY[0x1E6981F40]);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)> and conformance TupleView<A>();
    v0 = type metadata accessor for VStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for VStack<TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)> and conformance TupleView<A>()
{
  result = lazy protocol witness table cache variable for type TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)> and conformance TupleView<A>;
  if (!lazy protocol witness table cache variable for type TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)> and conformance TupleView<A>)
  {
    type metadata accessor for ToolbarContentDescription?(255, &lazy cache variable for type metadata for TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>, type metadata accessor for (ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??), MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)> and conformance TupleView<A>);
  }

  return result;
}

uint64_t closure #1 in SystemTextEditorStyle.makeBody(configuration:)(uint64_t result)
{
  if (!*(result + 8))
  {
    *(result + 8) = 1;
  }

  return result;
}

void protocol witness for TextEditorStyle.makeBody(configuration:) in conformance SystemTextEditorStyle(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of TextEditorStyleConfiguration(a1, a2);
  KeyPath = swift_getKeyPath();
  type metadata accessor for ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>>();
  v5 = a2 + *(v4 + 36);
  *v5 = KeyPath;
  *(v5 + 8) = 0;
  v6 = swift_getKeyPath();
  type metadata accessor for ModifiedContent<ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>>, _EnvironmentKeyTransformModifier<ScrollContentBackground>>();
  v8 = (a2 + *(v7 + 36));
  *v8 = v6;
  v8[1] = closure #1 in SystemTextEditorStyle.makeBody(configuration:);
  v8[2] = 0;
}

void type metadata accessor for ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>>)
  {
    type metadata accessor for UIKitTextEditor(255);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TextEditorBorderStyle>, &type metadata for TextEditorBorderStyle, MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>>, _EnvironmentKeyTransformModifier<ScrollContentBackground>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>>, _EnvironmentKeyTransformModifier<ScrollContentBackground>>)
  {
    type metadata accessor for ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<ScrollContentBackground>, &type metadata for ScrollContentBackground, MEMORY[0x1E6980B20]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>>, _EnvironmentKeyTransformModifier<ScrollContentBackground>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>>, _EnvironmentKeyTransformModifier<ScrollContentBackground>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>>, _EnvironmentKeyTransformModifier<ScrollContentBackground>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>>, _EnvironmentKeyTransformModifier<ScrollContentBackground>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>>, _EnvironmentKeyTransformModifier<ScrollContentBackground>>();
    lazy protocol witness table accessor for type ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<ScrollContentBackground> and conformance _EnvironmentKeyTransformModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>>, _EnvironmentKeyTransformModifier<ScrollContentBackground>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TextEditorBorderStyle> and conformance _EnvironmentKeyWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TextEditorBorderStyle> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextEditorBorderStyle> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextEditorBorderStyle> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TextEditorBorderStyle>, &type metadata for TextEditorBorderStyle, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextEditorBorderStyle> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t View.onNavigationSplitViewExpand_v1(action:)(uint64_t a1, uint64_t a2)
{
  return View.onNavigationSplitViewExpand_v1(action:)(a1, a2);
}

{
  swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  View.transformEnvironment<A>(_:transform:)();
}

uint64_t EnvironmentValues.navigationEventHandlers.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationEventHandlersKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationEventHandlersKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationEventHandlersKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationEventHandlersKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationEventHandlersKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationEventHandlersKey>);
    PropertyList.subscript.getter();
  }

  return v2;
}

double key path getter for EnvironmentValues.navigationEventHandlers : EnvironmentValues@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationEventHandlersKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationEventHandlersKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationEventHandlersKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationEventHandlersKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationEventHandlersKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationEventHandlersKey>);
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for EnvironmentValues.navigationEventHandlers : EnvironmentValues(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[2];
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationEventHandlersKey>);

  outlined copy of AppIntentExecutor?(v3);
  outlined copy of AppIntentExecutor?(v4);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationEventHandlersKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationEventHandlersKey>);
  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t partial apply for closure #1 in View.onNavigationSplitViewExpand_v1(action:)(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;

  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v5);
  *a1 = v4;
  a1[1] = v3;
  return result;
}

uint64_t partial apply for closure #1 in View.onNavigation_v1(action:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(a1 + 16);

  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v5);
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  return result;
}

uint64_t View.navigationSplitViewCompactColumn_v1(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_getKeyPath();

  View.environment<A>(_:_:)();

  return outlined consume of Binding<NavigationSplitViewColumn>?(v1, v2);
}

uint64_t EnvironmentValues.navigationRequiredCompactColumn.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationCompactColumnKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationCompactColumnKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationCompactColumnKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationCompactColumnKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationCompactColumnKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationCompactColumnKey>);

    return PropertyList.subscript.getter();
  }
}

double key path getter for EnvironmentValues.navigationRequiredCompactColumn : EnvironmentValues@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationCompactColumnKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationCompactColumnKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationCompactColumnKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationCompactColumnKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationCompactColumnKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationCompactColumnKey>);
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t key path setter for EnvironmentValues.navigationRequiredCompactColumn : EnvironmentValues(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationCompactColumnKey>);

  outlined copy of Binding<Int>?(v3, v4);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationCompactColumnKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationCompactColumnKey>);
  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t destroy for NavigationUpdateEvent(uint64_t result)
{
  if (*(result + 56) - 1 <= 2)
  {
    return __swift_destroy_boxed_opaque_existential_1(result);
  }

  return result;
}

uint64_t initializeWithCopy for NavigationUpdateEvent(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  switch(v4)
  {
    case 3:
      v7 = *(a2 + 24);
      *(a1 + 24) = v7;
      (**(v7 - 8))(a1, a2);
      *(a1 + 56) = 3;
      break;
    case 2:
      v6 = *(a2 + 24);
      *(a1 + 24) = v6;
      *(a1 + 40) = *(a2 + 40);
      (**(v6 - 8))(a1, a2);
      *(a1 + 56) = 2;
      break;
    case 1:
      v5 = *(a2 + 24);
      *(a1 + 24) = v5;
      (**(v5 - 8))(a1, a2);
      *(a1 + 56) = 1;
      break;
    default:
      v8 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v8;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 41) = *(a2 + 41);
      break;
  }

  *(a1 + 57) = *(a2 + 57);
  return a1;
}

uint64_t assignWithCopy for NavigationUpdateEvent(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    outlined destroy of NavigationUpdateEvent.Action(a1);
    v4 = *(a2 + 56);
    switch(v4)
    {
      case 3:
        v8 = *(a2 + 3);
        *(a1 + 24) = v8;
        *(a1 + 32) = *(a2 + 4);
        (**(v8 - 8))(a1, a2);
        *(a1 + 56) = 3;
        break;
      case 2:
        v6 = *(a2 + 3);
        *(a1 + 24) = v6;
        v7 = *(a2 + 6);
        *(a1 + 32) = a2[2];
        *(a1 + 48) = v7;
        (**(v6 - 8))(a1, a2);
        *(a1 + 56) = 2;
        break;
      case 1:
        v5 = *(a2 + 3);
        *(a1 + 24) = v5;
        *(a1 + 32) = *(a2 + 4);
        (**(v5 - 8))(a1, a2);
        *(a1 + 56) = 1;
        break;
      default:
        v9 = *a2;
        v10 = a2[1];
        v11 = a2[2];
        *(a1 + 41) = *(a2 + 41);
        *(a1 + 16) = v10;
        *(a1 + 32) = v11;
        *a1 = v9;
        break;
    }
  }

  *(a1 + 57) = *(a2 + 57);
  return a1;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t assignWithTake for NavigationUpdateEvent(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    outlined destroy of NavigationUpdateEvent.Action(result);
    result = v3;
    v4 = *(a2 + 16);
    *v3 = *a2;
    v3[1] = v4;
    v3[2] = *(a2 + 32);
    *(v3 + 41) = *(a2 + 41);
  }

  *(result + 57) = *(a2 + 57);
  return result;
}

uint64_t getEnumTagSinglePayload for NavigationUpdateEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 58))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 57);
  if (v3 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *(a1 + 57);
  }

  v5 = v4 - 4;
  if (v3 < 3)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for NavigationUpdateEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 57) = a2 + 3;
    }
  }

  return result;
}

uint64_t destroy for NavigationUpdateEvent.Action(uint64_t result)
{
  v1 = *(result + 56);
  if (v1 >= 4)
  {
    v1 = *result + 4;
  }

  if (v1 - 1 <= 2)
  {
    return __swift_destroy_boxed_opaque_existential_1(result);
  }

  return result;
}

uint64_t initializeWithCopy for NavigationUpdateEvent.Action(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  if (v2 >= 4)
  {
    v2 = *a2 + 4;
  }

  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v8 = *(a2 + 24);
      *(result + 24) = v8;
      *(result + 40) = *(a2 + 40);
      v4 = result;
      (**(v8 - 8))();
      result = v4;
      v5 = 2;
      goto LABEL_13;
    }

    if (v2 == 3)
    {
      v6 = *(a2 + 24);
      *(result + 24) = v6;
      v4 = result;
      (**(v6 - 8))();
      result = v4;
      v5 = 3;
      goto LABEL_13;
    }

LABEL_10:
    v7 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v7;
    *(result + 32) = *(a2 + 32);
    *(result + 41) = *(a2 + 41);
    return result;
  }

  if (!v2)
  {
    *result = *a2;
    *(result + 56) = 0;
    return result;
  }

  if (v2 != 1)
  {
    goto LABEL_10;
  }

  v3 = *(a2 + 24);
  *(result + 24) = v3;
  v4 = result;
  (**(v3 - 8))();
  result = v4;
  v5 = 1;
LABEL_13:
  *(v4 + 56) = v5;
  return result;
}

uint64_t assignWithCopy for NavigationUpdateEvent.Action(uint64_t result, __int128 *a2)
{
  if (result != a2)
  {
    v2 = *(result + 56);
    if (v2 >= 4)
    {
      v2 = *result + 4;
    }

    if (v2 - 1 <= 2)
    {
      v3 = result;
      v4 = a2;
      __swift_destroy_boxed_opaque_existential_1(result);
      a2 = v4;
      result = v3;
    }

    v5 = *(a2 + 56);
    if (v5 >= 4)
    {
      v5 = *a2 + 4;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v13 = *(a2 + 3);
        *(result + 24) = v13;
        v14 = *(a2 + 6);
        *(result + 32) = a2[2];
        *(result + 48) = v14;
        v7 = result;
        (**(v13 - 8))();
        result = v7;
        v8 = 2;
        goto LABEL_18;
      }

      if (v5 == 3)
      {
        v9 = *(a2 + 3);
        *(result + 24) = v9;
        *(result + 32) = *(a2 + 4);
        v7 = result;
        (**(v9 - 8))();
        result = v7;
        v8 = 3;
        goto LABEL_18;
      }
    }

    else
    {
      if (!v5)
      {
        *result = *a2;
        *(result + 56) = 0;
        return result;
      }

      if (v5 == 1)
      {
        v6 = *(a2 + 3);
        *(result + 24) = v6;
        *(result + 32) = *(a2 + 4);
        v7 = result;
        (**(v6 - 8))();
        result = v7;
        v8 = 1;
LABEL_18:
        *(v7 + 56) = v8;
        return result;
      }
    }

    v10 = *a2;
    v11 = a2[1];
    v12 = a2[2];
    *(result + 41) = *(a2 + 41);
    *(result + 16) = v11;
    *(result + 32) = v12;
    *result = v10;
  }

  return result;
}

__n128 assignWithTake for NavigationUpdateEvent.Action(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = *(a1 + 56);
    if (v2 >= 4)
    {
      v2 = *a1 + 4;
    }

    if (v2 - 1 <= 2)
    {
      v3 = a1;
      v4 = a2;
      __swift_destroy_boxed_opaque_existential_1(a1);
      a2 = v4;
      a1 = v3;
    }

    v6 = *(a2 + 56);
    if (v6 >= 4)
    {
      v6 = *a2 + 4;
    }

    if (v6 > 1)
    {
      if (v6 == 2)
      {
        v10 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v10;
        result = *(a2 + 32);
        *(a1 + 32) = result;
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = 2;
        return result;
      }

      if (v6 == 3)
      {
        result = *a2;
        v8 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v8;
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 56) = 3;
        return result;
      }
    }

    else
    {
      if (!v6)
      {
        *a1 = *a2;
        *(a1 + 56) = 0;
        return result;
      }

      if (v6 == 1)
      {
        result = *a2;
        v7 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v7;
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 56) = 1;
        return result;
      }
    }

    v9 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v9;
    *(a1 + 32) = *(a2 + 32);
    result = *(a2 + 41);
    *(a1 + 41) = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NavigationUpdateEvent.Action(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 57))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 56);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}