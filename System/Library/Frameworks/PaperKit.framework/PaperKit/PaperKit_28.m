Swift::Bool __swiftcall ReflowLayoutManager.canPasteAtSpaceAdjustment()()
{
  swift_beginAccess();
  v1 = *(v0 + 176);
  v8[0] = *(v0 + 160);
  v8[1] = v1;
  v9[0] = *(v0 + 192);
  *(v9 + 11) = *(v0 + 203);
  if (!*&v8[0])
  {
    return 1;
  }

  v2 = *(*&v8[0] + 120);
  if ((v2 & 0x8000000000000000) != 0)
  {
    return 1;
  }

  result = swift_beginAccess();
  v4 = *(v0 + 88);
  if (v2 >= *(v4 + 16))
  {
    __break(1u);
  }

  else
  {
    v5 = vsubq_f64(*(v4 + 168 * v2 + 88), *(v4 + 168 * v2 + 72));
    v6 = sqrt(vaddvq_f64(vmulq_f64(v5, v5)));
    v7 = atan2(v5.f64[1] / v6, v5.f64[0] / v6);

    outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd);
    return fabs(v7) <= 0.2;
  }

  return result;
}

id ReflowLayoutManager.TextPosition.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReflowLayoutManager.TextPosition();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ReflowLayoutManager.closestPosition(to:)(double a1, double a2)
{
  v6 = v2;
  swift_beginAccess();

  v10 = specialized ReflowLayoutManager.closestLine(to:lines:)(v9, a1, a2);
  v12 = v11;

  result = 0;
  if (v12)
  {
    return result;
  }

  if (v10 < 0)
  {
    goto LABEL_41;
  }

  v14 = *(v6 + 96);
  if (*(v14 + 16) < v10)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v4 = v46;
  v15 = (v14 + 32);
  v12 = v10 + 1;
  do
  {
    if (!--v12)
    {
      v18 = *(v6 + 96);
      if (v10 >= *(v18 + 16))
      {
        goto LABEL_43;
      }

      v3 = *(v18 + 168 * v10 + 32);
      if (v3 >> 62)
      {
        goto LABEL_44;
      }

      v19 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
        goto LABEL_15;
      }

      goto LABEL_27;
    }

    if (*v15 >> 62)
    {
      v16 = __CocoaSet.count.getter();
    }

    else
    {
      v16 = *((*v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 += 21;
    v17 = __OFADD__(v5, v16);
    v5 += v16;
  }

  while (!v17);
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v19 = __CocoaSet.count.getter();
    if (!v19)
    {
      break;
    }

LABEL_15:

    i = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1DA6CE0C0](i, v3);
      }

      else
      {
        if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v12 = *(v3 + 8 * i + 32);
      }

      if (CGRectGetMaxX(*(v12 + 48)) <= a1)
      {
      }

      else
      {
        v4 = (*(*v12 + 144))();

        if ((v4 & 1) == 0)
        {

          v4 = v46;
          goto LABEL_30;
        }
      }

      v21 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      ++i;
      if (v21 == v19)
      {

        v4 = v46;
        goto LABEL_27;
      }
    }
  }

LABEL_27:
  v22 = *(v6 + 96);
  if (v10 >= *(v22 + 16))
  {
    goto LABEL_69;
  }

  v23 = *(v22 + 168 * v10 + 32);
  if (v23 >> 62)
  {
    goto LABEL_70;
  }

  for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
LABEL_30:
    v24 = *(v6 + 96);
    if (v10 >= *(v24 + 16))
    {
      __break(1u);
    }

    else
    {
      v25 = *(v24 + 168 * v10 + 32);
      if (!(v25 >> 62))
      {
        result = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (i >= result)
        {
          goto LABEL_48;
        }

        goto LABEL_33;
      }
    }

    result = __CocoaSet.count.getter();
    if (i >= result)
    {
LABEL_48:
      v41 = *(v6 + 96);
      if (v10 < *(v41 + 16))
      {
        v6 = *(v41 + 168 * v10 + 32);
        if (v6 >> 62)
        {
          i = __CocoaSet.count.getter();
        }

        else
        {
          i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v4 = v6 + 32;
        while (1)
        {
          if (!i)
          {
LABEL_61:

            v12 = 1;
            goto LABEL_62;
          }

          v17 = __OFSUB__(i--, 1);
          if (v17)
          {
            break;
          }

          if ((v6 & 0xC000000000000001) != 0)
          {
            v42 = MEMORY[0x1DA6CE0C0](i, v6);
            v12 = v42;
          }

          else
          {
            if ((i & 0x8000000000000000) != 0)
            {
              goto LABEL_66;
            }

            if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_67;
            }

            v12 = *(v4 + 8 * i);
          }

          v10 = (*(*v12 + 144))(v42);

          if ((v10 & 1) == 0)
          {
            goto LABEL_61;
          }
        }

        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      goto LABEL_72;
    }

LABEL_33:
    v26 = *(v6 + 96);
    if (v10 >= *(v26 + 16))
    {
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v27 = v26 + 168 * v10;
    v28 = *(v27 + 32);
    v29 = *(v27 + 64);
    *(v4 + 16) = *(v27 + 48);
    *(v4 + 32) = v29;
    *v4 = v28;
    v30 = *(v27 + 80);
    v31 = *(v27 + 96);
    v32 = *(v27 + 128);
    *(v4 + 80) = *(v27 + 112);
    *(v4 + 96) = v32;
    *(v4 + 48) = v30;
    *(v4 + 64) = v31;
    v33 = *(v27 + 144);
    v34 = *(v27 + 160);
    v35 = *(v27 + 176);
    v46[20] = *(v27 + 192);
    *(v4 + 128) = v34;
    *(v4 + 144) = v35;
    *(v4 + 112) = v33;
    v12 = v46[0];
    if ((v46[0] & 0xC000000000000001) == 0)
    {
      break;
    }

LABEL_73:
    outlined init with copy of ReflowTextLine(v46, v45);
    v36 = MEMORY[0x1DA6CE0C0](i, v12);
    outlined destroy of ReflowTextLine(v46);
LABEL_38:
    v37 = v36[6];
    v38 = v36[7];
    v39 = v36[8];
    v40 = v36[9];

    v48.origin.x = v37;
    v48.origin.y = v38;
    v48.size.width = v39;
    v48.size.height = v40;
    v12 = CGRectGetMidX(v48) <= a1;
LABEL_62:
    v6 = v5 + i;
    if (!__OFADD__(v5, i))
    {
      v43 = type metadata accessor for ReflowLayoutManager.TextPosition();
      v44 = objc_allocWithZone(v43);
      *&v44[OBJC_IVAR____TtCC8PaperKit19ReflowLayoutManager12TextPosition_index] = v6;
      v44[OBJC_IVAR____TtCC8PaperKit19ReflowLayoutManager12TextPosition_affinity] = v12;
      v47.receiver = v44;
      v47.super_class = v43;
      return objc_msgSendSuper2(&v47, sel_init);
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    ;
  }

  if ((i & 0x8000000000000000) == 0)
  {
    if (i >= *((v46[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_76;
    }

    v36 = *(v46[0] + 8 * i + 32);

    goto LABEL_38;
  }

  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}

unint64_t specialized BidirectionalCollection.lastIndex(where:)(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_18:
    v12 = a3;
    v13 = __CocoaSet.count.getter();
    a3 = v12;
    v5 = v13;
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = a3 & 0xC000000000000001;
  v14 = a3;
  v7 = a3 + 32;
  do
  {
    v8 = v5;
    if (!v5)
    {
      break;
    }

    --v5;
    if (__OFSUB__(v8, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (v6)
    {
      v9 = MEMORY[0x1DA6CE0C0](v8 - 1, v14);
    }

    else
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        goto LABEL_16;
      }

      if (v5 >= *(v4 + 16))
      {
        goto LABEL_17;
      }

      v9 = *(v7 + 8 * v5);
    }

    v16 = v9;
    v10 = a1(&v16);
  }

  while (!v3 && (v10 & 1) == 0);
  return v5;
}

void ReflowLayoutManager.caretRect(for:)(uint64_t a1)
{
  v4 = *(a1 + OBJC_IVAR____TtCC8PaperKit19ReflowLayoutManager12TextPosition_index);
  swift_beginAccess();
  v5 = *(v1 + 96);
  v6 = (v5 + 32);
  v7 = -*(v5 + 16);
  v8 = -1;
  while (1)
  {
    if (v7 + v8 == -1)
    {
      v19 = *(v1 + 96);
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = v19 + 168 * v20;
        v22 = *(v21 - 136);
        v23 = *(v21 - 104);
        v50[1] = *(v21 - 120);
        v51 = v23;
        v50[0] = v22;
        v24 = *(v21 - 88);
        v25 = *(v21 - 72);
        v26 = *(v21 - 40);
        v54 = *(v21 - 56);
        v55 = v26;
        v52 = v24;
        v53 = v25;
        v27 = *(v21 - 24);
        v28 = *(v21 - 8);
        v29 = *(v21 + 8);
        v59 = *(v21 + 24);
        v57 = v28;
        v58 = v29;
        v56 = v27;
        v4 = *&v50[0];
        if (!(*&v50[0] >> 62))
        {
          v30 = *((*&v50[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v30)
          {
LABEL_36:
            ReflowTextLine.caretRect(at:)(__PAIR128__(v52, *(&v51 + 1)));
            return;
          }

LABEL_14:
          v31 = v30 - 1;
          if (__OFSUB__(v30, 1))
          {
            __break(1u);
          }

          else if ((v4 & 0xC000000000000001) == 0)
          {
            if ((v31 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v31 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v32 = *(v4 + 8 * v31 + 32);
              outlined init with copy of ReflowTextLine(v50, v49);

LABEL_19:
              v33 = v32[6];
              v34 = v32[7];
              v35 = v32[8];
              v36 = v32[9];
              v62.origin.x = v33;
              v62.origin.y = v34;
              v62.size.width = v35;
              v62.size.height = v36;
              MaxX = CGRectGetMaxX(v62);
              v63.origin.x = v33;
              v63.origin.y = v34;
              v63.size.width = v35;
              v63.size.height = v36;
              MaxY = CGRectGetMaxY(v63);

              ReflowTextLine.caretRect(at:)(__PAIR128__(*&MaxY, *&MaxX));
              outlined destroy of ReflowTextLine(v50);
              return;
            }

            __break(1u);
            goto LABEL_41;
          }

          outlined init with copy of ReflowTextLine(v50, v49);
          v32 = MEMORY[0x1DA6CE0C0](v31, v4);
          goto LABEL_19;
        }

LABEL_35:
        v30 = __CocoaSet.count.getter();
        if (!v30)
        {
          goto LABEL_36;
        }

        goto LABEL_14;
      }

LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (++v8 >= *(v5 + 16))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v9 = *v6;
    v10 = v6[2];
    v60[1] = v6[1];
    v60[2] = v10;
    v60[0] = v9;
    v11 = v6[3];
    v12 = v6[4];
    v13 = v6[6];
    v60[5] = v6[5];
    v60[6] = v13;
    v60[3] = v11;
    v60[4] = v12;
    v14 = v6[7];
    v15 = v6[8];
    v16 = v6[9];
    v61 = *(v6 + 20);
    v60[8] = v15;
    v60[9] = v16;
    v60[7] = v14;
    v2 = *&v60[0];
    if (!(*&v60[0] >> 62))
    {
      v17 = *((*&v60[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4 < v17)
      {
        break;
      }

      goto LABEL_6;
    }

    if (v4 < __CocoaSet.count.getter())
    {
      break;
    }

    v17 = __CocoaSet.count.getter();
LABEL_6:
    v6 = (v6 + 168);
    v18 = __OFSUB__(v4, v17);
    v4 -= v17;
    if (v18)
    {
      goto LABEL_33;
    }
  }

  outlined init with copy of ReflowTextLine(v60, v50);
  v39 = v2 & 0xC000000000000001;
  if ((*(a1 + OBJC_IVAR____TtCC8PaperKit19ReflowLayoutManager12TextPosition_affinity) & 1) == 0)
  {
    if (v39)
    {
      v46 = MEMORY[0x1DA6CE0C0](v4, v2);
    }

    else
    {
      if (v4 < 0)
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }
    }

    v41 = v46[6];
    v42 = v46[7];
    v43 = v46[8];
    v44 = v46[9];

    v65.origin.x = v41;
    v65.origin.y = v42;
    v65.size.width = v43;
    v65.size.height = v44;
    MinX = CGRectGetMinX(v65);
LABEL_31:
    v47 = MinX;
    v66.origin.x = v41;
    v66.origin.y = v42;
    v66.size.width = v43;
    v66.size.height = v44;
    *&v48 = CGRectGetMaxY(v66);
    ReflowTextLine.caretRect(at:)(__PAIR128__(v48, *&v47));
    outlined destroy of ReflowTextLine(v60);
    return;
  }

  if (v39)
  {
LABEL_41:
    v40 = MEMORY[0x1DA6CE0C0](v4, v2);
LABEL_25:
    v41 = v40[6];
    v42 = v40[7];
    v43 = v40[8];
    v44 = v40[9];

    v64.origin.x = v41;
    v64.origin.y = v42;
    v64.size.width = v43;
    v64.size.height = v44;
    MinX = CGRectGetMaxX(v64);
    goto LABEL_31;
  }

  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_44;
  }

  if (v4 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_25;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

void ReflowLayoutManager.caretRect(for:point:)(uint64_t a1, double a2, double a3)
{
  v5 = round(*(a1 + 80));
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = v5;
  if ((v5 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    v9 = *(v3 + 96);
    if (*(v9 + 16) > v8)
    {
      v10 = v9 + 168 * v8;
      v40 = *(v10 + 144);
      v41 = *(v10 + 160);
      v42 = *(v10 + 176);
      v43 = *(v10 + 192);
      v36 = *(v10 + 80);
      v37 = *(v10 + 96);
      v38 = *(v10 + 112);
      v39 = *(v10 + 128);
      v33 = *(v10 + 32);
      v34 = *(v10 + 48);
      v35 = *(v10 + 64);
LABEL_14:
      ReflowTextLine.caretRect(at:)(__PAIR128__(*&a3, *&a2));
      return;
    }
  }

  swift_beginAccess();
  v29 = v3;
  v11 = *(v3 + 96);
  v12 = *(v11 + 16);

  if (v12)
  {
    v14 = 0;
    v15 = 32;
    while (v14 < *(v11 + 16))
    {
      v16 = *(v11 + v15);
      v17 = *(v11 + v15 + 32);
      v34 = *(v11 + v15 + 16);
      v35 = v17;
      v33 = v16;
      v18 = *(v11 + v15 + 48);
      v19 = *(v11 + v15 + 64);
      v20 = *(v11 + v15 + 96);
      v38 = *(v11 + v15 + 80);
      v39 = v20;
      v36 = v18;
      v37 = v19;
      v21 = *(v11 + v15 + 112);
      v22 = *(v11 + v15 + 128);
      v23 = *(v11 + v15 + 144);
      v43 = *(v11 + v15 + 160);
      v41 = v22;
      v42 = v23;
      v40 = v21;
      v24 = v33;
      v30 = a1;
      MEMORY[0x1EEE9AC00](v13);
      v28[2] = &v30;
      outlined init with copy of ReflowTextLine(&v33, v31);
      if (specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v28, v24))
      {

        ReflowTextLine.caretRect(at:)(__PAIR128__(*&a3, *&a2));
        outlined destroy of ReflowTextLine(&v33);
        return;
      }

      ++v14;
      v13 = outlined destroy of ReflowTextLine(&v33);
      v15 += 168;
      if (v12 == v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_12:

  v25 = *(v29 + 96);
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = v25 + 168 * v26;
    v31[7] = *(v27 - 24);
    v31[8] = *(v27 - 8);
    v31[9] = *(v27 + 8);
    v32 = *(v27 + 24);
    v31[3] = *(v27 - 88);
    v31[4] = *(v27 - 72);
    v31[5] = *(v27 - 56);
    v31[6] = *(v27 - 40);
    v31[0] = *(v27 - 136);
    v31[1] = *(v27 - 120);
    v31[2] = *(v27 - 104);
    goto LABEL_14;
  }

LABEL_20:
  __break(1u);
}

id ReflowLayoutManager.textSize(for:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v120 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v126 = &v120 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v127 = &v120 - v14;
  swift_beginAccess();
  v123 = v2;
  v15 = *(v2 + 96);
  v16 = *(v15 + 16);
  if (!v16)
  {
LABEL_113:
    v92 = [objc_allocWithZone(MEMORY[0x1E6997BD8]) initWithXHeight:7 ascenderHeight:14.0 descenderHeight:25.2 activeLines:21.0];
    goto LABEL_114;
  }

  v121 = v7;
  v122 = v10;
  v125 = a1;
  v17 = (v15 + 32);

  a1 = 0;
  v124 = (v15 + 32);
LABEL_3:
  v18 = &v17[168 * a1];
  v19 = *v18;
  v20 = *(v18 + 2);
  v132 = *(v18 + 1);
  v133 = v20;
  v131 = v19;
  v21 = *(v18 + 3);
  v22 = *(v18 + 4);
  v23 = *(v18 + 6);
  v136 = *(v18 + 5);
  v137 = v23;
  v134 = v21;
  v135 = v22;
  v24 = *(v18 + 7);
  v25 = *(v18 + 8);
  v26 = *(v18 + 9);
  v141 = *(v18 + 20);
  v139 = v25;
  v140 = v26;
  v138 = v24;
  v27 = v131;
  v128 = v131 >> 62;
  v129 = v131 & 0xFFFFFFFFFFFFFF8;
  if (v131 >> 62)
  {
    v28 = __CocoaSet.count.getter();
  }

  else
  {
    v28 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  ++a1;
  outlined init with copy of ReflowTextLine(&v131, v130);
  v29 = v27 & 0xC000000000000001;

  v30 = 0;
  v31 = 1;
  while (1)
  {
    if (v28 == v30)
    {

      outlined destroy of ReflowTextLine(&v131);
      if (a1 != v16)
      {
        v17 = v124;
        if (a1 < *(v15 + 16))
        {
          goto LABEL_3;
        }

        goto LABEL_126;
      }

      v93 = *(v123 + 96);
      v94 = *(v93 + 16);
      a1 = v125;
      if (!v94)
      {
        goto LABEL_113;
      }

      v95 = v93 + 168 * v94;
      v96 = *(v95 - 136);
      v97 = *(v95 - 104);
      v132 = *(v95 - 120);
      v133 = v97;
      v131 = v96;
      v98 = *(v95 - 88);
      v99 = *(v95 - 72);
      v100 = *(v95 - 40);
      v136 = *(v95 - 56);
      v137 = v100;
      v134 = v98;
      v135 = v99;
      v101 = *(v95 - 24);
      v102 = *(v95 - 8);
      v103 = *(v95 + 8);
      v141 = *(v95 + 24);
      v139 = v102;
      v140 = v103;
      v138 = v101;
      a2 = v131;
      v143 = MEMORY[0x1E69E7CC0];
      v33 = v131 & 0xFFFFFFFFFFFFFF8;
      if (!(v131 >> 62))
      {
        v104 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_97;
      }

LABEL_139:
      v104 = __CocoaSet.count.getter();
LABEL_97:
      outlined init with copy of ReflowTextLine(&v131, v130);
      if (v104)
      {
        v105 = 0;
        v106 = MEMORY[0x1E69E7CC0];
        do
        {
          v107 = v105;
          while (1)
          {
            if ((a2 & 0xC000000000000001) != 0)
            {
              MEMORY[0x1DA6CE0C0](v107, a2);
              v105 = v107 + 1;
              if (__OFADD__(v107, 1))
              {
                goto LABEL_137;
              }
            }

            else
            {
              if (v107 >= *(v33 + 16))
              {
                goto LABEL_138;
              }

              v105 = v107 + 1;
              if (__OFADD__(v107, 1))
              {
                goto LABEL_137;
              }
            }

            type metadata accessor for ReflowWord();
            v108 = swift_dynamicCastClass();
            if (v108)
            {
              break;
            }

            ++v107;
            if (v105 == v104)
            {
              goto LABEL_121;
            }
          }

          v109 = v108;
          v110 = objc_opt_self();
          v111 = *(v109 + 336);
          v112 = *(v109 + 280);
          v113 = v111;
          [v112 _canvasBounds];
          v114 = [v110 scaledSize:v113 scale:CGRectGetHeight(v145)];

          MEMORY[0x1DA6CD190]();
          if (*((v143 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v143 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v106 = v143;
          a1 = v125;
        }

        while (v105 != v104);
        goto LABEL_121;
      }

LABEL_120:
      v106 = MEMORY[0x1E69E7CC0];
LABEL_121:
      if (v106 >> 62)
      {
        if (__CocoaSet.count.getter())
        {
          goto LABEL_123;
        }
      }

      else if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_123:
        v116 = objc_opt_self();
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for CHTextSize);
        isa = Array._bridgeToObjectiveC()().super.isa;

        v92 = [v116 averageTextSize_];
        outlined destroy of ReflowTextLine(&v131);

        goto LABEL_114;
      }

      v92 = [objc_allocWithZone(MEMORY[0x1E6997BD8]) initWithXHeight:7 ascenderHeight:14.0 descenderHeight:25.2 activeLines:21.0];
      outlined destroy of ReflowTextLine(&v131);
LABEL_114:
      v115 = type metadata accessor for PKDrawing();
      (*(*(v115 - 8) + 56))(a1, 1, 1, v115);
      return v92;
    }

    if (!v29)
    {
      if (v30 < *(v129 + 16))
      {
        if (*(v27 + 8 * v30 + 32) == a2)
        {
          break;
        }

        goto LABEL_10;
      }

      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

    v120 = MEMORY[0x1DA6CE0C0](v30, v27);
    swift_unknownObjectRelease();
    if (v120 == a2)
    {
      break;
    }

LABEL_10:
    v31 += 2;
    v32 = __OFADD__(v30++, 1);
    if (v32)
    {
      goto LABEL_116;
    }
  }

  v33 = v128;
  if (!v128)
  {
    v34 = *(v129 + 16);
    goto LABEL_23;
  }

  if (__CocoaSet.count.getter() < 0)
  {
    goto LABEL_133;
  }

  v34 = __CocoaSet.count.getter();
LABEL_23:
  if (v34 < v30)
  {
    goto LABEL_127;
  }

  if (!v29 || !v30)
  {

    if (!v33)
    {
      goto LABEL_29;
    }

    goto LABEL_31;
  }

  type metadata accessor for ReflowElement();

  v35 = 0;
  do
  {
    v36 = v35 + 1;
    _ArrayBuffer._typeCheckSlowPath(_:)(v35);
    v35 = v36;
  }

  while (v30 != v36);
  if (v33)
  {
LABEL_31:

    v38 = _CocoaArrayWrapper.subscript.getter();
    v39 = v40;
    v37 = v41;
    v31 = v42;
    goto LABEL_32;
  }

LABEL_29:
  v37 = 0;
  v38 = v129;
  v39 = v129 + 32;
LABEL_32:
  v130[0] = v38;
  v130[1] = v39;
  a1 = v31 >> 1;
  v130[2] = v37;
  v130[3] = v31;
  while (v37 != a1)
  {
    v32 = __OFSUB__(a1--, 1);
    if (v32)
    {
      goto LABEL_118;
    }

    if (a1 < v37)
    {
      goto LABEL_119;
    }

    type metadata accessor for ReflowWord();
    v43 = swift_dynamicCastClass();
    if (v43)
    {
      MEMORY[0x1EEE9AC00](v43);
      *(&v120 - 2) = v130;
      v142 = a1;
      partial apply for specialized closure #1 in BidirectionalCollection.last(where:)(&v142, &v143);
      v120 = 0;
      v44 = v143;
      goto LABEL_39;
    }
  }

  v44 = 0;
  v120 = 0;
LABEL_39:
  swift_unknownObjectRelease();
  if (!v44)
  {
    goto LABEL_44;
  }

  type metadata accessor for ReflowWord();
  v45 = swift_dynamicCastClass();
  if (!v45)
  {

    goto LABEL_44;
  }

  v46 = *(v45 + 280);

  v47 = type metadata accessor for PKDrawing();
  v48 = *(v47 - 8);
  v49 = v33;
  v50 = v122;
  v124 = *(v48 + 56);
  (v124)(v122, 1, 1, v47);
  _s8PaperKit15PKDrawingStructVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type PKDrawing and conformance PKDrawing, MEMORY[0x1E69783E0]);
  dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();

  v51 = v50;
  v33 = v49;
  if ((*(v48 + 48))(v51, 1, v47) == 1)
  {
LABEL_44:
    v57 = type metadata accessor for PKDrawing();
    a2 = *(v57 - 8);
    a1 = a2 + 56;
    v123 = *(a2 + 56);
    (v123)(v126, 1, 1, v57);
    if (!v33)
    {
      v58 = *(v129 + 16);
      if (v58 >= v30)
      {
        goto LABEL_50;
      }

      __break(1u);
    }

    v59 = __CocoaSet.count.getter();
    if (v59 < v30)
    {
      goto LABEL_134;
    }

    v58 = v59;
    if (__CocoaSet.count.getter() < v30)
    {
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }

    if (__CocoaSet.count.getter() >= v58)
    {
LABEL_50:
      v124 = (a2 + 56);
      if (!v29 || v58 == v30)
      {

        if (!v33)
        {
LABEL_56:
          v62 = v129 + 32;
          goto LABEL_59;
        }

LABEL_58:

        _CocoaArrayWrapper.subscript.getter();
        v30 = v63;
        v58 = v64 >> 1;
LABEL_59:
        if (v30 <= v58)
        {
          v65 = v58;
        }

        else
        {
          v65 = v30;
        }

        v66 = v65 - v30;
        v67 = v62 + 8 * v30;
        v68 = v58 - v30;
        while (1)
        {
          if (!v68)
          {
            swift_unknownObjectRelease();
            (v123)(v127, 1, 1, v57);
            v74 = *(a2 + 48);
            goto LABEL_70;
          }

          if (!v66)
          {
            break;
          }

          v67 += 8;
          type metadata accessor for ReflowWord();
          v69 = swift_dynamicCastClass();
          --v66;
          --v68;
          if (v69)
          {
            v70 = v69;

            swift_unknownObjectRelease();
            v71 = *(v70 + 280);

            v72 = v121;
            v73 = v123;
            (v123)(v121, 1, 1, v57);
            _s8PaperKit15PKDrawingStructVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type PKDrawing and conformance PKDrawing, MEMORY[0x1E69783E0]);
            dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();

            v74 = *(a2 + 48);
            if (v74(v72, 1, v57) == 1)
            {
              v73(v127, 1, 1, v57);
            }

            else
            {
              v75 = v127;
              (*(a2 + 32))(v127, v72, v57);
              v73(v75, 0, 1, v57);
            }

LABEL_70:
            v76 = v126;
            v56 = v128;
            if (v74(v126, 1, v57) != 1)
            {
              outlined destroy of StocksKitCurrencyCache.Provider?(v76, &_s9PencilKit9PKDrawingVSgMd);
            }

            goto LABEL_72;
          }
        }

        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
        goto LABEL_128;
      }

      if (v30 < v58)
      {
        type metadata accessor for ReflowElement();

        v60 = v30;
        do
        {
          v61 = v60 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v60);
          v60 = v61;
        }

        while (v58 != v61);
        if (!v33)
        {
          goto LABEL_56;
        }

        goto LABEL_58;
      }

      goto LABEL_136;
    }

    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v52 = *(v48 + 32);
  v53 = v126;
  v52(v126, v122, v47);
  v54 = v124;
  (v124)(v53, 0, 1, v47);
  v55 = v127;
  v52(v127, v53, v47);
  v56 = v128;
  (v54)(v55, 0, 1, v47);
LABEL_72:
  v130[0] = MEMORY[0x1E69E7CC0];
  if (v56)
  {
    a1 = __CocoaSet.count.getter();
    if (a1)
    {
      goto LABEL_74;
    }

    goto LABEL_90;
  }

  a1 = *(v129 + 16);
  if (!a1)
  {
LABEL_90:
    v78 = MEMORY[0x1E69E7CC0];
    goto LABEL_91;
  }

LABEL_74:
  v77 = 0;
  v78 = MEMORY[0x1E69E7CC0];
  v79 = 0x1E6997000uLL;
  do
  {
    v80 = v77;
    while (1)
    {
      if (v29)
      {
        MEMORY[0x1DA6CE0C0](v80, v27);
        v77 = v80 + 1;
        if (__OFADD__(v80, 1))
        {
          goto LABEL_117;
        }
      }

      else
      {
        if (v80 >= *(v129 + 16))
        {
          goto LABEL_125;
        }

        v77 = v80 + 1;
        if (__OFADD__(v80, 1))
        {
          goto LABEL_117;
        }
      }

      type metadata accessor for ReflowWord();
      v81 = swift_dynamicCastClass();
      if (v81)
      {
        break;
      }

      ++v80;
      if (v77 == a1)
      {
        goto LABEL_91;
      }
    }

    v82 = v79;
    v83 = v81;
    v84 = objc_opt_self();
    v85 = *(v83 + 336);
    v86 = *(v83 + 280);
    v87 = v85;
    [v86 _canvasBounds];
    v88 = [v84 scaledSize:v87 scale:CGRectGetHeight(v144)];

    MEMORY[0x1DA6CD190]();
    if (*((v130[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v130[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v78 = v130[0];
    v79 = v82;
  }

  while (v77 != a1);
LABEL_91:
  if (!(v78 >> 62))
  {
    v89 = v125;
    if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_93;
    }

LABEL_129:

    v92 = [objc_allocWithZone(MEMORY[0x1E6997BD8]) initWithXHeight:7 ascenderHeight:14.0 descenderHeight:25.2 activeLines:21.0];
    outlined destroy of ReflowTextLine(&v131);
    goto LABEL_130;
  }

LABEL_128:
  v118 = __CocoaSet.count.getter();
  v89 = v125;
  if (!v118)
  {
    goto LABEL_129;
  }

LABEL_93:
  v90 = objc_opt_self();
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for CHTextSize);
  v91 = Array._bridgeToObjectiveC()().super.isa;

  v92 = [v90 averageTextSize_];
  outlined destroy of ReflowTextLine(&v131);

LABEL_130:
  outlined init with take of PKDrawing?(v127, v89);
  return v92;
}

id ReflowLayoutManager.textSize(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v53 = &v52 - v3;
  v60 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v5 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v52 - v8;
  v9 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v70 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for PKStroke();
  v11 = *(v69 - 1);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v13 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v15 = &v52 - v14;
  v16 = *(a1 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v54 = v5;
    v71 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
    v17 = v71;
    v19 = *(v11 + 16);
    v18 = v11 + 16;
    v20 = a1 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v64 = (v18 - 8);
    v65 = v19;
    v21 = *(v18 + 56);
    v62 = (v13 + 32);
    v63 = v21;
    v66 = v18;
    v61 = v13;
    do
    {
      v22 = v67;
      v23 = v69;
      v65(v67, v20, v69);
      isa = PKStroke._bridgeToObjectiveC()().super.isa;
      v25 = [(objc_class *)isa _strokeUUID];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<TaggedStroke> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
      WeakRef.init(id:)();
      (*v64)(v22, v23);
      v71 = v17;
      v27 = *(v17 + 16);
      v26 = *(v17 + 24);
      if (v27 >= v26 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26 > 1, v27 + 1, 1);
        v17 = v71;
      }

      *(v17 + 16) = v27 + 1;
      (*(v61 + 32))(v17 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v27, v15, v68);
      v20 += v63;
      --v16;
    }

    while (v16);
    v5 = v54;
  }

  v65 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence7WeakRefVyAD10CRRegisterVy8PaperKit12TaggedStrokeOGG_SayAMGTt0g5Tf4g_n(v17);

  v28 = v55;
  swift_beginAccess();
  v29 = *(v28 + 80);
  if (v29 >> 62)
  {
LABEL_24:
    v30 = __CocoaSet.count.getter();
  }

  else
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v30)
  {
    v31 = 0;
    v32 = 0;
    v66 = v29 & 0xFFFFFFFFFFFFFF8;
    v67 = (v29 & 0xC000000000000001);
    v62 = (v5 + 8);
    v63 = (v5 + 16);
    v64 = v29;
    v61 = v30;
    v33 = v58;
    v34 = v59;
    do
    {
      if (v67)
      {
        v35 = MEMORY[0x1DA6CE0C0](v31, v29);
        v36 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
LABEL_20:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v31 >= *(v66 + 16))
        {
          __break(1u);
          goto LABEL_24;
        }

        v35 = *(v29 + 8 * v31 + 32);

        v36 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_20;
        }
      }

      type metadata accessor for ReflowWord();
      v37 = swift_dynamicCastClass();
      if (v37)
      {
        v68 = v36;
        v38 = *(v37 + 280);
        v70 = v32;
        v39 = OBJC_IVAR___PKDrawingCoherence_model;
        v40 = v37;
        swift_beginAccess();
        v41 = *v63;
        v42 = v38 + v39;
        v43 = v56;
        (*v63)(v56, v42, v33);

        Capsule.root.getter();
        v69 = *v62;
        (v69)(v43, v33);
        v44 = *(v40 + 280);
        v45 = OBJC_IVAR___PKDrawingCoherence_model;
        swift_beginAccess();
        v46 = v44 + v45;
        v47 = v57;
        v48 = (v41)(v57, v46, v33);
        MEMORY[0x1EEE9AC00](v48);
        *(&v52 - 2) = v65;
        *(&v52 - 1) = v47;
        v32 = v70;
        v5 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in PKDrawingStruct.containsStrokes<A>(_:in:), (&v52 - 4));

        _s8PaperKit15PKDrawingStructVWOhTm_1(v34, type metadata accessor for PKDrawingStruct);
        (v69)(v47, v33);
        if (v5)
        {

          v50 = v53;
          v51 = ReflowLayoutManager.textSize(for:)(v53, v35);

          outlined destroy of StocksKitCurrencyCache.Provider?(v50, &_s9PencilKit9PKDrawingVSgMd);
          return v51;
        }

        v29 = v64;
        v30 = v61;
        v36 = v68;
      }

      ++v31;
    }

    while (v36 != v30);
  }

  return [objc_allocWithZone(MEMORY[0x1E6997BD8]) initWithXHeight:7 ascenderHeight:14.0 descenderHeight:25.2 activeLines:21.0];
}

uint64_t ReflowLayoutManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy59_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 43) = *(a2 + 43);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ReflowSpacingAdjustment(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 59))
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

uint64_t storeEnumTagSinglePayload for ReflowSpacingAdjustment(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 58) = 0;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 59) = 1;
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

    *(result + 59) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ReflowLayoutManager.TextPosition.Affinity and conformance ReflowLayoutManager.TextPosition.Affinity()
{
  result = lazy protocol witness table cache variable for type ReflowLayoutManager.TextPosition.Affinity and conformance ReflowLayoutManager.TextPosition.Affinity;
  if (!lazy protocol witness table cache variable for type ReflowLayoutManager.TextPosition.Affinity and conformance ReflowLayoutManager.TextPosition.Affinity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReflowLayoutManager.TextPosition.Affinity and conformance ReflowLayoutManager.TextPosition.Affinity);
  }

  return result;
}

unint64_t specialized Array._checkSubscript(_:wasNativeTypeChecked:)(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void *_sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8PaperKit13ReflowElementCTg5(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 0;
  }

  v6 = a3;
  result = a1(&v7, &v6);
  if (!v4)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t specialized _SliceBuffer.requestNativeBuffer()(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = *(v7 + 16);

  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v8 != (a4 >> 1) - a3)
  {
LABEL_11:
    swift_unknownObjectRelease();
    return 0;
  }

  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t *specialized closure #1 in BidirectionalCollection.last(where:)@<X0>(uint64_t *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = *result;
  if (*result >= a2[2] && v3 < a2[3] >> 1)
  {
    *a3 = *(a2[1] + 8 * v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized ArraySlice.reserveCapacity(_:)(uint64_t result)
{
  v2 = result;
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  *v1 = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = v1[2];
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = v1[1];
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v9 + 16);
  if (v8 + 8 * v6 + 8 * v7 != v9 + 8 * v10 + 32)
  {

    goto LABEL_9;
  }

  v11 = *(v9 + 24);

  v12 = (v11 >> 1) - v10;
  v13 = __OFADD__(v7, v12);
  v7 += v12;
  if (!v13)
  {
LABEL_9:
    if (v7 >= v2)
    {
LABEL_17:
      *v1 = v5;
      return result;
    }

LABEL_10:
    v14 = v1[2];
    if (__OFSUB__(v4, v14))
    {
      __break(1u);
    }

    else
    {
      result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC8PaperKit20AnyCanvasElementViewC_Tt1g5(v4 - v14, v2);
      if (v4 >= v14)
      {
        v5 = result;
        v15 = result + 32;
        type metadata accessor for ReflowElement();
        result = swift_arrayInitWithCopy();
        if (!__OFSUB__(0, v14))
        {
          v16 = *(v5 + 16);
          v13 = __OFADD__(v14, v16);
          v17 = v14 + v16;
          if (!v13)
          {
            if (v17 >= v14)
            {
              if ((v17 & 0x8000000000000000) == 0)
              {
                v18 = (2 * v17) | 1;
                result = swift_unknownObjectRelease();
                v1[1] = v15 - 8 * v14;
                v1[2] = v14;
                v1[3] = v18;
                goto LABEL_17;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

{
  v2 = result;
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  *v1 = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = v1[2];
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = v1[1];
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v9 + 16);
  if (v8 + 168 * v6 + 168 * v7 != v9 + 168 * v10 + 32)
  {

    goto LABEL_9;
  }

  v11 = *(v9 + 24);

  v12 = (v11 >> 1) - v10;
  v13 = __OFADD__(v7, v12);
  v7 += v12;
  if (!v13)
  {
LABEL_9:
    if (v7 >= v2)
    {
LABEL_17:
      *v1 = v5;
      return result;
    }

LABEL_10:
    v14 = v1[2];
    if (__OFSUB__(v4, v14))
    {
      __break(1u);
    }

    else
    {
      result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC8PaperKit14ReflowTextLineV_Tt1g5(v4 - v14, v2);
      if (v4 >= v14)
      {
        v5 = result;
        v15 = result + 32;
        result = swift_arrayInitWithCopy();
        if (!__OFSUB__(0, v14))
        {
          v16 = *(v5 + 16);
          v13 = __OFADD__(v14, v16);
          v17 = v14 + v16;
          if (!v13)
          {
            if (v17 >= v14)
            {
              if ((v17 & 0x8000000000000000) == 0)
              {
                v18 = (2 * v17) | 1;
                result = swift_unknownObjectRelease();
                v1[1] = v15 - 168 * v14;
                v1[2] = v14;
                v1[3] = v18;
                goto LABEL_17;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

int64_t specialized ArraySlice.append<A>(contentsOf:)(int64_t result)
{
  v2 = result;
  if (result >> 62)
  {
    result = __CocoaSet.count.getter();
    v3 = result;
  }

  else
  {
    v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = v1[2];
  v4 = v1[3];
  v6 = (v4 >> 1) - v5;
  if (__OFSUB__(v4 >> 1, v5))
  {
    __break(1u);
    goto LABEL_38;
  }

  if ((v4 & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v1[1];
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    swift_unknownObjectRelease();
    v8 = MEMORY[0x1E69E7CC0];
  }

  v9 = *(v8 + 16);
  if (v7 + 8 * v5 + 8 * v6 != v8 + 8 * v9 + 32)
  {

LABEL_9:
    v10 = v6;
    goto LABEL_11;
  }

  v11 = *(v8 + 24);

  v12 = (v11 >> 1) - v9;
  v13 = __OFADD__(v6, v12);
  v10 = v6 + v12;
  if (v13)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_11:
  result = v6 + v3;
  if (__OFADD__(v6, v3))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v10 < result)
  {
    if (v10 + 0x4000000000000000 < 0)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v14 = 2 * v10;
    if (v14 > result)
    {
      result = v14;
    }
  }

  result = specialized ArraySlice.reserveCapacity(_:)(result);
  v16 = v1[2];
  v15 = v1[3];
  v17 = (v15 >> 1) - v16;
  if (__OFSUB__(v15 >> 1, v16))
  {
    goto LABEL_39;
  }

  v18 = v1[1] + 8 * v16 + 8 * v17;
  if ((v15 & 1) == 0)
  {
LABEL_22:
    v21 = v17;
    goto LABEL_24;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
    v19 = MEMORY[0x1E69E7CC0];
  }

  v20 = *(v19 + 16);
  if (v18 != v19 + 8 * v20 + 32)
  {

    goto LABEL_22;
  }

  v22 = *(v19 + 24);

  v23 = (v22 >> 1) - v20;
  v13 = __OFADD__(v17, v23);
  v21 = v17 + v23;
  if (v13)
  {
LABEL_45:
    __break(1u);
    return result;
  }

LABEL_24:
  v24 = v21 - v17;
  if (__OFSUB__(v21, v17))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  result = specialized Array._copyContents(initializing:)(v18, v21 - v17, v2);
  if (v26 < v3)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v27 = v25;
  v28 = v26;
  if (v26 <= 0)
  {
    goto LABEL_29;
  }

  if (__OFADD__(v17, v26))
  {
    goto LABEL_42;
  }

  v29 = result;
  specialized _SliceBuffer.count.setter(v17 + v26);
  result = v29;
LABEL_29:
  if (v28 == v24)
  {

    return specialized _ArrayBufferProtocol._arrayAppendSequence<A>(_:)(result, v27);
  }

  else
  {
  }
}

uint64_t specialized ArraySlice.append<A>(contentsOf:)(uint64_t result)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = (v2 >> 1) - v3;
  if (__OFSUB__(v2 >> 1, v3))
  {
    __break(1u);
    goto LABEL_38;
  }

  v5 = result;
  v6 = *(result + 16);
  if ((v2 & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = v1[1];
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    swift_unknownObjectRelease();
    v8 = MEMORY[0x1E69E7CC0];
  }

  v9 = *(v8 + 16);
  if (v7 + 168 * v3 + 168 * v4 != v8 + 168 * v9 + 32)
  {

LABEL_7:
    v10 = v4;
    goto LABEL_9;
  }

  v11 = *(v8 + 24);

  v12 = (v11 >> 1) - v9;
  v13 = __OFADD__(v4, v12);
  v10 = v4 + v12;
  if (v13)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_9:
  result = v4 + v6;
  if (__OFADD__(v4, v6))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v10 < result)
  {
    if (v10 + 0x4000000000000000 < 0)
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v14 = 2 * v10;
    if (v14 > result)
    {
      result = v14;
    }
  }

  result = specialized ArraySlice.reserveCapacity(_:)(result);
  v16 = v1[2];
  v15 = v1[3];
  v17 = (v15 >> 1) - v16;
  if (__OFSUB__(v15 >> 1, v16))
  {
    goto LABEL_39;
  }

  v18 = v1[1] + 168 * v16 + 168 * v17;
  if ((v15 & 1) == 0)
  {
LABEL_20:
    v21 = v17;
    goto LABEL_22;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
    v19 = MEMORY[0x1E69E7CC0];
  }

  v20 = *(v19 + 16);
  if (v18 != v19 + 168 * v20 + 32)
  {

    goto LABEL_20;
  }

  v22 = *(v19 + 24);

  v23 = (v22 >> 1) - v20;
  v13 = __OFADD__(v17, v23);
  v21 = v17 + v23;
  if (v13)
  {
LABEL_46:
    __break(1u);
    return result;
  }

LABEL_22:
  v24 = v21 - v17;
  if (__OFSUB__(v21, v17))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v25 = *(v5 + 16);
  if (v25)
  {
    if (v24 >= v6)
    {
      swift_arrayInitWithCopy();
      if (v6 <= 0)
      {
        goto LABEL_30;
      }

      result = v17 + v6;
      if (!__OFADD__(v17, v6))
      {
        specialized _SliceBuffer.count.setter(result);
        goto LABEL_30;
      }

      goto LABEL_44;
    }

    goto LABEL_42;
  }

  if (v6 > 0)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v6 = 0;
LABEL_30:
  if (v6 == v24)
  {

    return specialized _ArrayBufferProtocol._arrayAppendSequence<A>(_:)(v5, v25);
  }

  else
  {
  }
}

uint64_t specialized _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v5 = v4[2];
  v6 = v4[3] >> 1;
  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
    goto LABEL_29;
  }

  v9 = *result;
  v10 = *(*result + 16);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  if (v11)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v13 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v14 = v7 - a2;
  if (__OFSUB__(v7, a2))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = __OFSUB__(v14, v13);
  v15 = v14 - v13;
  if (v11)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v32 = v15;
  v17 = (v9 + 32);
  v18 = v9 + 32 + 8 * a2;
  v30 = v13;
  v31 = (v18 + 8 * a3);
  result = specialized _SliceBuffer.requestUniqueMutableBackingBuffer(minimumCapacity:)(v7);
  v34 = v9 + 32;
  if (result)
  {
    v19 = result;
    v29 = v9;
    v20 = v4[2];
    v21 = (v4[1] + 8 * v20);
    v22 = &v21[8 * a2];
    type metadata accessor for ReflowElement();
    swift_arrayDestroy();
    if (v17 != v21 || v17 >= v22)
    {
      memmove(v17, v21, 8 * a2);
    }

    swift_arrayDestroy();
    a4(v18, a3);
    v23 = &v22[8 * v32];
    if (v31 != v23 || v31 >= &v23[8 * v30])
    {
      memmove(v31, v23, 8 * v30);
    }

    swift_arrayDestroy();
    *(v19 + 16) = 0;

    v9 = v29;
  }

  else
  {
    v20 = v4[2];
    v24 = v20 + a2;
    if (__OFADD__(v20, a2))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v24 < v20)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (__OFSUB__(v24, v20))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    type metadata accessor for ReflowElement();
    swift_arrayInitWithCopy();
    result = (a4)(v34 + 8 * a2, a3);
    v25 = v24 + v32;
    if (__OFADD__(v24, v32))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v26 = v4[3] >> 1;
    if (v26 < v25)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (__OFSUB__(v26, v25))
    {
LABEL_42:
      __break(1u);
      return result;
    }

    swift_arrayInitWithCopy();
  }

  result = swift_unknownObjectRelease();
  if (__OFSUB__(0, v20))
  {
    goto LABEL_33;
  }

  v27 = *(v9 + 16);
  v11 = __OFADD__(v20, v27);
  v28 = v20 + v27;
  if (v11)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v28 < v20)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v28 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *v4 = v9;
  v4[1] = v34 - 8 * v20;
  v4[2] = v20;
  v4[3] = (2 * v28) | 1;
}

{
  v5 = v4[2];
  v6 = v4[3] >> 1;
  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
    goto LABEL_32;
  }

  v9 = *result;
  v10 = *(*result + 16);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  if (v11)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v13 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v14 = v7 - a2;
  if (__OFSUB__(v7, a2))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v11 = __OFSUB__(v14, v13);
  v15 = v14 - v13;
  if (v11)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v33 = v13;
  v34 = v15;
  v17 = (v9 + 32);
  v18 = v9 + 32 + 168 * a2;
  v19 = (v18 + 168 * a3);
  result = specialized _SliceBuffer.requestUniqueMutableBackingBuffer(minimumCapacity:)(v7);
  v36 = v9 + 32;
  if (result)
  {
    v20 = result;
    v31 = a4;
    __dst = v19;
    v21 = v4[2];
    v22 = (v4[1] + 168 * v21);
    v23 = &v22[168 * a2];
    swift_arrayDestroy();
    if (v17 != v22 || v17 >= v23)
    {
      memmove(v17, v22, 168 * a2);
    }

    swift_arrayDestroy();
    v31(v18, a3);
    v24 = &v23[168 * v34];
    if (__dst != v24 || __dst >= &v24[168 * v33])
    {
      memmove(__dst, v24, 168 * v33);
    }

    swift_arrayDestroy();
    *(v20 + 16) = 0;
  }

  else
  {
    v21 = v4[2];
    v26 = v21 + a2;
    if (__OFADD__(v21, a2))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v26 < v21)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (__OFSUB__(v26, v21))
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    swift_arrayInitWithCopy();
    result = (a4)(v36 + 168 * a2, a3);
    v27 = v26 + v34;
    if (__OFADD__(v26, v34))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v28 = v4[3] >> 1;
    if (v28 < v27)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (__OFSUB__(v28, v27))
    {
LABEL_45:
      __break(1u);
      return result;
    }

    swift_arrayInitWithCopy();
  }

  result = swift_unknownObjectRelease();
  if (__OFSUB__(0, v21))
  {
    goto LABEL_36;
  }

  v29 = *(v9 + 16);
  v11 = __OFADD__(v21, v29);
  v30 = v21 + v29;
  if (v11)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v30 < v21)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v30 < 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *v4 = v9;
  v4[1] = v36 - 168 * v21;
  v4[2] = v21;
  v4[3] = (2 * v30) | 1;
}

uint64_t specialized _SliceBuffer.count.setter(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = v3 >> 1;
  v5 = __OFSUB__(v3 >> 1, v2);
  v6 = (v3 >> 1) - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result - v6;
  if (__OFSUB__(result, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return result;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x1E69E7CC0];
  }

  v8 = *(result + 16);
  v5 = __OFADD__(v8, v7);
  v9 = v8 + v7;
  if (v5)
  {
    goto LABEL_13;
  }

  *(result + 16) = v9;

  v10 = v4 + v7;
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  *(v1 + 24) = v3 & 1 | (2 * v10);
  return result;
}

uint64_t specialized _ArrayBufferProtocol._arrayAppendSequence<A>(_:)(unint64_t a1, unint64_t a2)
{
  v5 = v2[2];
  v4 = v2[3];
  v6 = (v4 >> 1) - v5;
  if (__OFSUB__(v4 >> 1, v5))
  {
    goto LABEL_56;
  }

  v3 = a2;
  v34 = a1;
  if (a1 >> 62)
  {
LABEL_57:
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = result;
  if (result != v3)
  {
    if ((v34 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1DA6CE0C0](v3);
      v8 = result;
      v9 = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        goto LABEL_12;
      }
    }

    else
    {
      if ((v3 & 0x8000000000000000) != 0)
      {
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v3)
      {
LABEL_62:
        __break(1u);
        return result;
      }

      v8 = *(v34 + 8 * v3 + 32);

      v9 = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
LABEL_12:
        v31 = v2;
        while (1)
        {
          if (__OFADD__(v6, 1))
          {
            goto LABEL_49;
          }

          v35 = specialized _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(countForNewBuffer:minNewCapacity:)(v6, v6 + 1, *v2, v2[1], v5, v4);
          v10 = specialized default argument 3 of _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)();
          specialized _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(&v35, v6, 0, v10);

          v5 = v2[2];
          v11 = v2[3];
          v3 = v11 >> 1;
          v4 = (v11 >> 1) - v5;
          if (__OFSUB__(v11 >> 1, v5))
          {
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
            goto LABEL_57;
          }

          v32 = v2[3];
          v33 = v6;
          v6 = *v2;
          v12 = v2[1];
          if ((v11 & 1) == 0)
          {
            goto LABEL_21;
          }

          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain();
          v13 = swift_dynamicCastClass();
          if (!v13)
          {
            swift_unknownObjectRelease();
            v13 = MEMORY[0x1E69E7CC0];
          }

          v2 = *(v13 + 16);
          if (v12 + 8 * v5 + 8 * v4 != v13 + 8 * v2 + 32)
          {
            break;
          }

          v16 = *(v13 + 24);

          v17 = (v16 >> 1) - v2;
          v18 = __OFADD__(v4, v17);
          v14 = v4 + v17;
          v15 = v33;
          if (v18)
          {
            goto LABEL_55;
          }

LABEL_23:
          v6 = v15 - v14;
          if (v15 < v14)
          {
            v29 = v3;
            v19 = v5;
            v5 = 0;
            v2 = (v28 - v9);
            v3 = v34 + 32 + 8 * v9;
            v30 = v19;
            v20 = v12 + 8 * v15 + 8 * v19;
            while (1)
            {
              *(v20 + 8 * v5) = v8;
              if (v2 == v5)
              {
                break;
              }

              v21 = v9 + v5;
              if ((v34 & 0xC000000000000001) != 0)
              {
                v8 = MEMORY[0x1DA6CE0C0](v9 + v5, v34);
                v22 = v21 + 1;
                if (__OFADD__(v21, 1))
                {
                  goto LABEL_46;
                }
              }

              else
              {
                if ((v21 & 0x8000000000000000) != 0)
                {
                  goto LABEL_47;
                }

                if (v21 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_48;
                }

                v8 = *(v3 + 8 * v5);

                v22 = v21 + 1;
                if (__OFADD__(v21, 1))
                {
LABEL_46:
                  __break(1u);
LABEL_47:
                  __break(1u);
LABEL_48:
                  __break(1u);
LABEL_49:
                  __break(1u);
                  goto LABEL_50;
                }
              }

              ++v5;
              if (!(v6 + v5))
              {
                v9 = v22;
                v6 = v14;
LABEL_37:
                v3 = v29;
                v5 = v30;
                goto LABEL_38;
              }
            }

            v8 = 0;
            v6 = v33 + v5 + 1;
            v9 = v28;
            goto LABEL_37;
          }

          v6 = v15;
LABEL_38:
          v18 = __OFSUB__(v6, v4);
          v23 = v6 - v4;
          v2 = v31;
          v4 = v32;
          if (v18)
          {
            goto LABEL_51;
          }

          if (v23)
          {
            type metadata accessor for __ContiguousArrayStorageBase();
            swift_unknownObjectRetain();
            v24 = swift_dynamicCastClass();
            if (!v24)
            {
              swift_unknownObjectRelease();
              v24 = MEMORY[0x1E69E7CC0];
            }

            v25 = *(v24 + 16);
            v18 = __OFADD__(v25, v23);
            v26 = v25 + v23;
            if (v18)
            {
              goto LABEL_52;
            }

            *(v24 + 16) = v26;

            v27 = v3 + v23;
            if (__OFADD__(v3, v23))
            {
              goto LABEL_53;
            }

            if ((v27 & 0x8000000000000000) != 0)
            {
              goto LABEL_54;
            }

            v4 = v32 & 1 | (2 * v27);
            v31[3] = v4;
          }

          if (!v8)
          {
            goto LABEL_5;
          }
        }

LABEL_21:
        v14 = (v11 >> 1) - v5;
        v15 = v33;
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_61;
  }

LABEL_5:
}

uint64_t specialized _ArrayBufferProtocol._arrayAppendSequence<A>(_:)(uint64_t result, unint64_t a2)
{
  v3 = v2[3];
  v58 = v2[2];
  v4 = (v3 >> 1) - v58;
  if (__OFSUB__(v3 >> 1, v58))
  {
    goto LABEL_53;
  }

  v5 = a2;
  v6 = *(result + 16);
  v53 = result;
  if (v6 == a2)
  {
    _s8PaperKit14ReflowTextLineVSgWOi0_(&v98);
    v116 = v105;
    v117 = v106;
    v118 = v107;
    v112 = v101;
    v113 = v102;
    v114 = v103;
    v115 = v104;
    v109 = v98;
    v110 = v99;
    v119 = v108;
    v111 = v100;
  }

  else
  {
    if (v6 <= a2)
    {
      goto LABEL_54;
    }

    v7 = result + 168 * a2;
    v8 = *(v7 + 144);
    v9 = *(v7 + 176);
    v106 = *(v7 + 160);
    v107 = v9;
    v10 = *(v7 + 80);
    v11 = *(v7 + 112);
    v102 = *(v7 + 96);
    v103 = v11;
    v12 = *(v7 + 112);
    v13 = *(v7 + 144);
    v104 = *(v7 + 128);
    v105 = v13;
    v14 = *(v7 + 48);
    v98 = *(v7 + 32);
    v99 = v14;
    v15 = *(v7 + 80);
    v17 = *(v7 + 32);
    v16 = *(v7 + 48);
    v100 = *(v7 + 64);
    v101 = v15;
    v116 = v8;
    v117 = v106;
    v118 = *(v7 + 176);
    v112 = v10;
    v113 = v102;
    v114 = v12;
    v115 = v104;
    v109 = v17;
    v110 = v16;
    v108 = *(v7 + 192);
    v119 = *(v7 + 192);
    v5 = a2 + 1;
    v111 = v100;
    UnknownCanvasElementView.flags.modify(&v109, a2);
    outlined init with copy of ReflowTextLine(&v98, &v87);
  }

  v106 = v117;
  v107 = v118;
  v108 = v119;
  v102 = v113;
  v103 = v114;
  v104 = v115;
  v105 = v116;
  v98 = v109;
  v99 = v110;
  v100 = v111;
  v101 = v112;
  result = sub_1D38E1F74(&v98);
  if (result == 1)
  {
LABEL_7:

    v95 = v117;
    v96 = v118;
    v97 = v119;
    v91 = v113;
    v92 = v114;
    v93 = v115;
    v94 = v116;
    v87 = v109;
    v88 = v110;
    v89 = v111;
    v90 = v112;
    return outlined destroy of StocksKitCurrencyCache.Provider?(&v87, &_s8PaperKit14ReflowTextLineVSgMd);
  }

  v18 = v3;
  while (!__OFADD__(v4, 1))
  {
    v56 = v5;
    v86 = specialized _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(countForNewBuffer:minNewCapacity:)(v4, v4 + 1, *v2, v2[1], v58, v18);
    v19 = specialized default argument 3 of _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)();
    specialized _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(&v86, v4, 0, v19);

    v20 = v2[3];
    v58 = v2[2];
    v21 = (v20 >> 1) - v58;
    if (__OFSUB__(v20 >> 1, v58))
    {
      goto LABEL_46;
    }

    v22 = v2[1];
    v57 = v2[3];
    v55 = v20 >> 1;
    if ((v20 & 1) == 0)
    {
      goto LABEL_18;
    }

    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain();
    v23 = swift_dynamicCastClass();
    if (!v23)
    {
      swift_unknownObjectRelease();
      v23 = MEMORY[0x1E69E7CC0];
    }

    v24 = *(v23 + 16);
    if (v22 + 168 * v58 + 168 * v21 != v23 + 168 * v24 + 32)
    {

LABEL_18:
      v25 = v21;
      goto LABEL_20;
    }

    v26 = *(v23 + 24);

    v27 = (v26 >> 1) - v24;
    v25 = v21 + v27;
    if (__OFADD__(v21, v27))
    {
      goto LABEL_52;
    }

LABEL_20:
    v85 = v119;
    v83 = v117;
    v84 = v118;
    v79 = v113;
    v80 = v114;
    v81 = v115;
    v82 = v116;
    v75 = v109;
    v76 = v110;
    v77 = v111;
    v78 = v112;
    v95 = v117;
    v96 = v118;
    v97 = v119;
    v91 = v113;
    v92 = v114;
    v93 = v115;
    v94 = v116;
    v87 = v109;
    v88 = v110;
    v89 = v111;
    v90 = v112;
    result = sub_1D38E1F74(&v87);
    if (result == 1 || v4 >= v25)
    {
      v5 = v56;
    }

    else
    {
      v28 = v22 + 168 * v58;
      v5 = v56;
      v54 = v28;
      while (2)
      {
        v29 = v28 + 168 * v4;
        v30 = v4 + 1;
        while (1)
        {
          v4 = v30;
          v71[8] = v117;
          v71[9] = v118;
          v72 = v119;
          v71[4] = v113;
          v71[5] = v114;
          v71[6] = v115;
          v71[7] = v116;
          v71[0] = v109;
          v71[1] = v110;
          v71[2] = v111;
          v71[3] = v112;
          v73[8] = v83;
          v73[9] = v84;
          v74 = v85;
          v73[4] = v79;
          v73[5] = v80;
          v73[6] = v81;
          v73[7] = v82;
          v73[0] = v75;
          v73[1] = v76;
          v73[2] = v77;
          v73[3] = v78;
          outlined init with copy of ReflowTextLine(v73, &v60);
          result = outlined destroy of StocksKitCurrencyCache.Provider?(v71, &_s8PaperKit14ReflowTextLineVSgMd);
          v32 = v84;
          *(v29 + 128) = v83;
          *(v29 + 144) = v32;
          *(v29 + 160) = v85;
          v33 = v80;
          *(v29 + 64) = v79;
          *(v29 + 80) = v33;
          v34 = v82;
          *(v29 + 96) = v81;
          *(v29 + 112) = v34;
          v35 = v76;
          *v29 = v75;
          *(v29 + 16) = v35;
          v36 = v78;
          *(v29 + 32) = v77;
          *(v29 + 48) = v36;
          if (v5 != v6)
          {
            break;
          }

          _s8PaperKit14ReflowTextLineVSgWOi0_(&v60);
          v119 = v70;
          v85 = v70;
          v116 = v67;
          v117 = v68;
          v118 = v69;
          v113 = v64;
          v114 = v65;
          v115 = v66;
          v109 = v60;
          v112 = v63;
          v110 = v61;
          v111 = v62;
          v83 = v68;
          v84 = v69;
          v79 = v64;
          v80 = v65;
          v81 = v66;
          v82 = v67;
          v75 = v60;
          v76 = v61;
          v77 = v62;
          v78 = v63;
          v95 = v68;
          v96 = v69;
          v97 = v70;
          v91 = v64;
          v92 = v65;
          v93 = v66;
          v94 = v67;
          v87 = v60;
          v88 = v61;
          v89 = v62;
          v90 = v63;
          result = sub_1D38E1F74(&v87);
          if (result != 1)
          {
            v29 += 168;
            v30 = v4 + 1;
            if (v4 < v25)
            {
              continue;
            }
          }

          v5 = v6;
          v48 = __OFSUB__(v4, v21);
          v49 = v4 - v21;
          if (v48)
          {
            goto LABEL_47;
          }

          goto LABEL_38;
        }

        if ((v56 & 0x8000000000000000) != 0)
        {
          goto LABEL_50;
        }

        if (v5 >= *(v53 + 16))
        {
          goto LABEL_51;
        }

        v37 = v53 + 32 + 168 * v5;
        v38 = *(v37 + 112);
        v39 = *(v37 + 144);
        v68 = *(v37 + 128);
        v69 = v39;
        v40 = *(v37 + 48);
        v41 = *(v37 + 80);
        v64 = *(v37 + 64);
        v65 = v41;
        v42 = *(v37 + 80);
        v43 = *(v37 + 112);
        v66 = *(v37 + 96);
        v67 = v43;
        v44 = *(v37 + 16);
        v60 = *v37;
        v61 = v44;
        v45 = *(v37 + 48);
        v47 = *v37;
        v46 = *(v37 + 16);
        v62 = *(v37 + 32);
        v63 = v45;
        v116 = v38;
        v117 = v68;
        v118 = *(v37 + 144);
        v112 = v40;
        v113 = v64;
        v114 = v42;
        v115 = v66;
        v109 = v47;
        v110 = v46;
        v70 = *(v37 + 160);
        v119 = *(v37 + 160);
        ++v5;
        v111 = v62;
        UnknownCanvasElementView.flags.modify(&v109, v31);
        outlined init with copy of ReflowTextLine(&v60, v59);
        v85 = v119;
        v83 = v117;
        v84 = v118;
        v79 = v113;
        v80 = v114;
        v81 = v115;
        v82 = v116;
        v75 = v109;
        v76 = v110;
        v77 = v111;
        v78 = v112;
        v95 = v117;
        v96 = v118;
        v97 = v119;
        v91 = v113;
        v92 = v114;
        v93 = v115;
        v94 = v116;
        v87 = v109;
        v88 = v110;
        v89 = v111;
        v90 = v112;
        result = sub_1D38E1F74(&v87);
        if (result != 1)
        {
          v28 = v54;
          if (v4 < v25)
          {
            continue;
          }
        }

        break;
      }
    }

    v48 = __OFSUB__(v4, v21);
    v49 = v4 - v21;
    if (v48)
    {
      goto LABEL_47;
    }

LABEL_38:
    if (v49)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain();
      result = swift_dynamicCastClass();
      if (!result)
      {
        swift_unknownObjectRelease();
        result = MEMORY[0x1E69E7CC0];
      }

      v50 = *(result + 16);
      v48 = __OFADD__(v50, v49);
      v51 = v50 + v49;
      if (v48)
      {
        goto LABEL_48;
      }

      *(result + 16) = v51;

      v52 = v55 + v49;
      if (__OFADD__(v55, v49))
      {
        goto LABEL_49;
      }

      if ((v52 & 0x8000000000000000) != 0)
      {
        __break(1u);
        break;
      }

      v57 = v57 & 1 | (2 * v52);
      v2[3] = v57;
    }

    v106 = v117;
    v107 = v118;
    v108 = v119;
    v102 = v113;
    v103 = v114;
    v104 = v115;
    v105 = v116;
    v98 = v109;
    v99 = v110;
    v100 = v111;
    v101 = v112;
    result = sub_1D38E1F74(&v98);
    v18 = v57;
    if (result == 1)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

uint64_t specialized _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(countForNewBuffer:minNewCapacity:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v11 + 16);
  v13 = a4 + 8 * a5 + 8 * v8;
  if (v13 == v11 + 8 * v12 + 32)
  {
    v15 = *(v11 + 24);

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = MEMORY[0x1E69E7CC0];
    }

    v18 = *(v17 + 16);
    if (v13 == v17 + 8 * v18 + 32)
    {
      v20 = *(v17 + 24);

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x1E69E7CC0];
  }

  v19 = *(v17 + 16);
  if (v13 == v17 + 8 * v19 + 32)
  {
    v23 = *(v17 + 24);

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return result;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  return _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC8PaperKit20AnyCanvasElementViewC_Tt1g5(v6, v25);
}

void *specialized _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(countForNewBuffer:minNewCapacity:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v11 + 16);
  v13 = a4 + 168 * a5 + 168 * v8;
  if (v13 == v11 + 168 * v12 + 32)
  {
    v15 = *(v11 + 24);

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = MEMORY[0x1E69E7CC0];
    }

    v18 = *(v17 + 16);
    if (v13 == v17 + 168 * v18 + 32)
    {
      v20 = *(v17 + 24);

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x1E69E7CC0];
  }

  v19 = *(v17 + 16);
  if (v13 == v17 + 168 * v19 + 32)
  {
    v23 = *(v17 + 24);

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return result;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  return _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC8PaperKit14ReflowTextLineV_Tt1g5(v6, v25);
}

uint64_t specialized _SliceBuffer.requestUniqueMutableBackingBuffer(minimumCapacity:)(uint64_t a1)
{
  result = swift_isUniquelyReferenced_nonNull();
  if (!result)
  {
    return 0;
  }

  v6 = v1[2];
  v5 = v1[3];
  v7 = (v5 >> 1) - v6;
  if (__OFSUB__(v5 >> 1, v6))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = v1[1] + 8 * v6;
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v9 + 16);
  if (v8 + 8 * v7 != v9 + 8 * v10 + 32)
  {

LABEL_8:
    v11 = v7;
    goto LABEL_10;
  }

  v12 = *(v9 + 24);

  v13 = (v12 >> 1) - v10;
  v14 = __OFADD__(v7, v13);
  v11 = v7 + v13;
  if (v14)
  {
    __break(1u);
    return result;
  }

LABEL_10:
  if (v11 < a1)
  {
    return 0;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x1E69E7CC0];
  }

  v15 = v8 - result - 25;
  if (v8 - result - 32 >= 0)
  {
    v15 = v8 - result - 32;
  }

  v14 = __OFADD__(v7, v15 >> 3);
  v5 = v7 + (v15 >> 3);
  if (v14)
  {
    goto LABEL_20;
  }

  v4 = *(result + 16);
  if (v5 < v4)
  {
LABEL_21:
    v16 = result;
    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v5, v4, 0);
    return v16;
  }

  return result;
}

{
  result = swift_isUniquelyReferenced_nonNull();
  if (!result)
  {
    return 0;
  }

  v6 = v1[2];
  v5 = v1[3];
  v7 = (v5 >> 1) - v6;
  if (__OFSUB__(v5 >> 1, v6))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v1[1];
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v9 + 16);
  if (v8 + 168 * v6 + 168 * v7 != v9 + 168 * v10 + 32)
  {

LABEL_8:
    v11 = v7;
    goto LABEL_10;
  }

  v12 = *(v9 + 24);

  v13 = (v12 >> 1) - v10;
  v14 = __OFADD__(v7, v13);
  v11 = v7 + v13;
  if (v14)
  {
    __break(1u);
    return result;
  }

LABEL_10:
  if (v11 < a1)
  {
    return 0;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x1E69E7CC0];
  }

  v15 = (v8 + 168 * v6 - result - 32) / 168;
  v14 = __OFADD__(v7, v15);
  v5 = v7 + v15;
  if (v14)
  {
    goto LABEL_18;
  }

  v4 = *(result + 16);
  if (v5 < v4)
  {
LABEL_19:
    v16 = result;
    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v5, v4, 0);
    return v16;
  }

  return result;
}

unint64_t specialized closure #1 in BidirectionalCollection.last(where:)@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1DA6CE0C0](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

void specialized ReflowLayoutManager.init(contents:frame:addSpaces:)(unint64_t a1, char a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v9 = MEMORY[0x1E69E7CC0];
  *(v6 + 80) = MEMORY[0x1E69E7CC0];
  v10 = v6 + 80;
  v11 = *(MEMORY[0x1E695F050] + 16);
  *(v10 + 40) = *MEMORY[0x1E695F050];
  *(v10 + 8) = v9;
  *(v10 + 16) = v9;
  *(v10 + 24) = v9;
  *(v10 + 32) = 100;
  *(v10 + 56) = v11;
  *(v10 + 72) = v9;
  *(v10 + 80) = 0u;
  *(v10 + 96) = 0u;
  *(v10 + 112) = 0u;
  *(v10 + 123) = 0u;
  *(v10 + 139) = 1;
  *(v10 + 144) = 0;
  *(v10 - 32) = a3;
  *(v10 - 24) = a4;
  *(v10 - 16) = a5;
  *(v10 - 8) = a6;
  *(v10 - 64) = a3;
  *(v10 - 56) = a4;
  *(v10 - 48) = a5;
  *(v10 - 40) = a6;
  if (a2)
  {
    v12 = specialized Sequence.flatMap<A>(_:)(a1);
    swift_beginAccess();
    *v10 = v12;
  }

  else
  {
    swift_beginAccess();
    *v10 = a1;
  }

  v50 = v9;
  if (a1 >> 62)
  {
LABEL_55:
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v49 = a1 & 0xC000000000000001;
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v15 = 0;
    while (2)
    {
      v16 = v15;
      while (1)
      {
        if (v49)
        {
          MEMORY[0x1DA6CE0C0](v16, a1);
          v15 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_52;
          }
        }

        else
        {
          if (v16 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_53;
          }

          v15 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
            goto LABEL_55;
          }
        }

        type metadata accessor for ReflowWord();
        if (swift_dynamicCastClass())
        {
          break;
        }

        ++v16;
        if (v15 == v13)
        {
          goto LABEL_21;
        }
      }

      MEMORY[0x1DA6CD190]();
      if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v14 = v50;
      if (v15 != v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:
  if (v14 >> 62)
  {
    v17 = __CocoaSet.count.getter();
  }

  else
  {
    v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = 0.0;
  v19 = 0.0;
  if (!v17)
  {
    goto LABEL_36;
  }

  v45 = v7;
  v20 = 0;
  v7 = v14 & 0xFFFFFFFFFFFFFF8;
  v21 = 0.0;
  while ((v14 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x1DA6CE0C0](v20, v14);
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_34;
    }

LABEL_28:
    v24 = (*(v22 + 256) + *(v22 + 272)) * 0.5 - (*(v22 + 224) + *(v22 + 240)) * 0.5;
    [*(v22 + 280) _canvasBounds];
    Height = CGRectGetHeight(v51);

    if (v21 <= v24 * Height)
    {
      v21 = v24 * Height;
    }

    ++v20;
    if (v23 == v17)
    {
      goto LABEL_35;
    }
  }

  if (v20 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_54;
  }

  v22 = *(v14 + 8 * v20 + 32);

  v23 = v20 + 1;
  if (!__OFADD__(v20, 1))
  {
    goto LABEL_28;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  v19 = v21 * 1.2;
  v7 = v45;
LABEL_36:
  v26 = (a1 + 32);

  v29 = UnknownCanvasElementView.flags.modify(v27, v28);
  v31 = v29;
  v32 = v30;
  if (!v13)
  {
    v37 = v29;
    v38 = v30;
    goto LABEL_44;
  }

  if (v49)
  {
    MEMORY[0x1DA6CE0C0](0, a1);
    goto LABEL_40;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_59;
  }

LABEL_40:
  type metadata accessor for ReflowWord();
  v33 = swift_dynamicCastClass();
  if (v33)
  {
    v34 = (*(v33 + 256) + *(v33 + 272)) * 0.5 - (*(v33 + 224) + *(v33 + 240)) * 0.5;
    [*(v33 + 280) _canvasBounds];
    v35 = CGRectGetHeight(v52);

    v36 = v34 * v35;
    v18 = v34 * v35 + 0.0;
    v37 = v31 + 0.0;
    v38 = v32 + v36;
  }

  else
  {

    v37 = v31;
    v38 = v32;
  }

LABEL_44:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit14ReflowTextLineVGMd);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1D4058CF0;
  v40 = MEMORY[0x1E69E7CC0];
  *(v39 + 32) = MEMORY[0x1E69E7CC0];
  *(v39 + 40) = 0u;
  *(v39 + 56) = 0u;
  *(v39 + 72) = 0;
  *(v39 + 80) = v18;
  *(v39 + 88) = v37;
  *(v39 + 96) = v38;
  *(v39 + 104) = 0;
  *(v39 + 112) = 0;
  *(v39 + 120) = v31;
  *(v39 + 128) = v32;
  *(v39 + 136) = 0;
  *(v39 + 144) = 0;
  *(v39 + 152) = v31;
  *(v39 + 160) = v32;
  *(v39 + 168) = 0;
  *(v39 + 176) = 0;
  *(v39 + 184) = v19;
  *(v39 + 192) = 0;
  swift_beginAccess();
  *(v7 + 88) = v39;

  *(v7 + 104) = v40;

  if (v13)
  {
    if (v13 >= 1)
    {
      v41.f64[0] = a3;
      v41.f64[1] = a4;
      v48 = v41;
      if (v49)
      {
        for (i = 0; i != v13; ++i)
        {
          v43 = MEMORY[0x1DA6CE0C0](i, a1);
          v43[1] = vsubq_f64(v43[1], v48);
          swift_unknownObjectRelease();
        }
      }

      else
      {
        do
        {
          v44 = *v26++;
          v44[1] = vsubq_f64(v44[1], v41);
          --v13;
        }

        while (v13);
      }

      return;
    }

    __break(1u);
LABEL_59:
    __break(1u);
  }
}

double _s8PaperKit14ReflowTextLineV_ACtSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  a1[19] = 0u;
  a1[20] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double _s8PaperKit14ReflowTextLineVSgWOi0_(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
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

uint64_t specialized ReflowLayoutManager.closestLine(to:lines:)(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v49 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v7 = v49;
  v8 = a1 + 32;
  for (i = v3 - 1; ; --i)
  {
    v10 = *(v8 + 144);
    v46 = *(v8 + 128);
    v47 = v10;
    v48 = *(v8 + 160);
    v11 = *(v8 + 80);
    v42 = *(v8 + 64);
    v43 = v11;
    v12 = *(v8 + 112);
    v44 = *(v8 + 96);
    v45 = v12;
    v13 = *(v8 + 16);
    v39[0] = *v8;
    v39[1] = v13;
    v14 = *(v8 + 48);
    v40 = *(v8 + 32);
    v41 = v14;
    v16 = *(&v46 + 1);
    v15 = *&v47;
    v17 = *(&v40 + 1);
    v19 = v14;
    v18 = *&v42;
    outlined init with copy of ReflowTextLine(v39, v38);
    outlined destroy of ReflowTextLine(v39);
    v49 = v7;
    v21 = *(v7 + 16);
    v20 = *(v7 + 24);
    if (v21 >= v20 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
      v7 = v49;
    }

    v22 = (v16 + v15) * 0.5;
    v23 = sqrt((*(&v19 + 1) - v17) * (*(&v19 + 1) - v17) + (v18 - *&v19) * (v18 - *&v19));
    v24 = v22 * ((v18 - *&v19) / v23);
    v25 = v22 * (-(*(&v19 + 1) - v17) / v23);
    v26 = v17 + v24;
    v27 = *&v19 + v25;
    v28 = *(&v19 + 1) + v24 - (v17 + v24);
    v29 = v18 + v25 - (*&v19 + v25);
    v30 = ((a2 - v26) * v28 + (a3 - v27) * v29) / (v28 * v28 + v29 * v29);
    *(v7 + 16) = v21 + 1;
    *(v7 + 8 * v21 + 32) = sqrt((v26 + v28 * v30 - a2) * (v26 + v28 * v30 - a2) + (v27 + v29 * v30 - a3) * (v27 + v29 * v30 - a3)) - v22;
    if (!i)
    {
      break;
    }

    v8 += 168;
  }

  v31 = 0;
  if (v21)
  {
    v32 = *(v7 + 32);
    v33 = (v7 + 40);
    v34 = 1;
    do
    {
      v35 = *v33++;
      v36 = v35;
      if (v35 < v32)
      {
        v31 = v34;
        v32 = v36;
      }

      ++v34;
      --v21;
    }

    while (v21);
  }

  return v31;
}

void *specialized _ArrayBufferProtocol._arrayAppendSequence<A>(_:)(void *result)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = (v2 >> 1) - v3;
  if (__OFSUB__(v2 >> 1, v3))
  {
    goto LABEL_46;
  }

  v5 = result[4];
  v6 = result[3] >> 1;
  if (v5 == v6)
  {
    return result;
  }

  v28 = result[2];
  if (v5 < v28 || v5 >= v6)
  {
    goto LABEL_47;
  }

  v8 = v5 + 1;
  v33 = result[1];
  v9 = *(v33 + 8 * v5);
  v10 = v1[3];

  v11 = v10;
  v29 = v1;
  while (!__OFADD__(v4, 1))
  {
    v34 = specialized _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(countForNewBuffer:minNewCapacity:)(v4, v4 + 1, *v1, v1[1], v3, v11);
    v12 = specialized default argument 3 of _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)();
    specialized _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(&v34, v4, 0, v12);

    v3 = v1[2];
    v13 = v1[3];
    v14 = (v13 >> 1) - v3;
    if (__OFSUB__(v13 >> 1, v3))
    {
      goto LABEL_41;
    }

    v31 = v13 >> 1;
    v15 = v1[1] + 8 * v3;
    v32 = v1[3];
    if ((v13 & 1) == 0)
    {
      goto LABEL_19;
    }

    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain();
    v16 = swift_dynamicCastClass();
    if (!v16)
    {
      swift_unknownObjectRelease();
      v16 = MEMORY[0x1E69E7CC0];
    }

    v17 = *(v16 + 16);
    if (v15 + 8 * v14 != v16 + 8 * v17 + 32)
    {

LABEL_19:
      v18 = v14;
      if (v4 >= v14)
      {
        goto LABEL_31;
      }

LABEL_23:
      v30 = v3;
      v21 = v8;
      while (1)
      {
        *(v15 + 8 * v4++) = v9;
        if (v6 == v21)
        {
          break;
        }

        if (v8 < v28 || v21 >= v6)
        {
          goto LABEL_39;
        }

        v22 = v21 + 1;
        v9 = *(v33 + 8 * v21);

        v21 = v22;
        if (v18 == v4)
        {
          v8 = v22;
          v4 = v18;
          goto LABEL_30;
        }
      }

      v9 = 0;
      v8 = v6;
LABEL_30:
      v1 = v29;
      v3 = v30;
      goto LABEL_31;
    }

    v19 = *(v16 + 24);

    v20 = (v19 >> 1) - v17;
    v18 = v14 + v20;
    if (__OFADD__(v14, v20))
    {
      goto LABEL_45;
    }

    v1 = v29;
    if (v4 < v18)
    {
      goto LABEL_23;
    }

LABEL_31:
    v23 = __OFSUB__(v4, v14);
    v24 = v4 - v14;
    v11 = v32;
    if (v23)
    {
      goto LABEL_42;
    }

    if (v24)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain();
      result = swift_dynamicCastClass();
      if (!result)
      {
        swift_unknownObjectRelease();
        result = MEMORY[0x1E69E7CC0];
      }

      v25 = result[2];
      v23 = __OFADD__(v25, v24);
      v26 = v25 + v24;
      if (v23)
      {
        goto LABEL_43;
      }

      result[2] = v26;

      v27 = v31 + v24;
      if (__OFADD__(v31, v24))
      {
        goto LABEL_44;
      }

      if ((v27 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_39:
        __break(1u);
        break;
      }

      v11 = v32 & 1 | (2 * v27);
      v1[3] = v11;
    }

    if (!v9)
    {
      return result;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

void *specialized ArraySlice.append<A>(contentsOf:)(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_35;
  }

  v30 = result;
  v8 = v4[2];
  v7 = v4[3];
  v9 = (v7 >> 1) - v8;
  if (__OFSUB__(v7 >> 1, v8))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v15 = v9;
    goto LABEL_10;
  }

  v12 = v4[1];
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    v13 = MEMORY[0x1E69E7CC0];
  }

  v14 = *(v13 + 16);
  if (v12 + 8 * v8 + 8 * v9 != v13 + 8 * v14 + 32)
  {

    goto LABEL_8;
  }

  v16 = *(v13 + 24);

  v17 = (v16 >> 1) - v14;
  v18 = __OFADD__(v9, v17);
  v15 = v9 + v17;
  if (v18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_10:
  result = (v9 + v6);
  if (__OFADD__(v9, v6))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v15 < result)
  {
    if (v15 + 0x4000000000000000 < 0)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v19 = 2 * v15;
    if (v19 > result)
    {
      result = v19;
    }
  }

  result = specialized ArraySlice.reserveCapacity(_:)(result);
  v21 = v4[2];
  v20 = v4[3];
  v22 = (v20 >> 1) - v21;
  if (__OFSUB__(v20 >> 1, v21))
  {
    goto LABEL_37;
  }

  v23 = v4[1] + 8 * v21 + 8 * v22;
  if ((v20 & 1) == 0)
  {
LABEL_21:
    v26 = v22;
    goto LABEL_23;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    swift_unknownObjectRelease();
    v24 = MEMORY[0x1E69E7CC0];
  }

  v25 = *(v24 + 16);
  if (v23 != v24 + 8 * v25 + 32)
  {

    goto LABEL_21;
  }

  v27 = *(v24 + 24);

  v28 = (v27 >> 1) - v25;
  v18 = __OFADD__(v22, v28);
  v26 = v22 + v28;
  if (v18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_23:
  v29 = v26 - v22;
  if (__OFSUB__(v26, v22))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v5 == a3)
  {
    if (v6 <= 0)
    {
      v6 = 0;
      v5 = a3;
      goto LABEL_31;
    }

    goto LABEL_39;
  }

  if (v29 < v6)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  type metadata accessor for ReflowElement();
  result = swift_arrayInitWithCopy();
  if (v6 > 0)
  {
    result = (v22 + v6);
    if (__OFADD__(v22, v6))
    {
LABEL_44:
      __break(1u);
      return result;
    }

    result = specialized _SliceBuffer.count.setter(result);
  }

LABEL_31:
  if (v6 == v29)
  {
    v32[0] = v30;
    v32[1] = a2;
    v32[2] = a3;
    v32[3] = a4;
    v32[4] = v5;
    return specialized _ArrayBufferProtocol._arrayAppendSequence<A>(_:)(v32);
  }

  return result;
}

uint64_t specialized static ReflowLayoutManager.process(lines:in:)(unint64_t a1, void *a2)
{
  *&v155 = COERCE_DOUBLE(type metadata accessor for UUID());
  v4 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  *&y = &v142 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = COERCE_DOUBLE(type metadata accessor for PKStroke());
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v157 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v156 = &v142 - v11;
  v189 = MEMORY[0x1E69E7CC0];
  v12 = [a2 strokes];
  v158 = *&v6;
  *&v13 = COERCE_DOUBLE(static Array._unconditionallyBridgeFromObjectiveC(_:)());

  v14 = *(v13 + 16);
  v147 = a1;
  v154 = v14;
  if (v14 == 0.0)
  {

    v160 = MEMORY[0x1E69E7CC8];
    if (a1 >> 62)
    {
      goto LABEL_80;
    }

LABEL_16:
    v43 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v43)
    {
      goto LABEL_17;
    }

LABEL_81:

    *&v49 = MEMORY[0x1E69E7CC0];
    return v49;
  }

  else
  {
    v15 = 0;
    *&v153 = v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v144 = (v7 + 32);
    v145 = v4 + 16;
    v146 = v4;
    v151 = (v4 + 8);
    *&v152 = v7 + 16;
    v150 = (v7 + 8);
    v143 = (v7 + 40);
    v160 = MEMORY[0x1E69E7CC8];
    v149 = *&v13;
    *&v148 = v7;
    v16 = *&y;
    do
    {
      if (v15 >= *(v13 + 16))
      {
        goto LABEL_85;
      }

      v18 = *(v7 + 72);
      v19 = *(v7 + 16);
      v20 = v156;
      v21 = v158;
      v19(v156, *&v153 + v18 * v15, *&v158);
      isa = PKStroke._bridgeToObjectiveC()().super.isa;
      v23 = [(objc_class *)isa _strokeUUID];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v19(v157, v20, *&v21);
      v24 = v160;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v182.a = v24;
      v27 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
      v28 = *(*&v24 + 16);
      v29 = (v26 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
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
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      v31 = v26;
      if (*(*&v24 + 24) >= v30)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized _NativeDictionary.copy()();
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v30, isUniquelyReferenced_nonNull_native);
        v32 = specialized __RawDictionaryStorage.find<A>(_:)(*&y);
        if ((v31 & 1) != (v33 & 1))
        {
          goto LABEL_100;
        }

        v27 = v32;
      }

      a = v182.a;
      v160 = v182.a;
      if (v31)
      {
        v17 = v158;
        (*v143)(*(*&v182.a + 56) + v27 * v18, v157, COERCE_CGFLOAT(*&v158));
        (*v151)(COERCE_DOUBLE(*&y), v155);
        (*v150)(v156, COERCE_CGFLOAT(*&v17));
      }

      else
      {
        *(*&v182.a + 8 * (v27 >> 6) + 64) |= 1 << v27;
        v35 = v146;
        v36 = y;
        v37 = v155;
        (*(v146 + 16))(*(*&a + 48) + *(v146 + 72) * v27, COERCE_DOUBLE(*&y), v155);
        v38 = *(*&v160 + 56) + v27 * v18;
        v39 = v158;
        (*v144)(v38, v157, COERCE_CGFLOAT(*&v158));
        (*(v35 + 8))(COERCE_DOUBLE(*&v36), v37);
        (*v150)(v156, COERCE_CGFLOAT(*&v39));
        v40 = *(*&v160 + 16);
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_91;
        }

        *(*&v160 + 16) = v42;
      }

      ++v15;
      v7 = v148;
      *&v13 = v149;
    }

    while (*&v154 != v15);

    a1 = v147;
    if (!(v147 >> 62))
    {
      goto LABEL_16;
    }

LABEL_80:
    v43 = __CocoaSet.count.getter();
    if (!v43)
    {
      goto LABEL_81;
    }

LABEL_17:
    if (v43 >= 1)
    {
      v44 = 0.0;
      v150 = (a1 & 0xC000000000000001);
      v45 = *MEMORY[0x1E695EFD0];
      v155 = *(MEMORY[0x1E695EFD0] + 8);
      v156 = v45;
      v46 = *(MEMORY[0x1E695EFD0] + 16);
      v149 = *(MEMORY[0x1E695EFD0] + 24);
      v47 = *(MEMORY[0x1E695EFD0] + 40);
      v154 = *(MEMORY[0x1E695EFD0] + 32);
      v157 = v47;
      v158 = v46;
      v145 = a1 + 32;
      v48 = &selRef_pointyBitPoint;
      v148 = xmmword_1D405CEB0;
      *&v49 = MEMORY[0x1E69E7CC0];
      v146 = v43;
      if ((a1 & 0xC000000000000001) == 0)
      {
        goto LABEL_20;
      }

LABEL_19:
      for (i = MEMORY[0x1DA6CE0C0](*&v44, a1); ; i = *(v145 + 8 * *&v44))
      {
        v51 = i;
        *&v182.a = MEMORY[0x1E69E7CC0];
        memset(&v182.b, 0, 32);
        memset(&v188[8], 0, 32);
        v181 = 0.0;
        v180 = 0.0;
        [i principalLines];
        tx = v170.tx;
        ty = v170.ty;
        v54 = v171;
        [v51 bounds];
        v191.x = denormalizePrincipalLine(tx, ty, *&v54, *(&v54 + 1), v55, v56, v57);
        y = v58;
        v153 = v59;
        v60 = *&v157;
        *&v170.a = v156;
        v61 = *&v156;
        v62 = v154;
        *&v170.b = v155;
        v63 = *&v155;
        v170.c = v158;
        v64 = v158;
        v170.d = v149;
        v170.tx = v154;
        v65 = v149;
        *&v170.ty = v157;
        v66 = CGPointApplyAffineTransform(v191, &v170);
        v170.a = v61;
        v170.b = v63;
        v170.c = v64;
        v170.d = v65;
        v170.tx = v62;
        v170.ty = v60;
        v192.x = y;
        v192.y = v153;
        v67 = CGPointApplyAffineTransform(v192, &v170);
        v182.ty = v66.x;
        v183 = *&v66.y;
        *&v184 = v67.y;
        [v51 principalLines];
        v68 = v174;
        v69 = v175;
        [v51 bounds];
        v193.x = denormalizePrincipalLine(*&v68, *(&v68 + 1), *&v69, *(&v69 + 1), v70, v71, v72);
        v152 = v74;
        v153 = v73;
        v75 = v61;
        v76 = v154;
        v77 = *&v155;
        v170.a = v61;
        *&v170.b = v155;
        v78 = v158;
        v170.c = v158;
        v170.d = v65;
        v79 = v65;
        v80 = *&v157;
        v170.tx = v154;
        *&v170.ty = v157;
        v81 = CGPointApplyAffineTransform(v193, &v170);
        y = v81.y;
        v170.a = v75;
        v170.b = v77;
        v170.c = v78;
        v170.d = v79;
        v82 = v79;
        v170.tx = v76;
        v170.ty = v80;
        v194.y = v152;
        v194.x = v153;
        v83 = CGPointApplyAffineTransform(v194, &v170);
        *(&v184 + 1) = *&v81.x;
        v185 = *&v81.y;
        *&v186 = v83.y;
        [v51 principalLines];
        v84 = v170.a;
        b = v170.b;
        c = v170.c;
        d = v170.d;
        [v51 bounds];
        v195.x = denormalizePrincipalLine(v84, b, c, d, v88, v89, v90);
        v152 = v92;
        v153 = v91;
        v93 = *&v156;
        *&v170.a = v156;
        v170.b = v77;
        v94 = v77;
        v95 = v158;
        v170.c = v158;
        v170.d = v82;
        v96 = v82;
        v97 = *&v157;
        v170.tx = v76;
        *&v170.ty = v157;
        *v98 = CGPointApplyAffineTransform(v195, &v170);
        v170.a = v93;
        v170.b = v94;
        v170.c = v95;
        v170.d = v96;
        v170.tx = v76;
        v170.ty = v97;
        v196.y = v152;
        v196.x = v153;
        *&v98[16] = CGPointApplyAffineTransform(v196, &v170);
        *(&v186 + 1) = *v98;
        v187 = *&v98[8];
        *v188 = *&v98[24];
        [v51 v48[316]];
        if (*&v98[8] - y <= v99)
        {
          [v51 v48[316]];
        }

        else
        {
          v100 = (*&v98[8] - y) * 1.2;
        }

        v152 = *&v49;
        v153 = v44;
        *&v188[24] = v100;
        v101 = [v51 tokens];
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for CHReflowableTextResultToken);
        v102 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v102 >> 62)
        {
          v103 = __CocoaSet.count.getter();
          if (v103)
          {
LABEL_26:
            *&v170.a = MEMORY[0x1E69E7CC0];

            specialized ContiguousArray.reserveCapacity(_:)();
            if (v103 < 0)
            {
              goto LABEL_92;
            }

            v151 = v51;
            v104 = 0;
            *&y = v102 & 0xFFFFFFFFFFFFFF8;
            while (1)
            {
              v105 = v104 + 1;
              if (__OFADD__(v104, 1))
              {
                break;
              }

              if ((v102 & 0xC000000000000001) != 0)
              {
                v106 = MEMORY[0x1DA6CE0C0](v104, v102);
              }

              else
              {
                if (v104 >= *(*&y + 16))
                {
                  goto LABEL_84;
                }

                v106 = *(v102 + 8 * v104 + 32);
              }

              v107 = v106;
              v179 = v106;
              closure #2 in static ReflowLayoutManager.process(lines:in:)(&v179, *&v160, &v189, &v182.a, &v181, &v180, &v161);

              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              ++v104;
              if (v105 == v103)
              {

                v108 = v170.a;
                v51 = v151;
                goto LABEL_37;
              }
            }

            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
            goto LABEL_86;
          }
        }

        else
        {
          v103 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v103)
          {
            goto LABEL_26;
          }
        }

        v108 = MEMORY[0x1E69E7CC0];
LABEL_37:
        if (v180 > v181)
        {
          goto LABEL_87;
        }

        *&v188[8] = v180;
        *&v188[16] = v181;
        v109 = v51;
        v110 = [v51 hasEndingLineBreak];
        v111 = *&v108 >> 62;
        if (v110)
        {
          if (v111)
          {
            v112 = __CocoaSet.count.getter();
            if (!v112)
            {
              goto LABEL_47;
            }
          }

          else
          {
            v112 = *((*&v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v112)
            {
              goto LABEL_47;
            }
          }

          v41 = __OFSUB__(v112, 1);
          v113 = v112 - 1;
          if (v41)
          {
            goto LABEL_94;
          }

          if ((*&v108 & 0xC000000000000001) != 0)
          {
            v114 = MEMORY[0x1DA6CE0C0](v113, *&v108);
          }

          else
          {
            if ((v113 & 0x8000000000000000) != 0)
            {
              goto LABEL_95;
            }

            if (v113 >= *((*&v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_96;
            }
          }

          *(v114 + 136) = 1;
        }

LABEL_47:
        if (v111)
        {
          v140 = __CocoaSet.count.getter();
          if (v140 < 1)
          {
            goto LABEL_98;
          }

          v115 = v140;
          if (__CocoaSet.count.getter() < 1)
          {
            goto LABEL_99;
          }

          if (__CocoaSet.count.getter() < v115)
          {
            goto LABEL_89;
          }
        }

        else
        {
          v115 = *((*&v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v115)
          {
            goto LABEL_88;
          }
        }

        v116 = *&v108 & 0xC000000000000001;
        if ((*&v108 & 0xC000000000000001) == 0 || v115 == 1)
        {

          if (!v111)
          {
            goto LABEL_54;
          }
        }

        else
        {
          type metadata accessor for ReflowWord();

          v117 = 1;
          do
          {
            v118 = v117 + 1;
            _ArrayBuffer._typeCheckSlowPath(_:)(v117);
            v117 = v118;
          }

          while (v115 != v118);
          if (!v111)
          {
LABEL_54:
            v119 = *&v108 & 0xFFFFFFFFFFFFFF8;
            v120 = (*&v108 & 0xFFFFFFFFFFFFFF8) + 32;
            v121 = (2 * v115) | 1;
            v122 = 1;
            goto LABEL_57;
          }
        }

        v119 = _CocoaArrayWrapper.subscript.getter();
LABEL_57:
        *v190 = v108;
        v190[1] = v119;
        v190[2] = v120;
        v190[3] = v122;
        v190[4] = v121;

        v123 = specialized Sequence.flatMap<A>(_:)(v190);
        swift_unknownObjectRelease();

        if (v116)
        {
          MEMORY[0x1DA6CE0C0](v115 - 1, *&v108);
          swift_unknownObjectRelease();
          v124 = *&v160;
        }

        else
        {
          v124 = *&v160;
          if (v115 > *((*&v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_90;
          }
        }

        v160 = *&v124;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v125 = swift_allocObject();
        *(v125 + 16) = v148;
        if (v116)
        {
          v126 = MEMORY[0x1DA6CE0C0](v115 - 1, *&v108);
        }

        else
        {
          if (v115 > *((*&v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_93;
          }

          v126 = *(*&v108 + 8 * (v115 - 1) + 32);
        }

        *(v125 + 32) = v126;
        *&v161.a = v123;
        specialized Array.append<A>(contentsOf:)(v125);

        v182.a = v161.a;
        v176 = *v188;
        v177 = *&v188[16];
        v178 = *&v188[32];
        v172 = v184;
        v173 = v185;
        v174 = v186;
        v175 = v187;
        v170 = v182;
        v171 = v183;
        outlined init with copy of ReflowTextLine(&v170, &v161);
        *&v49 = v152;
        v127 = swift_isUniquelyReferenced_nonNull_native();
        v128 = v153;
        v48 = &selRef_pointyBitPoint;
        if ((v127 & 1) == 0)
        {
          *&v49 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 2) + 1, 1, v49));
        }

        v130 = *(v49 + 2);
        v129 = *(v49 + 3);
        if (v130 >= v129 >> 1)
        {
          *&v49 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v129 > 1), v130 + 1, 1, v49));
        }

        *&v44 = *&v128 + 1;

        *(v49 + 2) = v130 + 1;
        v131 = &v49[168 * v130];
        v132 = *&v170.a;
        v133 = *&v170.tx;
        *(v131 + 3) = *&v170.c;
        *(v131 + 4) = v133;
        *(v131 + 2) = v132;
        v134 = v171;
        v135 = v172;
        v136 = v174;
        *(v131 + 7) = v173;
        *(v131 + 8) = v136;
        *(v131 + 5) = v134;
        *(v131 + 6) = v135;
        v137 = v175;
        v138 = v176;
        v139 = v177;
        *(v131 + 24) = v178;
        *(v131 + 10) = v138;
        *(v131 + 11) = v139;
        *(v131 + 9) = v137;
        v167 = *v188;
        v168 = *&v188[16];
        v169 = *&v188[32];
        v163 = v184;
        v164 = v185;
        v165 = v186;
        v166 = v187;
        v161 = v182;
        v162 = v183;
        outlined destroy of ReflowTextLine(&v161);
        if (*&v44 == v146)
        {

          return v49;
        }

        a1 = v147;
        if (v150)
        {
          goto LABEL_19;
        }

LABEL_20:
        ;
      }
    }

LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);

    __break(1u);
LABEL_100:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

double denormalizePrincipalLine(double a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  if (a7 == 0.0)
  {
    a7 = 1.0;
  }

  return a5 + a1 * a7;
}

uint64_t _s8PaperKit15PKDrawingStructVWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t *partial apply for specialized closure #1 in BidirectionalCollection.last(where:)@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *result;
  v5 = v3[3] >> 1;
  if (*result >= v3[2])
  {
    v7 = __OFSUB__(v4, v5);
    v6 = v4 - v5 < 0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  if (v6 != v7)
  {
    *a2 = *(v3[1] + 8 * v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s8PaperKit15PKDrawingStructVAC9Coherence4CRDTAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

void __swiftcall CanvasViewRulerHostingDelegate.rulerHostingView()(UIView_optional *__return_ptr retstr)
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    __break(1u);
  }
}

id @objc CanvasViewRulerHostingDelegate.rulerHostingView()@<X0>(UIView_optional *a1@<X8>)
{
  CanvasViewRulerHostingDelegate.rulerHostingView()(a1);

  return v1;
}

id CanvasViewRulerHostingDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasViewRulerHostingDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized CanvasViewRulerHostingDelegate.init(canvas:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasViewRulerHostingDelegate();
  return objc_msgSendSuper2(&v2, sel_init);
}

char *SignatureCreationViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{

  *&v3[OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_panelSize] = xmmword_1D4067410;
  *&v3[OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_clearButtonBottomPadding] = 0x402C000000000000;
  *&v3[OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_clearButtonImagePadding] = 0x4020000000000000;
  *&v3[OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_signatureLineInset] = 0x4040000000000000;
  *&v3[OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_signatureLinePadding] = 0x4028000000000000;
  *&v3[OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_signatureMarkPadding] = 0x4020000000000000;
  v5 = OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_signatureLineColor;
  *&v3[v5] = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.6 alpha:0.7];
  v6 = OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_buttonImageConfiguration;
  v7 = objc_opt_self();
  *&v3[v6] = [v7 configurationWithScale_];
  v8 = OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_xmarkImageConfiguration;
  *&v3[v8] = [v7 configurationWithPointSize:2 weight:3 scale:0.0];
  *&v3[OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_signaturePenWidth] = 0x3FF0000000000000;
  v9 = OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_navigationBar;
  *&v3[v9] = [objc_allocWithZone(MEMORY[0x1E69DCCC0]) init];
  v10 = OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_signatureView;
  *&v3[v10] = [objc_allocWithZone(MEMORY[0x1E69783F8]) init];
  v11 = OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_signatureLineView;
  *&v3[v11] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *&v3[OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_doneItem] = 0;
  *&v3[OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_clearButton] = 0;
  *&v3[OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_savedFirstResponder] = 0;
  v12 = &v3[OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_signatureDescription];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v3[OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_completion];
  *v13 = UnknownCanvasElementView.flags.modify;
  *(v13 + 1) = 0;
  *&v3[OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_customLabelDialogHostingController] = 0;
  v16.receiver = v3;
  v16.super_class = type metadata accessor for SignatureCreationViewController();
  v14 = objc_msgSendSuper2(&v16, sel_initWithNibName_bundle_, 0, 0);
  [v14 setModalTransitionStyle_];
  [v14 setModalPresentationStyle_];
  [v14 setModalInPresentation_];
  [v14 setPreferredContentSize_];
  [*&v14[OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_navigationBar] setTranslatesAutoresizingMaskIntoConstraints_];

  return v14;
}

Swift::Void __swiftcall SignatureCreationViewController.viewDidLoad()()
{
  v1 = type metadata accessor for PKInkingTool.InkType();
  v186 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v178 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for UITraitOverrides();
  MEMORY[0x1EEE9AC00](v179);
  v178[1] = v178 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UIButton.Configuration();
  v191 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v178 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v178 - v9;
  v11 = type metadata accessor for SignatureCreationViewController();
  v199.receiver = v0;
  v199.super_class = v11;
  objc_msgSendSuper2(&v199, sel_viewDidLoad);
  v12 = [v0 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_41;
  }

  v13 = v12;
  v188 = v7;
  v185 = objc_opt_self();
  v14 = [v185 systemBackgroundColor];
  [v13 setBackgroundColor_];

  v15 = [v0 view];
  if (!v15)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v16 = v15;
  v183 = v1;
  v184 = v3;
  v17 = *&v0[OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_navigationBar];
  [v15 addSubview_];

  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v18 = swift_allocObject();
  v187 = xmmword_1D405B640;
  *(v18 + 16) = xmmword_1D405B640;
  v19 = [v17 widthAnchor];
  v20 = [v0 view];
  if (!v20)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v21 = v20;
  v190 = v10;
  v22 = [v20 widthAnchor];

  v23 = [v19 constraintEqualToAnchor_];
  *(v18 + 32) = v23;
  v24 = [v17 topAnchor];
  v25 = [v0 view];
  if (!v25)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v26 = v25;
  v27 = [v25 safeAreaLayoutGuide];

  v28 = [v27 topAnchor];
  if (_UISolariumEnabled())
  {
    v29 = 10.0;
  }

  else
  {
    v29 = 0.0;
  }

  v30 = objc_opt_self();
  v31 = [v24 constraintEqualToAnchor:v28 constant:v29];

  *(v18 + 40) = v31;
  v192 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v193 = v30;
  [v30 activateConstraints_];

  v33 = [objc_allocWithZone(MEMORY[0x1E69DCCE0]) init];
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v197 = partial apply for closure #1 in SignatureCreationViewController.viewDidLoad();
  v198 = v34;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
  v196 = &block_descriptor_108;
  v35 = _Block_copy(aBlock);

  [v33 setTitleMenuProvider_];
  _Block_release(v35);
  v36 = swift_allocObject();
  v189 = xmmword_1D405CEB0;
  *(v36 + 16) = xmmword_1D405CEB0;
  *(v36 + 32) = v33;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UINavigationItem);
  v37 = v33;
  v38 = Array._bridgeToObjectiveC()().super.isa;

  v182 = v17;
  [v17 setItems_];

  SignatureCreationViewController.updateTitle()();
  v39 = objc_allocWithZone(MEMORY[0x1E69DC708]);
  v40 = v0;
  v41 = [v39 initWithBarButtonSystemItem:0 target:v40 action:sel_doneAction_];
  v42 = OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_doneItem;
  v43 = *&v40[OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_doneItem];
  *&v40[OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_doneItem] = v41;

  v44 = swift_allocObject();
  *(v44 + 16) = v189;
  v45 = *&v40[v42];
  if (!v45)
  {
    goto LABEL_44;
  }

  *(v44 + 32) = v45;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIBarButtonItem);
  v46 = v45;
  v47 = Array._bridgeToObjectiveC()().super.isa;

  [v37 setRightBarButtonItems_];

  v48 = *&v40[v42];
  if (!v48)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v49 = v37;
  [v48 setEnabled_];
  v50 = [v40 presentationController];
  v51 = v188;
  if (!v50 || (v52 = v50, v53 = [v50 presentationStyle], v52, v54 = v40, v53 != 7))
  {
    v55 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v40 action:sel_cancelAction_];

    v56 = swift_allocObject();
    *(v56 + 16) = v189;
    *(v56 + 32) = v55;
    v57 = v55;
    v54 = Array._bridgeToObjectiveC()().super.isa;

    [v49 setLeftBarButtonItems_];
  }

  v58 = v190;
  static UIButton.Configuration.plain()();
  v59 = [v40 traitCollection];
  v60 = [v59 userInterfaceIdiom];

  if (v60 == 6)
  {
    static UIButton.Configuration.borderedProminent()();
    v61 = v191;
    (*(v191 + 8))(v58, v5);
    (*(v61 + 32))(v58, v51, v5);
  }

  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v200._object = 0x80000001D4089BD0;
  v62._countAndFlagsBits = 0x7261656C43;
  v63.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v63.value._object = 0xEB00000000656C62;
  v200._countAndFlagsBits = 0xD000000000000024;
  v62._object = 0xE500000000000000;
  v64._countAndFlagsBits = 0;
  v64._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v62, v63, paperKitBundle, v64, v200);
  UIButton.Configuration.title.setter();
  v65 = *&v40[OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_buttonImageConfiguration];
  v66 = MEMORY[0x1DA6CCED0](0xD000000000000016, 0x80000001D4089C00);
  v67 = objc_opt_self();
  v68 = [v67 systemImageNamed:v66 withConfiguration:v65];

  UIButton.Configuration.image.setter();
  UIButton.Configuration.imagePadding.setter();
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIButton);
  v69 = *(v191 + 16);
  v181 = v5;
  v69(v51, v58, v5);
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAction);
  *(swift_allocObject() + 16) = v40;
  v70 = v40;
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v71 = UIButton.init(configuration:primaryAction:)();
  [v71 setTranslatesAutoresizingMaskIntoConstraints_];
  [v71 setEnabled_];
  v72 = [v70 view];
  if (!v72)
  {
    goto LABEL_46;
  }

  v73 = v72;
  v188 = v67;
  [v72 addSubview_];

  v74 = swift_allocObject();
  *(v74 + 16) = v187;
  v75 = [v71 centerXAnchor];
  v76 = [v70 view];
  if (!v76)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v77 = v76;
  v78 = [v76 centerXAnchor];

  v79 = [v75 constraintEqualToAnchor_];
  *(v74 + 32) = v79;
  v80 = [v71 bottomAnchor];
  v81 = [v70 view];
  if (!v81)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v82 = v81;
  v83 = [v81 safeAreaLayoutGuide];

  v84 = [v83 bottomAnchor];
  v85 = [v80 constraintEqualToAnchor:v84 constant:-14.0];

  *(v74 + 40) = v85;
  v86 = Array._bridgeToObjectiveC()().super.isa;

  [v193 activateConstraints_];

  v87 = *&v70[OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_clearButton];
  *&v70[OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_clearButton] = v71;
  v88 = v71;

  v89 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  if (one-time initialization token for signatureInstructionString != -1)
  {
    swift_once();
  }

  v180 = v49;
  v90 = MEMORY[0x1DA6CCED0](static UIConstants.signatureInstructionString, *(&static UIConstants.signatureInstructionString + 1));
  [v89 setText_];

  v91 = v89;
  [v91 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v187 = *&v70[OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_signatureLineColor];
  [v91 setTextColor_];
  [v91 setTextAlignment_];
  v92 = [objc_opt_self() preferredFontForTextStyle_];
  [v91 setFont_];

  v93 = [v70 view];
  if (!v93)
  {
    goto LABEL_49;
  }

  v94 = v93;
  [v93 addSubview_];

  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_1D40664F0;
  v96 = [v91 centerXAnchor];
  v97 = [v70 view];
  if (!v97)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v98 = v97;
  v99 = [v97 centerXAnchor];

  v100 = [v96 constraintEqualToAnchor_];
  *(v95 + 32) = v100;
  v101 = [v91 widthAnchor];
  v102 = [v70 view];
  if (!v102)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v103 = v102;
  v104 = [v102 safeAreaLayoutGuide];

  v105 = [v104 widthAnchor];
  v106 = [v101 constraintEqualToAnchor_];

  *(v95 + 40) = v106;
  *&v189 = v91;
  v107 = [v91 bottomAnchor];
  v108 = [v88 topAnchor];

  v109 = [v107 constraintEqualToAnchor:v108 constant:-8.0];
  *(v95 + 48) = v109;
  v110 = Array._bridgeToObjectiveC()().super.isa;

  [v193 activateConstraints_];

  v111 = *&v70[OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_xmarkImageConfiguration];
  v112 = MEMORY[0x1DA6CCED0](0x6B72616D78, 0xE500000000000000);
  v113 = [v188 systemImageNamed:v112 withConfiguration:v111];

  if (v113)
  {
    v114 = [v113 imageWithRenderingMode_];
  }

  else
  {
    v114 = 0;
  }

  v115 = v187;
  v116 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

  [v116 setTintColor_];
  v117 = v116;
  [v117 setTranslatesAutoresizingMaskIntoConstraints_];
  v118 = [v70 view];
  if (!v118)
  {
    goto LABEL_52;
  }

  v119 = v118;
  v188 = v88;
  [v118 addSubview_];

  v120 = *&v70[OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_signatureLineView];
  [v120 setTranslatesAutoresizingMaskIntoConstraints_];
  [v120 setBackgroundColor_];
  v121 = [v70 view];
  if (!v121)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v122 = v121;
  [v121 addSubview_];

  v123 = swift_allocObject();
  *(v123 + 16) = xmmword_1D4065C70;
  v124 = [v117 leadingAnchor];
  v125 = [v70 view];
  if (!v125)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v126 = v125;
  v127 = [v125 safeAreaLayoutGuide];

  v128 = [v127 leadingAnchor];
  v129 = [v124 constraintEqualToAnchor:v128 constant:32.0];

  *(v123 + 32) = v129;
  v130 = [v117 bottomAnchor];
  v131 = v189;
  v132 = [v189 topAnchor];

  v133 = [v130 constraintEqualToAnchor:v132 constant:-12.0];
  *(v123 + 40) = v133;
  v134 = [v120 heightAnchor];
  v135 = [v134 constraintEqualToConstant_];

  *(v123 + 48) = v135;
  v136 = [v120 bottomAnchor];
  v137 = [v117 bottomAnchor];
  v138 = [v136 constraintEqualToAnchor_];

  *(v123 + 56) = v138;
  v139 = [v120 leadingAnchor];
  v140 = [v117 trailingAnchor];

  v141 = [v139 constraintEqualToAnchor:v140 constant:8.0];
  *(v123 + 64) = v141;
  v142 = [v120 trailingAnchor];
  v143 = [v70 view];
  if (!v143)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v144 = v143;
  v145 = [v143 safeAreaLayoutGuide];

  v146 = [v145 trailingAnchor];
  v147 = [v142 constraintEqualToAnchor:v146 constant:-32.0];

  *(v123 + 72) = v147;
  v148 = Array._bridgeToObjectiveC()().super.isa;

  [v193 activateConstraints_];

  v149 = [v70 view];
  if (!v149)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v150 = v149;
  v151 = *&v70[OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_signatureView];
  [v149 insertSubview:v151 atIndex:0];

  v152 = [v70 traitCollection];
  v153 = [v152 userInterfaceIdiom];

  v154 = v153 == 6;
  v155 = v184;
  v156 = v183;
  if (v154)
  {
    UIView.traitOverrides.getter();
    UIMutableTraits.userInterfaceStyle.setter();
    UIView.traitOverrides.setter();
  }

  (*(v186 + 104))(v155, *MEMORY[0x1E6978328], v156);
  v157 = [v185 blackColor];
  v196 = type metadata accessor for PKInkingTool();
  v197 = MEMORY[0x1E6978370];
  __swift_allocate_boxed_opaque_existential_1(aBlock);
  PKInkingTool.init(_:color:width:)();
  PKCanvasView.tool.setter();
  [v151 setTranslatesAutoresizingMaskIntoConstraints_];
  [v151 setDrawingPolicy_];
  [v151 setDelegate_];
  v158 = swift_allocObject();
  *(v158 + 16) = xmmword_1D405B630;
  v159 = [v151 leadingAnchor];
  v160 = [v70 view];
  if (!v160)
  {
    goto LABEL_57;
  }

  v161 = v160;
  v162 = [v160 leadingAnchor];

  v163 = [v159 constraintEqualToAnchor_];
  *(v158 + 32) = v163;
  v164 = [v151 trailingAnchor];
  v165 = [v70 view];
  if (!v165)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v166 = v165;
  v167 = [v165 trailingAnchor];

  v168 = [v164 constraintEqualToAnchor_];
  *(v158 + 40) = v168;
  v169 = [v151 topAnchor];
  v170 = [v182 bottomAnchor];
  v171 = [v169 constraintEqualToAnchor_];

  *(v158 + 48) = v171;
  v172 = [v151 bottomAnchor];
  v173 = [v70 view];
  if (v173)
  {
    v174 = v173;
    v175 = [v173 bottomAnchor];

    v176 = [v172 constraintEqualToAnchor_];
    *(v158 + 56) = v176;
    v177 = Array._bridgeToObjectiveC()().super.isa;

    [v193 activateConstraints_];

    (*(v191 + 8))(v190, v181);
    return;
  }

LABEL_59:
  __break(1u);
}

Class closure #1 in SignatureCreationViewController.viewDidLoad()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = SignatureCreationViewController.titleActions.getter();
  if (v2 >> 62)
  {
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIMenuElement);
    preferredElementSize = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIMenuElement);
    preferredElementSize = v2;
  }

  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIMenu);
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v8.value.super.isa = 0;
  v8.is_nil = 0;
  v5.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v4, 0, v8, 32, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v7).super.super.isa;

  return v5.super.super.isa;
}

Swift::Bool __swiftcall SignatureCreationViewController.becomeFirstResponder()()
{
  v1 = v0;
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 firstResponder];

    v10.receiver = v1;
    v10.super_class = type metadata accessor for SignatureCreationViewController();
    v5 = objc_msgSendSuper2(&v10, sel_becomeFirstResponder);
    if (v5)
    {
      if (!v4 || (type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIResponder), v6 = v4, v7 = v1, v8 = static NSObject.== infix(_:_:)(), v6, v7, (v8 & 1) == 0))
      {
        v6 = *&v1[OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_savedFirstResponder];
        *&v1[OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_savedFirstResponder] = v4;
      }
    }

    else
    {
      v6 = v4;
    }

    LOBYTE(v2) = v5;
  }

  else
  {
    __break(1u);
  }

  return v2;
}

Swift::Void __swiftcall SignatureCreationViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for SignatureCreationViewController();
  objc_msgSendSuper2(&v10, sel_viewDidAppear_, a1);
  if (([v1 isFirstResponder] & 1) == 0)
  {
    [v1 becomeFirstResponder];
  }

  v3 = [objc_opt_self() defaultCenter];
  v4 = *MEMORY[0x1E69DDAB0];
  v5 = [objc_opt_self() mainQueue];
  v6 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v9[4] = partial apply for closure #1 in SignatureCreationViewController.viewDidAppear(_:);
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  v9[3] = &block_descriptor_104;
  v7 = _Block_copy(v9);

  v8 = [v3 addObserverForName:v4 object:0 queue:v5 usingBlock:v7];
  _Block_release(v7);
  swift_unknownObjectRelease();
}

void closure #1 in SignatureCreationViewController.viewDidAppear(_:)()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = [Strong firstResponder];

  if (!v7)
  {
    return;
  }

  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = [v1 textFields];
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = v2;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UITextField);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_6;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_6:
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1DA6CE0C0](0, v4);
    }

    else
    {
      if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v5 = *(v4 + 32);
    }

    v6 = v5;

    [v6 becomeFirstResponder];

LABEL_10:

    return;
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ()(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

Swift::Void __swiftcall SignatureCreationViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  [v1 resignFirstResponder];
  v3 = OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_savedFirstResponder;
  v4 = *&v1[OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_savedFirstResponder];
  if (v4)
  {
    [v4 becomeFirstResponder];
    v5 = *&v1[v3];
    *&v1[v3] = 0;
  }

  v6 = [objc_opt_self() defaultCenter];
  [v6 removeObserver:v1 name:*MEMORY[0x1E69DDAB0] object:0];

  v7.receiver = v1;
  v7.super_class = type metadata accessor for SignatureCreationViewController();
  objc_msgSendSuper2(&v7, sel_viewDidDisappear_, a1);
}

Swift::Void __swiftcall SignatureCreationViewController.updateTitle()()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_signatureDescription;
  countAndFlagsBits = *(v0 + OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_signatureDescription);
  object = *(v2 + 8);
  if (object < 6)
  {
    goto LABEL_6;
  }

  v5 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v5 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
  }

  else
  {
LABEL_6:
    v10 = countAndFlagsBits;
    v11 = object;
    outlined copy of SignatureDescription(countAndFlagsBits, object);
    v6 = SignatureDescription.localizedTitle()();
    countAndFlagsBits = v6._countAndFlagsBits;
    object = v6._object;
    outlined consume of SignatureDescription(v10, v11);
  }

  v7 = [*(v1 + OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_navigationBar) topItem];
  if (v7)
  {
    v8 = v7;
    v9 = MEMORY[0x1DA6CCED0](countAndFlagsBits, object);

    [v8 setTitle_];
  }

  else
  {
  }
}

void SignatureCreationViewController.clearSignature(with:)(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v13 = partial apply for closure #1 in SignatureCreationViewController.clearSignature(with:);
  v14 = v3;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v12 = &block_descriptor_74;
  v4 = _Block_copy(&v9);
  v5 = v1;

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v13 = partial apply for closure #2 in SignatureCreationViewController.clearSignature(with:);
  v14 = v6;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v12 = &block_descriptor_80;
  v7 = _Block_copy(&v9);
  v8 = v5;

  [a1 animateAlongsideTransition:v4 completion:v7];
  _Block_release(v7);
  _Block_release(v4);
}

CGMutablePathRef drawingPath #1 () in SignatureCreationViewController.doneAction(_:)(uint64_t a1)
{
  v2 = type metadata accessor for PKStroke();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PKDrawing();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Mutable = CGPathCreateMutable();
  v11 = [*(a1 + OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_signatureView) drawing];
  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = PKDrawing.strokes.getter();
  (*(v7 + 8))(v9, v6);
  v13 = *(v12 + 16);
  if (v13)
  {
    transform.a = 1.0;
    transform.b = 0.0;
    transform.c = 0.0;
    transform.d = 1.0;
    transform.tx = 0.0;
    transform.ty = 0.0;
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v22 = v12;
    v23 = v15;
    v16 = v12 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v23(v5, v16, v2);
      isa = PKStroke._bridgeToObjectiveC()().super.isa;
      (*v18)(v5, v2);
      v20 = [(objc_class *)isa _newPathRepresentation];

      CGMutablePathRef.addPath(_:transform:)(v20, &transform);
      v16 += v17;
      --v13;
    }

    while (v13);
  }

  return Mutable;
}

Swift::Void __swiftcall SignatureCreationViewController.clearAction()()
{
  v1 = v0;
  v2 = type metadata accessor for PKDrawing();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for SignatureLogger != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, SignatureLogger);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1D38C4000, v7, v8, "cleared drawing", v9, 2u);
    MEMORY[0x1DA6D0660](v9, -1, -1);
  }

  v10 = *(v1 + OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_signatureView);
  PKDrawing.init()();
  PKDrawing._bridgeToObjectiveC()(v11);
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  [v10 setDrawing_];
}

Swift::Void __swiftcall SignatureCreationViewController.showCustomLabelDialog()()
{
  if (*&v0[OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_signatureDescription + 8] >= 6uLL)
  {
  }

  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = v0;

  State.init(wrappedValue:)();
  BYTE8(v20) = FocusState.init<>()() & 1;
  *&v21 = v4;
  BYTE8(v21) = v5 & 1;
  *&v22 = partial apply for closure #2 in SignatureCreationViewController.showCustomLabelDialog();
  *(&v22 + 1) = v1;
  *&v23 = partial apply for closure #3 in SignatureCreationViewController.showCustomLabelDialog();
  *(&v23 + 1) = v2;
  v16 = v21;
  v17 = v22;
  v18 = v23;
  v14 = v19;
  v15 = v20;
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCy8PaperKit21CustomLabelDialogViewVGMd));
  outlined init with copy of CustomLabelDialogView(&v19, v13);
  v7 = UIHostingController.init(rootView:)();
  [v7 setModalPresentationStyle_];
  v8 = [v7 view];
  if (v8)
  {
    v9 = v8;

    v10 = [objc_opt_self() clearColor];
    [v9 setBackgroundColor_];

    v11 = *&v3[OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_customLabelDialogHostingController];
    *&v3[OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_customLabelDialogHostingController] = v7;
    v12 = v7;

    [v3 presentViewController:v12 animated:1 completion:0];
    outlined destroy of CustomLabelDialogView(&v19);
  }

  else
  {
    __break(1u);
  }
}

id closure #3 in SignatureCreationViewController.showCustomLabelDialog()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a3 + OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_signatureDescription);
  v5 = *(a3 + OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_signatureDescription);
  v6 = *(a3 + OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_signatureDescription + 8);
  *v4 = a1;
  v4[1] = a2;

  outlined consume of SignatureDescription(v5, v6);
  SignatureCreationViewController.updateTitle()();
  result = *(a3 + OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_customLabelDialogHostingController);
  if (result)
  {

    return [result dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

uint64_t SignatureCreationViewController.titleActions.getter()
{
  v5 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray.reserveCapacity(_:)();
  for (i = 0; i != 112; i += 16)
  {
    v3 = *(&outlined read-only object #0 of static SignatureDescription.allCases.getter + i + 32);
    outlined copy of SignatureDescription(v3, *(&v3 + 1));
    closure #1 in SignatureCreationViewController.titleActions.getter(&v3, v0, &v4);
    outlined consume of SignatureDescription(v3, *(&v3 + 1));
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  return v5;
}

void closure #1 in SignatureCreationViewController.titleActions.getter(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  if (v6 - 1 >= 5)
  {
    if (v6)
    {
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAction);
      v24 = v5;
      v25 = v6;
      SignatureDescription.localizedTitle()();
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v11 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      [v11 setState_];
      goto LABEL_4;
    }

    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAction);
    if (one-time initialization token for paperKitBundle != -1)
    {
      swift_once();
    }

    v27._object = 0x80000001D4089B50;
    v13._countAndFlagsBits = 0x6C6562614C206F4ELL;
    v14.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v14.value._object = 0xEB00000000656C62;
    v13._object = 0xE800000000000000;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    v27._countAndFlagsBits = 0xD000000000000022;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, paperKitBundle, v15, v27);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v18 = *(a2 + OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_signatureDescription + 8);
    v24 = *(a2 + OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_signatureDescription);
    v25 = v18;
    v22 = v5;
    v23 = 0;
    v11 = v17;
    outlined copy of SignatureDescription(v24, v18);
    v19 = specialized static SignatureDescription.== infix(_:_:)(&v24, &v22);
    outlined consume of SignatureDescription(v24, v25);
    [v11 setState_];
  }

  else
  {
    v26 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAction);
    v24 = v5;
    v25 = v6;
    SignatureDescription.localizedTitle()();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    *(v8 + 24) = v6;
    *(v8 + 32) = v7;
    outlined copy of SignatureDescription(v5, v6);
    v21 = v8;
    v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v10 = *(a2 + OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_signatureDescription + 8);
    v24 = *(a2 + OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_signatureDescription);
    v25 = v10;
    v22 = v5;
    v23 = v6;
    v11 = v9;
    outlined copy of SignatureDescription(v24, v10);
    LOBYTE(v8) = specialized static SignatureDescription.== infix(_:_:)(&v24, &v22);
    outlined consume of SignatureDescription(v24, v25);
    [v11 setState_];
  }

LABEL_4:
  *a3 = v11;
}

void closure #1 in closure #1 in SignatureCreationViewController.titleActions.getter()
{
  if (one-time initialization token for SignatureLogger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, SignatureLogger);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D38C4000, v1, v2, "clear label", v3, 2u);
    MEMORY[0x1DA6D0660](v3, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = (Strong + OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_signatureDescription);
    v7 = *(Strong + OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_signatureDescription);
    v8 = v6[1];
    *v6 = 0;
    v6[1] = 0;
    outlined consume of SignatureDescription(v7, v8);
    SignatureCreationViewController.updateTitle()();
  }
}

void closure #3 in closure #1 in SignatureCreationViewController.titleActions.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    SignatureCreationViewController.showCustomLabelDialog()();
  }
}

void closure #2 in closure #1 in SignatureCreationViewController.titleActions.getter(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (one-time initialization token for SignatureLogger != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, SignatureLogger);
  outlined copy of SignatureDescription(a2, a3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = -1;
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    if (a3 <= 5)
    {
      v10 = specialized Collection<>.firstIndex(of:)(a2, a3, &outlined read-only object #0 of static SignatureDescription.allCases.getter);
      if (v11)
      {
        outlined consume of SignatureDescription(a2, a3);
        __break(1u);
        return;
      }

      v8 = v10;
    }

    *(v9 + 4) = v8;
    outlined consume of SignatureDescription(a2, a3);
    _os_log_impl(&dword_1D38C4000, v6, v7, "set standard label %ld", v9, 0xCu);
    MEMORY[0x1DA6D0660](v9, -1, -1);
  }

  else
  {
    outlined consume of SignatureDescription(a2, a3);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = (Strong + OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_signatureDescription);
    v15 = *(Strong + OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_signatureDescription);
    v16 = *(Strong + OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_signatureDescription + 8);
    *v14 = a2;
    v14[1] = a3;
    outlined copy of SignatureDescription(a2, a3);
    outlined consume of SignatureDescription(v15, v16);
    SignatureCreationViewController.updateTitle()();
  }
}

id SignatureCreationViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignatureCreationViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CustomLabelDialogView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for CustomLabelDialogView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t CustomLabelDialogView.labelTextField.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v3 = type metadata accessor for SubmitTriggers();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RoundedBorderTextFieldStyle();
  v6 = *(v5 - 8);
  v39 = v5;
  v40 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TextFieldVyAA0C0VGMd);
  v34 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA9TextFieldVyAA0H0VG_Qo_Md);
  v12 = *(v11 - 8);
  v37 = v11;
  v38 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - v13;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14textFieldStyleyQrqd__AA04TextgH0Rd__lFQOyAeAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA0iG0VyAA0I0VG_Qo__AA013RoundedBorderigH0VQo_AA14_PaddingLayoutVGMd);
  MEMORY[0x1EEE9AC00](v35);
  v16 = &v33 - v15;
  LocalizedStringKey.init(stringLiteral:)();
  v47 = *v1;
  v48 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySSGMd);
  State.projectedValue.getter();
  TextField<>.init(_:text:onEditingChanged:onCommit:)();
  v45 = *(v1 + 24);
  LOBYTE(v46) = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10FocusStateVySbGMd);
  FocusState.projectedValue.getter();
  v17 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TextField<Text> and conformance TextField<A>, &_s7SwiftUI9TextFieldVyAA0C0VGMd);
  View.focused(_:)();

  (*(v34 + 8))(v10, v8);
  v18 = v36;
  RoundedBorderTextFieldStyle.init()();
  *&v45 = v8;
  *(&v45 + 1) = v17;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle(&lazy protocol witness table cache variable for type RoundedBorderTextFieldStyle and conformance RoundedBorderTextFieldStyle, MEMORY[0x1E697CA80]);
  v19 = v37;
  v20 = v39;
  View.textFieldStyle<A>(_:)();
  (*(v40 + 8))(v18, v20);
  (*(v38 + 8))(v14, v19);
  v21 = static Edge.Set.horizontal.getter();
  v22 = &v16[*(v35 + 36)];
  *v22 = v21;
  *(v22 + 8) = 0u;
  *(v22 + 24) = 0u;
  v22[40] = 1;
  v23 = swift_allocObject();
  v24 = *(v1 + 48);
  v23[3] = *(v1 + 32);
  v23[4] = v24;
  v23[5] = *(v1 + 64);
  v25 = *(v1 + 16);
  v23[1] = *v1;
  v23[2] = v25;
  outlined init with copy of CustomLabelDialogView(v1, &v45);
  v26 = v41;
  static SubmitTriggers.text.getter();
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.textFieldStyle<A>(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  v27 = v42;
  View.onSubmit(of:_:)();

  (*(v43 + 8))(v26, v44);
  outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14textFieldStyleyQrqd__AA04TextgH0Rd__lFQOyAeAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA0iG0VyAA0I0VG_Qo__AA013RoundedBorderigH0VQo_AA14_PaddingLayoutVGMd);
  v28 = swift_allocObject();
  v29 = v2[3];
  *(v28 + 3) = v2[2];
  *(v28 + 4) = v29;
  *(v28 + 5) = v2[4];
  v30 = v2[1];
  *(v28 + 1) = *v2;
  *(v28 + 2) = v30;
  v31 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onSubmit2of_QrAA0G8TriggersV_yyctFQOyACyAeAE14textFieldStyleyQrqd__AA04TextkL0Rd__lFQOyAeAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA0mK0VyAA0M0VG_Qo__AA013RoundedBordermkL0VQo_AA14_PaddingLayoutVG_Qo_AA25_AppearanceActionModifierVGMd) + 36));
  *v31 = partial apply for closure #2 in CustomLabelDialogView.labelTextField.getter;
  v31[1] = v28;
  v31[2] = 0;
  v31[3] = 0;
  return outlined init with copy of CustomLabelDialogView(v2, &v45);
}

uint64_t closure #1 in CustomLabelDialogView.labelTextField.getter(__int128 *a1)
{
  v2 = type metadata accessor for CharacterSet();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(a1 + 2);
  v10 = *a1;
  v11 = *(a1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySSGMd);
  State.wrappedValue.getter();
  v10 = v9;
  static CharacterSet.whitespacesAndNewlines.getter();
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.trimmingCharacters(in:)();
  (*(v3 + 8))(v5, v2);

  v6 = String.count.getter();

  if (v6 >= 1)
  {
    v8 = *(a1 + 8);
    v10 = v12;
    v11 = v13;
    State.wrappedValue.getter();
    v8(v9, *(&v9 + 1));
  }

  return result;
}

uint64_t closure #2 in CustomLabelDialogView.labelTextField.getter(_OWORD *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v24 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v22 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v23 = *(v9 + 8);
  v23(v11, v8);
  v15 = swift_allocObject();
  v16 = a1[3];
  v15[3] = a1[2];
  v15[4] = v16;
  v15[5] = a1[4];
  v17 = a1[1];
  v15[1] = *a1;
  v15[2] = v17;
  aBlock[4] = partial apply for closure #1 in closure #2 in CustomLabelDialogView.labelTextField.getter;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_35;
  v18 = _Block_copy(aBlock);
  outlined init with copy of CustomLabelDialogView(a1, v28);

  static DispatchQoS.unspecified.getter();
  v28[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v19 = v22;
  MEMORY[0x1DA6CD840](v14, v7, v4, v18);
  _Block_release(v18);

  (*(v27 + 8))(v4, v2);
  (*(v25 + 8))(v7, v26);
  return (v23)(v14, v24);
}

uint64_t closure #1 in CustomLabelDialogView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v35 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v3 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyACyAA4ViewPAAE8onSubmit2of_QrAA0H8TriggersV_yyctFQOyACyAgAE14textFieldStyleyQrqd__AA04TextlM0Rd__lFQOyAgAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA0nL0VyAA0N0VG_Qo__AA013RoundedBordernlM0VQo_AA14_PaddingLayoutVG_Qo_AA25_AppearanceActionModifierVGGA2_GMd);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA15ModifiedContentVyAA6VStackVyAFyAcAE8onSubmit2of_QrAA0J8TriggersV_yyctFQOyAFyAcAE14textFieldStyleyQrqd__AA04TextnO0Rd__lFQOyAcAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA0pN0VyAA0P0VG_Qo__AA013RoundedBorderpnO0VQo_AA14_PaddingLayoutVG_Qo_AA25_AppearanceActionModifierVGGA3_G_SSQo_Md);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationE4ItemV0fgH0OFQOyAcAE0dF0yQrqd__SyRd__lFQOyAA15ModifiedContentVyAA6VStackVyAKyAcAE8onSubmit2of_QrAA0O8TriggersV_yyctFQOyAKyAcAE14textFieldStyleyQrqd__AA04TextsT0Rd__lFQOyAcAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA0uS0VyAA0U0VG_Qo__AA013RoundedBorderusT0VQo_AA14_PaddingLayoutVG_Qo_AA25_AppearanceActionModifierVGGA8_G_SSQo__Qo_Md);
  v33 = *(v12 - 8);
  v34 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v30 = &v30 - v13;
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0x4030000000000000;
  v8[16] = 0;
  v14 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA15ModifiedContentVyAA0D0PAAE8onSubmit2of_QrAA0K8TriggersV_yyctFQOyAIyAkAE14textFieldStyleyQrqd__AA04TextoP0Rd__lFQOyAkAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA0qO0VyAA0Q0VG_Qo__AA013RoundedBorderqoP0VQo_AA08_PaddingG0VG_Qo_AA25_AppearanceActionModifierVGGMd) + 44)];
  v36 = a1;
  CustomLabelDialogView.labelTextField.getter(v14);
  v15 = static Edge.Set.all.getter();
  v16 = &v8[*(v6 + 36)];
  *v16 = v15;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  v16[40] = 1;
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v41._object = 0x80000001D4089B20;
  v17._countAndFlagsBits = 0x4C206D6F74737543;
  v17._object = 0xEC0000006C656261;
  v18.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v18.value._object = 0xEB00000000656C62;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v41._countAndFlagsBits = 0xD000000000000026;
  v38 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v18, paperKitBundle, v19, v41);
  v20 = lazy protocol witness table accessor for type ModifiedContent<VStack<ModifiedContent<<<opaque return type of View.onSubmit(of:_:)>>.0, _AppearanceActionModifier>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  v21 = lazy protocol witness table accessor for type String and conformance String();
  v22 = MEMORY[0x1E69E6158];
  View.navigationTitle<A>(_:)();

  outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s7SwiftUI15ModifiedContentVyAA6VStackVyACyAA4ViewPAAE8onSubmit2of_QrAA0H8TriggersV_yyctFQOyACyAgAE14textFieldStyleyQrqd__AA04TextlM0Rd__lFQOyAgAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA0nL0VyAA0N0VG_Qo__AA013RoundedBordernlM0VQo_AA14_PaddingLayoutVG_Qo_AA25_AppearanceActionModifierVGGA2_GMd);
  v23 = v35;
  (*(v3 + 104))(v5, *MEMORY[0x1E697C438], v35);
  v38._countAndFlagsBits = v6;
  v38._object = v22;
  v39 = v20;
  v40 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v30;
  v26 = v32;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v3 + 8))(v5, v23);
  v27 = (*(v31 + 8))(v11, v26);
  MEMORY[0x1EEE9AC00](v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19TupleToolbarContentVyAA0D4ItemVyytAA012_ConditionalE0Vy8PaperKit20HeadlineCancelButtonVAA0L0VyAA4TextVGGG_AEyytAGyAA08ModifiedE0VyAH0j4DoneL0VAA32_EnvironmentKeyTransformModifierVySbGGASyAA4ViewPAAE11buttonStyleyQrqd__AA09PrimitivelV0Rd__lFQOyAO_AA017BorderedProminentlV0VQo_AXGGGtGMd);
  v38._countAndFlagsBits = v26;
  v38._object = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleToolbarContent<(ToolbarItem<(), _ConditionalContent<HeadlineCancelButton, Button<Text>>>, ToolbarItem<(), _ConditionalContent<ModifiedContent<HeadlineDoneButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>>>)> and conformance TupleToolbarContent<A>, &_s7SwiftUI19TupleToolbarContentVyAA0D4ItemVyytAA012_ConditionalE0Vy8PaperKit20HeadlineCancelButtonVAA0L0VyAA4TextVGGG_AEyytAGyAA08ModifiedE0VyAH0j4DoneL0VAA32_EnvironmentKeyTransformModifierVySbGGASyAA4ViewPAAE11buttonStyleyQrqd__AA09PrimitivelV0Rd__lFQOyAO_AA017BorderedProminentlV0VQo_AXGGGtGMd);
  v28 = v34;
  View.toolbar<A>(content:)();
  return (*(v33 + 8))(v25, v28);
}

uint64_t closure #2 in closure #1 in CustomLabelDialogView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v18[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA19_ConditionalContentVy8PaperKit20HeadlineCancelButtonVAA0K0VyAA4TextVGGG_ACyytAEyAA08ModifiedF0VyAF0i4DoneK0VAA32_EnvironmentKeyTransformModifierVySbGGAQyAA4ViewPAAE11buttonStyleyQrqd__AA09PrimitivekU0Rd__lFQOyAM_AA017BorderedProminentkU0VQo_AVGGGtMd);
  MEMORY[0x1EEE9AC00](v18[0]);
  v4 = v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA19_ConditionalContentVyAA08ModifiedF0Vy8PaperKit18HeadlineDoneButtonVAA32_EnvironmentKeyTransformModifierVySbGGAGyAA4ViewPAAE11buttonStyleyQrqd__AA09PrimitivelS0Rd__lFQOyAA0L0VyAA4TextVG_AA017BorderedProminentlS0VQo_AMGGGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - v7;
  v9 = type metadata accessor for ToolbarItemPlacement();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA19_ConditionalContentVy8PaperKit20HeadlineCancelButtonVAA0K0VyAA4TextVGGGMd);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v18 - v13;
  MEMORY[0x1DA6C9E70](v12);
  v18[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy8PaperKit20HeadlineCancelButtonVAA0I0VyAA4TextVGGMd);
  lazy protocol witness table accessor for type _ConditionalContent<HeadlineCancelButton, Button<Text>> and conformance <> _ConditionalContent<A, B>();
  v15 = ToolbarItem<>.init(placement:content:)();
  MEMORY[0x1DA6C9E80](v15);
  v18[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy8PaperKit18HeadlineDoneButtonVAA32_EnvironmentKeyTransformModifierVySbGGAEyAA4ViewPAAE11buttonStyleyQrqd__AA09PrimitivejQ0Rd__lFQOyAA0J0VyAA4TextVG_AA017BorderedProminentjQ0VQo_AKGGMd);
  lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<HeadlineDoneButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>();
  ToolbarItem<>.init(placement:content:)();
  v16 = *(v18[0] + 48);
  (*(v11 + 16))(v4, v14, v10);
  (*(v6 + 16))(&v4[v16], v8, v5);
  TupleToolbarContent.init(_:)();
  (*(v6 + 8))(v8, v5);
  return (*(v11 + 8))(v14, v10);
}

uint64_t closure #1 in closure #2 in closure #1 in CustomLabelDialogView.body.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ButtonRoleVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy8PaperKit20HeadlineCancelButtonVAA0J0VyAA4TextVG_GMd);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v24 - v12);
  if (_UISolariumEnabled())
  {
    v14 = swift_allocObject();
    v15 = a1[3];
    v14[3] = a1[2];
    v14[4] = v15;
    v14[5] = a1[4];
    v16 = a1[1];
    v14[1] = *a1;
    v14[2] = v16;
    *v13 = partial apply for closure #1 in closure #1 in closure #2 in closure #1 in CustomLabelDialogView.body.getter;
    v13[1] = v14;
    swift_storeEnumTagMultiPayload();
    outlined init with copy of CustomLabelDialogView(a1, v25);
    lazy protocol witness table accessor for type HeadlineCancelButton and conformance HeadlineCancelButton();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v18 = LocalizedStringKey.init(stringLiteral:)();
    v24[1] = v19;
    v24[2] = v18;
    static ButtonRole.cancel.getter();
    v20 = type metadata accessor for ButtonRole();
    (*(*(v20 - 8) + 56))(v6, 0, 1, v20);
    v21 = swift_allocObject();
    v24[3] = a2;
    v22 = a1[3];
    v21[3] = a1[2];
    v21[4] = v22;
    v21[5] = a1[4];
    v23 = a1[1];
    v21[1] = *a1;
    v21[2] = v23;
    outlined init with copy of CustomLabelDialogView(a1, v25);
    Button<>.init(_:role:action:)();
    (*(v8 + 16))(v13, v10, v7);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type HeadlineCancelButton and conformance HeadlineCancelButton();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
    _ConditionalContent<>.init(storage:)();
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t closure #2 in closure #2 in closure #1 in CustomLabelDialogView.body.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BorderedProminentButtonStyle();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA32_EnvironmentKeyTransformModifierVySbGGMd);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0Vy8PaperKit18HeadlineDoneButtonVAA32_EnvironmentKeyTransformModifierVySbGGAGyAA4ViewPAAE11buttonStyleyQrqd__AA09PrimitivekR0Rd__lFQOyAA0K0VyAA4TextVG_AA017BorderedProminentkR0VQo_AMG_GMd);
  MEMORY[0x1EEE9AC00](v49);
  v15 = (&v40 - v14);
  v16 = type metadata accessor for CharacterSet();
  v47 = *(v16 - 8);
  v48 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled())
  {
    v19 = swift_allocObject();
    v20 = a1[3];
    v19[3] = a1[2];
    v19[4] = v20;
    v19[5] = a1[4];
    v21 = a1[1];
    v22 = *a1;
    v19[1] = *a1;
    v19[2] = v21;
    v50 = v22;
    v51 = *(a1 + 2);
    outlined init with copy of CustomLabelDialogView(a1, &v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySSGMd);
    State.wrappedValue.getter();
    static CharacterSet.whitespacesAndNewlines.getter();
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol.trimmingCharacters(in:)();
    (*(v47 + 8))(v18, v48);

    v23 = String.count.getter();

    v24 = v23 < 1;
    KeyPath = swift_getKeyPath();
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    *v15 = partial apply for closure #1 in closure #2 in closure #2 in closure #1 in CustomLabelDialogView.body.getter;
    v15[1] = v19;
    v15[2] = KeyPath;
    v15[3] = closure #1 in View.disabled(_:)partial apply;
    v15[4] = v26;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy8PaperKit18HeadlineDoneButtonVAA32_EnvironmentKeyTransformModifierVySbGGMd);
    lazy protocol witness table accessor for type ModifiedContent<HeadlineDoneButton, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v28 = LocalizedStringKey.init(stringLiteral:)();
    v42 = v13;
    v40 = v28;
    v44 = a2;
    v43 = v11;
    v29 = swift_allocObject();
    v41 = v4;
    v30 = a1[3];
    v29[3] = a1[2];
    v29[4] = v30;
    v29[5] = a1[4];
    v31 = a1[1];
    v29[1] = *a1;
    v29[2] = v31;
    outlined init with copy of CustomLabelDialogView(a1, &v52);
    Button<>.init(_:action:)();
    BorderedProminentButtonStyle.init()();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
    lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle(&lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, MEMORY[0x1E697CB70]);
    v32 = v42;
    v33 = v46;
    v34 = v41;
    View.buttonStyle<A>(_:)();
    (*(v5 + 8))(v7, v34);
    (*(v45 + 8))(v10, v33);
    v52 = *a1;
    v53 = *(a1 + 2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySSGMd);
    State.wrappedValue.getter();
    v52 = v50;
    static CharacterSet.whitespacesAndNewlines.getter();
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol.trimmingCharacters(in:)();
    (*(v47 + 8))(v18, v48);

    v35 = String.count.getter();

    v36 = v35 < 1;
    v37 = swift_getKeyPath();
    v38 = swift_allocObject();
    *(v38 + 16) = v36;
    v39 = (v32 + *(v43 + 36));
    *v39 = v37;
    v39[1] = _s7SwiftUI4ViewPAAE8disabledyQrSbFySbzcfU_TA_0;
    v39[2] = v38;
    outlined init with copy of Date?(v32, v15, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA32_EnvironmentKeyTransformModifierVySbGGMd);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy8PaperKit18HeadlineDoneButtonVAA32_EnvironmentKeyTransformModifierVySbGGMd);
    lazy protocol witness table accessor for type ModifiedContent<HeadlineDoneButton, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of StocksKitCurrencyCache.Provider?(v32, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA32_EnvironmentKeyTransformModifierVySbGGMd);
  }
}

uint64_t closure #1 in closure #2 in closure #2 in closure #1 in CustomLabelDialogView.body.getter(uint64_t a1)
{
  v1 = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySSGMd);
  State.wrappedValue.getter();
  v1();
}

uint64_t closure #2 in CustomLabelDialogView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24[1] = a2;
  v24[2] = a1;
  v25 = type metadata accessor for _ShapeSet();
  v2 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RoundedRectangle();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v24 - v9);
  v11 = type metadata accessor for Material._GlassVariant();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[0] = type metadata accessor for Material();
  v15 = *(v24[0] - 8);
  MEMORY[0x1EEE9AC00](v24[0]);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Material._GlassVariant.regular.getter();
  static Material._glass(_:)();
  (*(v12 + 8))(v14, v11);
  if (one-time initialization token for containerCornerRadius != -1)
  {
    swift_once();
  }

  v18 = static CustomLabelDialogView.Metrics.containerCornerRadius;
  v19 = *(v5 + 20);
  v20 = *MEMORY[0x1E697F468];
  v21 = type metadata accessor for RoundedCornerStyle();
  (*(*(v21 - 8) + 104))(v10 + v19, v20, v21);
  *v10 = v18;
  v10[1] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI8AnyShapeVGMd);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D4058CF0;
  outlined init with copy of RoundedRectangle(v10, v7);
  lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle(&lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle, MEMORY[0x1E697EAF0]);
  *(v22 + 32) = AnyShape.init<A>(_:)();
  _ShapeSet.init(shapes:smoothness:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA15NavigationStackVyAA0E4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAiAE29navigationBarTitleDisplayModeyQrAA0eM4ItemV0noP0OFQOyAiAE0lN0yQrqd__SyRd__lFQOyACyAA6VStackVyACyAiAE8onSubmit2of_QrAA0T8TriggersV_yyctFQOyACyAiAE14textFieldStyleyQrqd__AA04TextxY0Rd__lFQOyAiAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA0zX0VyAA0Z0VG_Qo__AA013RoundedBorderzxY0VQo_AA14_PaddingLayoutVG_Qo_AA25_AppearanceActionModifierVGGA15_G_SSQo__Qo__AA05TuplekD0VyAA0kQ0VyytAA012_ConditionalD0Vy8PaperKit20HeadlineCancelButtonVAA6ButtonVyA8_GGG_A28_yytA30_yACyA31_18HeadlineDoneButtonVAA32_EnvironmentKeyTransformModifierVySbGGACyAiAE06buttonY0yQrqd__AA015PrimitiveButtonY0Rd__lFQOyA36__AA023BorderedProminentButtonY0VQo_A43_GGGtGQo_GAA12_FrameLayoutVGMd);
  lazy protocol witness table accessor for type ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  View.materialEffect(_:in:)();
  (*(v2 + 8))(v4, v25);
  outlined destroy of RoundedRectangle(v10);
  return (*(v15 + 8))(v17, v24[0]);
}

uint64_t closure #3 in CustomLabelDialogView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Color.RGBColorSpace();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() systemBackgroundColor];
  v9 = Color.init(uiColor:)();
  v10 = static Edge.Set.all.getter();
  outlined init with copy of Date?(a1, a2, &_s7SwiftUI15ModifiedContentVyAA15NavigationStackVyAA0E4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAiAE29navigationBarTitleDisplayModeyQrAA0eM4ItemV0noP0OFQOyAiAE0lN0yQrqd__SyRd__lFQOyACyAA6VStackVyACyAiAE8onSubmit2of_QrAA0T8TriggersV_yyctFQOyACyAiAE14textFieldStyleyQrqd__AA04TextxY0Rd__lFQOyAiAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA0zX0VyAA0Z0VG_Qo__AA013RoundedBorderzxY0VQo_AA14_PaddingLayoutVG_Qo_AA25_AppearanceActionModifierVGGA15_G_SSQo__Qo__AA05TuplekD0VyAA0kQ0VyytAA012_ConditionalD0Vy8PaperKit20HeadlineCancelButtonVAA6ButtonVyA8_GGG_A28_yytA30_yACyA31_18HeadlineDoneButtonVAA32_EnvironmentKeyTransformModifierVySbGGACyAiAE06buttonY0yQrqd__AA015PrimitiveButtonY0Rd__lFQOyA36__AA023BorderedProminentButtonY0VQo_A43_GGGtGQo_GAA12_FrameLayoutVGMd);
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA15NavigationStackVyAA0E4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAiAE29navigationBarTitleDisplayModeyQrAA0eM4ItemV0noP0OFQOyAiAE0lN0yQrqd__SyRd__lFQOyACyAA6VStackVyACyAiAE8onSubmit2of_QrAA0T8TriggersV_yyctFQOyACyAiAE14textFieldStyleyQrqd__AA04TextxY0Rd__lFQOyAiAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA0zX0VyAA0Z0VG_Qo__AA013RoundedBorderzxY0VQo_AA14_PaddingLayoutVG_Qo_AA25_AppearanceActionModifierVGGA15_G_SSQo__Qo__AA05TuplekD0VyAA0kQ0VyytAA012_ConditionalD0Vy8PaperKit20HeadlineCancelButtonVAA6ButtonVyA8_GGG_A28_yytA30_yACyA31_18HeadlineDoneButtonVAA32_EnvironmentKeyTransformModifierVySbGGACyAiAE06buttonY0yQrqd__AA015PrimitiveButtonY0Rd__lFQOyA36__AA023BorderedProminentButtonY0VQo_A43_GGGtGQo_GAA12_FrameLayoutVGAA011_BackgroundY8ModifierVyAA5ColorVGGMd) + 36);
  *v11 = v9;
  *(v11 + 8) = v10;
  if (one-time initialization token for containerCornerRadius != -1)
  {
    swift_once();
  }

  v12 = static CustomLabelDialogView.Metrics.containerCornerRadius;
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA15NavigationStackVyAA0E4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAiAE29navigationBarTitleDisplayModeyQrAA0eM4ItemV0noP0OFQOyAiAE0lN0yQrqd__SyRd__lFQOyACyAA6VStackVyACyAiAE8onSubmit2of_QrAA0T8TriggersV_yyctFQOyACyAiAE14textFieldStyleyQrqd__AA04TextxY0Rd__lFQOyAiAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA0zX0VyAA0Z0VG_Qo__AA013RoundedBorderzxY0VQo_AA14_PaddingLayoutVG_Qo_AA25_AppearanceActionModifierVGGA15_G_SSQo__Qo__AA05TuplekD0VyAA0kQ0VyytAA012_ConditionalD0Vy8PaperKit20HeadlineCancelButtonVAA6ButtonVyA8_GGG_A28_yytA30_yACyA31_18HeadlineDoneButtonVAA32_EnvironmentKeyTransformModifierVySbGGACyAiAE06buttonY0yQrqd__AA015PrimitiveButtonY0Rd__lFQOyA36__AA023BorderedProminentButtonY0VQo_A43_GGGtGQo_GAA12_FrameLayoutVGAA011_BackgroundY8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd) + 36));
  v14 = *(type metadata accessor for RoundedRectangle() + 20);
  v15 = *MEMORY[0x1E697F468];
  v16 = type metadata accessor for RoundedCornerStyle();
  (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
  *v13 = v12;
  v13[1] = v12;
  *(v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd) + 36)) = 256;
  (*(v5 + 104))(v7, *MEMORY[0x1E69814C8], v4);
  v17 = Color.init(_:white:opacity:)();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA15NavigationStackVyAA0E4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAiAE29navigationBarTitleDisplayModeyQrAA0eM4ItemV0noP0OFQOyAiAE0lN0yQrqd__SyRd__lFQOyACyAA6VStackVyACyAiAE8onSubmit2of_QrAA0T8TriggersV_yyctFQOyACyAiAE14textFieldStyleyQrqd__AA04TextxY0Rd__lFQOyAiAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA0zX0VyAA0Z0VG_Qo__AA013RoundedBorderzxY0VQo_AA14_PaddingLayoutVG_Qo_AA25_AppearanceActionModifierVGGA15_G_SSQo__Qo__AA05TuplekD0VyAA0kQ0VyytAA012_ConditionalD0Vy8PaperKit20HeadlineCancelButtonVAA6ButtonVyA8_GGG_A28_yytA30_yACyA31_18HeadlineDoneButtonVAA32_EnvironmentKeyTransformModifierVySbGGACyAiAE06buttonY0yQrqd__AA015PrimitiveButtonY0Rd__lFQOyA36__AA023BorderedProminentButtonY0VQo_A43_GGGtGQo_GAA12_FrameLayoutVGAA011_BackgroundY8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA13_ShadowEffectVGMd);
  v19 = (a2 + *(result + 36));
  *v19 = v17;
  v19[1] = 0x4028000000000000;
  v19[2] = 0;
  v19[3] = 0;
  return result;
}

uint64_t one-time initialization function for containerCornerRadius()
{
  result = _UISolariumEnabled();
  v1 = 32.0;
  if (!result)
  {
    v1 = 12.0;
  }

  static CustomLabelDialogView.Metrics.containerCornerRadius = *&v1;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance CustomLabelDialogView@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA15NavigationStackVyAA0E4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAiAE29navigationBarTitleDisplayModeyQrAA0eM4ItemV0noP0OFQOyAiAE0lN0yQrqd__SyRd__lFQOyACyAA6VStackVyACyAiAE8onSubmit2of_QrAA0T8TriggersV_yyctFQOyACyAiAE14textFieldStyleyQrqd__AA04TextxY0Rd__lFQOyAiAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA0zX0VyAA0Z0VG_Qo__AA013RoundedBorderzxY0VQo_AA14_PaddingLayoutVG_Qo_AA25_AppearanceActionModifierVGGA15_G_SSQo__Qo__AA05TuplekD0VyAA0kQ0VyytAA012_ConditionalD0Vy8PaperKit20HeadlineCancelButtonVAA6ButtonVyA8_GGG_A28_yytA30_yACyA31_18HeadlineDoneButtonVAA32_EnvironmentKeyTransformModifierVySbGGACyAiAE06buttonY0yQrqd__AA015PrimitiveButtonY0Rd__lFQOyA36__AA023BorderedProminentButtonY0VQo_A43_GGGtGQo_GAA12_FrameLayoutVGMd);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v20 - v3;
  v5 = v1[3];
  v24[2] = v1[2];
  v24[3] = v5;
  v24[4] = v1[4];
  v6 = v1[1];
  v24[0] = *v1;
  v24[1] = v6;
  v20[4] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAcAE29navigationBarTitleDisplayModeyQrAA010NavigationI4ItemV0jkL0OFQOyAcAE0hJ0yQrqd__SyRd__lFQOyAA08ModifiedG0VyAA6VStackVyANyAcAE8onSubmit2of_QrAA0R8TriggersV_yyctFQOyANyAcAE14textFieldStyleyQrqd__AA04TextvW0Rd__lFQOyAcAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA0xV0VyAA0X0VG_Qo__AA013RoundedBorderxvW0VQo_AA14_PaddingLayoutVG_Qo_AA25_AppearanceActionModifierVGGA11_G_SSQo__Qo__AA05TuplefG0VyAA0fN0VyytAA012_ConditionalG0Vy8PaperKit20HeadlineCancelButtonVAA6ButtonVyA4_GGG_A24_yytA26_yANyA27_18HeadlineDoneButtonVAA32_EnvironmentKeyTransformModifierVySbGGANyAcAE06buttonW0yQrqd__AA015PrimitiveButtonW0Rd__lFQOyA32__AA023BorderedProminentButtonW0VQo_A39_GGGtGQo_Md);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationE4ItemV0fgH0OFQOyAcAE0dF0yQrqd__SyRd__lFQOyAA15ModifiedContentVyAA6VStackVyAKyAcAE8onSubmit2of_QrAA0O8TriggersV_yyctFQOyAKyAcAE14textFieldStyleyQrqd__AA04TextsT0Rd__lFQOyAcAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA0uS0VyAA0U0VG_Qo__AA013RoundedBorderusT0VQo_AA14_PaddingLayoutVG_Qo_AA25_AppearanceActionModifierVGGA8_G_SSQo__Qo_Md);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19TupleToolbarContentVyAA0D4ItemVyytAA012_ConditionalE0Vy8PaperKit20HeadlineCancelButtonVAA0L0VyAA4TextVGGG_AEyytAGyAA08ModifiedE0VyAH0j4DoneL0VAA32_EnvironmentKeyTransformModifierVySbGGASyAA4ViewPAAE11buttonStyleyQrqd__AA09PrimitivelV0Rd__lFQOyAO_AA017BorderedProminentlV0VQo_AXGGGtGMd);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA15ModifiedContentVyAA6VStackVyAFyAcAE8onSubmit2of_QrAA0J8TriggersV_yyctFQOyAFyAcAE14textFieldStyleyQrqd__AA04TextnO0Rd__lFQOyAcAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA0pN0VyAA0P0VG_Qo__AA013RoundedBorderpnO0VQo_AA14_PaddingLayoutVG_Qo_AA25_AppearanceActionModifierVGGA3_G_SSQo_Md);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyACyAA4ViewPAAE8onSubmit2of_QrAA0H8TriggersV_yyctFQOyACyAgAE14textFieldStyleyQrqd__AA04TextlM0Rd__lFQOyAgAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA0nL0VyAA0N0VG_Qo__AA013RoundedBordernlM0VQo_AA14_PaddingLayoutVG_Qo_AA25_AppearanceActionModifierVGGA2_GMd);
  v11 = lazy protocol witness table accessor for type ModifiedContent<VStack<ModifiedContent<<<opaque return type of View.onSubmit(of:_:)>>.0, _AppearanceActionModifier>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  v12 = lazy protocol witness table accessor for type String and conformance String();
  *&v21 = v10;
  *(&v21 + 1) = MEMORY[0x1E69E6158];
  *&v22 = v11;
  *(&v22 + 1) = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v21 = v9;
  *(&v21 + 1) = OpaqueTypeConformance2;
  v14 = swift_getOpaqueTypeConformance2();
  v15 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleToolbarContent<(ToolbarItem<(), _ConditionalContent<HeadlineCancelButton, Button<Text>>>, ToolbarItem<(), _ConditionalContent<ModifiedContent<HeadlineDoneButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>>>)> and conformance TupleToolbarContent<A>, &_s7SwiftUI19TupleToolbarContentVyAA0D4ItemVyytAA012_ConditionalE0Vy8PaperKit20HeadlineCancelButtonVAA0L0VyAA4TextVGGG_AEyytAGyAA08ModifiedE0VyAH0j4DoneL0VAA32_EnvironmentKeyTransformModifierVySbGGASyAA4ViewPAAE11buttonStyleyQrqd__AA09PrimitivelV0Rd__lFQOyAO_AA017BorderedProminentlV0VQo_AXGGGtGMd);
  *&v21 = v7;
  *(&v21 + 1) = v8;
  *&v22 = v14;
  *(&v22 + 1) = v15;
  swift_getOpaqueTypeConformance2();
  NavigationStack.init<>(root:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v16 = &v4[*(v2 + 36)];
  v17 = v22;
  *v16 = v21;
  *(v16 + 1) = v17;
  *(v16 + 2) = v23;
  Solarium.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE14materialEffect_2inQrAA8MaterialV_AA9_ShapeSetVtFQOyAA15ModifiedContentVyAA15NavigationStackVyAA0L4PathVAcAE7toolbar7contentQrqd__yXE_tAA07ToolbarK0Rd__lFQOyAcAE29navigationBarTitleDisplayModeyQrAA0lS4ItemV0tuV0OFQOyAcAE0rT0yQrqd__SyRd__lFQOyAKyAA6VStackVyAKyAcAE8onSubmit2of_QrAA0Z8TriggersV_yyctFQOyAKyAcAE14textFieldStyleyQrqd__AA14TextFieldStyleRd__lFQOyAcAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA9TextFieldVyAA4TextVG_Qo__AA27RoundedBorderTextFieldStyleVQo_AA14_PaddingLayoutVG_Qo_AA25_AppearanceActionModifierVGGA21_G_SSQo__Qo__AA05TupleqK0VyAA0qW0VyytAA012_ConditionalK0Vy8PaperKit20HeadlineCancelButtonVAA6ButtonVyA14_GGG_A34_yytA36_yAKyA37_18HeadlineDoneButtonVAA32_EnvironmentKeyTransformModifierVySbGGAKyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyA42__AA28BorderedProminentButtonStyleVQo_A49_GGGtGQo_GAA12_FrameLayoutVG_Qo_Md);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA15NavigationStackVyAA0E4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAiAE29navigationBarTitleDisplayModeyQrAA0eM4ItemV0noP0OFQOyAiAE0lN0yQrqd__SyRd__lFQOyACyAA6VStackVyACyAiAE8onSubmit2of_QrAA0T8TriggersV_yyctFQOyACyAiAE14textFieldStyleyQrqd__AA04TextxY0Rd__lFQOyAiAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA0zX0VyAA0Z0VG_Qo__AA013RoundedBorderzxY0VQo_AA14_PaddingLayoutVG_Qo_AA25_AppearanceActionModifierVGGA15_G_SSQo__Qo__AA05TuplekD0VyAA0kQ0VyytAA012_ConditionalD0Vy8PaperKit20HeadlineCancelButtonVAA6ButtonVyA8_GGG_A28_yytA30_yACyA31_18HeadlineDoneButtonVAA32_EnvironmentKeyTransformModifierVySbGGACyAiAE06buttonY0yQrqd__AA015PrimitiveButtonY0Rd__lFQOyA36__AA023BorderedProminentButtonY0VQo_A43_GGGtGQo_GAA12_FrameLayoutVGAA011_BackgroundY8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA13_ShadowEffectVGMd);
  v18 = lazy protocol witness table accessor for type ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  v20[6] = v2;
  v20[7] = v18;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, _ShadowEffect> and conformance <> ModifiedContent<A, B>();
  View.staticIf<A, B, C>(_:then:else:)();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s7SwiftUI15ModifiedContentVyAA15NavigationStackVyAA0E4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAiAE29navigationBarTitleDisplayModeyQrAA0eM4ItemV0noP0OFQOyAiAE0lN0yQrqd__SyRd__lFQOyACyAA6VStackVyACyAiAE8onSubmit2of_QrAA0T8TriggersV_yyctFQOyACyAiAE14textFieldStyleyQrqd__AA04TextxY0Rd__lFQOyAiAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA0zX0VyAA0Z0VG_Qo__AA013RoundedBorderzxY0VQo_AA14_PaddingLayoutVG_Qo_AA25_AppearanceActionModifierVGGA15_G_SSQo__Qo__AA05TuplekD0VyAA0kQ0VyytAA012_ConditionalD0Vy8PaperKit20HeadlineCancelButtonVAA6ButtonVyA8_GGG_A28_yytA30_yACyA31_18HeadlineDoneButtonVAA32_EnvironmentKeyTransformModifierVySbGGACyAiAE06buttonY0yQrqd__AA015PrimitiveButtonY0Rd__lFQOyA36__AA023BorderedProminentButtonY0VQo_A43_GGGtGQo_GAA12_FrameLayoutVGMd);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<ModifiedContent<<<opaque return type of View.onSubmit(of:_:)>>.0, _AppearanceActionModifier>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<ModifiedContent<<<opaque return type of View.onSubmit(of:_:)>>.0, _AppearanceActionModifier>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<ModifiedContent<<<opaque return type of View.onSubmit(of:_:)>>.0, _AppearanceActionModifier>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyACyAA4ViewPAAE8onSubmit2of_QrAA0H8TriggersV_yyctFQOyACyAgAE14textFieldStyleyQrqd__AA04TextlM0Rd__lFQOyAgAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA0nL0VyAA0N0VG_Qo__AA013RoundedBordernlM0VQo_AA14_PaddingLayoutVG_Qo_AA25_AppearanceActionModifierVGGA2_GMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type VStack<ModifiedContent<<<opaque return type of View.onSubmit(of:_:)>>.0, _AppearanceActionModifier>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA15ModifiedContentVyAA4ViewPAAE8onSubmit2of_QrAA0H8TriggersV_yyctFQOyAEyAgAE14textFieldStyleyQrqd__AA04TextlM0Rd__lFQOyAgAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA0nL0VyAA0N0VG_Qo__AA013RoundedBordernlM0VQo_AA14_PaddingLayoutVG_Qo_AA25_AppearanceActionModifierVGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<ModifiedContent<<<opaque return type of View.onSubmit(of:_:)>>.0, _AppearanceActionModifier>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA15NavigationStackVyAA0E4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAiAE29navigationBarTitleDisplayModeyQrAA0eM4ItemV0noP0OFQOyAiAE0lN0yQrqd__SyRd__lFQOyACyAA6VStackVyACyAiAE8onSubmit2of_QrAA0T8TriggersV_yyctFQOyACyAiAE14textFieldStyleyQrqd__AA04TextxY0Rd__lFQOyAiAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA0zX0VyAA0Z0VG_Qo__AA013RoundedBorderzxY0VQo_AA14_PaddingLayoutVG_Qo_AA25_AppearanceActionModifierVGGA15_G_SSQo__Qo__AA05TuplekD0VyAA0kQ0VyytAA012_ConditionalD0Vy8PaperKit20HeadlineCancelButtonVAA6ButtonVyA8_GGG_A28_yytA30_yACyA31_18HeadlineDoneButtonVAA32_EnvironmentKeyTransformModifierVySbGGACyAiAE06buttonY0yQrqd__AA015PrimitiveButtonY0Rd__lFQOyA36__AA023BorderedProminentButtonY0VQo_A43_GGGtGQo_GAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationStack<A, B>, &_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAgAE29navigationBarTitleDisplayModeyQrAA0cL4ItemV0mnO0OFQOyAgAE0kM0yQrqd__SyRd__lFQOyAA08ModifiedJ0VyAA6VStackVyARyAgAE8onSubmit2of_QrAA0T8TriggersV_yyctFQOyARyAgAE14textFieldStyleyQrqd__AA04TextxY0Rd__lFQOyAgAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA0zX0VyAA0Z0VG_Qo__AA013RoundedBorderzxY0VQo_AA14_PaddingLayoutVG_Qo_AA25_AppearanceActionModifierVGGA15_G_SSQo__Qo__AA05TupleiJ0VyAA0iP0VyytAA012_ConditionalJ0Vy8PaperKit20HeadlineCancelButtonVAA6ButtonVyA8_GGG_A28_yytA30_yARyA31_18HeadlineDoneButtonVAA32_EnvironmentKeyTransformModifierVySbGGARyAgAE06buttonY0yQrqd__AA015PrimitiveButtonY0Rd__lFQOyA36__AA023BorderedProminentButtonY0VQo_A43_GGGtGQo_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, _ShadowEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, _ShadowEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, _ShadowEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA15NavigationStackVyAA0E4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAiAE29navigationBarTitleDisplayModeyQrAA0eM4ItemV0noP0OFQOyAiAE0lN0yQrqd__SyRd__lFQOyACyAA6VStackVyACyAiAE8onSubmit2of_QrAA0T8TriggersV_yyctFQOyACyAiAE14textFieldStyleyQrqd__AA04TextxY0Rd__lFQOyAiAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA0zX0VyAA0Z0VG_Qo__AA013RoundedBorderzxY0VQo_AA14_PaddingLayoutVG_Qo_AA25_AppearanceActionModifierVGGA15_G_SSQo__Qo__AA05TuplekD0VyAA0kQ0VyytAA012_ConditionalD0Vy8PaperKit20HeadlineCancelButtonVAA6ButtonVyA8_GGG_A28_yytA30_yACyA31_18HeadlineDoneButtonVAA32_EnvironmentKeyTransformModifierVySbGGACyAiAE06buttonY0yQrqd__AA015PrimitiveButtonY0Rd__lFQOyA36__AA023BorderedProminentButtonY0VQo_A43_GGGtGQo_GAA12_FrameLayoutVGAA011_BackgroundY8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA13_ShadowEffectVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, _ShadowEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA15NavigationStackVyAA0E4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAiAE29navigationBarTitleDisplayModeyQrAA0eM4ItemV0noP0OFQOyAiAE0lN0yQrqd__SyRd__lFQOyACyAA6VStackVyACyAiAE8onSubmit2of_QrAA0T8TriggersV_yyctFQOyACyAiAE14textFieldStyleyQrqd__AA04TextxY0Rd__lFQOyAiAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA0zX0VyAA0Z0VG_Qo__AA013RoundedBorderzxY0VQo_AA14_PaddingLayoutVG_Qo_AA25_AppearanceActionModifierVGGA15_G_SSQo__Qo__AA05TuplekD0VyAA0kQ0VyytAA012_ConditionalD0Vy8PaperKit20HeadlineCancelButtonVAA6ButtonVyA8_GGG_A28_yytA30_yACyA31_18HeadlineDoneButtonVAA32_EnvironmentKeyTransformModifierVySbGGACyAiAE06buttonY0yQrqd__AA015PrimitiveButtonY0Rd__lFQOyA36__AA023BorderedProminentButtonY0VQo_A43_GGGtGQo_GAA12_FrameLayoutVGAA011_BackgroundY8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _ClipEffect<RoundedRectangle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA15NavigationStackVyAA0E4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAiAE29navigationBarTitleDisplayModeyQrAA0eM4ItemV0noP0OFQOyAiAE0lN0yQrqd__SyRd__lFQOyACyAA6VStackVyACyAiAE8onSubmit2of_QrAA0T8TriggersV_yyctFQOyACyAiAE14textFieldStyleyQrqd__AA04TextxY0Rd__lFQOyAiAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA0zX0VyAA0Z0VG_Qo__AA013RoundedBorderzxY0VQo_AA14_PaddingLayoutVG_Qo_AA25_AppearanceActionModifierVGGA15_G_SSQo__Qo__AA05TuplekD0VyAA0kQ0VyytAA012_ConditionalD0Vy8PaperKit20HeadlineCancelButtonVAA6ButtonVyA8_GGG_A28_yytA30_yACyA31_18HeadlineDoneButtonVAA32_EnvironmentKeyTransformModifierVySbGGACyAiAE06buttonY0yQrqd__AA015PrimitiveButtonY0Rd__lFQOyA36__AA023BorderedProminentButtonY0VQo_A43_GGGtGQo_GAA12_FrameLayoutVGAA011_BackgroundY8ModifierVyAA5ColorVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<HeadlineCancelButton, Button<Text>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<HeadlineCancelButton, Button<Text>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<HeadlineCancelButton, Button<Text>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy8PaperKit20HeadlineCancelButtonVAA0I0VyAA4TextVGGMd);
    lazy protocol witness table accessor for type HeadlineCancelButton and conformance HeadlineCancelButton();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<HeadlineCancelButton, Button<Text>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HeadlineCancelButton and conformance HeadlineCancelButton()
{
  result = lazy protocol witness table cache variable for type HeadlineCancelButton and conformance HeadlineCancelButton;
  if (!lazy protocol witness table cache variable for type HeadlineCancelButton and conformance HeadlineCancelButton)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeadlineCancelButton and conformance HeadlineCancelButton);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<HeadlineDoneButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<HeadlineDoneButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<HeadlineDoneButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy8PaperKit18HeadlineDoneButtonVAA32_EnvironmentKeyTransformModifierVySbGGAEyAA4ViewPAAE11buttonStyleyQrqd__AA09PrimitivejQ0Rd__lFQOyAA0J0VyAA4TextVG_AA017BorderedProminentjQ0VQo_AKGGMd);
    lazy protocol witness table accessor for type ModifiedContent<HeadlineDoneButton, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<HeadlineDoneButton, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HeadlineDoneButton, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HeadlineDoneButton, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HeadlineDoneButton, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy8PaperKit18HeadlineDoneButtonVAA32_EnvironmentKeyTransformModifierVySbGGMd);
    lazy protocol witness table accessor for type HeadlineDoneButton and conformance HeadlineDoneButton();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HeadlineDoneButton, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HeadlineDoneButton and conformance HeadlineDoneButton()
{
  result = lazy protocol witness table cache variable for type HeadlineDoneButton and conformance HeadlineDoneButton;
  if (!lazy protocol witness table cache variable for type HeadlineDoneButton and conformance HeadlineDoneButton)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeadlineDoneButton and conformance HeadlineDoneButton);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA32_EnvironmentKeyTransformModifierVySbGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
    type metadata accessor for BorderedProminentButtonStyle();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
    lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle(&lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, MEMORY[0x1E697CB70]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.isEnabled : EnvironmentValues, serialized@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.textFieldStyle<A>(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.textFieldStyle<A>(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.textFieldStyle<A>(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14textFieldStyleyQrqd__AA04TextgH0Rd__lFQOyAeAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA0iG0VyAA0I0VG_Qo__AA013RoundedBorderigH0VQo_AA14_PaddingLayoutVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA9TextFieldVyAA0H0VG_Qo_Md);
    type metadata accessor for RoundedBorderTextFieldStyle();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI9TextFieldVyAA0C0VGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TextField<Text> and conformance TextField<A>, &_s7SwiftUI9TextFieldVyAA0C0VGMd);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle(&lazy protocol witness table cache variable for type RoundedBorderTextFieldStyle and conformance RoundedBorderTextFieldStyle, MEMORY[0x1E697CA80]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.textFieldStyle<A>(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t objectdestroyTm_5()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle(unint64_t *a1, void (*a2)(uint64_t))
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

id partial apply for closure #2 in SignatureCreationViewController.showCustomLabelDialog()()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_customLabelDialogHostingController);
  if (result)
  {
    return [result dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

void specialized SignatureCreationViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_panelSize) = xmmword_1D4067410;
  *(v0 + OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_clearButtonBottomPadding) = 0x402C000000000000;
  *(v0 + OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_clearButtonImagePadding) = 0x4020000000000000;
  *(v0 + OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_signatureLineInset) = 0x4040000000000000;
  *(v0 + OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_signatureLinePadding) = 0x4028000000000000;
  *(v0 + OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_signatureMarkPadding) = 0x4020000000000000;
  v1 = OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_signatureLineColor;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.6 alpha:0.7];
  v2 = OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_buttonImageConfiguration;
  v3 = objc_opt_self();
  *(v0 + v2) = [v3 configurationWithScale_];
  v4 = OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_xmarkImageConfiguration;
  *(v0 + v4) = [v3 configurationWithPointSize:2 weight:3 scale:0.0];
  *(v0 + OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_signaturePenWidth) = 0x3FF0000000000000;
  v5 = OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_navigationBar;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x1E69DCCC0]) init];
  v6 = OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_signatureView;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x1E69783F8]) init];
  v7 = OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_signatureLineView;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *(v0 + OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_doneItem) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_clearButton) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_savedFirstResponder) = 0;
  v8 = (v0 + OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_signatureDescription);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v0 + OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_completion);
  *v9 = UnknownCanvasElementView.flags.modify;
  v9[1] = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_customLabelDialogHostingController) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized SignatureCreationViewController.doneAction(_:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v76 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v85 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for UUID();
  v84 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v88 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PKDrawing();
  v10 = *(v9 - 8);
  *&v11 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = *&v0[OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_signatureView];
  v14 = [v87 drawing];
  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = PKDrawing.strokes.getter();
  v83 = v10;
  v16 = *(v10 + 8);
  v16(v13, v9);
  v17 = *(v15 + 16);

  if (!v17)
  {
    if (one-time initialization token for SignatureLogger != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    __swift_project_value_buffer(v73, SignatureLogger);
    v72 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v72, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_1D38C4000, v72, v74, "signature creation with empty signature ignored", v75, 2u);
      MEMORY[0x1DA6D0660](v75, -1, -1);
    }

    goto LABEL_12;
  }

  v81 = v4;
  if (one-time initialization token for SignatureLogger != -1)
  {
    swift_once();
  }

  v82 = v9;
  v79 = v6;
  v80 = v5;
  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, SignatureLogger);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1D38C4000, v19, v20, "created signature", v21, 2u);
    MEMORY[0x1DA6D0660](v21, -1, -1);
  }

  v22 = &v1[OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_signatureDescription];
  v23 = *&v1[OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_signatureDescription];
  v24 = *&v1[OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_signatureDescription + 8];
  outlined copy of SignatureDescription(v23, v24);
  v25 = MEMORY[0x1DA6CCED0](0xD000000000000024, 0x80000001D4089B80);
  v26 = swift_allocObject();
  *(v26 + 16) = v23;
  *(v26 + 24) = v24;
  v94 = partial apply for closure #1 in static SignatureAnalytics.created(_:);
  v95 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v91 = 1107296256;
  v78 = &v92;
  v92 = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v93 = &block_descriptor_92_1;
  v27 = _Block_copy(&aBlock);
  v28 = v1;
  outlined copy of SignatureDescription(v23, v24);

  AnalyticsSendEventLazy();
  _Block_release(v27);

  outlined consume of SignatureDescription(v23, v24);
  v29 = v87;
  v30 = [v87 drawing];
  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

  PKDrawing.bounds.getter();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = v82;
  v16(v13, v82);
  v40 = [v1 view];
  if (v40)
  {
    v41 = v40;
    [v40 convertRect:v29 fromCoordinateSpace:{v32, v34, v36, v38}];
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;

    v96.origin.x = v43;
    v96.origin.y = v45;
    v96.size.width = v47;
    v96.size.height = v49;
    MaxY = CGRectGetMaxY(v96);
    [*&v1[OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_signatureLineView] frame];
    v51 = MaxY - CGRectGetMaxY(v97);
    v52 = v88;
    UUID.init()();
    v53 = v85;
    static Date.now.getter();
    v54 = *v22;
    v77 = v22[1];
    outlined copy of SignatureDescription(v54, v77);
    v76 = drawingPath #1 () in SignatureCreationViewController.doneAction(_:)(v1);
    v55 = [v29 drawing];
    v56 = v81;
    static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v83 + 56))(v56, 0, 1, v39);
    v57 = type metadata accessor for SignatureItem();
    v58 = objc_allocWithZone(v57);
    v59 = v84;
    v60 = v86;
    (*(v84 + 16))(&v58[OBJC_IVAR____TtC8PaperKit13SignatureItem_uniqueID], v52, v86);
    *&v58[OBJC_IVAR____TtC8PaperKit13SignatureItem_baselineOffset] = v51;
    v61 = OBJC_IVAR____TtC8PaperKit13SignatureItem_creationDate;
    v62 = v79;
    v63 = *(v79 + 16);
    v87 = v28;
    v64 = v80;
    v63(&v58[OBJC_IVAR____TtC8PaperKit13SignatureItem_creationDate], v53, v80);
    (*(v62 + 56))(&v58[v61], 0, 1, v64);
    v58[OBJC_IVAR____TtC8PaperKit13SignatureItem_shouldPersist] = 1;
    v65 = &v58[OBJC_IVAR____TtC8PaperKit13SignatureItem_signatureDescription];
    v66 = v77;
    *v65 = v54;
    v65[1] = v66;
    *&v58[OBJC_IVAR____TtC8PaperKit13SignatureItem_path] = v76;
    outlined init with copy of PKDrawing?(v56, &v58[OBJC_IVAR____TtC8PaperKit13SignatureItem_drawing]);
    v58[OBJC_IVAR____TtC8PaperKit13SignatureItem_isOwned] = 1;
    v89.receiver = v58;
    v89.super_class = v57;
    v67 = objc_msgSendSuper2(&v89, sel_init);
    outlined destroy of PKDrawing?(v56);
    (*(v62 + 8))(v53, v64);
    (*(v59 + 8))(v88, v60);
    type metadata accessor for SignatureManager();
    swift_initStaticObject();
    SignatureManager.saveSignature(_:)(v67);
    v68 = swift_allocObject();
    v69 = v87;
    *(v68 + 16) = v87;
    *(v68 + 24) = v67;
    v94 = partial apply for closure #1 in SignatureCreationViewController.doneAction(_:);
    v95 = v68;
    aBlock = MEMORY[0x1E69E9820];
    v91 = 1107296256;
    v92 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v93 = &block_descriptor_98;
    v70 = _Block_copy(&aBlock);
    v71 = v69;
    v72 = v67;

    [v71 dismissViewControllerAnimated:1 completion:v70];
    _Block_release(v70);
LABEL_12:

    return;
  }

  __break(1u);
}

void specialized SignatureCreationViewController.cancelAction(_:)()
{
  v1 = v0;
  if (one-time initialization token for SignatureLogger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, SignatureLogger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D38C4000, v3, v4, "cancelled creation", v5, 2u);
    MEMORY[0x1DA6D0660](v5, -1, -1);
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  v9[4] = partial apply for closure #1 in SignatureCreationViewController.cancelAction(_:);
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v9[3] = &block_descriptor_86_0;
  v7 = _Block_copy(v9);
  v8 = v1;

  [v8 dismissViewControllerAnimated:1 completion:v7];
  _Block_release(v7);
}

id specialized SignatureCreationViewController.canvasViewDrawingDidChange(_:)()
{
  v1 = v0;
  v2 = type metadata accessor for PKDrawing();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(v1 + OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_signatureView) drawing];
  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = PKDrawing.strokes.getter();
  (*(v3 + 8))(v6, v2);
  v9 = *(v8 + 16);

  result = *(v1 + OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_doneItem);
  if (result)
  {
    [result setEnabled_];
    result = *(v1 + OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_clearButton);
    if (result)
    {
      [result setEnabled_];
      return [*(v1 + OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_navigationBar) setNeedsLayout];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in SignatureCreationViewController.cancelAction(_:)()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_completion);

  v1(0);
}

uint64_t outlined destroy of PKDrawing?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in SignatureCreationViewController.doneAction(_:)()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_completion);

  v2(v1);
}

uint64_t Color.init(cgColor:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Color(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v6 + 20);
  v10 = type metadata accessor for UnknownValueProperties();
  (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
  if (a1)
  {
    v11 = a1;
    v12 = CGColorGetColorSpace(v11);
    if (one-time initialization token for extendedSRGBColorSpace != -1)
    {
      swift_once();
    }

    v13 = CFEqual(v12, static Color.extendedSRGBColorSpace);

    if (v13)
    {

LABEL_7:
      *v8 = v11;
      outlined init with copy of Color(v8, a2, type metadata accessor for Color);
      (*(v5 + 56))(a2, 0, 1, v4);
      return _s8PaperKit5ColorVWOhTm_0(v8, type metadata accessor for Color);
    }

    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(static Color.extendedSRGBColorSpace, kCGRenderingIntentDefault, v11, 0);

    v11 = CopyByMatchingToColorSpace;
    if (CopyByMatchingToColorSpace)
    {
      goto LABEL_7;
    }
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v8 + v9, &_s9Coherence22UnknownValuePropertiesVSgMd);
  return (*(v5 + 56))(a2, 1, 1, v4);
}

id Color.uiColor.getter()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x1E69DC888]);

  return [v2 initWithCGColor_];
}

void static Color.clear.getter(const CGFloat *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(type metadata accessor for Color(0) + 20);
  v5 = type metadata accessor for UnknownValueProperties();
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  v6 = CGColorCreate(static Color.extendedSRGBColorSpace, a1);
  if (v6)
  {
    v7 = v6;
    CGColorRef.calculateMinimumHeadroom.getter();
    v8 = CGColorCreateWithContentHeadroom();
    if (v8)
    {
      v9 = v8;

      *a2 = v9;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void key path setter for Color.cgColor : Color(CGColor **a1, id *a2)
{
  v3 = specialized static Color.validColor(from:)(*a1);
  if (v3)
  {
    v4 = v3;

    *a2 = v4;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void Color.cgColor.setter(CGColor *a1)
{
  v2 = a1;
  v3 = CGColorGetColorSpace(a1);
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  v4 = CFEqual(v3, static Color.extendedSRGBColorSpace);

  if (v4)
  {
    goto LABEL_6;
  }

  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(static Color.extendedSRGBColorSpace, kCGRenderingIntentDefault, v2, 0);
  if (CopyByMatchingToColorSpace)
  {
    v6 = CopyByMatchingToColorSpace;

    v2 = v6;
LABEL_6:

    *v1 = v2;
    return;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t Color.init(platformColor:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  *&v5 = MEMORY[0x1EEE9AC00](v4 - 8).n128_u64[0];
  v7 = &v12 - v6;
  Color.init(cgColor:)([a1 CGColor], &v12 - v6);

  v8 = type metadata accessor for Color(0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s8PaperKit5ColorVSgMd);
    v10 = 1;
  }

  else
  {
    outlined init with take of Color(v7, a2);
    v10 = 0;
  }

  return (*(v9 + 56))(a2, v10, 1, v8);
}

void CGColorRef.calculateMinimumHeadroom.getter()
{
  CGColorGetContentHeadroom();
  if (v1 <= 0.0)
  {
    v2 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0F0]);
    if (!v2)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v3 = v2;
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v2, kCGRenderingIntentDefault, v0, 0);

    if (!CopyByMatchingToColorSpace)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v5 = CGColorRef.components.getter();
    if (!v5)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (*(v5 + 16))
    {

      v6 = CGColorRef.components.getter();
      if (!v6)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      if (*(v6 + 16) >= 2uLL)
      {

        v7 = CGColorRef.components.getter();
        if (!v7)
        {
LABEL_19:
          __break(1u);
          return;
        }

        if (*(v7 + 16) >= 3uLL)
        {

          return;
        }

        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void (*Color.cgColor.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = *v1;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = v2;
  v3 = v2;
  return Color.cgColor.modify;
}

void Color.cgColor.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  if ((a2 & 1) == 0)
  {
    v8 = CGColorGetColorSpace(*a1);
    if (one-time initialization token for extendedSRGBColorSpace != -1)
    {
      swift_once();
    }

    v9 = CFEqual(v8, static Color.extendedSRGBColorSpace);

    if (v9)
    {
      v10 = *(a1 + 16);
    }

    else
    {
      CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(static Color.extendedSRGBColorSpace, kCGRenderingIntentDefault, v3, 0);
      if (!CopyByMatchingToColorSpace)
      {
        goto LABEL_18;
      }

      v14 = CopyByMatchingToColorSpace;

      v10 = v3;
      v3 = v14;
    }

    v15 = *(a1 + 8);

    *v15 = v3;
    return;
  }

  color = v3;
  v4 = CGColorGetColorSpace(color);
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  v5 = CFEqual(v4, static Color.extendedSRGBColorSpace);

  if (!v5)
  {
    v11 = CGColorCreateCopyByMatchingToColorSpace(static Color.extendedSRGBColorSpace, kCGRenderingIntentDefault, color, 0);
    if (v11)
    {
      v7 = v11;

      v6 = color;
      goto LABEL_12;
    }

LABEL_18:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v6 = *(a1 + 16);
  v7 = color;
LABEL_12:
  v12 = *(a1 + 8);

  *v12 = v7;
}

uint64_t Color.cgColorWithHeadroom(_:)(double a1)
{
  v3 = *v1;
  if (a1 <= 0.0)
  {
    return v3;
  }

  CGColorGetContentHeadroom();
  if (vabdd_f64(v4, a1) <= 0.01)
  {
    return v3;
  }

  v5 = CGColorGetColorSpace(v3);
  if (!v5)
  {
    return v3;
  }

  v6 = v5;
  result = CGColorRef.components.getter();
  if (!result)
  {
    v9 = v3;
LABEL_12:

    return v9;
  }

  v8 = *(result + 16);
  if (!v8)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v8 == 1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8 < 3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v8 != 3)
  {

    v9 = CGColorCreateWithContentHeadroom();

    v6 = v3;
    if (!v9)
    {
      return v3;
    }

    goto LABEL_12;
  }

LABEL_17:
  __break(1u);
  return result;
}

CGColorSpaceRef one-time initialization function for extendedSRGBColorSpace()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
  if (result)
  {
    static Color.extendedSRGBColorSpace = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void Color.init(red:green:blue:alpha:)(uint64_t *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v10 = *(type metadata accessor for Color(0) + 20);
  v11 = type metadata accessor for UnknownValueProperties();
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v16[0] = a2;
  v16[1] = a3;
  v16[2] = a4;
  v16[3] = a5;
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  v12 = CGColorCreate(static Color.extendedSRGBColorSpace, v16);
  if (v12)
  {
    v13 = v12;
    CGColorRef.calculateMinimumHeadroom.getter();
    v14 = CGColorCreateWithContentHeadroom();
    if (v14)
    {
      v15 = v14;

      *a1 = v15;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t Color.red.getter()
{
  result = CGColorRef.components.getter();
  if (result)
  {
    if (*(result + 16))
    {
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Color.green.getter()
{
  result = CGColorRef.components.getter();
  if (result)
  {
    if (*(result + 16) >= 2uLL)
    {
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Color.blue.getter()
{
  result = CGColorRef.components.getter();
  if (result)
  {
    if (*(result + 16) >= 3uLL)
    {
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Color.alpha.getter()
{
  result = CGColorRef.components.getter();
  if (result)
  {
    if (*(result + 16) >= 4uLL)
    {
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

double *Color.almostEqual(_:)()
{
  result = CGColorRef.components.getter();
  if (!result)
  {
    goto LABEL_30;
  }

  if (!*(result + 2))
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v1 = result[4];

  result = CGColorRef.components.getter();
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (!*(result + 2))
  {
    goto LABEL_23;
  }

  v2 = result[4];

  if (vabdd_f64(v1, v2) >= 0.01)
  {
    return 0;
  }

  result = CGColorRef.components.getter();
  if (!result)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (*(result + 2) < 2uLL)
  {
    goto LABEL_24;
  }

  v3 = result[5];

  result = CGColorRef.components.getter();
  if (!result)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (*(result + 2) < 2uLL)
  {
    goto LABEL_25;
  }

  v4 = result[5];

  if (vabdd_f64(v3, v4) >= 0.01)
  {
    return 0;
  }

  result = CGColorRef.components.getter();
  if (!result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (*(result + 2) < 3uLL)
  {
    goto LABEL_26;
  }

  v5 = result[6];

  result = CGColorRef.components.getter();
  if (!result)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (*(result + 2) < 3uLL)
  {
    goto LABEL_27;
  }

  v6 = result[6];

  if (vabdd_f64(v5, v6) >= 0.01)
  {
    return 0;
  }

  result = CGColorRef.components.getter();
  if (!result)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (*(result + 2) < 4uLL)
  {
    goto LABEL_28;
  }

  v7 = result[7];

  result = CGColorRef.components.getter();
  if (result)
  {
    if (*(result + 2) >= 4uLL)
    {
      v8 = result[7];

      return (vabdd_f64(v7, v8) < 0.01);
    }

    goto LABEL_29;
  }

LABEL_37:
  __break(1u);
  return result;
}

void static Color.random()(uint64_t *a1@<X8>)
{
  v2 = vcvtd_n_f64_u64(specialized RandomNumberGenerator.next<A>(upperBound:)(0x20000000000001uLL), 0x35uLL) + 0.0;
  v3 = vcvtd_n_f64_u64(specialized RandomNumberGenerator.next<A>(upperBound:)(0x20000000000001uLL), 0x35uLL) + 0.0;
  v4 = vcvtd_n_f64_u64(specialized RandomNumberGenerator.next<A>(upperBound:)(0x20000000000001uLL), 0x35uLL) + 0.0;
  v5 = *(type metadata accessor for Color(0) + 20);
  v6 = type metadata accessor for UnknownValueProperties();
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v11[0] = v2;
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = 1.0;
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  v7 = CGColorCreate(static Color.extendedSRGBColorSpace, v11);
  if (v7)
  {
    v8 = v7;
    CGColorRef.calculateMinimumHeadroom.getter();
    v9 = CGColorCreateWithContentHeadroom();
    if (v9)
    {
      v10 = v9;

      *a1 = v10;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t Color.init(from:)@<X0>(uint64_t a1@<X8>)
{
  v30 = type metadata accessor for CRValueColor(0);
  MEMORY[0x1EEE9AC00](v30);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for Color(0);
  MEMORY[0x1EEE9AC00](v32);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v27 - v8);
  dispatch thunk of CRDecoder.valueContainer()();
  if (!v1)
  {
    v23 = dispatch thunk of CRDecoder.CRValueContainer.decode(_:)();
    v25 = v24;

    Color.init(dataRepresentation:)(v23, v25, v9);

    return outlined init with take of Color(v9, a1);
  }

  CRValueColor.init(from:)(v10, v4);
  v29 = a1;
  v11 = *v4;
  v12 = *(v4 + 1);
  v13 = *(v4 + 2);
  v14 = *(v4 + 3);
  v15 = *(v32 + 20);
  v16 = type metadata accessor for UnknownValueProperties();
  v17 = *(v16 - 8);
  v27 = *(v17 + 56);
  v28 = v16;
  v27(v6 + v15, 1, 1);
  v31[0] = v11;
  v31[1] = v12;
  v31[2] = v13;
  v31[3] = v14;
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  result = CGColorCreate(static Color.extendedSRGBColorSpace, v31);
  if (result)
  {
    v18 = result;
    CGColorRef.calculateMinimumHeadroom.getter();
    result = CGColorCreateWithContentHeadroom();
    if (result)
    {
      v19 = result;

      *v6 = v19;
      v20 = v29;
      outlined init with take of Color(v6, v29);
      v21 = *(v32 + 20);
      outlined destroy of StocksKitCurrencyCache.Provider?(v20 + v21, &_s9Coherence22UnknownValuePropertiesVSgMd);
      v22 = v28;
      (*(v17 + 32))(v20 + v21, &v4[*(v30 + 32)], v28);
      return (v27)(v20 + v21, 0, 1, v22);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void Color.init(dataRepresentation:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v64 = *MEMORY[0x1E69E9840];
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
LABEL_22:
      v20 = type metadata accessor for CRCodingError();
      lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError, MEMORY[0x1E6995198]);
      swift_allocError();
      *v21 = 0x6F6C6F6320646142;
      v21[1] = 0xEA00000000002E72;
      (*(*(v20 - 8) + 104))(v21, *MEMORY[0x1E6995188], v20);
      swift_willThrow();
      outlined consume of Data._Representation(a1, a2);
      return;
    }

    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    v9 = __OFSUB__(v7, v8);
    v10 = v7 - v8;
    if (!v9)
    {
      if (v10 == 16)
      {
        goto LABEL_8;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v6)
  {
    goto LABEL_20;
  }

  if (BYTE6(a2) != 16)
  {
    goto LABEL_22;
  }

LABEL_8:
  while (v6 != 2)
  {
    if (v6 != 1)
    {
      goto LABEL_33;
    }

    if (a1 >> 32 < a1)
    {
      goto LABEL_61;
    }

    v11 = __DataStorage._bytes.getter();
    if (!v11)
    {
      goto LABEL_51;
    }

    v12 = v11;
    v13 = __DataStorage._offset.getter();
    if (__OFSUB__(a1, v13))
    {
      goto LABEL_63;
    }

    v14 = (a1 - v13 + v12);
    v15 = MEMORY[0x1DA6C8120]();
    if (!v14)
    {
      goto LABEL_52;
    }

    v16 = v15 >= (a1 >> 32) - a1 ? (a1 >> 32) - a1 : v15;
    if ((v16 + 3) < 7)
    {
      goto LABEL_52;
    }

    v17 = v16 / 4;
    v18 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt32V_Tt1g5(v16 / 4, 0);
    specialized UnsafeBufferPointer._copyContents(initializing:)(v18 + 4, v17, v14, v17);
    if (v19 == v17)
    {
      goto LABEL_35;
    }

    __break(1u);
LABEL_20:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_60;
    }

    if (HIDWORD(a1) - a1 != 16)
    {
      goto LABEL_22;
    }
  }

  v22 = *(a1 + 16);
  v23 = *(a1 + 24);
  v24 = __DataStorage._bytes.getter();
  if (v24)
  {
    v25 = v24;
    v26 = __DataStorage._offset.getter();
    if (!__OFSUB__(v22, v26))
    {
      v27 = (v22 - v26 + v25);
      v9 = __OFSUB__(v23, v22);
      v28 = v23 - v22;
      if (!v9)
      {
        goto LABEL_26;
      }

LABEL_50:
      __break(1u);
LABEL_51:
      MEMORY[0x1DA6C8120]();
      goto LABEL_52;
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
  }

  v27 = 0;
  v9 = __OFSUB__(v23, v22);
  v28 = v23 - v22;
  if (v9)
  {
    goto LABEL_50;
  }

LABEL_26:
  v29 = MEMORY[0x1DA6C8120]();
  if (!v27)
  {
    goto LABEL_52;
  }

  v30 = v29 >= v28 ? v28 : v29;
  if ((v30 + 3) < 7)
  {
    goto LABEL_52;
  }

  v31 = v30 / 4;
  v18 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt32V_Tt1g5(v30 / 4, 0);
  specialized UnsafeBufferPointer._copyContents(initializing:)(v18 + 4, v31, v27, v31);
  if (v32 == v31)
  {
    goto LABEL_35;
  }

  __break(1u);
LABEL_33:
  __src = a1;
  v54 = a2;
  v55 = BYTE2(a2);
  v56 = BYTE3(a2);
  v57 = BYTE4(a2);
  v33 = (a2 >> 50) & 0x3F;
  v58 = BYTE5(a2);
  if (!v33)
  {
LABEL_52:
    v18 = MEMORY[0x1E69E7CC0];
    v34 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v34)
    {
      goto LABEL_36;
    }

LABEL_53:

    v36 = MEMORY[0x1E69E7CC0];
    v40 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v40)
    {
      goto LABEL_41;
    }

LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v18 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt32V_Tt1g5((a2 >> 50) & 0x3F, 0);
  memcpy(v18 + 4, &__src, 4 * v33);
LABEL_35:
  v34 = v18[2];
  if (!v34)
  {
    goto LABEL_53;
  }

LABEL_36:
  v52 = a3;
  __src = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34, 0);
  v35 = 32;
  v36 = __src;
  do
  {
    LODWORD(v37) = _OSSwapInt32(*(v18 + v35));
    __src = v36;
    v39 = *(v36 + 2);
    v38 = *(v36 + 3);
    if (v39 >= v38 >> 1)
    {
      v51 = v37;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
      v37 = v51;
      v36 = __src;
    }

    *(v36 + 2) = v39 + 1;
    *&v36[8 * v39 + 32] = v37;
    v35 += 4;
    --v34;
  }

  while (v34);

  a3 = v52;
  v40 = *(v36 + 2);
  if (!v40)
  {
    goto LABEL_54;
  }

LABEL_41:
  if (v40 == 1)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v40 < 3)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v40 != 3)
  {
    v41 = *(v36 + 4);
    v42 = *(v36 + 5);
    v43 = *(v36 + 6);
    v44 = *(v36 + 7);

    v45 = *(type metadata accessor for Color(0) + 20);
    v46 = type metadata accessor for UnknownValueProperties();
    (*(*(v46 - 8) + 56))(a3 + v45, 1, 1, v46);
    v36 = &v59;
    v60 = v41;
    v61 = v42;
    v62 = v43;
    v63 = v44;
    if (one-time initialization token for extendedSRGBColorSpace == -1)
    {
      goto LABEL_45;
    }

    goto LABEL_58;
  }

LABEL_57:
  __break(1u);
LABEL_58:
  swift_once();
LABEL_45:
  v47 = CGColorCreate(static Color.extendedSRGBColorSpace, v36 + 4);
  if (v47)
  {
    v48 = v47;
    CGColorRef.calculateMinimumHeadroom.getter();
    v49 = CGColorCreateWithContentHeadroom();
    if (v49)
    {
      v50 = v49;
      outlined consume of Data._Representation(a1, a2);

      *a3 = v50;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t CRValueColor.init(from:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v59 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd);
  v70 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v59 - v12;
  v14 = type metadata accessor for UnknownValueProperties();
  v71 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = *(type metadata accessor for CRValueColor(0) + 32);
  v73 = a2;
  UnknownValueProperties.init()();
  v17 = dispatch thunk of CRDecoder.keyedValueContainer()();
  if (v2)
  {

    v18 = v73;
    v19 = v14;
    return (*(v71 + 8))(&v18[v72], v19);
  }

  else
  {
    v65 = v13;
    v66 = v10;
    v68 = v7;
    v69 = a1;
    v20 = v70;
    v67 = v16;
    v21 = v17;
    v22 = 0;
    if (dispatch thunk of CRDecoder.CRValueKeyedContainer.decoder(forKey:)())
    {
      dispatch thunk of CRDecoder.valueContainer()();
      v23 = v73;
      v24 = v14;
      dispatch thunk of CRDecoder.CRValueContainer.decode(_:)();
      v26 = v25;
    }

    else
    {
      v26 = 0;
      v23 = v73;
      v24 = v14;
    }

    *v23 = v26;
    if (dispatch thunk of CRDecoder.CRValueKeyedContainer.decoder(forKey:)())
    {
      dispatch thunk of CRDecoder.valueContainer()();
      dispatch thunk of CRDecoder.CRValueContainer.decode(_:)();
      v22 = v27;
    }

    *(v23 + 1) = v22;
    v28 = 0;
    if (dispatch thunk of CRDecoder.CRValueKeyedContainer.decoder(forKey:)())
    {
      dispatch thunk of CRDecoder.valueContainer()();
      dispatch thunk of CRDecoder.CRValueContainer.decode(_:)();
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    *(v23 + 2) = v30;
    if (dispatch thunk of CRDecoder.CRValueKeyedContainer.decoder(forKey:)())
    {
      dispatch thunk of CRDecoder.valueContainer()();
      dispatch thunk of CRDecoder.CRValueContainer.decode(_:)();
      v28 = v58;
      v59 = v24;
    }

    else
    {
      v59 = v24;
    }

    *(v23 + 3) = v28;
    v64 = v21;
    v32 = dispatch thunk of CRDecoder.CRValueKeyedContainer.allKeys()();
    v33 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SaySiGTt0g5Tf4g_n(v32);

    v75 = v33;
    specialized Set._Variant.remove(_:)(0);
    specialized Set._Variant.remove(_:)(1);
    specialized Set._Variant.remove(_:)(2);
    specialized Set._Variant.remove(_:)(3);
    v34 = v75;
    v35 = v75 + 56;
    v36 = 1 << *(v75 + 32);
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v38 = v37 & *(v75 + 56);
    v39 = (v36 + 63) >> 6;
    v61 = (v20 + 56);

    v60 = MEMORY[0x1E69E7CC0];
    v62 = v39;
    v63 = v35;
    v40 = 0;
    if (v38)
    {
      while (1)
      {
        v41 = v40;
LABEL_22:
        v42 = __clz(__rbit64(v38));
        v38 &= v38 - 1;
        v43 = *(*(v34 + 48) + ((v41 << 9) | (8 * v42)));
        if (dispatch thunk of CRDecoder.CRValueKeyedContainer.decoder(forKey:)())
        {
          v45 = v68;
          *v68 = v43;
          AnyCRValue.init(from:)();
          (*v61)(v45, 0, 1, v8);
          v46 = v45;
          v47 = v65;
          outlined init with take of (Int, AnyCRValue)(v46, v65);
          outlined init with take of (Int, AnyCRValue)(v47, v66);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v60[2] + 1, 1, v60);
          }

          v23 = v73;
          v48 = v20;
          v50 = v60[2];
          v49 = v60[3];
          v51 = v66;
          if (v50 >= v49 >> 1)
          {
            v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v49 > 1, v50 + 1, 1, v60);
            v48 = v20;
            v60 = v53;
            v51 = v66;
          }

          v52 = v60;
          v60[2] = v50 + 1;
          outlined init with take of (Int, AnyCRValue)(v51, v52 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v50);
          v39 = v62;
          v35 = v63;
          v40 = v41;
          if (!v38)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v44 = v68;
          (*v61)(v68, 1, 1, v8);
          outlined destroy of StocksKitCurrencyCache.Provider?(v44, &_sSi_9Coherence10AnyCRValueVtSgMd);
          v40 = v41;
          v39 = v62;
          v35 = v63;
          if (!v38)
          {
            goto LABEL_19;
          }
        }
      }
    }

    while (1)
    {
LABEL_19:
      v41 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        __break(1u);

        v19 = v59;
        v18 = v73;
        return (*(v71 + 8))(&v18[v72], v19);
      }

      if (v41 >= v39)
      {
        break;
      }

      v38 = *(v35 + 8 * v41);
      ++v40;
      if (v38)
      {
        goto LABEL_22;
      }
    }

    v54 = v60;
    if (v60[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi9Coherence10AnyCRValueVGMd);
      v55 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v55 = MEMORY[0x1E69E7CC8];
    }

    v56 = v59;
    v74 = v55;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v54, 1, &v74);
    v57 = v67;
    UnknownValueProperties.init(_:)();

    return (*(v71 + 40))(&v23[v72], v57, v56);
  }
}

void *Color.encode(to:)()
{
  v20 = type metadata accessor for CRValueColor(0);
  MEMORY[0x1EEE9AC00](v20);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence22UnknownValuePropertiesVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for UnknownValueProperties();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Color(0);
  outlined init with copy of Date?(v0 + *(v10 + 20), v5, &_s9Coherence22UnknownValuePropertiesVSgMd);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s9Coherence22UnknownValuePropertiesVSgMd);
    v11 = Color.dataRepresentation.getter();
    v13 = v12;
    Data.encode(to:)();
    return outlined consume of Data._Representation(v11, v13);
  }

  (*(v7 + 32))(v9, v5, v6);
  result = CGColorRef.components.getter();
  if (!result)
  {
    goto LABEL_16;
  }

  if (!result[2])
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = result[4];

  result = CGColorRef.components.getter();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (result[2] < 2uLL)
  {
    goto LABEL_13;
  }

  v16 = result[5];

  result = CGColorRef.components.getter();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (result[2] < 3uLL)
  {
    goto LABEL_14;
  }

  v17 = result[6];

  result = CGColorRef.components.getter();
  if (result)
  {
    if (result[2] >= 4uLL)
    {
      v18 = result[7];

      (*(v7 + 16))(&v2[*(v20 + 32)], v9, v6);
      *v2 = v15;
      *(v2 + 1) = v16;
      *(v2 + 2) = v17;
      *(v2 + 3) = v18;
      CRValueColor.encode(to:)();
      _s8PaperKit5ColorVWOhTm_0(v2, type metadata accessor for CRValueColor);
      return (*(v7 + 8))(v9, v6);
    }

    goto LABEL_15;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t CRValueColor.encode(to:)()
{
  result = dispatch thunk of CREncoder.keyedValueContainer()();
  if (!v0)
  {
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    dispatch thunk of CREncoder.CRValueKeyedContainer.encode<A>(_:forKey:encodeDefaultValues:)();
    dispatch thunk of CREncoder.CRValueKeyedContainer.encode<A>(_:forKey:encodeDefaultValues:)();
    dispatch thunk of CREncoder.CRValueKeyedContainer.encode<A>(_:forKey:encodeDefaultValues:)();
    dispatch thunk of CREncoder.CRValueKeyedContainer.encode<A>(_:forKey:encodeDefaultValues:)();
    type metadata accessor for CRValueColor(0);
    UnknownValueProperties.encode(to:)();
  }

  return result;
}

uint64_t Color.dataRepresentation.getter()
{
  result = CGColorGetNumberOfComponents(*v0);
  if (result != 4)
  {
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = CGColorRef.components.getter();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!*(result + 16))
  {
    goto LABEL_12;
  }

  v2 = *(result + 32);

  *&v3 = v2;
  v10[0] = _OSSwapInt32(v3);
  result = CGColorRef.components.getter();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (*(result + 16) < 2uLL)
  {
    goto LABEL_13;
  }

  v4 = *(result + 40);

  *&v5 = v4;
  v10[1] = _OSSwapInt32(v5);
  result = CGColorRef.components.getter();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (*(result + 16) < 3uLL)
  {
    goto LABEL_14;
  }

  v6 = *(result + 48);

  *&v7 = v6;
  v10[2] = _OSSwapInt32(v7);
  result = CGColorRef.components.getter();
  if (result)
  {
    if (*(result + 16) >= 4uLL)
    {
      v8 = *(result + 56);

      *&v9 = v8;
      v10[3] = _OSSwapInt32(v9);
      return _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v10, &v11);
    }

    goto LABEL_15;
  }

LABEL_19:
  __break(1u);
  return result;
}

void Color.withAlphaComponent(_:)(uint64_t *a1@<X8>, double a2@<D0>)
{
  v5 = *v2;
  v6 = CGColorRef.components.getter();
  if (!v6)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (!*(v6 + 16))
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(v6 + 32);

  v8 = CGColorRef.components.getter();
  if (!v8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (*(v8 + 16) < 2uLL)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = *(v8 + 40);

  v10 = CGColorRef.components.getter();
  if (!v10)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (*(v10 + 16) >= 3uLL)
  {
    v11 = *(v10 + 48);

    v12 = *(type metadata accessor for Color(0) + 20);
    v13 = type metadata accessor for UnknownValueProperties();
    (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
    v5 = v18;
    v18[4] = v7;
    v18[5] = v9;
    v18[6] = v11;
    *&v18[7] = a2;
    if (one-time initialization token for extendedSRGBColorSpace == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  swift_once();
LABEL_8:
  v14 = CGColorCreate(static Color.extendedSRGBColorSpace, v5 + 4);
  if (!v14)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = v14;
  CGColorRef.calculateMinimumHeadroom.getter();
  v16 = CGColorCreateWithContentHeadroom();
  if (v16)
  {
    v17 = v16;

    *a1 = v17;
    return;
  }

LABEL_19:
  __break(1u);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Color.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Color.CodingKeys()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Color.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Color.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Color.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Color.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 6579570;
  v4 = 0xE400000000000000;
  v5 = 1702194274;
  if (*v1 != 2)
  {
    v5 = 0x6168706C61;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6E65657267;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Color.CodingKeys()
{
  v1 = 6579570;
  v2 = 1702194274;
  if (*v0 != 2)
  {
    v2 = 0x6168706C61;
  }

  if (*v0)
  {
    v1 = 0x6E65657267;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}