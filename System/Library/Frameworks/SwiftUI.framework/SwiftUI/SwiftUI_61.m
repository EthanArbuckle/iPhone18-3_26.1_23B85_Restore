uint64_t ScrollViewBehavior.dispatchPhase(_:node:)(uint64_t result, uint64_t a2)
{
  v4 = *result;
  v6 = *(result + 16);
  v5 = *(result + 24);
  v7 = *(result + 32);
  if (*(result + 48) > 1u)
  {
    if (*(result + 48) != 2)
    {
LABEL_10:
      v56 = 0uLL;
      *&v57 = 0;
      *(&v57 + 1) = 0x3FFFFFFFCLL;
      v58 = 0uLL;
      return ScrollViewBehavior.stopDragging(value:node:)(&v56, a2);
    }

    v56 = *result;
    *&v57 = v6;
    *(&v57 + 1) = v5;
    v58 = v7;
    return ScrollViewBehavior.stopDragging(value:node:)(&v56, a2);
  }

  if (!*(result + 48))
  {
    if (v5 >> 2 == 0xFFFFFFFF)
    {
      v8 = *(v2 + 66);
      if (v8 > 0x3F)
      {
        return result;
      }

      if (v8)
      {
        return result;
      }

      result = swift_beginAccess();
      if (*(a2 + 296) != 1)
      {
        return result;
      }

      goto LABEL_10;
    }

    v25 = *(v2 + 66);
    if (v25 >> 6)
    {
      return result;
    }

    v46 = *result;
    v49 = *(result + 32);
    v43 = *(v2 + 16);
    v44 = *v2;
    v26 = *(v2 + 64);
    swift_beginAccess();
    if (*(a2 + 296) != 1)
    {
      v36 = v26 & 0x1000101 | (v25 << 16) & 0x1010101;
      v37 = *(v2 + 48);
      v58 = *(v2 + 32);
      *v59 = v37;
      *&v59[15] = *(v2 + 63);
      v38 = *(v2 + 16);
      v56 = *v2;
      v57 = v38;
      result = outlined destroy of ScrollViewBehavior.Phase(&v56);
      v39.i64[0] = vdupq_laneq_s64(v46, 1).u64[0];
      *v2 = v44;
      *(v2 + 16) = v43;
      *&v39.i64[1] = v6;
      v40 = vdup_n_s32(v5 >= 0);
      v41.i64[0] = v40.u32[0];
      v41.i64[1] = v40.u32[1];
      v42 = vcltzq_s64(vshlq_n_s64(v41, 0x3FuLL));
      *(v2 + 32) = vbslq_s8(v42, v39, v46);
      *(v2 + 48) = vandq_s8(v49, v42);
      *(v2 + 66) = BYTE2(v36);
      *(v2 + 64) = v36;
      ++*(v2 + 68);
      return result;
    }

    v56 = v46;
    *&v57 = v6;
    *(&v57 + 1) = v5;
    v58 = v49;
    return ScrollViewBehavior.stopDragging(value:node:)(&v56, a2);
  }

  v9 = *(v2 + 48);
  v54 = *(v2 + 32);
  *v55 = v9;
  *&v55[15] = *(v2 + 63);
  v10 = *(v2 + 16);
  v52 = *v2;
  v53 = v10;
  v11 = *(&v54 + 1);
  if (v55[18] >> 6)
  {
    v45 = v4;
    if (v55[18] >> 6 == 1 && *(&v54 + 1))
    {
      v12 = *v55;
      v13 = swift_allocObject();
      *(v13 + 16) = *(&v54 + 1);
      *(v13 + 24) = v12;
      v14 = swift_allocObject();
      *(v14 + 16) = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
      *(v14 + 24) = v13;
      v15 = swift_allocObject();
      *(v15 + 16) = thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ())partial apply;
      *(v15 + 24) = v14;
      LOBYTE(v50[0]) = 17;
      v16 = swift_allocObject();
      *(v16 + 16) = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
      *(v16 + 24) = v15;
      *(v16 + 32) = 0;
      outlined init with copy of ScrollViewBehavior.Phase(&v52, &v56);
      outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v11, v12);

      static Update.enqueueAction(reason:_:)();

      outlined destroy of ScrollViewBehavior.Phase(&v52);
    }

    ScrollViewBehavior.reloadContainers(node:)(a2);
    swift_beginAccess();
    v17 = ScrollViewNode.removeRubberBanding(_:)(specialized static ScrollViewSupport.removeRubberBandingFromResidue(_:range:), *(a2 + 64), *(a2 + 72));
    v19 = 0;
    if (v5 < 0)
    {
      v20 = v17 - *v45.i64;
    }

    else
    {
      v20 = v17;
    }

    if (v5 < 0)
    {
      v21 = v18 - *&v45.i64[1];
    }

    else
    {
      v21 = v18;
    }

    v48 = *(a2 + 64);
    if (v5 < 0)
    {
      v22 = *v45.i64;
    }

    else
    {
      v22 = *&v45.i64[1];
    }

    if (v5 < 0)
    {
      v23 = *&v45.i64[1];
    }

    else
    {
      v23 = v6;
    }

    v24 = 0uLL;
  }

  else
  {
    v19 = *&v55[16] | (v55[18] << 16);
    v48 = v53;
    if (v5 < 0)
    {
      v22 = *v4.i64;
    }

    else
    {
      v22 = *&v4.i64[1];
    }

    if (v5 < 0)
    {
      v23 = *&v4.i64[1];
    }

    else
    {
      v23 = v6;
    }

    v20 = *v52.i64 - (v22 - *&v54);
    v21 = *&v52.i64[1] - (v23 - *(&v54 + 1));
    v27 = vdup_n_s32(v5 >= 0);
    v28.i64[0] = v27.u32[0];
    v28.i64[1] = v27.u32[1];
    v24 = vandq_s8(v7, vcltzq_s64(vshlq_n_s64(v28, 0x3FuLL)));
  }

  v47 = v24;
  if (v22 != 0.0)
  {
    v19 |= 0x100u;
  }

  v29 = BYTE2(v19) & 1;
  v30 = v19 & 0x101 | (v23 != 0.0);
  v31 = *(v2 + 48);
  v50[2] = *(v2 + 32);
  *v51 = v31;
  *&v51[15] = *(v2 + 63);
  v32 = *(v2 + 16);
  v50[0] = *v2;
  v50[1] = v32;
  outlined destroy of ScrollViewBehavior.Phase(v50);
  *v2 = v20;
  *(v2 + 8) = v21;
  *(v2 + 16) = v48;
  *(v2 + 32) = v22;
  *(v2 + 40) = v23;
  *(v2 + 48) = v47;
  *(v2 + 66) = v29;
  *(v2 + 64) = v30;
  ++*(v2 + 68);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v20 = ScrollViewBehavior.overflowContentOffset(_:node:)(a2, v20, v21);
    v21 = v33;
  }

  ScrollViewNode.bindingSafeOffset(_:)();
  *v56.i64 = v20;
  *&v56.i64[1] = v21;
  *&v57 = v34;
  *(&v57 + 1) = v35;
  *&v59[8] = 0;
  return ScrollViewNode.commitScrollTransaction(_:value:)(&v56, v34, v35);
}

uint64_t ScrollViewBehavior.stopDragging(value:node:)(uint64_t result, uint64_t a2)
{
  if (!(*(v2 + 66) >> 6))
  {
    v4 = *(result + 24);
    v5 = *(result + 32);
    v6 = *(result + 40);
    v7 = *(v2 + 2);
    v8 = *(v2 + 3);
    v40 = *(v2 + 5);
    v41 = *(v2 + 4);
    v9 = *(v2 + 32) | (*(v2 + 66) << 16);
    v38 = *(v2 + 7);
    v39 = *(v2 + 6);
    if (v4 < 0)
    {
      v5 = 0.0;
      v6 = 0.0;
    }

    if (v4 >> 2 == 0xFFFFFFFF)
    {
      v5 = *(v2 + 6);
    }

    v37 = v5;
    if (v4 >> 2 == 0xFFFFFFFF)
    {
      v10 = *(v2 + 7);
    }

    else
    {
      v10 = v6;
    }

    v42 = *(v2 + 1);
    v43 = *v2;
    v36 = *v2;
    v11 = *(a2 + 368);
    swift_beginAccess();

    v12 = CGSize.inset(by:)();
    v11(v12, v36, v42, v7, v8, v37, v10, v13, v14);
    v16 = v15;

    if (v16)
    {
      v17 = v2[2];
      v18 = *v2;
      v51 = v2[1];
      v52 = v17;
      v19 = v2[2];
      v20 = v2[4];
      v53[0] = v2[3];
      v53[1] = v20;
      v21 = *v2;
      v47 = v19;
      v48 = v53[0];
      v49 = v2[4];
      v50 = v21;
      v45 = v18;
      v46 = v51;
      swift_beginAccess();
      ScrollViewBehavior.estimatedDeceleration(from:node:)(a2);
      v56 = v47;
      v57 = v53[0];
      v58 = v49;
      v54 = v45;
      v55 = v51;
      outlined init with copy of ScrollViewBehavior(&v50, v44);
      outlined destroy of ScrollViewBehavior(&v54);
      y = 0.0;
      x = 0.0;
    }

    else
    {
      v24 = *(a2 + 336);
      v25 = *(a2 + 344);
      CGSize.inset(by:)();
      v27 = v24 - v26;
      CGSize.inset(by:)();
      if (v27 < 0.0)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = v27;
      }

      if (v25 - v28 < 0.0)
      {
        v30 = 0.0;
      }

      else
      {
        v30 = v25 - v28;
      }

      v31 = CGPoint.clamp(min:max:)(0, __PAIR128__(*&v30, *&v29));
      x = v31.x;
      y = v31.y;
    }

    v32 = v2[3];
    v52 = v2[2];
    v53[0] = v32;
    *(v53 + 15) = *(v2 + 63);
    v33 = v2[1];
    v50 = *v2;
    v51 = v33;
    outlined destroy of ScrollViewBehavior.Phase(&v50);
    *v2 = v43;
    *(v2 + 1) = v42;
    *(v2 + 2) = v7;
    *(v2 + 3) = v8;
    *(v2 + 4) = v41;
    *(v2 + 5) = v40;
    *(v2 + 6) = v39;
    *(v2 + 7) = v38;
    *(v2 + 66) = (v9 & 0x1000101 | 0x10000u) >> 16;
    *(v2 + 32) = v9 & 0x101;
    ScrollViewNode.bindingSafeOffset(_:)();
    LOBYTE(v45) = v16 & 1;
    v44[0] = 0;
    *&v54 = x;
    *(&v54 + 1) = y;
    *&v55 = v16 & 1;
    *(&v55 + 1) = v34;
    *&v56 = v35;
    *(&v56 + 1) = -v37;
    *&v57 = -v10;
    v58 = 0uLL;
    *(&v57 + 1) = 0x8000000000000000;
    return ScrollViewNode.commitScrollTransaction(_:value:)(&v54, v34, v35);
  }

  return result;
}

void ScrollViewBehavior.estimatedDeceleration(from:node:)(uint64_t a1)
{
  v2 = *(v1 + 56);
  if (*(v1 + 66) >> 6)
  {
    if (*(v1 + 66) >> 6 != 1 || (*(v1 + 16) & 1) == 0)
    {
      return;
    }

    if (*(v2 + 16) < 2uLL)
    {
      __break(1u);
      return;
    }

    v3 = *(v2 + 48);
    v4 = *(v2 + 136);
  }

  else
  {
    *&v4 = v2 ^ 0x8000000000000000;
    v3 = -*(v1 + 48);
  }

  swift_beginAccess();
  v6 = *(a1 + 240);
  v7 = fabs(v3);
  if (v7 <= 0.00001)
  {
    v9 = fabs(v4);
    if (v9 <= 0.00001)
    {
      return;
    }

    v8 = 1.0 - v6;
  }

  else
  {
    v8 = 1.0 - v6;
    copysign((-2.5 / v7 + 1.0) * (v7 * 0.001 * v6) / (1.0 - v6), v3);
    v9 = fabs(v4);
    if (v9 <= 0.00001)
    {
      return;
    }
  }

  copysign(v6 * (v9 * 0.001) * (-2.5 / v9 + 1.0) / v8, v4);
}

uint64_t ScrollViewBehavior.updateDeceleration(node:target:velocity:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  v11 = v9;
  v17 = a9;
  v18 = v9[4].u16[0] | (v9[4].u8[2] << 16);
  if ((v18 & 0xC00000) == 0x800000)
  {
    v19 = vorrq_s8(vorrq_s8(*v9, v9[2]), vorrq_s8(v9[1], v9[3]));
    v20 = vorr_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL));
    if (v18 == 0x800000 && *&v20 == 0)
    {
      if ((a4 & 1) != 0 || ((v10 = *&a2, v53 = a4, swift_beginAccess(), a4 = v53, *(a1 + 64) == *&a2) ? (v54 = *(a1 + 72) == *&a3) : (v54 = 0), v54))
      {
        if ((a7 & 1) != 0 || ((a5 | a6) & 0x7FFFFFFFFFFFFFFFLL) == 0)
        {
          if (a8)
          {
            v55 = swift_allocObject();
            *(v55 + 16) = a8;
            *(v55 + 24) = a9;
            v56 = swift_allocObject();
            *(v56 + 16) = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
            *(v56 + 24) = v55;
            v57 = swift_allocObject();
            *(v57 + 16) = thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ())partial apply;
            *(v57 + 24) = v56;
            v80.i8[0] = 17;
            v58 = swift_allocObject();
            *(v58 + 16) = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
            *(v58 + 24) = v57;
            *(v58 + 32) = 1;
            outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a8, a9);

            static Update.enqueueAction(reason:_:)();
          }

          return 0;
        }
      }
    }
  }

  v67 = a4;
  v22 = *&v11->i64[1];
  v23 = v11[3].i64[0];
  v24 = v11[3].i64[1];
  v25 = v11[4].u8[2];
  if (!(v25 >> 6))
  {
    v70 = a9;
    *&v35 = v23 ^ 0x8000000000000000;
    *&v36 = v24 ^ 0x8000000000000000;
    v37 = ScrollViewNode.removeRubberBanding(_:)(specialized static ScrollViewSupport.addRubberBandingToResidue(_:range:), *v11->i64, v22);
    v10 = v38;
    goto LABEL_13;
  }

  if (v25 >> 6 != 1)
  {
    v70 = a9;
    swift_beginAccess();
    v37 = *(a1 + 64);
    v10 = *(a1 + 72);
    ScrollViewBehavior.reloadContainers(node:)(a1);
    v35 = 0.0;
    v36 = 0.0;
LABEL_13:
    swift_beginAccess();
    v39 = (1.0 - pow(*(a1 + 240), 8.33333333)) / 0.00833333333;
    if (v39 > 1.0)
    {
      v40 = v39;
    }

    else
    {
      v40 = 1.0;
    }

    if (a7)
    {
      v41 = v35;
    }

    else
    {
      v41 = *&a5;
    }

    if (a7)
    {
      v42 = v36;
    }

    else
    {
      v42 = *&a6;
    }

    v80.i64[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
    v24 = v80.i64[0];
    v44 = *(v80.i64[0] + 16);
    v43 = *(v80.i64[0] + 24);
    v45 = v43 >> 1;
    v27 = v44 + 1;
    if (v43 >> 1 <= v44)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1);
      v24 = v80.i64[0];
      v43 = *(v80.i64[0] + 24);
      v45 = v43 >> 1;
    }

    *(v24 + 16) = v27;
    v46 = v24 + 88 * v44;
    *(v46 + 32) = 0;
    *(v46 + 40) = v37;
    *(v46 + 48) = v41;
    *(v46 + 56) = v40;
    *(v46 + 64) = -(v40 * v41);
    v47 = xmmword_18CD72950;
    *(v46 + 72) = xmmword_18CD72950;
    *(v46 + 88) = 0;
    *(v46 + 96) = 0;
    *(v46 + 104) = 0x4004000000000000;
    *(v46 + 112) = 0;
    a5 = v44 + 2;
    if (v45 <= v27)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 2, 1);
      v47 = xmmword_18CD72950;
      v24 = v80.i64[0];
    }

    v30 = 0;
    v28 = 0;
    v48 = 0;
    *(v24 + 16) = *&a5;
    v49 = v24 + 88 * v27;
    *(v49 + 32) = 0;
    *(v49 + 40) = v10;
    *(v49 + 48) = v42;
    *(v49 + 56) = v40;
    *(v49 + 64) = v42 * -v40;
    *(v49 + 72) = v47;
    *(v49 + 88) = 0;
    *(v49 + 96) = 0;
    *(v49 + 104) = 0x4004000000000000;
    *(v49 + 112) = 0;
    LOBYTE(v27) = 1;
    LOBYTE(v84[0]) = 1;
    LOBYTE(v73[0]) = 1;
    v97 = 1;
    v17 = v70;
    if (a8)
    {
      goto LABEL_27;
    }

    goto LABEL_29;
  }

  v26 = v11[4].u16[0] | (v11[4].u8[2] << 16);
  v27 = v11[2].u64[0];
  v28 = v11[2].i64[1];
  v29 = v11[1].u64[0];
  v30 = v11[1].i64[1];
  v65 = v29 >> 8;
  v66 = v27 >> 8;
  v80.i64[0] = v11->i64[0];
  *&v80.i64[1] = v22;
  v81.i64[0] = v29;
  v81.i64[1] = v30;
  v82.i64[0] = v27;
  v82.i64[1] = v28;
  v31 = v23;
  *v83 = v23;
  *&v83[8] = v24;
  v83[18] = BYTE2(v26) & 0x3F;
  *&v83[16] = v26;
  outlined init with copy of ScrollViewBehavior.DecelerationState(&v80, v84);
  if (a8)
  {
    if (v28)
    {
      v32 = swift_allocObject();
      *(v32 + 16) = v28;
      *(v32 + 24) = v31;
      v69 = v27;
      v27 = v30;
      v33 = swift_allocObject();
      *(v33 + 16) = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
      *(v33 + 24) = v32;
      *&a5 = COERCE_DOUBLE(swift_allocObject());
      *(a5 + 16) = thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ())partial apply;
      *(a5 + 24) = v33;
      v80.i8[0] = 17;
      v34 = swift_allocObject();
      *(v34 + 16) = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
      *(v34 + 24) = *&a5;
      *(v34 + 32) = 0;
      outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a8, a9);
      outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v28, v31);

      static Update.enqueueAction(reason:_:)();
      v30 = v27;
      LOBYTE(v27) = v69;

      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v28);
LABEL_28:
      v28 = a8;
      v48 = v17;
      goto LABEL_29;
    }

LABEL_27:

    goto LABEL_28;
  }

  v48 = v31;
LABEL_29:
  v97 = v67 & 1;
  if ((v67 & 1) == 0)
  {
    if (*(v24 + 16) >= 2uLL)
    {
      v17 = v48;
      v10 = *(v24 + 128);
      a5 = *(v24 + 136);
      if (*(v24 + 40) == *&a2 && (*(v24 + 48) & 0x7FFFFFFFFFFFFFFFLL) == 0)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          goto LABEL_73;
        }

        v52 = *(v24 + 16);
        if (v52)
        {
          goto LABEL_55;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v52 = *(v24 + 16);
        if (!v52)
        {
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
          while (1)
          {
            __break(1u);
LABEL_73:
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
            v24 = result;
            v52 = *(result + 16);
            if (!v52)
            {
              goto LABEL_74;
            }

LABEL_55:
            v51 = v17;
            *(v24 + 88) = 0;
            *(v24 + 112) = 0;
LABEL_56:
            if (v10 != *&a3 || (a5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              if (v52 < 2)
              {
                goto LABEL_71;
              }

              if ((*(v24 + 200) & 1) == 0)
              {
                *(v24 + 176) = 0x4059000000000000;
                *(v24 + 184) = *&a3;
                *(v24 + 144) = 0x4031000000000000;
              }

              goto LABEL_60;
            }

            if (v52 >= 2)
            {
              goto LABEL_59;
            }
          }
        }

LABEL_39:
        v51 = v17;
        if ((*(v24 + 112) & 1) == 0)
        {
          *(v24 + 88) = 0x4059000000000000;
          *(v24 + 96) = *&a2;
          *(v24 + 56) = 0x4031000000000000;
        }

        goto LABEL_56;
      }

LABEL_69:
      v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
      v52 = *(v24 + 16);
      if (!v52)
      {
        goto LABEL_70;
      }

      goto LABEL_39;
    }

    goto LABEL_67;
  }

  v17 = v48;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v50 = *(v24 + 16);
    if (v50)
    {
      goto LABEL_32;
    }

    goto LABEL_66;
  }

  v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
  v50 = *(v24 + 16);
  if (!v50)
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

LABEL_32:
  *(v24 + 88) = 0;
  *(v24 + 112) = 0;
  if (v50 == 1)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v51 = v17;
LABEL_59:
  *(v24 + 176) = 0;
  *(v24 + 200) = 0;
LABEL_60:
  v73[0] = a2;
  v73[1] = a3;
  v68 = v97;
  LOBYTE(v74) = v97;
  HIBYTE(v74) = BYTE6(v65);
  *(&v74 + 5) = WORD2(v65);
  *(&v74 + 1) = v65;
  v75 = v30;
  LOBYTE(v76) = v27;
  HIBYTE(v76) = BYTE6(v66);
  *(&v76 + 5) = WORD2(v66);
  *(&v76 + 1) = v66;
  v77 = v28;
  v78 = v51;
  v79 = v24;
  v60 = v74;
  v61 = v76;
  v62 = v11[3];
  v82 = v11[2];
  *v83 = v62;
  *&v83[15] = *(&v11[3].i32[3] + 3);
  v63 = v11[1];
  v80 = *v11;
  v81 = v63;
  v64 = v51;
  outlined init with copy of ScrollViewBehavior.DecelerationState(v73, v84);
  outlined destroy of ScrollViewBehavior.Phase(&v80);
  v11->i64[0] = a2;
  v11->i64[1] = a3;
  v11[1].i64[0] = v60;
  v11[1].i64[1] = v30;
  v11[2].i64[0] = v61;
  v11[2].i64[1] = v28;
  v11[3].i64[0] = v64;
  v11[3].i64[1] = v24;
  v11[4].i8[2] = 64;
  v11[4].i16[0] = 0;
  ++v11[4].i32[1];
  v84[0] = a2;
  v84[1] = a3;
  v85 = v68;
  v88 = BYTE6(v65);
  v87 = WORD2(v65);
  v86 = v65;
  v89 = v30;
  v90 = v27;
  v93 = BYTE6(v66);
  v92 = WORD2(v66);
  v91 = v66;
  v94 = v28;
  v95 = v64;
  v96 = v24;
  outlined destroy of ScrollViewBehavior.DecelerationState(v84);
  return 1;
}

CGFloat ScrollViewNode.removeRubberBanding(_:)(double (*a1)(uint64_t, double, double, double, double), double a2, double a3)
{
  v7 = *(v3 + 336);
  v8 = *(v3 + 344);
  swift_beginAccess();
  CGSize.inset(by:)();
  v10 = v7 - v9;
  CGSize.inset(by:)();
  if (v10 < 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v10;
  }

  if (v8 - v11 < 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v8 - v11;
  }

  v14 = CGPoint.clamp(min:max:)(0, __PAIR128__(*&v13, *&v12));
  v15 = CGSize.inset(by:)();
  return v14.x - a1(v15, v14.x - a2, v14.y - a3, v16, v17);
}

uint64_t ScrollViewBehavior.iterateDeceleration(node:time:offset:estimatedTarget:)(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v8 = *(v6 + 32) | (*(v6 + 66) << 16);
  if ((v8 & 0xC00000) != 0x400000)
  {
    return 1;
  }

  v10 = *a2;
  v11 = *(v7 + 1);
  v12 = *(v7 + 16);
  v77 = *(v7 + 17) | ((*(v7 + 21) | (*(v7 + 23) << 16)) << 32);
  *&v78 = *v7;
  v13 = *(v7 + 3);
  v14 = *(v7 + 4);
  v15 = *(v7 + 5);
  v17 = *(v7 + 6);
  v16 = *(v7 + 7);
  v112 = v14;
  v75 = v14;
  *(&v78 + 1) = v11;
  if (v14)
  {
    v67 = v10 + -0.0166666667;
    v112 = 0;
    v72 = 0.0166666667;
  }

  else
  {
    v72 = v10 - v13;
    v67 = v13;
  }

  v20 = *(a1 + 336);
  v69 = *(a1 + 344);
  swift_beginAccess();
  v100 = v78;
  v101 = v12;
  v104 = BYTE6(v77);
  v103 = WORD2(v77);
  v102 = v77;
  v105 = v13;
  v106 = v75;
  v107 = v15;
  v68 = v15;
  v108 = v17;
  v109 = v16;
  v111 = BYTE2(v8) & 0x3F;
  v110 = v8;
  outlined init with copy of ScrollViewBehavior.DecelerationState(&v100, &v113);
  CGSize.inset(by:)();
  v22 = v20 - v21;
  CGSize.inset(by:)();
  if (v22 < 0.0)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = v22;
  }

  if (v69 - v23 < 0.0)
  {
    v25 = 0.0;
  }

  else
  {
    v25 = v69 - v23;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_45;
  }

  while (1)
  {
    if (*(v16 + 2))
    {
      v26 = ScalarDeceleration.iter(_:minValue:maxValue:)(0, 0, *&v24, 0, v72);
      if (*(v16 + 2) >= 2uLL)
      {
        break;
      }
    }

    __break(1u);
LABEL_45:
    v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
  }

  v27 = v26;
  result = ScalarDeceleration.iter(_:minValue:maxValue:)(0, 0, *&v25, 0, v72);
  if (v27 & result)
  {
    v70 = v17;
    if ((v12 & 1) == 0)
    {
      *a3 = CGPoint.clamp(min:max:)(0, __PAIR128__(*&v25, *&v24));
    }

    v73 = *(v7 + 9);
    v29 = *(v73 + 16);
    if (v29)
    {
      v30 = (v73 + 56);
      do
      {
        v31 = *(v30 - 3);
        v32 = *(v30 - 2);
        v33 = *(v30 - 1);
        v34 = *v30;
        swift_unownedRetainStrong();
        swift_beginAccess();
        v35 = *(v31 + 148);
        swift_unownedRetain();

        if (v35 == v34)
        {
          swift_unownedRetainStrong();
          v36 = *(v31 + 336);
          v37 = *(v31 + 344);
          swift_beginAccess();
          CGSize.inset(by:)();
          v39 = v36 - v38;
          CGSize.inset(by:)();
          if (v39 < 0.0)
          {
            v41 = 0.0;
          }

          else
          {
            v41 = v39;
          }

          if (v37 - v40 < 0.0)
          {
            v42 = 0.0;
          }

          else
          {
            v42 = v37 - v40;
          }

          v43 = CGPoint.clamp(min:max:)(0, __PAIR128__(*&v42, *&v41));
          a5 &= 1u;
          *&v113 = v32;
          *(&v113 + 1) = v33;
          v114 = v43;
          *&v116[8] = a5;
          ScrollViewNode.commitScrollTransaction(_:value:)(&v113, v43.x, v43.y);
        }

        v30 += 8;
        swift_unownedRelease();
        --v29;
      }

      while (v29);
    }

    *&v99[15] = *(v7 + 63);
    v53 = v7[3];
    v98 = v7[2];
    *v99 = v53;
    v54 = v7[1];
    v96 = *v7;
    v97 = v54;
    if (((v99[18] << 16) & 0xC00000) == 0x400000)
    {
      v55 = *(&v98 + 1);
      if (*(&v98 + 1))
      {
        v56 = *v99;
        v57 = swift_allocObject();
        *(v57 + 16) = *(&v98 + 1);
        *(v57 + 24) = v56;
        v58 = swift_allocObject();
        *(v58 + 16) = partial apply for thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
        *(v58 + 24) = v57;
        v59 = swift_allocObject();
        *(v59 + 16) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ());
        *(v59 + 24) = v58;
        LOBYTE(v83) = 17;
        v60 = swift_allocObject();
        *(v60 + 16) = partial apply for thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
        *(v60 + 24) = v59;
        *(v60 + 32) = 1;
        outlined init with copy of ScrollViewBehavior.Phase(&v96, &v79);
        outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v55, v56);

        static Update.enqueueAction(reason:_:)();

        outlined destroy of ScrollViewBehavior.Phase(&v96);
      }
    }

    v61 = v7[3];
    v81 = v7[2];
    v82[0] = v61;
    *(v82 + 15) = *(v7 + 63);
    v62 = v7[1];
    v79 = *v7;
    v80 = v62;
    outlined destroy of ScrollViewBehavior.Phase(&v79);
    *v7 = 0u;
    v7[1] = 0u;
    v7[2] = 0u;
    v7[3] = 0u;
    *(v7 + 66) = 0x80;
    *(v7 + 32) = 0;
    ++*(v7 + 17);

    *(v7 + 9) = MEMORY[0x1E69E7CC0];
    v83 = v78;
    v84 = v12;
    v87 = BYTE6(v77);
    v86 = WORD2(v77);
    v85 = v77;
    v88 = v67;
    v89 = v112;
    v92 = HIBYTE(v75);
    v91 = HIDWORD(v75) >> 8;
    v90 = v75 >> 8;
    v93 = v68;
    v94 = v70;
    v95 = v16;
    outlined destroy of ScrollViewBehavior.DecelerationState(&v83);
    return 1;
  }

  v44 = v12;
  if (v12 & 1) == 0 || (a6)
  {
    goto LABEL_37;
  }

  if (*(v16 + 2) >= 2uLL)
  {
    v45 = fabs(*(v16 + 6));
    v46 = fabs(*(v16 + 17));
    if (v45 < 50.0 && (v16[112] & 1) == 0)
    {
      *(v16 + 12) = a4;
      *(v16 + 11) = (v45 / -50.0 + 1.0) * 30.0;
      *(v16 + 7) = 0x4024000000000000;
    }

    if (v46 < 50.0 && (v16[200] & 1) == 0)
    {
      *(v16 + 23) = a5;
      *(v16 + 22) = (v46 / -50.0 + 1.0) * 30.0;
      *(v16 + 18) = 0x4024000000000000;
    }

LABEL_37:
    v47 = v7[2];
    v48 = v7[3];
    v49 = *v7;
    v114 = v7[1];
    v115 = v47;
    *v116 = v48;
    v79 = v78;
    LOBYTE(v80) = v12;
    BYTE7(v80) = BYTE6(v77);
    *(&v80 + 5) = WORD2(v77);
    *(&v80 + 1) = v77;
    *(&v80 + 1) = v67;
    v74 = v112;
    LOBYTE(v81) = v112;
    v71 = HIBYTE(v75);
    BYTE7(v81) = HIBYTE(v75);
    v65 = v75 >> 40;
    *(&v81 + 5) = HIDWORD(v75) >> 8;
    v76 = v75 >> 8;
    *(&v81 + 1) = v76;
    *(&v81 + 1) = v68;
    *&v82[0] = v17;
    *(&v82[0] + 1) = v16;
    v50 = v80;
    v51 = v81;
    *&v116[15] = *(v7 + 63);
    v113 = v49;
    v63 = v44;
    outlined init with copy of ScrollViewBehavior.DecelerationState(&v79, &v96);
    result = outlined destroy of ScrollViewBehavior.Phase(&v113);
    *v7 = v78;
    *(v7 + 2) = v50;
    *(v7 + 3) = v67;
    *(v7 + 4) = v51;
    *(v7 + 5) = v68;
    *(v7 + 6) = v17;
    *(v7 + 7) = v16;
    *(v7 + 66) = 64;
    *(v7 + 32) = 0;
    ++*(v7 + 17);
    if (*(v16 + 2) >= 2uLL)
    {
      *a3 = ScrollViewBehavior.overflowContentOffset(_:node:)(a1, *(v16 + 5), *(v16 + 16));
      *(a3 + 8) = v52;
      v96 = v78;
      LOBYTE(v97) = v63;
      BYTE7(v97) = BYTE6(v77);
      *(&v97 + 5) = WORD2(v77);
      *(&v97 + 1) = v77;
      *(&v97 + 1) = v67;
      LOBYTE(v98) = v74;
      BYTE7(v98) = v71;
      *(&v98 + 5) = v65;
      *(&v98 + 1) = v76;
      *(&v98 + 1) = v68;
      *v99 = v17;
      *&v99[8] = v16;
      outlined destroy of ScrollViewBehavior.DecelerationState(&v96);
      return 0;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ())(char a1)
{
  return thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ())(a1, *(v1 + 16));
}

{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t partial apply for specialized closure #1 in ScrollViewNode.dispatchAction<A>(_:_:)()
{
  return specialized closure #1 in ScrollViewNode.dispatchAction<A>(_:_:)(*(v0 + 16), *(v0 + 24), (v0 + 32));
}

{
  v1 = *(v0 + 16);
  v3 = *(v0 + 32);
  return v1(&v3);
}

uint64_t destroy for ScrollViewBehavior.DecelerationState(uint64_t a1)
{
  if (*(a1 + 40))
  {
  }
}

uint64_t initializeWithCopy for ScrollViewBehavior.DecelerationState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 40);
  if (v4)
  {
    v5 = *(a2 + 48);
    *(a1 + 40) = v4;
    *(a1 + 48) = v5;
  }

  else
  {
    *(a1 + 40) = *(a2 + 40);
  }

  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithCopy for ScrollViewBehavior.DecelerationState(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a1 = v4;
  v5 = *(a2 + 3);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = v5;
  v6 = (a1 + 40);
  v8 = (a2 + 40);
  v7 = *(a2 + 5);
  if (!*(a1 + 40))
  {
    if (v7)
    {
      v10 = *(a2 + 6);
      *(a1 + 40) = v7;
      *(a1 + 48) = v10;

      goto LABEL_8;
    }

LABEL_7:
    *v6 = *v8;
    goto LABEL_8;
  }

  if (!v7)
  {

    goto LABEL_7;
  }

  v9 = *(a2 + 6);
  *(a1 + 40) = v7;
  *(a1 + 48) = v9;

LABEL_8:
  *(a1 + 56) = *(a2 + 7);

  return a1;
}

uint64_t assignWithTake for ScrollViewBehavior.DecelerationState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v4 = (a1 + 40);
  v6 = (a2 + 40);
  v5 = *(a2 + 40);
  if (!*(a1 + 40))
  {
    if (v5)
    {
      v8 = *(a2 + 48);
      *(a1 + 40) = v5;
      *(a1 + 48) = v8;
      goto LABEL_8;
    }

LABEL_7:
    *v4 = *v6;
    goto LABEL_8;
  }

  if (!v5)
  {

    goto LABEL_7;
  }

  v7 = *(a2 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v7;

LABEL_8:
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t initializeWithCopy for ScrollViewBehavior.ContainerInfo(uint64_t a1, uint64_t a2)
{
  *a1 = swift_unownedRetain();
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithCopy for ScrollViewBehavior.ContainerInfo(uint64_t a1, uint64_t a2)
{
  *a1 = swift_unownedRetain();
  swift_unownedRelease();
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

__n128 __swift_memcpy28_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t assignWithTake for ScrollViewBehavior.ContainerInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_unownedRelease();
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollViewBehavior.ContainerInfo(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 28))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for ScrollViewBehavior.ContainerInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 28) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 28) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t initializeWithCopy for ScrollViewBehavior.Phase(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 66);
  v13 = *(a2 + 64);
  outlined copy of ScrollViewBehavior.Phase(*a2, v4, v5, v6, v7, v8, v9, v10, v13 | (v11 << 16));
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 66) = v11;
  *(a1 + 64) = v13;
  return a1;
}

uint64_t assignWithCopy for ScrollViewBehavior.Phase(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v22 = *(a2 + 66);
  v11 = *(a2 + 64);
  outlined copy of ScrollViewBehavior.Phase(*a2, v4, v5, v6, v7, v8, v9, v10, v11 | (v22 << 16));
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64) | (*(a1 + 66) << 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 66) = v22;
  outlined consume of ScrollViewBehavior.Phase(v12, v13, v14, v15, v16, v17, v18, v19, v20);
  return a1;
}

uint64_t assignWithTake for ScrollViewBehavior.Phase(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 66);
  v4 = *(a2 + 64);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64) | (*(a1 + 66) << 16);
  v14 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v14;
  v15 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v15;
  *(a1 + 64) = v4;
  *(a1 + 66) = v3;
  outlined consume of ScrollViewBehavior.Phase(v5, v7, v6, v8, v9, v10, v11, v12, v13);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollViewBehavior.Phase(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x1FFFFD && *(a1 + 67))
  {
    return (*a1 + 2097150);
  }

  if ((((*(a1 + 66) >> 6) | (4 * ((*(a1 + 64) >> 2) & 0x3F80 | (*(a1 + 64) >> 1) | (((*(a1 + 66) >> 1) & 0x1F) << 14)))) ^ 0x1FFFFFu) >= 0x1FFFFD)
  {
    v3 = -1;
  }

  else
  {
    v3 = ((*(a1 + 66) >> 6) | (4 * ((*(a1 + 64) >> 2) & 0x3F80 | (*(a1 + 64) >> 1) | (((*(a1 + 66) >> 1) & 0x1F) << 14)))) ^ 0x1FFFFF;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for ScrollViewBehavior.Phase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1FFFFD)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 66) = 0;
    *(result + 64) = 0;
    *result = a2 - 2097150;
    if (a3 >= 0x1FFFFE)
    {
      *(result + 67) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FFFFE)
    {
      *(result + 67) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 2) & 0x7FFFF) - (a2 << 19);
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 66) = (v3 >> 13) & 0xFE;
      *(result + 64) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

uint64_t getEnumTag for ScrollViewBehavior.Phase(uint64_t a1)
{
  if ((*(a1 + 64) | (*(a1 + 66) << 16)) << 8 >> 8 >= 0)
  {
    return *(a1 + 66) >> 6;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveProjectEnumData for ScrollViewBehavior.Phase(uint64_t a1)
{
  v2 = *(a1 + 64);
  result = a1 + 64;
  *(result + 2) = ((v2 | (*(result + 2) << 16)) >> 16) & 0x3F;
  *result = v2;
  return result;
}

uint64_t destructiveInjectEnumTag for ScrollViewBehavior.Phase(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 64);
    result += 64;
    v3 = (v2 | (*(result + 2) << 16)) & 0x1010101 | (a2 << 22);
    *result = v2 & 0x101;
    *(result + 2) = BYTE2(v3);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    *(result + 66) = 0x80;
    *(result + 64) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScrollViewBehavior.DragState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 67))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 64);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ScrollViewBehavior.DragState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 66) = 0;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 67) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 67) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2 + 1;
    }
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for CellConfiguration(char *a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    v4 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for UICellConfigurationState();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      type metadata accessor for UICellConfigurationState?(0, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8]);
      memcpy(v4, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(v4, a2, v7);
      (*(v8 + 56))(v4, 0, 1, v7);
    }

    v11 = a3[6];
    v4[a3[5]] = *(a2 + a3[5]);
    v4[v11] = *(a2 + v11);
    v12 = a3[8];
    v4[a3[7]] = *(a2 + a3[7]);
    *&v4[v12] = *(a2 + v12);
    v13 = a3[9];
    v14 = &v4[v13];
    v15 = a2 + v13;
    v16 = *(v15 + 1);
    *v14 = *v15;
    *(v14 + 1) = v16;
    *(v14 + 2) = *(v15 + 2);
    *(v14 + 24) = *(v15 + 24);
    *(v14 + 40) = *(v15 + 40);
    *(v14 + 7) = *(v15 + 7);
  }

  return v4;
}

uint64_t destroy for CellConfiguration(uint64_t a1)
{
  v2 = type metadata accessor for UICellConfigurationState();
  v3 = *(v2 - 8);
  if (!(*(v3 + 48))(a1, 1, v2))
  {
    (*(v3 + 8))(a1, v2);
  }
}

char *initializeWithCopy for CellConfiguration(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for UICellConfigurationState();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    type metadata accessor for UICellConfigurationState?(0, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8]);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  a1[v9] = a2[v9];
  v10 = a3[8];
  a1[a3[7]] = a2[a3[7]];
  *&a1[v10] = *&a2[v10];
  v11 = a3[9];
  v12 = &a1[v11];
  v13 = &a2[v11];
  v14 = *(v13 + 1);
  *v12 = *v13;
  *(v12 + 1) = v14;
  *(v12 + 2) = *(v13 + 2);
  *(v12 + 24) = *(v13 + 24);
  *(v12 + 40) = *(v13 + 40);
  *(v12 + 7) = *(v13 + 7);

  return a1;
}

char *assignWithCopy for CellConfiguration(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for UICellConfigurationState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    type metadata accessor for UICellConfigurationState?(0, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8]);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 16))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  a1[a3[5]] = a2[a3[5]];
  a1[a3[6]] = a2[a3[6]];
  a1[a3[7]] = a2[a3[7]];
  *&a1[a3[8]] = *&a2[a3[8]];
  v12 = a3[9];
  v13 = &a1[v12];
  v14 = &a2[v12];
  *&a1[v12] = *&a2[v12];

  *(v13 + 1) = *(v14 + 1);

  *(v13 + 2) = *(v14 + 2);

  *(v13 + 3) = *(v14 + 3);
  *(v13 + 4) = *(v14 + 4);
  *(v13 + 5) = *(v14 + 5);
  *(v13 + 6) = *(v14 + 6);
  *(v13 + 7) = *(v14 + 7);
  return a1;
}

char *initializeWithTake for CellConfiguration(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for UICellConfigurationState();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    type metadata accessor for UICellConfigurationState?(0, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8]);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  a1[v9] = a2[v9];
  v10 = a3[8];
  a1[a3[7]] = a2[a3[7]];
  *&a1[v10] = *&a2[v10];
  v11 = a3[9];
  v12 = &a1[v11];
  v13 = &a2[v11];
  v14 = *(v13 + 1);
  *v12 = *v13;
  *(v12 + 1) = v14;
  v15 = *(v13 + 3);
  *(v12 + 2) = *(v13 + 2);
  *(v12 + 3) = v15;
  return a1;
}

char *assignWithTake for CellConfiguration(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for UICellConfigurationState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    type metadata accessor for UICellConfigurationState?(0, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8]);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 32))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  v12 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  a1[v12] = a2[v12];
  v13 = a3[8];
  a1[a3[7]] = a2[a3[7]];
  *&a1[v13] = *&a2[v13];
  v14 = a3[9];
  v15 = &a1[v14];
  v16 = &a2[v14];
  *&a1[v14] = *v16;

  *(v15 + 1) = *(v16 + 1);

  *(v15 + 2) = *(v16 + 2);

  *(v15 + 24) = *(v16 + 24);
  *(v15 + 40) = *(v16 + 40);
  *(v15 + 7) = *(v16 + 7);
  return a1;
}

uint64_t type metadata accessor for CellConfiguration()
{
  result = type metadata singleton initialization cache for CellConfiguration;
  if (!type metadata singleton initialization cache for CellConfiguration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for CellConfiguration()
{
  type metadata accessor for UICellConfigurationState?(319, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8]);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t CellConfiguration.effectiveState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  type metadata accessor for UICellConfigurationState?(0, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for UICellConfigurationState();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + *(type metadata accessor for CellConfiguration() + 28));
  if (v11 == 2)
  {

    return outlined init with copy of UICellConfigurationState?(v2, a1);
  }

  else
  {
    outlined init with copy of UICellConfigurationState?(v2, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      outlined destroy of UICellConfigurationState?(v6, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8]);
      return (*(v8 + 56))(a1, 1, 1, v7);
    }

    else
    {
      v13 = *(v8 + 32);
      v13(v10, v6, v7);
      if (v11)
      {
        UICellConfigurationState.isDisabled.setter();
      }

      else if (UICellConfigurationState.isHighlighted.getter())
      {
        UICellConfigurationState.isHighlighted.setter();
        UICellConfigurationState.isSelected.setter();
      }

      v13(a1, v10, v7);
      return (*(v8 + 56))(a1, 0, 1, v7);
    }
  }
}

uint64_t CellConfiguration.backgroundConfiguration()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for UICellConfigurationState?(0, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21[-v4];
  type metadata accessor for UICellConfigurationState?(0, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21[-v7];
  v9 = type metadata accessor for UIBackgroundConfiguration();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21[-v14];
  v16 = type metadata accessor for CellConfiguration();
  v17 = *(v1 + v16[5]);
  if (v17 == 3)
  {
    static UIBackgroundConfiguration.listAccompaniedSidebarCell()();
  }

  else if (v17 == 1)
  {
    if (*(v1 + v16[6]) == 1)
    {
      static UIBackgroundConfiguration.listHeader()();
    }

    else
    {
      static UIBackgroundConfiguration.listCell()();
    }

    (*(v10 + 32))(v15, v12, v9);
  }

  else
  {
    if (*(v1 + v16[8]) > 2uLL)
    {
      MEMORY[0x1EEE9AC00](v16);
      *&v21[-16] = v1;
      specialized static Log.internalWarning(_:)(partial apply for implicit closure #1 in CellConfiguration.backgroundConfiguration());
    }

    static UIBackgroundConfiguration.listCell()();
  }

  v18 = CellConfiguration.effectiveState.getter(v5);
  MEMORY[0x1EEE9AC00](v18);
  *&v21[-16] = v15;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF5UIKit24UICellConfigurationStateV_s5NeverOAD012UIBackgroundE0VTg5(partial apply for closure #1 in CellConfiguration.backgroundConfiguration(), &v21[-32], v8);
  outlined destroy of UICellConfigurationState?(v5, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8]);
  v19 = *(v10 + 48);
  if (v19(v8, 1, v9) == 1)
  {
    (*(v10 + 16))(a1, v15, v9);
    if (v19(v8, 1, v9) != 1)
    {
      outlined destroy of UICellConfigurationState?(v8, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8]);
    }
  }

  else
  {
    (*(v10 + 32))(a1, v8, v9);
  }

  return (*(v10 + 8))(v15, v9);
}

uint64_t implicit closure #1 in CellConfiguration.backgroundConfiguration()()
{
  _StringGuts.grow(_:)(67);
  MEMORY[0x18D00C9B0](0xD000000000000041, 0x800000018CD40110);
  type metadata accessor for CellConfiguration();
  type metadata accessor for UITableViewStyle(0);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t closure #1 in CellConfiguration.backgroundConfiguration()(uint64_t a1)
{
  v2 = type metadata accessor for UICellConfigurationState();
  v5[3] = v2;
  v5[4] = MEMORY[0x1E69DC0B0];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, a1, v2);
  UIBackgroundConfiguration.updated(for:)();
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance CellConfigurationKey@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CellConfiguration();
  v3 = __swift_project_value_buffer(v2, static CellConfigurationKey.defaultValue);

  return outlined init with copy of CellConfiguration(v3, a1);
}

uint64_t EnvironmentValues.cellConfiguration.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<CellConfigurationKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<CellConfigurationKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<CellConfigurationKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<CellConfigurationKey> and conformance EnvironmentPropertyKey<A>();

    return PropertyList.subscript.getter();
  }
}

uint64_t EnvironmentValues.cellConfiguration.setter(uint64_t a1)
{
  v3 = type metadata accessor for CellConfiguration();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  outlined init with copy of CellConfiguration(a1, &v10 - v7);
  outlined init with copy of CellConfiguration(v8, v5);
  type metadata accessor for EnvironmentPropertyKey<CellConfigurationKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<CellConfigurationKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined destroy of CellConfiguration(a1);
  return outlined destroy of CellConfiguration(v8);
}

double specialized CellConfiguration.Values.init(_:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for UIListContentConfiguration.ImageProperties();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UIListContentConfiguration.TextProperties();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  UIListContentConfiguration.textProperties.getter();
  UIListContentConfiguration.TextProperties.color.getter();
  v11 = *(v8 + 8);
  v11(v10, v7);
  type metadata accessor for UIKitPlatformColorDefinition();
  v31 = Color.init(_platformColor:definition:)();
  UIListContentConfiguration.imageProperties.getter();
  v12 = UIListContentConfiguration.ImageProperties.tintColor.getter();
  (*(v4 + 8))(v6, v3);
  if (v12)
  {
    v13 = Color.init(_platformColor:definition:)();
  }

  else
  {
    v13 = 0;
  }

  UIListContentConfiguration.textProperties.getter();
  UIListContentConfiguration.TextProperties.font.getter();
  v11(v10, v7);
  v14 = Font.init(_:)();
  UIListContentConfiguration.directionalLayoutMargins.getter();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  UIListContentConfiguration.imageToTextPadding.getter();
  v24 = v23;
  v25 = type metadata accessor for UIListContentConfiguration();
  (*(*(v25 - 8) + 8))(a1, v25);
  *&v34 = v31;
  *(&v34 + 1) = v13;
  *&v35 = v14;
  *(&v35 + 1) = v16;
  *&v36 = v18;
  *(&v36 + 1) = v20;
  *&v37 = v22;
  *(&v37 + 1) = v24;
  v38[0] = v31;
  v38[1] = v13;
  v38[2] = v14;
  v38[3] = v16;
  v38[4] = v18;
  v38[5] = v20;
  v38[6] = v22;
  v38[7] = v24;
  outlined init with copy of CellConfiguration.Values(&v34, v33);
  outlined destroy of CellConfiguration.Values(v38);
  v26 = v35;
  v27 = v32;
  *v32 = v34;
  v27[1] = v26;
  result = *&v36;
  v29 = v37;
  v27[2] = v36;
  v27[3] = v29;
  return result;
}

uint64_t outlined init with copy of UICellConfigurationState?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UICellConfigurationState?(0, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of CellConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CellConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for EnvironmentPropertyKey<CellConfigurationKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<CellConfigurationKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<CellConfigurationKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<CellConfigurationKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<CellConfigurationKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<CellConfigurationKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<CellConfigurationKey>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<CellConfigurationKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t outlined destroy of CellConfiguration(uint64_t a1)
{
  v2 = type metadata accessor for CellConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized static Log.internalWarning(_:)(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for _ContiguousArrayStorage<Any>();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18CD63400;
  _StringGuts.grow(_:)(38);

  v8 = a1(v3);
  v9 = v4;
  MEMORY[0x18D00C9B0](2108704, 0xE300000000000000);
  v5 = StaticString.description.getter();
  MEMORY[0x18D00C9B0](v5);

  MEMORY[0x18D00C9B0](58, 0xE100000000000000);
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v6);

  MEMORY[0x18D00C9B0](0xD00000000000001CLL, 0x800000018CD400F0);
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 32) = v8;
  *(v2 + 40) = v9;
  print(_:separator:terminator:)();
}

void type metadata accessor for _ContiguousArrayStorage<Any>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Any>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>);
    }
  }
}

uint64_t destroy for CellConfiguration.Values()
{
}

uint64_t initializeWithCopy for CellConfiguration.Values(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

void *assignWithCopy for CellConfiguration.Values(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  a1[6] = a2[6];
  a1[7] = a2[7];
  return a1;
}

uint64_t assignWithTake for CellConfiguration.Values(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for CellConfiguration.Values(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for CellConfiguration.Values(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DefaultTextFieldStyle._Body and conformance DefaultTextFieldStyle._Body()
{
  result = lazy protocol witness table cache variable for type DefaultTextFieldStyle._Body and conformance DefaultTextFieldStyle._Body;
  if (!lazy protocol witness table cache variable for type DefaultTextFieldStyle._Body and conformance DefaultTextFieldStyle._Body)
  {
    type metadata accessor for DefaultTextFieldStyle._Body();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultTextFieldStyle._Body and conformance DefaultTextFieldStyle._Body);
  }

  return result;
}

uint64_t type metadata accessor for DefaultTextFieldStyle._Body()
{
  result = type metadata singleton initialization cache for DefaultTextFieldStyle._Body;
  if (!type metadata singleton initialization cache for DefaultTextFieldStyle._Body)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for DefaultTextFieldStyle._Body(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v5 = v4;
  v6 = *(*(v4 - 8) + 80);
  v7 = *a2;
  *a1 = *a2;
  if ((v6 & 0x20000) != 0)
  {
    a1 = v7 + ((v6 + 16) & ~v6);
  }

  else
  {
    v48 = v5;
    v8 = a2[2];
    *(a1 + 8) = a2[1];
    *(a1 + 16) = v8;
    *(a1 + 24) = a2[3];
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 33) = *(a2 + 33);
    v9 = a2[8];

    if (v9)
    {
      v10 = a2[5];
      v11 = a2[6];
      v12 = *(a2 + 56);
      outlined copy of Text.Storage(v10, v11, v12);
      *(a1 + 40) = v10;
      *(a1 + 48) = v11;
      *(a1 + 56) = v12;
      *(a1 + 64) = v9;
    }

    else
    {
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 56) = *(a2 + 7);
    }

    v13 = a2[9];
    v14 = a2[10];
    v15 = a2[11];
    v16 = a2[12];
    v17 = a2[13];
    v18 = a2[14];
    v20 = a2[15];
    v19 = a2[16];
    v40 = a2[17];
    v41 = a2[18];
    v42 = a2[19];
    v43 = a2[20];
    v44 = a2[21];
    v45 = *(a2 + 44);
    __dsta = *(a2 + 180);
    outlined copy of StateOrBinding<TextFieldState>(v13, v14, v15, v16, v17, v18, v20, v19, v40, v41, v42, v43, v44, v45, __dsta);
    *(a1 + 72) = v13;
    *(a1 + 80) = v14;
    *(a1 + 88) = v15;
    *(a1 + 96) = v16;
    *(a1 + 104) = v17;
    *(a1 + 112) = v18;
    *(a1 + 120) = v20;
    *(a1 + 128) = v19;
    *(a1 + 136) = v40;
    *(a1 + 144) = v41;
    *(a1 + 152) = v42;
    *(a1 + 160) = v43;
    *(a1 + 168) = v44;
    *(a1 + 176) = v45;
    *(a1 + 180) = __dsta;
    v21 = *(v48 + 56);
    v22 = (a1 + v21);
    v23 = (a2 + v21);
    type metadata accessor for Binding<TextSelection?>(0);
    v25 = v24;
    v26 = *(v24 - 8);
    if ((*(v26 + 48))(v23, 1, v24))
    {
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_0(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
      memcpy(v22, v23, *(*(v27 - 8) + 64));
    }

    else
    {
      v28 = v23[1];
      *v22 = *v23;
      v22[1] = v28;
      v29 = *(v25 + 32);
      v49 = v22;
      __dst = v22 + v29;
      v30 = v23 + v29;
      v31 = type metadata accessor for TextSelection(0);
      v32 = *(v31 - 8);
      v33 = *(v32 + 48);

      v34 = v30;

      if (v33(v30, 1, v31))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(__dst, v30, *(*(v35 - 8) + 64));
        v36 = v49;
      }

      else
      {
        v37 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v38 - 8) + 16))(__dst, v30, v38);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(__dst, v30, *(*(v37 - 8) + 64));
        }

        v36 = v49;
        __dst[*(v31 + 20)] = v34[*(v31 + 20)];
        (*(v32 + 56))(__dst, 0, 1, v31);
      }

      (*(v26 + 56))(v36, 0, 1, v25);
    }
  }

  return a1;
}

uint64_t destroy for DefaultTextFieldStyle._Body(uint64_t a1)
{

  if (*(a1 + 64))
  {
    outlined consume of Text.Storage(*(a1 + 40), *(a1 + 48), *(a1 + 56));
  }

  outlined consume of StateOrBinding<TextFieldState>(*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 168), *(a1 + 176), *(a1 + 180));
  type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v3 = a1 + *(v2 + 56);
  type metadata accessor for Binding<TextSelection?>(0);
  v5 = v4;
  result = (*(*(v4 - 8) + 48))(v3, 1, v4);
  if (!result)
  {

    v7 = *(v5 + 32);
    v8 = type metadata accessor for TextSelection(0);
    result = (*(*(v8 - 8) + 48))(v3 + v7, 1, v8);
    if (!result)
    {
      type metadata accessor for TextSelection.Indices(0);
      result = swift_getEnumCaseMultiPayload();
      if (result == 1)
      {
        type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        v10 = *(*(v9 - 8) + 8);

        return v10(v3 + v7, v9);
      }
    }
  }

  return result;
}

uint64_t initializeWithCopy for DefaultTextFieldStyle._Body(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  v6 = *(a2 + 64);

  if (v6)
  {
    v7 = *(a2 + 40);
    v8 = *(a2 + 48);
    v9 = *(a2 + 56);
    outlined copy of Text.Storage(v7, v8, v9);
    *(a1 + 40) = v7;
    *(a1 + 48) = v8;
    *(a1 + 56) = v9;
    *(a1 + 64) = v6;
  }

  else
  {
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
  }

  v10 = *(a2 + 72);
  v11 = *(a2 + 80);
  v12 = *(a2 + 88);
  v13 = *(a2 + 96);
  v14 = *(a2 + 104);
  v15 = *(a2 + 112);
  v16 = *(a2 + 120);
  v17 = *(a2 + 128);
  v38 = *(a2 + 136);
  v39 = *(a2 + 144);
  v40 = *(a2 + 152);
  v41 = *(a2 + 160);
  v42 = *(a2 + 168);
  __dsta = *(a2 + 176);
  v45 = *(a2 + 180);
  outlined copy of StateOrBinding<TextFieldState>(v10, v11, v12, v13, v14, v15, v16, v17, v38, v39, v40, v41, v42, __dsta, v45);
  *(a1 + 72) = v10;
  *(a1 + 80) = v11;
  *(a1 + 88) = v12;
  *(a1 + 96) = v13;
  *(a1 + 104) = v14;
  *(a1 + 112) = v15;
  *(a1 + 120) = v16;
  *(a1 + 128) = v17;
  *(a1 + 136) = v38;
  *(a1 + 144) = v39;
  *(a1 + 152) = v40;
  *(a1 + 160) = v41;
  *(a1 + 168) = v42;
  *(a1 + 176) = __dsta;
  *(a1 + 180) = v45;
  type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v19 = *(v18 + 56);
  v20 = (a1 + v19);
  v21 = (a2 + v19);
  type metadata accessor for Binding<TextSelection?>(0);
  v23 = v22;
  v24 = *(v22 - 8);
  if ((*(v24 + 48))(v21, 1, v22))
  {
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_0(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
    memcpy(v20, v21, *(*(v25 - 8) + 64));
  }

  else
  {
    v26 = v21[1];
    *v20 = *v21;
    v20[1] = v26;
    v27 = *(v23 + 32);
    v46 = v20;
    __dst = v20 + v27;
    v28 = v21 + v27;
    v29 = type metadata accessor for TextSelection(0);
    v30 = *(v29 - 8);
    v31 = *(v30 + 48);

    v32 = v28;

    if (v31(v28, 1, v29))
    {
      type metadata accessor for TextSelection?(0);
      memcpy(__dst, v28, *(*(v33 - 8) + 64));
      v34 = v46;
    }

    else
    {
      v35 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v36 - 8) + 16))(__dst, v28, v36);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(__dst, v28, *(*(v35 - 8) + 64));
      }

      v34 = v46;
      __dst[*(v29 + 20)] = v32[*(v29 + 20)];
      (*(v30 + 56))(__dst, 0, 1, v29);
    }

    (*(v24 + 56))(v34, 0, 1, v23);
  }

  return a1;
}

uint64_t assignWithCopy for DefaultTextFieldStyle._Body(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  v4 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if (v4)
    {
      v5 = *(a2 + 40);
      v6 = *(a2 + 48);
      v7 = *(a2 + 56);
      outlined copy of Text.Storage(v5, v6, v7);
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      *(a1 + 40) = v5;
      *(a1 + 48) = v6;
      *(a1 + 56) = v7;
      outlined consume of Text.Storage(v8, v9, v10);
      *(a1 + 64) = *(a2 + 64);
    }

    else
    {
      outlined destroy of Text(a1 + 40);
      v14 = *(a2 + 56);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v14;
    }
  }

  else if (v4)
  {
    v11 = *(a2 + 40);
    v12 = *(a2 + 48);
    v13 = *(a2 + 56);
    outlined copy of Text.Storage(v11, v12, v13);
    *(a1 + 40) = v11;
    *(a1 + 48) = v12;
    *(a1 + 56) = v13;
    *(a1 + 64) = *(a2 + 64);
  }

  else
  {
    v15 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v15;
  }

  v16 = *(a2 + 72);
  v17 = *(a2 + 80);
  v18 = *(a2 + 88);
  v19 = *(a2 + 96);
  v20 = *(a2 + 104);
  v21 = *(a2 + 112);
  v22 = *(a2 + 120);
  v23 = *(a2 + 128);
  v71 = *(a2 + 136);
  v72 = *(a2 + 144);
  v73 = *(a2 + 152);
  v74 = *(a2 + 160);
  v75 = *(a2 + 168);
  v76 = *(a2 + 176);
  v78 = *(a2 + 180);
  outlined copy of StateOrBinding<TextFieldState>(v16, v17, v18, v19, v20, v21, v22, v23, v71, v72, v73, v74, v75, v76, v78);
  v24 = *(a1 + 72);
  v25 = *(a1 + 80);
  v26 = *(a1 + 88);
  v27 = *(a1 + 96);
  v28 = *(a1 + 104);
  v29 = *(a1 + 112);
  v30 = *(a1 + 120);
  v31 = *(a1 + 128);
  v32 = *(a1 + 136);
  v33 = *(a1 + 152);
  v34 = *(a1 + 168);
  v35 = *(a1 + 176);
  v36 = *(a1 + 180);
  *(a1 + 72) = v16;
  *(a1 + 80) = v17;
  *(a1 + 88) = v18;
  *(a1 + 96) = v19;
  *(a1 + 104) = v20;
  *(a1 + 112) = v21;
  *(a1 + 120) = v22;
  *(a1 + 128) = v23;
  *(a1 + 136) = v71;
  *(a1 + 144) = v72;
  *(a1 + 152) = v73;
  *(a1 + 160) = v74;
  *(a1 + 168) = v75;
  *(a1 + 176) = v76;
  *(a1 + 180) = v78;
  outlined consume of StateOrBinding<TextFieldState>(v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, *(&v33 + 1), v34, v35, v36);
  type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v38 = *(v37 + 56);
  v39 = (a1 + v38);
  v40 = (a2 + v38);
  type metadata accessor for Binding<TextSelection?>(0);
  v42 = v41;
  v43 = *(v41 - 8);
  v44 = *(v43 + 48);
  LODWORD(v19) = v44(v39, 1, v41);
  v45 = v44(v40, 1, v42);
  if (v19)
  {
    if (!v45)
    {
      *v39 = *v40;
      *(v39 + 1) = *(v40 + 1);
      v46 = *(v42 + 32);
      v79 = &v39[v46];
      v77 = &v40[v46];
      v47 = type metadata accessor for TextSelection(0);
      v48 = *(v47 - 8);
      v49 = *(v48 + 48);

      if (v49(v77, 1, v47))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(v79, v77, *(*(v50 - 8) + 64));
      }

      else
      {
        v65 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v66 - 8) + 16))(v79, v77, v66);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(v79, v77, *(*(v65 - 8) + 64));
        }

        v79[*(v47 + 20)] = v77[*(v47 + 20)];
        (*(v48 + 56))(v79, 0, 1, v47);
      }

      (*(v43 + 56))(v39, 0, 1, v42);
      return a1;
    }

    goto LABEL_14;
  }

  if (v45)
  {
    outlined destroy of TextSelection.Indices(v39, type metadata accessor for Binding<TextSelection?>);
LABEL_14:
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_0(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
    v52 = *(*(v51 - 8) + 64);
    v53 = v39;
    v54 = v40;
LABEL_15:
    memcpy(v53, v54, v52);
    return a1;
  }

  *v39 = *v40;

  *(v39 + 1) = *(v40 + 1);

  v55 = *(v42 + 32);
  v56 = &v39[v55];
  v57 = &v40[v55];
  v58 = type metadata accessor for TextSelection(0);
  v59 = *(v58 - 8);
  v60 = *(v59 + 48);
  v61 = v60(v56, 1, v58);
  v62 = v60(v57, 1, v58);
  if (v61)
  {
    if (!v62)
    {
      v63 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v64 - 8) + 16))(v56, v57, v64);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v56, v57, *(*(v63 - 8) + 64));
      }

      v56[*(v58 + 20)] = v57[*(v58 + 20)];
      (*(v59 + 56))(v56, 0, 1, v58);
      return a1;
    }

    goto LABEL_24;
  }

  if (v62)
  {
    outlined destroy of TextSelection.Indices(v56, type metadata accessor for TextSelection);
LABEL_24:
    type metadata accessor for TextSelection?(0);
    v52 = *(*(v67 - 8) + 64);
    v53 = v56;
    v54 = v57;
    goto LABEL_15;
  }

  if (a1 != a2)
  {
    outlined destroy of TextSelection.Indices(v56, type metadata accessor for TextSelection.Indices);
    v69 = type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
      (*(*(v70 - 8) + 16))(v56, v57, v70);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v56, v57, *(*(v69 - 8) + 64));
    }
  }

  v56[*(v58 + 20)] = v57[*(v58 + 20)];
  return a1;
}

uint64_t outlined destroy of TextSelection.Indices(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t initializeWithTake for DefaultTextFieldStyle._Body(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 165) = *(a2 + 165);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v6 = *(v5 + 56);
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  type metadata accessor for Binding<TextSelection?>(0);
  v10 = v9;
  v11 = *(v9 - 8);
  if ((*(v11 + 48))(v8, 1, v9))
  {
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_0(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
    memcpy(v7, v8, *(*(v12 - 8) + 64));
  }

  else
  {
    v13 = v8[1];
    *v7 = *v8;
    v7[1] = v13;
    v14 = *(v10 + 32);
    v15 = v7 + v14;
    v16 = v8 + v14;
    v17 = type metadata accessor for TextSelection(0);
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v16, 1, v17))
    {
      type metadata accessor for TextSelection?(0);
      memcpy(v15, v16, *(*(v19 - 8) + 64));
    }

    else
    {
      v20 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v21 - 8) + 32))(v15, v16, v21);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v15, v16, *(*(v20 - 8) + 64));
      }

      v15[*(v17 + 20)] = v16[*(v17 + 20)];
      (*(v18 + 56))(v15, 0, 1, v17);
    }

    (*(v11 + 56))(v7, 0, 1, v10);
  }

  return a1;
}

uint64_t assignWithTake for DefaultTextFieldStyle._Body(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  if (*(a1 + 64))
  {
    v5 = *(a2 + 64);
    if (v5)
    {
      v6 = *(a2 + 56);
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v6;
      outlined consume of Text.Storage(v7, v8, v9);
      *(a1 + 64) = v5;

      goto LABEL_6;
    }

    outlined destroy of Text(a1 + 40);
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
LABEL_6:
  v10 = *(a2 + 168);
  v11 = *(a2 + 176);
  v12 = *(a2 + 180);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  v16 = *(a1 + 96);
  v17 = *(a1 + 104);
  v18 = *(a1 + 112);
  v19 = *(a1 + 120);
  v20 = *(a1 + 128);
  v21 = *(a1 + 136);
  v22 = *(a1 + 152);
  v23 = *(a1 + 168);
  v24 = *(a1 + 176);
  v25 = *(a1 + 180);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = v10;
  *(a1 + 176) = v11;
  *(a1 + 180) = v12;
  outlined consume of StateOrBinding<TextFieldState>(v13, v14, v15, v16, v17, v18, v19, v20, v21, *(&v21 + 1), v22, *(&v22 + 1), v23, v24, v25);
  type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v27 = *(v26 + 56);
  v28 = (a1 + v27);
  v29 = (a2 + v27);
  type metadata accessor for Binding<TextSelection?>(0);
  v31 = v30;
  v32 = *(v30 - 8);
  v33 = *(v32 + 48);
  v34 = v33(v28, 1, v30);
  v35 = v33(v29, 1, v31);
  if (v34)
  {
    if (!v35)
    {
      v36 = *(v29 + 1);
      *v28 = *v29;
      *(v28 + 1) = v36;
      v37 = *(v31 + 32);
      v38 = &v28[v37];
      v39 = &v29[v37];
      v40 = type metadata accessor for TextSelection(0);
      v41 = *(v40 - 8);
      if ((*(v41 + 48))(v39, 1, v40))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(v38, v39, *(*(v42 - 8) + 64));
      }

      else
      {
        v57 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v58 - 8) + 32))(v38, v39, v58);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(v38, v39, *(*(v57 - 8) + 64));
        }

        v38[*(v40 + 20)] = v39[*(v40 + 20)];
        (*(v41 + 56))(v38, 0, 1, v40);
      }

      (*(v32 + 56))(v28, 0, 1, v31);
      return a1;
    }

    goto LABEL_12;
  }

  if (v35)
  {
    outlined destroy of TextSelection.Indices(v28, type metadata accessor for Binding<TextSelection?>);
LABEL_12:
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_0(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
    v44 = *(*(v43 - 8) + 64);
    v45 = v28;
    v46 = v29;
LABEL_13:
    memcpy(v45, v46, v44);
    return a1;
  }

  *v28 = *v29;

  *(v28 + 1) = *(v29 + 1);

  v47 = *(v31 + 32);
  v48 = &v28[v47];
  v49 = &v29[v47];
  v50 = type metadata accessor for TextSelection(0);
  v51 = *(v50 - 8);
  v52 = *(v51 + 48);
  v53 = v52(v48, 1, v50);
  v54 = v52(v49, 1, v50);
  if (v53)
  {
    if (!v54)
    {
      v55 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v56 - 8) + 32))(v48, v49, v56);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v48, v49, *(*(v55 - 8) + 64));
      }

      v48[*(v50 + 20)] = v49[*(v50 + 20)];
      (*(v51 + 56))(v48, 0, 1, v50);
      return a1;
    }

    goto LABEL_22;
  }

  if (v54)
  {
    outlined destroy of TextSelection.Indices(v48, type metadata accessor for TextSelection);
LABEL_22:
    type metadata accessor for TextSelection?(0);
    v44 = *(*(v59 - 8) + 64);
    v45 = v48;
    v46 = v49;
    goto LABEL_13;
  }

  if (a1 != a2)
  {
    outlined destroy of TextSelection.Indices(v48, type metadata accessor for TextSelection.Indices);
    v61 = type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
      (*(*(v62 - 8) + 32))(v48, v49, v62);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v48, v49, *(*(v61 - 8) + 64));
    }
  }

  v48[*(v50 + 20)] = v49[*(v50 + 20)];
  return a1;
}

void type metadata completion function for DefaultTextFieldStyle._Body()
{
  type metadata accessor for TextField<_TextFieldStyleLabel>(319, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<TextField<_TextFieldStyleLabel>, StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>>, TextFieldStyleModifier<PlainTextFieldStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TextField<_TextFieldStyleLabel>, StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>>, TextFieldStyleModifier<PlainTextFieldStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TextField<_TextFieldStyleLabel>, StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>>, TextFieldStyleModifier<PlainTextFieldStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<TextField<_TextFieldStyleLabel>, StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>>, TextFieldStyleModifier<PlainTextFieldStyle>>();
    lazy protocol witness table accessor for type ModifiedContent<TextField<_TextFieldStyleLabel>, StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TextField<_TextFieldStyleLabel>, StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>>, TextFieldStyleModifier<PlainTextFieldStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<TextField<_TextFieldStyleLabel>, StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>>, TextFieldStyleModifier<PlainTextFieldStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<TextField<_TextFieldStyleLabel>, StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>>, TextFieldStyleModifier<PlainTextFieldStyle>>)
  {
    type metadata accessor for ModifiedContent<TextField<_TextFieldStyleLabel>, StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>>();
    type metadata accessor for TextFieldStyleModifier<PlatformItemListTextFieldStyle>(255, &lazy cache variable for type metadata for TextFieldStyleModifier<PlainTextFieldStyle>, lazy protocol witness table accessor for type PlainTextFieldStyle and conformance PlainTextFieldStyle);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<TextField<_TextFieldStyleLabel>, StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>>, TextFieldStyleModifier<PlainTextFieldStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<TextField<_TextFieldStyleLabel>, StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<TextField<_TextFieldStyleLabel>, StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>>)
  {
    type metadata accessor for TextField<_TextFieldStyleLabel>(255, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
    type metadata accessor for StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<TextField<_TextFieldStyleLabel>, StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>>);
    }
  }
}

void type metadata accessor for StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>)
  {
    type metadata accessor for TextFieldStyleModifier<PlatformItemListTextFieldStyle>(255, &lazy cache variable for type metadata for TextFieldStyleModifier<PlatformItemListTextFieldStyle>, lazy protocol witness table accessor for type PlatformItemListTextFieldStyle and conformance PlatformItemListTextFieldStyle);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PlatformItemListTextFieldStyle and conformance PlatformItemListTextFieldStyle()
{
  result = lazy protocol witness table cache variable for type PlatformItemListTextFieldStyle and conformance PlatformItemListTextFieldStyle;
  if (!lazy protocol witness table cache variable for type PlatformItemListTextFieldStyle and conformance PlatformItemListTextFieldStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemListTextFieldStyle and conformance PlatformItemListTextFieldStyle);
  }

  return result;
}

void type metadata accessor for TextFieldStyleModifier<PlatformItemListTextFieldStyle>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for TextFieldStyleModifier();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PlainTextFieldStyle and conformance PlainTextFieldStyle()
{
  result = lazy protocol witness table cache variable for type PlainTextFieldStyle and conformance PlainTextFieldStyle;
  if (!lazy protocol witness table cache variable for type PlainTextFieldStyle and conformance PlainTextFieldStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlainTextFieldStyle and conformance PlainTextFieldStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<TextField<_TextFieldStyleLabel>, StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<TextField<_TextFieldStyleLabel>, StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<TextField<_TextFieldStyleLabel>, StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<TextField<_TextFieldStyleLabel>, StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>>();
    lazy protocol witness table accessor for type TextField<_TextFieldStyleLabel> and conformance TextField<A>();
    lazy protocol witness table accessor for type StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<TextField<_TextFieldStyleLabel>, StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextField<_TextFieldStyleLabel> and conformance TextField<A>()
{
  result = lazy protocol witness table cache variable for type TextField<_TextFieldStyleLabel> and conformance TextField<A>;
  if (!lazy protocol witness table cache variable for type TextField<_TextFieldStyleLabel> and conformance TextField<A>)
  {
    type metadata accessor for TextField<_TextFieldStyleLabel>(255, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextField<_TextFieldStyleLabel> and conformance TextField<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type IsPlatformItemListSourcePredicate and conformance IsPlatformItemListSourcePredicate();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<IsPlatformItemListSourcePredicate, TextFieldStyleModifier<PlatformItemListTextFieldStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IsPlatformItemListSourcePredicate and conformance IsPlatformItemListSourcePredicate()
{
  result = lazy protocol witness table cache variable for type IsPlatformItemListSourcePredicate and conformance IsPlatformItemListSourcePredicate;
  if (!lazy protocol witness table cache variable for type IsPlatformItemListSourcePredicate and conformance IsPlatformItemListSourcePredicate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsPlatformItemListSourcePredicate and conformance IsPlatformItemListSourcePredicate);
  }

  return result;
}

uint64_t type metadata completion function for NSSwiftAttributedSubstring()
{
  return type metadata completion function for NSSwiftAttributedSubstring();
}

{
  return swift_initClassMetadata2();
}

void NSSwiftAttributedStringProtocol.copyOnWriteState<>()(uint64_t a1@<X8>)
{
  v3 = v1;

  NSSwiftAttributedSubstring.CopyOnWriteState.init(base:)(v3, a1);
}

void NSSwiftAttributedSubstring.CopyOnWriteState.init(base:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for NSSwiftAttributedSubstring();
  type metadata accessor for WeakBox();
  *(a2 + 8) = static Array._allocateUninitialized(_:)();
  swift_unknownObjectUnownedInit();
}

NSAttributedString __swiftcall NSSwiftAttributedSubstring.CopyOnWriteState.substring(in:)(__C::_NSRange in)
{
  v3 = v1;
  length = in.length;
  location = in.location;
  type metadata accessor for NSSwiftAttributedSubstring();
  v6 = *(v3 - 8);
  (*(v6 + 16))(v10, v2, v3);
  Strong = swift_unknownObjectUnownedLoadStrong();
  (*(v6 + 8))(v10, v3);
  v8 = NSSwiftAttributedSubstring.__allocating_init(base:range:)(Strong, location, length);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  type metadata accessor for WeakBox();
  type metadata accessor for Array();
  Array.append(_:)();
  return v8;
}

id NSSwiftAttributedSubstring.__allocating_init(base:range:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  ObjectType = swift_getObjectType();
  *&v7[direct field offset for NSSwiftAttributedSubstring.$__lazy_storage_$__stringProxy] = 0;
  *&v7[direct field offset for NSSwiftAttributedSubstring._base] = a1;
  v9 = &v7[direct field offset for NSSwiftAttributedSubstring._range];
  *v9 = a2;
  *(v9 + 1) = a3;
  v11.receiver = v7;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

Swift::Void __swiftcall NSSwiftAttributedSubstring.CopyOnWriteState.ensureReadyForWrite()()
{
  v17 = 0;
  v1 = *(v0 + 8);
  type metadata accessor for NSSwiftAttributedSubstring();
  v2 = type metadata accessor for WeakBox();

  if (MEMORY[0x18D00CDE0](v3, v2))
  {
    v4 = 0;
    v5 = v1 + 32;
    do
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        v7 = *(v2 - 8);
        (*(v7 + 16))(v16, v5, v2);
        v8 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v15 = _ArrayBuffer._getElementSlowPath(_:)();
        v7 = *(v2 - 8);
        (*(v7 + 16))(v16, &v15, v2);
        swift_unknownObjectRelease();
        v8 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_10:
          __break(1u);
          break;
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      (*(v7 + 8))(v16, v2);
      if (Strong)
      {
        v10 = specialized getter of copy #1 in NSSwiftAttributedSubstring.CopyOnWriteState.ensureReadyForWrite()(&v17, v14);
        v11 = *&Strong[direct field offset for NSSwiftAttributedSubstring._base];
        *&Strong[direct field offset for NSSwiftAttributedSubstring._base] = v10;
      }

      v5 += 8;
      ++v4;
    }

    while (v8 != MEMORY[0x18D00CDE0](v1, v2));
  }

  v12 = static Array._allocateUninitialized(_:)();
  v13 = v17;

  *(v14 + 8) = v12;
}

id specialized getter of copy #1 in NSSwiftAttributedSubstring.CopyOnWriteState.ensureReadyForWrite()(void **a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *a1;
  }

  else
  {
    v6 = type metadata accessor for NSSwiftAttributedSubstring.CopyOnWriteState();
    v7 = *(v6 - 8);
    (*(v7 + 16))(v13, a2, v6);
    Strong = swift_unknownObjectUnownedLoadStrong();
    (*(v7 + 8))(v13, v6);
    [Strong mutableCopy];

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    swift_dynamicCast();
    swift_beginAccess();
    v9 = *a1;
    *a1 = v12;
    v3 = v12;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id NSSwiftAttributedSubstring.__allocating_init(wrapping:resolver:)(uint64_t a1, uint64_t a2)
{
  v3 = specialized NSSwiftAttributedSubstring.__allocating_init(wrapping:resolver:)(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
  return v3;
}

unint64_t NSSwiftAttributedSubstring.copy()@<X0>(void *a1@<X8>)
{
  v3 = [*(v1 + direct field offset for NSSwiftAttributedSubstring._base) attributedSubstringFromRange_];
  result = type metadata accessor for NSAttributedString();
  a1[3] = result;
  *a1 = v3;
  return result;
}

uint64_t NSSwiftAttributedSubstring.mutableCopy()@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = *(*(*((*MEMORY[0x1E69E7D40] & *v1) + 0x58) + 8) + 8);
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v8 = v19 - v7;
  v9 = type metadata accessor for AttributedSubstring();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AttributedString();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  NSSwiftAttributedSubstring.content.getter(v11);
  AttributedString.init(_:)();
  v15 = *v1;
  v16 = *v3;
  v19[1] = *(v1 + direct field offset for NSSwiftAttributedSubstring._base);
  (*(*(*(*((v16 & v15) + 0x58) + 8) + 8) + 56))(*((v16 & v15) + 0x50));
  v17 = *(v4 + 40);
  *(a1 + 24) = v5;
  return v17(v14, v8, v5, v4);
}

uint64_t NSSwiftAttributedSubstring.content.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v21 = a1;
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  type metadata accessor for Range<AttributedString.Index>?(0, &lazy cache variable for type metadata for Range<AttributedString.Index>?, type metadata accessor for Range<AttributedString.Index>);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - v6;
  v8 = type metadata accessor for AttributedString();
  v22 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  v14 = *((v4 & v3) + 0x58);
  v15 = *(v14 + 16);
  v16 = *((v4 & v3) + 0x50);
  v17 = *(v2 + direct field offset for NSSwiftAttributedSubstring._base);
  v15(v16, v14);
  v18 = v22;

  (*(v18 + 16))(v10, v13, v8);
  lazy protocol witness table accessor for type AttributedSubstring and conformance AttributedSubstring(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
  Range<>.init<A>(_:in:)();
  type metadata accessor for Range<AttributedString.Index>();
  result = (*(*(v19 - 8) + 48))(v7, 1, v19);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    lazy protocol witness table accessor for type AttributedSubstring and conformance AttributedSubstring(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
    AttributedString.subscript.getter();
    (*(v18 + 8))(v13, v8);
    return outlined destroy of Range<AttributedString.Index>(v7);
  }

  return result;
}

Swift::Bool __swiftcall NSSwiftAttributedSubstring.isEqual(to:)(NSAttributedString to)
{
  v3 = *(v1 + direct field offset for NSSwiftAttributedSubstring._base);
  v4 = v1 + direct field offset for NSSwiftAttributedSubstring._range;
  v5 = *(v1 + direct field offset for NSSwiftAttributedSubstring._range);
  v6 = *(v4 + 8);
  v7 = v3;
  v9.value.location = v5;
  v9.value.length = v6;
  v9.is_nil = 0;
  LOBYTE(to.super.isa) = NSAttributedString.isCharacterAndRunwiseEqual(to:in:)(to, v9);

  return to.super.isa & 1;
}

uint64_t @objc NSSwiftAttributedSubstring.isEqual(to:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = NSSwiftAttributedSubstring.isEqual(to:)(v4);

  return a1 & 1;
}

id NSSwiftAttributedSubstring._stringProxy.getter()
{
  v1 = direct field offset for NSSwiftAttributedSubstring.$__lazy_storage_$__stringProxy;
  v2 = *&v0[direct field offset for NSSwiftAttributedSubstring.$__lazy_storage_$__stringProxy];
  if (v2)
  {
    v3 = *&v0[direct field offset for NSSwiftAttributedSubstring.$__lazy_storage_$__stringProxy];
  }

  else
  {
    v4 = type metadata accessor for NSSwiftAttributedSubstring.StringImplementation();
    v5 = v0;
    v6 = objc_allocWithZone(v4);
    v7 = v5;
    v8 = v0;
    v9 = NSSwiftAttributedSubstring.StringImplementation.init(_:)(v7);
    v10 = [objc_allocWithZone(SUINSStringProxy) initWithImplementation_];

    v11 = *&v8[v1];
    *&v8[v1] = v10;
    v3 = v10;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

Class @objc NSSwiftAttributedSubstring.stringProxy()(void *a1)
{
  v1 = a1;
  isa = NSSwiftAttributedSubstring.stringProxy()().super.super.isa;

  return isa;
}

NSAttributedString __swiftcall NSSwiftAttributedSubstring.attributedSubstring(from:)(__C::_NSRange from)
{
  v2 = *(v1 + direct field offset for NSSwiftAttributedSubstring._range);
  if (__OFADD__(from.location, v2))
  {
    __break(1u);
  }

  else
  {
    v3 = [*(v1 + direct field offset for NSSwiftAttributedSubstring._base) attributedSubstringFromRange_];

    from.location = v3;
  }

  return from.location;
}

Class @objc NSSwiftAttributedSubstring.attributedSubstring(from:)(void *a1, uint64_t a2, Swift::Int a3, Swift::Int a4)
{
  v6 = a1;
  v7.location = a3;
  v7.length = a4;
  v8.super.isa = NSSwiftAttributedSubstring.attributedSubstring(from:)(v7).super.isa;

  return v8.super.isa;
}

uint64_t NSSwiftAttributedSubstring.attributes(at:effectiveRange:)(uint64_t a1, uint64_t *a2)
{
  v5 = NSAttributedString.range.getter();

  return NSSwiftAttributedSubstring.attributes(at:longestEffectiveRange:in:)(a1, a2, v5, v4);
}

uint64_t NSSwiftAttributedSubstring.attributes(at:longestEffectiveRange:in:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v7 = *a2;
    v6 = a2[1];
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = *(v4 + direct field offset for NSSwiftAttributedSubstring._range);
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  if (v9)
  {
    __break(1u);
    goto LABEL_12;
  }

  v17 = v10;
  v18 = v6;
  if (__OFADD__(a1, v8))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (__OFADD__(a3, v8))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = [*(v4 + direct field offset for NSSwiftAttributedSubstring._base) attributesAtIndex:a1 + v8 longestEffectiveRange:&v17 inRange:{a3 + v8, a4}];
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type AttributedSubstring and conformance AttributedSubstring(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (a2)
  {
    v13 = *(v4 + direct field offset for NSSwiftAttributedSubstring._range);
    v14 = v17 - v13;
    if (!__OFSUB__(v17, v13))
    {
      v15 = v18;
      *a2 = v14;
      a2[1] = v15;
      return v12;
    }

LABEL_14:
    __break(1u);
  }

  return v12;
}

Class @objc NSSwiftAttributedSubstring.attributes(at:effectiveRange:)(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = a1;
  NSSwiftAttributedSubstring.attributes(at:effectiveRange:)(a3, a4);

  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type AttributedSubstring and conformance AttributedSubstring(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

Class @objc NSSwiftAttributedSubstring.attributes(at:longestEffectiveRange:in:)(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v10 = a1;
  NSSwiftAttributedSubstring.attributes(at:longestEffectiveRange:in:)(a3, a4, a5, a6);

  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type AttributedSubstring and conformance AttributedSubstring(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  v11.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v11.super.isa;
}

id NSSwiftAttributedSubstring.attribute(_:at:effectiveRange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X8>)
{
  v9 = NSAttributedString.range.getter();

  return NSSwiftAttributedSubstring.attribute(_:at:longestEffectiveRange:in:)(a1, a2, a3, v9, v8, a4);
}

id NSSwiftAttributedSubstring.attribute(_:at:longestEffectiveRange:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v10 = *a3;
    v9 = a3[1];
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v11 = *(v6 + direct field offset for NSSwiftAttributedSubstring._range);
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v13;
  v20 = v9;
  if (__OFADD__(a2, v11))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (__OFADD__(a4, v11))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = [*(v6 + direct field offset for NSSwiftAttributedSubstring._base) attribute:a1 atIndex:a2 + v11 longestEffectiveRange:&v19 inRange:{a4 + v11, a5}];
  if (result)
  {
    _bridgeAnyObjectToAny(_:)();
    result = swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v15 = v22;
  *a6 = v21;
  a6[1] = v15;
  if (a3)
  {
    v16 = *(v6 + direct field offset for NSSwiftAttributedSubstring._range);
    v17 = v19 - v16;
    if (!__OFSUB__(v19, v16))
    {
      v18 = v20;
      *a3 = v17;
      a3[1] = v18;
      return result;
    }

LABEL_17:
    __break(1u);
  }

  return result;
}

id @objc NSSwiftAttributedSubstring.attribute(_:at:effectiveRange:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v8 = a3;
  v9 = a1;
  NSSwiftAttributedSubstring.attribute(_:at:effectiveRange:)(v8, a4, a5, &v18);

  v10 = v19;
  if (v19)
  {
    v11 = __swift_project_boxed_opaque_existential_1(&v18, v19);
    v12 = *(v10 - 8);
    v13 = MEMORY[0x1EEE9AC00](v11);
    v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v15, v13);
    v16 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v12 + 8))(v15, v10);
    __swift_destroy_boxed_opaque_existential_1(&v18);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

id @objc NSSwiftAttributedSubstring.attribute(_:at:longestEffectiveRange:in:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v12 = a3;
  v13 = a1;
  NSSwiftAttributedSubstring.attribute(_:at:longestEffectiveRange:in:)(v12, a4, a5, a6, a7, &v22);

  v14 = v23;
  if (v23)
  {
    v15 = __swift_project_boxed_opaque_existential_1(&v22, v23);
    v16 = *(v14 - 8);
    v17 = MEMORY[0x1EEE9AC00](v15);
    v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v19, v17);
    v20 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v16 + 8))(v19, v14);
    __swift_destroy_boxed_opaque_existential_1(&v22);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

uint64_t NSSwiftAttributedSubstring.enumerateAttributes(in:options:using:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *&v5[direct field offset for NSSwiftAttributedSubstring._range];
  v7 = result + v6;
  if (__OFADD__(result, v6))
  {
    __break(1u);
    goto LABEL_5;
  }

  v12 = *&v5[direct field offset for NSSwiftAttributedSubstring._base];
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = v5;
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in NSSwiftAttributedSubstring.enumerateAttributes(in:options:using:);
  *(v14 + 24) = v13;
  v18[4] = partial apply for thunk for @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v18[5] = v14;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v18[3] = &block_descriptor_14;
  v15 = _Block_copy(v18);
  v16 = v12;
  v17 = v5;

  [v16 enumerateAttributesInRange:v7 options:a2 usingBlock:{a3, v15}];

  _Block_release(v15);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void @objc NSSwiftAttributedSubstring.enumerateAttributes(in:options:using:)(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *aBlock)
{
  v10 = _Block_copy(aBlock);
  v12[2] = v10;
  v11 = a1;
  NSSwiftAttributedSubstring.enumerateAttributes(in:options:using:)(a3, a4, a5, partial apply for thunk for @callee_unowned @convention(block) (@unowned NSDictionary, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> (), v12);
  _Block_release(v10);
}

uint64_t NSSwiftAttributedSubstring.enumerateAttribute(_:in:options:using:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *&v6[direct field offset for NSSwiftAttributedSubstring._range];
  v8 = a2 + v7;
  if (__OFADD__(a2, v7))
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = result;
  v14 = *&v6[direct field offset for NSSwiftAttributedSubstring._base];
  v15 = swift_allocObject();
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = v6;
  v16 = swift_allocObject();
  *(v16 + 16) = partial apply for closure #1 in NSSwiftAttributedSubstring.enumerateAttribute(_:in:options:using:);
  *(v16 + 24) = v15;
  v20[4] = partial apply for thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v20[5] = v16;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1107296256;
  v20[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v20[3] = &block_descriptor_5;
  v17 = _Block_copy(v20);
  v18 = v14;
  v19 = v6;

  [v18 enumerateAttribute:v13 inRange:v8 options:a3 usingBlock:{a4, v17}];

  _Block_release(v17);
  LOBYTE(a4) = swift_isEscapingClosureAtFileLocation();

  if (a4)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void @objc NSSwiftAttributedSubstring.enumerateAttribute(_:in:options:using:)(void *a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *aBlock)
{
  v12 = _Block_copy(aBlock);
  v15[2] = v12;
  v13 = a3;
  v14 = a1;
  NSSwiftAttributedSubstring.enumerateAttribute(_:in:options:using:)(v13, a4, a5, a6, partial apply for thunk for @callee_unowned @convention(block) (@unowned Swift.AnyObject?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> (), v15);
  _Block_release(v12);
}

void @objc NSSwiftAttributedSubstring.init(data:options:documentAttributes:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  specialized NSSwiftAttributedSubstring.init(data:options:documentAttributes:)();
}

void sub_18C219558(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (v21)
  {
    if (v20)
    {
      v22 = _convertErrorToNSError(_:)();

      v23 = v22;
      *v20 = v22;
    }

    else
    {
    }
  }
}

void @objc NSSwiftAttributedSubstring.init(__contentsOfMarkdownFileAt:options:baseURL:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  type metadata accessor for Range<AttributedString.Index>?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17[-v8];
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  if (a5)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v11 + 32))(v9, v13, v10);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  (*(v11 + 56))(v9, v15, 1, v10);
  v16 = a4;
  specialized NSSwiftAttributedSubstring.init(__contentsOfMarkdownFileAt:options:baseURL:)();
}

void sub_18C219794(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (v21)
  {
    if (v20)
    {
      v22 = _convertErrorToNSError(_:)();

      v23 = v22;
      *v20 = v22;
    }

    else
    {
    }
  }
}

void @objc NSSwiftAttributedSubstring.init(__markdown:options:baseURL:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Range<AttributedString.Index>?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v18[-v13];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  if (v17)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v9 + 32))(v14, v11, v8);
    (*(v9 + 56))(v14, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(v14, 1, 1, v8);
  }

  specialized NSSwiftAttributedSubstring.init(__markdown:options:baseURL:)();
}

void sub_18C2199C4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (v21)
  {
    if (v20)
    {
      v22 = _convertErrorToNSError(_:)();

      v23 = v22;
      *v20 = v22;
    }

    else
    {
    }
  }
}

void @objc NSSwiftAttributedSubstring.init(__markdownString:options:baseURL:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Range<AttributedString.Index>?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v15[-v12];
  if (a5)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v8 + 32))(v13, v10, v7);
    (*(v8 + 56))(v13, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  v14 = a4;
  specialized NSSwiftAttributedSubstring.init(__markdownString:options:baseURL:)();
}

void sub_18C219BD4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (v19)
  {
    if (v18)
    {
      v20 = _convertErrorToNSError(_:)();

      v21 = v20;
      *v18 = v20;
    }

    else
    {
    }
  }
}

void @objc NSSwiftAttributedSubstring.init(attributedString:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  specialized NSSwiftAttributedSubstring.init(attributedString:)();
}

void @objc NSSwiftAttributedSubstring.init(html:options:documentAttributes:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a3)
  {
    v5 = a4;
    v6 = a3;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  specialized NSSwiftAttributedSubstring.init(html:options:documentAttributes:)();
}

uint64_t @objc NSSwiftAttributedSubstring.init(url:options:documentAttributes:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(char *, void, void))
{
  v8 = *a1;
  v9 = *MEMORY[0x1E69E7D40];
  v10 = type metadata accessor for URL();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  return a7(v12, *((v9 & v8) + 0x50), *((v9 & v8) + 0x58));
}

void @objc NSSwiftAttributedSubstring.__ivar_destroyer(uint64_t a1)
{
  v2 = *(a1 + direct field offset for NSSwiftAttributedSubstring.$__lazy_storage_$__stringProxy);
}

id NSSwiftAttributedSubstring.StringImplementation.init(_:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  AttributedString.CStringCache.init()();
  AttributedString.UTF16Cache.init()();
  *&v1[direct field offset for NSSwiftAttributedSubstring.StringImplementation.str] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id NSSwiftAttributedSubstring.StringImplementation.copy()@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  NSSwiftAttributedSubstring.copy()(v6);
  type metadata accessor for NSSwiftAttributedSubstring();
  swift_dynamicCast();
  v3 = objc_allocWithZone(ObjectType);
  result = NSSwiftAttributedSubstring.StringImplementation.init(_:)(v5);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t @objc NSSwiftAttributedSubstring.copy()(void *a1, uint64_t a2, void (*a3)(void *__return_ptr))
{
  v4 = a1;
  a3(v7);

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v5 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

id NSSwiftAttributedSubstring.StringImplementation.character(at:)(uint64_t a1)
{
  result = [*(*(v1 + direct field offset for NSSwiftAttributedSubstring.StringImplementation.str) + direct field offset for NSSwiftAttributedSubstring._base) stringProxy];
  v4 = *(*(v1 + direct field offset for NSSwiftAttributedSubstring.StringImplementation.str) + direct field offset for NSSwiftAttributedSubstring._range);
  if (__OFADD__(a1, v4))
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = [result characterAtIndex_];

    return v6;
  }

  return result;
}

uint64_t @objc NSSwiftAttributedSubstring.StringImplementation.character(at:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  LOWORD(a3) = NSSwiftAttributedSubstring.StringImplementation.character(at:)(a3);

  return a3;
}

void NSSwiftAttributedSubstring.StringImplementation.getCharacters(_:range:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [*(*(v3 + direct field offset for NSSwiftAttributedSubstring.StringImplementation.str) + direct field offset for NSSwiftAttributedSubstring._base) stringProxy];
  v8 = *(*(v3 + direct field offset for NSSwiftAttributedSubstring.StringImplementation.str) + direct field offset for NSSwiftAttributedSubstring._range);
  if (__OFADD__(a2, v8))
  {
    __break(1u);
  }

  else
  {
    v9 = v7;
    [v7 getCharacters:a1 range:{a2 + v8, a3}];
  }
}

void @objc NSSwiftAttributedSubstring.StringImplementation.getCharacters(_:range:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1;
  NSSwiftAttributedSubstring.StringImplementation.getCharacters(_:range:)(a3, a4, a5);
}

uint64_t NSSwiftAttributedSubstring.StringImplementation._fastCStringContents(_:)(char a1)
{
  v2 = v1;
  v42 = *MEMORY[0x1E69E7D40] & *v2;
  v4 = type metadata accessor for AttributedSubstring();
  v52 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AttributedString.UTF8View();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttributedString.UTF16View();
  v43 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for AttributedString();
  v44 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AttributedString.Index();
  v45 = *(v14 - 8);
  v46 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v50 = &v38 - v19;
  if ((a1 & 1) != 0 || (v20 = [*(*(v2 + direct field offset for NSSwiftAttributedSubstring.StringImplementation.str) + direct field offset for NSSwiftAttributedSubstring._base) stringProxy], v21 = objc_msgSend(v20, sel__fastCStringContents_, 0), v22 = v20, (v41 = v21) == 0))
  {
    NSSwiftAttributedSubstring.content.getter(v6);
    swift_beginAccess();
    lazy protocol witness table accessor for type AttributedSubstring and conformance AttributedSubstring(&lazy protocol witness table cache variable for type AttributedSubstring and conformance AttributedSubstring, MEMORY[0x1E6968968]);
    v36 = AttributedString.CStringCache.buffer<A>(for:maxLength:)();
    swift_endAccess();
    (*(v52 + 8))(v6, v4);
  }

  else
  {
    v23 = *(v2 + direct field offset for NSSwiftAttributedSubstring.StringImplementation.str);
    v52 = direct field offset for NSSwiftAttributedSubstring._base;
    v24 = *(v23 + direct field offset for NSSwiftAttributedSubstring._base);
    v38 = v23;
    v25 = *(v42 + 80);
    v26 = *(v42 + 88);
    v39 = v26;
    v40 = v25;
    v42 = *(v26 + 16);
    v27 = v42;
    v28 = v24;
    v27(v25, v26);

    AttributedString.utf16.getter();
    v44 = *(v44 + 8);
    (v44)(v13, v51);
    lazy protocol witness table accessor for type AttributedSubstring and conformance AttributedSubstring(&lazy protocol witness table cache variable for type AttributedString.UTF16View and conformance AttributedString.UTF16View, MEMORY[0x1E6968810]);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.index(_:offsetBy:)();
    v29 = v46;
    v30 = *(v45 + 8);
    v30(v16, v46);
    (*(v43 + 8))(v11, v9);
    v31 = *(v38 + v52);
    (v42)(v40, v39);

    v32 = v47;
    AttributedString.utf8.getter();
    (v44)(v13, v51);
    lazy protocol witness table accessor for type AttributedSubstring and conformance AttributedSubstring(&lazy protocol witness table cache variable for type AttributedString.UTF8View and conformance AttributedString.UTF8View, MEMORY[0x1E6968800]);
    v33 = v49;
    dispatch thunk of Collection.startIndex.getter();
    v34 = v50;
    v35 = dispatch thunk of Collection.distance(from:to:)();
    v30(v16, v29);
    (*(v48 + 8))(v32, v33);
    v30(v34, v29);
    return v41 + v35;
  }

  return v36;
}

uint64_t @objc NSSwiftAttributedSubstring.StringImplementation._fastCStringContents(_:)(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  v5 = NSSwiftAttributedSubstring.StringImplementation._fastCStringContents(_:)(a3);

  return v5;
}

char *NSSwiftAttributedSubstring.StringImplementation._fastCharacterContents()()
{
  v1 = v0;
  v2 = type metadata accessor for AttributedSubstring();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(*(v0 + direct field offset for NSSwiftAttributedSubstring.StringImplementation.str) + direct field offset for NSSwiftAttributedSubstring._base) stringProxy];
  v8 = [v7 _fastCharacterContents];
  v9 = v7;
  if (v8)
  {
    return &v8[2 * *(*(v1 + direct field offset for NSSwiftAttributedSubstring.StringImplementation.str) + direct field offset for NSSwiftAttributedSubstring._range)];
  }

  NSSwiftAttributedSubstring.content.getter(v6);
  swift_beginAccess();
  lazy protocol witness table accessor for type AttributedSubstring and conformance AttributedSubstring(&lazy protocol witness table cache variable for type AttributedSubstring and conformance AttributedSubstring, MEMORY[0x1E6968968]);
  v11 = AttributedString.UTF16Cache.buffer<A>(for:maxLength:)();
  swift_endAccess();
  (*(v3 + 8))(v6, v2);
  return v11;
}

char *@objc NSSwiftAttributedSubstring.StringImplementation._fastCharacterContents()(void *a1)
{
  v1 = a1;
  v2 = NSSwiftAttributedSubstring.StringImplementation._fastCharacterContents()();

  return v2;
}

uint64_t @objc NSSwiftAttributedSubstring.StringImplementation.__ivar_destroyer(uint64_t a1)
{
}

uint64_t destroy for NSSwiftAttributedSubstring.CopyOnWriteState()
{
  swift_unknownObjectUnownedDestroy();
}

uint64_t initializeWithCopy for NSSwiftAttributedSubstring.CopyOnWriteState(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectUnownedCopyInit();
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t assignWithCopy for NSSwiftAttributedSubstring.CopyOnWriteState(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectUnownedCopyAssign();
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t initializeWithTake for NSSwiftAttributedSubstring.CopyOnWriteState(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectUnownedTakeInit();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t assignWithTake for NSSwiftAttributedSubstring.CopyOnWriteState(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectUnownedTakeAssign();
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t getEnumTagSinglePayload for NSSwiftAttributedSubstring.CopyOnWriteState(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for NSSwiftAttributedSubstring.CopyOnWriteState(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

id protocol witness for NSSwiftAttributedStringProtocol.init(wrapping:resolver:) in conformance NSSwiftAttributedSubstring<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = NSSwiftAttributedSubstring.__allocating_init(wrapping:resolver:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t NSSwiftAttributedSubstring.runs(for:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v34 = *MEMORY[0x1E69E7D40] & *v4;
  v36 = type metadata accessor for AttributedString();
  MEMORY[0x1EEE9AC00](v36);
  type metadata accessor for Range<AttributedString.Index>?(0, &lazy cache variable for type metadata for Range<AttributedString.Index>?, type metadata accessor for Range<AttributedString.Index>);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v35 = &v29 - v9;
  v10 = type metadata accessor for AttributedSubstring();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>();
  v14 = v13;
  v32 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v31 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  outlined init with copy of Range<AttributedString.Index>(a2, &v29 - v17);
  NSSwiftAttributedSubstring.content.getter(v12);
  lazy protocol witness table accessor for type AttributedSubstring and conformance AttributedSubstring(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
  lazy protocol witness table accessor for type AttributedSubstring and conformance AttributedSubstring(&lazy protocol witness table cache variable for type AttributedSubstring and conformance AttributedSubstring, MEMORY[0x1E6968968]);
  v33 = v14;
  result = _NSRange.init<A, B>(_:in:)();
  if (__OFADD__(result, *(v4 + direct field offset for NSSwiftAttributedSubstring._range)))
  {
    __break(1u);
  }

  else
  {
    v29 = a3;
    v30 = a1;
    v19 = direct field offset for NSSwiftAttributedSubstring._base;
    v20 = *(v34 + 80);
    v21 = *(v34 + 88);
    v22 = *(v21 + 16);
    v23 = *(v4 + direct field offset for NSSwiftAttributedSubstring._base);
    v22(v20, v21);

    lazy protocol witness table accessor for type AttributedSubstring and conformance AttributedSubstring(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
    v24 = v35;
    Range<>.init<A>(_:in:)();
    result = (*(v32 + 48))(v24, 1, v33);
    if (result != 1)
    {
      v25 = v31;
      outlined init with take of Range<AttributedString.Index>(v24, v31);
      v26 = *(v21 + 8);
      v27 = *(v26 + 40);
      v28 = *(v4 + v19);
      v27(v30, v25, v20, v26);

      return outlined destroy of Range<AttributedString.Index>(v25);
    }
  }

  __break(1u);
  return result;
}

uint64_t instantiation function for generic protocol witness table for NSSwiftAttributedSubstring<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t outlined destroy of Range<AttributedString.Index>(uint64_t a1)
{
  type metadata accessor for Range<AttributedString.Index>();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of Range<AttributedString.Index>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Range<AttributedString.Index>();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Range<AttributedString.Index>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Range<AttributedString.Index>();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id specialized NSSwiftAttributedSubstring.__allocating_init(wrapping:resolver:)(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v5 = v2 + 80;
  v4 = *(v2 + 80);
  v6 = *(*(*(v5 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v22 - v9;
  v11 = type metadata accessor for AttributedString();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11, v13);
  (*(v8 + 16))(v10, v22, AssociatedTypeWitness);
  (*(v6 + 40))(&v23, v15, v10, v4, v6);
  v16 = v23;
  v17 = NSAttributedString.range.getter();
  v19 = v18;

  v20 = NSSwiftAttributedSubstring.__allocating_init(base:range:)(v16, v17, v19);
  (*(v12 + 8))(a1, v11);
  return v20;
}

void specialized NSSwiftAttributedSubstring.init(coder:)()
{
  *(v0 + direct field offset for NSSwiftAttributedSubstring.$__lazy_storage_$__stringProxy) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void type metadata accessor for Range<AttributedString.Index>?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t partial apply for closure #1 in NSSwiftAttributedSubstring.enumerateAttribute(_:in:options:using:)(uint64_t result, uint64_t a2)
{
  v3 = *(*(v2 + 32) + direct field offset for NSSwiftAttributedSubstring._range);
  v4 = __OFSUB__(a2, v3);
  v5 = a2 - v3;
  if (!v4)
  {
    return (*(v2 + 16))(result, v5);
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in NSSwiftAttributedSubstring.enumerateAttributes(in:options:using:)(uint64_t result, uint64_t a2)
{
  v3 = *(*(v2 + 32) + direct field offset for NSSwiftAttributedSubstring._range);
  v4 = __OFSUB__(a2, v3);
  v5 = a2 - v3;
  if (!v4)
  {
    return (*(v2 + 16))(result, v5);
  }

  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type AttributedSubstring and conformance AttributedSubstring(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t WindowGroup.init(id:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, _OWORD *a4@<X8>)
{
  v8 = type metadata accessor for WindowGroup();
  *a4 = 0u;
  a4[1] = 0u;
  v9 = (a4 + v8[10]);
  *(a4 + v8[11]) = 0;
  v10 = (a4 + v8[12]);
  *v10 = 0;
  v10[1] = 0;
  *v9 = a1;
  v9[1] = a2;
  a3();
  type metadata accessor for WindowGroupRootContent();

  return swift_storeEnumTagMultiPayload();
}

uint64_t WindowGroup.init(_:id:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t *a8@<X8>)
{
  v13 = type metadata accessor for WindowGroup();
  v14 = (a8 + v13[10]);
  *(a8 + v13[11]) = 0;
  v15 = (a8 + v13[12]);
  *v15 = 0;
  v15[1] = 0;
  MEMORY[0x18D009CE0](&v21);
  Text.assertUnstyled(_:options:)();
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3 & 1;
  a8[3] = a4;
  *v14 = a5;
  v14[1] = a6;
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  a7(v16);
  outlined consume of Text.Storage(a1, a2, a3 & 1);

  type metadata accessor for WindowGroupRootContent();

  return swift_storeEnumTagMultiPayload();
}

uint64_t WindowGroup.init(_:id:content:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, void (*a3)(uint64_t)@<X6>, uint64_t *a4@<X8>)
{
  v8 = Text.init(_:tableName:bundle:comment:)();
  v12 = v11 & 1;

  return WindowGroup.init(_:id:content:)(v8, v9, v12, v10, a1, a2, a3, a4);
}

uint64_t WindowGroup.init<A>(_:id:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v22 = a4;
  v23 = a5;
  v12 = *(a6 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  (*(v12 + 16))(&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v15, v13);
  v16 = Text.init<A>(_:)();
  WindowGroup.init(_:id:content:)(v16, v18, v17 & 1, v19, a2, a3, v22, a7);
  return (*(v12 + 8))(a1, a6);
}

uint64_t WindowGroup.init(content:)@<X0>(void (*a1)(void)@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for WindowGroup();
  *a2 = 0u;
  a2[1] = 0u;
  v5 = (a2 + v4[10]);
  *v5 = 0;
  v5[1] = 0;
  *(a2 + v4[11]) = 0;
  v6 = (a2 + v4[12]);
  *v6 = 0;
  v6[1] = 0;
  a1();
  type metadata accessor for WindowGroupRootContent();

  return swift_storeEnumTagMultiPayload();
}

uint64_t WindowGroup.init(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t *a6@<X8>)
{
  v12 = type metadata accessor for WindowGroup();
  v13 = (a6 + v12[10]);
  *v13 = 0;
  v13[1] = 0;
  *(a6 + v12[11]) = 0;
  v14 = (a6 + v12[12]);
  *v14 = 0;
  v14[1] = 0;
  MEMORY[0x18D009CE0](&v17);
  Text.assertUnstyled(_:options:)();
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3 & 1;
  a6[3] = a4;
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  a5(v15);
  outlined consume of Text.Storage(a1, a2, a3 & 1);

  type metadata accessor for WindowGroupRootContent();

  return swift_storeEnumTagMultiPayload();
}

uint64_t WindowGroup.init(_:content:)@<X0>(void (*a1)(uint64_t)@<X4>, uint64_t *a2@<X8>)
{
  v4 = Text.init(_:tableName:bundle:comment:)();
  v8 = v7 & 1;

  return WindowGroup.init(_:content:)(v4, v5, v8, v6, a1, a2);
}

uint64_t WindowGroup.init<A>(_:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v8 = *(a3 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 16))(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11, v9);
  v12 = Text.init<A>(_:)();
  WindowGroup.init(_:content:)(v12, v14, v13 & 1, v15, a2, a4);
  return (*(v8 + 8))(a1, a3);
}

_OWORD *initializeBufferWithCopyOfBuffer for WindowGroup(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = v5 & 0xF8 | 7;
  if (*(v4 + 64) <= 0x10uLL)
  {
    v7 = 16;
  }

  else
  {
    v7 = *(v4 + 64);
  }

  if ((v5 & 0x1000F8) != 0 || ((((((v7 + (((v5 & 0xF8) + 39) & ~v6) + 8) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 + 16) & ~v6));
    goto LABEL_34;
  }

  v10 = *(a2 + 24);
  if (v10 < 0xFFFFFFFF)
  {
    v15 = *(a2 + 16);
    *a1 = *a2;
    a1[1] = v15;
  }

  else
  {
    v11 = *a2;
    v12 = *(a2 + 8);
    v13 = *(a2 + 16);
    v14 = a2;
    outlined copy of Text.Storage(*a2, v12, v13);
    *v3 = v11;
    *(v3 + 1) = v12;
    *(v3 + 16) = v13;
    *(v3 + 3) = v10;

    a2 = v14;
  }

  v16 = v3 + 39;
  v17 = a2 + 39;
  v18 = ((a2 + 39) & 0xFFFFFFFFFFFFFFF8);
  v19 = *(v18 + v7);
  v20 = v19 - 2;
  if (v19 >= 2)
  {
    if (v7 <= 3)
    {
      v21 = v7;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v22 = *v18;
        if (v7 < 4)
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (v21 == 3)
        {
          v22 = *v18 | (*(v18 + 2) << 16);
          if (v7 < 4)
          {
            goto LABEL_28;
          }

          goto LABEL_26;
        }

        v22 = *v18;
        if (v7 < 4)
        {
LABEL_28:
          v19 = (v22 | (v20 << (8 * v7))) + 2;
          goto LABEL_29;
        }
      }

LABEL_26:
      v19 = v22 + 2;
      goto LABEL_29;
    }

    if (v21)
    {
      v22 = *v18;
      if (v7 < 4)
      {
        goto LABEL_28;
      }

      goto LABEL_26;
    }
  }

LABEL_29:
  v23 = v7 + 1;
  v24 = (v16 & 0xFFFFFFFFFFFFFFF8);
  if (v19 == 1)
  {
    v25 = *(v18 + 1);
    *v24 = *v18;
    v24[1] = v25;

    v26 = 1;
  }

  else
  {
    (*(v4 + 16))(v16 & 0xFFFFFFFFFFFFFFF8);
    v26 = 0;
  }

  *(v24 + v7) = v26;
  v27 = (((v16 | 7) + v23) & 0xFFFFFFFFFFFFFFF8);
  v28 = (((v17 | 7) + v23) & 0xFFFFFFFFFFFFFFF8);
  *v27 = *v28;
  v27[1] = v28[1];
  v29 = ((v28 + 23) & 0xFFFFFFFFFFFFFFF8);
  v30 = ((v27 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v30 = *v29;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = ((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
  v33 = *v32;

  if (v33 < 0xFFFFFFFF)
  {
    *v31 = *v32;
    return v3;
  }

  v34 = v32[1];
  *v31 = v33;
  *(v31 + 8) = v34;
LABEL_34:

  return v3;
}

uint64_t assignWithCopy for WindowGroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 24);
  if (*(a1 + 24) < 0xFFFFFFFFuLL)
  {
    if (v6 >= 0xFFFFFFFF)
    {
      v13 = *a2;
      v14 = *(a2 + 8);
      v15 = *(a2 + 16);
      outlined copy of Text.Storage(*a2, v14, v15);
      *a1 = v13;
      *(a1 + 8) = v14;
      *(a1 + 16) = v15;
      *(a1 + 24) = *(a2 + 24);

      goto LABEL_8;
    }
  }

  else
  {
    if (v6 >= 0xFFFFFFFF)
    {
      v7 = *a2;
      v8 = *(a2 + 8);
      v9 = *(a2 + 16);
      outlined copy of Text.Storage(*a2, v8, v9);
      v10 = *a1;
      v11 = *(a1 + 8);
      v12 = *(a1 + 16);
      *a1 = v7;
      *(a1 + 8) = v8;
      *(a1 + 16) = v9;
      outlined consume of Text.Storage(v10, v11, v12);
      *(a1 + 24) = *(a2 + 24);

      goto LABEL_8;
    }

    outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));
  }

  v16 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v16;
LABEL_8:
  v17 = *(a3 + 16);
  v18 = *(v17 - 8);
  v19 = *(v18 + 80) & 0xF8;
  v20 = v19 + 39;
  v21 = v19 + 39 + a1;
  v22 = ~v19 & 0xFFFFFFFFFFFFFFF8;
  v23 = (v21 & v22);
  v24 = ((v20 + a2) & v22);
  if (*(v18 + 64) <= 0x10uLL)
  {
    v25 = 16;
  }

  else
  {
    v25 = *(v18 + 64);
  }

  if (v23 != v24)
  {
    v26 = v23[v25];
    v27 = v26 - 2;
    if (v26 < 2)
    {
      goto LABEL_26;
    }

    if (v25 <= 3)
    {
      v28 = v25;
    }

    else
    {
      v28 = 4;
    }

    if (v28 <= 1)
    {
      if (!v28)
      {
        goto LABEL_26;
      }

      v29 = *v23;
    }

    else if (v28 == 2)
    {
      v29 = *v23;
    }

    else if (v28 == 3)
    {
      v29 = *v23 | (v23[2] << 16);
    }

    else
    {
      v29 = *v23;
    }

    v30 = (v29 | (v27 << (8 * v25))) + 2;
    v26 = v29 + 2;
    if (v25 < 4)
    {
      v26 = v30;
    }

LABEL_26:
    if (v26 == 1)
    {
    }

    else
    {
      (*(v18 + 8))(v23, v17);
    }

    v31 = v24[v25];
    v32 = v31 - 2;
    if (v31 < 2)
    {
      goto LABEL_43;
    }

    if (v25 <= 3)
    {
      v33 = v25;
    }

    else
    {
      v33 = 4;
    }

    if (v33 <= 1)
    {
      if (!v33)
      {
LABEL_43:
        if (v31 == 1)
        {
          v36 = *(v24 + 1);
          *v23 = *v24;
          *(v23 + 1) = v36;
          v23[v25] = 1;
        }

        else
        {
          (*(v18 + 16))(v23, v24, v17);
          v23[v25] = 0;
        }

        goto LABEL_46;
      }

      v34 = *v24;
    }

    else if (v33 == 2)
    {
      v34 = *v24;
    }

    else if (v33 == 3)
    {
      v34 = *v24 | (v24[2] << 16);
    }

    else
    {
      v34 = *v24;
    }

    v35 = (v34 | (v32 << (8 * v25))) + 2;
    v31 = v34 + 2;
    if (v25 < 4)
    {
      v31 = v35;
    }

    goto LABEL_43;
  }

LABEL_46:
  v37 = (&v23[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
  v38 = (&v24[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
  *v37 = *v38;
  v37[1] = v38[1];

  v39 = ((v37 + 23) & 0xFFFFFFFFFFFFFFF8);
  v40 = ((v38 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v39 = *v40;
  v41 = ((v39 + 15) & 0xFFFFFFFFFFFFFFF8);
  v42 = ((v40 + 15) & 0xFFFFFFFFFFFFFFF8);
  v43 = *v42;
  if (*v41 < 0xFFFFFFFFuLL)
  {
    if (v43 >= 0xFFFFFFFF)
    {
      v45 = v42[1];
      *v41 = v43;
      v41[1] = v45;

      return a1;
    }

LABEL_52:
    *v41 = *v42;
    return a1;
  }

  if (v43 < 0xFFFFFFFF)
  {

    goto LABEL_52;
  }

  v44 = v42[1];
  *v41 = v43;
  v41[1] = v44;

  return a1;
}

__n128 initializeWithTake for WindowGroup(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80) & 0xF8;
  v6 = v5 + 39;
  v7 = a1 + v5 + 39;
  v8 = ~v5 & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 & v8);
  v10 = ((a2 + v6) & v8);
  if (*(v4 + 64) <= 0x10uLL)
  {
    v11 = 16;
  }

  else
  {
    v11 = *(*(*(a3 + 16) - 8) + 64);
  }

  v12 = v10[v11];
  v13 = v12 - 2;
  if (v12 < 2)
  {
    goto LABEL_18;
  }

  if (v11 <= 3)
  {
    v14 = v11;
  }

  else
  {
    v14 = 4;
  }

  if (v14 <= 1)
  {
    if (!v14)
    {
      goto LABEL_18;
    }

    v15 = *v10;
  }

  else if (v14 == 2)
  {
    v15 = *v10;
  }

  else if (v14 == 3)
  {
    v15 = *v10 | (v10[2] << 16);
  }

  else
  {
    v15 = *v10;
  }

  v16 = (v15 | (v13 << (8 * v11))) + 2;
  v12 = v15 + 2;
  if (v11 < 4)
  {
    v12 = v16;
  }

LABEL_18:
  if (v12 == 1)
  {
    *v9 = *v10;
    v17 = 1;
  }

  else
  {
    (*(v4 + 32))(v9, v10);
    v17 = 0;
  }

  *(v9 + v11) = v17;
  v18 = ((v9 + v11 + 8) & 0xFFFFFFFFFFFFFFF8);
  v19 = (&v10[v11 + 8] & 0xFFFFFFFFFFFFFFF8);
  result = *v19;
  *v18 = *v19;
  v21 = ((v18 + 23) & 0xFFFFFFFFFFFFFFF8);
  v22 = ((v19[1].n128_u64 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v21 = *v22;
  v23 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
  v25 = v24->n128_u64[0];
  if (v24->n128_u64[0] < 0xFFFFFFFF)
  {
    result = *v24;
    *v23 = *v24;
  }

  else
  {
    v26 = v24->n128_i64[1];
    *v23 = v25;
    *(v23 + 8) = v26;
  }

  return result;
}

uint64_t assignWithTake for WindowGroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24) >= 0xFFFFFFFFuLL)
  {
    if (*(a2 + 24) >= 0xFFFFFFFFuLL)
    {
      v6 = *(a2 + 16);
      v7 = *a1;
      v8 = *(a1 + 8);
      v9 = *(a1 + 16);
      *a1 = *a2;
      *(a1 + 16) = v6;
      outlined consume of Text.Storage(v7, v8, v9);
      *(a1 + 24) = *(a2 + 24);

      goto LABEL_6;
    }

    outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));
  }

  v10 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v10;
LABEL_6:
  v11 = *(a3 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 80) & 0xF8;
  v14 = v13 + 39;
  v15 = v13 + 39 + a1;
  v16 = ~v13 & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 & v16);
  v18 = ((v14 + a2) & v16);
  if (*(v12 + 64) <= 0x10uLL)
  {
    v19 = 16;
  }

  else
  {
    v19 = *(v12 + 64);
  }

  if (v17 != v18)
  {
    v20 = v17[v19];
    v21 = v20 - 2;
    if (v20 < 2)
    {
      goto LABEL_24;
    }

    if (v19 <= 3)
    {
      v22 = v19;
    }

    else
    {
      v22 = 4;
    }

    if (v22 <= 1)
    {
      if (!v22)
      {
        goto LABEL_24;
      }

      v23 = *v17;
    }

    else if (v22 == 2)
    {
      v23 = *v17;
    }

    else if (v22 == 3)
    {
      v23 = *v17 | (v17[2] << 16);
    }

    else
    {
      v23 = *v17;
    }

    v24 = (v23 | (v21 << (8 * v19))) + 2;
    v20 = v23 + 2;
    if (v19 < 4)
    {
      v20 = v24;
    }

LABEL_24:
    if (v20 == 1)
    {
    }

    else
    {
      (*(v12 + 8))(v17, v11);
    }

    v25 = *(v18 + v19);
    v26 = v25 - 2;
    if (v25 >= 2)
    {
      if (v19 <= 3)
      {
        v27 = v19;
      }

      else
      {
        v27 = 4;
      }

      if (v27 > 1)
      {
        if (v27 == 2)
        {
          v28 = *v18;
        }

        else if (v27 == 3)
        {
          v28 = *v18 | (*(v18 + 2) << 16);
        }

        else
        {
          v28 = *v18;
        }

LABEL_39:
        v29 = (v28 | (v26 << (8 * v19))) + 2;
        v25 = v28 + 2;
        if (v19 < 4)
        {
          v25 = v29;
        }

        goto LABEL_41;
      }

      if (v27)
      {
        v28 = *v18;
        goto LABEL_39;
      }
    }

LABEL_41:
    if (v25 == 1)
    {
      *v17 = *v18;
      v30 = 1;
    }

    else
    {
      (*(v12 + 32))(v17, v18, v11);
      v30 = 0;
    }

    v17[v19] = v30;
  }

  v31 = (&v17[v19 + 8] & 0xFFFFFFFFFFFFFFF8);
  v32 = ((v18 + v19 + 8) & 0xFFFFFFFFFFFFFFF8);
  *v31 = *v32;
  v31[1] = v32[1];

  v33 = ((v31 + 23) & 0xFFFFFFFFFFFFFFF8);
  v34 = ((v32 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v33 = *v34;
  v35 = ((v33 + 15) & 0xFFFFFFFFFFFFFFF8);
  v36 = ((v34 + 15) & 0xFFFFFFFFFFFFFFF8);
  v37 = *v36;
  if (*v35 < 0xFFFFFFFFuLL)
  {
    if (v37 >= 0xFFFFFFFF)
    {
      v39 = v36[1];
      *v35 = v37;
      v35[1] = v39;
      return a1;
    }

LABEL_51:
    *v35 = *v36;
    return a1;
  }

  if (v37 < 0xFFFFFFFF)
  {

    goto LABEL_51;
  }

  v38 = v36[1];
  *v35 = v37;
  v35[1] = v38;

  return a1;
}

uint64_t getEnumTagSinglePayload for WindowGroup(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (v4 <= 0x10)
  {
    v4 = 16;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7FFFFFFF)
  {
    goto LABEL_23;
  }

  v5 = *(v3 + 80) & 0xF8;
  v6 = ((((((v4 + ((v5 + 39) & ~v5 & 0x1F8) + 8) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v7 = v6 & 0xFFFFFFF8;
  v8 = a2 - 2147483645;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 < 0x100)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  if (v10 == 4)
  {
    v11 = *(a1 + v6);
    if (v11)
    {
      goto LABEL_19;
    }

LABEL_23:
    v14 = *(a1 + 24);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    if ((v14 + 1) >= 2)
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }

  if (v10 != 2)
  {
    v11 = *(a1 + v6);
    if (v11)
    {
      goto LABEL_19;
    }

    goto LABEL_23;
  }

  v11 = *(a1 + v6);
  if (!v11)
  {
    goto LABEL_23;
  }

LABEL_19:
  v13 = v11 - 1;
  if (v7)
  {
    v13 = 0;
    LODWORD(v7) = *a1;
  }

  return (v7 | v13) + 0x7FFFFFFF;
}

unsigned int *storeEnumTagSinglePayload for WindowGroup(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v5 = *(v4 + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = ((((((v5 + (((*(v4 + 80) & 0xF8) + 39) & ~(*(v4 + 80) & 0xF8) & 0x1F8) + 8) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (a3 < 0x7FFFFFFF)
  {
    v9 = 0;
  }

  else
  {
    v7 = a3 - 2147483645;
    if (v6)
    {
      v7 = 2;
    }

    if (v7 >= 0x10000)
    {
      v8 = 4;
    }

    else
    {
      v8 = 2;
    }

    if (v7 < 0x100)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }
  }

  if (a2 > 0x7FFFFFFE)
  {
    if (v6)
    {
      v10 = 1;
    }

    else
    {
      v10 = a2 - 2147483646;
    }

    if (v6)
    {
      v11 = a2 - 0x7FFFFFFF;
      v12 = result;
      bzero(result, v6);
      result = v12;
      *v12 = v11;
    }

    if (v9 > 1)
    {
      if (v9 == 2)
      {
        *(result + v6) = v10;
      }

      else
      {
        *(result + v6) = v10;
      }
    }

    else if (v9)
    {
      *(result + v6) = v10;
    }
  }

  else
  {
    if (v9 <= 1)
    {
      if (v9)
      {
        *(result + v6) = 0;
        if (!a2)
        {
          return result;
        }

LABEL_29:
        *(result + 3) = a2;
        return result;
      }

LABEL_28:
      if (!a2)
      {
        return result;
      }

      goto LABEL_29;
    }

    if (v9 == 2)
    {
      *(result + v6) = 0;
      goto LABEL_28;
    }

    *(result + v6) = 0;
    if (a2)
    {
      goto LABEL_29;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for WindowSceneList(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = (((((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v4 + 80);
  if ((v7 & 0x1000F8) != 0 || ((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + (((v7 & 0xF8) + 23) & ~(v7 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v11 = a2 + 7;
    v12 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v13 = *v12;
    v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
    v15 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
    v16 = *(v15 + 24);

    if (v16 < 0xFFFFFFFF)
    {
      v20 = *(v15 + 16);
      *v14 = *v15;
      *(v14 + 16) = v20;
    }

    else
    {
      v17 = *v15;
      v18 = *(v15 + 8);
      v19 = *(v15 + 16);
      outlined copy of Text.Storage(*v15, v18, v19);
      *v14 = v17;
      *(v14 + 8) = v18;
      *(v14 + 16) = v19;
      *(v14 + 24) = *(v15 + 24);
    }

    v21 = ((v14 + 39) & 0xFFFFFFFFFFFFFFF8);
    v22 = ((v15 + 39) & 0xFFFFFFFFFFFFFFF8);
    *v21 = *v22;
    v23 = v6 + 16;
    v24 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
    v25 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
    if (*v25 < 0xFFFFFFFFuLL)
    {
      *v24 = *v25;
    }

    else
    {
      v26 = *(v25 + 8);
      *v24 = *v25;
      *(v24 + 8) = v26;
    }

    v27 = ((v3 + v23 + 7) & 0xFFFFFFFFFFFFFFF8);
    v28 = (&v11[v23] & 0xFFFFFFFFFFFFFFF8);
    *v27 = *v28;
    v27[1] = v28[1];
    *((v27 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v28 + 23) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t assignWithCopy for WindowSceneList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v10 + 24);
  if (*(v9 + 24) < 0xFFFFFFFFuLL)
  {
    if (v11 >= 0xFFFFFFFF)
    {
      v18 = *v10;
      v19 = *(v10 + 8);
      v20 = *(v10 + 16);
      outlined copy of Text.Storage(*v10, v19, v20);
      *v9 = v18;
      *(v9 + 8) = v19;
      *(v9 + 16) = v20;
      *(v9 + 24) = *(v10 + 24);

      goto LABEL_8;
    }
  }

  else
  {
    if (v11 >= 0xFFFFFFFF)
    {
      v12 = *v10;
      v13 = *(v10 + 8);
      v14 = *(v10 + 16);
      outlined copy of Text.Storage(*v10, v13, v14);
      v15 = *v9;
      v16 = *(v9 + 8);
      v17 = *(v9 + 16);
      *v9 = v12;
      *(v9 + 8) = v13;
      *(v9 + 16) = v14;
      outlined consume of Text.Storage(v15, v16, v17);
      *(v9 + 24) = *(v10 + 24);

      goto LABEL_8;
    }

    outlined consume of Text.Storage(*v9, *(v9 + 8), *(v9 + 16));
  }

  v21 = *(v10 + 16);
  *v9 = *v10;
  *(v9 + 16) = v21;
LABEL_8:
  v22 = ((v9 + 39) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v10 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v22 = *v23;
  v24 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
  v26 = *v25;
  if (*v24 < 0xFFFFFFFFuLL)
  {
    if (v26 >= 0xFFFFFFFF)
    {
      v28 = v25[1];
      *v24 = v26;
      v24[1] = v28;

      goto LABEL_15;
    }

LABEL_14:
    *v24 = *v25;
    goto LABEL_15;
  }

  if (v26 < 0xFFFFFFFF)
  {

    goto LABEL_14;
  }

  v27 = v25[1];
  *v24 = v26;
  v24[1] = v27;

LABEL_15:
  v29 = (((((((v6 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v30 = ((a1 + v29 + 7) & 0xFFFFFFFFFFFFFFF8);
  v31 = ((a2 + v29 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v30 = *v31;
  v30[1] = v31[1];

  *((v30 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v31 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for WindowSceneList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;
  v12 = ((v9 + 39) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v10 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  v16 = *v15;
  if (*v15 < 0xFFFFFFFF)
  {
    *v14 = *v15;
  }

  else
  {
    v17 = v15[1];
    *v14 = v16;
    *(v14 + 8) = v17;
  }

  v18 = (((((((v6 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v19 = ((a1 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((a2 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  *((v19 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v20 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for WindowSceneList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (*(v9 + 24) >= 0xFFFFFFFFuLL)
  {
    if (*(v10 + 24) >= 0xFFFFFFFFuLL)
    {
      v11 = *(v10 + 16);
      v12 = *v9;
      v13 = *(v9 + 8);
      v14 = *(v9 + 16);
      *v9 = *v10;
      *(v9 + 16) = v11;
      outlined consume of Text.Storage(v12, v13, v14);
      *(v9 + 24) = *(v10 + 24);

      goto LABEL_6;
    }

    outlined consume of Text.Storage(*v9, *(v9 + 8), *(v9 + 16));
  }

  v15 = *(v10 + 16);
  *v9 = *v10;
  *(v9 + 16) = v15;
LABEL_6:
  v16 = ((v9 + 39) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v10 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  v20 = *v19;
  if (*v18 < 0xFFFFFFFFuLL)
  {
    if (v20 >= 0xFFFFFFFF)
    {
      v22 = v19[1];
      *v18 = v20;
      v18[1] = v22;
      goto LABEL_13;
    }

LABEL_12:
    *v18 = *v19;
    goto LABEL_13;
  }

  if (v20 < 0xFFFFFFFF)
  {

    goto LABEL_12;
  }

  v21 = v19[1];
  *v18 = v20;
  v18[1] = v21;

LABEL_13:
  v23 = (((((((v6 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v24 = ((a1 + v23 + 7) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((a2 + v23 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v24 = *v25;
  v24[1] = v25[1];

  *((v24 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v25 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for WindowSceneList(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
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

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
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

_BYTE *storeEnumTagSinglePayload for WindowSceneList(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for WindowGroupRootContent(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 64) <= 0x10uLL)
  {
    v5 = 16;
  }

  else
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || (v5 + 1) > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
    goto LABEL_26;
  }

  v9 = *(a2 + v5);
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    if (v5 <= 3)
    {
      v11 = v5;
    }

    else
    {
      v11 = 4;
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v12 = *a2;
      }

      else if (v11 == 3)
      {
        v12 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v12 = *a2;
      }

LABEL_22:
      v13 = (v12 | (v10 << (8 * v5))) + 2;
      v9 = v12 + 2;
      if (v5 < 4)
      {
        v9 = v13;
      }

      goto LABEL_24;
    }

    if (v11)
    {
      v12 = *a2;
      goto LABEL_22;
    }
  }

LABEL_24:
  if (v9 != 1)
  {
    (*(v4 + 16))(a1);
    *(v3 + v5) = 0;
    return v3;
  }

  v14 = *(a2 + 1);
  *v3 = *a2;
  v3[1] = v14;
  *(v3 + v5) = 1;
LABEL_26:

  return v3;
}

uint64_t destroy for WindowGroupRootContent(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  if (v2 <= 0x10)
  {
    v2 = 16;
  }

  v3 = a1[v2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        goto LABEL_17;
      }

      v6 = *a1;
    }

    else if (v5 == 2)
    {
      v6 = *a1;
    }

    else if (v5 == 3)
    {
      v6 = *a1 | (a1[2] << 16);
    }

    else
    {
      v6 = *a1;
    }

    v7 = (v6 | (v4 << (8 * v2))) + 2;
    v3 = v6 + 2;
    if (v2 < 4)
    {
      v3 = v7;
    }
  }

LABEL_17:
  if (v3 == 1)
  {
  }

  else
  {
    return (*(*(*(a2 + 16) - 8) + 8))();
  }
}

unsigned __int8 *assignWithCopy for WindowGroupRootContent(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 16);
    v6 = *(v5 - 8);
    if (*(v6 + 64) <= 0x10uLL)
    {
      v7 = 16;
    }

    else
    {
      v7 = *(v6 + 64);
    }

    v8 = a1[v7];
    v9 = v8 - 2;
    if (v8 >= 2)
    {
      if (v7 <= 3)
      {
        v10 = v7;
      }

      else
      {
        v10 = 4;
      }

      if (v10 <= 1)
      {
        if (!v10)
        {
          goto LABEL_19;
        }

        v11 = *a1;
      }

      else if (v10 == 2)
      {
        v11 = *a1;
      }

      else if (v10 == 3)
      {
        v11 = *a1 | (a1[2] << 16);
      }

      else
      {
        v11 = *a1;
      }

      v12 = (v11 | (v9 << (8 * v7))) + 2;
      v8 = v11 + 2;
      if (v7 < 4)
      {
        v8 = v12;
      }
    }

LABEL_19:
    if (v8 == 1)
    {
    }

    else
    {
      (*(v6 + 8))(a1, v5);
    }

    v13 = a2[v7];
    v14 = v13 - 2;
    if (v13 < 2)
    {
      goto LABEL_36;
    }

    if (v7 <= 3)
    {
      v15 = v7;
    }

    else
    {
      v15 = 4;
    }

    if (v15 <= 1)
    {
      if (!v15)
      {
LABEL_36:
        if (v13 == 1)
        {
          v18 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v18;
          a1[v7] = 1;
        }

        else
        {
          (*(v6 + 16))(a1, a2, v5);
          a1[v7] = 0;
        }

        return a1;
      }

      v16 = *a2;
    }

    else if (v15 == 2)
    {
      v16 = *a2;
    }

    else if (v15 == 3)
    {
      v16 = *a2 | (a2[2] << 16);
    }

    else
    {
      v16 = *a2;
    }

    v17 = (v16 | (v14 << (8 * v7))) + 2;
    v13 = v16 + 2;
    if (v7 < 4)
    {
      v13 = v17;
    }

    goto LABEL_36;
  }

  return a1;
}

_OWORD *initializeWithTake for WindowGroupRootContent(_OWORD *result, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 0x10uLL)
  {
    v3 = 16;
  }

  else
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  v4 = a2[v3];
  v5 = v4 - 2;
  if (v4 < 2)
  {
    goto LABEL_18;
  }

  if (v3 <= 3)
  {
    v6 = v3;
  }

  else
  {
    v6 = 4;
  }

  if (v6 <= 1)
  {
    if (!v6)
    {
      goto LABEL_18;
    }

    v7 = *a2;
  }

  else if (v6 == 2)
  {
    v7 = *a2;
  }

  else if (v6 == 3)
  {
    v7 = *a2 | (a2[2] << 16);
  }

  else
  {
    v7 = *a2;
  }

  v8 = (v7 | (v5 << (8 * v3))) + 2;
  v4 = v7 + 2;
  if (v3 < 4)
  {
    v4 = v8;
  }

LABEL_18:
  if (v4 == 1)
  {
    *result = *a2;
    v9 = 1;
  }

  else
  {
    v10 = result;
    (*(*(*(a3 + 16) - 8) + 32))();
    result = v10;
    v9 = 0;
  }

  *(result + v3) = v9;
  return result;
}

unsigned __int8 *assignWithTake for WindowGroupRootContent(unsigned __int8 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 64) <= 0x10uLL)
  {
    v7 = 16;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = a1[v7];
  v9 = v8 - 2;
  if (v8 >= 2)
  {
    if (v7 <= 3)
    {
      v10 = v7;
    }

    else
    {
      v10 = 4;
    }

    if (v10 <= 1)
    {
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *a1;
    }

    else if (v10 == 2)
    {
      v11 = *a1;
    }

    else if (v10 == 3)
    {
      v11 = *a1 | (a1[2] << 16);
    }

    else
    {
      v11 = *a1;
    }

    v12 = (v11 | (v9 << (8 * v7))) + 2;
    v8 = v11 + 2;
    if (v7 < 4)
    {
      v8 = v12;
    }
  }

LABEL_19:
  if (v8 == 1)
  {
  }

  else
  {
    (*(v6 + 8))(a1, v5);
  }

  v13 = *(a2 + v7);
  v14 = v13 - 2;
  if (v13 >= 2)
  {
    if (v7 <= 3)
    {
      v15 = v7;
    }

    else
    {
      v15 = 4;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v16 = *a2;
      }

      else if (v15 == 3)
      {
        v16 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v16 = *a2;
      }

LABEL_34:
      v17 = (v16 | (v14 << (8 * v7))) + 2;
      v13 = v16 + 2;
      if (v7 < 4)
      {
        v13 = v17;
      }

      goto LABEL_36;
    }

    if (v15)
    {
      v16 = *a2;
      goto LABEL_34;
    }
  }

LABEL_36:
  if (v13 == 1)
  {
    *a1 = *a2;
    v18 = 1;
  }

  else
  {
    (*(v6 + 32))(a1, a2, v5);
    v18 = 0;
  }

  a1[v7] = v18;
  return a1;
}

uint64_t getEnumTagSinglePayload for WindowGroupRootContent(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void storeEnumTagSinglePayload for WindowGroupRootContent(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t getEnumTag for WindowGroupRootContent(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = 16;
  if (*(v2 + 64) > 0x10uLL)
  {
    v3 = *(v2 + 64);
  }

  v4 = a1[v3];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        return v4;
      }

      v7 = *a1;
    }

    else if (v6 == 2)
    {
      v7 = *a1;
    }

    else if (v6 == 3)
    {
      v7 = *a1 | (a1[2] << 16);
    }

    else
    {
      v7 = *a1;
    }

    v8 = (v7 | (v5 << (8 * v3))) + 2;
    LODWORD(v4) = v7 + 2;
    if (v3 >= 4)
    {
      return v4;
    }

    else
    {
      return v8;
    }
  }

  return v4;
}

void destructiveInjectEnumTag for WindowGroupRootContent(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 0x10uLL)
  {
    v3 = 16;
  }

  else
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (a2 > 1)
  {
    v4 = a2 - 2;
    if (v3 < 4)
    {
      a1[v3] = (v4 >> (8 * v3)) + 2;
      if (v3)
      {
        v6 = v4 & ~(-1 << (8 * v3));
        bzero(a1, v3);
        if (v3 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v3 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v4;
        }
      }
    }

    else
    {
      a1[v3] = 2;
      bzero(a1, v3);
      *a1 = v4;
    }
  }

  else
  {
    a1[v3] = a2;
  }
}

uint64_t assignWithCopy for WindowSceneList.MakeList(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  v3 = *(a2 + 32);
  if (*(a1 + 32) == 255)
  {
    if (v3 == 255)
    {
      v15 = *(a2 + 16);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 16) = v15;
    }

    else
    {
      v10 = *(a2 + 16);
      v11 = *(a2 + 24);
      v12 = v3 & 1;
      outlined copy of SceneID(v10, v11, v3 & 1);
      *(a1 + 16) = v10;
      *(a1 + 24) = v11;
      *(a1 + 32) = v12;
    }
  }

  else if (v3 == 255)
  {
    outlined destroy of SceneID(a1 + 16);
    v14 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v14;
  }

  else
  {
    v4 = *(a2 + 16);
    v5 = *(a2 + 24);
    v6 = v3 & 1;
    outlined copy of SceneID(v4, v5, v3 & 1);
    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *(a1 + 16) = v4;
    *(a1 + 24) = v5;
    *(a1 + 32) = v6;
    outlined consume of SceneID(v7, v8, v9);
  }

  return a1;
}

__n128 assignWithTake for WindowSceneList.MakeList(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a1 + 32);
  if (v2 == 255)
  {
    result = *(a2 + 16);
    *(a1 + 16) = result;
    *(a1 + 32) = *(a2 + 32);
  }

  else
  {
    v3 = *(a2 + 32);
    if (v3 == 255)
    {
      outlined destroy of SceneID(a1 + 16);
      result = *(a2 + 16);
      *(a1 + 16) = result;
      *(a1 + 32) = *(a2 + 32);
    }

    else
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 24);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = v3 & 1;
      outlined consume of SceneID(v4, v5, v2 & 1);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WindowSceneList.MakeList(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for WindowSceneList.MakeList(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = ~a2;
    }
  }

  return result;
}

uint64_t View.automationElement()(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for automation != -1)
  {
    swift_once();
  }

  v5 = static AccessibilityChildBehavior.automation;

  MEMORY[0x18D00A570](&v5, a1, &type metadata for AccessibilityContainerModifier, a2);
}

uint64_t TabForEach<>._identifiedView.getter(void *a1, uint64_t a2)
{
  v3 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v8 = a1[6];
  v7 = a1[7];
  KeyPath = swift_getKeyPath();
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v6;
  v10[5] = v8;
  v10[6] = v7;
  v10[7] = a2;
  v10[8] = KeyPath;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  mapForEach<A, B, C, D>(_:transform:)(v13, partial apply for implicit closure #1 in TabForEach<>._identifiedView.getter, v10, v3, v4, v5, AssociatedTypeWitness, v8, v7);
}

uint64_t mapForEach<A, B, C, D>(_:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15[0] = a7;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = a8;
  v15[5] = a9;
  v10 = type metadata accessor for ForEach();
  v11 = MEMORY[0x1EEE9AC00](v10);
  (*(v13 + 16))(v15 - v12, a1, v11);

  return ForEach.init<A>(_:transform:)();
}

uint64_t TabForEach<>.init(_:id:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v28[0] = a3;
  v28[1] = a4;
  v29 = a8;
  v14 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + *MEMORY[0x1E69E77B0] + 8);
  v30 = v19;
  v31 = v18;
  v32 = v20;
  v33 = v21;
  v34 = a9;
  v22 = type metadata accessor for ForEach();
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = v28 - v24;
  (*(v14 + 16))(v16, a1, a5, v23);
  v30 = a2;
  ForEach.init(_:idGenerator:content:)();
  (*(v14 + 8))(a1, a5);
  v30 = a5;
  v31 = v18;
  v32 = a6;
  v33 = a7;
  v34 = a9;
  v26 = type metadata accessor for ForEach();
  return (*(*(v26 - 8) + 32))(v29, v25, v26);
}

uint64_t TabForEach<>.init(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v29 = a6;
  v30 = a2;
  v31 = a3;
  v32 = a9;
  v27 = a10;
  v28 = a11;
  v17 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  KeyPath = a4;
  v42 = a5;
  v43 = a7;
  v44 = a8;
  v45 = AssociatedConformanceWitness;
  v21 = type metadata accessor for ForEach();
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v27 - v23;
  (*(v17 + 16))(v19, a1, a4, v22);
  v33 = a4;
  v34 = a5;
  v35 = v29;
  v36 = a7;
  v37 = a8;
  v38 = v27;
  v39 = v28;
  v40 = a12;
  KeyPath = swift_getKeyPath();
  ForEach.init(_:idGenerator:content:)();
  (*(v17 + 8))(a1, a4);
  KeyPath = a4;
  v42 = a5;
  v43 = a7;
  v44 = a8;
  v45 = AssociatedConformanceWitness;
  v25 = type metadata accessor for ForEach();
  return (*(*(v25 - 8) + 32))(v32, v24, v25);
}

double TabForEach<>.init(_:content:)@<D0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v14[6] = a1;
  v14[7] = a2;
  type metadata accessor for Range<Int>();
  v16 = v15;
  v17 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  v18 = MEMORY[0x1E69E6540];
  v19 = MEMORY[0x1E69E6530];
  ForEach.init(_:idGenerator:content:)();
  v24[0] = v26;
  v24[1] = v27;
  v24[2] = v28;
  v25 = v29;
  *&v30 = v16;
  *(&v30 + 1) = v19;
  *&v31 = a4;
  *(&v31 + 1) = v17;
  *&v32 = v18;
  v20 = type metadata accessor for ForEach();
  (*(*(v20 - 8) + 32))(&v30, v24, v20);
  v21 = v33;
  v22 = v31;
  *a7 = v30;
  *(a7 + 16) = v22;
  result = *&v32;
  *(a7 + 32) = v32;
  *(a7 + 48) = v21;
  return result;
}

uint64_t instantiation function for generic protocol witness table for <> TabForEach<A, B, C, D>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for TabForEach()
{
  result = type metadata accessor for ForEach();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TabForEach(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *a1 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v12 = v11[1];
    *v10 = *v11;
    v10[1] = v12;
    v13 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
    v14 = ((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v13 = *v14;
    v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
    v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v16;
    *((v15 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t destroy for TabForEach(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();
}

uint64_t initializeWithCopy for TabForEach(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  v10 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  *((v12 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t assignWithCopy for TabForEach(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;

  v10 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;

  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;

  *((v12 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for TabForEach(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  *((v11 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for TabForEach(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = v6 + a2;
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 23;
  *v7 = *(v8 & 0xFFFFFFFFFFFFFFF8);

  v10 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v9 &= 0xFFFFFFFFFFFFFFF8;
  *v10 = *v9;

  v11 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;

  *((v11 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for TabForEach(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
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

_BYTE *storeEnumTagSinglePayload for TabForEach(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t View.sensoryFeedback<A>(_:trigger:condition:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v24 = a7;
  v22 = a8;
  v23 = a5;
  v21 = a3;
  v12 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FeedbackGenerator();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v20 - v17;
  v28 = *a1;
  (*(v12 + 16))(v14, a2, a6);
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  v25 = 0;
  swift_weakInit();
  FeedbackGenerator.init(feedbackRequestContext:feedback:trigger:condition:implementation:)(&v25, &v28, v14, v21, a4, v26, a6, v18);

  swift_getWitnessTable();
  View.platformSensoryFeedback<A>(_:)(v18, v23, v15, v24);
  return (*(v16 + 8))(v18, v15);
}

uint64_t View.sensoryFeedback<A>(trigger:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v22 = a6;
  v20 = a7;
  v21 = a4;
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CustomFeedbackGenerator();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - v17;
  (*(v11 + 16))(v13, a1, a5, v16);
  v23 = 0;
  swift_weakInit();
  CustomFeedbackGenerator.init(feedbackRequestContext:trigger:feedback:)(&v23, v13, a2, a3, a5, v18);

  swift_getWitnessTable();
  View.platformSensoryFeedback<A>(_:)(v18, v21, v14, v22);
  return (*(v15 + 8))(v18, v14);
}

double CustomFeedbackGenerator.init(feedbackRequestContext:trigger:feedback:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  outlined init with take of FeedbackRequestContext(a1, a6);
  v11 = type metadata accessor for CustomFeedbackGenerator();
  (*(*(a5 - 8) + 32))(a6 + v11[9], a2, a5);
  v12 = (a6 + v11[10]);
  *v12 = a3;
  v12[1] = a4;
  v13 = a6 + v11[11];
  *(v13 + 56) = 0;
  *v13 = 0x3FFFFFFFCLL;
  result = 0.0;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  return result;
}

uint64_t type metadata completion function for CustomFeedbackGenerator()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t destroy for CustomFeedbackGenerator(uint64_t a1, uint64_t a2)
{
  swift_weakDestroy();
  v4 = *(*(a2 + 16) - 8);
  v5 = v4 + 8;
  v6 = (a1 + *(v4 + 80) + 16) & ~*(v4 + 80);
  (*(v4 + 8))(v6);
  v7 = (*(v5 + 56) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  if (*v8 >> 2 != 0xFFFFFFFFLL && v8[5])
  {
    __swift_destroy_boxed_opaque_existential_1((v8 + 2));
  }
}

void *initializeWithCopy for CustomFeedbackGenerator(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  swift_weakCopyInit();
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 16;
  v8 = *(v6 + 80);
  v9 = (a1 + v8 + 16) & ~v8;
  v10 = (a2 + v8 + 16) & ~v8;
  (*(v6 + 16))(v9, v10);
  v11 = *(v7 + 48) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;
  v15 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = *v16;

  if (v17 >> 2 == 0xFFFFFFFF)
  {
    v18 = *v16;
    v19 = *(v16 + 16);
    v20 = *(v16 + 32);
    *(v15 + 48) = *(v16 + 48);
    *(v15 + 16) = v19;
    *(v15 + 32) = v20;
    *v15 = v18;
  }

  else
  {
    *v15 = *v16;
    v21 = *(v16 + 40);
    if (v21)
    {
      *(v15 + 40) = v21;
      *(v15 + 48) = *(v16 + 48);
      (**(v21 - 8))(v15 + 16, v16 + 16);
    }

    else
    {
      v22 = *(v16 + 16);
      v23 = *(v16 + 32);
      *(v15 + 48) = *(v16 + 48);
      *(v15 + 16) = v22;
      *(v15 + 32) = v23;
    }
  }

  *(v15 + 56) = *(v16 + 56);

  return a1;
}

_DWORD *assignWithCopy for CustomFeedbackGenerator(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  swift_weakCopyAssign();
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 24;
  v8 = *(v6 + 80);
  v9 = (a1 + v8 + 16) & ~v8;
  v10 = (a2 + v8 + 16) & ~v8;
  (*(v6 + 24))(v9, v10);
  v11 = *(v7 + 40) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;

  v15 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = *v16 & 0xFFFFFFFFFFFFFFFCLL;
  if (*v15 >> 2 != 0xFFFFFFFFLL)
  {
    if (v17 == 0x3FFFFFFFCLL)
    {
      outlined destroy of (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)(v15, type metadata accessor for (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?));
      v22 = *(v16 + 16);
      v21 = *(v16 + 32);
      v23 = *v16;
      *(v15 + 48) = *(v16 + 48);
      *(v15 + 16) = v22;
      *(v15 + 32) = v21;
      *v15 = v23;
      goto LABEL_15;
    }

    *v15 = *v16;
    v24 = *(v16 + 40);
    if (*(v15 + 40))
    {
      v25 = (v15 + 16);
      if (v24)
      {
        __swift_assign_boxed_opaque_existential_1(v25, (v16 + 16));
        goto LABEL_15;
      }

      __swift_destroy_boxed_opaque_existential_1(v25);
    }

    else if (v24)
    {
      goto LABEL_12;
    }

LABEL_14:
    v26 = *(v16 + 16);
    v27 = *(v16 + 32);
    *(v15 + 48) = *(v16 + 48);
    *(v15 + 16) = v26;
    *(v15 + 32) = v27;
    goto LABEL_15;
  }

  if (v17 != 0x3FFFFFFFCLL)
  {
    *v15 = *v16;
    v24 = *(v16 + 40);
    if (!v24)
    {
      goto LABEL_14;
    }

LABEL_12:
    *(v15 + 40) = v24;
    *(v15 + 48) = *(v16 + 48);
    (**(v24 - 8))(v15 + 16, v16 + 16);
    goto LABEL_15;
  }

  v18 = *v16;
  v19 = *(v16 + 16);
  v20 = *(v16 + 32);
  *(v15 + 48) = *(v16 + 48);
  *(v15 + 16) = v19;
  *(v15 + 32) = v20;
  *v15 = v18;
LABEL_15:
  *(v15 + 56) = *(v16 + 56);

  return a1;
}

void type metadata accessor for (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)()
{
  if (!lazy cache variable for type metadata for (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?))
  {
    type metadata accessor for IntelligenceSubelementProviding?(255, &lazy cache variable for type metadata for PlatformSensoryFeedback?, &lazy cache variable for type metadata for PlatformSensoryFeedback);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?));
    }
  }
}

void *initializeWithTake for CustomFeedbackGenerator(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  swift_weakTakeInit();
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 32;
  v8 = *(v6 + 80);
  v9 = (a1 + v8 + 16) & ~v8;
  v10 = (a2 + v8 + 16) & ~v8;
  (*(v6 + 32))(v9, v10);
  v11 = *(v7 + 32) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  v17 = v15[2];
  v16 = v15[3];
  v18 = v15[1];
  *v14 = *v15;
  v14[1] = v18;
  v14[2] = v17;
  v14[3] = v16;
  return a1;
}

void *assignWithTake for CustomFeedbackGenerator(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  swift_weakTakeAssign();
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 40;
  v8 = *(v6 + 80);
  v9 = (a1 + v8 + 16) & ~v8;
  v10 = (a2 + v8 + 16) & ~v8;
  (*(v6 + 40))(v9, v10);
  v11 = *(v7 + 24) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = v11 + v10;
  v14 = (v13 & 0xFFFFFFFFFFFFFFF8) + 23;
  *v12 = *(v13 & 0xFFFFFFFFFFFFFFF8);

  v15 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = v14 & 0xFFFFFFFFFFFFFFF8;
  if (*v15 >> 2 == 0xFFFFFFFFLL)
  {
    v17 = *v16;
    v18 = *(v16 + 16);
    v19 = *(v16 + 32);
    *(v15 + 48) = *(v16 + 48);
    *(v15 + 16) = v18;
    *(v15 + 32) = v19;
    *v15 = v17;
  }

  else if (*v16 >> 2 == 0xFFFFFFFFLL)
  {
    outlined destroy of (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)(v15, type metadata accessor for (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?));
    v21 = *(v16 + 16);
    v20 = *(v16 + 32);
    v22 = *v16;
    *(v15 + 48) = *(v16 + 48);
    *(v15 + 16) = v21;
    *(v15 + 32) = v20;
    *v15 = v22;
  }

  else
  {
    *v15 = *v16;
    if (*(v15 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1(v15 + 16);
    }

    v23 = *(v16 + 16);
    v24 = *(v16 + 32);
    *(v15 + 48) = *(v16 + 48);
    *(v15 + 16) = v23;
    *(v15 + 32) = v24;
  }

  *(v15 + 56) = *(v16 + 56);

  return a1;
}

uint64_t getEnumTagSinglePayload for CustomFeedbackGenerator(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
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

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((v8 + ((v6 + 16) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 64;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 16) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((v8 + v18) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

_BYTE *storeEnumTagSinglePayload for CustomFeedbackGenerator(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v10 = ((((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 64;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFC0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&result[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v10] = 0;
      }

      else if (v14)
      {
        result[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      result = (&result[v8 + 16] & ~v8);
      if (v6 < 0x7FFFFFFF)
      {
        v20 = (&result[v9] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v20 = a2 & 0x7FFFFFFF;
          v20[1] = 0;
        }

        else
        {
          *v20 = a2 - 1;
        }
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFC0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFC0)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 64);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&result[v10] = v16;
    }

    else
    {
      *&result[v10] = v16;
    }
  }

  else if (v14)
  {
    result[v10] = v16;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for CustomFeedbackGenerator(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  v5 = ((v3 & 0xF8) + 23) & ~(v3 & 0xF8) & 0x1F8;

  return v4 + v5;
}

void *assignWithTake for FeedbackGenerator(void *a1, void *a2, uint64_t a3)
{
  v5 = a2 + 23;
  *a1 = *a2;
  v6 = a1 + 23;
  swift_weakTakeAssign();
  v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
  *v7 = *(v5 & 0xFFFFFFFFFFFFFFF8);
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  v11 = (v7 + v10 + 16) & ~v10;
  v12 = (v10 + 16 + (v5 & 0xFFFFFFFFFFFFFFF8)) & ~v10;
  (*(v8 + 40))(v11, v12);
  v13 = *(v9 + 24) + 7;
  v14 = ((v13 + v11) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + v12) & 0xFFFFFFFFFFFFFFF8);
  v16 = *v15;
  if (*v14 < 0xFFFFFFFFuLL)
  {
    if (v16 >= 0xFFFFFFFF)
    {
      v18 = v15[1];
      *v14 = v16;
      v14[1] = v18;
      goto LABEL_8;
    }
  }

  else
  {
    if (v16 >= 0xFFFFFFFF)
    {
      v17 = v15[1];
      *v14 = v16;
      v14[1] = v17;

      goto LABEL_8;
    }
  }

  *v14 = *v15;
LABEL_8:
  v19 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  if (*(v19 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  v20 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = *v20;
  v22 = *(v20 + 16);
  *(v19 + 32) = *(v20 + 32);
  *v19 = v21;
  *(v19 + 16) = v22;
  *(v19 + 40) = *(v20 + 40);

  return a1;
}

uint64_t getEnumTagSinglePayload for FeedbackGenerator(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 32) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 48;
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
      if (v14)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    v17 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((v17 + v6 + 16) & ~v6);
    }

    v18 = *v17 >> 2;
    if (v18 > 0x80000000)
    {
      return -v18;
    }

    else
    {
      return 0;
    }
  }

  if (!v13)
  {
    goto LABEL_28;
  }

  v14 = *(a1 + v8);
  if (!v14)
  {
    goto LABEL_28;
  }

LABEL_24:
  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *storeEnumTagSinglePayload for FeedbackGenerator(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 48;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFD0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      v18 = ((result + 23) & 0xFFFFFFFFFFFFFFF8);
      if ((v6 & 0x80000000) != 0)
      {
        v20 = *(v5 + 56);

        return v20((v18 + v8 + 16) & ~v8);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = 4 * -a2;
        }

        *v18 = v19;
        v18[1] = 0;
      }

      return result;
    }
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFD0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFD0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t closure #1 in FeedbackGenerator.contentConfiguredWithFeedback(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a3;
  type metadata accessor for MainActor();
  v5[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in FeedbackGenerator.contentConfiguredWithFeedback(content:), v7, v6);
}

uint64_t closure #1 in FeedbackGenerator.contentConfiguredWithFeedback(content:)()
{
  v14 = v0;

  v1 = type metadata accessor for FeedbackGenerator();
  v3 = FeedbackGenerator.implementation.modify(v0 + 2, v1);
  v4 = *(v2 + 24);
  if (v4)
  {
    v5 = *(v2 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v2, *(v2 + 24));
    (*(v5 + 16))(v4, v5);
  }

  v3(v0 + 2, 0);
  v6 = v0[6];
  outlined init with copy of FeedbackRequestContext(v6, (v0 + 2));
  FeedbackRequestContext.implementation(type:)(*(v6 + 16), *(v6 + 24), v13);
  outlined destroy of FeedbackRequestContext((v0 + 2));
  FeedbackGenerator.implementation.setter(v13, v1);
  v8 = FeedbackGenerator.implementation.modify(v0 + 2, v1);
  v9 = *(v7 + 24);
  if (v9)
  {
    v10 = *(v7 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v7, *(v7 + 24));
    (*(v10 + 8))(v9, v10);
  }

  v8(v0 + 2, 0);
  v11 = v0[1];

  return v11();
}

uint64_t closure #2 in FeedbackGenerator.contentConfiguredWithFeedback(content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FeedbackGenerator();
  v7 = *(a3 + *(v6 + 44));
  if (!v7 || (result = v7(a1, a2), (result & 1) != 0))
  {
    v10 = FeedbackGenerator.implementation.modify(v13, v6);
    v11 = *(v9 + 24);
    if (v11)
    {
      v12 = *(v9 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v9, *(v9 + 24));
      (*(v12 + 24))(v11, v12);
    }

    return (v10)(v13, 0);
  }

  return result;
}

void (*CustomFeedbackGenerator.state.modify(uint64_t *a1, uint64_t a2))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0xB0uLL);
  }

  *a1 = v5;
  outlined init with copy of State<(feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?>(v2 + *(a2 + 44), v5, type metadata accessor for State<(feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?>);
  type metadata accessor for State<(feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?>(0);
  State.wrappedValue.getter();
  return CustomFeedbackGenerator.state.modify;
}

void CustomFeedbackGenerator.state.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    outlined init with copy of State<(feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?>((v2 + 8), (v2 + 15), type metadata accessor for (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?);
    if (v2[7])
    {
      dispatch thunk of AnyLocation.set(_:transaction:)();
    }

    outlined destroy of (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)((v2 + 15), type metadata accessor for (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?);
    outlined destroy of (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)(v2, type metadata accessor for State<(feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?>);
    v3 = (v2 + 8);
    v4 = type metadata accessor for (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?;
  }

  else
  {
    if (v2[7])
    {
      dispatch thunk of AnyLocation.set(_:transaction:)();
    }

    outlined destroy of (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)((v2 + 8), type metadata accessor for (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?);
    v4 = type metadata accessor for State<(feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?>;
    v3 = v2;
  }

  outlined destroy of (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)(v3, v4);

  free(v2);
}

uint64_t CustomFeedbackGenerator.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  type metadata accessor for InterfaceIdiomPredicate<VisionInterfaceIdiom>();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  type metadata accessor for _ValueActionModifier2();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v5 = type metadata accessor for StaticIf();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v18 - v10;
  v18[10] = v4;
  v18[11] = v3;
  v18[12] = v18[0];
  v18[4] = v4;
  v18[5] = v3;
  v18[6] = v18[0];
  WitnessTable = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v18[19] = WitnessTable;
  v18[20] = v13;
  v18[17] = swift_getWitnessTable();
  v18[18] = MEMORY[0x1E69805D0];
  v17 = swift_getWitnessTable();
  StaticIf<>.init<A>(idiom:then:else:)();
  v18[14] = lazy protocol witness table accessor for type InterfaceIdiomPredicate<VisionInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
  v18[15] = v17;
  v18[16] = v17;
  v14 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v8, v5, v14);
  v15 = *(v6 + 8);
  v15(v8, v5);
  static ViewBuilder.buildExpression<A>(_:)(v11, v5, v14);
  return (v15)(v11, v5);
}

uint64_t CustomFeedbackGenerator.contentConfiguredWithFeedback(content:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a2, v6);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  v9 = *(a2 + 24);
  *(v8 + 16) = *(a2 + 16);
  *(v8 + 24) = v9;
  (*(v4 + 32))(v8 + v7, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  swift_getWitnessTable();
  View.onChange<A>(of:initial:_:)();
}

uint64_t closure #1 in CustomFeedbackGenerator.body(content:)()
{
  v0 = type metadata accessor for CustomFeedbackGenerator();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  type metadata accessor for _ValueActionModifier2();
  type metadata accessor for ModifiedContent();
  v1 = type metadata accessor for ModifiedContent();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v14 - v6;
  CustomFeedbackGenerator.contentConfiguredWithFeedback(content:)(v8, v0);
  WitnessTable = swift_getWitnessTable();
  v10 = swift_getWitnessTable();
  v14[2] = WitnessTable;
  v14[3] = v10;
  v14[0] = swift_getWitnessTable();
  v14[1] = MEMORY[0x1E69805D0];
  v11 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v4, v1, v11);
  v12 = *(v2 + 8);
  v12(v4, v1);
  static ViewBuilder.buildExpression<A>(_:)(v7, v1, v11);
  return (v12)(v7, v1);
}

uint64_t closure #1 in CustomFeedbackGenerator.contentConfiguredWithFeedback(content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CustomFeedbackGenerator();
  (*(a3 + *(v6 + 40)))(v26, a1, a2);
  v7 = v26[0];
  v25 = v26[1];
  v8 = a3 + *(v6 + 44);
  outlined init with copy of State<(feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?>(v8, v26, type metadata accessor for State<(feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?>);
  type metadata accessor for State<(feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?>(0);
  State.wrappedValue.getter();
  outlined destroy of (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)(v26, type metadata accessor for State<(feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?>);
  if ((v27 & 0xFFFFFFFFFFFFFFFCLL) == 0x3FFFFFFFCLL)
  {
    v9 = 0x3FFFFFFFCLL;
  }

  else
  {
    v9 = v27;
  }

  if ((v27 & 0xFFFFFFFFFFFFFFFCLL) == 0x3FFFFFFFCLL)
  {
    v10 = 0;
  }

  else
  {
    v10 = v28;
  }

  outlined destroy of (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)(&v27, type metadata accessor for (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?);
  v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
  if (v9 >> 2 == 0xFFFFFFFF)
  {
    if (v11 == 0x3FFFFFFFCLL)
    {
      goto LABEL_24;
    }
  }

  else if (v11 != 0x3FFFFFFFCLL && specialized static SensoryFeedback.FeedbackType.== infix(_:_:)(v9, v10, v7, v25))
  {
    goto LABEL_24;
  }

  v13 = CustomFeedbackGenerator.state.modify(v26, v6);
  if (*v12 >> 2 != 0xFFFFFFFFLL)
  {
    v14 = v12[5];
    if (v14)
    {
      v15 = v12[6];
      __swift_mutable_project_boxed_opaque_existential_1((v12 + 2), v12[5]);
      (*(v15 + 16))(v14, v15);
    }
  }

  v13(v26, 0);
  if (v11 == 0x3FFFFFFFCLL)
  {
    v26[0] = 0x3FFFFFFFCLL;
    memset(&v26[1], 0, 48);
  }

  else
  {
    v27 = v7;
    v28 = v25;
    closure #1 in closure #1 in CustomFeedbackGenerator.contentConfiguredWithFeedback(content:)(v26, &v26[2], &v27);
  }

  outlined init with copy of State<(feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?>(v26, &v27, type metadata accessor for (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?);
  if (*(v8 + 56))
  {
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  outlined destroy of (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)(&v27, type metadata accessor for (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?);
  outlined destroy of (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)(v26, type metadata accessor for (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?);
  v17 = CustomFeedbackGenerator.state.modify(v26, v6);
  if (*v16 >> 2 != 0xFFFFFFFFLL)
  {
    v18 = v16[5];
    if (v18)
    {
      v19 = v16[6];
      __swift_mutable_project_boxed_opaque_existential_1((v16 + 2), v16[5]);
      (*(v19 + 8))(v18, v19);
    }
  }

  v17(v26, 0);
LABEL_24:
  v21 = CustomFeedbackGenerator.state.modify(v26, v6);
  if (*v20 >> 2 != 0xFFFFFFFFLL)
  {
    v22 = v20[5];
    if (v22)
    {
      v23 = v20[6];
      __swift_mutable_project_boxed_opaque_existential_1((v20 + 2), v20[5]);
      (*(v23 + 24))(v22, v23);
    }
  }

  return (v21)(v26, 0);
}

uint64_t closure #1 in closure #1 in CustomFeedbackGenerator.contentConfiguredWithFeedback(content:)(unint64_t *a1, uint64_t a2, unint64_t *a3)
{
  v4 = *a3;
  v5 = a3[1];
  *a1 = *a3;
  a1[1] = v5;
  result = swift_weakLoadStrong();
  if (result)
  {
    UIKitSensoryFeedbackCache.implementation(type:)(v4, v5, &v10);
    if (v11)
    {
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v10, v12);
      Attribute = AGWeakAttributeGetAttribute();
      v8 = *MEMORY[0x1E698D3F8];

      if (Attribute != v8)
      {
        *(a2 + 24) = &type metadata for LocationBasedFeedbackAdaptor;
        *(a2 + 32) = &protocol witness table for LocationBasedFeedbackAdaptor;
        v9 = swift_allocObject();
        *a2 = v9;
        result = outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v12, v9 + 24);
        *(v9 + 16) = Attribute;
        return result;
      }

      result = __swift_destroy_boxed_opaque_existential_1(v12);
    }

    else
    {

      result = outlined destroy of LocationBasedSensoryFeedback?(&v10, &lazy cache variable for type metadata for LocationBasedSensoryFeedback?, &lazy cache variable for type metadata for LocationBasedSensoryFeedback);
    }
  }

  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t instantiation function for generic protocol witness table for CustomFeedbackGenerator<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for State<(feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t partial apply for closure #1 in FeedbackGenerator.contentConfiguredWithFeedback(content:)()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = *(type metadata accessor for FeedbackGenerator() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v0[2];
  v7 = v0[3];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in FeedbackGenerator.contentConfiguredWithFeedback(content:)(v6, v7, v0 + v5, v2, v3);
}

uint64_t partial apply for closure #1 in CustomFeedbackGenerator.contentConfiguredWithFeedback(content:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(a3(0, v7, v8) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return a4(a1, a2, v10, v7, v8);
}

void type metadata accessor for ViewInputFlagModifier<RecessButtonToggleBackground>()
{
  if (!lazy cache variable for type metadata for ViewInputFlagModifier<RecessButtonToggleBackground>)
  {
    lazy protocol witness table accessor for type RecessButtonToggleBackground and conformance RecessButtonToggleBackground();
    v0 = type metadata accessor for ViewInputFlagModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ViewInputFlagModifier<RecessButtonToggleBackground>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type RecessButtonToggleBackground and conformance RecessButtonToggleBackground()
{
  result = lazy protocol witness table cache variable for type RecessButtonToggleBackground and conformance RecessButtonToggleBackground;
  if (!lazy protocol witness table cache variable for type RecessButtonToggleBackground and conformance RecessButtonToggleBackground)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RecessButtonToggleBackground and conformance RecessButtonToggleBackground);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RecessButtonToggleBackground and conformance RecessButtonToggleBackground;
  if (!lazy protocol witness table cache variable for type RecessButtonToggleBackground and conformance RecessButtonToggleBackground)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RecessButtonToggleBackground and conformance RecessButtonToggleBackground);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RecessButtonToggleBackground and conformance RecessButtonToggleBackground;
  if (!lazy protocol witness table cache variable for type RecessButtonToggleBackground and conformance RecessButtonToggleBackground)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RecessButtonToggleBackground and conformance RecessButtonToggleBackground);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RecessButtonToggleBackground and conformance RecessButtonToggleBackground;
  if (!lazy protocol witness table cache variable for type RecessButtonToggleBackground and conformance RecessButtonToggleBackground)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RecessButtonToggleBackground and conformance RecessButtonToggleBackground);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RecessButtonToggleBackground and conformance RecessButtonToggleBackground;
  if (!lazy protocol witness table cache variable for type RecessButtonToggleBackground and conformance RecessButtonToggleBackground)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RecessButtonToggleBackground and conformance RecessButtonToggleBackground);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<RecessButtonToggleBackground> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<RecessButtonToggleBackground> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<RecessButtonToggleBackground> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for ViewInputFlagModifier<RecessButtonToggleBackground>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<RecessButtonToggleBackground> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance RecessButtonToggleBackground()
{
  lazy protocol witness table accessor for type RecessButtonToggleBackground and conformance RecessButtonToggleBackground();
  PropertyList.subscript.getter();
  return v1;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(a1, &v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v7 = *(&v25 + 1);
    v8 = v26;
    v9 = __swift_mutable_project_boxed_opaque_existential_1(&v24, *(&v25 + 1));
    v10 = MEMORY[0x1EEE9AC00](v9);
    v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v12, v10);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, a2, a3, isUniquelyReferenced_nonNull_native, &v23, v7, v8);
    result = __swift_destroy_boxed_opaque_existential_1(&v24);
    *v3 = v23;
  }

  else
  {
    outlined destroy of DropDelegate?(a1, &lazy cache variable for type metadata for EventType?, &lazy cache variable for type metadata for EventType, MEMORY[0x1E6981E78]);
    v15 = v3;
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v17)
    {
      v18 = v16;
      v19 = v3;
      v20 = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v23 = *v15;
      if (!v20)
      {
        specialized _NativeDictionary.copy()();
        v19 = v15;
        v21 = v23;
      }

      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>((*(v21 + 56) + 40 * v18), &v24);
      specialized _NativeDictionary._delete(at:)(v18, v21);
      *v19 = v21;
    }

    else
    {
      v26 = 0;
      v24 = 0u;
      v25 = 0u;
    }

    return outlined destroy of DropDelegate?(&v24, &lazy cache variable for type metadata for EventType?, &lazy cache variable for type metadata for EventType, MEMORY[0x1E6981E78]);
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, char a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if (v7)
    {
      v8 = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v3;
      v14 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v10 = v14;
      }

      outlined destroy of NavigationLinkSelectionIdentifier(*(v10 + 48) + (v8 << 6));
      specialized _NativeDictionary._delete(at:)(v8, v10);
      result = outlined destroy of NavigationLinkSelectionIdentifier(a3);
      *v4 = v10;
    }

    else
    {

      return outlined destroy of NavigationLinkSelectionIdentifier(a3);
    }
  }

  else
  {
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a3, v13);
    result = outlined destroy of NavigationLinkSelectionIdentifier(a3);
    *v3 = v15;
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (a3)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v6;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, a5, a6, isUniquelyReferenced_nonNull_native);

    *v6 = v21;
  }

  else
  {
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(a5, a6);
    v18 = v17;

    if (v18)
    {
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v7;
      v22 = *v7;
      if (!v19)
      {
        specialized _NativeDictionary.copy()();
        v20 = v22;
      }

      result = specialized _NativeDictionary._delete(at:)(v16, v20);
      *v7 = v20;
    }
  }

  return result;
}

void specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v5 = v4;
  if (a3)
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a4);
    if (v7)
    {
      v8 = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v4;
      v15 = *v5;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v10 = v15;
      }

      specialized _NativeDictionary._delete(at:)(v8, v10);
      *v5 = v10;
    }

    else
    {
    }
  }

  else
  {
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a4, v13, *&a1, *&a2);

    *v4 = v16;
  }
}

uint64_t specialized Dictionary.subscript.setter(unsigned __int8 *__src, uint64_t a2, uint64_t a3)
{
  if (__src[280] == 255)
  {
    v8 = MEMORY[0x1E69E6720];
    outlined destroy of TabEntry?(__src, &lazy cache variable for type metadata for TabEntry?, &type metadata for TabEntry, MEMORY[0x1E69E6720]);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, __dst);

    return outlined destroy of TabEntry?(__dst, &lazy cache variable for type metadata for TabEntry?, &type metadata for TabEntry, v8);
  }

  else
  {
    memcpy(__dst, __src, 0x119uLL);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__dst, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  return result;
}

unint64_t specialized Dictionary.subscript.setter(uint64_t a1, Swift::UInt32 a2)
{
  v3 = v2;
  if (*(a1 + 8) == 1)
  {
    outlined destroy of TabEntry?(a1, &lazy cache variable for type metadata for InspectorStorage?, &type metadata for InspectorStorage, MEMORY[0x1E69E6720]);
    v5 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v6)
    {
      v7 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v2;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v9 = v22;
      }

      v10 = *(v9 + 56) + 120 * v7;
      v12 = *(v10 + 32);
      v11 = *(v10 + 48);
      v13 = *(v10 + 16);
      v24 = *v10;
      v25 = v13;
      v26 = v12;
      v27 = v11;
      v14 = *(v10 + 64);
      v15 = *(v10 + 80);
      v16 = *(v10 + 96);
      v31 = *(v10 + 112);
      v29 = v15;
      v30 = v16;
      v28 = v14;
      specialized _NativeDictionary._delete(at:)(v7, v9);
      *v3 = v9;
    }

    else
    {
      v24 = xmmword_18CD633F0;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0;
    }

    return outlined destroy of TabEntry?(&v24, &lazy cache variable for type metadata for InspectorStorage?, &type metadata for InspectorStorage, MEMORY[0x1E69E6720]);
  }

  else
  {
    v17 = *(a1 + 80);
    v28 = *(a1 + 64);
    v29 = v17;
    v30 = *(a1 + 96);
    v31 = *(a1 + 112);
    v18 = *(a1 + 16);
    v24 = *a1;
    v25 = v18;
    v19 = *(a1 + 48);
    v26 = *(a1 + 32);
    v27 = v19;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v24, a2, v20);
    *v2 = v23;
  }

  return result;
}

unint64_t specialized Dictionary.subscript.setter(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    *v3 = v14;
  }

  else
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v10)
    {
      v11 = result;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v15 = *v4;
      if (!v12)
      {
        specialized _NativeDictionary.copy()();
        v13 = v15;
      }

      result = specialized _NativeDictionary._delete(at:)(v11, v13);
      *v4 = v13;
    }
  }

  return result;
}

uint64_t ViewModifier.requiring<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a2, v4);
  return StaticIf<>.init<>(_:then:)();
}

uint64_t View.onDrop(of:isTargeted:perform:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  v24[3] = &type metadata for ItemProviderDropAction;
  v24[4] = &protocol witness table for ItemProviderDropAction;
  v17 = swift_allocObject();
  v24[0] = v17;
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = partial apply for closure #1 in View.onDrop(of:isTargeted:perform:);
  v17[5] = v16;
  outlined init with copy of _Benchmark(v24, v25);
  v18 = type metadata accessor for FunctionalDropDelegate();
  v19 = swift_allocObject();
  *(v19 + 88) = 0;
  *(v19 + 96) = 0;
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a3;
  *(v19 + 40) = a4;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v25, v19 + 48);
  *(v19 + 88) = 0;
  *(v19 + 96) = 0;
  v22 = v18;
  v23 = &protocol witness table for FunctionalDropDelegate;
  *&v21 = v19;

  outlined copy of Binding<Int>?(a2, a3);
  __swift_destroy_boxed_opaque_existential_1(v24);
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  outlined destroy of DropDelegate?(v25, &lazy cache variable for type metadata for DropDelegate?, &lazy cache variable for type metadata for DropDelegate, &protocol descriptor for DropDelegate);
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v21, v25);
  MEMORY[0x18D00A570](v25, a7, &type metadata for DropModifier, a8);
  return outlined destroy of DropModifier(v25);
}

{
  v23[3] = &type metadata for ItemProviderDropAction;
  v23[4] = &protocol witness table for ItemProviderDropAction;
  v16 = swift_allocObject();
  v23[0] = v16;
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a5;
  v16[5] = a6;
  outlined init with copy of _Benchmark(v23, v24);
  v17 = type metadata accessor for FunctionalDropDelegate();
  v18 = swift_allocObject();
  *(v18 + 88) = 0;
  *(v18 + 96) = 0;
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v24, v18 + 48);
  *(v18 + 88) = 0;
  *(v18 + 96) = 0;
  v21 = v17;
  v22 = &protocol witness table for FunctionalDropDelegate;
  *&v20 = v18;

  outlined copy of Binding<Int>?(a2, a3);
  __swift_destroy_boxed_opaque_existential_1(v23);
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  outlined destroy of DropDelegate?(v24, &lazy cache variable for type metadata for DropDelegate?, &lazy cache variable for type metadata for DropDelegate, &protocol descriptor for DropDelegate);
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v20, v24);
  MEMORY[0x18D00A570](v24, a7, &type metadata for DropModifier, a8);
  return outlined destroy of DropModifier(v24);
}