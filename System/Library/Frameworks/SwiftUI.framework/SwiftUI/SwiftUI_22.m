_OWORD *assignWithTake for NavigationState.UpdateResult(_OWORD *__dst, _OWORD *__src)
{
  if ((*(__dst + 17) >> 1) <= 0x80000000)
  {
    if ((*(__src + 17) >> 1) <= 0x80000000)
    {
      if (__dst != __src)
      {
        outlined destroy of NavigationRequest.Action(__dst);
        v4 = __src[5];
        __dst[4] = __src[4];
        __dst[5] = v4;
        *(__dst + 96) = *(__src + 96);
        v5 = __src[1];
        *__dst = *__src;
        __dst[1] = v5;
        v6 = __src[3];
        __dst[2] = __src[2];
        __dst[3] = v6;
      }

      *(__dst + 104) = *(__src + 104);
      *(__dst + 120) = *(__src + 120);
      *(__dst + 136) = *(__src + 136);
      *(__dst + 152) = *(__src + 152);
      *(__dst + 20) = *(__src + 20);

      *(__dst + 168) = *(__src + 168);
      *(__dst + 184) = *(__src + 184);
      *(__dst + 200) = *(__src + 200);
      if (*(__dst + 312) != 255)
      {
        if (*(__src + 312) != 255 && __dst == __src)
        {
          return __dst;
        }

        outlined destroy of NavigationRequest.Action(__dst + 216);
      }

      v7 = *(__src + 296);
      *(__dst + 280) = *(__src + 280);
      *(__dst + 296) = v7;
      *(__dst + 312) = *(__src + 312);
      v8 = *(__src + 232);
      *(__dst + 216) = *(__src + 216);
      *(__dst + 232) = v8;
      v9 = *(__src + 264);
      *(__dst + 248) = *(__src + 248);
      *(__dst + 264) = v9;
      return __dst;
    }

    switch(*(__dst + 96))
    {
      case 0:
        goto LABEL_39;
      case 1:

        goto LABEL_39;
      case 2:

        __swift_destroy_boxed_opaque_existential_1((__dst + 1));
        break;
      case 3:

        break;
      case 4:
      case 5:

        goto LABEL_39;
      case 6:

        goto LABEL_39;
      case 0xA:
      case 0x11:
        __swift_destroy_boxed_opaque_existential_1(__dst);

        goto LABEL_39;
      case 0xB:
        __swift_destroy_boxed_opaque_existential_1(__dst);
        break;
      case 0xC:
      case 0xD:

        if (*(__dst + 4))
        {
          __swift_destroy_boxed_opaque_existential_1(__dst + 8);
        }

        if (*(__dst + 7) != 1)
        {
        }

        goto LABEL_39;
      case 0xE:

        if (*(__dst + 4))
        {
          __swift_destroy_boxed_opaque_existential_1(__dst + 8);
        }

        v11 = *(__dst + 7);
        goto LABEL_34;
      case 0x12:

        if (*(__dst + 5))
        {
          __swift_destroy_boxed_opaque_existential_1((__dst + 1));
        }

        if (*(__dst + 8) != 1)
        {
        }

        goto LABEL_39;
      case 0x13:
        if (*(__dst + 3))
        {
          __swift_destroy_boxed_opaque_existential_1(__dst);
        }

        v11 = *(__dst + 6);
LABEL_34:
        if (v11 == 1)
        {
          break;
        }

        goto LABEL_39;
      case 0x15:
        if (*__dst)
        {
        }

        if (*(__dst + 2))
        {
LABEL_39:
        }

        break;
      default:
        break;
    }

    switch(*(__dst + 312))
    {
      case 0:
        goto LABEL_68;
      case 1:

        goto LABEL_68;
      case 2:

        __swift_destroy_boxed_opaque_existential_1(__dst + 232);
        break;
      case 3:

        break;
      case 4:
      case 5:

        goto LABEL_68;
      case 6:

        goto LABEL_68;
      case 0xA:
      case 0x11:
        __swift_destroy_boxed_opaque_existential_1(__dst + 216);

        goto LABEL_68;
      case 0xB:
        __swift_destroy_boxed_opaque_existential_1(__dst + 216);
        break;
      case 0xC:
      case 0xD:

        if (*(__dst + 31))
        {
          __swift_destroy_boxed_opaque_existential_1((__dst + 14));
        }

        if (*(__dst + 34) != 1)
        {
        }

        goto LABEL_68;
      case 0xE:

        if (*(__dst + 31))
        {
          __swift_destroy_boxed_opaque_existential_1((__dst + 14));
        }

        v12 = *(__dst + 34);
        goto LABEL_63;
      case 0x12:

        if (*(__dst + 32))
        {
          __swift_destroy_boxed_opaque_existential_1(__dst + 232);
        }

        if (*(__dst + 35) != 1)
        {
        }

        goto LABEL_68;
      case 0x13:
        if (*(__dst + 30))
        {
          __swift_destroy_boxed_opaque_existential_1(__dst + 216);
        }

        v12 = *(__dst + 33);
LABEL_63:
        if (v12 == 1)
        {
          break;
        }

        goto LABEL_68;
      case 0x15:
        if (*(__dst + 27))
        {
        }

        if (*(__dst + 29))
        {
LABEL_68:
        }

        break;
      default:
        break;
    }
  }

  return memcpy(__dst, __src, 0x139uLL);
}

uint64_t outlined destroy of (NavigationState.Base, NavigationState.Base?)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Void __swiftcall NavigationState.finalizeFlush()()
{
  v1 = *(v0 + 24);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  while (v4)
  {
LABEL_12:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v9 = *(v1 + 48) + 24 * (v8 | (v6 << 6));
    v11 = specialized Dictionary.subscript.modify(v19, *v9, *(v9 + 8), *(v9 + 16));
    if (*(v10 + 248))
    {
      v12 = v10 + 353;
      v13 = *(v10 + 353);
      if (v13 != 2)
      {
        if ((v13 & 1) == 0)
        {
          if (*(v10 + 104))
          {
            v14 = v10;
            v15 = Transaction.animation.getter();
            if (v15)
            {
              if (*(v12 + 1) == 1)
              {
              }

              else
              {
                *(v14 + 344) = v15;

                v16 = *(v14 + 340);
                v17 = __CFADD__(v16, 1);
                v18 = v16 + 1;
                if (v17)
                {
                  goto LABEL_22;
                }

                *(v14 + 340) = v18;
              }
            }
          }
        }

        *v12 = 2;
      }
    }

    (v11)(v19, 0);
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      return;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t (*specialized Dictionary.subscript.modify(uint64_t **a1, uint64_t a2, unsigned __int8 a3, uint64_t a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = specialized Dictionary._Variant.subscript.modify(v8, a2, a3, a4);
  return Dictionary.subscript.modifyspecialized ;
}

void EnvironmentValues.writingToolsBehavior.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t assignWithCopy for PositionedNavigationDestinationProcessor(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 1);
  if (*(a1 + 8) == 1)
  {
    if (v4 == 1)
    {
      v5 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v5;
    }

    else
    {
      swift_weakCopyInit();
      *(a1 + 8) = *(a2 + 1);
      *(a1 + 16) = *(a2 + 2);
    }
  }

  else if (v4 == 1)
  {
    outlined destroy of NavigationAuthority(a1);
    v6 = *(a2 + 2);
    *a1 = *a2;
    *(a1 + 16) = v6;
  }

  else
  {
    swift_weakCopyAssign();
    *(a1 + 8) = *(a2 + 1);

    *(a1 + 16) = *(a2 + 2);
  }

  return a1;
}

uint64_t specialized LazyMapSequence.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v13 = (v7 - 1) & v7;
    v14 = __clz(__rbit64(v7)) | (v8 << 6);
    v15 = *(v3 + 48) + 48 * v14;
    v17 = *v15;
    v16 = *(v15 + 8);
    v18 = *(v15 + 16);
    v32 = *(v15 + 24);
    *&v33 = *(v15 + 32);
    *(&v33 + 1) = *(v15 + 40);
    result = outlined init with copy of PositionedNavigationDestination.Storage.SeededRequest(*(v3 + 56) + 176 * v14, &v34);
    v20 = v34;
    v21 = v35;
    v22 = v36;
    v23 = v37;
    v24 = v38;
    v25 = v39;
    v26 = v40;
    v27 = v41;
    v28 = *v42;
    v12 = *&v42[8];
    v29 = *&v42[24];
    v11 = v8;
    v30 = *&v42[40];
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v13;
    if (v12 >> 1 == 0xFFFFFFFF)
    {
      *(a1 + 144) = 0u;
      *(a1 + 160) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 176) = 0;
      *(a1 + 184) = 0x1FFFFFFFELL;
      *(a1 + 200) = 0;
      *(a1 + 208) = 0;
      *(a1 + 192) = 0;
      *(a1 + 216) = 0;
    }

    else
    {
      v31 = v1[5];
      *&v34 = v17;
      *(&v34 + 1) = v16;
      *&v35 = v18;
      *(&v35 + 1) = v32;
      v36 = v33;
      v37 = v20;
      v38 = v21;
      v39 = v22;
      v40 = v23;
      v41 = v24;
      *v42 = v25;
      *&v42[16] = v26;
      *&v42[32] = v27;
      v43 = v28;
      v44 = v12;
      v45 = v29;
      v46 = v30;
      v31(&v34);
      return outlined destroy of (key: ViewIdentity, value: ConfirmationDialog)(&v34, &lazy cache variable for type metadata for (key: NavigationStackViewPosition, value: PositionedNavigationDestination.Storage.SeededRequest));
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    v12 = xmmword_18CD67BD0;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v33 = 0uLL;
        v30 = 0;
        v28 = 0;
        v32 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v13 = 0;
        v20 = 0uLL;
        v21 = 0uLL;
        v22 = 0uLL;
        v23 = 0uLL;
        v24 = 0uLL;
        v25 = 0uLL;
        v26 = 0uLL;
        v27 = 0uLL;
        v29 = 0uLL;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    outlined init with copy of NavigationLinkSelectionIdentifier(*(v3 + 48) + (v13 << 6), v16);
    outlined init with copy of UpdateViewDestinationRequest(*(v3 + 56) + 192 * v13, v17);
    v19 = v16[0];
    v20 = v16[1];
    v21 = v16[2];
    v22 = v16[3];
    outlined init with take of UpdateViewDestinationRequest(v17, v23);
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    v14 = v1[5];
    result = outlined init with take of (key: NavigationLinkSelectionIdentifier, value: UpdateViewDestinationRequest)?(&v19, v17, &lazy cache variable for type metadata for (key: NavigationLinkSelectionIdentifier, value: UpdateViewDestinationRequest)?, &lazy cache variable for type metadata for (key: NavigationLinkSelectionIdentifier, value: UpdateViewDestinationRequest));
    if (v18 == 1)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 1;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      *(a1 + 144) = 0u;
      *(a1 + 160) = 0u;
      *(a1 + 176) = 0u;
      *(a1 + 192) = 0u;
      *(a1 + 208) = 0u;
      *(a1 + 224) = 0u;
      *(a1 + 240) = 0u;
    }

    else
    {
      outlined init with take of (key: ViewIdentity, value: ConfirmationDialog)(v17, v16, &lazy cache variable for type metadata for (key: NavigationLinkSelectionIdentifier, value: UpdateViewDestinationRequest));
      v14(v16);
      return outlined destroy of (key: ViewIdentity, value: ConfirmationDialog)(v16, &lazy cache variable for type metadata for (key: NavigationLinkSelectionIdentifier, value: UpdateViewDestinationRequest));
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v12 = 0;
        *&v20 = 0;
        *(&v20 + 1) = 1;
        v19 = 0uLL;
        v21 = 0u;
        v22 = 0u;
        memset(v23, 0, sizeof(v23));
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v4 + 48) + 4 * v13);
    result = outlined init with copy of InspectorStorage(*(v4 + 56) + 120 * v13, &v25);
    v16 = v25;
    v17 = *v26;
    v18 = *&v26[16];
    v19 = *&v26[32];
    v20 = *&v26[48];
    v21 = *&v26[64];
    v22 = *&v26[80];
    v23 = *&v26[96];
    *v1 = v4;
    v1[1] = v3;
    v1[2] = v6;
    v1[3] = v8;
    v1[4] = v12;
    if (v17 == 1)
    {
LABEL_13:
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 1;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0;
    }

    else
    {
      v24 = v1[5];
      v25 = v14;
      *v26 = v16;
      *&v26[8] = v17;
      *&v26[24] = v18;
      *&v26[40] = v19;
      *&v26[56] = v20;
      *&v26[72] = v21;
      *&v26[88] = v22;
      *&v26[104] = v23;
      v24(&v25);
      return outlined destroy of (key: ViewIdentity, value: ConfirmationDialog)(&v25, &lazy cache variable for type metadata for (key: ViewIdentity, value: InspectorStorage));
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v1[3] = v11;
        v1[4] = 0;
        goto LABEL_13;
      }

      v7 = *(v3 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v31 = v1[2];
    v8 = v1[3];
LABEL_11:
    v30 = (v7 - 1) & v7;
    v12 = __clz(__rbit64(v7)) | (v8 << 6);
    outlined init with copy of ToolbarPlacement.Role(*(v4 + 48) + 40 * v12, v40);
    v13 = (*(v4 + 56) + 80 * v12);
    v32 = *v13;
    v14 = *(v13 + 57);
    v16 = v13[2];
    v15 = v13[3];
    v33 = v13[1];
    *v34 = v16;
    *&v34[16] = v15;
    *&v34[25] = v14;
    v28 = v40[1];
    v29 = v40[0];
    v17 = v41;
    v18 = v32;
    v19 = v33;
    v26 = *(&v16 + 1);
    v27 = v16;
    v24 = *&v34[24];
    v25 = v15;
    v23 = v14 >> 56;
    v22 = HIBYTE(v14);
    result = outlined init with copy of ToolbarAppearanceConfiguration(&v32, v40);
    *v1 = v4;
    v1[1] = v3;
    v1[2] = v31;
    v1[3] = v8;
    v1[4] = v30;
    if (*(&v18 + 1) == 1)
    {
LABEL_14:
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = 1;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 97) = 0u;
    }

    else
    {
      v21 = v1[5];
      v32 = v29;
      v33 = v28;
      *v34 = v17;
      *&v34[8] = v18;
      *&v34[24] = v19;
      *&v34[40] = v27;
      v35 = v26;
      v36 = v25;
      v37 = v24;
      v38 = v23;
      v39 = v22;
      v21(&v32);
      return outlined destroy of (key: ViewIdentity, value: ConfirmationDialog)(&v32, &lazy cache variable for type metadata for (key: ToolbarPlacement.Role, value: ToolbarAppearanceConfiguration));
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v1[3] = v11;
        v1[4] = 0;
        goto LABEL_14;
      }

      v7 = *(v3 + 8 * v8);
      ++v5;
      if (v7)
      {
        v31 = v1[2];
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v4 + 48) + 8 * v13);
    result = outlined init with copy of NavigationDestinationPresentation(*(v4 + 56) + 96 * v13, v24);
    v16 = *v24;
    v17 = *&v24[16];
    v18 = *&v24[32];
    v19 = *&v24[48];
    v20 = *&v24[64];
    v21 = *&v24[80];
    v22 = v25;
    *v1 = v4;
    v1[1] = v3;
    v1[2] = v6;
    v1[3] = v8;
    v1[4] = v12;
    if (v22 == 255)
    {
LABEL_13:
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 96) = -1;
    }

    else
    {
      v23 = v1[5];
      *v24 = v14;
      *&v24[8] = v16;
      *&v24[24] = v17;
      *&v24[40] = v18;
      *&v24[56] = v19;
      *&v24[72] = v20;
      v25 = v21;
      v26 = v22;
      v23(v24);
      return outlined destroy of (key: ViewIdentity, value: ConfirmationDialog)(v24, &lazy cache variable for type metadata for (key: Namespace.ID, value: NavigationDestinationPresentation));
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v1[3] = v11;
        v1[4] = 0;
        goto LABEL_13;
      }

      v7 = *(v3 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  if (v2 != *(v1 + 56))
  {
    goto LABEL_10;
  }

  if ((*(v1 + 96) & 1) == 0)
  {
    if (v3 == *(v1 + 64))
    {
      v5 = *(v1 + 72);
    }

    else
    {
      v5 = 1;
    }

    if ((v5 & 1) == 0)
    {
      goto LABEL_17;
    }

    v4 = 0;
LABEL_10:
    v6 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
    }

    else
    {
      v8 = *(v1 + 16);
      v7 = *(v1 + 24);
      v9 = __OFADD__(v8, v7);
      v10 = v8 + v7;
      if (!v9)
      {
        if (v6 == v10)
        {
          v11 = 0;
LABEL_16:
          *(v1 + 80) = v6;
          *(v1 + 88) = v11;
          *(v1 + 96) = v6 == v10;
          v12 = *(v1 + 104);
          v14[0] = v2;
          v14[1] = v3;
          v15 = v4;
          return v12(v14);
        }

        if (v4)
        {
          goto LABEL_22;
        }

        v11 = v3 + 1;
        if (!__OFADD__(v3, 1))
        {
          goto LABEL_16;
        }

LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  if ((*(v1 + 72) & 1) == 0)
  {
    v4 = 1;
    goto LABEL_10;
  }

LABEL_17:
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 88) = -256;
  return result;
}

uint64_t outlined consume of ResolvedNavigationDestinations?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

char *storeEnumTagSinglePayload for AccessibilityLargeContentViewBehaviorModifier(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t NavigationState.update(for:controllerCache:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 152);
  v4 = *(a1 + 104);
  v5 = *(a1 + 112);
  v6 = *(a1 + 120);
  v7 = *(a1 + 128);
  v8 = *(a1 + 136) >> 62;
  if (v8)
  {
    if (v8 != 1 || *(a1 + 120) == 6)
    {
      outlined init with copy of NavigationRequest(a1, __src);
      if (*(&__src[8] + 1) >> 62 == 2 && *(&__src[8] + 1) == 0x8000000000000000 && !(*&__src[8] | *&__src[9] | *(&__src[7] + 1) | *&__src[7] | *(&__src[6] + 1)))
      {
        outlined init with copy of NavigationRequest.Action(__src, &v115);
        v10 = BYTE8(__src[9]);
        outlined destroy of NavigationRequest(__src);
        HIBYTE(v121) = v10;
        *&v110[64] = v119;
        *&v110[80] = v120;
        *v110 = v115;
        *&v110[16] = v116;
        *&v110[32] = v117;
        *&v110[48] = v118;
        *&v110[96] = v121;
        if (v10 << 8 != 512)
        {
          v112[4] = *&v110[64];
          v112[5] = *&v110[80];
          LOWORD(v112[6]) = *&v110[96];
          v112[0] = *v110;
          v112[1] = *&v110[16];
          v112[2] = *&v110[32];
          v112[3] = *&v110[48];
          if (v104[13] == 1)
          {
            v11 = *(v104 + 13);
            v12 = *(v104 + 17);
            __src[2] = *(v104 + 15);
            __src[3] = v12;
            LOWORD(__src[4]) = *(v104 + 76);
            __src[0] = *(v104 + 11);
            __src[1] = v11;
            outlined destroy of Binding<NavigationSplitViewColumn>(__src, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
            v104[12] = 0;
            v104[13] = 0;
            v104[11] = 0;
            *(v104 + 112) = 0;
            *(v104 + 113) = 3;
            *(v104 + 15) = 0u;
            *(v104 + 17) = 0u;
            *(v104 + 76) = 768;
          }

          NavigationSplitViewState.update(for:)(v112, __src);
          result = outlined destroy of NavigationRequest.SplitRequest(v112);
          if (!v99)
          {
            v14 = *(&__src[21] + 4);
            result = outlined destroy of NavigationState.RequestResults(__src);
            v104[2] = vadd_s32(v104[2], v14);
          }

          return result;
        }
      }

      else
      {
        outlined destroy of NavigationRequest(__src);
        memset(v110, 0, 96);
        *&v110[96] = 512;
      }

      outlined destroy of Binding<NavigationSplitViewColumn>(v110, &lazy cache variable for type metadata for NavigationRequest.SplitRequest?, &type metadata for NavigationRequest.SplitRequest, MEMORY[0x1E69E6720]);
      outlined init with copy of NavigationRequest(a1, &v115);
      *&v110[160] = xmmword_18CD67BC0;
      *&v110[176] = 0;
      if (v124 >> 62 == 1)
      {
        *&v110[104] = v122;
        *&v110[120] = v123;
        v110[136] = v124 & 1;
        *&v110[144] = v125;
        outlined init with copy of NavigationRequest.Action(&v115, v110);
        v15 = v126;
        outlined destroy of NavigationRequest(&v115);
        v110[152] = v15;
        __src[10] = *&v110[160];
        *&__src[11] = *&v110[176];
        __src[4] = *&v110[64];
        __src[5] = *&v110[80];
        __src[6] = *&v110[96];
        __src[7] = *&v110[112];
        __src[0] = *v110;
        __src[1] = *&v110[16];
        __src[2] = *&v110[32];
        __src[3] = *&v110[48];
        __src[8] = *&v110[128];
        __src[9] = *&v110[144];
        if (*&v110[144] != 1)
        {
          v112[8] = __src[8];
          v112[9] = __src[9];
          v112[10] = __src[10];
          *&v112[11] = *&__src[11];
          v112[4] = __src[4];
          v112[5] = __src[5];
          v112[6] = __src[6];
          v112[7] = __src[7];
          v112[0] = __src[0];
          v112[1] = __src[1];
          v112[2] = __src[2];
          v112[3] = __src[3];
          if (v104[5])
          {
            v16 = *(v104 + 13);
            v17 = *(v104 + 17);
            *&v110[32] = *(v104 + 15);
            *&v110[48] = v17;
            *&v110[64] = *(v104 + 76);
            *v110 = *(v104 + 11);
            *&v110[16] = v16;
            v18 = *(v104 + 13);
            v19 = *(v104 + 17);
            v117 = *(v104 + 15);
            v118 = v19;
            LOWORD(v119) = *(v104 + 76);
            v20 = *(v104 + 11);
            v116 = v18;
            v115 = v20;
            v21 = v99;
          }

          else
          {
            v85 = MEMORY[0x1E69E7CC0];
            v86 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI15NavigationStateV7ListKeyV_AC0egF0V9Selection33_0DC81BD289CFCD22E83D257AB997227BLLVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
            v87 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI15NavigationStateV7ListKeyV_SayAC7BindingVySbGGTt0g5Tf4g_n(v85);
            v88 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI15NavigationStateV7ListKeyV_AC03AnyG9SelectionVTt0g5Tf4g_n(v85);
            v89 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI15NavigationStateV7ListKeyV_SbTt0g5Tf4g_n(v85);
            outlined consume of NavigationListState?(v104[4], v104[5]);
            v104[4] = 0;
            v104[5] = v86;
            v90 = MEMORY[0x1E69E7CD0];
            v104[6] = v87;
            v104[7] = v88;
            v104[8] = v89;
            v104[9] = v90;
            *(v104 + 20) = 0;
            v91 = *(v104 + 13);
            v92 = *(v104 + 17);
            *&v110[32] = *(v104 + 15);
            *&v110[48] = v92;
            *&v110[64] = *(v104 + 76);
            *v110 = *(v104 + 11);
            *&v110[16] = v91;
            v93 = *(v104 + 13);
            v94 = *(v104 + 17);
            v117 = *(v104 + 15);
            v118 = v94;
            LOWORD(v119) = *(v104 + 76);
            v95 = *(v104 + 11);
            v116 = v93;
            v115 = v95;
            v21 = v99;
            if (!v86)
            {
LABEL_103:
              __break(1u);
LABEL_104:
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
LABEL_105:
              result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return result;
            }
          }

          outlined init with copy of NavigationState.Base?(v110, v128, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState);
          NavigationListState.update(for:splitViewState:)(v112, &v115, __src);
          v128[2] = v117;
          v128[3] = v118;
          v129 = v119;
          v128[1] = v116;
          v128[0] = v115;
          outlined destroy of Binding<NavigationSplitViewColumn>(v128, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
          if (v21)
          {
            return outlined destroy of NavigationRequest.ListRequest(v112);
          }

          outlined destroy of NavigationRequest.ListRequest(v112);
          v96 = *(&__src[21] + 4);
          result = outlined destroy of NavigationState.RequestResults(__src);
          v104[2] = vadd_s32(v104[2], v96);
          return result;
        }
      }

      else
      {
        outlined destroy of NavigationRequest(&v115);
        memset(__src, 0, 144);
        *&__src[9] = 1;
        *(&__src[9] + 8) = 0u;
        *(&__src[10] + 8) = 0u;
      }

      outlined destroy of Binding<NavigationSplitViewColumn>(__src, &lazy cache variable for type metadata for NavigationRequest.ListRequest?, &type metadata for NavigationRequest.ListRequest, MEMORY[0x1E69E6720]);
    }
  }

  if (NavigationRequest.skipFirstColumn.getter())
  {
    if (v8 && (v8 != 1 || (v22 = v6, v4 = v5, LOBYTE(v5) = v6, v6 = v7, v22 == 6)) || v5 - 2 < 4)
    {
      v4 = 0;
      v23 = 0;
      v6 = 0;
      v24 = 0x1FFFFFFFELL;
    }

    else
    {
      if (v5)
      {
        v23 = 2;
      }

      else if (v6 == 3)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      v24 = 0;
    }

    memset(__src, 0, 96);
    LOBYTE(__src[6]) = -1;
    outlined init with copy of NavigationRequest(a1, v128);
    v136 = 0u;
    v137 = 0u;
    v138 = 0u;
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    v139 = -1;
    *&v130 = v4;
    *(&v130 + 1) = v23;
    v131 = v6;
    v132 = v24;
  }

  else
  {
    memset(__src, 0, 96);
    LOBYTE(__src[6]) = -1;
    outlined init with copy of NavigationRequest(a1, v128);
    v136 = 0u;
    v137 = 0u;
    v138 = 0u;
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    v139 = -1;
    v130 = 0u;
    v131 = 0u;
    v132 = xmmword_18CD67BD0;
  }

  outlined assign with take of NavigationRequest.Action?(__src, &v133);
  outlined init with copy of NavigationRequest.TargetedRequest(v128, &v115);
  v127 = 0;
  outlined init with copy of (NavigationState.UpdateResult, NavigationState.Seeds)(&v115, __src);
  v25 = v99;
  v26 = v104;
  if (*(&__src[8] + 1) >> 2 != 0x7FFFFFFFLL)
  {
    v28 = 0;
    v27 = 0;
    v97 = v3 ^ 1;
    while (1)
    {
      v102 = v28;
      memcpy(__dst, __src, 0x139uLL);
      v30 = __dst[21];
      v31 = __dst[22];
      v32 = __dst[25];
      v33 = __dst[21];
      v34 = __dst[22];
      v35 = __dst[23];
      v36 = __dst[24];
      v108 = __dst[23];
      v109 = __dst[24];
      v106 = __dst[25] & 0xFFFFFFFFFFFFFFFELL;
      v107 = __dst[25];
      if ((__dst[25] & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL)
      {
        v33 = __dst[13];
        v34 = __dst[14];
        v35 = __dst[15];
        v36 = __dst[16];
        v32 = __dst[17];
      }

      v37 = v32 >> 62;
      v101 = v27;
      if (v37)
      {
        v38 = v37 != 1 || v35 == 6;
        v33 = v34;
        LOBYTE(v34) = v35;
        if (v38)
        {
          goto LABEL_104;
        }
      }

      else
      {
        v36 = v35;
      }

      v39 = v26[3];
      v105 = __dst[22];
      if (*(v39 + 16) && (v40 = specialized __RawDictionaryStorage.find<A>(_:)(v33, v34, v36), (v41 & 1) != 0))
      {
        outlined init with copy of NavigationColumnState(*(v39 + 56) + 360 * v40, __src);
        outlined destroy of Binding<NavigationSplitViewColumn>(__src, &lazy cache variable for type metadata for NavigationColumnState?, &type metadata for NavigationColumnState, MEMORY[0x1E69E6720]);
      }

      else
      {
        v100 = v25;
        memset(__src, 0, 355);
        outlined destroy of Binding<NavigationSplitViewColumn>(__src, &lazy cache variable for type metadata for NavigationColumnState?, &type metadata for NavigationColumnState, MEMORY[0x1E69E6720]);
        v42 = v30;
        v43 = v108;
        v44 = v109;
        v45 = v107;
        if (v106 == 0x1FFFFFFFELL)
        {
          v42 = __dst[13];
          v31 = __dst[14];
          v43 = __dst[15];
          v44 = __dst[16];
          v45 = __dst[17];
        }

        v46 = v45 >> 62;
        v103 = v30;
        if (v46)
        {
          if (v46 != 1)
          {
            goto LABEL_104;
          }

          v42 = v31;
          LOBYTE(v31) = v43;
          if (v43 == 6)
          {
            goto LABEL_104;
          }
        }

        else
        {
          v44 = v43;
        }

        v47 = *v26;
        v48 = v26[1];
        *&__src[0] = 0x100000001;
        DWORD2(__src[0]) = 0;
        *(&__src[2] + 8) = 0u;
        *(&__src[3] + 8) = 0u;
        *(&__src[4] + 8) = 0u;
        *(&__src[5] + 8) = 0u;
        *(&__src[6] + 8) = 0u;
        *(&__src[7] + 8) = 0u;
        *(&__src[8] + 8) = 0u;
        *(&__src[9] + 8) = 0u;
        *(&__src[10] + 8) = 0u;
        *(&__src[11] + 8) = 0u;
        *(&__src[12] + 1) = 0;
        LOBYTE(__src[13]) = -1;
        LOBYTE(__src[15]) = 1;
        memset(&__src[21], 0, 17);
        *(&__src[22] + 1) = 2;
        *&__src[1] = v42;
        BYTE8(__src[1]) = v31;
        *&__src[2] = v44;
        v49 = MEMORY[0x1E69E7CC0];
        v50 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI33NavigationDestinationResolverBaseCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v51 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI33NavigationDestinationResolverBaseCTt0g5Tf4g_n(v49);
        v52 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SaySOGTt0g5Tf4g_n(v49);

        v53 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Se_SEpXpTt0g5Tf4g_n(v49);
        *(&__src[15] + 1) = v50;
        *&__src[16] = v51;
        *(&__src[16] + 1) = v52;
        *&__src[17] = 1;
        *(&__src[17] + 1) = v53;
        *&__src[18] = v47;
        *(&__src[18] + 1) = v48;
        *&__src[19] = a2;
        v54 = v103;
        *(&__src[19] + 1) = v42;
        v55 = v105;
        v56 = v108;
        v57 = v109;
        LOBYTE(__src[20]) = v31;
        v58 = v107;
        *(&__src[20] + 1) = v44;
        if (v106 == 0x1FFFFFFFELL)
        {
          v54 = __dst[13];
          v55 = __dst[14];
          v56 = __dst[15];
          v57 = __dst[16];
          v58 = __dst[17];
        }

        v59 = v58 >> 62;
        v25 = v100;
        if (v59)
        {
          if (v59 != 1)
          {
            goto LABEL_104;
          }

          v54 = v55;
          LOBYTE(v55) = v56;
          if (v56 == 6)
          {
            goto LABEL_104;
          }
        }

        else
        {
          v57 = v56;
        }

        outlined init with copy of NavigationColumnState(__src, v112);

        specialized Dictionary.subscript.setter(v112, v54, v55, v57);
        outlined destroy of NavigationColumnState(__src);
        v31 = v105;
        v30 = v103;
      }

      v60 = v30;
      v61 = v31;
      v62 = v108;
      v63 = v109;
      v64 = v107;
      if (v106 == 0x1FFFFFFFELL)
      {
        v30 = __dst[13];
        v61 = __dst[14];
        v62 = __dst[15];
        v63 = __dst[16];
        v64 = __dst[17];
      }

      v65 = v64 >> 62;
      if (v65)
      {
        if (v65 != 1)
        {
          goto LABEL_104;
        }

        v30 = v61;
        LOBYTE(v61) = v62;
        if (v62 == 6)
        {
          goto LABEL_104;
        }
      }

      else
      {
        v63 = v62;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v111 = v104[3];
      v67 = v111;
      v104[3] = 0x8000000000000000;
      v69 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v61, v63);
      v70 = *(v67 + 16);
      v71 = (v68 & 1) == 0;
      v72 = v70 + v71;
      if (__OFADD__(v70, v71))
      {
        break;
      }

      v73 = v68;
      if (*(v67 + 24) >= v72)
      {
        v26 = v104;
        v76 = v60;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized _NativeDictionary.copy()();
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v72, isUniquelyReferenced_nonNull_native);
        v74 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v61, v63);
        if ((v73 & 1) != (v75 & 1))
        {
          goto LABEL_105;
        }

        v69 = v74;
        v26 = v104;
        v76 = v60;
      }

      if ((v73 & 1) == 0)
      {
        goto LABEL_102;
      }

      v77 = v111;
      memcpy(__src, (*(v111 + 56) + 360 * v69), 0x163uLL);
      if (BYTE1(__src[22]) == 2)
      {
        *(&__src[22] + 1) = 0;
      }

      outlined init with copy of NavigationState.Base?(__src, v110, &lazy cache variable for type metadata for NavigationColumnState?, &type metadata for NavigationColumnState);
      if (*&v110[248])
      {
        memcpy(v112, v110, 0x163uLL);
        memcpy((*(v77 + 56) + 360 * v69), v112, 0x163uLL);
      }

      else
      {
        outlined destroy of Binding<NavigationSplitViewColumn>(v110, &lazy cache variable for type metadata for NavigationColumnState?, &type metadata for NavigationColumnState, MEMORY[0x1E69E6720]);
        specialized _NativeDictionary._delete(at:)(v69, v77);
      }

      v78 = v105;
      outlined destroy of Binding<NavigationSplitViewColumn>(__src, &lazy cache variable for type metadata for NavigationColumnState?, &type metadata for NavigationColumnState, MEMORY[0x1E69E6720]);
      v26[3] = v77;
      if (v106 == 0x1FFFFFFFELL)
      {
        v76 = __dst[13];
        v78 = __dst[14];
        v108 = __dst[15];
        v109 = __dst[16];
        v107 = __dst[17];
      }

      if (v107 >> 62)
      {
        if (v107 >> 62 != 1 || v108 == 6)
        {
          goto LABEL_104;
        }

        v79 = specialized Dictionary._Variant.subscript.modify(v112, v78, v108, v109);
      }

      else
      {
        v79 = specialized Dictionary._Variant.subscript.modify(v112, v76, v78, v108);
      }

      if (!*(v80 + 248))
      {
        goto LABEL_101;
      }

      v81 = v79;
      v82 = NavigationColumnState.update(for:shouldAnimate:splitViewState:)(__src, __dst, v97 & 1, (v26 + 11));
      if (v25)
      {
        (v81)(v112, 0);
        outlined destroy of NavigationRequest.TargetedRequest(__dst);
        outlined destroy of NavigationRequest.TargetedRequest(v128);
        return outlined destroy of (NavigationState.Base, NavigationState.Base?)(&v115, type metadata accessor for (NavigationState.UpdateResult, NavigationState.Seeds));
      }

      v83 = v82;
      v84 = HIDWORD(v82);
      (v81)(v112, 0);
      outlined destroy of NavigationRequest.TargetedRequest(__dst);
      outlined assign with take of NavigationState.UpdateResult(__src, &v115);
      v127 = v83;
      v28 = v102 + v83;
      v27 = v101 + v84;
      outlined init with copy of (NavigationState.UpdateResult, NavigationState.Seeds)(&v115, __src);
      if (*(&__src[8] + 1) >> 2 == 0x7FFFFFFFLL)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    memset(__src, 0, 355);
    __break(1u);
    goto LABEL_103;
  }

  v27 = 0;
  v28 = 0;
LABEL_32:
  outlined destroy of NavigationRequest.TargetedRequest(v128);
  outlined destroy of NavigationState.UpdateResult(__src);
  v29 = *(v26 + 5) + v27;
  *(v26 + 4) += v28;
  *(v26 + 5) = v29;
  return outlined destroy of (NavigationState.Base, NavigationState.Base?)(&v115, type metadata accessor for (NavigationState.UpdateResult, NavigationState.Seeds));
}

uint64_t destroy for NavigationRequest.Action(uint64_t result)
{
  v1 = result;
  v2 = *(result + 96);
  if (v2 >= 0x16)
  {
    v2 = *result + 22;
  }

  switch(v2)
  {
    case 0u:
      goto LABEL_33;
    case 1u:

      goto LABEL_33;
    case 2u:

      result = (v1 + 2);
      goto LABEL_37;
    case 3u:

    case 4u:
    case 5u:

      goto LABEL_33;
    case 6u:

      goto LABEL_33;
    case 0xAu:
    case 0x11u:
      __swift_destroy_boxed_opaque_existential_1(result);

      goto LABEL_33;
    case 0xBu:
LABEL_37:

      return __swift_destroy_boxed_opaque_existential_1(result);
    case 0xCu:
    case 0xDu:

      if (v1[4])
      {
        __swift_destroy_boxed_opaque_existential_1((v1 + 1));
      }

      if (v1[7] != 1)
      {
      }

      goto LABEL_33;
    case 0xEu:

      if (v1[4])
      {
        __swift_destroy_boxed_opaque_existential_1((v1 + 1));
      }

      result = v1[7];
      if (result == 1)
      {
        return result;
      }

      goto LABEL_33;
    case 0x12u:

      if (v1[5])
      {
        __swift_destroy_boxed_opaque_existential_1((v1 + 2));
      }

      if (v1[8] != 1)
      {
      }

      goto LABEL_33;
    case 0x13u:
      if (*(result + 24))
      {
        __swift_destroy_boxed_opaque_existential_1(result);
      }

      result = v1[6];
      if (result == 1)
      {
        return result;
      }

      goto LABEL_33;
    case 0x15u:
      if (*result)
      {
      }

      if (v1[2])
      {
LABEL_33:
      }

      break;
    default:
      return result;
  }

  return result;
}

void type metadata accessor for (NavigationState.UpdateResult, NavigationState.Seeds)()
{
  if (!lazy cache variable for type metadata for (NavigationState.UpdateResult, NavigationState.Seeds))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (NavigationState.UpdateResult, NavigationState.Seeds));
    }
  }
}

char *initializeWithCopy for NavigationState.UpdateResult(char *__dst, char *__src)
{
  if ((*(__src + 17) >> 1) > 0x80000000)
  {

    return memcpy(__dst, __src, 0x139uLL);
  }

  else
  {
    switch(__src[96])
    {
      case 0:
        v4 = *(__src + 1);
        *__dst = *__src;
        *(__dst + 1) = v4;
        __dst[96] = 0;
        goto LABEL_61;
      case 1:
        v23 = *(__src + 1);
        *__dst = *__src;
        *(__dst + 1) = v23;
        v24 = *(__src + 3);
        *(__dst + 2) = *(__src + 2);
        *(__dst + 3) = v24;
        *(__dst + 4) = *(__src + 4);
        __dst[96] = 1;

        goto LABEL_61;
      case 2:
        v15 = *(__src + 1);
        *__dst = *__src;
        *(__dst + 1) = v15;
        v16 = *(__src + 40);
        *(__dst + 40) = v16;
        v17 = v16;
        v18 = **(v16 - 8);

        v18(__dst + 16, __src + 16, v17);
        *(__dst + 56) = *(__src + 56);
        __dst[96] = 2;
        break;
      case 3:
        *__dst = *__src;
        *(__dst + 8) = *(__src + 8);
        *(__dst + 3) = *(__src + 3);
        __dst[96] = 3;

        break;
      case 4:
        v31 = *(__src + 1);
        *__dst = *__src;
        *(__dst + 1) = v31;
        *(__dst + 8) = *(__src + 8);
        v14 = 4;
        goto LABEL_25;
      case 5:
        v19 = *(__src + 1);
        *__dst = *__src;
        *(__dst + 1) = v19;
        *(__dst + 8) = *(__src + 8);
        v14 = 5;
        goto LABEL_25;
      case 6:
        v25 = *(__src + 1);
        *__dst = *__src;
        *(__dst + 1) = v25;
        *(__dst + 2) = *(__src + 2);
        __dst[96] = 6;

        goto LABEL_61;
      case 10:
        v26 = *(__src + 24);
        *(__dst + 24) = v26;
        (**(v26 - 8))(__dst, __src);
        v27 = *(__src + 6);
        *(__dst + 5) = *(__src + 5);
        *(__dst + 6) = v27;
        *(__dst + 28) = *(__src + 28);
        v14 = 10;
        goto LABEL_25;
      case 11:
        v35 = *(__src + 24);
        *(__dst + 24) = v35;
        (**(v35 - 8))(__dst, __src);
        __dst[96] = 11;
        break;
      case 12:
        *__dst = *__src;
        v32 = __dst + 8;
        v33 = *(__src + 4);

        if (v33)
        {
          v34 = *(__src + 5);
          *(__dst + 4) = v33;
          *(__dst + 5) = v34;
          (**(v33 - 8))(__dst + 8, __src + 8, v33);
        }

        else
        {
          v54 = *(__src + 24);
          *v32 = *(__src + 8);
          *(__dst + 24) = v54;
          *(__dst + 5) = *(__src + 5);
        }

        v55 = *(__src + 7);
        if (v55 == 1)
        {
          *(__dst + 3) = *(__src + 3);
        }

        else
        {
          *(__dst + 6) = *(__src + 6);
          *(__dst + 7) = v55;
        }

        v56 = *(__src + 9);
        v57 = *(__src + 10);
        *(__dst + 8) = *(__src + 8);
        *(__dst + 9) = v56;
        *(__dst + 10) = v57;
        v43 = 12;
        goto LABEL_60;
      case 13:
        *__dst = *__src;
        v9 = __dst + 8;
        v10 = *(__src + 4);

        if (v10)
        {
          v11 = *(__src + 5);
          *(__dst + 4) = v10;
          *(__dst + 5) = v11;
          (**(v10 - 8))(__dst + 8, __src + 8, v10);
        }

        else
        {
          v44 = *(__src + 24);
          *v9 = *(__src + 8);
          *(__dst + 24) = v44;
          *(__dst + 5) = *(__src + 5);
        }

        v45 = *(__src + 7);
        if (v45 == 1)
        {
          *(__dst + 3) = *(__src + 3);
        }

        else
        {
          *(__dst + 6) = *(__src + 6);
          *(__dst + 7) = v45;
        }

        v46 = *(__src + 9);
        v47 = *(__src + 10);
        *(__dst + 8) = *(__src + 8);
        *(__dst + 9) = v46;
        *(__dst + 10) = v47;
        __dst[88] = __src[88];
        v43 = 13;
        goto LABEL_60;
      case 14:
        *__dst = *__src;
        v20 = __dst + 8;
        v21 = *(__src + 4);

        if (v21)
        {
          v22 = *(__src + 5);
          *(__dst + 4) = v21;
          *(__dst + 5) = v22;
          (**(v21 - 8))(__dst + 8, __src + 8, v21);
        }

        else
        {
          v48 = *(__src + 24);
          *v20 = *(__src + 8);
          *(__dst + 24) = v48;
          *(__dst + 5) = *(__src + 5);
        }

        v49 = *(__src + 7);
        if (v49 == 1)
        {
          *(__dst + 3) = *(__src + 3);
        }

        else
        {
          *(__dst + 6) = *(__src + 6);
          *(__dst + 7) = v49;
        }

        *(__dst + 8) = *(__src + 8);
        __dst[72] = __src[72];
        __dst[96] = 14;
        break;
      case 17:
        v12 = *(__src + 24);
        *(__dst + 24) = v12;
        (**(v12 - 8))(__dst, __src);
        __dst[40] = __src[40];
        v13 = *(__src + 7);
        *(__dst + 6) = *(__src + 6);
        *(__dst + 7) = v13;
        *(__dst + 32) = *(__src + 32);
        v14 = 17;
LABEL_25:
        __dst[96] = v14;

        goto LABEL_61;
      case 18:
        v6 = *(__src + 1);
        *__dst = *__src;
        *(__dst + 1) = v6;
        v7 = *(__src + 5);

        if (v7)
        {
          v8 = *(__src + 6);
          *(__dst + 5) = v7;
          *(__dst + 6) = v8;
          (**(v7 - 8))(__dst + 16, __src + 16, v7);
        }

        else
        {
          v39 = *(__src + 2);
          *(__dst + 1) = *(__src + 1);
          *(__dst + 2) = v39;
          *(__dst + 6) = *(__src + 6);
        }

        v40 = *(__src + 8);
        if (v40 == 1)
        {
          *(__dst + 56) = *(__src + 56);
        }

        else
        {
          *(__dst + 7) = *(__src + 7);
          *(__dst + 8) = v40;
        }

        v41 = *(__src + 10);
        v42 = *(__src + 11);
        *(__dst + 9) = *(__src + 9);
        *(__dst + 10) = v41;
        *(__dst + 11) = v42;
        v43 = 18;
LABEL_60:
        __dst[96] = v43;
LABEL_61:

        break;
      case 19:
        v28 = *(__src + 3);
        if (v28)
        {
          v29 = *(__src + 4);
          *(__dst + 3) = v28;
          *(__dst + 4) = v29;
          (**(v28 - 8))(__dst, __src);
        }

        else
        {
          v50 = *(__src + 1);
          *__dst = *__src;
          *(__dst + 1) = v50;
          *(__dst + 4) = *(__src + 4);
        }

        v51 = *(__src + 6);
        if (v51 == 1)
        {
          *(__dst + 40) = *(__src + 40);
        }

        else
        {
          *(__dst + 5) = *(__src + 5);
          *(__dst + 6) = v51;
        }

        *(__dst + 7) = *(__src + 7);
        __dst[96] = 19;
        break;
      case 21:
        if (*__src)
        {
          v30 = *(__src + 1);
          *__dst = *__src;
          *(__dst + 1) = v30;
        }

        else
        {
          *__dst = *__src;
        }

        v52 = *(__src + 2);
        if (v52)
        {
          v53 = *(__src + 3);
          *(__dst + 2) = v52;
          *(__dst + 3) = v53;
        }

        else
        {
          *(__dst + 1) = *(__src + 1);
        }

        __dst[96] = 21;
        break;
      default:
        v36 = *(__src + 5);
        *(__dst + 4) = *(__src + 4);
        *(__dst + 5) = v36;
        __dst[96] = __src[96];
        v37 = *(__src + 1);
        *__dst = *__src;
        *(__dst + 1) = v37;
        v38 = *(__src + 3);
        *(__dst + 2) = *(__src + 2);
        *(__dst + 3) = v38;
        break;
    }

    *(__dst + 104) = *(__src + 104);
    *(__dst + 120) = *(__src + 120);
    *(__dst + 136) = *(__src + 136);
    __dst[152] = __src[152];
    *(__dst + 20) = *(__src + 20);
    *(__dst + 168) = *(__src + 168);
    *(__dst + 184) = *(__src + 184);
    *(__dst + 200) = *(__src + 200);
    v58 = __dst + 216;
    v59 = __src + 216;
    v60 = __src[312];

    switch(v60)
    {
      case 0:
        v61 = *(__src + 28);
        *(__dst + 27) = *(__src + 27);
        *(__dst + 28) = v61;
        __dst[312] = 0;
        goto LABEL_114;
      case 1:
        v72 = *(__src + 28);
        *(__dst + 27) = *(__src + 27);
        *(__dst + 28) = v72;
        v73 = *(__src + 30);
        *(__dst + 29) = *(__src + 29);
        *(__dst + 30) = v73;
        *(__dst + 31) = *(__src + 31);
        __dst[312] = 1;

        goto LABEL_84;
      case 2:
        v76 = *(__src + 28);
        *(__dst + 27) = *(__src + 27);
        *(__dst + 28) = v76;
        v77 = *(__src + 16);
        *(__dst + 16) = v77;
        v78 = v77;
        v79 = **(v77 - 8);

        v79(__dst + 232, __src + 232, v78);
        *(__dst + 17) = *(__src + 17);
        __dst[312] = 2;
        return __dst;
      case 3:
        *(__dst + 27) = *(__src + 27);
        *(__dst + 14) = *(__src + 14);
        *(__dst + 30) = *(__src + 30);
        __dst[312] = 3;

        return __dst;
      case 4:
        v69 = *(__src + 28);
        *(__dst + 27) = *(__src + 27);
        *(__dst + 28) = v69;
        *(__dst + 116) = *(__src + 116);
        v70 = 4;
        goto LABEL_82;
      case 5:
        v71 = *(__src + 28);
        *(__dst + 27) = *(__src + 27);
        *(__dst + 28) = v71;
        *(__dst + 116) = *(__src + 116);
        v70 = 5;
        goto LABEL_82;
      case 6:
        v89 = *(__src + 28);
        *(__dst + 27) = *(__src + 27);
        *(__dst + 28) = v89;
        *(__dst + 29) = *(__src + 29);
        __dst[312] = 6;

LABEL_84:

        goto LABEL_114;
      case 10:
        v74 = *(__src + 15);
        *(__dst + 15) = v74;
        (**(v74 - 8))(__dst + 216, __src + 216);
        v75 = *(__src + 33);
        *(__dst + 32) = *(__src + 32);
        *(__dst + 33) = v75;
        *(__dst + 136) = *(__src + 136);
        v70 = 10;
        goto LABEL_82;
      case 11:
        v90 = *(__src + 15);
        *(__dst + 15) = v90;
        (**(v90 - 8))(__dst + 216, __src + 216);
        __dst[312] = 11;
        return __dst;
      case 12:
        *(__dst + 27) = *(__src + 27);
        v67 = *(__src + 31);

        if (v67)
        {
          v68 = *(__src + 32);
          *(__dst + 31) = v67;
          *(__dst + 32) = v68;
          (**(v67 - 8))(__dst + 224, __src + 224, v67);
        }

        else
        {
          v94 = *(__src + 15);
          *(__dst + 14) = *(__src + 14);
          *(__dst + 15) = v94;
          *(__dst + 32) = *(__src + 32);
        }

        v95 = __src + 264;
        v96 = *(__src + 34);
        if (v96 == 1)
        {
          *(__dst + 264) = *v95;
        }

        else
        {
          *(__dst + 33) = *v95;
          *(__dst + 34) = v96;
        }

        v97 = *(__src + 36);
        v98 = *(__src + 37);
        *(__dst + 35) = *(__src + 35);
        *(__dst + 36) = v97;
        *(__dst + 37) = v98;
        v99 = 12;
        goto LABEL_113;
      case 13:
        *(__dst + 27) = *(__src + 27);
        v80 = *(__src + 31);

        if (v80)
        {
          v81 = *(__src + 32);
          *(__dst + 31) = v80;
          *(__dst + 32) = v81;
          (**(v80 - 8))(__dst + 224, __src + 224, v80);
        }

        else
        {
          v100 = *(__src + 15);
          *(__dst + 14) = *(__src + 14);
          *(__dst + 15) = v100;
          *(__dst + 32) = *(__src + 32);
        }

        v101 = __src + 264;
        v102 = *(__src + 34);
        if (v102 == 1)
        {
          *(__dst + 264) = *v101;
        }

        else
        {
          *(__dst + 33) = *v101;
          *(__dst + 34) = v102;
        }

        v103 = *(__src + 36);
        v104 = *(__src + 37);
        *(__dst + 35) = *(__src + 35);
        *(__dst + 36) = v103;
        *(__dst + 37) = v104;
        __dst[304] = __src[304];
        v99 = 13;
        goto LABEL_113;
      case 14:
        *(__dst + 27) = *(__src + 27);
        v82 = *(__src + 31);

        if (v82)
        {
          v83 = *(__src + 32);
          *(__dst + 31) = v82;
          *(__dst + 32) = v83;
          (**(v82 - 8))(__dst + 224, __src + 224, v82);
        }

        else
        {
          v105 = *(__src + 15);
          *(__dst + 14) = *(__src + 14);
          *(__dst + 15) = v105;
          *(__dst + 32) = *(__src + 32);
        }

        v106 = __src + 264;
        v107 = *(__src + 34);
        if (v107 == 1)
        {
          *(__dst + 264) = *v106;
        }

        else
        {
          *(__dst + 33) = *v106;
          *(__dst + 34) = v107;
        }

        *(__dst + 35) = *(__src + 35);
        __dst[288] = __src[288];
        __dst[312] = 14;
        return __dst;
      case 17:
        v87 = *(__src + 15);
        *(__dst + 15) = v87;
        (**(v87 - 8))(__dst + 216, __src + 216);
        __dst[256] = __src[256];
        v88 = *(__src + 34);
        *(__dst + 33) = *(__src + 33);
        *(__dst + 34) = v88;
        *(__dst + 140) = *(__src + 140);
        v70 = 17;
LABEL_82:
        __dst[312] = v70;

        goto LABEL_114;
      case 18:
        v84 = *(__src + 28);
        *(__dst + 27) = *(__src + 27);
        *(__dst + 28) = v84;
        v85 = *(__src + 32);

        if (v85)
        {
          v86 = *(__src + 33);
          *(__dst + 32) = v85;
          *(__dst + 33) = v86;
          (**(v85 - 8))(__dst + 232, __src + 232, v85);
        }

        else
        {
          *(__dst + 232) = *(__src + 232);
          *(__dst + 248) = *(__src + 248);
          *(__dst + 33) = *(__src + 33);
        }

        v108 = *(__src + 35);
        if (v108 == 1)
        {
          *(__dst + 17) = *(__src + 17);
        }

        else
        {
          *(__dst + 34) = *(__src + 34);
          *(__dst + 35) = v108;
        }

        v109 = *(__src + 37);
        v110 = *(__src + 38);
        *(__dst + 36) = *(__src + 36);
        *(__dst + 37) = v109;
        *(__dst + 38) = v110;
        v99 = 18;
LABEL_113:
        __dst[312] = v99;
LABEL_114:

        break;
      case 19:
        v65 = *(__src + 30);
        if (v65)
        {
          v66 = *(__src + 31);
          *(__dst + 30) = v65;
          *(__dst + 31) = v66;
          (**(v65 - 8))(__dst + 216, __src + 216);
        }

        else
        {
          v92 = *(__src + 232);
          *v58 = *v59;
          *(__dst + 232) = v92;
          *(__dst + 31) = *(__src + 31);
        }

        v93 = *(__src + 33);
        if (v93 == 1)
        {
          *(__dst + 16) = *(__src + 16);
        }

        else
        {
          *(__dst + 32) = *(__src + 32);
          *(__dst + 33) = v93;
        }

        *(__dst + 34) = *(__src + 34);
        __dst[312] = 19;
        break;
      case 21:
        if (*v59)
        {
          v91 = *(__src + 28);
          *(__dst + 27) = *v59;
          *(__dst + 28) = v91;
        }

        else
        {
          *v58 = *v59;
        }

        v111 = *(__src + 29);
        if (v111)
        {
          v112 = *(__src + 30);
          *(__dst + 29) = v111;
          *(__dst + 30) = v112;
        }

        else
        {
          *(__dst + 232) = *(__src + 232);
        }

        __dst[312] = 21;
        break;
      default:
        v62 = *(__src + 296);
        *(__dst + 280) = *(__src + 280);
        *(__dst + 296) = v62;
        __dst[312] = __src[312];
        v63 = *(__src + 232);
        *v58 = *v59;
        *(__dst + 232) = v63;
        v64 = *(__src + 264);
        *(__dst + 248) = *(__src + 248);
        *(__dst + 264) = v64;
        break;
    }

    return __dst;
  }
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SaySOGTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<Int, [ObjectIdentifier]>();
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t initializeWithCopy for NavigationRequest.Action(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 96);
  if (v4 >= 0x16)
  {
    v4 = *a2 + 22;
  }

  switch(v4)
  {
    case 0u:
      v5 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v5;
      *(a1 + 96) = 0;

      return a1;
    case 1u:
      v20 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v20;
      v21 = *(a2 + 24);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = v21;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 96) = 1;

      goto LABEL_26;
    case 2u:
      v16 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v16;
      v17 = *(a2 + 40);
      *(a1 + 40) = v17;
      v18 = v17;
      v19 = **(v17 - 8);

      v19(a1 + 16, a2 + 16, v18);
      *(a1 + 56) = *(a2 + 56);
      v6 = 2;
      goto LABEL_66;
    case 3u:
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 96) = 3;

      return a1;
    case 4u:
      v11 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v11;
      *(a1 + 16) = *(a2 + 16);
      v12 = 4;
      goto LABEL_30;
    case 5u:
      v24 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v24;
      *(a1 + 16) = *(a2 + 16);
      v12 = 5;
      goto LABEL_30;
    case 6u:
      v29 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v29;
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 96) = 6;

LABEL_26:

      return a1;
    case 7u:
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      v6 = 7;
      goto LABEL_66;
    case 8u:
      *a1 = *a2;
      v6 = 8;
      goto LABEL_66;
    case 9u:
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      v6 = 9;
      goto LABEL_66;
    case 0xAu:
      v33 = *(a2 + 24);
      *(a1 + 24) = v33;
      (**(v33 - 8))(a1, a2);
      v34 = *(a2 + 48);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = v34;
      *(a1 + 56) = *(a2 + 56);
      v12 = 10;
      goto LABEL_30;
    case 0xBu:
      v10 = *(a2 + 24);
      *(a1 + 24) = v10;
      (**(v10 - 8))(a1, a2);
      v6 = 11;
      goto LABEL_66;
    case 0xCu:
      *a1 = *a2;
      v13 = (a1 + 8);
      v14 = *(a2 + 32);

      if (v14)
      {
        v15 = *(a2 + 40);
        *(a1 + 32) = v14;
        *(a1 + 40) = v15;
        (**(v14 - 8))(a1 + 8, a2 + 8, v14);
      }

      else
      {
        v42 = *(a2 + 24);
        *v13 = *(a2 + 8);
        *(a1 + 24) = v42;
        *(a1 + 40) = *(a2 + 40);
      }

      v43 = *(a2 + 56);
      if (v43 == 1)
      {
        *(a1 + 48) = *(a2 + 48);
      }

      else
      {
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = v43;
      }

      v44 = *(a2 + 72);
      v45 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = v44;
      *(a1 + 80) = v45;
      v46 = 12;
      goto LABEL_60;
    case 0xDu:
      *a1 = *a2;
      v26 = (a1 + 8);
      v27 = *(a2 + 32);

      if (v27)
      {
        v28 = *(a2 + 40);
        *(a1 + 32) = v27;
        *(a1 + 40) = v28;
        (**(v27 - 8))(a1 + 8, a2 + 8, v27);
      }

      else
      {
        v49 = *(a2 + 24);
        *v26 = *(a2 + 8);
        *(a1 + 24) = v49;
        *(a1 + 40) = *(a2 + 40);
      }

      v50 = *(a2 + 56);
      if (v50 == 1)
      {
        *(a1 + 48) = *(a2 + 48);
      }

      else
      {
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = v50;
      }

      v51 = *(a2 + 72);
      v52 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = v51;
      *(a1 + 80) = v52;
      *(a1 + 88) = *(a2 + 88);
      v46 = 13;
      goto LABEL_60;
    case 0xEu:
      *a1 = *a2;
      v7 = (a1 + 8);
      v8 = *(a2 + 32);

      if (v8)
      {
        v9 = *(a2 + 40);
        *(a1 + 32) = v8;
        *(a1 + 40) = v9;
        (**(v8 - 8))(a1 + 8, a2 + 8, v8);
      }

      else
      {
        v40 = *(a2 + 24);
        *v7 = *(a2 + 8);
        *(a1 + 24) = v40;
        *(a1 + 40) = *(a2 + 40);
      }

      v41 = *(a2 + 56);
      if (v41 == 1)
      {
        *(a1 + 48) = *(a2 + 48);
      }

      else
      {
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = v41;
      }

      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);
      v6 = 14;
      goto LABEL_66;
    case 0xFu:
      *a1 = *a2;
      v6 = 15;
      goto LABEL_66;
    case 0x10u:
      *a1 = *a2;
      *(a1 + 7) = *(a2 + 7);
      v6 = 16;
      goto LABEL_66;
    case 0x11u:
      v22 = *(a2 + 24);
      *(a1 + 24) = v22;
      (**(v22 - 8))(a1, a2);
      *(a1 + 40) = *(a2 + 40);
      v23 = *(a2 + 56);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = v23;
      *(a1 + 64) = *(a2 + 64);
      v12 = 17;
LABEL_30:
      *(a1 + 96) = v12;

      return a1;
    case 0x12u:
      v30 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v30;
      v31 = *(a2 + 40);

      if (v31)
      {
        v32 = *(a2 + 48);
        *(a1 + 40) = v31;
        *(a1 + 48) = v32;
        (**(v31 - 8))(a1 + 16, a2 + 16, v31);
      }

      else
      {
        v53 = *(a2 + 32);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 32) = v53;
        *(a1 + 48) = *(a2 + 48);
      }

      v54 = *(a2 + 64);
      if (v54 == 1)
      {
        *(a1 + 56) = *(a2 + 56);
      }

      else
      {
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 64) = v54;
      }

      v55 = *(a2 + 80);
      v56 = *(a2 + 88);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 80) = v55;
      *(a1 + 88) = v56;
      v46 = 18;
LABEL_60:
      *(a1 + 96) = v46;

      return a1;
    case 0x13u:
      v38 = *(a2 + 24);
      if (v38)
      {
        v39 = *(a2 + 32);
        *(a1 + 24) = v38;
        *(a1 + 32) = v39;
        (**(v38 - 8))(a1, a2);
      }

      else
      {
        v57 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v57;
        *(a1 + 32) = *(a2 + 32);
      }

      v58 = *(a2 + 48);
      if (v58 == 1)
      {
        *(a1 + 40) = *(a2 + 40);
      }

      else
      {
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = v58;
      }

      *(a1 + 56) = *(a2 + 56);
      v6 = 19;
      goto LABEL_66;
    case 0x14u:
      *a1 = *a2;
      v6 = 20;
      goto LABEL_66;
    case 0x15u:
      if (*a2)
      {
        v25 = *(a2 + 8);
        *a1 = *a2;
        *(a1 + 8) = v25;
      }

      else
      {
        *a1 = *a2;
      }

      v47 = *(a2 + 16);
      if (v47)
      {
        v48 = *(a2 + 24);
        *(a1 + 16) = v47;
        *(a1 + 24) = v48;
      }

      else
      {
        *(a1 + 16) = *(a2 + 16);
      }

      v6 = 21;
LABEL_66:
      *(a1 + 96) = v6;
      break;
    default:
      v35 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v35;
      *(a1 + 96) = *(a2 + 96);
      v36 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v36;
      v37 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v37;
      break;
  }

  return a1;
}

uint64_t outlined assign with take of NavigationRequest.Action?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<NavigationSplitViewColumn>(0, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for NavigationColumnState(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 355))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 248);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI33NavigationDestinationResolverBaseCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<ObjectIdentifier, NavigationDestinationResolverBase>();
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v13 = *(a1 + 32);
  result = specialized __RawDictionaryStorage.find<A>(_:)(*(a1 + 32));
  if (v5)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v6 = (a1 + 48);
  v7 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v13;
    *(v3[7] + 8 * result) = *(&v13 + 1);
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!v7)
    {
      goto LABEL_8;
    }

    v11 = *v6++;
    v13 = v11;

    result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
    --v7;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t initializeWithCopy for NavigationColumnState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 48);
  if (v4)
  {
    *(a1 + 40) = *(a2 + 40);
    v5 = *(a2 + 56);
    v6 = *(a2 + 64);
    *(a1 + 48) = v4;
    *(a1 + 56) = v5;
    v7 = *(a2 + 72);
    v8 = *(a2 + 80);
    *(a1 + 64) = v6;
    *(a1 + 72) = v7;
    *(a1 + 80) = v8;
    *(a1 + 88) = *(a2 + 88);
  }

  else
  {
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
  }

  *(a1 + 92) = *(a2 + 92);
  v9 = *(a2 + 104);
  if (v9)
  {
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = v9;
    *(a1 + 112) = *(a2 + 112);
  }

  else
  {
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
  }

  v10 = *(a2 + 208);
  if (*(a2 + 240))
  {
    if (v10 == 255)
    {
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 193) = *(a2 + 193);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 136) = *(a2 + 136);
    }

    else if (v10)
    {
      *(a1 + 120) = *(a2 + 120);
      v11 = *(a2 + 152);

      if (v11)
      {
        v12 = *(a2 + 160);
        *(a1 + 152) = v11;
        *(a1 + 160) = v12;
        (**(v11 - 8))(a1 + 128, a2 + 128, v11);
      }

      else
      {
        v17 = *(a2 + 144);
        *(a1 + 128) = *(a2 + 128);
        *(a1 + 144) = v17;
        *(a1 + 160) = *(a2 + 160);
      }

      v18 = *(a2 + 176);
      if (v18 == 1)
      {
        *(a1 + 168) = *(a2 + 168);
      }

      else
      {
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 176) = v18;
      }

      v19 = *(a2 + 192);
      v20 = *(a2 + 200);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 192) = v19;
      *(a1 + 200) = v20;
      *(a1 + 208) = 1;
    }

    else
    {
      v15 = *(a2 + 144);
      *(a1 + 144) = v15;
      (**(v15 - 8))(a1 + 120, a2 + 120);
      *(a1 + 208) = 0;
    }

    *(a1 + 240) = 1;
  }

  else
  {
    if (v10 == 255)
    {
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 193) = *(a2 + 193);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 136) = *(a2 + 136);
    }

    else if (v10)
    {
      *(a1 + 120) = *(a2 + 120);
      v13 = *(a2 + 152);

      if (v13)
      {
        v14 = *(a2 + 160);
        *(a1 + 152) = v13;
        *(a1 + 160) = v14;
        (**(v13 - 8))(a1 + 128, a2 + 128, v13);
      }

      else
      {
        v21 = *(a2 + 144);
        *(a1 + 128) = *(a2 + 128);
        *(a1 + 144) = v21;
        *(a1 + 160) = *(a2 + 160);
      }

      v22 = *(a2 + 176);
      if (v22 == 1)
      {
        *(a1 + 168) = *(a2 + 168);
      }

      else
      {
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 176) = v22;
      }

      v23 = *(a2 + 192);
      v24 = *(a2 + 200);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 192) = v23;
      *(a1 + 200) = v24;
      *(a1 + 208) = 1;
    }

    else
    {
      v16 = *(a2 + 144);
      *(a1 + 144) = v16;
      (**(v16 - 8))(a1 + 120, a2 + 120);
      *(a1 + 208) = 0;
    }

    v25 = *(a2 + 224);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 224) = v25;
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 240) = 0;
  }

  v26 = *(a2 + 256);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = v26;
  v27 = *(a2 + 272);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = v27;
  v28 = *(a2 + 288);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = v28;
  v29 = *(a2 + 304);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 304) = v29;
  v30 = *(a2 + 312);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 312) = v30;
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 353) = *(a2 + 353);

  return a1;
}

uint64_t $defer #1 () in NavigationAuthority.flushRequestQueue()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 128);
  v38 = *(a1 + 112);
  v39 = v6;
  v40[0] = *(a1 + 144);
  *(v40 + 10) = *(a1 + 154);
  v7 = *(a1 + 64);
  v34 = *(a1 + 48);
  v35 = v7;
  v8 = *(a1 + 96);
  v36 = *(a1 + 80);
  v37 = v8;
  v9 = *(a1 + 32);
  v32 = *(a1 + 16);
  v33 = v9;
  result = getEnumTag for AccessibilityActionCategory.Category(&v32);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v33 != a2)
  {
    v11 = *(a1 + 192);
    v12 = *(a1 + 128);
    v29 = *(a1 + 112);
    v30 = v12;
    v31[0] = *(a1 + 144);
    *(v31 + 10) = *(a1 + 154);
    v13 = *(a1 + 64);
    v25 = *(a1 + 48);
    v26 = v13;
    v14 = *(a1 + 96);
    v27 = *(a1 + 80);
    v28 = v14;
    v15 = *(a1 + 32);
    v23 = *(a1 + 16);
    v24 = v15;
    result = getEnumTag for AccessibilityActionCategory.Category(&v23);
    if (result == 1)
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v16 = DWORD1(v24);
    if (*(v11 + 16) == v24)
    {
      *(v11 + 16) = v24;
      *(v11 + 20) = v16;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      lazy protocol witness table accessor for type NavigationSelectionHost and conformance NavigationSelectionHost(&lazy protocol witness table cache variable for type NavigationSeedHost and conformance NavigationSeedHost, type metadata accessor for NavigationSeedHost);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  v18 = *(a1 + 128);
  v29 = *(a1 + 112);
  v30 = v18;
  v31[0] = *(a1 + 144);
  *(v31 + 10) = *(a1 + 154);
  v19 = *(a1 + 64);
  v25 = *(a1 + 48);
  v26 = v19;
  v20 = *(a1 + 96);
  v27 = *(a1 + 80);
  v28 = v20;
  v21 = *(a1 + 32);
  v23 = *(a1 + 16);
  v24 = v21;
  result = getEnumTag for AccessibilityActionCategory.Category(&v23);
  if (result == 1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v22 = NavigationState.listSelectionSeedsByColumn.getter();
  if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI15NavigationStateV12StackContentV3KeyV_AE13SelectionSeedVTt1g5(v22, a3))
  {
  }

  NavigationSelectionHost.selectionSeedByStackKey.setter(v22);
}

uint64_t NavigationState.listSelectionSeedsByColumn.getter()
{
  v1 = *(v0 + 24);
  v2 = MEMORY[0x1E69E7CC8];
  v55 = MEMORY[0x1E69E7CC8];
  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;
  v32 = v1;

  v9 = 0;
  while (v6)
  {
LABEL_13:
    v17 = __clz(__rbit64(v6)) | (v9 << 6);
    v18 = *(v32 + 48) + 24 * v17;
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    outlined init with copy of NavigationColumnState(*(v32 + 56) + 360 * v17, &v45 + 8);
    *&v44 = v19;
    BYTE8(v44) = v20;
    *&v45 = v21;
    v22 = v46;
    if (v50)
    {
      v23 = (v53 | (v46 << 32)) + ~(v53 << 32);
      v24 = (v23 ^ (v23 >> 22)) + ~((v23 ^ (v23 >> 22)) << 13);
      v25 = (9 * (v24 ^ (v24 >> 8))) ^ ((9 * (v24 ^ (v24 >> 8))) >> 15);
      v26 = ((v25 + ~(v25 << 27)) >> 31) ^ (v25 + ~(v25 << 27));
      if (v53 == -1)
      {
        v26 = -1;
      }

      if (!v46)
      {
        v26 = v53;
      }

      if (!v53)
      {
        v26 = v46;
      }

      if (v46 == -1)
      {
        v22 = -1;
      }

      else
      {
        v22 = v26;
      }
    }

    v33 = v44;
    v34 = v45;
    v35 = v46;
    v36 = v47;
    v37 = v48;
    v38 = v49;
    v39 = v50;
    v40 = v51;
    v41 = v52;
    v42 = v53;
    memcpy(v43, v54, sizeof(v43));
    v27 = *(v2 + 16);
    if (*(v2 + 24) <= v27)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27 + 1, 1);
      v2 = v55;
    }

    Hasher.init(_seed:)();
    MEMORY[0x18D00F6F0](v33);
    MEMORY[0x18D00F6F0](BYTE8(v33));
    MEMORY[0x18D00F6F0](v34);
    result = Hasher._finalize()();
    v10 = v2 + 64;
    v11 = -1 << *(v2 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    if (((-1 << v12) & ~*(v2 + 64 + 8 * (v12 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v11) >> 6;
      while (++v13 != v29 || (v28 & 1) == 0)
      {
        v30 = v13 == v29;
        if (v13 == v29)
        {
          v13 = 0;
        }

        v28 |= v30;
        v31 = *(v10 + 8 * v13);
        if (v31 != -1)
        {
          v14 = __clz(__rbit64(~v31)) + (v13 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_35;
    }

    v14 = __clz(__rbit64((-1 << v12) & ~*(v2 + 64 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    v6 &= v6 - 1;
    v15 = *(v2 + 48) + 24 * v14;
    *v15 = v33;
    *(v15 + 8) = BYTE8(v33);
    *(v15 + 16) = v34;
    *(*(v2 + 56) + 4 * v14) = v22;
    ++*(v2 + 16);
    result = outlined destroy of NavigationColumnState(&v34 + 8);
  }

  while (1)
  {
    v16 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v16 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v16);
    ++v9;
    if (v6)
    {
      v9 = v16;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

unint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI15NavigationStateV12StackContentV3KeyV_AE13SelectionSeedVTt1g5(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(v3 + 48) + 24 * v12;
    v14 = *(v13 + 8);
    v15 = v14 == 6;
    if (v14 != 6)
    {
      v16 = *(*(v3 + 56) + 4 * v12);
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v13, v14, *(v13 + 16));
      if (v17)
      {
        v18 = *(*(a2 + 56) + 4 * result);
        if (v18 != -1 && v18 == v16)
        {
          continue;
        }
      }
    }

    return v15;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t NavigationSelectionHost.selectionSeedByStackKey.setter(uint64_t a1)
{
  if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI15NavigationStateV12StackContentV3KeyV_AE13SelectionSeedVTt1g5(*(v1 + 16), a1))
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type NavigationSelectionHost and conformance NavigationSelectionHost(&lazy protocol witness table cache variable for type NavigationSelectionHost and conformance NavigationSelectionHost, type metadata accessor for NavigationSelectionHost);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t partial apply for closure #1 in NavigationSelectionHost.selectionSeedByStackKey.setter()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

uint64_t PositionedNavigationDestinationProcessor.PollingRule.updateValue()(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for Attribute<(_:)>(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v62 - v5;
  v7 = *(v1 + 48);
  v77 = *(v1 + 32);
  v78 = v7;
  v79 = *(v1 + 64);
  v8 = *(v1 + 16);
  v75 = *v1;
  v76 = v8;
  v67 = a1;
  PositionedNavigationDestinationProcessor.PollingRule.authority.getter(&v73);
  if (v74 == 1)
  {
    return _s7SwiftUI19NavigationAuthorityVSgWOhTm_2(&v73, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720], _s7SwiftUI19NavigationAuthorityVSgMaTm_1);
  }

  if (v74 == 2)
  {
    return outlined destroy of NavigationAuthority??(&v73);
  }

  v62 = v6;
  outlined init with take of NavigationAuthority(&v73, v80);
  v10 = *(v1 + 56);
  if (v10 != *AGGraphGetValue() >> 1)
  {
    *(v2 + 56) = *AGGraphGetValue() >> 1;
    *(v2 + 44) = 0xFFFFFFFFLL;
    *(v2 + 52) = 0;
  }

  v68 = v2;
  v11 = *AGGraphGetValue();
  v12 = *(v11 + 64);
  v65 = v11 + 64;
  v66 = v11;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v64 = (v13 + 63) >> 6;

  v16 = 0;
  v63 = MEMORY[0x1E69E7CC0];
  while (v15)
  {
LABEL_17:
    v18 = __clz(__rbit64(v15)) | (v16 << 6);
    v19 = *(v66 + 48) + 48 * v18;
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    v23 = *(v19 + 24);
    v24 = *(v19 + 32);
    v25 = *(v19 + 40);
    outlined init with copy of PositionedNavigationDestination.Storage.SeededRequest(*(v66 + 56) + 176 * v18, v71);
    if (v71[17] >> 1 == 0xFFFFFFFF)
    {
LABEL_28:

      v43 = v63;
      v44 = v68;
      if (*(v63 + 2) && (UpdateCycleDetector.dispatch(label:isDebug:)() & 1) != 0)
      {
        v46 = *(v44 + 24);
        v45 = *(v44 + 32);
        v47 = v62;
        static Log.navigation.getter();
        v48 = type metadata accessor for Logger();
        v49 = *(v48 - 8);
        if ((*(v49 + 48))(v47, 1, v48) == 1)
        {
          _s7SwiftUI19NavigationAuthorityVSgWOhTm_2(v47, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for Attribute<(_:)>);
        }

        else
        {

          v50 = Logger.logObject.getter();
          v51 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v50, v51))
          {
            v52 = v46;
            v53 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            v71[0] = v67;
            *v53 = 136315394;
            v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v45, v71);

            *(v53 + 4) = v54;
            *(v53 + 12) = 2080;
            v55 = specialized implicit closure #5 in PositionedNavigationDestinationProcessor.PollingRule.updateValue()(v63);
            v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, v71);

            *(v53 + 14) = v57;
            v43 = v63;
            _os_log_impl(&dword_18BD4A000, v50, v51, "Processing navigation destinations from\n- Processor: %s\n- Requests: %s", v53, 0x16u);
            v58 = v67;
            swift_arrayDestroy();
            MEMORY[0x18D0110E0](v58, -1, -1);
            MEMORY[0x18D0110E0](v53, -1, -1);
          }

          else
          {
          }

          (*(v49 + 8))(v47, v48);
        }

        v59 = *(v43 + 2);
        if (v59)
        {
          v60 = *(v44 + 16);
          v61 = (v43 + 32);
          do
          {
            outlined init with copy of NavigationRequest(v61, v71);
            if ((v60 & 1) == 0)
            {
              NavigationAuthority.enqueueRequest(_:)(v71);
            }

            outlined destroy of NavigationRequest(v71);
            v61 += 168;
            --v59;
          }

          while (v59);
        }

        return outlined destroy of NavigationAuthority(v80);
      }

      else
      {
        outlined destroy of NavigationAuthority(v80);
      }
    }

    v15 &= v15 - 1;
    v26 = v72;
    *&v81 = v20;
    *(&v81 + 1) = v21;
    v82 = v22;
    v83 = v23;
    v84 = v24;
    v85 = v25;
    v27 = *(v68 + 64);
    if (*(v27 + 16) && (v28 = specialized __RawDictionaryStorage.find<A>(_:)(&v81), v26 = v72, (v29 & 1) != 0))
    {
      v30 = *(*(v27 + 56) + 4 * v28);
      if (v30 != -1 && v72 != -1 && v30 == v72)
      {
        goto LABEL_11;
      }
    }

    else if (!v26)
    {
      goto LABEL_11;
    }

    outlined init with copy of NavigationRequest(v71, v69);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v63 + 2) + 1, 1, v63);
    }

    v32 = *(v63 + 2);
    v31 = *(v63 + 3);
    if (v32 >= v31 >> 1)
    {
      v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v63);
    }

    v33 = v63;
    *(v63 + 2) = v32 + 1;
    v34 = &v33[168 * v32];
    v35 = v69[0];
    v36 = v69[2];
    *(v34 + 3) = v69[1];
    *(v34 + 4) = v36;
    *(v34 + 2) = v35;
    v37 = v69[3];
    v38 = v69[4];
    v39 = v69[6];
    *(v34 + 7) = v69[5];
    *(v34 + 8) = v39;
    *(v34 + 5) = v37;
    *(v34 + 6) = v38;
    v40 = v69[7];
    v41 = v69[8];
    v42 = v69[9];
    *(v34 + 24) = v70;
    *(v34 + 10) = v41;
    *(v34 + 11) = v42;
    *(v34 + 9) = v40;
LABEL_11:
    $defer #1 <A>() in PositionedNavigationDestinationProcessor.PollingRule.updateValue()(v68, &v81, v71);
    result = outlined destroy of PositionedNavigationDestination.Storage.SeededRequest(v71);
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v64)
    {
      goto LABEL_28;
    }

    v15 = *(v65 + 8 * v17);
    ++v16;
    if (v15)
    {
      v16 = v17;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

double PositionedNavigationDestinationProcessor.PollingRule.authority.getter@<D0>(uint64_t a1@<X8>)
{
  _s7SwiftUI19NavigationAuthorityVSgMaTm_1(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {

    outlined init with copy of NavigationAuthority?(WeakValue, a1);
  }

  else
  {
    result = 0.0;
    *a1 = xmmword_18CD874C0;
    *(a1 + 16) = 0;
  }

  return result;
}

uint64_t assignWithCopy for NavigationAuthority(uint64_t a1, uint64_t a2)
{
  swift_weakCopyAssign();
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t initializeWithCopy for NavigationColumnState.ColumnContent(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 120);
  if (v4 >= 2)
  {
    v4 = *a2 + 2;
  }

  v5 = *(a2 + 88);
  if (v4 == 1)
  {
    if (v5 == 255)
    {
      v12 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v12;
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 73) = *(a2 + 73);
      v13 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v13;
    }

    else if (v5)
    {
      *a1 = *a2;
      v6 = (a1 + 8);
      v7 = *(a2 + 32);

      if (v7)
      {
        v8 = *(a2 + 40);
        *(a1 + 32) = v7;
        *(a1 + 40) = v8;
        (**(v7 - 8))(a1 + 8, a2 + 8, v7);
      }

      else
      {
        v18 = *(a2 + 24);
        *v6 = *(a2 + 8);
        *(a1 + 24) = v18;
        *(a1 + 40) = *(a2 + 40);
      }

      v19 = *(a2 + 56);
      if (v19 == 1)
      {
        *(a1 + 48) = *(a2 + 48);
      }

      else
      {
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = v19;
      }

      v20 = *(a2 + 72);
      v21 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = v20;
      *(a1 + 80) = v21;
      *(a1 + 88) = 1;
    }

    else
    {
      v16 = *(a2 + 24);
      *(a1 + 24) = v16;
      (**(v16 - 8))(a1, a2);
      *(a1 + 88) = 0;
    }

    *(a1 + 120) = 1;
  }

  else
  {
    if (v5 == 255)
    {
      v14 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v14;
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 73) = *(a2 + 73);
      v15 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v15;
    }

    else if (v5)
    {
      *a1 = *a2;
      v9 = (a1 + 8);
      v10 = *(a2 + 32);

      if (v10)
      {
        v11 = *(a2 + 40);
        *(a1 + 32) = v10;
        *(a1 + 40) = v11;
        (**(v10 - 8))(a1 + 8, a2 + 8, v10);
      }

      else
      {
        v22 = *(a2 + 24);
        *v9 = *(a2 + 8);
        *(a1 + 24) = v22;
        *(a1 + 40) = *(a2 + 40);
      }

      v23 = *(a2 + 56);
      if (v23 == 1)
      {
        *(a1 + 48) = *(a2 + 48);
      }

      else
      {
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = v23;
      }

      v24 = *(a2 + 72);
      v25 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = v24;
      *(a1 + 80) = v25;
      *(a1 + 88) = 1;
    }

    else
    {
      v17 = *(a2 + 24);
      *(a1 + 24) = v17;
      (**(v17 - 8))(a1, a2);
      *(a1 + 88) = 0;
    }

    v26 = *(a2 + 104);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = v26;
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 120) = 0;
  }

  return a1;
}

uint64_t destroy for NavigationColumnState.ColumnContent(uint64_t result)
{
  v1 = result;
  v2 = *(result + 120);
  if (v2 >= 2)
  {
    v2 = *result + 2;
  }

  v3 = *(result + 88);
  if (v2 == 1)
  {
    if (v3 != 255)
    {
      if (v3)
      {

        if (*(v1 + 32))
        {
          __swift_destroy_boxed_opaque_existential_1(v1 + 8);
        }

        if (*(v1 + 56) != 1)
        {
        }
      }

      else
      {
        return __swift_destroy_boxed_opaque_existential_1(result);
      }
    }
  }

  else
  {
    if (v3 != 255)
    {
      if (v3)
      {

        if (*(v1 + 32))
        {
          __swift_destroy_boxed_opaque_existential_1(v1 + 8);
        }

        if (*(v1 + 56) != 1)
        {
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(result);
      }
    }
  }

  return result;
}

uint64_t outlined destroy of NavigationRequest.Action?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  type metadata accessor for NavigationRequest.Action?(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance PositionedNavigationDestination.Key(uint64_t *a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v6);
  v3 = v6;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *a1;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v3, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v6);
  result = swift_bridgeObjectRelease_n();
  *a1 = v6;
  return result;
}

unint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v78 = a1;
  v79 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v80 = v8;
  v81 = 0;
  v82 = v11 & v9;
  v83 = a2;
  v84 = a3;

  specialized LazyMapSequence.Iterator.next()(&v66);
  if (*(&v76 + 1) >> 1 == 0xFFFFFFFFLL)
  {
    goto LABEL_16;
  }

  v85 = v66;
  v86[0] = v67[0];
  *(v86 + 9) = *(v67 + 9);
  v64 = v76;
  v65[0] = v77[0];
  *(v65 + 12) = *(v77 + 12);
  v60 = v72;
  v61 = v73;
  v62 = v74;
  v63 = v75;
  v56 = v68;
  v57 = v69;
  v58 = v70;
  v59 = v71;
  v12 = *a5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(&v85);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v19 = v14;
  if (v12[3] < v18)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a4 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(&v85);
    if ((v19 & 1) == (v20 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v22 = result;
    specialized _NativeDictionary.copy()();
    result = v22;
    v21 = *a5;
    if (v19)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v21 = *a5;
  if (v19)
  {
LABEL_11:
    outlined assign with take of PositionedNavigationDestination.Storage.SeededRequest(&v56, v21[7] + 176 * result);
LABEL_15:
    specialized LazyMapSequence.Iterator.next()(&v66);
    if (*(&v76 + 1) >> 1 == 0xFFFFFFFFLL)
    {
LABEL_16:
      outlined consume of Set<UIPress>.Iterator._Variant();
    }

    v19 = -1;
    while (1)
    {
      v85 = v66;
      v86[0] = v67[0];
      *(v86 + 9) = *(v67 + 9);
      v64 = v76;
      v65[0] = v77[0];
      *(v65 + 12) = *(v77 + 12);
      v60 = v72;
      v61 = v73;
      v62 = v74;
      v63 = v75;
      v56 = v68;
      v57 = v69;
      v58 = v70;
      v59 = v71;
      v36 = *a5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(&v85);
      v38 = v36[2];
      v39 = (v37 & 1) == 0;
      v17 = __OFADD__(v38, v39);
      v40 = v38 + v39;
      if (v17)
      {
        goto LABEL_26;
      }

      a4 = v37;
      if (v36[3] < v40)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v40, 1);
        result = specialized __RawDictionaryStorage.find<A>(_:)(&v85);
        if ((a4 & 1) != (v41 & 1))
        {
          goto LABEL_8;
        }
      }

      v42 = *a5;
      if (a4)
      {
        outlined assign with take of PositionedNavigationDestination.Storage.SeededRequest(&v56, v42[7] + 176 * result);
      }

      else
      {
        v42[(result >> 6) + 8] |= 1 << result;
        v43 = (v42[6] + 48 * result);
        v44 = v86[0];
        *v43 = v85;
        v43[1] = v44;
        *(v43 + 25) = *(v86 + 9);
        v45 = (v42[7] + 176 * result);
        v46 = v63;
        v47 = v64;
        v48 = v65[0];
        *(v45 + 156) = *(v65 + 12);
        v45[8] = v47;
        v45[9] = v48;
        v45[7] = v46;
        v49 = v59;
        v50 = v60;
        v51 = v62;
        v45[5] = v61;
        v45[6] = v51;
        v45[3] = v49;
        v45[4] = v50;
        v53 = v57;
        v52 = v58;
        *v45 = v56;
        v45[1] = v53;
        v45[2] = v52;
        v54 = v42[2];
        v17 = __OFADD__(v54, 1);
        v55 = v54 + 1;
        if (v17)
        {
          goto LABEL_27;
        }

        v42[2] = v55;
      }

      specialized LazyMapSequence.Iterator.next()(&v66);
      if (*(&v76 + 1) >> 1 == 0xFFFFFFFFLL)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_13:
  v21[(result >> 6) + 8] |= 1 << result;
  v23 = (v21[6] + 48 * result);
  v24 = v86[0];
  *v23 = v85;
  v23[1] = v24;
  *(v23 + 25) = *(v86 + 9);
  v25 = (v21[7] + 176 * result);
  v26 = v63;
  v27 = v64;
  v28 = v65[0];
  *(v25 + 156) = *(v65 + 12);
  v25[8] = v27;
  v25[9] = v28;
  v25[7] = v26;
  v29 = v59;
  v30 = v60;
  v31 = v62;
  v25[5] = v61;
  v25[6] = v31;
  v25[3] = v29;
  v25[4] = v30;
  v33 = v57;
  v32 = v58;
  *v25 = v56;
  v25[1] = v33;
  v25[2] = v32;
  v34 = v21[2];
  v17 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (!v17)
  {
    v21[2] = v35;
    goto LABEL_15;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v52 = a1;
  v53 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v54 = v8;
  v55 = 0;
  v56 = v11 & v9;
  v57 = a2;
  v58 = a3;

  specialized LazyMapSequence.Iterator.next()(&v48);
  if (!*(&v49 + 1))
  {
    goto LABEL_25;
  }

  v45 = v48;
  v46 = v49;
  v47 = v50;
  outlined init with take of Any(v51, v44);
  v12 = *a5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(&v45);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v19 = v14;
  if (v12[3] < v18)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a4 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(&v45);
    if ((v19 & 1) == (v20 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v24 = result;
    specialized _NativeDictionary.copy()();
    result = v24;
    v21 = *a5;
    if (v19)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v21 = *a5;
  if (v19)
  {
LABEL_11:
    v22 = result;
    outlined destroy of AnyHashable(&v45);
    v23 = (v21[7] + 32 * v22);
    __swift_destroy_boxed_opaque_existential_1(v23);
    outlined init with take of Any(v44, v23);
    goto LABEL_15;
  }

LABEL_13:
  v21[(result >> 6) + 8] |= 1 << result;
  v25 = v21[6] + 40 * result;
  v26 = v45;
  v27 = v46;
  *(v25 + 32) = v47;
  *v25 = v26;
  *(v25 + 16) = v27;
  result = outlined init with take of Any(v44, (v21[7] + 32 * result));
  v28 = v21[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v17)
  {
    v21[2] = v29;
LABEL_15:
    specialized LazyMapSequence.Iterator.next()(&v48);
    if (*(&v49 + 1))
    {
      v19 = 1;
      do
      {
        v45 = v48;
        v46 = v49;
        v47 = v50;
        outlined init with take of Any(v51, v44);
        v32 = *a5;
        result = specialized __RawDictionaryStorage.find<A>(_:)(&v45);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v17 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v17)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, 1);
          result = specialized __RawDictionaryStorage.find<A>(_:)(&v45);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;
          outlined destroy of AnyHashable(&v45);
          v31 = (v38[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_1(v31);
          outlined init with take of Any(v44, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = v38[6] + 40 * result;
          v40 = v45;
          v41 = v46;
          *(v39 + 32) = v47;
          *v39 = v40;
          *(v39 + 16) = v41;
          result = outlined init with take of Any(v44, (v38[7] + 32 * result));
          v42 = v38[2];
          v17 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v17)
          {
            goto LABEL_27;
          }

          v38[2] = v43;
        }

        specialized LazyMapSequence.Iterator.next()(&v48);
      }

      while (*(&v49 + 1));
    }

LABEL_25:
    outlined consume of Set<UIPress>.Iterator._Variant();
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v53[24] = a1;
  v53[25] = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v53[26] = v8;
  v53[27] = 0;
  v53[28] = v11 & v9;
  v53[29] = a2;
  v53[30] = a3;

  specialized LazyMapSequence.Iterator.next()(&v49);
  if (*(&v50 + 1) == 1)
  {
    goto LABEL_16;
  }

  v45 = v49;
  v46 = v50;
  v47 = v51;
  v48 = v52;
  outlined init with take of UpdateViewDestinationRequest(v53, v44);
  v12 = *a5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(&v45);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v19 = v14;
  if (v12[3] < v18)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a4 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(&v45);
    if ((v19 & 1) == (v20 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v23 = result;
    specialized _NativeDictionary.copy()();
    result = v23;
    v21 = *a5;
    if (v19)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v21 = *a5;
  if (v19)
  {
LABEL_11:
    v22 = result;
    outlined destroy of NavigationLinkSelectionIdentifier(&v45);
    outlined assign with take of UpdateViewDestinationRequest(v44, v21[7] + 192 * v22);
LABEL_15:
    specialized LazyMapSequence.Iterator.next()(&v49);
    if (*(&v50 + 1) == 1)
    {
LABEL_16:
      outlined consume of Set<UIPress>.Iterator._Variant();
    }

    v19 = 1;
    while (1)
    {
      v45 = v49;
      v46 = v50;
      v47 = v51;
      v48 = v52;
      outlined init with take of UpdateViewDestinationRequest(v53, v44);
      v31 = *a5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(&v45);
      v33 = v31[2];
      v34 = (v32 & 1) == 0;
      v17 = __OFADD__(v33, v34);
      v35 = v33 + v34;
      if (v17)
      {
        goto LABEL_26;
      }

      a4 = v32;
      if (v31[3] < v35)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, 1);
        result = specialized __RawDictionaryStorage.find<A>(_:)(&v45);
        if ((a4 & 1) != (v36 & 1))
        {
          goto LABEL_8;
        }
      }

      v37 = *a5;
      if (a4)
      {
        v30 = result;
        outlined destroy of NavigationLinkSelectionIdentifier(&v45);
        outlined assign with take of UpdateViewDestinationRequest(v44, v37[7] + 192 * v30);
      }

      else
      {
        v37[(result >> 6) + 8] |= 1 << result;
        v38 = (v37[6] + (result << 6));
        v39 = v45;
        v40 = v46;
        v41 = v48;
        v38[2] = v47;
        v38[3] = v41;
        *v38 = v39;
        v38[1] = v40;
        result = outlined init with take of UpdateViewDestinationRequest(v44, v37[7] + 192 * result);
        v42 = v37[2];
        v17 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v17)
        {
          goto LABEL_27;
        }

        v37[2] = v43;
      }

      specialized LazyMapSequence.Iterator.next()(&v49);
      if (*(&v50 + 1) == 1)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_13:
  v21[(result >> 6) + 8] |= 1 << result;
  v24 = (v21[6] + (result << 6));
  v25 = v45;
  v26 = v46;
  v27 = v48;
  v24[2] = v47;
  v24[3] = v27;
  *v24 = v25;
  v24[1] = v26;
  result = outlined init with take of UpdateViewDestinationRequest(v44, v21[7] + 192 * result);
  v28 = v21[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v17)
  {
    v21[2] = v29;
    goto LABEL_15;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v66 = a1;
  v67 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v68 = v8;
  v69 = 0;
  v70 = v11 & v9;
  v71 = a2;
  v72 = a3;

  specialized LazyMapSequence.Iterator.next()(&v57);
  if (*(&v58 + 1) == 1)
  {
    goto LABEL_16;
  }

  v12 = v57;
  v53 = v62;
  v54 = v63;
  v55 = v64;
  v56 = v65;
  v49 = v58;
  v50 = v59;
  v51 = v60;
  v52 = v61;
  v13 = *a5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(v57);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (v13[3] < v19)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a4 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v23 = result;
    specialized _NativeDictionary.copy()();
    result = v23;
    v22 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v22 = *a5;
  if (v20)
  {
LABEL_11:
    outlined assign with take of InspectorStorage(&v49, v22[7] + 120 * result);
LABEL_15:
    specialized LazyMapSequence.Iterator.next()(&v57);
    if (*(&v58 + 1) == 1)
    {
LABEL_16:
      outlined consume of Set<UIPress>.Iterator._Variant();
    }

    v20 = 1;
    while (1)
    {
      v12 = v57;
      v53 = v62;
      v54 = v63;
      v55 = v64;
      v56 = v65;
      v49 = v58;
      v50 = v59;
      v51 = v60;
      v52 = v61;
      v33 = *a5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v57);
      v35 = v33[2];
      v36 = (v34 & 1) == 0;
      v18 = __OFADD__(v35, v36);
      v37 = v35 + v36;
      if (v18)
      {
        goto LABEL_26;
      }

      a4 = v34;
      if (v33[3] < v37)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v37, 1);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v12);
        if ((a4 & 1) != (v38 & 1))
        {
          goto LABEL_8;
        }
      }

      v39 = *a5;
      if (a4)
      {
        outlined assign with take of InspectorStorage(&v49, v39[7] + 120 * result);
      }

      else
      {
        v39[(result >> 6) + 8] |= 1 << result;
        *(v39[6] + 4 * result) = v12;
        v40 = v39[7] + 120 * result;
        v41 = v49;
        v42 = v50;
        v43 = v52;
        *(v40 + 32) = v51;
        *(v40 + 48) = v43;
        *v40 = v41;
        *(v40 + 16) = v42;
        v44 = v53;
        v45 = v54;
        v46 = v55;
        *(v40 + 112) = v56;
        *(v40 + 80) = v45;
        *(v40 + 96) = v46;
        *(v40 + 64) = v44;
        v47 = v39[2];
        v18 = __OFADD__(v47, 1);
        v48 = v47 + 1;
        if (v18)
        {
          goto LABEL_27;
        }

        v39[2] = v48;
      }

      specialized LazyMapSequence.Iterator.next()(&v57);
      if (*(&v58 + 1) == 1)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_13:
  v22[(result >> 6) + 8] |= 1 << result;
  *(v22[6] + 4 * result) = v12;
  v24 = v22[7] + 120 * result;
  v25 = v49;
  v26 = v50;
  v27 = v52;
  *(v24 + 32) = v51;
  *(v24 + 48) = v27;
  *v24 = v25;
  *(v24 + 16) = v26;
  v28 = v53;
  v29 = v54;
  v30 = v55;
  *(v24 + 112) = v56;
  *(v24 + 80) = v29;
  *(v24 + 96) = v30;
  *(v24 + 64) = v28;
  v31 = v22[2];
  v18 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (!v18)
  {
    v22[2] = v32;
    goto LABEL_15;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v51 = a1;
  v52 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v53 = v8;
  v54 = 0;
  v55 = v11 & v9;
  v56 = a2;
  v57 = a3;

  specialized LazyMapSequence.Iterator.next()(&v47);
  if (!*(&v48 + 1))
  {
    goto LABEL_25;
  }

  v44 = v47;
  v45 = v48;
  v12 = v50;
  v46 = v49;
  v13 = *a5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(&v44);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (v13[3] < v19)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a4 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(&v44);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v24 = result;
    specialized _NativeDictionary.copy()();
    result = v24;
    v22 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v22 = *a5;
  if (v20)
  {
LABEL_11:
    v23 = result;
    outlined destroy of AnyHashable(&v44);
    *(v22[7] + 8 * v23) = v12;

    goto LABEL_15;
  }

LABEL_13:
  v22[(result >> 6) + 8] |= 1 << result;
  v25 = v22[6] + 40 * result;
  v26 = v44;
  v27 = v45;
  *(v25 + 32) = v46;
  *v25 = v26;
  *(v25 + 16) = v27;
  *(v22[7] + 8 * result) = v12;
  v28 = v22[2];
  v18 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v18)
  {
    v22[2] = v29;
LABEL_15:
    specialized LazyMapSequence.Iterator.next()(&v47);
    if (*(&v48 + 1))
    {
      v20 = 1;
      v12 = 40;
      do
      {
        v44 = v47;
        v45 = v48;
        v31 = v50;
        v46 = v49;
        v32 = *a5;
        result = specialized __RawDictionaryStorage.find<A>(_:)(&v44);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v18 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, 1);
          result = specialized __RawDictionaryStorage.find<A>(_:)(&v44);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;
          outlined destroy of AnyHashable(&v44);
          *(v38[7] + 8 * v30) = v31;
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = v38[6] + 40 * result;
          v40 = v44;
          v41 = v45;
          *(v39 + 32) = v46;
          *v39 = v40;
          *(v39 + 16) = v41;
          *(v38[7] + 8 * result) = v31;
          v42 = v38[2];
          v18 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v38[2] = v43;
        }

        specialized LazyMapSequence.Iterator.next()(&v47);
      }

      while (*(&v48 + 1));
    }

LABEL_25:
    outlined consume of Set<UIPress>.Iterator._Variant();
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v56 = a1;
  v57 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v58 = v8;
  v59 = 0;
  v60 = v11 & v9;
  v61 = a2;
  v62 = a3;

  specialized LazyMapSequence.Iterator.next()(&v50);
  if (v55[24] == 255)
  {
    goto LABEL_25;
  }

  v12 = v50;
  v47 = v53;
  v48 = v54;
  v49[0] = *v55;
  *(v49 + 9) = *&v55[9];
  v45 = v51;
  v46 = v52;
  v13 = *a5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(v50);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (v13[3] < v19)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a4 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v23 = result;
    specialized _NativeDictionary.copy()();
    result = v23;
    v22 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v22 = *a5;
  if (v20)
  {
LABEL_11:
    outlined assign with take of NavigationDestinationPresentation(&v45, v22[7] + 96 * result);
    goto LABEL_15;
  }

LABEL_13:
  v22[(result >> 6) + 8] |= 1 << result;
  *(v22[6] + 8 * result) = v12;
  v24 = (v22[7] + 96 * result);
  v25 = v46;
  *v24 = v45;
  v24[1] = v25;
  v26 = v47;
  v27 = v48;
  v28 = v49[0];
  *(v24 + 73) = *(v49 + 9);
  v24[3] = v27;
  v24[4] = v28;
  v24[2] = v26;
  v29 = v22[2];
  v18 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v18)
  {
    v22[2] = v30;
LABEL_15:
    specialized LazyMapSequence.Iterator.next()(&v50);
    if (v55[24] != 255)
    {
      v20 = 1;
      do
      {
        v12 = v50;
        v47 = v53;
        v48 = v54;
        v49[0] = *v55;
        *(v49 + 9) = *&v55[9];
        v45 = v51;
        v46 = v52;
        v31 = *a5;
        result = specialized __RawDictionaryStorage.find<A>(_:)(v50);
        v33 = v31[2];
        v34 = (v32 & 1) == 0;
        v18 = __OFADD__(v33, v34);
        v35 = v33 + v34;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v32;
        if (v31[3] < v35)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, 1);
          result = specialized __RawDictionaryStorage.find<A>(_:)(v12);
          if ((a4 & 1) != (v36 & 1))
          {
            goto LABEL_8;
          }
        }

        v37 = *a5;
        if (a4)
        {
          outlined assign with take of NavigationDestinationPresentation(&v45, v37[7] + 96 * result);
        }

        else
        {
          v37[(result >> 6) + 8] |= 1 << result;
          *(v37[6] + 8 * result) = v12;
          v38 = (v37[7] + 96 * result);
          v39 = v46;
          *v38 = v45;
          v38[1] = v39;
          v40 = v47;
          v41 = v48;
          v42 = v49[0];
          *(v38 + 73) = *(v49 + 9);
          v38[3] = v41;
          v38[4] = v42;
          v38[2] = v40;
          v43 = v37[2];
          v18 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v37[2] = v44;
        }

        specialized LazyMapSequence.Iterator.next()(&v50);
      }

      while (v55[24] != 255);
    }

LABEL_25:
    outlined consume of Set<UIPress>.Iterator._Variant();
  }

LABEL_27:
  __break(1u);
  return result;
}

void *initializeWithCopy for MenuStyleConfiguration(void *a1, void *a2)
{
  if (*a2)
  {
    v4 = a2[1];
    *a1 = *a2;
    a1[1] = v4;
  }

  else
  {
    *a1 = *a2;
  }

  v5 = a2[2];
  if (v5)
  {
    v6 = a2[3];
    a1[2] = v5;
    a1[3] = v6;
  }

  else
  {
    *(a1 + 1) = *(a2 + 1);
  }

  return a1;
}

void *destroy for MenuStyleConfiguration(void *result)
{
  v1 = result;
  if (*result)
  {
  }

  if (v1[2])
  {
  }

  return result;
}

uint64_t EnvironmentValues.setBridgedValue<A>(value:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 8);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BridgedEnvironmentKeysKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<BridgedEnvironmentKeysKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<BridgedEnvironmentKeysKey>);
  if (v8)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v9 = v18;
  v10 = *(v18 + 16);
  v11 = v10 + 1;
  v12 = 32;
  while (--v11)
  {
    v13 = *(v18 + v12);
    v12 += 16;
    if (v13 == a2)
    {

      return EnvironmentValues._set<A>(_:for:)(a1);
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10 + 1, 1, v18);
  }

  v15 = *(v9 + 2);
  v14 = *(v9 + 3);
  if (v15 >= v14 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v9);
  }

  *(v9 + 2) = v15 + 1;
  v16 = &v9[16 * v15];
  *(v16 + 4) = a2;
  *(v16 + 5) = a4;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BridgedEnvironmentKeysKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<BridgedEnvironmentKeysKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<BridgedEnvironmentKeysKey>);

  PropertyList.subscript.setter();
  if (v8)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return EnvironmentValues._set<A>(_:for:)(a1);
}

void type metadata accessor for _ContiguousArrayStorage<UISceneConnectionOptionDefinition.Type>(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  if (!*a2)
  {
    type metadata accessor for UISceneConnectionOptionDefinition.Type(255, a3, a4);
    v5 = type metadata accessor for _ContiguousArrayStorage();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, unint64_t *a6, unint64_t *a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    type metadata accessor for _ContiguousArrayStorage<UISceneConnectionOptionDefinition.Type>(0, a5, a6, a7);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size_0(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 17;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 4);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[16 * v11])
    {
      memmove(v16, v17, 16 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v16, v17, 16 * v11);
  }

  return v13;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ToolbarPlacement.Role()
{
  Hasher.init(_seed:)();
  ToolbarPlacement.Role.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static ToolbarPlacement.Role.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of ToolbarPlacement.Role(a1, v8);
  outlined init with copy of ToolbarPlacement.Role(a2, &v10);
  if (v9 <= 2)
  {
    switch(v9)
    {
      case 0:
        if (!*(&v11 + 1))
        {
          goto LABEL_20;
        }

        goto LABEL_22;
      case 1:
        if (*(&v11 + 1) != 1)
        {
          goto LABEL_22;
        }

        goto LABEL_20;
      case 2:
        if (*(&v11 + 1) != 2)
        {
          goto LABEL_22;
        }

        goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (v9 > 4)
  {
    if (v9 == 5)
    {
      if (*(&v11 + 1) == 5)
      {
        goto LABEL_20;
      }

      goto LABEL_22;
    }

    if (v9 == 6)
    {
      if (*(&v11 + 1) != 6)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

LABEL_17:
    outlined init with copy of ToolbarPlacement.Role(v8, v7);
    if (*(&v11 + 1) >= 7uLL)
    {
      v5[0] = v10;
      v5[1] = v11;
      v6 = v12;
      v3 = MEMORY[0x18D00E7E0](v7, v5);
      outlined destroy of AnyHashable(v5);
      outlined destroy of AnyHashable(v7);
      outlined destroy of UIKitNavigationController.PlatformNavigationRequestStrategy(v8);
      return v3 & 1;
    }

    outlined destroy of AnyHashable(v7);
    goto LABEL_22;
  }

  if (v9 == 3)
  {
    if (*(&v11 + 1) == 3)
    {
      goto LABEL_20;
    }

LABEL_22:
    outlined destroy of (AccessibilityAttachment.Tree, AccessibilityAttachment.Tree)(v8, &lazy cache variable for type metadata for (ToolbarPlacement.Role, ToolbarPlacement.Role));
    v3 = 0;
    return v3 & 1;
  }

  if (*(&v11 + 1) != 4)
  {
    goto LABEL_22;
  }

LABEL_20:
  outlined destroy of UIKitNavigationController.PlatformNavigationRequestStrategy(v8);
  v3 = 1;
  return v3 & 1;
}

uint64_t outlined destroy of UIKitNavigationController.PlatformNavigationRequestStrategy(uint64_t result)
{
  if (*(result + 24) >= 0xFFFFFFFFuLL)
  {
    v1 = result;
    __swift_destroy_boxed_opaque_existential_1(result);
    return v1;
  }

  return result;
}

uint64_t outlined destroy of PPTTestCase?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _s7SwiftUI11PPTTestCaseVSgMaTm_0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type AttributedString and conformance AttributedString(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for NavigationState.StackContent.Key(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 24))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 6;
  v5 = v3 - 6;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for NavigationState.StackContent.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

uint64_t outlined destroy of UINavigationPresentationAdaptor?(uint64_t a1)
{
  type metadata accessor for UINavigationPresentationAdaptor?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static SidebarListStyle._makeViewList<A>(value:inputs:)()
{
  if (one-time initialization token for searchFieldPlacement != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  _s7SwiftUI12_GraphInputsV11isSourceNily09AttributeC008OptionalH0VySbGxmAA9ViewAliasRzlFAA17EnvironmentValuesV11SearchFieldV_TtB5Tm(&lazy cache variable for type metadata for SourceInput<EnvironmentValues.SearchField>, lazy protocol witness table accessor for type EnvironmentValues.SearchField and conformance EnvironmentValues.SearchField, &type metadata for EnvironmentValues.SearchField, lazy protocol witness table accessor for type SourceInput<EnvironmentValues.SearchField> and conformance SourceInput<A>);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type SidebarListStyle.HasSearchField and conformance SidebarListStyle.HasSearchField();
  Attribute.init<A>(body:value:flags:update:)();
  type metadata accessor for _ListValue();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  type metadata accessor for SidebarListStyle.BodyContent<ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>>>();
  type metadata accessor for SelectionManagerBox();
  lazy protocol witness table accessor for type SidebarListStyle.BodyContent<ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>>> and conformance SidebarListStyle.BodyContent<A>();
  swift_getWitnessTable();
  type metadata accessor for SidebarListBody();
  type metadata accessor for SidebarListStyle.Body();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable();
  return static View.makeDebuggableViewList(view:inputs:)();
}

void type metadata accessor for _DictionaryStorage<UISplitViewControllerColumn, NavigationStackCoordinator<SplitColumnNavigationStrategy>>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<UISplitViewControllerColumn, NavigationStackCoordinator<SplitColumnNavigationStrategy>>)
  {
    type metadata accessor for UISplitViewControllerColumn(255);
    type metadata accessor for _ViewModifier_Content<UserActivityModifier>(255, &lazy cache variable for type metadata for NavigationStackCoordinator<SplitColumnNavigationStrategy>, lazy protocol witness table accessor for type SplitColumnNavigationStrategy and conformance SplitColumnNavigationStrategy, &type metadata for SplitColumnNavigationStrategy, type metadata accessor for NavigationStackCoordinator);
    lazy protocol witness table accessor for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type UISplitViewControllerColumn and conformance UISplitViewControllerColumn, type metadata accessor for UISplitViewControllerColumn);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<UISplitViewControllerColumn, NavigationStackCoordinator<SplitColumnNavigationStrategy>>);
    }
  }
}

id implicit closure #2 in implicit closure #1 in variable initialization expression of FetchRequest._controller()
{
  type metadata accessor for FetchedResults();
  type metadata accessor for FetchController();
  return specialized FetchController.__allocating_init(_:)(partial apply for implicit closure #3 in implicit closure #2 in implicit closure #1 in variable initialization expression of FetchRequest._controller, 0);
}

void outlined consume of FetchedResults<A>?<A>(void *a1, void *a2)
{
  if (a1)
  {
  }
}

Swift::Void __swiftcall FetchController.update(in:)(NSManagedObjectContext_optional in)
{
  v2 = v1;
  v54[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  if (in.value.super.isa)
  {
    isa = in.value.super.isa;
  }

  else
  {
    v6 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x80));
    if (!v6)
    {
LABEL_46:
      __break(1u);
LABEL_47:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    isa = [v6 managedObjectContext];
    v4 = *v3 & *v1;
    in.value.super.isa = 0;
  }

  if (!*(v1 + *(v4 + 112)))
  {
    __break(1u);
  }

  v7 = in.value.super.isa;

  v8 = DeferredFetchRequest.result.getter();

  if (-[objc_class concurrencyType](isa, sel_concurrencyType) != 2 && -[objc_class concurrencyType](isa, sel_concurrencyType) || ![objc_opt_self() isMainThread])
  {
    goto LABEL_47;
  }

  v9 = *((*v3 & *v1) + 0x80);
  v10 = *(v1 + v9);
  if (!v10)
  {
    v21 = 1;
    goto LABEL_28;
  }

  v11 = [v10 fetchRequest];
  if (v11)
  {
    v12 = v11;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSFetchRequest);
    v13 = v8;
    v14 = static NSObject.== infix(_:_:)();

    if (v14)
    {
      v15 = *(v2 + v9);
      if (v15 && (v16 = [v15 sectionNameKeyPath]) != 0)
      {
        v17 = v16;
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      MEMORY[0x18D0027E0](aBlock, v22);

      if (aBlock[0])
      {
        v50 = v18;
        v23 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
        v25 = v24;

        if (v20)
        {
          if (v25)
          {
            if (v50 == v23 && v20 == v25)
            {

              return;
            }

            v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v49)
            {
              goto LABEL_42;
            }

            goto LABEL_27;
          }

          goto LABEL_26;
        }

        if (v25)
        {
LABEL_26:

          goto LABEL_27;
        }
      }

      else if (v20)
      {
        goto LABEL_26;
      }

LABEL_42:

      goto LABEL_38;
    }
  }

LABEL_27:
  v21 = *(v2 + v9) == 0;
  v3 = MEMORY[0x1E69E7D40];
LABEL_28:
  v51 = v8;
  [v8 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSFetchRequest);
  swift_dynamicCast();
  v26 = v3;

  MEMORY[0x18D0027E0](v54, v27);

  if (v54[0])
  {
    v28 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSFetchedResultsController);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  isa = isa;
  v32 = objc_allocWithZone(ObjCClassFromMetadata);
  v33 = specialized @nonobjc NSFetchedResultsController.init(fetchRequest:managedObjectContext:sectionNameKeyPath:cacheName:)(v52, isa, v28, v30, 0, 0);

  v34 = *(v2 + v9);
  *(v2 + v9) = v33;
  v35 = v33;

  if (!v35)
  {
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  [v35 setDelegate_];

  if (v21)
  {
    v36 = *(v2 + v9);
    if (v36)
    {
      aBlock[0] = 0;
      if ([v36 performFetch_])
      {
        v37 = aBlock[0];

LABEL_38:
        return;
      }

      v42 = aBlock[0];
      v43 = _convertNSErrorToError(_:)();

      swift_willThrow();
      static os_log_type_t.fault.getter();
      v44 = static Log.runtimeIssuesLog.getter();
      type metadata accessor for _ContiguousArrayStorage<CVarArg>();
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_18CD63400;
      swift_getErrorValue();
      v46 = Error.localizedDescription.getter();
      v48 = v47;
      *(v45 + 56) = MEMORY[0x1E69E6158];
      *(v45 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v45 + 32) = v46;
      *(v45 + 40) = v48;
      os_log(_:dso:log:_:_:)();

      return;
    }

    goto LABEL_45;
  }

  v38 = *((*v26 & *v2) + 0x90);
  if (*(v2 + v38))
  {

    goto LABEL_38;
  }

  v39 = swift_allocObject();
  v39[2] = v2;
  aBlock[4] = partial apply for closure #1 in FetchController.update(in:);
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_14;
  v40 = _Block_copy(aBlock);
  v41 = v2;

  [(objc_class *)isa performBlock:v40];

  _Block_release(v40);
  *(v2 + v38) = 1;
}

uint64_t sub_18BEC8450()
{

  return swift_deallocObject();
}

id partial apply for closure #1 in FetchRequest.init(fetchRequest:transaction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(*(v4 + 24), *(v4 + 16), a3, a4);

  return v5;
}

id specialized @nonobjc NSFetchedResultsController.init(fetchRequest:managedObjectContext:sectionNameKeyPath:cacheName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a4)
  {
    v11 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v11 = MEMORY[0x18D00C850](a3, a4);

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = MEMORY[0x18D00C850](a5, a6);

LABEL_6:
  v13 = [v6 initWithFetchRequest:a1 managedObjectContext:a2 sectionNameKeyPath:v11 cacheName:v12];

  return v13;
}

id closure #1 in FetchRequest<>.init(sortDescriptors:predicate:animation:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSFetchRequest);
  v3 = NSFetchRequest.__allocating_init()();
  v4 = [swift_getObjCClassFromMetadata() entity];
  [v3 setEntity_];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSSortDescriptor);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v3 setSortDescriptors_];

  [v3 setPredicate_];
  return v3;
}

id NSFetchRequest.__allocating_init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t assignWithCopy for CustomHoverEffectModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  v9 = v7 & 0xFFFFFFFFFFFFFFF8;
  v10 = v8 & 0xFFFFFFFFFFFFFFF8;
  v11 = *((v8 & 0xFFFFFFFFFFFFFFF8) + 8);
  LOBYTE(v5) = *((v8 & 0xFFFFFFFFFFFFFFF8) + 16);
  outlined copy of Environment<Bool>.Content(v11, v5);
  v12 = *(v9 + 8);
  v13 = *(v9 + 16);
  *(v9 + 8) = v11;
  *(v9 + 16) = v5;
  outlined consume of Environment<Bool>.Content(v12, v13);
  v14 = *(v10 + 24);
  v15 = *(v10 + 32);
  v16 = *(v10 + 40);
  v17 = *(v10 + 48);
  outlined copy of Environment<HoverEffectContext.State>.Content(v14, v15, v16, v17);
  v18 = *(v9 + 24);
  v19 = *(v9 + 32);
  v20 = *(v9 + 40);
  v21 = *(v9 + 48);
  *(v9 + 24) = v14;
  *(v9 + 32) = v15;
  *(v9 + 40) = v16;
  *(v9 + 48) = v17;
  outlined consume of Environment<HoverEffectContext.State>.Content(v18, v19, v20, v21);
  *(v9 + 49) = *(v10 + 49);
  v22 = (v9 + 57) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v10 + 57) & 0xFFFFFFFFFFFFFFF8;
  v24 = *v23;
  *(v22 + 8) = *(v23 + 8);
  *v22 = v24;
  v25 = (v9 + 73) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v10 + 73) & 0xFFFFFFFFFFFFFFF8;
  v27 = *v26;
  *(v25 + 8) = *(v26 + 8);
  *v25 = v27;
  *(v25 + 9) = *(v26 + 9);
  v28 = ((v25 + 17) & 0xFFFFFFFFFFFFFFF8);
  v29 = (v26 + 17) & 0xFFFFFFFFFFFFFFF8;
  v30 = *v29;
  v29 += 15;
  *v28 = v30;
  v31 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = *(v29 & 0xFFFFFFFFFFFFFFF8);
  v33 = *((v29 & 0xFFFFFFFFFFFFFFF8) + 8);
  LOBYTE(v16) = *((v29 & 0xFFFFFFFFFFFFFFF8) + 16);
  outlined copy of Environment<String?>.Content(v32, v33, v16);
  v34 = *v31;
  v35 = *(v31 + 8);
  v36 = *(v31 + 16);
  *v31 = v32;
  *(v31 + 8) = v33;
  *(v31 + 16) = v16;
  outlined consume of Environment<String?>.Content(v34, v35, v36);
  return a1;
}

uint64_t @objc ToolbarBridge.__ivar_destroyer(uint64_t a1)
{
  outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(a1 + direct field offset for ToolbarBridge.platformVended, type metadata accessor for Toolbar.PlatformVended);
  outlined consume of ToolbarStorage?(*(a1 + direct field offset for ToolbarBridge.lastToolbarStorage), *(a1 + direct field offset for ToolbarBridge.lastToolbarStorage + 8), *(a1 + direct field offset for ToolbarBridge.lastToolbarStorage + 16), *(a1 + direct field offset for ToolbarBridge.lastToolbarStorage + 24), *(a1 + direct field offset for ToolbarBridge.lastToolbarStorage + 32), *(a1 + direct field offset for ToolbarBridge.lastToolbarStorage + 40), *(a1 + direct field offset for ToolbarBridge.lastToolbarStorage + 48));
  outlined consume of ToolbarStorage?(*(a1 + direct field offset for ToolbarBridge.lastInputToolbarStorage), *(a1 + direct field offset for ToolbarBridge.lastInputToolbarStorage + 8), *(a1 + direct field offset for ToolbarBridge.lastInputToolbarStorage + 16), *(a1 + direct field offset for ToolbarBridge.lastInputToolbarStorage + 24), *(a1 + direct field offset for ToolbarBridge.lastInputToolbarStorage + 32), *(a1 + direct field offset for ToolbarBridge.lastInputToolbarStorage + 40), *(a1 + direct field offset for ToolbarBridge.lastInputToolbarStorage + 48));
  v2 = MEMORY[0x1E69E6720];
  outlined destroy of Toolbar.UpdateContext?(a1 + direct field offset for ToolbarBridge.searchItem, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_1);

  outlined destroy of Toolbar.UpdateContext?(a1 + direct field offset for ToolbarBridge.lastNavigationProperties, &lazy cache variable for type metadata for ToolbarStorage.NavigationProperties?, type metadata accessor for ToolbarStorage.NavigationProperties, v2, _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_1);
  outlined destroy of Toolbar.UpdateContext?(a1 + direct field offset for ToolbarBridge.lastInputNavigationProperties, &lazy cache variable for type metadata for ToolbarStorage.NavigationProperties?, type metadata accessor for ToolbarStorage.NavigationProperties, v2, _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_1);
}

void @objc UIHostingController.__ivar_destroyer(uint64_t a1)
{
  outlined destroy of HostingControllerOverrides(a1 + direct field offset for UIHostingController.overrides);

  MEMORY[0x18D011290](a1 + direct field offset for UIHostingController.lastZoomPresentationSource);

  v2 = *(a1 + direct field offset for UIHostingController.keyboardShortcutBridge);
}

uint64_t UIKitDialogBridge.__deallocating_deinit()
{
  UIKitDialogBridge.deinit();

  return swift_deallocClassInstance();
}

uint64_t UIKitDialogBridge.deinit()
{
  MEMORY[0x18D011290](v0 + 16);
  outlined destroy of weak FallbackResponderProvider?(v0 + 24);

  outlined destroy of CustomRecursiveStringConvertible?(v0 + OBJC_IVAR____TtC7SwiftUI17UIKitDialogBridge_lastActionContext, &lazy cache variable for type metadata for DialogActionContext?, type metadata accessor for DialogActionContext);

  return v0;
}

uint64_t outlined destroy of CustomRecursiveStringConvertible?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  type metadata accessor for DialogActionContext?(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_18BEC8CA4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    _s7SwiftUI16CommandOperationVSgMaTm_1(0, &lazy cache variable for type metadata for DialogActionContext.CancelType?, type metadata accessor for DialogActionContext.CancelType);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t PPTTestBridge.__deallocating_deinit()
{
  outlined destroy of weak FallbackResponderProvider?(v0 + 16);
  outlined destroy of PPTTestCase?(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t destroy for FileImportExportBridge.PresentationState(uint64_t a1)
{
  v2 = type metadata accessor for FileImportExportBridge.Presentation(0);
  result = (*(*(v2 - 8) + 48))(a1, 1, v2);
  if (result)
  {
    return result;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for FileExportOperation.Mode(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        outlined consume of FileExportOperation.Storage(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40));

        goto LABEL_26;
      }

      if (EnumCaseMultiPayload == 3)
      {

        goto LABEL_26;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v16 = type metadata accessor for URL();
        (*(*(v16 - 8) + 8))(a1, v16);
        type metadata accessor for FileExportOperation.Move(0);

        goto LABEL_26;
      }

      if (EnumCaseMultiPayload == 1)
      {

LABEL_26:
      }
    }

    v17 = type metadata accessor for FileExportOperation(0);

    v18 = v17[6];
    v19 = type metadata accessor for URL();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(a1 + v18, 1, v19))
    {
      (*(v20 + 8))(a1 + v18, v19);
    }

    v21 = a1 + v17[7];
    if (*(v21 + 24))
    {
      outlined consume of Text.Storage(*v21, *(v21 + 8), *(v21 + 16));
    }

    v22 = a1 + v17[8];
    if (*(v22 + 24))
    {
      outlined consume of Text.Storage(*v22, *(v22 + 8), *(v22 + 16));
    }

    v23 = a1 + v17[9];
    if (*(v23 + 24))
    {
      outlined consume of Text.Storage(*v23, *(v23 + 8), *(v23 + 16));
    }

    v24 = v17[10];
    type metadata accessor for Predicate<Pack{URL}>();
    v26 = v25;
    v28 = *(v25 - 8);
    result = (*(v28 + 48))(a1 + v24, 1, v25);
    if (!result)
    {
      v27 = *(v28 + 8);

      return v27(a1 + v24, v26);
    }

    return result;
  }

  v5 = type metadata accessor for FileImportOperation(0);
  v6 = v5[5];
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a1 + v6, 1, v7))
  {
    (*(v8 + 8))(a1 + v6, v7);
  }

  v9 = a1 + v5[6];
  if (*(v9 + 24))
  {
    outlined consume of Text.Storage(*v9, *(v9 + 8), *(v9 + 16));
  }

  v10 = a1 + v5[7];
  if (*(v10 + 24))
  {
    outlined consume of Text.Storage(*v10, *(v10 + 8), *(v10 + 16));
  }

  v11 = a1 + v5[8];
  if (*(v11 + 24))
  {
    outlined consume of Text.Storage(*v11, *(v11 + 8), *(v11 + 16));
  }

  v12 = v5[11];
  type metadata accessor for Predicate<Pack{URL}>();
  v14 = v13;
  v15 = *(v13 - 8);
  if (!(*(v15 + 48))(a1 + v12, 1, v13))
  {
    (*(v15 + 8))(a1 + v12, v14);
  }
}

uint64_t ContainerBackgroundBridge.__deallocating_deinit()
{
  MEMORY[0x18D011290](v0 + 16);
  outlined destroy of weak FallbackResponderProvider?(v0 + 24);

  outlined destroy of weak FallbackResponderProvider?(v0 + 56);
  outlined consume of ContainerBackgroundValue?(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  return swift_deallocClassInstance();
}

uint64_t ShareConfigurationBridge.__deallocating_deinit()
{
  outlined destroy of weak FallbackResponderProvider?(v0 + 16);

  return swift_deallocClassInstance();
}

void *assignWithCopy for OnTestViewModifier(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

uint64_t assignWithCopy for SpatialTapGesture(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 8);
  *a1 = *a2;
  v4 = (a1 + 8);
  if (a1 != a2)
  {
    outlined destroy of CoordinateSpace(a1 + 8);
    if (*(a2 + 48))
    {
      v6 = *v3;
      v7 = v3[1];
      *(v4 + 25) = *(v3 + 25);
      *v4 = v6;
      v4[1] = v7;
    }

    else
    {
      v8 = *(a2 + 32);
      *(a1 + 32) = v8;
      *(a1 + 40) = *(a2 + 40);
      (**(v8 - 8))(v4, v3);
      *(a1 + 48) = 0;
    }
  }

  return a1;
}

uint64_t assignWithCopy for DragGesture(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  *a1 = *a2;
  v5 = (a1 + 8);
  if (a1 != a2)
  {
    outlined destroy of CoordinateSpace(a1 + 8);
    if (*(a2 + 48))
    {
      v6 = *v4;
      v7 = v4[1];
      *(v5 + 25) = *(v4 + 25);
      *v5 = v6;
      v5[1] = v7;
    }

    else
    {
      v8 = *(a2 + 32);
      *(a1 + 32) = v8;
      *(a1 + 40) = *(a2 + 40);
      (**(v8 - 8))(v5, v4);
      *(a1 + 48) = 0;
    }
  }

  *(a1 + 49) = *(a2 + 49);
  return a1;
}

void destroy for Toolbar.PlatformVended(id *a1, uint64_t a2)
{

  v4 = a1 + *(a2 + 44);
  v5 = type metadata accessor for ToolbarStorage.Item(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {

    if (*(v4 + 11))
    {
      __swift_destroy_boxed_opaque_existential_1((v4 + 64));
    }

    if (v4[152] == 1)
    {
      __swift_destroy_boxed_opaque_existential_1((v4 + 112));
    }

    __swift_destroy_boxed_opaque_existential_1((v4 + 184));

    v6 = &v4[*(v5 + 68)];
    v7 = type metadata accessor for PlatformItemList.Item();
    if ((*(*(v7 - 8) + 48))(v6, 1, v7))
    {
      goto LABEL_45;
    }

    v8 = *(v6 + 24);
    v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
    if ((v8 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
    {
      v10 = v6[72];
      if (v10 != 255)
      {
        outlined consume of GraphicsImage.Contents(*(v6 + 8), v10);
        v8 = *(v6 + 24);
        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      }

      if (v9 != 0x1FFFFFFFELL)
      {
        outlined consume of AccessibilityImageLabel(*(v6 + 22), *(v6 + 23), v8);
      }

      swift_unknownObjectRelease();
    }

    if (*(v6 + 33))
    {

      v11 = *(v6 + 34);
      if (v11 >= 2)
      {
      }
    }

    v12 = *(v6 + 42);
    if (v12 >> 2 != 0xFFFFFFFF)
    {
      outlined consume of PlatformItemList.Item.SystemItem(*(v6 + 38), *(v6 + 39), *(v6 + 40), *(v6 + 41), v12, *(v6 + 43), *(v6 + 44), *(v6 + 45), *(v6 + 46), *(v6 + 47), *(v6 + 48), *(v6 + 49), *(v6 + 50));
    }

    v13 = *(v6 + 52);
    if (v13)
    {
      if (v13 == 1)
      {
        goto LABEL_26;
      }
    }

    if (*(v6 + 54))
    {
    }

    if (*(v6 + 56))
    {
    }

LABEL_26:

    if (*(v6 + 64))
    {
    }

    if (!*(v6 + 102))
    {
LABEL_36:
      v15 = *(v6 + 108);
      if (v15)
      {
        if (v15 == 1)
        {
LABEL_41:

          v16 = &v6[*(v7 + 112)];
          v17 = type metadata accessor for CommandOperation();
          if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
          {
            v18 = &v16[*(v17 + 20)];
            outlined consume of Text.Storage(*v18, *(v18 + 1), v18[16]);

            v19 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
            v20 = type metadata accessor for UUID();
            (*(*(v20 - 8) + 8))(&v18[v19], v20);
            if (*&v16[*(v17 + 24)])
            {
            }
          }

LABEL_45:
          swift_weakDestroy();
          goto LABEL_46;
        }

        __swift_destroy_boxed_opaque_existential_1((v6 + 840));
      }

      if (*(v6 + 110))
      {
      }

      goto LABEL_41;
    }

    v14 = *(v6 + 78);
    if (v14)
    {
      if (v14 == 1)
      {
LABEL_33:
        if (*(v6 + 97) != 1)
        {
        }

        goto LABEL_36;
      }

      __swift_destroy_boxed_opaque_existential_1((v6 + 600));
    }

    goto LABEL_33;
  }

LABEL_46:

  v21 = *(a1 + *(a2 + 52));
}

uint64_t InputAccessoryGenerator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t outlined consume of ToolbarStorage?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {

    outlined consume of Binding<NavigationSplitViewColumn>?(a3, a4);
  }

  return result;
}

uint64_t destroy for Gradient.CubicDefinition()
{
}

uint64_t outlined destroy of TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  type metadata accessor for ToolbarContentDescription?(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t outlined consume of NavigationTitleStorage?(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4 != 1)
  {
    outlined consume of Text?(result, a2, a3, a4);
    outlined consume of ListItemTint?(a5);
  }

  return result;
}

uint64_t UIKitContentScrollViewBridge.__deallocating_deinit()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t AlwaysOnBridge.__deallocating_deinit()
{
  AlwaysOnBridge.deinit();

  return swift_deallocClassInstance();
}

uint64_t AlwaysOnBridge.deinit()
{
  MEMORY[0x18D011290](v0 + 16);

  return v0;
}

uint64_t NavigationBridge_PhoneTV.__deallocating_deinit()
{
  outlined destroy of weak FallbackResponderProvider?(v0 + 16);

  outlined destroy of BridgedPresentation?(v0 + 40, &lazy cache variable for type metadata for BridgedPresentation?, &type metadata for BridgedPresentation);

  outlined consume of EnvironmentValues?(*(v0 + 184));
  MEMORY[0x18D011290](v0 + 200);

  return swift_deallocClassInstance();
}

uint64_t outlined destroy of BridgedPresentation?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for BridgedPresentation?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for Data?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void @objc _UIHostingView.willRemoveSubview(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  _UIHostingView.willRemoveSubview(_:)(v4);
}

Swift::Void __swiftcall _UIHostingView.willRemoveSubview(_:)(UIView *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for _UIHostingView();
  [(UIView *)&v4 willRemoveSubview:a1];
  v3 = _UIHostingView.foreignSubviews.getter();
  [v3 removeObject_];
}

unint64_t lazy protocol witness table accessor for type CubicGradientProvider and conformance CubicGradientProvider()
{
  result = lazy protocol witness table cache variable for type CubicGradientProvider and conformance CubicGradientProvider;
  if (!lazy protocol witness table cache variable for type CubicGradientProvider and conformance CubicGradientProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CubicGradientProvider and conformance CubicGradientProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CubicGradientProvider and conformance CubicGradientProvider;
  if (!lazy protocol witness table cache variable for type CubicGradientProvider and conformance CubicGradientProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CubicGradientProvider and conformance CubicGradientProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CubicGradientProvider and conformance CubicGradientProvider;
  if (!lazy protocol witness table cache variable for type CubicGradientProvider and conformance CubicGradientProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CubicGradientProvider and conformance CubicGradientProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CubicGradientProvider and conformance CubicGradientProvider;
  if (!lazy protocol witness table cache variable for type CubicGradientProvider and conformance CubicGradientProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CubicGradientProvider and conformance CubicGradientProvider);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for Gradient.CubicDefinition(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CubicGradientProvider(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI5ColorV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (!v2)
  {
    if (!v4)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (!v4 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSf_Tt1g5(v2, v4) & 1) == 0)
  {
    return 0;
  }

LABEL_5:

  return interpolationsEqual(_:_:)(v3, v5);
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI5ColorV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    for (i = (a2 + 32); ; ++i)
    {
      if (*v3 != *i)
      {

        v5 = dispatch thunk of AnyShapeStyleBox.isEqual(to:)();

        if ((v5 & 1) == 0)
        {
          break;
        }
      }

      ++v3;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

_BYTE *assignWithCopy for TextInputSuggestionsModifier(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 24))(&a1[*(v4 + 80) + 1] & ~*(v4 + 80), &a2[*(v4 + 80) + 1] & ~*(v4 + 80));
  return a1;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance FetchController<A, B, C>@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

Swift::Void __swiftcall FetchRequest.update()()
{
  v2 = v1;
  v3 = v0;
  v4 = v1[3];
  v34 = v1[2];
  v35 = v4;
  v5 = v1[1];
  v32 = *v1;
  v33 = v5;
  v6 = *(v1 + 9);
  *&v36 = *(v1 + 8);
  *(&v36 + 1) = v6;
  v7 = FetchRequest.controller.getter();
  *(v7 + *((*MEMORY[0x1E69E7D40] & *v7) + 0x70)) = v6;

  v8 = v2[1];
  v9 = v2[3];
  v29 = v2[2];
  v30 = v9;
  v10 = v2[3];
  v11 = v2[4];
  v12 = v2[1];
  v28[0] = *v2;
  v28[1] = v12;
  v14 = *v2;
  v13 = v2[1];
  v15 = v2[3];
  v25 = v2[2];
  v26 = v15;
  v27 = v2[4];
  v23 = *v2;
  v24 = v13;
  v31 = v11;
  v32 = v14;
  v33 = v8;
  v34 = v29;
  v35 = v10;
  v16 = *(v2 + 9);
  *&v36 = *(v2 + 8);
  *(&v36 + 1) = v16;
  v17 = *(v3 - 8);
  (*(v17 + 16))(v21, v28, v3);
  FetchRequest.$results.getter();
  v20 = v22;
  type metadata accessor for FetchedResults();
  type metadata accessor for Optional();
  type metadata accessor for Binding();
  Binding.transaction(_:)();

  outlined consume of FetchedResults<A>?<A>(v20, *(&v20 + 1));
  v18 = v21[2];
  v19 = v21[3];

  outlined consume of FetchedResults<A>?<A>(v18, v19);
  FetchRequest.update(_:)();

  v34 = v25;
  v35 = v26;
  v36 = v27;
  v32 = v23;
  v33 = v24;
  (*(v17 + 8))(&v32, v3);
}

uint64_t FetchRequest.$results.getter()
{
  type metadata accessor for FetchedResults();
  type metadata accessor for Optional();
  type metadata accessor for State();
  return State.projectedValue.getter();
}

uint64_t View.searchable(text:placement:prompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, int a7@<W7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v82 = a6;
  LODWORD(v77) = a7;
  v76 = a5;
  v86 = a4;
  v87 = a3;
  v85 = a2;
  v70 = a1;
  v80 = a8;
  v81 = a11;
  v79 = a10;
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_2(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v78 = &v66 - v12;
  v84 = type metadata accessor for SearchFieldState(0) - 8;
  MEMORY[0x1EEE9AC00](v84);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v15 - 8);
  type metadata accessor for Binding<AttributedString>();
  MEMORY[0x1EEE9AC00](v16);
  v83 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v66 - v19);
  type metadata accessor for SearchModifier<TextField<EmptyView>>();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v73 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v76) = *v76;

  v24 = Text.init(_:tableName:bundle:comment:)();
  v82 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v75 = v28;
  v31 = v28 & 1;
  outlined copy of Text.Storage(v24, v26, v31);

  AttributeContainer.init()();
  v32 = v83;
  AttributedString.init(_:attributes:)();
  lazy protocol witness table accessor for type StringToAttributedStringProjection and conformance StringToAttributedStringProjection();
  v33 = dispatch thunk of AnyLocation.projecting<A>(_:)();
  v34 = v70;
  *v20 = v70;
  v20[1] = v33;
  v77 = v20;
  v35 = v20;
  v36 = v32;
  outlined init with copy of Binding<AttributedString>(v35, v32, type metadata accessor for Binding<AttributedString>);
  v37 = v22;
  v38 = v82;
  v39 = v73;
  v40 = &v73[v22[12]];
  *v40 = 0;
  *(v40 + 1) = 0;
  *(v40 + 8) = 0;
  *v14 = 2;

  outlined copy of Text.Storage(v38, v26, v31);
  v14[1] = specialized static SearchSuggestionsPlacement.Role.initial.getter() & 1;
  *(v14 + 1) = 2;
  *(v14 + 1) = 0;
  v14[8] = 1;
  v41 = v84;
  AttributedString.init()();
  v14[*(v41 + 48)] = 0;
  v42 = *(v41 + 52);
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v43 = &v14[v42];
  v44 = byte_1EAB095CC;
  *v43 = static SearchFocusUpdate.empty;
  v43[4] = v44;

  v45 = outlined copy of Text.Storage(v38, v26, v31);
  MEMORY[0x18D009CE0](v89, v45);
  Text.assertUnstyled(_:options:)();
  outlined consume of Text.Storage(v38, v26, v31);

  *(v39 + 8) = v38;
  *(v39 + 16) = v26;
  *(v39 + 24) = v31;
  *(v39 + 32) = v30;
  LODWORD(v84) = v31;
  v74 = v37;
  outlined init with copy of Binding<AttributedString>(v36, v39 + v37[11], type metadata accessor for Binding<AttributedString>);
  v46 = v39 + v37[13];
  outlined init with copy of Binding<AttributedString>(v14, v46, type metadata accessor for SearchFieldState);
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_2(0, &lazy cache variable for type metadata for State<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981790]);
  *(v46 + *(v47 + 28)) = 0;
  v48 = v37[10];
  v49 = v26;
  v69 = v26;
  v50 = v39 + v48;
  v75 &= 1u;
  v90 = 1;
  v51 = v34;
  v52 = v85;
  v89[0] = v34;
  v89[1] = v85;
  v71 = v30;
  v53 = v86;
  v89[2] = v87;
  v89[3] = v86;

  outlined copy of Text.Storage(v38, v49, v84);
  type metadata accessor for Binding<String>();
  MEMORY[0x18D00ACC0](v88);
  v67 = v88[0];
  v66 = v88[1];
  v68 = v90;
  type metadata accessor for Binding<TextSelection?>(0);
  v55 = v54;
  v56 = *(v54 - 8);
  v72 = v14;
  v57 = *(v56 + 56);
  v58 = v78;
  v57(v78, 1, 1, v54);
  type metadata accessor for TextField<EmptyView>();
  v60 = *(v59 + 56);
  v57((v50 + v60), 1, 1, v55);
  LOBYTE(v89[0]) = 0;
  v61 = v66;
  *(v50 + 72) = v67;
  *(v50 + 80) = v61;
  *(v50 + 88) = 0u;
  *(v50 + 104) = 0u;
  *(v50 + 120) = 0u;
  *(v50 + 136) = 0u;
  *(v50 + 152) = 0;
  *(v50 + 156) = 0;
  *(v50 + 160) = v68;
  *(v50 + 161) = 2;
  *(v50 + 163) = 0;
  *(v50 + 168) = 0;
  *(v50 + 180) = 0;
  *v50 = v51;
  *(v50 + 8) = v52;
  *(v50 + 16) = v87;
  *(v50 + 24) = v53;
  *(v50 + 32) = 0;
  v62 = v82;
  v63 = v69;
  *(v50 + 40) = v82;
  *(v50 + 48) = v63;
  v64 = v71;
  *(v50 + 56) = v75;
  *(v50 + 64) = v64;
  outlined assign with take of Binding<TextSelection?>?(v58, v50 + v60);

  *v39 = v76;
  LOBYTE(v53) = v84;
  outlined consume of Text.Storage(v62, v63, v84);

  outlined consume of Text.Storage(v62, v63, v53);

  _s7SwiftUI16SearchFieldStateVWOhTm_2(v72, type metadata accessor for SearchFieldState);
  _s7SwiftUI16SearchFieldStateVWOhTm_2(v83, type metadata accessor for Binding<AttributedString>);
  _s7SwiftUI16SearchFieldStateVWOhTm_2(v77, type metadata accessor for Binding<AttributedString>);
  MEMORY[0x18D00A570](v39, v79, v74, v81);
  return _s7SwiftUI16SearchFieldStateVWOhTm_2(v39, type metadata accessor for SearchModifier<TextField<EmptyView>>);
}

unint64_t lazy protocol witness table accessor for type AnyNavigationPath.ToHeterogeneous and conformance AnyNavigationPath.ToHeterogeneous()
{
  result = lazy protocol witness table cache variable for type AnyNavigationPath.ToHeterogeneous and conformance AnyNavigationPath.ToHeterogeneous;
  if (!lazy protocol witness table cache variable for type AnyNavigationPath.ToHeterogeneous and conformance AnyNavigationPath.ToHeterogeneous)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyNavigationPath.ToHeterogeneous and conformance AnyNavigationPath.ToHeterogeneous);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyNavigationPath.ToHeterogeneous and conformance AnyNavigationPath.ToHeterogeneous;
  if (!lazy protocol witness table cache variable for type AnyNavigationPath.ToHeterogeneous and conformance AnyNavigationPath.ToHeterogeneous)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyNavigationPath.ToHeterogeneous and conformance AnyNavigationPath.ToHeterogeneous);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyNavigationPath.ToHeterogeneous and conformance AnyNavigationPath.ToHeterogeneous;
  if (!lazy protocol witness table cache variable for type AnyNavigationPath.ToHeterogeneous and conformance AnyNavigationPath.ToHeterogeneous)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyNavigationPath.ToHeterogeneous and conformance AnyNavigationPath.ToHeterogeneous);
  }

  return result;
}

uint64_t View.selectionClearsNavigationStackPath(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t View.navigationSplitViewStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NavigationSplitStyleModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a1, a3, v13);
  (*(v8 + 32))(v15, v10, a3);
  MEMORY[0x18D00A570](v15, a2, v11, a4);
  return (*(v12 + 8))(v15, v11);
}

uint64_t View._onEnvironmentChange<A>(_:perform:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return View._onEnvironmentChange<A>(_:perform:)(a1, a2, a3, a4, a5, a6, type metadata accessor for EnvironmentChangeModifier);
}

{
  return View._onEnvironmentChange<A>(_:perform:)(a1, a2, a3, a4, a5, a6, type metadata accessor for EnvironmentChangeModifier2);
}

uint64_t initializeBufferWithCopyOfBuffer for EnvironmentChangeModifier2(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;

  return a1;
}

uint64_t get_witness_table_7SwiftUI4ViewRzSQRd__r__lAA15ModifiedContentVyxAA25EnvironmentChangeModifier33_1BB15EB6F18297504C950F7546E07730LLVyqd__GGAaBHPxAaBHD1__AhA0cH0HPyHCHCTm(uint64_t a1, void (*a2)(uint64_t, void, void))
{
  a2(255, *(a1 + 8), *(a1 + 24));
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t destroy for ScrollPocketBarInteractionRepresentable()
{
}

uint64_t View.formSheet<A>(isPresented:content:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a4;
  v16[7] = a5;
  type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<PresentationOptionsPreferenceKey>, &type metadata for PresentationOptionsPreferenceKey, &protocol witness table for PresentationOptionsPreferenceKey, MEMORY[0x1E6980910]);
  v17 = type metadata accessor for ModifiedContent();
  v38 = a9;
  v39 = lazy protocol witness table accessor for type _PreferenceTransformModifier<PresentationOptionsPreferenceKey> and conformance _PreferenceTransformModifier<A>();
  WitnessTable = swift_getWitnessTable();
  SheetPresentationModifier<>.init(isPresented:onDismiss:sheetContent:placement:drawsBackground:)(a1, a2, a3, 0, 0, partial apply for closure #1 in View.formSheet<A>(isPresented:content:), v16, 2, v47, 1, v17, WitnessTable);
  v19 = swift_allocObject();
  v19[2] = a6;
  v19[3] = a7;
  v19[4] = a8;
  v19[5] = a9;
  v19[6] = a4;
  v19[7] = a5;
  SheetPresentationModifier<>.init(isPresented:onDismiss:sheetContent:placement:drawsBackground:)(a1, a2, a3, 0, 0, partial apply for closure #2 in View.formSheet<A>(isPresented:content:), v19, 0, &v31, 1, v17, WitnessTable);
  type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, &lazy cache variable for type metadata for NullSheetAnchor<SheetPreference.Key>, &type metadata for SheetPreference.Key, &protocol witness table for SheetPreference.Key, type metadata accessor for NullSheetAnchor);
  v21 = v20;
  v22 = lazy protocol witness table accessor for type NullSheetAnchor<SheetPreference.Key> and conformance NullSheetAnchor<A>();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  *&v40 = v17;
  *(&v40 + 1) = v21;
  *&v41 = WitnessTable;
  *(&v41 + 1) = v22;
  type metadata accessor for SheetPresentationModifier();
  swift_getWitnessTable();
  v23 = MEMORY[0x1E697F270];
  v24 = MEMORY[0x1E697F278];
  StaticIf<>.init<A>(idiom:then:else:)();
  v35 = v44;
  v36 = v45;
  v37[0] = v46[0];
  *(v37 + 11) = *(v46 + 11);
  v31 = v40;
  v32 = v41;
  v33 = v42;
  v34 = v43;
  type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<PadInterfaceIdiom>, v24, v23, MEMORY[0x1E69801E0]);
  v25 = type metadata accessor for StaticIf();
  MEMORY[0x18D00A570](&v31, a6, v25, a8);
  v47[4] = v35;
  v47[5] = v36;
  v48[0] = v37[0];
  *(v48 + 11) = *(v37 + 11);
  v47[0] = v31;
  v47[1] = v32;
  v47[2] = v33;
  v47[3] = v34;
  return (*(*(v25 - 8) + 8))(v47, v25);
}

uint64_t sub_18BECB584()
{

  return swift_deallocObject();
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsEagerNavigationTransitionEnabled>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsEagerNavigationTransitionEnabled>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsEagerNavigationTransitionEnabled>);
    }
  }
}

uint64_t protocol witness for NavigationSplitViewStyle.makeBody(configuration:) in conformance BalancedNavigationSplitViewStyle@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v2;
  v3 = *(a1 + 16);
  v6[2] = *(a1 + 32);
  v7 = *(a1 + 48);
  *a2 = implicit closure #2 in implicit closure #1 in variable initialization expression of NavigationSplitReader._stateHost;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = *a1;
  *(a2 + 48) = v3;
  *(a2 + 64) = *(a1 + 32);
  *(a2 + 80) = *(a1 + 48);
  return outlined init with copy of NavigationSplitViewStyleConfiguration(v6, &v5);
}

uint64_t getEnumTagSinglePayload for AnyStyle(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
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

uint64_t storeEnumTagSinglePayload for AnyStyle(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationSplitColumn and conformance NavigationSplitColumn()
{
  result = lazy protocol witness table cache variable for type NavigationSplitColumn and conformance NavigationSplitColumn;
  if (!lazy protocol witness table cache variable for type NavigationSplitColumn and conformance NavigationSplitColumn)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitColumn and conformance NavigationSplitColumn);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationSplitColumn and conformance NavigationSplitColumn;
  if (!lazy protocol witness table cache variable for type NavigationSplitColumn and conformance NavigationSplitColumn)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitColumn and conformance NavigationSplitColumn);
  }

  return result;
}

uint64_t View._onEnvironmentChange<A>(_:perform:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void, void, uint64_t))
{
  v9 = *a1;
  v12[0] = a1;
  v12[1] = a2;
  v12[2] = a3;
  v10 = a7(0, *(v9 + *MEMORY[0x1E69E77B0] + 8), a6);

  MEMORY[0x18D00A570](v12, a4, v10, a5);
}

uint64_t View.navigationPresentationAdaptor(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of _Benchmark(a1, v6);
  MEMORY[0x18D00A570](v6, a2, &type metadata for NavigationPresentationAdaptorModifier, a3);
  return outlined destroy of _PresentationTransitionOutputs(v6);
}

uint64_t outlined destroy of _PresentationTransitionOutputs(uint64_t result)
{
  if (*(result + 24))
  {
    v1 = result;
    __swift_destroy_boxed_opaque_existential_1(result);
    return v1;
  }

  return result;
}

uint64_t View.navigationTransitionEagerRenderEnabled(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t EnvironmentValues.subscript.setter(uint64_t a1)
{
  specialized EnvironmentValues.subscript.setter();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 8);

  return v3(a1, AssociatedTypeWitness);
}

uint64_t type metadata accessor for UISceneConnectionOptionDefinition.Type(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    type metadata accessor for DropDelegate(255, a3);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unsigned __int8 *protocol witness for Projection.get(base:) in conformance AnyNavigationSplitVisibility.ToTwoColumns@<X0>(unsigned __int8 *result@<X0>, _WORD *a2@<X8>)
{
  if (result[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  *a2 = v2 | *result | 0x4000;
  return result;
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn>);
    }
  }
}

uint64_t protocol witness for static AnyStyleType.makeView<A>(view:style:inputs:) in conformance StyleType<A>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return static StyleType.makeView<A>(view:style:inputs:)(a1, a2, a3, a4, a5, *(a8 + 16), a6, *(a8 + 24), a7);
}

{
  return static StyleType.makeView<A>(view:style:inputs:)(a1, a2, a3, a4, a5, *(a8 + 16), a6, *(a8 + 24), a7);
}

{
  return static StyleType.makeView<A>(view:style:inputs:)(a1, a2, a3, a4, a5, *(a8 + 16), a6, *(a8 + 24), a7);
}

uint64_t static ResolvedList._makeView(view:inputs:)@<X0>(int *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = (a2 + 1);
  v10 = *a2;
  lazy protocol witness table accessor for type ListStyleInput and conformance ListStyleInput();
  PropertyList.subscript.getter();
  if (v20)
  {
    v11 = *v9;
    v12 = v9[2];
    v13 = v9[3];
    v22 = v9[1];
    v23 = v12;
    *v24 = v13;
    *&v24[12] = *(v9 + 60);
    v14 = v21;
    v25 = v8;
    v21 = v11;
    v15 = *(v14 + 8);
    v20 = v10;
    return v15(&v25);
  }

  else
  {
    v25 = v8;
    v20 = v10;
    v17 = *v9;
    v18 = v9[2];
    v19 = v9[3];
    v22 = v9[1];
    v23 = v18;
    *v24 = v19;
    *&v24[12] = *(v9 + 60);
    v21 = v17;
    return static ResolvedList.makeView<A>(view:style:inputs:)(&v25, 0, &v20, a3, &type metadata for DefaultListStyle, a4, &protocol witness table for DefaultListStyle, a5);
  }
}

uint64_t static StyleType.makeView<A>(view:style:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *(a5 + 48);
  v19[2] = *(a5 + 32);
  v19[3] = v13;
  v19[4] = *(a5 + 64);
  v20 = *(a5 + 80);
  v14 = *(a5 + 16);
  v19[0] = *a5;
  v19[1] = v14;
  type metadata accessor for ResolvedList();
  type metadata accessor for _GraphValue();
  v17 = _GraphValue.value.getter();
  v18 = a4;
  type metadata accessor for _ListValue();
  v16[0] = a6;
  v16[1] = a7;
  v16[2] = a8;
  type metadata accessor for _ListValue.Init2();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  return (*(a8 + 8))(v16, v19, a7, a9, a6, a8);
}

{
  v13 = *(a5 + 48);
  v19[2] = *(a5 + 32);
  v19[3] = v13;
  v19[4] = *(a5 + 64);
  v20 = *(a5 + 80);
  v14 = *(a5 + 16);
  v19[0] = *a5;
  v19[1] = v14;
  type metadata accessor for ResolvedTabView();
  type metadata accessor for _GraphValue();
  v17 = _GraphValue.value.getter();
  v18 = a4;
  type metadata accessor for _TabViewValue();
  v16[0] = a6;
  v16[1] = a7;
  v16[2] = a8;
  type metadata accessor for _TabViewValue.Init2();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  return (*(a8 + 8))(v16, v19, a7, a9, a6, a8);
}

{
  v13 = *(a5 + 48);
  v19[2] = *(a5 + 32);
  v19[3] = v13;
  v19[4] = *(a5 + 64);
  v20 = *(a5 + 80);
  v14 = *(a5 + 16);
  v19[0] = *a5;
  v19[1] = v14;
  type metadata accessor for ResolvedPicker();
  type metadata accessor for _GraphValue();
  v17 = _GraphValue.value.getter();
  v18 = a4;
  type metadata accessor for _PickerValue();
  v16[0] = a6;
  v16[1] = a7;
  v16[2] = a8;
  type metadata accessor for _PickerValue.Init2();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  return (*(a8 + 8))(v16, v19, a7, a9, a6, a8);
}

uint64_t static SidebarListStyle._makeView<A>(value:inputs:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a2[2];
  v7 = a2[4];
  v31 = a2[3];
  v32 = v7;
  v33 = *(a2 + 20);
  v8 = *a2;
  v29 = a2[1];
  v30 = v6;
  v25 = v8;
  v26 = v29;
  v27 = v6;
  v28 = v8;
  outlined init with copy of _GraphInputs(&v28, &v19);
  if (one-time initialization token for searchFieldPlacement != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  v10 = _s7SwiftUI12_GraphInputsV11isSourceNily09AttributeC008OptionalH0VySbGxmAA9ViewAliasRzlFAA17EnvironmentValuesV11SearchFieldV_TtB5Tm(&lazy cache variable for type metadata for SourceInput<EnvironmentValues.SearchField>, lazy protocol witness table accessor for type EnvironmentValues.SearchField and conformance EnvironmentValues.SearchField, &type metadata for EnvironmentValues.SearchField, lazy protocol witness table accessor for type SourceInput<EnvironmentValues.SearchField> and conformance SourceInput<A>);
  outlined destroy of _GraphInputs(&v28);
  *&v19 = __PAIR64__(v10, v9);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type SidebarListStyle.HasSearchField and conformance SidebarListStyle.HasSearchField();
  v11 = Attribute.init<A>(body:value:flags:update:)();
  *&v19 = &type metadata for SidebarListStyle;
  *(&v19 + 1) = a3;
  *&v20 = &protocol witness table for SidebarListStyle;
  *(&v20 + 1) = a4;
  type metadata accessor for _ListValue();
  type metadata accessor for _GraphValue();
  v12 = _GraphValue.value.getter();
  type metadata accessor for SidebarListStyle.BodyContent<ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>>>();
  v14 = v13;
  v15 = type metadata accessor for SelectionManagerBox();
  v16 = lazy protocol witness table accessor for type SidebarListStyle.BodyContent<ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>>> and conformance SidebarListStyle.BodyContent<A>();
  WitnessTable = swift_getWitnessTable();
  *&v19 = v14;
  *(&v19 + 1) = v15;
  *&v20 = v16;
  *(&v20 + 1) = WitnessTable;
  type metadata accessor for SidebarListBody();
  *&v19 = __PAIR64__(v11, v12);
  type metadata accessor for SidebarListStyle.Body();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  v21 = v30;
  v22 = v31;
  v23 = v32;
  v24 = v33;
  v19 = v28;
  v20 = v29;
  swift_getWitnessTable();
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t View.searchable(text:isPresented:placement:prompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, unsigned __int8 *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v30 = a7;
  v28 = a5;
  v29 = a6;
  v31 = a3;
  v32 = a9;
  v27 = a1;
  v33 = a14;
  v34 = a15;
  type metadata accessor for SearchModifier<TextField<EmptyView>>();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *a8;

  v22 = a2;

  v23 = a4;

  outlined copy of Text?(a10, a11, a12, a13);
  v24 = v28;

  v25 = v29;

  SearchModifier.init<>(text:isPresented:placement:prompt:)(v27, v22, v31, v23, v24, v25, v30 & 1, &v35, v21, a10, a11, a12, a13);
  MEMORY[0x18D00A570](v21, v33, v19, v34);
  return _s7SwiftUI16SearchFieldStateVWOhTm_2(v21, type metadata accessor for SearchModifier<TextField<EmptyView>>);
}

uint64_t SearchModifier.init<>(text:isPresented:placement:prompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, unsigned __int8 *a8@<X7>, _BYTE *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v80 = a7;
  v86 = a6;
  v79 = a5;
  v96 = a3;
  v97 = a2;
  v93 = a9;
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_2(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v85 = &v77 - v17;
  v18 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v18);
  v94 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v20 - 8);
  type metadata accessor for Binding<AttributedString>();
  MEMORY[0x1EEE9AC00](v21);
  v92 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v91 = (&v77 - v24);
  v84 = *a8;
  if (a13)
  {
    v99 = a11;
    v100 = a10;
    v95 = a12;
    v98 = a13;
  }

  else
  {
    v25 = static Text.System.search.getter();
    v99 = v26;
    v100 = v25;
    v95 = v27;
    v98 = v28;
  }

  v87 = a10;
  v88 = a11;
  v89 = a12;
  v90 = a13;
  outlined copy of Text?(a10, a11, a12, a13);
  AttributeContainer.init()();
  v29 = v91;
  v83 = a4;
  AttributedString.init(_:attributes:)();
  lazy protocol witness table accessor for type StringToAttributedStringProjection and conformance StringToAttributedStringProjection();
  v30 = dispatch thunk of AnyLocation.projecting<A>(_:)();
  *v29 = a1;
  v29[1] = v30;
  v31 = v92;
  outlined init with copy of Binding<AttributedString>(v29, v92, type metadata accessor for Binding<AttributedString>);
  type metadata accessor for SearchModifier<TextField<EmptyView>>();
  v33 = v32;
  v34 = v93;
  v35 = &v93[v32[12]];
  *v35 = 0;
  *(v35 + 1) = 0;
  v78 = v35;
  *(v35 + 8) = 0;
  v36 = v94;
  *v94 = 2;

  v37 = v95 & 1;
  outlined copy of Text.Storage(v100, v99, v95 & 1);
  v36[1] = specialized static SearchSuggestionsPlacement.Role.initial.getter() & 1;
  *(v36 + 1) = 2;
  *(v36 + 1) = 0;
  v36[8] = 1;
  AttributedString.init()();
  v36[*(v18 + 40)] = 0;
  v38 = &v36[*(v18 + 44)];
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v39 = byte_1EAB095CC;
  *v38 = static SearchFocusUpdate.empty;
  v38[4] = v39;
  v40 = v98;

  v41 = v99;
  v42 = v100;
  v43 = outlined copy of Text.Storage(v100, v99, v37);
  MEMORY[0x18D009CE0](v102, v43);
  Text.assertUnstyled(_:options:)();
  outlined consume of Text.Storage(v42, v41, v37);

  *(v34 + 1) = v42;
  *(v34 + 2) = v41;
  v44 = v42;
  v34[24] = v37;
  *(v34 + 4) = v40;
  outlined init with copy of Binding<AttributedString>(v31, &v34[v33[11]], type metadata accessor for Binding<AttributedString>);
  v45 = &v34[v33[13]];
  outlined init with copy of Binding<AttributedString>(v36, v45, type metadata accessor for SearchFieldState);
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_2(0, &lazy cache variable for type metadata for State<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981790]);
  *(v45 + *(v46 + 28)) = 0;
  v47 = &v34[v33[10]];
  v82 = v95 & 1;
  v103 = 1;
  v102[0] = a1;
  v102[1] = v97;
  v48 = v83;
  v102[2] = v96;
  v102[3] = v83;
  v98 = v40;

  v99 = v41;
  v100 = v44;
  outlined copy of Text.Storage(v44, v41, v37);

  outlined copy of Text.Storage(v44, v41, v37);
  type metadata accessor for Binding<String>();
  v50 = v49;

  MEMORY[0x18D00ACC0](v101, v50);
  v52 = v101[0];
  v51 = v101[1];
  v81 = v103;
  type metadata accessor for Binding<TextSelection?>(0);
  v54 = v53;
  v55 = *(*(v53 - 8) + 56);
  v56 = v48;
  v57 = v85;
  v55(v85, 1, 1, v53);
  type metadata accessor for TextField<EmptyView>();
  v59 = *(v58 + 56);
  v55(&v47[v59], 1, 1, v54);
  v60 = v97;
  LOBYTE(v102[0]) = 0;
  *(v47 + 9) = v52;
  *(v47 + 10) = v51;
  *(v47 + 88) = 0u;
  *(v47 + 104) = 0u;
  *(v47 + 120) = 0u;
  *(v47 + 136) = 0u;
  v47[152] = 0;
  *(v47 + 39) = 0;
  v47[160] = v81;
  *(v47 + 161) = 2;
  v47[163] = 0;
  *(v47 + 21) = 0;
  v47[180] = 0;
  *v47 = a1;
  *(v47 + 1) = v60;
  *(v47 + 2) = v96;
  *(v47 + 3) = v56;
  *(v47 + 16) = 0;
  v62 = v99;
  v61 = v100;
  *(v47 + 5) = v100;
  *(v47 + 6) = v62;
  v63 = v98;
  *(v47 + 7) = v82;
  *(v47 + 8) = v63;
  outlined assign with take of Binding<TextSelection?>?(v57, &v47[v59]);
  *v93 = v84;
  v64 = v86;
  v65 = v62;
  if (v86)
  {
    v66 = v80;
    v67 = v78;
    v68 = *v78;
    v69 = *(v78 + 1);
    v70 = v78[17];
    v71 = v79;
    *v78 = v79;
    *(v67 + 1) = v64;
    v72 = v67[16];
    v67[16] = v66 & 1;
    v67[17] = 1;

    v73 = v68;
    v74 = v69;
    v65 = v99;
    v61 = v100;
    outlined consume of StateOrBinding<Bool>(v73, v74, v72, v70);
    outlined consume of Binding<NavigationSplitViewColumn>?(v71, v64);
  }

  v75 = v95;
  outlined consume of Text.Storage(v61, v65, v95 & 1);

  outlined consume of Text.Storage(v61, v65, v75 & 1);

  outlined consume of Text?(v87, v88, v89, v90);
  _s7SwiftUI16SearchFieldStateVWOhTm_2(v94, type metadata accessor for SearchFieldState);
  _s7SwiftUI16SearchFieldStateVWOhTm_2(v92, type metadata accessor for Binding<AttributedString>);
  return _s7SwiftUI16SearchFieldStateVWOhTm_2(v91, type metadata accessor for Binding<AttributedString>);
}

uint64_t View.searchSuggestions<A>(placement:_:)@<X0>(char *a1@<X0>, void (*a2)(double)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a6;
  v25[0] = a4;
  v25[1] = a3;
  v26 = a2;
  v29 = a7;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SearchSuggestionsModifier();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v25 - v14;
  v16 = type metadata accessor for ModifiedContent();
  v27 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v25 - v18;
  v20 = *a1;
  v26(v17);
  (*(v9 + 32))(v15, v11, a5);
  v21 = v28;
  MEMORY[0x18D00A570](v15, v25[0], v12, v28);
  (*(v13 + 8))(v15, v12);
  v32 = v20;
  WitnessTable = swift_getWitnessTable();
  v30 = v21;
  v31 = WitnessTable;
  v23 = swift_getWitnessTable();
  View.searchEnvironmentTransform<A>(_:)(&v32, v16, &type metadata for SearchSuggestionPlacementTransform, v23);
  return (*(v27 + 8))(v19, v16);
}

double protocol witness for static Rule.initialValue.getter in conformance MakeAccessibilityScrollView@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 288) = 0;
  result = 0.0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t SearchField.multiSuggestions(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  type metadata accessor for Binding<SearchFieldState>(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>(0);
  v16 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + *(a2 + 44)) == 1 && (v41 = v17, v20 = SearchField.renderSuggestions(_:)(), v17 = v41, (v20 & 1) != 0))
  {
    KeyPath = swift_getKeyPath();
    v42 = KeyPath;
    v40 = a3;
    v21 = *(v9 + 32);
    _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
    v23 = *(v22 + 32);
    outlined init with copy of SearchBoundProperty<AttributedString>(a1 + v21, v14, type metadata accessor for SearchFieldState);
    v24 = *(v12 + 36);
    v25 = type metadata accessor for AttributedString();
    (*(*(v25 - 8) + 32))(&v19[v23], &v14[v24], v25);
    type metadata accessor for WritableKeyPath<SearchFieldState, AttributedString>();
    v39 = MEMORY[0x1E6982050];
    lazy protocol witness table accessor for type SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment(&lazy protocol witness table cache variable for type WritableKeyPath<SearchFieldState, AttributedString> and conformance WritableKeyPath<A, B>, type metadata accessor for WritableKeyPath<SearchFieldState, AttributedString>);
    v26 = dispatch thunk of AnyLocation.projecting<A>(_:)();

    *v19 = *a1;
    *(v19 + 1) = v26;
    v27 = swift_getKeyPath();

    MEMORY[0x18D00ACC0](v9);
    LOBYTE(v23) = v14[1];
    outlined destroy of StateOrBinding<SearchFieldState>(v14, type metadata accessor for SearchFieldState);
    type metadata accessor for ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>();
    v29 = &v19[*(v28 + 36)];
    *v29 = v27;
    v29[8] = v23;
    SearchField.$state.getter(v11);
    v42 = swift_getKeyPath();
    v30 = *(v11 + *(v9 + 32) + 2);
    type metadata accessor for WritableKeyPath<SearchFieldState, Bool?>();
    lazy protocol witness table accessor for type SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment(&lazy protocol witness table cache variable for type WritableKeyPath<SearchFieldState, Bool?> and conformance WritableKeyPath<A, B>, type metadata accessor for WritableKeyPath<SearchFieldState, Bool?>);
    v31 = dispatch thunk of AnyLocation.projecting<A>(_:)();

    v32 = *v11;

    outlined destroy of StateOrBinding<SearchFieldState>(v11, type metadata accessor for Binding<SearchFieldState>);
    v33 = &v19[*(v16 + 36)];
    *v33 = v32;
    *(v33 + 1) = v31;
    v33[16] = v30;
    v34 = v40;
    _s7SwiftUI7BindingVyAA16SearchFieldStateVGWObTm_0(v19, v40, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>);
    return (*(v41 + 56))(v34, 0, 1, v16);
  }

  else
  {
    v36 = *(v17 + 56);

    return v36(a3, 1, 1, v16);
  }
}

uint64_t SearchField.renderSuggestions(_:)()
{
  v0 = type metadata accessor for AttributedString.Index();
  v21 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - v4;
  v6 = type metadata accessor for AttributedString.CharacterView();
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - v13;
  SearchField.state.getter();
  v15 = *v14;
  outlined destroy of StateOrBinding<SearchFieldState>(v14, type metadata accessor for SearchFieldState);
  if (v15 == 2)
  {
    type metadata accessor for Binding<SearchFieldState>(0);
    MEMORY[0x18D00ACC0]();
    AttributedString.characters.getter();
    outlined destroy of StateOrBinding<SearchFieldState>(v11, type metadata accessor for SearchFieldState);
    lazy protocol witness table accessor for type SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x1E6968678]);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    lazy protocol witness table accessor for type SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
    v16 = dispatch thunk of static Equatable.== infix(_:_:)();
    v17 = *(v21 + 8);
    v17(v2, v0);
    v17(v5, v0);
    (*(v20 + 8))(v8, v6);
    v18 = v16 ^ 1;
  }

  else
  {
    v18 = 1;
  }

  return v18 & 1;
}

uint64_t SearchField.state.getter()
{
  v1 = v0;
  type metadata accessor for Binding<SearchFieldState>(0);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for State<SearchFieldState>(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StateOrBinding<SearchFieldState>(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SearchBoundProperty<AttributedString>(v1, v11, type metadata accessor for StateOrBinding<SearchFieldState>);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s7SwiftUI7BindingVyAA16SearchFieldStateVGWObTm_0(v11, v5, type metadata accessor for Binding<SearchFieldState>);
    MEMORY[0x18D00ACC0](v3);
    v12 = type metadata accessor for Binding<SearchFieldState>;
    v13 = v5;
  }

  else
  {
    _s7SwiftUI7BindingVyAA16SearchFieldStateVGWObTm_0(v11, v8, type metadata accessor for State<SearchFieldState>);
    State.wrappedValue.getter();
    v12 = type metadata accessor for State<SearchFieldState>;
    v13 = v8;
  }

  return outlined destroy of StateOrBinding<SearchFieldState>(v13, v12);
}

uint64_t CommandGroup.MakeList.value.getter()
{
  v0 = type metadata accessor for CommandGroup();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v11 - v1;
  v3 = type metadata accessor for CommandsList.Item(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  CommandGroup.MakeList.commandGroup.getter(v2);
  _s7SwiftUI16CommandOperationVWObTm_1(v2, v7, type metadata accessor for CommandOperation);
  type metadata accessor for CommandsList.Item.Value(0);
  swift_storeEnumTagMultiPayload();
  DisplayList.Version.init(forUpdate:)();
  *&v7[*(v4 + 28)] = v11[1];
  type metadata accessor for _ContiguousArrayStorage<CommandsList.Item>();
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_18CD63400;
  _s7SwiftUI16CommandOperationVWObTm_1(v7, v9 + v8, type metadata accessor for CommandsList.Item);
  return v9;
}

uint64_t protocol witness for Rule.value.getter in conformance CommandGroup<A>.MakeList@<X0>(uint64_t *a1@<X8>)
{
  result = CommandGroup.MakeList.value.getter();
  *a1 = result;
  return result;
}

uint64_t CommandGroup.MakeList.commandGroup.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CommandGroup();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

void type metadata accessor for _ContiguousArrayStorage<CommandsList.Item>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<CommandsList.Item>)
  {
    type metadata accessor for CommandsList.Item(255);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CommandsList.Item>);
    }
  }
}

_BYTE *initializeWithCopy for CommandsList.Item(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = type metadata accessor for CommandsList.Item.Value(0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  else
  {
    v22 = a3;
    *a1 = *a2;
    v21 = type metadata accessor for CommandOperation();
    v7 = *(v21 + 20);
    v8 = &a1[v7];
    v9 = &a2[v7];
    v10 = *&a2[v7];
    v11 = *&a2[v7 + 8];
    v12 = a2[v7 + 16];
    outlined copy of Text.Storage(v10, v11, v12);
    *v8 = v10;
    *(v8 + 1) = v11;
    v8[16] = v12;
    *(v8 + 3) = *(v9 + 3);
    v13 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v14 = type metadata accessor for UUID();
    v15 = *(*(v14 - 8) + 16);

    v15(&v8[v13], &v9[v13], v14);
    v16 = *(v21 + 24);
    v17 = &a1[v16];
    v18 = &a2[v16];
    if (*v18)
    {
      v19 = v18[1];
      *v17 = *v18;
      v17[1] = v19;
    }

    else
    {
      *v17 = *v18;
    }

    swift_storeEnumTagMultiPayload();
    a3 = v22;
  }

  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  return a1;
}

uint64_t @objc UIKitPlatformViewHost.__ivar_destroyer()
{

  return swift_weakDestroy();
}

uint64_t BarEnvironmentViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC7SwiftUI23BarEnvironmentViewModel__visibility;
  type metadata accessor for Published<Visibility>(0, &lazy cache variable for type metadata for Published<Visibility>, MEMORY[0x1E697DB50], MEMORY[0x1E695C070]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC7SwiftUI23BarEnvironmentViewModel__colorScheme;
  type metadata accessor for Published<ColorScheme?>();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t UIViewResponder.__deallocating_deinit()
{
  outlined destroy of weak FallbackResponderProvider?(v0 + 16);
  swift_weakDestroy();
  MEMORY[0x18D011290](v0 + 40);
  MEMORY[0x18D011290](v0 + 48);
  outlined destroy of ContentResponderHelper<UIViewContentResponder>(v0 + 56, type metadata accessor for ContentResponderHelper<UIViewContentResponder>);
  outlined destroy of ContentResponderHelper<UIViewContentResponder>(v0 + 184, type metadata accessor for PlatformViewResponderBase<UIView, UIViewContentResponder>.PlatformHitTestResult?);
  MEMORY[0x18D011290](v0 + 224);

  MEMORY[0x18D011290](v0 + 232);

  return swift_deallocClassInstance();
}

uint64_t outlined destroy of ContentResponderHelper<UIViewContentResponder>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for ContentResponderHelper<UIViewContentResponder>()
{
  if (!lazy cache variable for type metadata for ContentResponderHelper<UIViewContentResponder>)
  {
    lazy protocol witness table accessor for type UIViewContentResponder and conformance UIViewContentResponder();
    v0 = type metadata accessor for ContentResponderHelper();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ContentResponderHelper<UIViewContentResponder>);
    }
  }
}

uint64_t getEnumTagSinglePayload for UIViewContentResponder(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void type metadata accessor for PlatformViewResponderBase<UIView, UIViewContentResponder>.PlatformHitTestResult?()
{
  if (!lazy cache variable for type metadata for PlatformViewResponderBase<UIView, UIViewContentResponder>.PlatformHitTestResult?)
  {
    type metadata accessor for PlatformViewResponderBase<UIView, UIViewContentResponder>.PlatformHitTestResult();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PlatformViewResponderBase<UIView, UIViewContentResponder>.PlatformHitTestResult?);
    }
  }
}

void type metadata accessor for PlatformViewResponderBase<UIView, UIViewContentResponder>.PlatformHitTestResult()
{
  if (!lazy cache variable for type metadata for PlatformViewResponderBase<UIView, UIViewContentResponder>.PlatformHitTestResult)
  {
    type metadata accessor for UIView();
    lazy protocol witness table accessor for type UIViewContentResponder and conformance UIViewContentResponder();
    v0 = type metadata accessor for PlatformViewResponderBase.PlatformHitTestResult();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PlatformViewResponderBase<UIView, UIViewContentResponder>.PlatformHitTestResult);
    }
  }
}

id _UIHostingView.foreignSubviews.getter()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x1F8);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v4 = [objc_opt_self() weakObjectsHashTable];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t interpolationsEqual(_:_:)(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    return !a2;
  }

  if (!a2)
  {
    return 0;
  }

  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = (a2 + 44);
  v4 = (result + 44);
  LOBYTE(result) = 1;
  do
  {
    result = (result & (*(v4 - 3) == *(v3 - 3))) == 1 && *(v4 - 2) == *(v3 - 2) && *(v4 - 1) == *(v3 - 1) && *v4 == *v3;
    v3 += 4;
    v4 += 4;
    --v2;
  }

  while (v2);
  return result;
}

uint64_t initializeWithCopy for OnModifierKeysChangedModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;

  return a1;
}

uint64_t destroy for OnModifierKeysChangedModifier()
{
}

uint64_t getEnumTagSinglePayload for HelpView(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

uint64_t closure #1 in static GridRow._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for GridRow();
  v8 = *(v7 + 36);
  v12[2] = v7;
  v12[3] = a2;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, a4, v12, a2, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v12[5];
}

uint64_t closure #2 in static GridRow._makeViewList(view:inputs:)(uint64_t a1)
{
  v7[2] = type metadata accessor for GridRow();
  type metadata accessor for VerticalAlignment?(0, &lazy cache variable for type metadata for VerticalAlignment?, MEMORY[0x1E697F2F0], MEMORY[0x1E69E6720]);
  v3 = v2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_21, v7, v3, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t static ToolbarItem._makeToolbar(content:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v9 = a2[2];
  v10 = a2[3];
  v11 = *a2;
  v30 = a2[1];
  v31 = v9;
  v32[0] = v10;
  *(v32 + 12) = *(a2 + 60);
  v12 = *a1;
  v29 = v11;
  v17[1] = v12;
  type metadata accessor for ToolbarItem();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(a4 - 8) + 64))
  {
    closure #1 in static ToolbarItem._makeToolbar(content:inputs:)(1, a3, a4);
  }

  AGGraphCreateOffsetAttribute2();
  type metadata accessor for StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ToolbarItem.MakeView();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  _GraphValue.value.getter();
  closure #2 in static ToolbarItem._makeToolbar(content:inputs:)(1);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v27 = v31;
  v28[0] = v32[0];
  *(v28 + 12) = *(v32 + 12);
  v25 = v29;
  v26 = v30;
  v23 = a5;
  v24 = lazy protocol witness table accessor for type StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable();
  v14 = static ToolbarContent.makeViewList<A>(placement:content:inputs:)(OffsetAttribute2, v17, &v25);
  v18[0] = v12;
  _GraphValue.value.getter();
  v21 = v31;
  v22[0] = v32[0];
  *(v22 + 12) = *(v32 + 12);
  v19 = v29;
  v20 = v30;
  outlined init with copy of _ToolbarInputs(&v29, &v25);
  ToolbarMakeEntries.init<A, B>(placement:toolbarItem:viewList:inputs:)(OffsetAttribute2, v14, &v19, a3, &v25);
  v21 = v27;
  v22[0] = v28[0];
  v22[1] = v28[1];
  v22[2] = v28[2];
  v19 = v25;
  v20 = v26;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of ToolbarMakeEntries(&v25, v18);
  type metadata accessor for [ToolbarStorage.Entry](0, &lazy cache variable for type metadata for [ToolbarStorage.Entry], type metadata accessor for ToolbarStorage.Entry, MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type ToolbarMakeEntries and conformance ToolbarMakeEntries();
  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of ToolbarMakeEntries(&v25);
  v21 = v31;
  v22[0] = v32[0];
  *(v22 + 12) = *(v32 + 12);
  v19 = v29;
  v20 = v30;
  static ToolbarContent.makeToolbarOutputs(placement:entries:inputs:)(&v19, a6);
  return outlined destroy of ToolbarMakeEntries(&v25);
}

uint64_t closure #1 in static ToolbarItem._makeToolbar(content:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ToolbarItem();
  v6 = *(v5 + 48);
  v10[2] = v5;
  v10[3] = a3;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v6, closure #1 in static PointerOffset.of(_:)partial apply, v10, a3, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v10[5];
}

uint64_t closure #2 in static ToolbarItem._makeToolbar(content:inputs:)(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItem();
  v3 = *(v2 + 44);
  v7[2] = v2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v3, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_6, v7, &type metadata for ToolbarItemPlacement, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t ToolbarMakeEntries.init<A, B>(placement:toolbarItem:viewList:inputs:)@<X0>(int a1@<W0>, int a2@<W2>, __int128 *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v37 = a1;
  v38 = a2;
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3[3];
  v43 = a3[2];
  *v44 = v6;
  *&v44[12] = *(a3 + 60);
  v7 = a3[1];
  v41 = *a3;
  v42 = v7;
  if (*(*(a4 - 8) + 64))
  {
    closure #1 in ToolbarMakeEntries.init<A, B>(placement:toolbarItem:viewList:inputs:)(1, a4);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  closure #2 in ToolbarMakeEntries.init<A, B>(placement:toolbarItem:viewList:inputs:)(1);
  v9 = AGGraphCreateOffsetAttribute2();
  v35 = *&v44[24];
  v36 = v9;
  v34 = DWORD2(v42);
  v40[0] = OffsetAttribute2;
  MEMORY[0x1EEE9AC00](v9);
  v29 = type metadata accessor for ToString();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<String?>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v40, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_15, &v28, v29, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  v33 = v39;
  if (one-time initialization token for toolbarTransitionIdentifier != -1)
  {
    swift_once();
  }

  v39 = static CachedEnvironment.ID.toolbarTransitionIdentifier;
  swift_beginAccess();
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for String?);
  v32 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  if (one-time initialization token for toolbarMatchedTransitionIdentifier != -1)
  {
    swift_once();
  }

  v39 = static CachedEnvironment.ID.toolbarMatchedTransitionIdentifier;
  swift_beginAccess();
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for MatchedTransitionIdentifier?);
  v31 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  closure #3 in ToolbarMakeEntries.init<A, B>(placement:toolbarItem:viewList:inputs:)(1);
  v12 = AGGraphCreateOffsetAttribute2();
  closure #4 in ToolbarMakeEntries.init<A, B>(placement:toolbarItem:viewList:inputs:)(1);
  v13 = AGGraphCreateOffsetAttribute2();
  if (one-time initialization token for toolbarCustomizationBehavior != -1)
  {
    swift_once();
  }

  v39 = static CachedEnvironment.ID.toolbarCustomizationBehavior;
  swift_beginAccess();
  v14 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  if (one-time initialization token for toolbarItemContainerTint != -1)
  {
    swift_once();
  }

  v39 = static CachedEnvironment.ID.toolbarItemContainerTint;
  swift_beginAccess();
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for Color?);
  v15 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  if (one-time initialization token for toolbarCustomizationVisibility != -1)
  {
    swift_once();
  }

  v39 = static CachedEnvironment.ID.toolbarCustomizationVisibility;
  swift_beginAccess();
  v16 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  if (one-time initialization token for toolbarItemIsHidden != -1)
  {
    swift_once();
  }

  v39 = static CachedEnvironment.ID.toolbarItemIsHidden;
  swift_beginAccess();
  v17 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  if (one-time initialization token for toolbarItemPlatterVisibility != -1)
  {
    swift_once();
  }

  v39 = static CachedEnvironment.ID.toolbarItemPlatterVisibility;
  swift_beginAccess();
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for Visibility?);
  v18 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  if (one-time initialization token for toolbarCustomizationOptions != -1)
  {
    swift_once();
  }

  v39 = static CachedEnvironment.ID.toolbarCustomizationOptions;
  swift_beginAccess();
  v19 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  v20 = AGSubgraphGetCurrent();
  if (!v20)
  {
    __break(1u);
  }

  v21 = v20;
  result = outlined destroy of _ToolbarInputs(&v41);
  v23 = *&v44[16];
  v24 = v36;
  *a5 = v37;
  *(a5 + 4) = v24;
  v25 = v34;
  v26 = v35;
  *(a5 + 8) = v38;
  *(a5 + 12) = v26;
  *(a5 + 16) = v25;
  *(a5 + 20) = 0;
  v27 = v32;
  *(a5 + 24) = v33;
  *(a5 + 28) = v27;
  *(a5 + 32) = v31;
  *(a5 + 36) = v12;
  *(a5 + 40) = v14;
  *(a5 + 44) = v15;
  *(a5 + 48) = v16;
  *(a5 + 52) = v17;
  *(a5 + 56) = v18;
  *(a5 + 60) = v19;
  *(a5 + 64) = v13;
  *(a5 + 72) = v21;
  *(a5 + 80) = v23;
  *(a5 + 88) = 0;
  return result;
}

uint64_t closure #2 in ToolbarMakeEntries.init<A, B>(placement:toolbarItem:viewList:inputs:)(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItem();
  v3 = *(v2 + 56);
  v8[2] = v2;
  v4 = MEMORY[0x1E69E6370];
  v5 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v3, closure #1 in static PointerOffset.of(_:)partial apply, v8, v4, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return v8[5];
}

void type metadata accessor for Attribute<String?>()
{
  if (!lazy cache variable for type metadata for Attribute<String?>)
  {
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for String?);
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<String?>);
    }
  }
}

uint64_t closure #3 in ToolbarMakeEntries.init<A, B>(placement:toolbarItem:viewList:inputs:)(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItem();
  v3 = *(v2 + 52);
  v8[2] = v2;
  v4 = MEMORY[0x1E69E6370];
  v5 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v3, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_1, v8, v4, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return v8[5];
}

uint64_t closure #4 in ToolbarMakeEntries.init<A, B>(placement:toolbarItem:viewList:inputs:)(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItem();
  v3 = *(v2 + 60);
  v9[2] = v2;
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for ToolbarDefaultItemKind?);
  v5 = v4;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v3, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_10, v9, v5, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t outlined init with take of FocusItem?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FocusItem?(0, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata accessor for FocusItem?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t specialized static FocusState._makeProperty<A>(in:container:fieldOffset:inputs:)()
{
  lazy protocol witness table accessor for type FocusStoreInputKey and conformance FocusStoreInputKey();
  PropertyList.subscript.getter();
  lazy protocol witness table accessor for type FocusedItemInputKey and conformance FocusedItemInputKey();
  PropertyList.subscript.getter();
  type metadata accessor for FocusState.Box();
  swift_getWitnessTable();
  return _DynamicPropertyBuffer.append<A>(_:fieldOffset:)();
}

uint64_t FocusState.Box.update(property:phase:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v28 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = *v3;
  if (*MEMORY[0x1E698D3F8] != *v3)
  {
    v10 = v5;
    v26 = v3;
    v11 = v3[1];
    v27 = v11 == 0;
    v12 = v11;
    v25 = v11;
    if (!v11)
    {
      v13 = type metadata accessor for FocusState();
      if (*(v10 + *(v13 + 36)) && (type metadata accessor for FocusStoreLocation(), (v14 = swift_dynamicCastClass()) != 0))
      {
        v12 = v14;
      }

      else
      {
        type metadata accessor for FocusStoreLocation();
        type metadata accessor for GraphHost();
        v15 = MEMORY[0x18D00B7D0]();
        v12 = specialized FocusStoreLocation.__allocating_init(host:resetValue:)(v15, v10 + *(v13 + 40));
      }

      v26[1] = v12;
    }

    Value = AGGraphGetValue();
    v26 = v17;
    v18 = Value[1];
    v19 = Value[2];
    v12[2] = *Value;
    v12[3] = v18;
    v12[4] = v19;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    FocusState.Box.focusedItem.getter(v9, v29);
    if (v30 == 1 && v31 == 1)
    {
      outlined destroy of FocusItem??(v29);
      v20 = 0;
    }

    else
    {
      outlined init with take of FocusItem?(v29, v32);
      if (v33 || v34 != 1)
      {
        v20 = v35;
        outlined destroy of FocusItem(v32);
      }

      else
      {
        outlined destroy of FocusItem?(v32, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720]);
        v20 = 0;
      }
    }

    *(v12 + *(*v12 + class metadata base offset for FocusStoreLocation + 40)) = v20;
    v21 = FocusStoreLocation.update()(v7);
    (*(v28 + 24))(v10, v7, v4);
    v22 = *(type metadata accessor for FocusState() + 36);

    *(v10 + v22) = v12;
    if (v26)
    {
      swift_weakInit();
      specialized closure #1 in FocusState.Box.update(property:phase:)();
      swift_weakDestroy();
    }

    (*(v28 + 8))(v7, v4);

    v8 = v27;
    if (v21)
    {
      v23 = v25 == 0;
      v8 = v23 | FocusStoreLocation.wasRead.getter();
    }
  }

  return v8 & 1;
}

uint64_t type metadata completion function for FocusStoreLocation()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getTupleTypeMetadata2();
    result = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      type metadata accessor for FocusStore.Entry();
      result = type metadata accessor for Optional();
      if (v3 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t type metadata completion function for FocusStore.Entry()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FocusStore.Entry.Target();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for FocusStore.Entry.Target()
{
  type metadata accessor for Binding<SearchFieldState>(319);
  if (v0 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
  }
}

uint64_t specialized FocusStoreLocation.init(host:resetValue:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = MEMORY[0x1E69E7CC0];
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v2 + 2) = 0;
  *(v2 + 3) = v5;
  *(v2 + 4) = v6;
  swift_weakInit();
  *&v2[*(*v2 + class metadata base offset for FocusStoreLocation + 40)] = 0;
  v7 = *(*v2 + class metadata base offset for FocusStoreLocation + 48);
  v8 = *(v4 + class metadata base offset for FocusStoreLocation);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  (*(*(TupleTypeMetadata2 - 8) + 56))(&v2[v7], 1, 1, TupleTypeMetadata2);
  v10 = *(*v2 + class metadata base offset for FocusStoreLocation + 56);
  v11 = type metadata accessor for FocusStore.Entry();
  (*(*(v11 - 8) + 56))(&v2[v10], 1, 1, v11);
  *&v2[*(*v2 + class metadata base offset for FocusStoreLocation + 64)] = 0;
  v2[*(*v2 + class metadata base offset for FocusStoreLocation + 72)] = 0;
  swift_weakAssign();
  v12 = (*(*(v8 - 8) + 16))(&v2[*(*v2 + class metadata base offset for FocusStoreLocation + 32)], a2, v8);

  return MEMORY[0x1EEDDD3A8](v12);
}

void storeEnumTagSinglePayload for FocusStore.Entry(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v26 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for AttributedString() - 8);
  v12 = *(v11 + 80);
  v13 = *(v11 + 64);
  v14 = 16;
  if (((v12 & 0xFC ^ 0x1FCu) & (v12 + 16)) + ((((v12 + 9) & ~v12) + v13) & 0xFFFFFFFFFFFFFFFCLL) + 9 > 0x10)
  {
    v14 = ((v12 & 0xFC ^ 0x1FCu) & (v12 + 16)) + ((((v12 + 9) & ~v12) + v13) & 0xFFFFFFFFFFFFFFFCLL) + 9;
  }

  v15 = *(v8 + 64);
  v16 = v14 + ((v12 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & (v12 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8)) + 1;
  if (a3 <= v10)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v10 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v10 < a2)
  {
    v18 = ~v10 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_49:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_49;
            }
          }

          goto LABEL_46;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_49;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_49;
      }
    }

LABEL_46:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v9 < 0x7FFFFFFF)
  {
    v24 = (&a1[v15 + 7] & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v25 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v25 = (a2 - 1);
    }

    *v24 = v25;
  }

  else
  {
    v23 = *(v26 + 56);

    v23(a1, a2, v9, v7);
  }
}

void FocusState.Box.focusedItem.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a1))
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 40) = vdupq_n_s64(1uLL);
    *(a2 + 56) = 0;
  }

  else
  {
    v3 = MEMORY[0x1E69E6720];
    type metadata accessor for FocusItem?(0, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720]);
    Value = AGGraphGetValue();
    outlined init with copy of FocusItem?(Value, a2, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, v3);
  }
}

uint64_t outlined init with copy of FocusItem?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  type metadata accessor for FocusItem?(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t _s7SwiftUI9FocusItemVSgWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_3(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of FocusItem?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  type metadata accessor for FocusItem?(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t _s7SwiftUI9FocusItemVSgWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI9FocusItemVSgWOhTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t _s7SwiftUI9FocusItemVSgWOhTm_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

BOOL FocusStoreLocation.update()(char *a1)
{
  v21 = a1;
  v2 = *(*v1 + class metadata base offset for FocusStoreLocation);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v13 = *(v12 + 56);
  swift_beginAccess();
  v14 = class metadata base offset for FocusStoreLocation;
  v15 = type metadata accessor for FocusStore.Entry();
  if ((*(*(v15 - 8) + 48))(&v1[v13], 1, v15))
  {
    v16 = *(*v1 + v14 + 32);
    v17 = *(v3 + 16);
    v17(v11, &v1[v16], v2);
  }

  else
  {
    v17 = *(v3 + 16);
    v17(v8, &v1[v13], v2);
    (*(v3 + 32))(v11, v8, v2);
  }

  FocusStoreLocation.getValue(forReading:)(0, v5);
  v17(v21, v5, v2);
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v3 + 8);
  v19(v5, v2);
  v19(v11, v2);
  return (v18 & 1) == 0;
}

uint64_t getEnumTagSinglePayload for FocusStore.Entry(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(type metadata accessor for AttributedString() - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  if (((v10 & 0xFC ^ 0x1FCu) & (v10 + 16)) + ((((v10 + 9) & ~v10) + v11) & 0xFFFFFFFFFFFFFFFCLL) + 9 <= 0x10)
  {
    v12 = 16;
  }

  else
  {
    v12 = ((v10 & 0xFC ^ 0x1FCu) & (v10 + 16)) + ((((v10 + 9) & ~v10) + v11) & 0xFFFFFFFFFFFFFFFCLL) + 9;
  }

  v13 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_29;
  }

  v14 = v12 + ((v10 + ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & (v10 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8)) + 1;
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v8 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v18 < 2)
    {
LABEL_29:
      if (v7 < 0x7FFFFFFF)
      {
        v21 = *((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
        if (v21 >= 0xFFFFFFFF)
        {
          LODWORD(v21) = -1;
        }

        return (v21 + 1);
      }

      else
      {
        v20 = *(v6 + 48);

        return v20(a1, v7, v5);
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_29;
  }

LABEL_18:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 > 3)
    {
      LODWORD(v14) = 4;
    }

    if (v14 > 2)
    {
      if (v14 == 3)
      {
        LODWORD(v14) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v14) = *a1;
      }
    }

    else if (v14 == 1)
    {
      LODWORD(v14) = *a1;
    }

    else
    {
      LODWORD(v14) = *a1;
    }
  }

  return v8 + (v14 | v19) + 1;
}

uint64_t FocusStoreLocation.getValue(forReading:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v4 = a1;
  v28 = a2;
  v26 = *(*(*v2 + class metadata base offset for FocusStoreLocation) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v24 = &v23 - v5;
  v27 = v6;
  v7 = type metadata accessor for FocusStore.Entry();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v25 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  type metadata accessor for GraphHost();
  if (static GraphHost.isUpdating.getter() & 1) != 0 && (v4)
  {
    v2[*(*v2 + class metadata base offset for FocusStoreLocation + 72)] = 1;
  }

  v14 = *(*v2 + class metadata base offset for FocusStoreLocation + 56);
  swift_beginAccess();
  (*(v9 + 16))(v13, &v2[v14], v8);
  v15 = *(*(v7 - 8) + 48);
  v16 = v15(v13, 1, v7);
  (*(v9 + 8))(v13, v8);
  if (v16 == 1 || *(v3 + 2) != *&v3[*(*v3 + class metadata base offset for FocusStoreLocation + 64)])
  {
    v17 = v25;
    FocusStoreLocation.findFocusedEntry()(v25);
    swift_beginAccess();
    (*(v9 + 40))(&v3[v14], v17, v8);
    swift_endAccess();
    *&v3[*(*v3 + class metadata base offset for FocusStoreLocation + 64)] = *(v3 + 2);
  }

  if (v15(&v3[v14], 1, v7))
  {
    return (*(v26 + 16))(v28, &v3[*(*v3 + class metadata base offset for FocusStoreLocation + 32)], v27);
  }

  v20 = v26;
  v19 = v27;
  v21 = &v3[v14];
  v22 = v24;
  (*(v26 + 16))(v24, v21, v27);
  return (*(v20 + 32))(v28, v22, v19);
}

uint64_t FocusStoreLocation.findFocusedEntry()@<X0>(uint64_t a1@<X8>)
{
  if (*(*(v1 + 32) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v1), (v3 & 1) != 0))
  {
    v4 = type metadata accessor for FocusStore.Entry();
    (*(*(v4 - 8) + 56))(a1, 1, 1, v4);
    v5 = type metadata accessor for FocusStore.Key();
    MEMORY[0x1EEE9AC00](v5);

    swift_getWitnessTable();
    PropertyList.forEach<A>(keyType:_:)();
  }

  else
  {
    v7 = type metadata accessor for FocusStore.Entry();
    v8 = *(*(v7 - 8) + 56);

    return v8(a1, 1, 1, v7);
  }
}

Swift::Void __swiftcall FocusStoreLocation.performDeferredUpdate()()
{
  v1 = (*v0 + class metadata base offset for FocusStoreLocation);
  v2 = *v1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v22 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v21 = v2;
  v10 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  v14 = v1[6];
  swift_beginAccess();
  (*(v5 + 16))(v9, &v0[v14], v4);
  v15 = *(TupleTypeMetadata2 - 8);
  if ((*(v15 + 48))(v9, 1, TupleTypeMetadata2) == 1)
  {
    (*(v5 + 8))(v9, v4);
  }

  else
  {
    v16 = *&v9[*(TupleTypeMetadata2 + 48)];
    v17 = v9;
    v18 = v21;
    (*(v10 + 32))(v13, v17, v21);
    if (v16)
    {
      v19 = v16 == *&v0[*(*v0 + class metadata base offset for FocusStoreLocation + 40)];
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      static Transaction.current.getter();
      specialized FocusStoreLocation.set(_:transaction:)(v13);

      (*(v10 + 8))(v13, v18);
      return;
    }

    (*(v10 + 8))(v13, v18);
  }

  v20 = v22;
  (*(v15 + 56))(v22, 1, 1, TupleTypeMetadata2);
  swift_beginAccess();
  (*(v5 + 40))(&v0[v14], v20, v4);
  swift_endAccess();
}

uint64_t specialized closure #1 in FocusState.Box.update(property:phase:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    FocusStoreLocation.performDeferredUpdate()();
  }

  return result;
}

uint64_t FocusState.projectedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Binding();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - v8;
  v10 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v19 - v15;
  FocusState.getValue(forReading:)(0, a1, &v19 - v15);
  if (*(v2 + *(a1 + 36)))
  {
    (*(v10 + 16))(v13, v16, v5);

    Binding.init(value:location:)();
  }

  else
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    static Binding.constant(_:)();
  }

  (*(v10 + 8))(v16, v5);
  return (*(v7 + 32))(a2, v9, v6);
}

uint64_t FocusState.getValue(forReading:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!*(v3 + *(a2 + 36)))
  {
LABEL_6:
    v7 = *(*(*(a2 + 16) - 8) + 16);

    return v7(a3, v3);
  }

  type metadata accessor for GraphHost();

  if (static GraphHost.isUpdating.getter())
  {
    if (a1)
    {
      dispatch thunk of AnyLocation.wasRead.setter();
    }

    goto LABEL_6;
  }

  dispatch thunk of AnyLocation.get()();
}

void type metadata accessor for [Scrollable]()
{
  if (!lazy cache variable for type metadata for [Scrollable])
  {
    type metadata accessor for CVarArg(255, &lazy cache variable for type metadata for Scrollable);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [Scrollable]);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ScrollablePreferenceProvider and conformance ScrollablePreferenceProvider()
{
  result = lazy protocol witness table cache variable for type ScrollablePreferenceProvider and conformance ScrollablePreferenceProvider;
  if (!lazy protocol witness table cache variable for type ScrollablePreferenceProvider and conformance ScrollablePreferenceProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollablePreferenceProvider and conformance ScrollablePreferenceProvider);
  }

  return result;
}

uint64_t ModifiedContent<>.accessibilityHint(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  type metadata accessor for _ContiguousArrayStorage<Text>();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_18CD63400;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *(v12 + 48) = a3 & 1;
  *(v12 + 56) = a4;
  v14 = v12;
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  ModifiedContent<>.update<A>(_:replacing:isEnabled:)(MEMORY[0x1E6980100], &v14, 1, a5, a6);
}

void type metadata accessor for _ContiguousArrayStorage<Text>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Text>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>);
    }
  }
}

double one-time initialization function for bottomBar()
{
  static ToolbarItemPlacement.bottomBar = 13;
  result = 0.0;
  unk_1EAA05FC8 = 0u;
  unk_1EAA05FD8 = 0u;
  byte_1EAA05FE8 = 2;
  return result;
}

uint64_t ToolbarItemGroup.init(placement:isEmpty:content:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  outlined init with copy of ToolbarItemPlacement(a1, a4);
  *(a4 + *(type metadata accessor for ToolbarItemGroup() + 40)) = a2;
  a3();

  return outlined destroy of ToolbarItemPlacement(a1);
}

uint64_t ToolbarItemGroup.init(placement:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  outlined init with copy of ToolbarItemPlacement(a1, v7);
  ToolbarItemGroup.init(placement:isEmpty:content:)(v7, 0, a2, a3);
  return outlined destroy of ToolbarItemPlacement(a1);
}