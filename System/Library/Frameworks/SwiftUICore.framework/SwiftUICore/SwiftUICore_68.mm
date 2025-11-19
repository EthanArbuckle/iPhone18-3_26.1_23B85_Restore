uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PathSet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI7PathSetV7ElementV_Tt1g5(*a1, *a2) & (v2 == v3);
}

uint64_t closure #1 in GraphicsContext.drawSDF(of:style:distanceRange:gradient:ovalization:)(uint64_t *a1, uint64_t a2, __int128 *a3, __int128 *a4, double a5, double a6)
{
  v12 = *a1;
  if (*(*a1 + 52) != 27)
  {
    GraphicsContext.copyOnWrite()();
    v12 = *a1;
    *(*a1 + 52) = 27;
  }

  v13 = -a5 / (a6 - a5);
  if (*(v12 + 48) != v13)
  {
    GraphicsContext.copyOnWrite()();
    v12 = *a1;
    *(*a1 + 48) = v13;
  }

  if (a5 < 0.0)
  {
    v14 = -a5;
  }

  else
  {
    v14 = 0.0;
  }

  if (*(v12 + 56) != v14)
  {
    GraphicsContext.copyOnWrite()();
    v12 = *a1;
    *(*a1 + 56) = v14;
  }

  v15 = a3[9];
  v41 = a3[8];
  v42 = v15;
  v43 = *(a3 + 20);
  v16 = a3[5];
  v37 = a3[4];
  v38 = v16;
  v17 = a3[7];
  v39 = a3[6];
  v40 = v17;
  v18 = a3[1];
  v33 = *a3;
  v34 = v18;
  v19 = a3[3];
  v35 = a3[2];
  v36 = v19;
  v20 = a4[1];
  v31 = *a4;
  v32[0] = v20;
  *(v32 + 9) = *(a4 + 25);
  GraphicsContext.draw(_:with:style:)(a2, &v33, &v31, v12);
  v21 = *(v12 + 48);
  v22 = 1.0 - v21;
  if (v21 != (1.0 - v21))
  {
    GraphicsContext.copyOnWrite()();
    v12 = *a1;
    *(*a1 + 48) = v22;
  }

  if (a6 > 0.0)
  {
    v23 = -a6;
  }

  else
  {
    v23 = -0.0;
  }

  if (*(v12 + 56) != v23)
  {
    GraphicsContext.copyOnWrite()();
    v12 = *a1;
    *(*a1 + 56) = v23;
  }

  v24 = a3[9];
  v41 = a3[8];
  v42 = v24;
  v43 = *(a3 + 20);
  v25 = a3[5];
  v37 = a3[4];
  v38 = v25;
  v26 = a3[7];
  v39 = a3[6];
  v40 = v26;
  v27 = a3[1];
  v33 = *a3;
  v34 = v27;
  v28 = a3[3];
  v35 = a3[2];
  v36 = v28;
  v29 = a4[1];
  v31 = *a4;
  v32[0] = v29;
  *(v32 + 9) = *(a4 + 25);
  return GraphicsContext.draw(_:with:style:)(a2, &v33, &v31, v12);
}

uint64_t closure #1 in GraphicsContext.drawSDF(of:style:distanceRange:gradient:ovalization:matching:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, double a6, double a7, double a8)
{
  v9 = v8;
  v98 = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 16);
  if (!v10)
  {
    return result;
  }

  v13 = a4;
  v14 = result;
  v15 = (a2 + 32);
  v16 = a7 == 0.0;
  v17 = -a7;
  if (a7 >= 0.0)
  {
    v17 = 0.0;
  }

  if (a8 == 0.0)
  {
    v16 = 1;
  }

  v58 = v16;
  v18 = -a8;
  if (a8 <= 0.0)
  {
    v18 = -0.0;
  }

  if (a8 == 0.0)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v20 = v10 - 1;
  __asm { FMOV            V0.4S, #1.0 }

  v57 = _Q0;
  v59 = a3;
  v60 = result;
  while (1)
  {
    v26 = v15[2];
    v82 = v15[1];
    v83 = v26;
    v81 = *v15;
    v84 = *(v15 + 6);
    if (((*(&v26 + 1) ^ v13) & a3) != 0)
    {
      goto LABEL_63;
    }

    v65 = v20;
    if (v84)
    {
      v27 = 1013;
    }

    else
    {
      v27 = 1006;
    }

    v28 = *v14;
    if (*(*v14 + 52) == v27)
    {
      outlined init with copy of PathSet.Element(&v81, &v70);
    }

    else
    {
      outlined init with copy of PathSet.Element(&v81, &v70);
      GraphicsContext.copyOnWrite()();
      v28 = *v14;
      *(*v14 + 52) = v27;
    }

    v29 = *(&v81 + 1);
    v30 = v81;
    v31 = *(&v82 + 1);
    v32 = v82;
    v33 = v83;
    v70 = v57;
    LODWORD(v71) = 2143289344;
    _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&v70);
    v95 = v78;
    v96 = v79;
    v97 = v80;
    v91 = v74;
    v92 = v75;
    v93 = v76;
    v94 = v77;
    v87 = v70;
    v88 = v71;
    v89 = v72;
    v90 = v73;
    if (v33 <= 2)
    {
      if (v33 >= 2)
      {
      }

LABEL_27:
      outlined copy of Path.Storage(v30, v29, v32, v31, v33);
      goto LABEL_28;
    }

    if (v33 != 5)
    {
      if (v33 != 6)
      {
        goto LABEL_73;
      }

      goto LABEL_27;
    }

    type metadata accessor for Path.PathBox();
    v34 = swift_allocObject();
    *(v34 + 24) = 0u;
    *(v34 + 40) = 0u;
    *(v34 + 56) = 0u;
    *(v34 + 72) = 0u;
    *(v34 + 88) = 0u;
    *(v34 + 104) = 0u;
    *(v34 + 16) = 2;
    outlined init with copy of PathSet.Element(&v81, v68);
    RBPathStorageInit();
    LOWORD(v68[0]) = 0;
    MEMORY[0x193AC35E0](v34 + 24, 20, 0, v68);
    if (*(v30 + 16))
    {
      if (*(v30 + 16) != 1 && one-time initialization token for bufferCallbacks != -1)
      {
        swift_once();
      }

      goto LABEL_69;
    }

    if (!*(v30 + 24))
    {
      break;
    }

LABEL_69:
    RBPathStorageAppendPath();
    MEMORY[0x193AC35E0](v34 + 24, 16, 0, 0);
    v32 = 0;
    v31 = 0;
    v30 = v34;
    v29 = 0;
LABEL_28:
    v85[0] = v30;
    v85[1] = v29;
    v85[2] = v32;
    v85[3] = v31;
    v86 = v33;
    v64 = v32;
    if (v58)
    {
      v61 = v9;
      v35 = v31;
      v36 = *(v28 + 56);
      v37 = (~*&v36 & 0x7FF0000000000000) != 0;
      if ((*&v36 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        v37 = 1;
      }

      v38 = fabs(v36);
      if (v36 >= 0.0)
      {
        v39 = 2;
      }

      else
      {
        v39 = 3;
      }

      if (v37)
      {
        v40 = v38;
      }

      else
      {
        v40 = 0.0;
      }

      if (v37)
      {
        v41 = v39;
      }

      else
      {
        v41 = 0;
      }

      if (v36 != v19)
      {
        GraphicsContext.copyOnWrite()();
        v28 = *v60;
        *(*v60 + 56) = v19;
      }

      v68[8] = v95;
      v68[9] = v96;
      v69 = v97;
      v68[4] = v91;
      v68[5] = v92;
      v68[6] = v93;
      v68[7] = v94;
      v68[0] = v87;
      v68[1] = v88;
      v68[2] = v89;
      v68[3] = v90;
      v42 = a5[1];
      v66 = *a5;
      v67[0] = v42;
      *(v67 + 9) = *(a5 + 25);
      GraphicsContext.draw(_:with:style:)(v85, v68, &v66, v28);
      if (v41 == 3)
      {
        if (v40 > 0.0)
        {
          v40 = -v40;
        }

        else
        {
          v40 = -0.0;
        }
      }

      else
      {
        if (v41 != 2)
        {
          v40 = NAN;
          v51 = v35;
          v9 = v61;
LABEL_61:
          v52 = v29;
          v14 = v60;
          GraphicsContext.copyOnWrite()();
          outlined destroy of PathSet.Element(&v81);
          outlined consume of Path.Storage(v30, v52, v64, v51, v33);
          *(*v60 + 56) = v40;
          result = outlined destroy of PathSet.Element(&v81);
          a3 = v59;
          goto LABEL_62;
        }

        if (v40 <= 0.0)
        {
          v40 = 0.0;
        }
      }

      v51 = v35;
      v9 = v61;
      if (*(v28 + 56) != v40)
      {
        goto LABEL_61;
      }

      outlined destroy of PathSet.Element(&v81);
      outlined consume of Path.Storage(v30, v29, v32, v51, v33);
      result = outlined destroy of PathSet.Element(&v81);
    }

    else
    {
      v55 = v29;
      v56 = v31;
      outlined copy of Path.Storage(v30, v29, v32, v31, v33);
      outlined init with copy of PathDrawingStyle(a5, v68);
      v43 = RBDrawingStateBeginLayer();
      type metadata accessor for GraphicsContext.Storage();
      v44 = swift_allocObject();
      *(v44 + 32) = xmmword_18DD85500;
      *(v44 + 48) = 1065353216;
      *(v44 + 56) = 0x7FF8000000000000;
      v45 = *(v28 + 16);
      v46 = *(v45 + 64);
      if (v46 == RBDrawingStateGetDefaultColorSpace())
      {
        *(v44 + 16) = v45;
      }

      else
      {
        v62 = v9;
        v47 = RBDrawingStateGetDisplayList();
        v48 = *(v28 + 32);
        v49 = *(v28 + 40);
        v50 = v48;
        v53 = v47;
        if (v48 == 1)
        {
          v50 = *(v45 + 48);
          v49 = *(v45 + 56);
        }

        *&v68[0] = v50;
        *(&v68[0] + 1) = v49;
        type metadata accessor for GraphicsContext.Storage.Shared();
        swift_allocObject();
        outlined copy of EnvironmentValues?(v48);
        *(v44 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v53, v68);
        v9 = v62;
      }

      *(v44 + 24) = v43;
      *(v44 + 64) = 0;
      *&v68[0] = v44;

      closure #1 in GraphicsContext.drawSDF(of:style:distanceRange:gradient:ovalization:)(v68, v85, &v87, a5, a7, a8);
      if (v9)
      {
        goto LABEL_72;
      }

      v9 = 0;

      RBDrawingStateDrawLayer();

      outlined destroy of PathDrawingStyle(a5);
      outlined consume of Path.Storage(v30, v55, v64, v56, v33);
      outlined destroy of PathSet.Element(&v81);
      outlined consume of Path.Storage(v30, v55, v64, v56, v33);
      result = outlined destroy of PathSet.Element(&v81);
      v13 = a4;
    }

    a3 = v59;
    v14 = v60;
LABEL_62:
    v20 = v65;
LABEL_63:
    if (!v20)
    {
      return result;
    }

    --v20;
    v15 = (v15 + 56);
  }

  __break(1u);
LABEL_72:

  RBDrawingStateDrawLayer();
  __break(1u);
LABEL_73:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t GraphicsContext.fill(_:with:matching:)(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  if (a3 || *(v9 + 16) != 1)
  {
    v52 = a5;

    specialized GraphicsContext.clipToLayer(opacity:options:content:)(0, &v52, v9, a3, a4);

    v21 = v52;
    v22 = *MEMORY[0x1E695F040];
    v23 = *(MEMORY[0x1E695F040] + 8);
    v24 = *(MEMORY[0x1E695F040] + 16);
    v25 = *(MEMORY[0x1E695F040] + 24);
    v58.origin.x = *MEMORY[0x1E695F040];
    v58.origin.y = v23;
    v58.size.width = v24;
    v58.size.height = v25;
    IsNull = CGRectIsNull(v58);
    if (IsNull)
    {
      v27 = 0;
    }

    else
    {
      v27 = v22;
    }

    if (IsNull)
    {
      v28 = 0;
    }

    else
    {
      v28 = *&v23;
    }

    v53 = v27;
    v54 = v28;
    if (IsNull)
    {
      v29 = 0;
    }

    else
    {
      v29 = *&v24;
    }

    if (IsNull)
    {
      v30 = 0;
    }

    else
    {
      v30 = *&v25;
    }

    v55 = v29;
    v56 = v30;
    if (IsNull)
    {
      v31 = 6;
    }

    else
    {
      v31 = 0;
    }

    v57 = v31;
    v32 = a2[9];
    v49 = a2[8];
    v50 = v32;
    v51 = *(a2 + 20);
    v33 = a2[5];
    v45 = a2[4];
    v46 = v33;
    v34 = a2[7];
    v47 = a2[6];
    v48 = v34;
    v35 = a2[1];
    v41 = *a2;
    v42 = v35;
    v36 = a2[3];
    v43 = a2[2];
    v44 = v36;
    v37 = 256;
    v38 = 0u;
    v39 = 0u;
    v40 = 0;
    GraphicsContext.draw(_:with:style:)(&v53, &v41, &v37, v21);
    outlined consume of Path.Storage(v27, v28, v29, v30, v31);
  }

  else
  {
    v10 = *(v9 + 32);
    v11 = *(v9 + 40);
    v12 = *(v9 + 48);
    v13 = *(v9 + 56);
    v53 = v10;
    v54 = v11;
    v55 = v12;
    v56 = v13;
    v14 = *(v9 + 64);
    v57 = v14;
    v15 = a2[9];
    v49 = a2[8];
    v50 = v15;
    v51 = *(a2 + 20);
    v16 = a2[5];
    v45 = a2[4];
    v46 = v16;
    v17 = a2[7];
    v47 = a2[6];
    v48 = v17;
    v18 = a2[1];
    v41 = *a2;
    v42 = v18;
    v19 = a2[3];
    v43 = a2[2];
    v44 = v19;
    v37 = 256;
    v38 = 0u;
    v39 = 0u;
    v40 = 0;
    outlined copy of Path.Storage(v10, v11, v12, v13, v14);
    GraphicsContext.draw(_:with:style:)(&v53, &v41, &v37, a5);
    return outlined consume of Path.Storage(v10, v11, v12, v13, v14);
  }
}

int64_t PathSet.encode(to:)(int64_t result)
{
  v3 = result;
  v4 = *v1;
  v5 = v1[1];
  v6 = *(*v1 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = (v4 + 32);
    v24 = v6 - 1;
    while (1)
    {
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[2];
      v30 = *(v8 + 6);
      v28 = v10;
      v29 = v11;
      v27 = v9;
      v12 = v3[1];
      v13 = v3[2];
      if (v12 >= v13)
      {
        v18 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
          return result;
        }

        if (v13 < v18)
        {
          outlined init with copy of PathSet.Element(&v27, v25);
          v19 = ProtobufEncoder.growBufferSlow(to:)(v18);
        }

        else
        {
          v3[1] = v18;
          v19 = (*v3 + v12);
          outlined init with copy of PathSet.Element(&v27, v25);
        }

        *v19 = 10;
      }

      else
      {
        *(*v3 + v12) = 10;
        v3[1] = v12 + 1;
        outlined init with copy of PathSet.Element(&v27, v25);
      }

      v25[0] = v27;
      v25[1] = v28;
      v25[2] = v29;
      v26 = v30;
      v14 = v3[1];
      v15 = v3[3];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16) + 1, 1, v15);
        v15 = result;
      }

      v17 = *(v15 + 16);
      v16 = *(v15 + 24);
      if (v17 >= v16 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v15);
        v15 = result;
      }

      *(v15 + 16) = v17 + 1;
      *(v15 + 8 * v17 + 32) = v14;
      v3[3] = v15;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v3[1] = v14 + 1;
      PathSet.Element.encode(to:)(v3);
      if (v2)
      {
        return outlined destroy of PathSet.Element(&v27);
      }

      ProtobufEncoder.endLengthDelimited()();
      result = outlined destroy of PathSet.Element(&v27);
      if (v24 == v7)
      {
        break;
      }

      ++v7;
      v8 = (v8 + 56);
      if (v7 >= *(v4 + 16))
      {
        goto LABEL_33;
      }
    }
  }

  if (v5 != 0.0)
  {
    v20 = fabs(v5);
    if (v20 >= 65536.0)
    {
      v21 = 17;
    }

    else
    {
      v21 = 21;
    }

    ProtobufEncoder.encodeVarint(_:)(v21);
    if (v20 < 65536.0)
    {
      v22 = v3[1];
      result = v22 + 4;
      if (!__OFADD__(v22, 4))
      {
        *&v5 = v5;
        if (v3[2] >= result)
        {
          v3[1] = result;
          *(*v3 + v22) = LODWORD(v5);
          return result;
        }

        goto LABEL_36;
      }

LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      result = ProtobufEncoder.growBufferSlow(to:)(result);
      *result = LODWORD(v5);
      return result;
    }

    v23 = v3[1];
    result = v23 + 8;
    if (__OFADD__(v23, 8))
    {
      goto LABEL_35;
    }

    if (v3[2] < result)
    {
      result = ProtobufEncoder.growBufferSlow(to:)(result);
      *result = v5;
    }

    else
    {
      v3[1] = result;
      *(*v3 + v23) = v5;
    }
  }

  return result;
}

unint64_t PathSet.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  v7 = 0.0;
  v8 = MEMORY[0x1E69E7CC0];
  if (v5 >= v6)
  {
LABEL_58:
    v3[3] = 0;
    *a2 = v8;
    *(a2 + 8) = v7;
    return result;
  }

  while (1)
  {
    result = v3[3];
    if (result)
    {
      v9 = v3[4];
      if (v5 < v9)
      {
        goto LABEL_11;
      }

      if (v9 < v5)
      {
        goto LABEL_59;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
    }

    if (result < 8)
    {
LABEL_59:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
    }

LABEL_11:
    if (result >> 3 != 2)
    {
      break;
    }

    v21 = result & 7;
    if (v21 == 5)
    {
      v25 = v3[1];
      if (v6 < (v25 + 1))
      {
        goto LABEL_59;
      }

      v26 = *v25;
      v3[1] = v25 + 1;
      v7 = v26;
    }

    else
    {
      if (v21 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_68;
        }

        v22 = v3[1];
        if (v6 < v22 + result)
        {
          goto LABEL_59;
        }

        v3[3] = 17;
        v3[4] = v22 + result;
      }

      else
      {
        if (v21 != 1)
        {
          goto LABEL_59;
        }

        v22 = v3[1];
      }

      if (v6 < (v22 + 1))
      {
        goto LABEL_59;
      }

      v7 = *v22;
      v3[1] = v22 + 1;
    }

LABEL_4:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_58;
    }
  }

  if (result >> 3 != 1)
  {
    v23 = result & 7;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_69;
        }

        v24 = v3[1] + result;
        if (v6 < v24)
        {
          goto LABEL_59;
        }
      }

      else
      {
        if (v23 != 5)
        {
          goto LABEL_59;
        }

        v24 = v3[1] + 4;
        if (v6 < v24)
        {
          goto LABEL_59;
        }
      }
    }

    else
    {
      if ((result & 7) == 0)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
        }

        goto LABEL_4;
      }

      if (v23 != 1)
      {
        goto LABEL_59;
      }

      v24 = v3[1] + 8;
      if (v6 < v24)
      {
        goto LABEL_59;
      }
    }

    v3[1] = v24;
    goto LABEL_4;
  }

  if ((result & 7) != 2)
  {
    goto LABEL_61;
  }

  v10 = v3[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  *&v10[8 * v12 + 32] = v6;
  v3[5] = v10;
  v13 = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
  }

  if ((v13 & 0x8000000000000000) == 0)
  {
    v14 = v3[1] + v13;
    if (v6 >= v14)
    {
      v3[2] = v14;
      PathSet.Element.init(from:)(v3, v34);
      v15 = v3[5];
      if (!*(v15 + 2))
      {
        goto LABEL_66;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v16 = *(v15 + 2);
        if (!v16)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
        v16 = *(v15 + 2);
        if (!v16)
        {
          goto LABEL_67;
        }
      }

      v17 = v16 - 1;
      v6 = *&v15[8 * v17 + 32];
      *(v15 + 2) = v17;
      v3[5] = v15;
      v3[2] = v6;
      v30 = v34[0];
      v31 = v34[1];
      v32 = v34[2];
      v33 = v35;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v19 = *(v8 + 16);
      v18 = *(v8 + 24);
      if (v19 >= v18 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v19 + 1;
      v20 = v8 + 56 * v19;
      *(v20 + 80) = v33;
      *(v20 + 48) = v31;
      *(v20 + 64) = v32;
      *(v20 + 32) = v30;
      goto LABEL_4;
    }

LABEL_61:
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    swift_willThrow();
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
  __break(1u);
  result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v29 = *(result + 16);
  if (v29)
  {
    v27 = v29 - 1;
    v28 = *(result + 8 * v27 + 32);
    *(result + 16) = v27;
    v3[5] = result;
    v3[2] = v28;
  }

  __break(1u);
  return result;
}

void PathSet.Element.encode(to:)(uint64_t a1)
{
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 52);
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  *&v8[8 * v10 + 32] = v7;
  *(a1 + 24) = v8;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + 8) = v7 + 1;
    Path.encode(to:)();
    if (!v2)
    {
      ProtobufEncoder.endLengthDelimited()();
      if (v4)
      {
        ProtobufEncoder.encodeVarint(_:)(0x10uLL);
        ProtobufEncoder.encodeVarint(_:)(v4);
      }

      ProtobufEncoder.encodeVarint(_:)(0x18uLL);
      ProtobufEncoder.encodeVarint(_:)(v5);
      if (v6)
      {
        ProtobufEncoder.encodeVarint(_:)(0x20uLL);
        ProtobufEncoder.encodeVarint(_:)(v6);
      }
    }
  }
}

unint64_t PathSet.Element.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v6 = 0;
    LOBYTE(v7) = 0;
    LODWORD(v8) = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v36 = 6;
LABEL_4:
    v3[3] = 0;
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) = v36;
    *(a2 + 40) = v6;
    *(a2 + 48) = v7;
    *(a2 + 52) = v8;
    return result;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v36 = 6;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v13 = v3[4];
      if (v4 < v13)
      {
        goto LABEL_13;
      }

      if (v13 < v4)
      {
        goto LABEL_69;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      goto LABEL_70;
    }

    if (result <= 7)
    {
      goto LABEL_69;
    }

LABEL_13:
    v14 = result >> 3;
    v15 = result & 7;
    if (result >> 3 <= 2)
    {
      break;
    }

    if (v14 == 3)
    {
      if ((result & 7) != 0)
      {
        if (v15 != 2)
        {
          goto LABEL_69;
        }

        v26 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_70;
        }

        if (v26 < 0)
        {
          goto LABEL_78;
        }

        v27 = v3[1] + v26;
        if (v5 < v27)
        {
LABEL_69:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
LABEL_70:
          v37[0] = v9;
          v37[1] = v10;
          v37[2] = v11;
          v37[3] = v12;
          v38 = v36;
          *v39 = *v49;
          *&v39[3] = *&v49[3];
          v40 = v6;
          v41 = v7;
          v42 = v45;
          v43 = v46;
          v44 = v8;
          return outlined destroy of PathSet.Element(v37);
        }

        v3[3] = 24;
        v3[4] = v27;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        goto LABEL_70;
      }

      LODWORD(v7) = result == 1;
    }

    else
    {
      if (v14 != 4)
      {
LABEL_34:
        if ((result & 7) > 1)
        {
          if (v15 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_70;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_80;
            }

            v20 = v3[1] + result;
            if (v5 < v20)
            {
              goto LABEL_69;
            }
          }

          else
          {
            if (v15 != 5)
            {
              goto LABEL_69;
            }

            v20 = v3[1] + 4;
            if (v5 < v20)
            {
              goto LABEL_69;
            }
          }
        }

        else
        {
          if ((result & 7) == 0)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_70;
            }

            goto LABEL_6;
          }

          if (v15 != 1)
          {
            goto LABEL_69;
          }

          v20 = v3[1] + 8;
          if (v5 < v20)
          {
            goto LABEL_69;
          }
        }

        v3[1] = v20;
        goto LABEL_6;
      }

      if ((result & 7) != 0)
      {
        if (v15 != 2)
        {
          goto LABEL_69;
        }

        v18 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_70;
        }

        if (v18 < 0)
        {
          goto LABEL_77;
        }

        v19 = v3[1] + v18;
        if (v5 < v19)
        {
          goto LABEL_69;
        }

        v3[3] = 32;
        v3[4] = v19;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        goto LABEL_70;
      }

      v8 = result;
    }

LABEL_6:
    v4 = v3[1];
    if (v4 >= v5)
    {
      goto LABEL_4;
    }
  }

  if (v14 != 1)
  {
    if (v14 != 2)
    {
      goto LABEL_34;
    }

    if ((result & 7) != 0)
    {
      if (v15 != 2)
      {
        goto LABEL_69;
      }

      v16 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        goto LABEL_70;
      }

      if (v16 < 0)
      {
        goto LABEL_79;
      }

      v17 = v3[1] + v16;
      if (v5 < v17)
      {
        goto LABEL_69;
      }

      v3[3] = 16;
      v3[4] = v17;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      goto LABEL_70;
    }

    v6 = result;
    goto LABEL_6;
  }

  if (v15 != 2)
  {
    goto LABEL_69;
  }

  v31 = v12;
  v32 = v9;
  v12 = v11;
  v33 = v10;
  v34 = v7;
  v9 = v6;
  v6 = v2;
  v11 = v3[5];
  v7 = v8;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
  }

  v8 = *(v11 + 2);
  v21 = *(v11 + 3);
  v10 = v8 + 1;
  if (v8 >= v21 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v8 + 1, 1, v11);
  }

  *(v11 + 2) = v10;
  *&v11[8 * v8 + 32] = v5;
  v3[5] = v11;
  v22 = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    LODWORD(v8) = v7;
    v6 = v9;
    LOBYTE(v7) = v34;
    v9 = v32;
    v10 = v33;
    v11 = v12;
    v12 = v31;
    goto LABEL_70;
  }

  if ((v22 & 0x8000000000000000) == 0)
  {
    v8 = v7;
    v11 = v12;
    v23 = v3[1] + v22;
    if (v5 < v23)
    {
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
      v6 = v9;
      LOBYTE(v7) = v34;
      v9 = v32;
      v10 = v33;
      v12 = v31;
      goto LABEL_70;
    }

    v3[2] = v23;
    specialized Path.init(from:)(v3, v47);
    v6 = v9;
    v11 = v3[5];
    LODWORD(v7) = v34;
    if (!*(v11 + 2))
    {
      goto LABEL_75;
    }

    v10 = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
    }

    v24 = *(v11 + 2);
    if (!v24)
    {
      goto LABEL_76;
    }

    v25 = v24 - 1;
    v5 = *&v11[8 * v25 + 32];
    *(v11 + 2) = v25;
    result = outlined consume of Path.Storage(v32, v33, v12, v31, v36);
    v3[5] = v11;
    v3[2] = v5;
    v9 = v47[0];
    v11 = v47[2];
    v12 = v47[3];
    v36 = v48;
    v10 = v47[1];
    goto LABEL_6;
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
  __break(1u);
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
  v30 = *(result + 16);
  if (v30)
  {
    v28 = v30 - 1;
    v29 = *(result + 8 * v28 + 32);
    *(result + 16) = v28;
    v3[5] = result;
    v3[2] = v29;
    v9 = v32;
    goto LABEL_70;
  }

  __break(1u);
  return result;
}

BOOL specialized static PathSet.Element.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v2;
  v13 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 52);
  v6 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v6;
  v15 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 52);
  if ((specialized static Path.Storage.== infix(_:_:)(v12, v14) & 1) == 0)
  {
    return 0;
  }

  v10 = ((v4 ^ v8) & 1) == 0 && v5 == v9;
  return v3 == v7 && v10;
}

void type metadata accessor for _ContiguousArrayStorage<PathSet.Element>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<PathSet.Element>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PathSet.Element>);
    }
  }
}

uint64_t assignWithCopy for PathSet.Element(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of Path.Storage(*a2, v5, v6, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v13 = *(a1 + 32);
  *(a1 + 32) = v8;
  outlined consume of Path.Storage(v9, v10, v11, v12, v13);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  return a1;
}

uint64_t assignWithTake for PathSet.Element(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
  v10 = *(a1 + 32);
  *(a1 + 32) = v4;
  outlined consume of Path.Storage(v5, v6, v7, v8, v10);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  return a1;
}

uint64_t getEnumTagSinglePayload for PathSet.Element(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 56))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PathSet.Element(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

uint64_t outlined destroy of _SymbolEffect.Added(uint64_t a1)
{
  (off_1F0066518->destroy)();
  return a1;
}

{
  outlined consume of _SymbolEffect.Storage(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40));
  return a1;
}

uint64_t outlined init with copy of KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t destroy for GlassContainerResolver()
{
}

uint64_t initializeWithCopy for GlassContainerResolver(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  v6 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v6;

  return a1;
}

uint64_t assignWithCopy for GlassContainerResolver(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  v4 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v4;

  return a1;
}

uint64_t assignWithTake for GlassContainerResolver(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);

  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  return a1;
}

uint64_t getEnumTagSinglePayload for GlassContainerResolver(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t storeEnumTagSinglePayload for GlassContainerResolver(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t static GlassContainerResolver._makeView(view:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v63 = a3;
  v107 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 16);
  *v102 = *a2;
  *&v102[16] = v7;
  v8 = *(a2 + 48);
  v103 = *(a2 + 32);
  v9 = *a1;
  v104 = v8;
  v105 = *(a2 + 64);
  v106 = *(a2 + 80);
  v10 = *&v102[16];
  v11 = *&v102[28];
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE019GlassContainerCacheF033_7521D6231838360D8883796B4320212FLLV_Tt2g5(*v102, v95);
  Strong = swift_weakLoadStrong();
  _s7SwiftUI7WeakBoxVyAA19GlassContainerCacheCGWOhTm_0(v95, &lazy cache variable for type metadata for WeakBox<GlassContainerCache>, type metadata accessor for GlassContainerCache, type metadata accessor for WeakBox);
  v62 = Strong;
  if (Strong)
  {
    v59 = v11;
    v60 = 0;
    v61 = a5;
    closure #1 in static GlassContainerResolver._makeView(view:inputs:)(1);
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    closure #2 in static GlassContainerResolver._makeView(view:inputs:)(1);
    v13 = AGGraphCreateOffsetAttribute2();
    v14 = specialized static GraphHost.currentHost.getter();
    swift_beginAccess();
    v15 = *(v14 + 64);

    swift_beginAccess();
    v16 = *(v10 + 16);
    v58 = a4;
    v57 = v9;
    if (one-time initialization token for pixelLength != -1)
    {
      swift_once();
    }

    v17 = static CachedEnvironment.ID.pixelLength;
    swift_beginAccess();
    v18 = specialized CachedEnvironment.attribute<A>(id:_:)(v17);
    swift_endAccess();
    _s7SwiftUI8Resolver33_04178B540DC3B0BFBD7679A049CE48C7LLVSgWOi0_(v94);
    v19 = MEMORY[0x1E69E7CC0];
    v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12ViewIdentityV_AC14GlassContainerO8ItemDataVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    memcpy(&v95[4] + 8, v94, 0x118uLL);
    *&v95[0] = __PAIR64__(v13, OffsetAttribute2);
    v21 = v59;
    *(&v95[0] + 1) = __PAIR64__(v16, v59);
    *&v95[1] = __PAIR64__(v15, v18);
    v22 = v62;
    *(&v95[1] + 1) = v62;
    *&v95[2] = 0;
    *(&v95[2] + 1) = v20;
    *&v95[3] = v19;
    *(&v95[3] + 1) = v19;
    *&v95[4] = v19;
    memcpy(v93, v95, 0x160uLL);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type GlassContainerResolvedStorage and conformance GlassContainerResolvedStorage();

    Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of GlassContainerResolvedStorage(v95);
    v23 = AGGraphCreateOffsetAttribute2();
    v24 = AGGraphCreateOffsetAttribute2();
    v92[0] = *v102;
    *(v92 + 12) = *&v102[12];
    v88 = v103;
    v89 = v104;
    v90 = v105;
    v91 = v106;
    v25 = *(v10 + 16);
    *&v96 = __PAIR64__(v24, v21);
    DWORD2(v96) = v25;
    *&v97 = v22;
    WORD4(v97) = 0x8000;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();

    outlined init with copy of _ViewInputs(v102, v93);
    lazy protocol witness table accessor for type GlassContainerResolvedTransaction and conformance GlassContainerResolvedTransaction();
    v26 = Attribute.init<A>(body:value:flags:update:)();

    *&v93[0] = __PAIR64__(v57, v23);
    MEMORY[0x1EEE9AC00](v27);
    v28 = v63;
    v53 = v63;
    v29 = v58;
    inited = type metadata accessor for GlassContainerResolver.InitContent();
    WitnessTable = swift_getWitnessTable();
    v30 = type metadata accessor for Attribute();
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v93, closure #1 in Attribute.init<A>(_:)partial apply, v52, inited, MEMORY[0x1E69E73E0], v30, MEMORY[0x1E69E7410], v31);
    _GraphValue.init(_:)(v96, &v64);
    v32 = v64;
    v93[0] = v92[0];
    *(v93 + 12) = *(v92 + 12);
    v93[2] = v88;
    v93[3] = v89;
    v93[4] = v90;
    LODWORD(v60) = v26;
    HIDWORD(v93[1]) = v26;
    LODWORD(v93[5]) = v91;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v82 = v93[2];
    v83 = v93[3];
    v84 = v93[4];
    v85 = v93[5];
    v80 = v93[0];
    v81 = v93[1];
    v34 = v93[2];
    LODWORD(v82) = 0;
    *v68 = v32;
    v86[0] = v93[0];
    v86[1] = v93[1];
    v87 = v93[5];
    v86[3] = v93[3];
    v86[4] = v93[4];
    v86[2] = v82;
    v76 = v82;
    v77 = v93[3];
    v78 = v93[4];
    v79 = v93[5];
    v74 = v93[0];
    v75 = v93[1];
    v35 = v29;
    v36 = *(v29 + 24);
    outlined init with copy of _ViewInputs(v93, &v96);
    outlined init with copy of _ViewInputs(v86, &v96);
    v36(&v65, v68, &v74, v28, v35);
    v98 = v76;
    v99 = v77;
    v100 = v78;
    v101 = v79;
    v96 = v74;
    v97 = v75;
    outlined destroy of _ViewInputs(&v96);
    LODWORD(v82) = v34;
    if (ShouldRecordTree)
    {
      specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(&v65, &v80);
      AGSubgraphEndTreeElement();
    }

    v76 = v82;
    v77 = v83;
    v78 = v84;
    v79 = v85;
    v74 = v80;
    v75 = v81;
    outlined destroy of _ViewInputs(&v74);
    v37 = v65;
    v38 = v66;
    v39 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v65);
    v40 = v61;
    if ((v39 & 0x100000000) != 0)
    {
      *v68 = v92[0];
      *&v68[12] = *(v92 + 12);
      v69 = v60;
      v70 = v88;
      v71 = v89;
      v72 = v90;
      v73 = v91;
      outlined destroy of _ViewInputs(v68);
    }

    else
    {
      v68[0] = 0;
      PreferencesOutputs.subscript.setter(v39, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);

      *v68 = v92[0];
      *&v68[12] = *(v92 + 12);
      v69 = v60;
      v70 = v88;
      v71 = v89;
      v72 = v90;
      v73 = v91;
      result = outlined destroy of _ViewInputs(v68);
      v37 = v65;
      v38 = v66;
    }

    v51 = v67;
    *v40 = v37;
    *(v40 + 8) = v38;
    *(v40 + 12) = v51;
  }

  else
  {
    *&v95[0] = MEMORY[0x1E69E7CC0];
    v42 = Attribute.init<A>(body:value:flags:update:)();
    *&v95[0] = __PAIR64__(v9, v42);
    MEMORY[0x1EEE9AC00](v42);
    v43 = v63;
    v53 = v63;
    inited = type metadata accessor for GlassContainerResolver.InitContent();
    WitnessTable = swift_getWitnessTable();
    v44 = type metadata accessor for Attribute();
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v95, partial apply for closure #1 in Attribute.init<A>(_:), v52, inited, MEMORY[0x1E69E73E0], v44, MEMORY[0x1E69E7410], v45);
    _GraphValue.init(_:)(LODWORD(v93[0]), v86);
    v46 = v86[0];
    v47 = AGSubgraphShouldRecordTree();
    v48 = v43;
    if (v47)
    {
      AGSubgraphBeginTreeElement();
    }

    v94[2] = v103;
    v94[3] = v104;
    v94[4] = v105;
    LODWORD(v94[5]) = v106;
    v94[0] = *v102;
    v94[1] = *&v102[16];
    v49 = v103;
    LODWORD(v94[2]) = 0;
    LODWORD(v80) = v46;
    v93[0] = *v102;
    v93[1] = *&v102[16];
    LODWORD(v93[5]) = v106;
    v93[3] = v104;
    v93[4] = v105;
    v93[2] = v94[2];
    v98 = v94[2];
    v99 = v104;
    v100 = v105;
    v101 = v106;
    v96 = *v102;
    v97 = *&v102[16];
    v50 = *(a4 + 24);
    outlined init with copy of _ViewInputs(v102, v95);
    outlined init with copy of _ViewInputs(v93, v95);
    v50(&v80, &v96, v48, a4);
    v95[2] = v98;
    v95[3] = v99;
    v95[4] = v100;
    LODWORD(v95[5]) = v101;
    v95[0] = v96;
    v95[1] = v97;
    outlined destroy of _ViewInputs(v95);
    LODWORD(v94[2]) = v49;
    if (v47)
    {
      specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a5, v94);
      AGSubgraphEndTreeElement();
    }

    v98 = v94[2];
    v99 = v94[3];
    v100 = v94[4];
    v101 = v94[5];
    v96 = v94[0];
    v97 = v94[1];
    return outlined destroy of _ViewInputs(&v96);
  }

  return result;
}

uint64_t closure #1 in static GlassContainerResolver._makeView(view:inputs:)(uint64_t a1)
{
  v5[2] = type metadata accessor for GlassContainerResolver();
  v2 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v5, &type metadata for GlassContainer.Storage, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v3);
  return v5[5];
}

uint64_t closure #2 in static GlassContainerResolver._makeView(view:inputs:)(uint64_t a1)
{
  v5[2] = type metadata accessor for GlassContainerResolver();
  v2 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + 32, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_0, v5, &type metadata for GeometryProxy, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v3);
  return v5[5];
}

uint64_t GlassContainerResolver.InitContent.value.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, void, void)@<X8>)
{
  v6 = a1;
  v79 = *MEMORY[0x1E69E9840];
  v8 = HIDWORD(a1);
  v69 = type metadata accessor for ObservationTracking._AccessList();
  v9 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v11 = &v59[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v65 = &v59[-v13];
  MEMORY[0x1EEE9AC00](v14);
  v66 = &v59[-v15];
  type metadata accessor for WeakBox<GlassContainerCache>(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v64 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v59[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v59[-v20];
  MEMORY[0x1EEE9AC00](v22);
  v67 = &v59[-v23];
  v70 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v59[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v27);
  v68 = &v59[-v28];
  v73 = a2;
  v74 = a3;
  v75 = v6;
  v76 = v8;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v29 = static ObservationCenter._current;
  swift_beginAccess();
  v30 = pthread_getspecific(v29[2]);
  v31 = v69;
  if (!v30)
  {
    v32 = swift_slowAlloc();
    pthread_setspecific(v29[2], v32);
    v78 = type metadata accessor for ObservationCenter();
    *&v77 = v29[3];
    outlined init with take of Any(&v77, v32);
    v31 = v69;

    v30 = v32;
  }

  outlined init with copy of Any(v30, &v77);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v33 = v71;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29[2] + 1, 1, v29);
    *(v33 + 24) = v29;
    goto LABEL_9;
  }

  v61 = v11;
  v60 = CurrentAttribute;
  v63 = a4;
  swift_beginAccess();
  v62 = *(v33 + 24);
  *(v33 + 24) = MEMORY[0x1E69E7CC0];
  v35 = (*(v9 + 56))(v21, 1, 1, v31);
  MEMORY[0x1EEE9AC00](v35);
  *&v59[-32] = a2;
  *&v59[-24] = partial apply for closure #1 in GlassContainerResolver.InitContent.value.getter;
  *&v59[-16] = &v72;
  v36 = type metadata accessor for Error();
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v21, partial apply for closure #1 in ObservationCenter._withObservation<A>(do:), &v59[-48], v64, v36, a2, MEMORY[0x1E69E7288], &v71);
  v37 = v70 + 32;
  a4 = *(v70 + 32);
  a4(v68, v26, a2);
  v38 = v21;
  v39 = v67;
  outlined init with take of ObservationTracking._AccessList?(v38, v67);
  outlined init with copy of Logger?(v39, v18, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0]);
  if ((*(v9 + 48))(v18, 1, v31) == 1)
  {
    _s7SwiftUI7WeakBoxVyAA19GlassContainerCacheCGWOhTm_0(v39, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
    v40 = v18;
    goto LABEL_12;
  }

  v70 = v37;
  v41 = v18;
  v42 = v31;
  v31 = a2;
  v43 = v66;
  v11 = *(v9 + 32);
  (v11)(v66, v41, v42);
  (*(v9 + 16))(v65, v43, v42);
  v29 = *(v33 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v33 + 24) = v29;
  a2 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v46 = v29[2];
  v45 = v29[3];
  if (v46 >= v45 >> 1)
  {
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v45 > 1, v46 + 1, 1, v29);
  }

  v29[2] = v46 + 1;
  v47 = v29 + ((*(a2 + 80) + 32) & ~*(a2 + 80)) + *(a2 + 72) * v46;
  v9 = a2;
  v48 = v69;
  (v11)(v47, v65, v69);
  *(v33 + 24) = v29;
  (*(a2 + 8))(v66, v48);
  a2 = v31;
  v40 = v67;
LABEL_12:
  _s7SwiftUI7WeakBoxVyAA19GlassContainerCacheCGWOhTm_0(v40, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  a4(v63, v68, a2);
  v49 = *(v33 + 24);
  v50 = *(v49 + 16);
  if (v50)
  {
    v52 = *(v9 + 16);
    v51 = v9 + 16;
    v70 = v52;
    v53 = v49 + ((*(v51 + 64) + 32) & ~*(v51 + 64));
    v54 = *(v51 + 56);
    v68 = v49;

    v55 = v60;
    v56 = v69;
    v57 = v61;
    do
    {
      (v70)(v57, v53, v56);
      ObservationCenter.invalidate<A>(_:onChangeIn:)(v55, v57);
      (*(v51 - 8))(v57, v56);
      v53 += v54;
      --v50;
    }

    while (v50);
  }

  *(v33 + 24) = v62;
}

uint64_t closure #1 in GlassContainerResolver.InitContent.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a1;
  v6 = type metadata accessor for GlassContainerResolver();
  return Attribute.syncMainIfReferences<A>(do:)(partial apply for closure #1 in closure #1 in GlassContainerResolver.InitContent.value.getter, v8, v6, a2, a4);
}

uint64_t closure #1 in closure #1 in GlassContainerResolver.InitContent.value.getter(uint64_t a1)
{
  v1 = *(a1 + 88);
  AGGraphGetValue();

  v1(v2);
}

uint64_t GlassContainerResolvedStorage.resolver.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 72), sizeof(__dst));
  memcpy(v13, (v1 + 72), sizeof(v13));
  if (_s7SwiftUI8Resolver33_04178B540DC3B0BFBD7679A049CE48C7LLVSgWOg(v13) == 1)
  {
    v3 = *(v1 + 24);
    v4 = MEMORY[0x1E69E7CC0];
    __src[1] = MEMORY[0x1E69E7CC0];
    __src[2] = MEMORY[0x1E69E7CC0];
    LOWORD(__src[3]) = 0;

    __src[4] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI11ResolvedIDs33_04178B540DC3B0BFBD7679A049CE48C7LLV3KeyO_AC9SeedValueVyAC14GlassContainerO5EntryV8StableIDVGTt0g5Tf4g_n(v4);
    LODWORD(__src[5]) = -1;
    __src[6] = MEMORY[0x1E69E7CD0];
    __src[7] = 0;
    __src[8] = 0;
    __src[9] = v4;
    __src[10] = MEMORY[0x1E69E7CD0];
    __src[11] = MEMORY[0x1E69E7CD0];
    __src[12] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI14GlassContainerO5EntryV8StableIDV_SayAIGTt0g5Tf4g_n(v4);
    __src[13] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI14GlassContainerO5EntryV8StableIDV_SayAIGTt0g5Tf4g_n(v4);
    __src[14] = 0;
    __src[15] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12ViewIdentityV_AC14GlassContainerO8ItemDataVTt0g5Tf4g_n(v4);
    __src[16] = v4;
    __src[17] = v4;
    __src[18] = 0;
    __src[19] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12ViewIdentityV_AC14GlassContainerO8ItemDataVTt0g5Tf4g_n(v4);
    __src[20] = v4;
    __src[21] = v4;
    memset(&__src[22], 0, 72);
    v8[284] = 1;
    LOBYTE(__src[31]) = 1;
    EnvironmentValues.init()(&__src[32]);
    __src[34] = 0;
    __src[0] = v3;
    memcpy(v9, __src, sizeof(v9));
    memcpy(v10, v9, sizeof(v10));
    _ViewInputs.base.modify(v10, v5);
    memcpy(__src, (v1 + 72), sizeof(__src));
    outlined init with copy of Resolver(v9, v8);
    outlined destroy of SeedValue<GlassContainer.EntryState>(__src, &lazy cache variable for type metadata for Resolver?, &unk_1F004B218, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
    memcpy((v1 + 72), v10, 0x118uLL);
    v6 = v9;
  }

  else
  {
    v6 = v13;
  }

  memcpy(a1, v6, 0x118uLL);
  return outlined init with copy of Resolver?(__dst, __src, &lazy cache variable for type metadata for Resolver?, &unk_1F004B218, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
}

uint64_t GlassContainerResolvedStorage.updateValue()()
{
  v1 = v0;
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 24);
  AGGraphRegisterDependency();
  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = *(Value + 1);
  v6 = *(Value + 2);
  v7 = *(Value + 3);
  v8 = swift_allocObject();
  *(v8 + 16) = 2;

  v9 = specialized GlassContainerResolvedStorage.resolvedModelEntries(storage:)(v6);
  AGGraphClearUpdate();
  v10 = *AGGraphGetValue();

  AGGraphSetUpdate();
  v11 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v10);
  v22 = v5;
  if (v11 && v11[9] && (specialized getter of storageMatches #1 in GlassContainerResolvedStorage.updateValue()(v8, v6, v0) & 1) == 0)
  {
    v13 = GlassContainerResolvedStorage.animatedChangeUpdate(newStorage:newModelEntries:)(v5, v6, v7, v9, v4);
    goto LABEL_11;
  }

  v12 = *(v2 + 148);
  if (v12 >> 14 == 1)
  {
    if (specialized getter of storageMatches #1 in GlassContainerResolvedStorage.updateValue()(v8, v6, v1))
    {
      v13 = specialized GlassContainerResolvedStorage.animatingUpdate(newStorage:newModelEntries:update:)(v9, v12 & 1);
      goto LABEL_11;
    }
  }

  else if (!(v12 >> 14))
  {
    v13 = specialized GlassContainerResolvedStorage.preparingUpdate(newStorage:newModelEntries:update:)((v12 >> 8) & 1);
LABEL_11:
    v23 = v13;
    goto LABEL_12;
  }

  swift_beginAccess();
  specialized SeedValues.collect()();
  swift_endAccess();
  GlassContainerResolvedStorage.resolver.getter(__src);
  specialized SeedValues.collect()();
  memcpy(__dst, __src, 0x118uLL);
  _ViewInputs.base.modify(__dst, v14);
  memcpy(v26, v1 + 9, 0x118uLL);
  outlined destroy of SeedValue<GlassContainer.EntryState>(v26, &lazy cache variable for type metadata for Resolver?, &unk_1F004B218, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
  memcpy(v1 + 9, __dst, 0x118uLL);
  v23 = v9;

LABEL_12:
  memcpy(__dst, v1, sizeof(__dst));
  v15 = __dst[3];
  memcpy(v24, v1, sizeof(v24));
  outlined init with copy of GlassContainerResolvedStorage(__dst, v26);
  v16 = AGGraphGetValue();
  v17 = *v16;
  v18 = *(v16 + 1);

  v19 = specialized GlassContainerResolvedStorage.resolvedStorage(storage:entries:)(v18, &v23, v17);

  memcpy(v26, v24, sizeof(v26));
  outlined destroy of GlassContainerResolvedStorage(v26);

  v20 = *(v15 + 148);
  v24[0] = v19;
  LOWORD(v24[1]) = v20;
  AGGraphSetOutputValue();

  *(v1 + 4) = v4;
  v1[5] = v22;
  v1[6] = v6;
  v1[7] = v7;
  v1[8] = v9;
  return result;
}

uint64_t GlassContainerResolvedStorage.animatedChangeUpdate(newStorage:newModelEntries:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  memcpy(__dst, v5, sizeof(__dst));
  v11 = __dst[8];
  memcpy(__src, v5, sizeof(__src));
  outlined init with copy of GlassContainerResolvedStorage(__dst, v28);
  GlassContainerResolvedStorage.resolverContext(storage:)(a1, a2, a3, v34, a5);
  memcpy(v28, __src, sizeof(v28));
  outlined destroy of GlassContainerResolvedStorage(v28);
  v29[7] = *&v34[112];
  v29[8] = *&v34[128];
  v29[9] = *&v34[144];
  v30 = *&v34[160];
  v29[3] = *&v34[48];
  v29[4] = *&v34[64];
  v29[5] = *&v34[80];
  v29[6] = *&v34[96];
  v29[0] = *v34;
  v29[1] = *&v34[16];
  v29[2] = *&v34[32];
  __src[8] = *&v34[128];
  __src[9] = *&v34[144];
  *&__src[10] = *&v34[160];
  __src[4] = *&v34[64];
  __src[5] = *&v34[80];
  __src[6] = *&v34[96];
  __src[7] = *&v34[112];
  __src[0] = *v34;
  __src[1] = *&v34[16];
  __src[2] = *&v34[32];
  __src[3] = *&v34[48];
  GlassContainerResolvedStorage.resolver.getter(v25);
  Resolver.prepare(oldEntries:newEntries:context:)(v11, a4, __src);
  memcpy(v31, v25, sizeof(v31));
  _ViewInputs.base.modify(v31, v12);
  memcpy(v32, (v5 + 72), sizeof(v32));
  v13 = MEMORY[0x1E69E6720];
  outlined destroy of SeedValue<GlassContainer.EntryState>(v32, &lazy cache variable for type metadata for Resolver?, &unk_1F004B218, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
  memcpy((v5 + 72), v31, 0x118uLL);
  GlassContainerResolvedStorage.resolver.getter(v24);
  Resolver.resolve()();
  memcpy(v33, v24, sizeof(v33));
  _ViewInputs.base.modify(v33, v14);
  memcpy(v34, (v5 + 72), sizeof(v34));
  outlined destroy of SeedValue<GlassContainer.EntryState>(v34, &lazy cache variable for type metadata for Resolver?, &unk_1F004B218, v13, type metadata accessor for Resolver?);
  memcpy((v5 + 72), v33, 0x118uLL);
  GlassContainerResolvedStorage.resolver.getter(__src);
  outlined destroy of Resolver(__src);
  if (BYTE8(__src[1]) == 1)
  {
    GlassContainerResolvedStorage.resolver.getter(v23);
    outlined destroy of Resolver(v23);
    v15 = __dst[3];
    if (v23[25])
    {
      v16 = 1;
    }

    else
    {
      v16 = 257;
    }

    *(__dst[3] + 148) = v16;
    if (swift_weakLoadStrong())
    {
      v17 = *(v15 + 112);
      AGGraphClearUpdate();
      v18 = AGSubgraphGetCurrent();
      AGSubgraphSetCurrent();
      v19 = AGCreateWeakAttribute();
      AGSubgraphSetCurrent();

      AGGraphSetUpdate();
      specialized GraphHost.continueTransaction<A>(_:)(v19);
    }

    GlassContainerResolvedStorage.resolver.getter(v21);
    outlined destroy of Resolver.Context(v29);
    memcpy(v22, v21, sizeof(v22));
    a4 = v22[1];

    outlined destroy of Resolver(v22);
  }

  else
  {

    outlined destroy of Resolver.Context(v29);
  }

  return a4;
}

__n128 GlassContainerResolvedStorage.resolverContext(storage:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v8 = v5[4];
  v9 = v5[5];
  v10 = v5[6];
  v11 = v5[7];
  AGGraphClearUpdate();
  v22 = *AGGraphGetValue();

  AGGraphSetUpdate();
  AGGraphClearUpdate();
  Value = AGGraphGetValue();
  v14 = *Value;
  v13 = Value[1];

  AGGraphSetUpdate();
  AGGraphClearUpdate();
  v15 = *AGGraphGetValue();
  AGGraphSetUpdate();
  AGGraphClearUpdate();
  v16 = AGGraphGetValue();
  v23 = *v16;
  v24 = *(v16 + 16);
  v25 = *(v16 + 32);
  v26 = *(v16 + 48);
  AGGraphSetUpdate();

  v17 = *AGGraphGetValue();
  *a4 = v8;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
  *(a4 + 32) = a5;
  *(a4 + 40) = a1;
  *(a4 + 48) = a2;
  *(a4 + 56) = a3;
  *(a4 + 64) = a5;
  *(a4 + 72) = v17;
  *(a4 + 80) = v15;
  result = v23;
  *(a4 + 132) = v26;
  *(a4 + 116) = v25;
  *(a4 + 100) = v24;
  *(a4 + 84) = v23;
  *(a4 + 136) = 0;
  *(a4 + 144) = v14;
  *(a4 + 152) = v13;
  *(a4 + 160) = v22;
  return result;
}

__n128 Resolver.prepare(oldEntries:newEntries:context:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = a3[9];
  v34 = a3[8];
  v35 = v6;
  v36 = *(a3 + 20);
  v7 = a3[5];
  v30 = a3[4];
  v31 = v7;
  v8 = a3[7];
  v32 = a3[6];
  v33 = v8;
  v9 = a3[1];
  v26 = *a3;
  v27 = v9;
  v10 = a3[3];
  v28 = a3[2];
  v29 = v10;

  *(v3 + 16) = a1;

  *(v3 + 8) = a2;
  *(v3 + 24) = 0;
  *(v3 + 64) = *(a2 + 16);

  v11 = MEMORY[0x1E69E7CC0];
  *(v3 + 72) = MEMORY[0x1E69E7CC0];

  v12 = MEMORY[0x1E69E7CD0];
  *(v3 + 80) = MEMORY[0x1E69E7CD0];

  *(v3 + 88) = v12;
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI14GlassContainerO5EntryV8StableIDV_SayAIGTt0g5Tf4g_n(v11);

  *(v3 + 96) = v13;
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI14GlassContainerO5EntryV8StableIDV_SayAIGTt0g5Tf4g_n(v11);

  *(v3 + 104) = v14;
  v15 = *(v3 + 256);
  v37[8] = *(v3 + 240);
  v37[9] = v15;
  v38 = *(v3 + 272);
  v16 = *(v3 + 192);
  v37[4] = *(v3 + 176);
  v37[5] = v16;
  v17 = *(v3 + 224);
  v37[6] = *(v3 + 208);
  v37[7] = v17;
  v18 = *(v3 + 128);
  v37[0] = *(v3 + 112);
  v37[1] = v18;
  v19 = *(v3 + 160);
  v37[2] = *(v3 + 144);
  v37[3] = v19;
  outlined init with copy of Resolver.Context(&v26, v25);
  outlined destroy of Resolver.Context(v37);
  v20 = v35;
  *(v3 + 240) = v34;
  *(v3 + 256) = v20;
  *(v3 + 272) = v36;
  v21 = v31;
  *(v3 + 176) = v30;
  *(v3 + 192) = v21;
  v22 = v33;
  *(v3 + 208) = v32;
  *(v3 + 224) = v22;
  v23 = v27;
  *(v3 + 112) = v26;
  *(v3 + 128) = v23;
  result = v29;
  *(v3 + 144) = v28;
  *(v3 + 160) = result;
  return result;
}

void Resolver.resolve()()
{
  v1 = v0;
  v2 = v0[2];
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    v10 = v0[1];
    v11 = *(v10 + 16);
    if (!v11)
    {
      return;
    }

    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_63;
  }

  v62[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v5 = v62[0];
  v6 = (v2 + 360);
  v7 = *(v62[0] + 16);
  do
  {
    v8 = *v6;
    v62[0] = v5;
    v9 = *(v5 + 24);
    if (v7 >= v9 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v7 + 1, 1);
      v5 = v62[0];
    }

    v6 += 43;
    *(v5 + 16) = v7 + 1;
    *(v5 + 8 * v7++ + 32) = v8;
    --v3;
  }

  while (v3);
  v10 = v0[1];
  v11 = *(v10 + 16);
  if (v11)
  {
LABEL_63:
    v62[0] = v4;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v12 = v4;
    v54 = (v10 + 360);
    v55 = *(v4 + 16);
    do
    {
      v56 = *v54;
      v62[0] = v12;
      v57 = *(v12 + 24);
      if (v55 >= v57 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v55 + 1, 1);
        v12 = v62[0];
      }

      v54 += 43;
      *(v12 + 16) = v55 + 1;
      *(v12 + 8 * v55++ + 32) = v56;
      --v11;
    }

    while (v11);
    goto LABEL_8;
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_8:
  v62[0] = v4;
  specialized CollectionChanges.formChanges<A, B>(from:to:)(v5, v12, partial apply for specialized closure #1 in CollectionChanges.changedOffsets<A, B>(from:to:limit:));

  v0[9] = v4;
  memcpy(__dst, v0, sizeof(__dst));
  v13 = __dst[9];
  memcpy(__src, v1, sizeof(__src));
  outlined init with copy of Resolver(__dst, v62);
  specialized Resolver.log(_:)(__src, v5, v12);

  memcpy(v62, __src, 0x118uLL);
  outlined destroy of Resolver(v62);
  _s7SwiftUI17CollectionChangesV10ProjectionV4kind7changesAEyxq__qd__GAC7ElementO4KindOyxq___G_SayAJyxq__GGtcfCSi_SiSnySiG_APtTt2B5Tm(0, v13, __src);
  v14 = __src[1];
  v15 = __src[2];
  v16 = __src[3];
  if (__src[2] != __src[3])
  {
    v23 = LOBYTE(__src[0]);

    while ((v15 & 0x8000000000000000) == 0)
    {
      v24 = *(v14 + 16);
      if (v15 >= v24)
      {
        goto LABEL_69;
      }

      v25 = v14 + 32 + 40 * v15;
      if (*(v25 + 32) >= 2u)
      {
        goto LABEL_78;
      }

      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = v16;
      if ((v15 + 1) < v16)
      {
        if (v15 + 1 != v24)
        {
          v29 = (v14 + 104 + 40 * v15);
          v28 = v15 + 1;
          while (1)
          {
            v31 = *v29;
            v29 += 40;
            v30 = v31;
            if (v31)
            {
              if (v30 == 1)
              {
                if (v23 == 1)
                {
                  goto LABEL_31;
                }
              }

              else if (v23 == 2)
              {
                goto LABEL_31;
              }
            }

            else if (!v23)
            {
              goto LABEL_31;
            }

            if (v24 == ++v28)
            {
              goto LABEL_76;
            }
          }
        }

        goto LABEL_76;
      }

LABEL_31:
      if (v26 != v27)
      {
        if (v27 < v26)
        {
          goto LABEL_72;
        }

        if (v26 >= v27)
        {
          goto LABEL_73;
        }

        do
        {
          v32 = v26 + 1;
          Resolver.updateRemoval(_:)(v26);
          v26 = v32;
        }

        while (v27 != v32);
      }

      v15 = v28;
      if (v28 == v16)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __src[0] = 0;
    __src[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    __src[0] = 0xD000000000000015;
    __src[1] = 0x800000018DD74EE0;
    v58 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x193ABEDD0](v58);

    while (1)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_78:
      __src[0] = 0;
      __src[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      __src[0] = 0x2064696C61766E69;
      __src[1] = 0xEF203A7865646E69;
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ABEDD0](v59);
    }
  }

LABEL_10:

  _s7SwiftUI17CollectionChangesV10ProjectionV4kind7changesAEyxq__qd__GAC7ElementO4KindOyxq___G_SayAJyxq__GGtcfCSi_SiSnySiG_APtTt2B5Tm(1, v1[9], __src);
  v17 = __src[1];
  v18 = __src[2];
  v19 = __src[3];
  if (__src[2] != __src[3])
  {
    v33 = LOBYTE(__src[0]);

    while (1)
    {
      if ((v18 & 0x8000000000000000) != 0)
      {
        goto LABEL_70;
      }

      v34 = *(v17 + 16);
      if (v18 >= v34)
      {
        goto LABEL_71;
      }

      v35 = v17 + 32 + 40 * v18;
      if (*(v35 + 32) >= 2u)
      {
        goto LABEL_78;
      }

      v36 = *v35;
      v37 = *(v35 + 8);
      v38 = v19;
      if ((v18 + 1) < v19)
      {
        break;
      }

LABEL_51:
      if (v36 != v37)
      {
        if (v37 < v36)
        {
          goto LABEL_74;
        }

        if (v36 >= v37)
        {
          goto LABEL_75;
        }

        do
        {
          v42 = v36 + 1;
          Resolver.updateInsertion(_:)(v36);
          v36 = v42;
        }

        while (v37 != v42);
      }

      v18 = v38;
      if (v38 == v19)
      {
        goto LABEL_12;
      }
    }

    if (v18 + 1 != v34)
    {
      v39 = (v17 + 104 + 40 * v18);
      v38 = v18 + 1;
      while (1)
      {
        v41 = *v39;
        v39 += 40;
        v40 = v41;
        if (v41)
        {
          if (v40 == 1)
          {
            if (v33 == 1)
            {
              goto LABEL_51;
            }
          }

          else if (v33 == 2)
          {
            goto LABEL_51;
          }
        }

        else if (!v33)
        {
          goto LABEL_51;
        }

        if (v34 == ++v38)
        {
          goto LABEL_76;
        }
      }
    }

    goto LABEL_76;
  }

LABEL_12:

  _s7SwiftUI17CollectionChangesV10ProjectionV4kind7changesAEyxq__qd__GAC7ElementO4KindOyxq___G_SayAJyxq__GGtcfCSi_SiSnySiG_APtTt2B5Tm(2, v1[9], __src);
  v20 = __src[1];
  v21 = __src[2];
  v22 = __src[3];
  if (__src[2] == __src[3])
  {
  }

  else
  {
    v43 = LOBYTE(__src[0]);

    v44 = v21;
    do
    {
      v45 = specialized CollectionChanges.Projection.subscript.getter(v44, v43, v20);
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v44 = specialized CollectionChanges.Projection.index(after:)(v44, v43, v20, v21, v22);
      __src[0] = v45;
      __src[1] = v47;
      __src[2] = v45;
      __src[3] = v49;
      __src[4] = v51;
      __src[5] = v49;
      LOBYTE(__src[6]) = 0;
      while (1)
      {
        v52 = specialized Zip2Sequence.Iterator.next()();
        if (v53)
        {
          break;
        }

        Resolver.updateMatched(source:target:)(v52);
      }
    }

    while (v44 != v22);
  }

  Resolver.postProcessEntries()();
}

uint64_t GlassContainerResolvedTransaction.updateValue()()
{
  v1 = v0;
  v34[1] = *MEMORY[0x1E69E9840];
  v2 = *AGGraphGetValue();
  v34[0] = v2;

  Value = AGGraphGetValue();
  v4 = *Value;
  if (specialized static GlassContainer.ResolvedPhase.== infix(_:_:)(*Value, *(v0 + 24)) || (v4 & 0xC000) != 0)
  {
    if ((v4 & 0xC000) != 0x4000)
    {
      goto LABEL_23;
    }

    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v2);
    if (v8)
    {
      v9 = v8[9];
    }

    else
    {
      v9 = 0;
    }

    if (one-time initialization token for default == -1)
    {
      if (!v9)
      {
        goto LABEL_23;
      }
    }

    else
    {
      swift_once();
      if (!v9)
      {
        goto LABEL_23;
      }
    }

    v10 = *(*v9 + 104);

    LOBYTE(v10) = v10(v11);

    if (v10)
    {
      AGGraphClearUpdate();
      v12 = AGGraphGetValue();
      v13 = *v12;
      v14 = v12[1];

      AGGraphSetUpdate();
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE030GlassContainerSettingsOverrideF033_C0CCB6EB7DEF7555840E44B500337668LLVG_Tt2g5(v2, &v25);
      if (v29)
      {
        v15 = &v30;
        static GlassContainer.TransitionSettings.default.getter(&v30);
        v16 = v31;
        v17 = v32;
        v18 = v33;
      }

      else
      {
        v18 = v28;
        v17 = v27;
        v15 = &v25;
        v16 = v26;
      }

      v25 = *v15;
      v26 = v16;
      v27 = v17;
      v28 = v18;
      v30 = v13;
      *&v31 = v14;
      v23 = GlassContainer.TransitionSettings.resolvedTransitionAnimation(in:update:)(&v30, v4 & 1);

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v34, v23);

      v2 = v34[0];
    }
  }

  else if (v4)
  {

    v6 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v5);
    if (v6 && !v6[9])
    {
    }

    else
    {
      type metadata accessor for TypedElement<TransactionPropertyKey<AnimationKey>>();
      *(swift_allocObject() + 72) = 0;
      _s7SwiftUI22TransactionPropertyKey33_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationE033_D98E9A1069CEEADA58829ED440E36F30LLVGMaTm_0(0, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationKey>, &type metadata for AnimationKey, &protocol witness table for AnimationKey, type metadata accessor for TransactionPropertyKey);
      v34[0] = PropertyList.Element.init(keyType:before:after:)(v7, 0, v2).value;

      v2 = v34[0];
    }

    v20 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v19);
    if (!v20 || (v21 = v2, *(v20 + 72) != 1))
    {
      type metadata accessor for TypedElement<TransactionPropertyKey<DisablesAnimationsKey>>();
      *(swift_allocObject() + 72) = 1;
      _s7SwiftUI22TransactionPropertyKey33_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationE033_D98E9A1069CEEADA58829ED440E36F30LLVGMaTm_0(0, &lazy cache variable for type metadata for TransactionPropertyKey<DisablesAnimationsKey>, &type metadata for DisablesAnimationsKey, &protocol witness table for DisablesAnimationsKey, type metadata accessor for TransactionPropertyKey);
      v21 = PropertyList.Element.init(keyType:before:after:)(v22, 0, v2).value;
      v34[0] = v21;
    }

    v2 = v21;
  }

LABEL_23:
  if (Transaction.isAnimated.getter(v2))
  {
    Transaction.addAnimationListener(_:)(*(v1 + 16));
    v2 = v34[0];
  }

  v25 = v2;
  AGGraphSetOutputValue();

  *(v1 + 24) = v4;
  return result;
}

uint64_t specialized Resolver.log(_:)(uint64_t a1, void (*a2)(_BYTE *))
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for WeakBox<GlassContainerCache>(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14[-v9];
  if (one-time initialization token for glassContainer != -1)
  {
    v13 = v8;
    swift_once();
    v8 = v13;
  }

  v11 = __swift_project_value_buffer(v8, static Log.glassContainer);
  outlined init with copy of Logger?(v11, v10, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  result = (*(v4 + 48))(v10, 1, v3);
  if (result != 1)
  {
    (*(v4 + 32))(v6, v10, v3);
    a2(v6);
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

void Resolver.updateRemoval(_:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = *(v2 + 212);
  v62 = *(v2 + 196);
  v63 = v5;
  v64 = *(v2 + 228);
  v65 = *(v2 + 244);
  if (*(v2 + 248))
  {
    return;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_50;
  }

  v1 = v2;
  v6 = *(v2 + 16);
  if (*(v6 + 16) <= v4)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v7 = 344 * v4;
  v3 = v4;
  memcpy(v54, (v6 + 344 * v4 + 32), 0x154uLL);
  v8.id = v54[41];
  memcpy(v49, v2, sizeof(v49));
  v9 = v49[0];
  v10 = v49[2];
  v11 = v49[23];
  v12 = v49[18];
  v13 = v49[19];
  memcpy(v47, v1, 0x118uLL);
  outlined init with copy of GlassContainer.Entry(v54, v53);
  outlined init with copy of GlassContainer.Entry(v54, v53);

  outlined init with copy of Resolver(v49, v53);
  specialized Resolver.log(_:)(v47, v3, v54, _s7SwiftUI15ResolverMessage33_04178B540DC3B0BFBD7679A049CE48C7LLOWOi1_);
  outlined destroy of GlassContainer.Entry(v54);
  memcpy(v50, v47, sizeof(v50));
  outlined destroy of Resolver(v50);
  GlassContainerCache.resetInteractionState(id:)(v8);
  if (*(v10 + 16) <= v3)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v3 = 0;
  memcpy(v51, (v10 + 32 + v7), 0x154uLL);
  memcpy(v48, (v10 + 32 + v7), sizeof(v48));
  v56 = v62;
  v57 = v63;
  v58 = v64;
  v59 = v65;
  v55[0] = v11;
  v55[1] = v12;
  v55[2] = v13;
  v60 = v9;
  v15 = *(v1 + 256);
  v14 = *(v1 + 264);
  outlined init with copy of GlassContainer.Entry(v51, v53);
  if (v14)
  {

    v16 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA040AccessibilityPrefersCrossFadeTransitionsI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v15);
  }

  else
  {
    v16 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA040AccessibilityPrefersCrossFadeTransitionsF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v15);
  }

  if (v16 == 2)
  {
    v53[0] = v15;
    v53[1] = v14;
    LOBYTE(v47[0]) = 3;
    if (EnvironmentValues.accessibilitySettingEnabled(_:)(v47))
    {
LABEL_42:
      memcpy(v36, v1, 0x118uLL);
      memcpy(v42, v1, 0x118uLL);
      memcpy(__dst, v48, 0x154uLL);
      memcpy(__src, v48, 0x154uLL);
      outlined init with copy of Resolver(v36, v47);
      outlined init with copy of GlassContainer.Entry(__dst, v47);
      v33 = Resolver.canMaterializeEntry(_:isRemoval:)(__src, 1);
      memcpy(v47, __src, 0x154uLL);
      outlined destroy of GlassContainer.Entry(v47);
      memcpy(v37, v42, 0x118uLL);
      outlined destroy of Resolver(v37);
      if ((v33 & 1) == 0)
      {
        memcpy(__src, v48, 0x154uLL);
        outlined destroy of GlassContainer.Entry(__src);
        outlined destroy of GlassContainer.Entry.DistanceContext(v55);
        outlined destroy of GlassContainer.Entry(v54);
        return;
      }

      memcpy(v44, v1, sizeof(v44));
      memcpy(__src, v1, 0x118uLL);
      outlined init with copy of Resolver(v44, v42);
      specialized Resolver.log(_:)(__src, specialized closure #1 in Resolver.log(_:));
      memcpy(v38, __src, 0x118uLL);
      outlined destroy of Resolver(v38);
      memcpy(v41, v1, 0x118uLL);
      v3 = *&v41[8];
      memcpy(__src, v1, 0x118uLL);
      outlined init with copy of Resolver(v41, v42);
      Resolver.adjustMaterializedEntry(_:isRemoval:)(v48);
      memcpy(v43, __src, 0x118uLL);
      outlined destroy of Resolver(v43);
      memcpy(__src, v48, 0x154uLL);
      outlined init with copy of GlassContainer.Entry(__src, v42);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_44;
      }

      goto LABEL_54;
    }
  }

  else if (v16)
  {
    goto LABEL_42;
  }

  if ((v49[8] & 0x8000000000000000) != 0)
  {
    goto LABEL_52;
  }

  v17 = v49[1];
  if (*(v49[1] + 16) >= v49[8])
  {
    v18 = (2 * v49[8]) | 1;
    v19 = (2 * *(v10 + 16)) | 1;

    specialized RandomAccessCollection<>.sourceElement(target:otherElements:config:context:)(v54, v10, v10 + 32, 0, v19, 1, v55, v17, v17 + 32, 0, v18);

    memcpy(__dst, __src, 0x1B1uLL);
    memcpy(v47, __src, 0x1B1uLL);
    if (_s7SwiftUI14GlassContainerO5EntryVSgWOg(v47) == 1)
    {
      goto LABEL_42;
    }

    memcpy(v53, v47, 0x1B1uLL);
    if ((v47[54] & 1) == 0)
    {
      v20 = v47[53];
      memcpy(v52, v1, sizeof(v52));
      v21 = *(v51[16] + 16);
      if (v21)
      {
        v22 = (v51[16] + 208);
        while (*v22 == 1)
        {
          v22 += 656;
          if (!--v21)
          {
            goto LABEL_34;
          }
        }

        if ((v47[42] & 0x100000000) == 0)
        {
          v38[0] = 2;
          if ((specialized getter of containsSource #1 in Resolver.canReuseEntry(_:sourceResult:isRemoval:)(v38, v52, v53) & 1) == 0)
          {
            v61 = v52[9];
            v23 = *(v52[9] + 16);
            if (v23)
            {
              v24 = v52[9] + 64;
              v25 = (v52[9] + 64);
              while (1)
              {
                v26 = *v25;
                v25 += 40;
                if (v26 == 1 && v20 >= *(v24 - 32) && v20 < *(v24 - 24))
                {
                  break;
                }

                v24 = v25;
                if (!--v23)
                {
                  goto LABEL_33;
                }
              }

              outlined init with copy of (Int, Int, GlassContainer.Entry, GlassContainer.Entry)(&v61, __src, type metadata accessor for CollectionChanges<Int, Int>);

              memcpy(v37, v1, 0x118uLL);
              memcpy(__src, v1, 0x118uLL);
              outlined init with copy of Resolver(v37, v42);
              specialized Resolver.log(_:)(__src, specialized closure #1 in Resolver.log(_:));
              memcpy(v42, __src, 0x118uLL);
              outlined destroy of Resolver(v42);
              v36[0] = *v48;
              v36[1] = *&v48[16];
              LOBYTE(v36[2]) = v48[32];
              outlined init with copy of GlassContainer.Entry.ModelID(v36, __src);
              specialized Set._Variant.insert(_:)(__src, v36);
              outlined consume of GlassContainer.Entry.ModelID(*__src, __src[8], *&__src[16], *&__src[24], __src[32]);
              v43[0] = v47[0];
              v43[1] = v47[1];
              v43[2] = v47[2];
              v43[3] = v47[3];
              LOBYTE(v43[4]) = v47[4];
              outlined copy of GlassContainer.Entry.ModelID(v47[0], v47[1], v47[2], v47[3], v47[4]);
              specialized Set._Variant.insert(_:)(v41, v43);
              outlined destroy of GlassContainer.Entry.DistanceContext(v55);
              outlined destroy of GlassContainer.Entry(v54);
              outlined destroy of GlassContainer.MatchingResult<GlassContainer.Item>?(__dst, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>?, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>, &type metadata for GlassContainer.Entry, type metadata accessor for GlassContainer.MatchingResult);
              outlined consume of GlassContainer.Entry.ModelID(*v41, v41[8], *&v41[16], *&v41[24], v41[32]);
              memcpy(__src, v48, 0x154uLL);
              outlined destroy of GlassContainer.Entry(__src);
              goto LABEL_40;
            }

LABEL_33:
            outlined init with copy of (Int, Int, GlassContainer.Entry, GlassContainer.Entry)(&v61, __src, type metadata accessor for CollectionChanges<Int, Int>);
          }
        }
      }
    }

LABEL_34:
    memcpy(v40, v1, sizeof(v40));
    memcpy(v39, v1, sizeof(v39));
    memcpy(v41, v48, sizeof(v41));
    memcpy(v38, v48, 0x154uLL);
    memcpy(v42, v47, 0x1B1uLL);
    _ViewInputs.base.modify(v42, v28);
    memcpy(v37, v42, 0x1B1uLL);
    outlined init with copy of Resolver(v40, v36);
    outlined init with copy of GlassContainer.Entry(v41, v36);
    outlined init with copy of GlassContainer.MatchingResult<GlassContainer.Entry>?(__dst, v36);
    v29 = Resolver.canMatchEntry(_:isRemoval:allowSelf:sourceResult:)(v38, 1, 0, v37);
    memcpy(__src, v37, sizeof(__src));
    outlined destroy of GlassContainer.MatchingResult<GlassContainer.Item>?(__src, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>?, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>, &type metadata for GlassContainer.Entry, type metadata accessor for GlassContainer.MatchingResult);
    memcpy(v43, v38, 0x154uLL);
    outlined destroy of GlassContainer.Entry(v43);
    memcpy(v44, v39, sizeof(v44));
    outlined destroy of Resolver(v44);
    if ((v29 & 1) == 0)
    {
      outlined destroy of GlassContainer.MatchingResult<GlassContainer.Item>?(__dst, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>?, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>, &type metadata for GlassContainer.Entry, type metadata accessor for GlassContainer.MatchingResult);
      goto LABEL_42;
    }

    memcpy(v39, v1, sizeof(v39));
    memcpy(v37, v1, 0x118uLL);
    outlined init with copy of Resolver(v39, v36);
    specialized Resolver.log(_:)(v37, specialized closure #1 in Resolver.log(_:));
    memcpy(v38, v37, 0x118uLL);
    outlined destroy of Resolver(v38);
    memcpy(v37, v53, 0x1B1uLL);
    Resolver.adjustMatchedEntry(_:sourceResult:isRemoval:)(v48);
    memcpy(v37, v48, 0x154uLL);
    v30 = *(v1 + 8);
    outlined init with copy of GlassContainer.Entry(v37, v36);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
    }

    v32 = *(v30 + 2);
    v31 = *(v30 + 3);
    if (v32 >= v31 >> 1)
    {
      v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v30);
    }

    outlined destroy of GlassContainer.Entry.DistanceContext(v55);
    outlined destroy of GlassContainer.Entry(v54);
    outlined destroy of GlassContainer.MatchingResult<GlassContainer.Item>?(__dst, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>?, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>, &type metadata for GlassContainer.Entry, type metadata accessor for GlassContainer.MatchingResult);
    memcpy(v36, v48, 0x154uLL);
    outlined destroy of GlassContainer.Entry(v36);
    *(v30 + 2) = v32 + 1;
    memcpy(&v30[344 * v32 + 32], v37, 0x154uLL);
    *(v1 + 8) = v30;
LABEL_40:
    *(v1 + 24) = 1;
    return;
  }

LABEL_53:
  __break(1u);
LABEL_54:
  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
LABEL_44:
  v35 = *(v3 + 2);
  v34 = *(v3 + 3);
  if (v35 >= v34 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v3);
  }

  outlined destroy of GlassContainer.Entry.DistanceContext(v55);
  outlined destroy of GlassContainer.Entry(v54);
  memcpy(v42, v48, 0x154uLL);
  outlined destroy of GlassContainer.Entry(v42);
  *(v3 + 2) = v35 + 1;
  memcpy(&v3[344 * v35 + 32], __src, 0x154uLL);
  *(v1 + 8) = v3;
  *(v1 + 24) = 257;
}

void Resolver.updateInsertion(_:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v6 = *(v2 + 212);
  v58 = *(v2 + 196);
  v59 = v6;
  v60 = *(v2 + 228);
  v61 = *(v2 + 61);
  if ((v2[248] & 1) == 0)
  {
    v7 = v5;
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v1 = v2;
      v8 = *(v2 + 1);
      if (*(v8 + 16) > v5)
      {
        v4 = 344 * v5;
        memcpy(v50, (v8 + 344 * v5 + 32), 0x154uLL);
        memcpy(__dst, v2, sizeof(__dst));
        v9 = __dst[23];
        v10 = __dst[18];
        v11 = __dst[19];
        v12 = __dst[0];
        memcpy(__src, v1, 0x118uLL);
        outlined init with copy of GlassContainer.Entry(v50, v49);
        outlined init with copy of GlassContainer.Entry(v50, v49);

        outlined init with copy of Resolver(__dst, v49);
        specialized Resolver.log(_:)(__src, v7, v50, _s7SwiftUI15ResolverMessage33_04178B540DC3B0BFBD7679A049CE48C7LLOWOi0_);
        outlined destroy of GlassContainer.Entry(v50);
        memcpy(v47, __src, sizeof(v47));
        outlined destroy of Resolver(v47);
        v52 = v58;
        v53 = v59;
        v54 = v60;
        v55 = v61;
        v51[0] = v9;
        v51[1] = v10;
        v51[2] = v11;
        v56 = v12;
        v13 = *(v1 + 32);
        v2 = *(v1 + 33);
        if (v2)
        {

          v14 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA040AccessibilityPrefersCrossFadeTransitionsI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v13);
        }

        else
        {
          v14 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA040AccessibilityPrefersCrossFadeTransitionsF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(*(v1 + 32));
        }

        if (v14 == 2)
        {
          v49[0] = v13;
          v49[1] = v2;
          LOBYTE(__src[0]) = 3;
          v2 = v49;
          if (EnvironmentValues.accessibilitySettingEnabled(_:)(__src))
          {
            goto LABEL_52;
          }
        }

        else if (v14)
        {
          goto LABEL_52;
        }

        if ((__dst[8] & 0x8000000000000000) != 0)
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        v2 = __dst[1];
        if (*(__dst[1] + 16) < __dst[8])
        {
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        v15 = __dst[2];
        v16 = __dst[2] + 32;
        v17 = (2 * *(__dst[2] + 16)) | 1;
        v18 = (2 * __dst[8]) | 1;

        specialized RandomAccessCollection<>.sourceElement(target:otherElements:config:context:)(v50, v2, (v2 + 32), 0, v18, 0, v51, v15, v16, 0, v17);

        memcpy(v44, v43, 0x1B1uLL);
        memcpy(__src, v43, 0x1B1uLL);
        if (_s7SwiftUI14GlassContainerO5EntryVSgWOg(__src) != 1)
        {
          v2 = __src;
          memcpy(v49, __src, 0x1B1uLL);
          if ((__src[54] & 1) == 0)
          {
            v19 = __src[53];
            memcpy(v48, v1, sizeof(v48));
            if (*(v48[1] + 16) <= v7)
            {
LABEL_67:
              __break(1u);
              goto LABEL_68;
            }

            memcpy(v42, (v48[1] + v4 + 32), 0x154uLL);
            v20 = *(v42[16] + 16);
            if (v20)
            {
              v21 = (v42[16] + 208);
              while (*v21 == 1)
              {
                v21 += 656;
                if (!--v20)
                {
                  goto LABEL_35;
                }
              }

              if ((__src[42] & 0x100000000) == 0)
              {
                LOBYTE(v40[0]) = 2;
                outlined init with copy of Resolver(v48, v43);
                outlined init with copy of GlassContainer.Entry(v42, v43);
                if (specialized getter of containsSource #1 in Resolver.canReuseEntry(_:sourceResult:isRemoval:)(v40, v48, v49))
                {
                  v57 = v48[9];
                  v22 = *(v48[9] + 16);
                  if (v22)
                  {
                    v23 = v48[9] + 64;
                    v24 = (v48[9] + 64);
                    while (1)
                    {
                      v25 = *v24;
                      v24 += 40;
                      if (!v25 && v19 >= *(v23 - 32) && v19 < *(v23 - 24))
                      {
                        break;
                      }

                      v23 = v24;
                      if (!--v22)
                      {
                        goto LABEL_34;
                      }
                    }

                    outlined init with copy of (Int, Int, GlassContainer.Entry, GlassContainer.Entry)(&v57, v43, type metadata accessor for CollectionChanges<Int, Int>);
                    outlined destroy of GlassContainer.Entry(v42);
                    outlined destroy of Resolver(v48);

                    memcpy(v41, v1, sizeof(v41));
                    memcpy(v43, v1, 0x118uLL);
                    outlined init with copy of Resolver(v41, v39);
                    specialized Resolver.log(_:)(v43, specialized closure #1 in Resolver.log(_:));
                    memcpy(v37, v43, 0x118uLL);
                    outlined destroy of Resolver(v37);
                    memcpy(v38, __src, 0x154uLL);
                    outlined init with copy of GlassContainer.MatchingResult<GlassContainer.Entry>?(v44, v43);
                    specialized Resolver.prepareReusedEntry(target:sourceEntry:sourceIndex:)(v7, v38);
                    memcpy(v39, v38, 0x154uLL);
                    outlined destroy of GlassContainer.Entry(v39);
                    Resolver.updateMatched(source:target:)(v19);
                    memcpy(v38, __src, 0x154uLL);
                    outlined init with copy of GlassContainer.MatchingResult<GlassContainer.Entry>?(v44, v43);
                    specialized Resolver.reuseEntry(target:sourceEntry:sourceIndex:)(v7);
                    outlined destroy of GlassContainer.Entry.DistanceContext(v51);
                    outlined destroy of GlassContainer.Entry(v50);
                    outlined destroy of GlassContainer.MatchingResult<GlassContainer.Item>?(v44, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>?, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>, &type metadata for GlassContainer.Entry, type metadata accessor for GlassContainer.MatchingResult);
                    memcpy(v43, v38, 0x154uLL);
                    outlined destroy of GlassContainer.Entry(v43);
                    goto LABEL_49;
                  }

LABEL_34:
                  outlined init with copy of (Int, Int, GlassContainer.Entry, GlassContainer.Entry)(&v57, v43, type metadata accessor for CollectionChanges<Int, Int>);
                  outlined destroy of GlassContainer.Entry(v42);
                  outlined destroy of Resolver(v48);
                }

                else
                {
                  outlined destroy of GlassContainer.Entry(v42);
                  outlined destroy of Resolver(v48);
                }
              }
            }
          }

LABEL_35:
          v27 = *(v50[16] + 16);
          if (v27)
          {
            v29 = *(v1 + 32);
            v28 = *(v1 + 33);
            v30 = (v50[16] + 208);
            while (*v30 == 1)
            {
              v30 += 656;
              if (!--v27)
              {
                goto LABEL_51;
              }
            }

            outlined init with copy of GlassContainer.MatchingResult<GlassContainer.Entry>?(v44, v43);
            if (v28)
            {

              v31 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA040AccessibilityPrefersCrossFadeTransitionsI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v29);
            }

            else
            {
              v31 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA040AccessibilityPrefersCrossFadeTransitionsF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v29);
            }

            if (v31 == 2)
            {
              v43[0] = v29;
              v43[1] = v28;
              LOBYTE(v42[0]) = 3;
              v32 = EnvironmentValues.accessibilitySettingEnabled(_:)(v42);
              outlined destroy of GlassContainer.MatchingResult<GlassContainer.Item>?(v44, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>?, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>, &type metadata for GlassContainer.Entry, type metadata accessor for GlassContainer.MatchingResult);
              if (!v32)
              {
                goto LABEL_45;
              }
            }

            else
            {
              outlined destroy of GlassContainer.MatchingResult<GlassContainer.Item>?(v44, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>?, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>, &type metadata for GlassContainer.Entry, type metadata accessor for GlassContainer.MatchingResult);
              if ((v31 & 1) == 0)
              {
LABEL_45:
                memcpy(v40, v1, sizeof(v40));
                v2 = v40[1];
                memcpy(v43, v1, 0x118uLL);
                outlined init with copy of Resolver(v40, v42);
                specialized Resolver.log(_:)(v43, specialized closure #1 in Resolver.log(_:));
                memcpy(v41, v43, sizeof(v41));
                outlined destroy of Resolver(v41);
                if (*(v2 + 2) > v7)
                {
                  v33 = &v2[v4];
                  memcpy(v42, v33 + 32, 0x154uLL);
                  memcpy(v39, v33 + 32, 0x154uLL);
                  memcpy(v43, v49, 0x1B1uLL);
                  outlined init with copy of GlassContainer.Entry(v42, v38);
                  Resolver.adjustMatchedEntry(_:sourceResult:isRemoval:)(v39);
                  memcpy(v43, v39, 0x154uLL);
                  v2 = *(v1 + 1);
                  outlined init with copy of GlassContainer.Entry(v43, v38);
                  if (swift_isUniquelyReferenced_nonNull_native())
                  {
LABEL_47:
                    outlined destroy of GlassContainer.Entry.DistanceContext(v51);
                    outlined destroy of GlassContainer.Entry(v50);
                    outlined destroy of GlassContainer.MatchingResult<GlassContainer.Item>?(v44, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>?, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>, &type metadata for GlassContainer.Entry, type metadata accessor for GlassContainer.MatchingResult);
                    memcpy(v37, v39, 0x154uLL);
                    outlined destroy of GlassContainer.Entry(v37);
                    if (*(v2 + 2) <= v7)
                    {
                      __break(1u);
                      return;
                    }

                    memcpy(v38, &v2[v4 + 32], 0x154uLL);
                    memcpy(&v2[v4 + 32], v43, 0x154uLL);
                    outlined destroy of GlassContainer.Entry(v38);
                    *(v1 + 1) = v2;
LABEL_49:
                    v1[24] = 1;
                    return;
                  }

LABEL_69:
                  v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
                  goto LABEL_47;
                }

LABEL_68:
                __break(1u);
                goto LABEL_69;
              }
            }
          }

LABEL_51:
          outlined destroy of GlassContainer.MatchingResult<GlassContainer.Item>?(v44, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>?, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>, &type metadata for GlassContainer.Entry, type metadata accessor for GlassContainer.MatchingResult);
        }

LABEL_52:
        memcpy(v44, v1, 0x118uLL);
        v34 = v44[0];
        v2 = v44[1];
        memcpy(v42, v1 + 16, 0x108uLL);
        v35 = v50[16];
        outlined init with copy of Resolver(v44, v43);
        if (*(v35 + 16) && *(v35 + 208) == 1)
        {
          v36 = *(v35 + 200) | *(v35 + 184) | *(v35 + 192);
          __src[0] = v34;
          __src[1] = v2;
          memcpy(&__src[2], v42, 0x108uLL);
          outlined destroy of Resolver(__src);
          if (!v36)
          {
            outlined destroy of GlassContainer.Entry(v50);
            outlined destroy of GlassContainer.Entry.DistanceContext(v51);
            return;
          }
        }

        else
        {
          __src[0] = v34;
          __src[1] = v2;
          memcpy(&__src[2], v42, 0x108uLL);
          outlined destroy of Resolver(__src);
        }

        memcpy(v39, v1, 0x118uLL);
        memcpy(v43, v1, 0x118uLL);
        outlined init with copy of Resolver(v39, v42);
        specialized Resolver.log(_:)(v43, specialized closure #1 in Resolver.log(_:));
        memcpy(v42, v43, 0x118uLL);
        outlined destroy of Resolver(v42);
        memcpy(v43, v1, 0x118uLL);
        v3 = v43[1];
        memcpy(v38, v1, 0x118uLL);
        outlined init with copy of Resolver(v43, v37);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_58;
        }

        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_63:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
LABEL_58:
    if (*(v3 + 2) > v7)
    {
      Resolver.adjustMaterializedEntry(_:isRemoval:)(&v3[v4 + 32]);
      outlined destroy of GlassContainer.Entry.DistanceContext(v51);
      outlined destroy of GlassContainer.Entry(v50);
      memcpy(v37, v38, 0x118uLL);
      outlined destroy of Resolver(v37);
      *(v1 + 1) = v3;
      *(v1 + 12) = 257;
      return;
    }

    __break(1u);
    goto LABEL_65;
  }
}

uint64_t specialized Zip2Sequence.Iterator.next()()
{
  if (*(v0 + 48))
  {
    return 0;
  }

  v2 = *(v0 + 8);
  result = *(v0 + 16);
  if (result == v2)
  {
    goto LABEL_8;
  }

  if (v2 < *v0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (result < *v0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (result >= v2)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v0 + 16) = result + 1;
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  if (v3 == v4)
  {
LABEL_8:
    result = 0;
    *(v0 + 48) = 1;
    return result;
  }

  v5 = *(v0 + 24);
  if (v4 < v5)
  {
    goto LABEL_16;
  }

  if (v3 < v5)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v3 < v4)
  {
    *(v0 + 40) = v3 + 1;
    return result;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t Resolver.updateMatched(source:target:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v284 = v3;
  v5 = v4;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v271 = &v242 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v242 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v242 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v242 - v16;
  type metadata accessor for WeakBox<GlassContainerCache>(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v19 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v275 = &v242 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v263 = &v242 - v22;
  MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v242 - v26;
  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_230;
  }

  v28 = v2[2];
  v265 = v2 + 2;
  if (*(v28 + 16) <= v5)
  {
    goto LABEL_231;
  }

  v264 = v25;
  memcpy(v380, (v28 + 344 * v5 + 32), 0x154uLL);
  if (v284 < 0)
  {
    goto LABEL_232;
  }

  v29 = v2[1];
  if (*(v29 + 16) <= v284)
  {
    goto LABEL_233;
  }

  v285 = 344 * v284;
  memcpy(v381, (v29 + 344 * v284 + 32), 0x154uLL);
  memcpy(v382, v2, 0x118uLL);
  outlined init with copy of GlassContainer.Entry(v380, v337);
  outlined init with copy of GlassContainer.Entry(v381, v337);
  outlined init with copy of GlassContainer.Entry(v380, v337);
  outlined init with copy of GlassContainer.Entry(v381, v337);
  outlined init with copy of GlassContainer.Entry(v380, v337);
  outlined init with copy of GlassContainer.Entry(v381, v337);
  outlined init with copy of Resolver(v382, v337);
  if (one-time initialization token for glassContainer != -1)
  {
    goto LABEL_234;
  }

LABEL_6:
  *&v282 = __swift_project_value_buffer(v19, static Log.glassContainer);
  outlined init with copy of Logger?(v282, v27, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  v30 = *(v7 + 48);
  *&v281 = v7 + 48;
  v280.i64[0] = v30;
  v31 = v30(v27, 1, v6);
  v256 = v11;
  v257 = v14;
  *&v283 = v7;
  if (v31 != 1)
  {
    (*(v7 + 32))(v17, v27, v6);
    *&v336[0] = v5;
    *(&v336[0] + 1) = v284;
    memcpy(&v336[1], v380, 0x154uLL);
    memcpy(&v336[22] + 8, v381, 0x154uLL);
    memcpy(v337, v336, 0x2BCuLL);
    _s7SwiftUI15ResolverMessage33_04178B540DC3B0BFBD7679A049CE48C7LLOWOi2_(v337);
    outlined init with copy of GlassContainer.Entry(v380, v335);
    outlined init with copy of GlassContainer.Entry(v381, v335);
    outlined init with copy of GlassContainer.Entry(v380, v335);
    outlined init with copy of GlassContainer.Entry(v381, v335);
    outlined init with copy of (Int, Int, GlassContainer.Entry, GlassContainer.Entry)(v336, v335, type metadata accessor for (Int, Int, GlassContainer.Entry, GlassContainer.Entry));
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    outlined destroy of (Int, Int, GlassContainer.Entry, GlassContainer.Entry)(v336);
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v367[0] = v14;
      *v34 = 136315138;
      memcpy(v287, v337, 0x2BCuLL);
      outlined init with copy of (Int, Int, GlassContainer.Entry, GlassContainer.Entry)(v336, v335, type metadata accessor for (Int, Int, GlassContainer.Entry, GlassContainer.Entry));
      v35 = ResolverMessage.description.getter();
      v37 = v36;
      memcpy(v335, v287, 0x2BCuLL);
      outlined destroy of ResolverMessage(v335);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, v367);
      v7 = v283;

      *(v34 + 4) = v38;
      _os_log_impl(&dword_18D018000, v32, v33, "Glass container %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x193AC4820](v14, -1, -1);
      MEMORY[0x193AC4820](v34, -1, -1);
      outlined destroy of (Int, Int, GlassContainer.Entry, GlassContainer.Entry)(v336);
    }

    else
    {

      outlined destroy of (Int, Int, GlassContainer.Entry, GlassContainer.Entry)(v336);
    }

    outlined destroy of GlassContainer.Entry(v380);
    outlined destroy of GlassContainer.Entry(v381);
    (*(v7 + 8))(v17, v6);
  }

  outlined destroy of GlassContainer.Entry(v380);
  outlined destroy of GlassContainer.Entry(v381);
  outlined destroy of GlassContainer.Entry(v381);
  outlined destroy of GlassContainer.Entry(v380);
  outlined destroy of Resolver(v382);
  v39 = v380[16];
  v40 = *(v380[16] + 16);
  v41 = MEMORY[0x1E69E7CC0];
  v19 = 48;
  v267 = v2;
  *&v277 = v6;
  v261 = v380[16];
  if (v40)
  {
    *&v337[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40, 0);
    v41 = *&v337[0];
    v42 = *(*&v337[0] + 16);
    v279 = 48;
    v43 = 24 * v42 + 48;
    v44 = (v39 + 48);
    do
    {
      LODWORD(v286) = *(v44 - 4);
      v45 = *(v44 - 1);
      v14 = *v44;
      *&v337[0] = v41;
      v46 = v42 + 1;
      v47 = *(v41 + 24);
      v48 = v41;

      v41 = v48;
      if (v42 >= v47 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v46, 1);
        v41 = *&v337[0];
      }

      v44 += 82;
      *(v41 + 16) = v46;
      v49 = (v41 + v43);
      *(v49 - 4) = v286;
      *(v49 - 1) = v45;
      *v49 = v14;
      v43 += 24;
      ++v42;
      --v40;
    }

    while (v40);
    v2 = v267;
    v6 = v277;
    v7 = v283;
    v19 = v279;
  }

  v279 = v41;
  v50 = v381[16];
  v51 = *(v381[16] + 16);
  v52 = MEMORY[0x1E69E7CC0];
  v262 = v381[16];
  if (v51)
  {
    *&v337[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v51, 0);
    v53 = *&v337[0];
    v54 = *(*&v337[0] + 16);
    v55 = v19 + 24 * v54;
    v56 = (v50 + 48);
    do
    {
      v57 = *(v56 - 4);
      v14 = *(v56 - 1);
      *&v286 = *v56;
      *&v337[0] = v53;
      v19 = v54 + 1;
      v58 = *(v53 + 24);

      if (v54 >= v58 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v19, 1);
        v53 = *&v337[0];
      }

      v56 += 82;
      *(v53 + 16) = v19;
      v59 = (v53 + v55);
      *(v59 - 4) = v57;
      v60 = v286;
      *(v59 - 1) = v14;
      *v59 = v60;
      v55 += 24;
      ++v54;
      --v51;
    }

    while (v51);
    v2 = v267;
    v6 = v277;
    v52 = MEMORY[0x1E69E7CC0];
    v7 = v283;
  }

  else
  {
    v53 = MEMORY[0x1E69E7CC0];
  }

  v61 = v382[1];
  *&v337[0] = v52;
  v5 = v337;
  specialized CollectionChanges.formChanges<A, B>(from:to:)(v279, v53, partial apply for specialized closure #1 in CollectionChanges.changedOffsets<A, B>(from:to:limit:));

  v27 = v61;

  v11 = *&v337[0];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = v284;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v27 = specialized _ArrayBuffer._consumeAndCreateNew()(v27);
  }

  v273 = v382[34];
  v274 = v382[0];
  v279 = v382[15];
  LODWORD(v266) = v382[24];
  v2[1] = v27;
  v63 = *(v11 + 16);
  if (!v63)
  {
    LODWORD(v255) = 0;
    v272 = 0;
    goto LABEL_156;
  }

  v64 = 0;
  LODWORD(v255) = 0;
  v272 = 0;
  v254 = 0x800000018DD74F00;
  v269 = (v7 + 32);
  v270 = (v7 + 8);
  v247 = (&v287[17] + 9);
  v250 = (&v334[17] + 9);
  v251 = v262 + 32;
  v249 = &v311[281];
  v19 = &v337[8] + 8;
  v7 = &v336[8] + 8;
  v246 = v261 + 32;
  v243 = (&v367[17] + 9);
  v245 = xmmword_18DD85550;
  v244 = xmmword_18DDAA020;
  v253 = 0x8200102uLL;
  v65 = v11 + 64;
  v66 = 1.0;
  v67 = 0;
  *&v283 = v11;
  v248 = v11 + 64;
LABEL_28:
  v17 = v65 + 40 * v64;
  v68 = v64 + 1;
  while (1)
  {
    if (v68 - 1 >= v63)
    {
      __break(1u);
      goto LABEL_223;
    }

    v69 = *(v17 - 32);
    v14 = *(v17 - 24);
    v70 = *v17;
    *&v286 = v68;
    if (!v70)
    {
      if (v69 == v14)
      {
        goto LABEL_30;
      }

      v11 = v14;
      if (v14 < v69)
      {
        goto LABEL_250;
      }

      v2 = v267;
      v77 = *(v267 + 212);
      v363 = *(v267 + 196);
      v364 = v77;
      v365 = *(v267 + 228);
      v366 = *(v267 + 61);
      LODWORD(v268) = v267[248];
      v260 = *(v262 + 16);
      *(v267 + 1) = v27;
      v17 = v284;
      if (v69 < v14)
      {
        v259 = (2 * v260) | 1;
        v6 = v69;
        *&v278 = v69;
        do
        {
          if (*(v27 + 16) <= v17)
          {
            goto LABEL_225;
          }

          v5 = v27 + v285 + 32;
          memcpy(v310, v5, 0x154uLL);
          v78 = *v5;
          v79 = *(v27 + v285 + 48);
          v80 = *(v27 + v285 + 64);
          v305 = *(v27 + v285 + 80);
          v304 = v80;
          v303 = v79;
          v81 = *(v27 + v285 + 96);
          v82 = *(v27 + v285 + 112);
          v83 = *(v27 + v285 + 128);
          v309 = *(v27 + v285 + 144);
          v308 = v83;
          v307 = v82;
          v306 = v81;
          v302 = v78;
          v14 = *&v310[8];
          v84 = *(v27 + v285 + 356);
          v85 = *(v27 + v285 + 328);
          v86 = *(v27 + v285 + 312);
          v301[0] = *(v27 + v285 + 344);
          *(v301 + 12) = v84;
          v300 = v85;
          v299 = v86;
          v87 = *(v27 + v285 + 248);
          v88 = *(v27 + v285 + 296);
          v89 = *(v27 + v285 + 264);
          v297 = *(v27 + v285 + 280);
          v298 = v88;
          v296 = v89;
          v295 = v87;
          v90 = *(v27 + v285 + 184);
          v91 = *(v27 + v285 + 232);
          v92 = *(v27 + v285 + 200);
          v293 = *(v27 + v285 + 216);
          v294 = v91;
          v292 = v92;
          v291 = v90;
          v290 = *(v27 + v285 + 168);
          v359 = v363;
          v360 = v364;
          v361 = v365;
          v362 = v366;
          if (v268)
          {
            outlined init with copy of GlassContainer.Entry(v310, v337);
            goto LABEL_46;
          }

          v93 = v264;
          outlined init with copy of Logger?(v282, v264, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
          v5 = v277;
          if ((v280.i64[0])(v93, 1, v277) == 1)
          {
            outlined init with copy of GlassContainer.Entry(v310, v337);
          }

          else
          {
            v27 = v257;
            (*v269)(v257, v93, v5);
            outlined init with copy of GlassContainer.Entry(v310, v337);
            v94 = v272;
            specialized closure #1 in Resolver.log(_:)();
            v272 = v94;
            if (v94)
            {
              goto LABEL_257;
            }

            (*v270)(v27, v5);
          }

          v95 = v2[1];
          v274 = *v2;
          *&v276 = v95;
          v96 = v265[5];
          v355 = v265[4];
          v356 = v96;
          *&v357 = *(v265 + 12);
          v97 = v265[1];
          v351 = *v265;
          v352 = v97;
          v98 = v265[2];
          v354 = v265[3];
          v353 = v98;
          v279 = v2[15];
          v99 = *(v2 + 10);
          v342 = *(v2 + 11);
          v341 = v99;
          v100 = *(v2 + 8);
          v340 = *(v2 + 9);
          v339 = v100;
          v101 = *(v2 + 14);
          v346 = *(v2 + 15);
          v345 = v101;
          v102 = *(v2 + 12);
          v344 = *(v2 + 13);
          v343 = v102;
          v273 = v2[34];
          v103 = *(v14 + 2);
          if (!v103)
          {
            goto LABEL_64;
          }

          v27 = v2[32];
          v104 = v2[33];
          v105 = v14 + 208;
          while (*v105 == 1)
          {
            v105 += 656;
            if (!--v103)
            {
              goto LABEL_64;
            }
          }

          if (v104)
          {

            v5 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA040AccessibilityPrefersCrossFadeTransitionsI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v27);
          }

          else
          {
            _s7SwiftUI22TransactionPropertyKey33_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationE033_D98E9A1069CEEADA58829ED440E36F30LLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityPrefersCrossFadeTransitionsKey>, &type metadata for AccessibilityPrefersCrossFadeTransitionsKey, &protocol witness table for AccessibilityPrefersCrossFadeTransitionsKey, type metadata accessor for EnvironmentPropertyKey);
            BloomFilter.init(hashValue:)(v106);
            v107 = *&v337[0];

            v108 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA040AccessibilityPrefersCrossFadeTransitionsV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(v27, v107);
            if (!v108)
            {
              goto LABEL_61;
            }

            v5 = *(v108 + 72);
          }

          if (v5 == 2)
          {
LABEL_61:
            *&v337[0] = v27;
            *(&v337[0] + 1) = v104;
            LOBYTE(v336[0]) = 3;
            v5 = EnvironmentValues.accessibilitySettingEnabled(_:)(v336);
          }

          if (v5)
          {
            goto LABEL_64;
          }

          *&v336[0] = v274;
          *(&v336[0] + 1) = v276;
          v336[5] = v355;
          v336[6] = v356;
          *&v336[7] = v357;
          v336[1] = v351;
          v336[2] = v352;
          v336[3] = v353;
          v336[4] = v354;
          v336[12] = v343;
          v336[13] = v344;
          v336[14] = v345;
          v336[15] = v346;
          v336[8] = v339;
          v336[9] = v340;
          v336[10] = v341;
          v336[11] = v342;
          *(&v336[7] + 1) = v279;
          *&v336[16] = v27;
          *(&v336[16] + 1) = v104;
          *&v336[17] = v273;
          v337[4] = v306;
          v337[5] = v307;
          v337[6] = v308;
          v337[7] = v309;
          v337[0] = v302;
          v337[1] = v303;
          v337[2] = v304;
          v337[3] = v305;
          *&v337[8] = v14;
          *(&v337[18] + 8) = v300;
          *(&v337[19] + 8) = v301[0];
          *(&v337[20] + 4) = *(v301 + 12);
          *(&v337[14] + 8) = v296;
          *(&v337[15] + 8) = v297;
          *(&v337[16] + 8) = v298;
          *(&v337[17] + 8) = v299;
          *(&v337[10] + 8) = v292;
          *(&v337[11] + 8) = v293;
          *(&v337[12] + 8) = v294;
          *(&v337[13] + 8) = v295;
          *(&v337[8] + 8) = v290;
          *(&v337[9] + 8) = v291;
          v5 = v336;
          if (Resolver.containsItemsInEntry(_:allowSelf:)(v337, 1))
          {
            goto LABEL_64;
          }

          v17 = v284;
          if (v6 < 0)
          {
            goto LABEL_248;
          }

          if (v6 >= *(v261 + 16))
          {
            goto LABEL_249;
          }

          memcpy(v367, (v246 + 656 * v6), 0x289uLL);
          memcpy(v338, v2, sizeof(v338));
          v109 = v338[14];
          v279 = v338[15];
          v27 = v338[1];
          v273 = v338[34];
          v274 = v338[0];
          LODWORD(v266) = v338[24];
          v110 = *(v338[1] + 16);
          if (!v110)
          {
LABEL_81:
            v313[0] = v274;
            *&v276 = v338[1];
            v313[1] = v338[1];
            v117 = v338[17];
            v118 = v338[16];
            memcpy(&v313[2], v265, 0x108uLL);
            outlined init with copy of GlassContainer.Item(v367, v337);
            outlined init with copy of Resolver(v338, v337);
            outlined destroy of Resolver(v313);
            *&v120 = v338[18];
            *&v121 = v338[23];
            _Q3 = v360;
            v369 = v359;
            v370 = v360;
            v123 = v361;
            v371 = v361;
            v372 = v362;
            v368[0] = v109;
            v368[1] = v279;
            v368[2] = v118;
            v368[3] = v117;
            v368[4] = v338[18];
            v368[5] = v338[19];
            v255 = v338[20];
            v368[6] = v338[20];
            v258 = v338[21];
            v368[7] = v338[21];
            v373 = v338[23];
            if (*(v262 + 16) < v260)
            {
              __break(1u);
              goto LABEL_254;
            }

            v5 = v117;
            v242 = (2 * *(v261 + 16)) | 1;

            specialized RandomAccessCollection<>.sourceElement(target:otherElements:config:context:)(v367, v261, v246, 0, v242, 1, v368, v262, v251, 0, v259);
            outlined destroy of GlassContainer.Item.DistanceContext(v368);
            memcpy(v336, v335, 0x2E9uLL);
            memcpy(v337, v335, 0x2E9uLL);
            if (getEnumTag for AccessibilityTextLayoutProperties(v337) == 1)
            {
              outlined destroy of GlassContainer.Item(v367);
LABEL_64:
              v17 = v284;
              v27 = v276;
              goto LABEL_65;
            }

            memcpy(v332, v2, sizeof(v332));
            memcpy(v334, v2, 0x118uLL);
            outlined init with copy of Resolver(v332, v311);
            specialized Resolver.log(_:)(v334, specialized closure #1 in Resolver.log(_:));
            memcpy(v333, v334, sizeof(v333));
            outlined destroy of Resolver(v333);
            v328 = v367[10];
            v329 = v367[11];
            v330 = v367[12];
            v279 = *(&v367[13] + 1);
            v331 = *&v367[13];
            v324 = v367[6];
            v325 = v367[7];
            v326 = v367[8];
            v327 = v367[9];
            v320 = v367[2];
            v321 = v367[3];
            v322 = v367[4];
            v323 = v367[5];
            v318 = v367[0];
            v319 = v367[1];
            v273 = *(&v367[14] + 1);
            v274 = *&v367[14];
            v258 = *(&v367[15] + 1);
            v266 = *&v367[15];
            v255 = *&v367[16];
            v314[0] = BYTE8(v367[17]);
            LODWORD(v316) = *v243;
            *(&v316 + 3) = *(v243 + 3);
            memcpy(v289, &v367[21], 0x138uLL);
            v125 = v2[32];
            v124 = v2[33];
            outlined init with copy of GlassContainer.Item(v367, v334);
            static GlassContainer.AppearanceSettings.match.getter(v334);
            v126 = *(&v334[0] + 1);
            v127 = *v334;
            v128 = v334[1];
            if (v124)
            {

              v129 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA025AccessibilityReduceMotionI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v125);
            }

            else
            {
              v130 = v125;
              *&v276 = v125;
              v131 = v272;
              v129 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA025AccessibilityReduceMotionF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v130);
              v272 = v131;
              v125 = v276;
            }

            if (v129 == 2)
            {
              *v311 = v125;
              *&v311[8] = v124;
              v315 = 2;
              v129 = EnvironmentValues.accessibilitySettingEnabled(_:)(&v315);
            }

            if (v129)
            {
              v127 = 1.0;
            }

            if (BYTE8(v367[17]))
            {
              v132 = 0.0;
            }

            else
            {
              v132 = *&v367[17];
            }

            v314[0] = 1;
            *&v276 = LODWORD(v337[0]);
            v133 = *(&v337[0] + 1);
            v134 = *&v337[1];

            outlined consume of Text.LineStyle?(v266, v258);
            outlined consume of Text.LineStyle?(v279, v274);
            *(v2 + 24) = 1;
            v334[10] = v328;
            v334[11] = v329;
            v334[12] = v330;
            v334[6] = v324;
            v334[7] = v325;
            v334[8] = v326;
            v334[9] = v327;
            v334[2] = v320;
            v334[3] = v321;
            v334[4] = v322;
            v334[5] = v323;
            v334[0] = v318;
            v334[1] = v319;
            v135 = v244;
            *(&v334[13] + 8) = v245;
            *&v334[13] = v331;
            *(&v334[14] + 1) = 0;
            *&v334[15] = v276;
            v255 = v133;
            *(&v334[15] + 1) = v133;
            v258 = v134;
            *&v334[16] = v134;
            *(&v334[16] + 1) = v132;
            *&v334[17] = 0;
            v5 = v314[0];
            BYTE8(v334[17]) = v314[0];
            v136 = v250;
            *v250 = v316;
            *(v136 + 3) = *(&v316 + 3);
            v334[18] = v135;
            *&v334[19] = v127;
            *(&v334[19] + 1) = v126;
            v334[20] = v128;
            memcpy(&v334[21], v289, 0x138uLL);
            BYTE8(v334[40]) = 2;
            outlined init with copy of GlassContainer.Item(v334, v311);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
            }

            v138 = *(v14 + 2);
            v137 = *(v14 + 3);
            if (v138 >= v137 >> 1)
            {
              v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v137 > 1), v138 + 1, 1, v14);
            }

            outlined destroy of GlassContainer.MatchingResult<GlassContainer.Item>?(v336, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Item>?, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Item>, &type metadata for GlassContainer.Item, type metadata accessor for GlassContainer.MatchingResult);
            outlined destroy of GlassContainer.Item(v367);
            v27 = v332[1];
            v273 = v332[34];
            v274 = v332[0];
            v279 = v332[15];
            LODWORD(v266) = v332[24];
            *(v14 + 2) = v138 + 1;
            memcpy(&v14[656 * v138 + 32], v334, 0x289uLL);
            *&v311[160] = v328;
            *&v311[176] = v329;
            *&v311[192] = v330;
            *&v311[208] = v331;
            *&v311[96] = v324;
            *&v311[112] = v325;
            *&v311[128] = v326;
            *&v311[144] = v327;
            *&v311[32] = v320;
            *&v311[48] = v321;
            *&v311[64] = v322;
            *&v311[80] = v323;
            *v311 = v318;
            *&v311[16] = v319;
            v139 = v244;
            *&v311[216] = v245;
            *&v311[232] = 0;
            *&v311[240] = v276;
            *&v311[248] = v255;
            *&v311[256] = v258;
            *&v311[264] = v132;
            *&v311[272] = 0;
            v311[280] = v5;
            v140 = v249;
            *v249 = v316;
            *(v140 + 3) = *(&v316 + 3);
            *&v311[288] = v139;
            *&v311[304] = v127;
            *&v311[312] = v126;
            *&v311[320] = v128;
            memcpy(&v311[336], v289, 0x138uLL);
            v312 = 2;
            outlined destroy of GlassContainer.Item(v311);
            v2 = v267;
LABEL_46:
            v17 = v284;
            goto LABEL_65;
          }

          v111 = 0;
LABEL_76:
          v112 = 344 * v111++;
          v113 = *(v338[1] + 160 + v112);
          v114 = (v113 + 32);
          v115 = *(v113 + 16) + 1;
          do
          {
            if (!--v115)
            {
              if (v111 == v110)
              {
                goto LABEL_81;
              }

              goto LABEL_76;
            }

            v116 = *v114;
            v114 += 164;
          }

          while (v116 != LODWORD(v367[0]));
          v313[0] = v274;
          v313[1] = v338[1];
          memcpy(&v313[2], v265, 0x108uLL);
          outlined init with copy of GlassContainer.Item(v367, v337);
          outlined init with copy of Resolver(v338, v337);
          outlined destroy of Resolver(v313);
          outlined destroy of GlassContainer.Item(v367);
LABEL_65:
          v337[4] = v306;
          v337[5] = v307;
          v337[6] = v308;
          v337[7] = v309;
          v337[0] = v302;
          v337[1] = v303;
          v337[2] = v304;
          v337[3] = v305;
          *&v337[8] = v14;
          *(&v337[18] + 8) = v300;
          *(&v337[19] + 8) = v301[0];
          *(&v337[20] + 4) = *(v301 + 12);
          *(&v337[14] + 8) = v296;
          *(&v337[15] + 8) = v297;
          *(&v337[16] + 8) = v298;
          *(&v337[17] + 8) = v299;
          *(&v337[10] + 8) = v292;
          *(&v337[11] + 8) = v293;
          *(&v337[12] + 8) = v294;
          *(&v337[13] + 8) = v295;
          *(&v337[8] + 8) = v290;
          *(&v337[9] + 8) = v291;
          outlined init with copy of GlassContainer.Entry(v337, v336);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = specialized _ArrayBuffer._consumeAndCreateNew()(v27);
          }

          if (*(v27 + 16) <= v17)
          {
            goto LABEL_226;
          }

          ++v6;
          v5 = v27 + v285;
          memcpy(v335, (v27 + v285 + 32), 0x154uLL);
          memcpy((v27 + v285 + 32), v337, 0x154uLL);
          outlined destroy of GlassContainer.Entry(v335);
          v2[1] = v27;
          v336[4] = v306;
          v336[5] = v307;
          v336[6] = v308;
          v336[7] = v309;
          v336[0] = v302;
          v336[1] = v303;
          v336[2] = v304;
          v336[3] = v305;
          *&v336[8] = v14;
          *(&v336[10] + 8) = v292;
          *(&v336[11] + 8) = v293;
          *(&v336[8] + 8) = v290;
          *(&v336[9] + 8) = v291;
          *(&v336[14] + 8) = v296;
          *(&v336[15] + 8) = v297;
          *(&v336[12] + 8) = v294;
          *(&v336[13] + 8) = v295;
          *(&v336[20] + 4) = *(v301 + 12);
          *(&v336[18] + 8) = v300;
          *(&v336[19] + 8) = v301[0];
          *(&v336[16] + 8) = v298;
          *(&v336[17] + 8) = v299;
          outlined destroy of GlassContainer.Entry(v336);
          if (v6 == v11)
          {
LABEL_152:
            v11 = v283;
            v64 = v286;
            v65 = v248;
            v63 = *(v283 + 16);
            LODWORD(v255) = 1;
            v6 = v277;
            if (v63 == v286)
            {
LABEL_156:

              v7 = MEMORY[0x1E69E7CC0];
              if (*(v27 + 16) <= v17)
              {
                __break(1u);
              }

              else
              {
                v19 = *(v27 + v285 + 360);
                GlassContainerCache.entryState(id:)(v19, v310);
                v179 = *(v11 + 16);

                if (v179 < 2)
                {
                  goto LABEL_172;
                }

                v180 = v2[32];
                v5 = v2[33];
                if ((Transaction.shouldUseGlassAnimation.getter(v273) & 1) == 0)
                {
                  goto LABEL_172;
                }

                if (v5)
                {

                  v181 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA025AccessibilityReduceMotionI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v180);
                }

                else
                {
                  v182 = v272;
                  v181 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA025AccessibilityReduceMotionF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v180);
                  v272 = v182;
                  v17 = v284;
                }

                if (v181 == 2)
                {
                  *&v337[0] = v180;
                  *(&v337[0] + 1) = v5;
                  LOBYTE(v336[0]) = 2;
                  v5 = v337;
                  if (EnvironmentValues.accessibilitySettingEnabled(_:)(v336))
                  {
                    goto LABEL_172;
                  }

LABEL_166:
                  v11 = v310;
                  ++*&v310[8];
                  __asm { FMOV            V0.2D, #0.5 }

                  *(&v310[8] + 8) = _Q0;
                  BYTE8(v310[9]) = 0;
                  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE030GlassContainerSettingsOverrideF033_C0CCB6EB7DEF7555840E44B500337668LLVG_Tt2g5(v273, v337);
                  v286 = v337[9];
                  v280 = v337[6];
                  v281 = v337[11];
                  v282 = v337[10];
                  v283 = v337[8];
                  v276 = v337[13];
                  v277 = v337[12];
                  v278 = v337[7];
                  v67 = *(&v337[14] + 1);
                  v66 = *&v337[14];
                  v109 = *&v337[15];
                  v336[0] = v337[6];
                  v336[1] = v337[7];
                  v336[2] = v337[8];
                  v336[3] = v337[9];
                  v336[4] = v337[10];
                  v336[5] = v337[11];
                  v336[6] = v337[12];
                  v336[7] = v337[13];
                  v336[8] = v337[14];
                  *&v336[9] = *&v337[15];
                  BYTE8(v336[9]) = BYTE8(v337[15]);
                  v188 = _s7SwiftUI14GlassContainerO18ScalePulseSettingsVSgWOg(v336);
                  v190 = v282;
                  v189 = v283;
                  v191 = v286;
                  v119 = v276;
                  v120 = v277;
                  _Q3 = v278;
                  v123 = v280;
                  v121 = v281;
                  if (v188 == 1)
                  {
                    type metadata accessor for GlassContainerPTDomain();
                    v288.receiver = swift_getObjCClassFromMetadata();
                    v288.super_class = &OBJC_METACLASS____TtC7SwiftUI22GlassContainerPTDomain;
                    v192 = objc_msgSendSuper2(&v288, sel_rootSettings);
                    if (!v192)
                    {
                      goto LABEL_256;
                    }

                    v193 = v192;
                    type metadata accessor for GlassContainerPTSettings();
                    v194 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7SwiftUI24GlassContainerPTSettings_scalePulse);

                    GlassContainerScalePulsePTSettings.scalePulse.getter(v335);
                    _Q3 = v335[1];
                    v123 = v335[0];
                    v286 = v335[3];
                    v121 = v335[5];
                    v282 = v335[4];
                    v283 = v335[2];
                    v119 = v335[7];
                    v120 = v335[6];
                    v67 = *(&v335[8] + 1);
                    v66 = *&v335[8];
                    v109 = *&v335[9];
                    if (one-time initialization token for enableAdjustments == -1)
                    {
LABEL_169:
                      v191 = v286;
                      v190 = v282;
                      v189 = v283;
                      if (!enableAdjustments)
                      {
                        Spring.init(duration:bounce:)(0.5, 0.3);
                        v67 = *(&v335[0] + 1);
                        v66 = *v335;
                        v109 = *&v335[1];
                        Spring.init(duration:bounce:)(0.35, 0.6);
                        *&v195 = *&v335[1];
                        v286 = v195;
                        v283 = v335[0];
                        Spring.init(duration:bounce:)(0.5, 0.5);
                        *&v196 = v286;
                        *(&v196 + 1) = *&v334[0];
                        v286 = v196;
                        v282 = *(v334 + 8);
                        Spring.init(duration:bounce:)(0.5, 0.6);
                        v190 = v282;
                        v189 = v283;
                        v191 = v286;
                        v197 = &unk_18DDA9FF8;
                        *&v121 = *&vld1q_dup_f64(v197);
                        *(&v121 + 1) = *v311;
                        v120 = *&v311[8];
                        v123 = vdupq_n_s64(0x3FF3333333333333uLL);
                        v119 = xmmword_18DDAA030;
                        __asm { FMOV            V3.2D, #16.0 }
                      }

                      goto LABEL_171;
                    }

LABEL_254:
                    v280 = v123;
                    v281 = v121;
                    v277 = v120;
                    v278 = _Q3;
                    v276 = v119;
                    swift_once();
                    v119 = v276;
                    v120 = v277;
                    _Q3 = v278;
                    v123 = v280;
                    v121 = v281;
                    goto LABEL_169;
                  }

LABEL_171:
                  *(v11 + 168) = v123;
                  *(v11 + 184) = _Q3;
                  *(v11 + 200) = v189;
                  *(v11 + 216) = v191;
                  *(v11 + 232) = v190;
                  *(v11 + 248) = v121;
                  *(&v310[16] + 8) = v120;
                  *(&v310[17] + 8) = v119;
                  *(&v310[18] + 1) = v66;
                  *&v310[19] = v67;
                  *(&v310[19] + 1) = v109;
                  v17 = v284;
                }

                else if ((v181 & 1) == 0)
                {
                  goto LABEL_166;
                }

LABEL_172:
                *&v283 = v19;
                if (v255)
                {
                  *&v276 = v27;
                  *&v335[0] = v7;
                  v198 = *(v261 + 16);
                  if (v198)
                  {
                    v199 = (v261 + 32);
                    v200 = v279;
                    do
                    {
                      memcpy(v337, v199, 0x289uLL);
                      if (*(v200 + 16))
                      {
                        v201 = specialized __RawDictionaryStorage.find<A>(_:)(LODWORD(v337[0]));
                        if (v202)
                        {
                          v203 = *(*(v200 + 56) + 40 * v201);
                          type metadata accessor for WeakBox<GlassContainerCache>(0, &lazy cache variable for type metadata for Anchor<CGRect>, type metadata accessor for CGRect, type metadata accessor for Anchor);
                          outlined init with copy of GlassContainer.Item(v337, v336);
                          v204 = v203;
                          if (AGGraphGetWeakValue())
                          {
                            v205 = swift_retain_n();
                            MEMORY[0x193ABF170](v205);
                            if (*(*&v335[0] + 16) >= *(*&v335[0] + 24) >> 1)
                            {
                              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                            }

                            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                            outlined destroy of GlassContainer.Item(v337);

                            v7 = *&v335[0];
                          }

                          else
                          {
                            outlined destroy of GlassContainer.Item(v337);
                          }

                          v200 = v279;
                        }
                      }

                      v199 += 656;
                      --v198;
                    }

                    while (v198);
                  }

                  if (*(v7 + 16))
                  {

                    *(&v310[1] + 1) = v7;
                    *(v2 + 24) = 1;
                  }

                  else
                  {
                  }

                  v17 = v284;
                  v27 = v276;
                }

                v2 = v380[6];
                v7 = v380[5];
                v279 = LOBYTE(v380[7]);
                v19 = v380[8];
                *&v277 = v380[9];
                LODWORD(v278) = LOBYTE(v380[10]);
                v206 = v381[6];
                v14 = v381[5];
                *&v282 = LOBYTE(v381[7]);
                v6 = v381[8];
                *&v281 = v381[9];
                v280.i32[0] = LOBYTE(v381[10]);
                v337[0] = *&v380[5];
                v336[0] = *&v381[5];
                outlined copy of _Glass.Variant.Role(v380[5], v380[6]);
                outlined copy of _Glass.Variant.Role(v14, v206);

                *&v286 = v206;
                outlined copy of _Glass.Variant.Role(v14, v206);
                v11 = specialized static _Glass.Variant.== infix(_:_:)(v337, v336);
                outlined consume of _Glass.Variant.Role(*&v336[0], DWORD2(v336[0]));
                outlined consume of _Glass.Variant.Role(*&v337[0], DWORD2(v337[0]));
                if ((v11 & 1) == 0)
                {
                  v273 = v19;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    goto LABEL_242;
                  }

                  goto LABEL_196;
                }

                outlined consume of _Glass.Variant.Role(v14, v286);

                if (v19)
                {
                  v2 = v19;
                  v19 = v267;
                  v7 = v274;
                  if (!v6)
                  {
                    v232 = one-time initialization token for clear;

                    if (v232 != -1)
                    {
                      swift_once();
                    }

                    v6 = static Color.clear;
                    goto LABEL_208;
                  }

                  if (v2 != v6)
                  {
                    v207 = *(*v2 + 88);
                    v11 = *v2 + 88;
                    swift_retain_n();
                    swift_retain_n();
                    v208 = v207(v6);

                    if ((v208 & 1) == 0)
                    {
                      v17 = v284;
                      goto LABEL_209;
                    }

                    v17 = v284;
                  }

                  v2 = v19;
                }

                else
                {
                  v2 = v267;
                  v7 = v274;
                  if (v6)
                  {
                    v19 = v267;
                    v231 = one-time initialization token for clear;

                    if (v231 != -1)
                    {
                      goto LABEL_252;
                    }

                    goto LABEL_204;
                  }
                }

                while (2)
                {
                  memcpy(v289, v310, sizeof(v289));
                  swift_beginAccess();
                  v238 = *(v7 + 176);
                  memcpy(v334, v289, 0x278uLL);
                  DWORD2(v334[39]) = v238;
                  _ViewInputs.base.modify(v334, v239);
                  memcpy(v335, v334, 0x27CuLL);
                  memcpy(v336, v334, 0x27CuLL);
                  if (_s7SwiftUI9SeedValueVyAA14GlassContainerO10EntryStateVGSgWOg(v336) == 1)
                  {
                    outlined init with copy of GlassContainer.EntryState(v289, v337);
                    specialized Dictionary._Variant.removeValue(forKey:)(v283, v311);
                    memcpy(v337, v311, 0x27CuLL);
                    outlined destroy of GlassContainer.MatchingResult<GlassContainer.Item>?(v337, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>?, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>, &type metadata for GlassContainer.EntryState, type metadata accessor for SeedValue);
                  }

                  else
                  {
                    memcpy(v337, v335, 0x27CuLL);
                    outlined init with copy of GlassContainer.EntryState(v289, v311);
                    v240 = swift_isUniquelyReferenced_nonNull_native();
                    *v311 = *(v7 + 168);
                    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v337, v283, v240);
                    *(v7 + 168) = *v311;
                  }

                  swift_endAccess();
                  memcpy(v311, v310, 0x278uLL);
                  outlined destroy of GlassContainer.EntryState(v311);
                  if (swift_isUniquelyReferenced_nonNull_native())
                  {
LABEL_219:
                    outlined destroy of GlassContainer.Entry(v381);
                    result = outlined destroy of GlassContainer.Entry(v380);
                    if (*(v27 + 16) > v17)
                    {
                      ++*(v27 + v285 + 368);
                      v2[1] = v27;
                      return result;
                    }

                    __break(1u);
                    while (2)
                    {
                      __break(1u);
LABEL_239:
                      __break(1u);
LABEL_240:
                      __break(1u);
LABEL_241:
                      __break(1u);
LABEL_242:
                      v27 = specialized _ArrayBuffer._consumeAndCreateNew()(v27);
LABEL_196:
                      if (*(v27 + 16) <= v17)
                      {
                        __break(1u);
                      }

                      else
                      {
                        v275 = v6;
                        v209 = *(v27 + v285 + 176);
                        v6 = v27 + v285 + 176;
                        v271 = *(v27 + v285 + 184);
                        v272 = v209;
                        *&v276 = *(v27 + v285 + 200);
                        *v6 = v7;
                        *(v6 + 8) = v2;
                        v210 = v279;
                        *(v6 + 16) = v279;
                        v211 = v273;
                        v212 = v277;
                        *(v6 + 24) = v273;
                        *(v6 + 32) = v212;
                        v213 = v278;
                        *(v6 + 40) = v278;
                        outlined copy of _Glass.Variant.Role(v7, v2);

                        outlined consume of _Glass.Variant.Role(v272, v271);

                        v214 = *(v6 + 128);
                        v271 = *(v6 + 136);
                        v272 = v214;
                        v215 = *(v6 + 144);
                        *&v276 = v27;
                        v216 = *(v6 + 152);
                        v269 = *(v6 + 160);
                        v270 = v215;
                        *(v6 + 128) = v7;
                        *(v6 + 136) = v2;
                        *(v6 + 144) = v210;
                        *(v6 + 152) = v211;
                        *(v6 + 160) = v212;
                        *(v6 + 168) = v213;
                        outlined copy of _Glass.Variant.Role(v7, v2);

                        outlined consume of _Glass?(v272, v271, v270, v216);
                        v217 = *(v6 + 80);
                        v218 = *(v6 + 88);
                        v11 = *(v6 + 96);
                        v19 = *(v6 + 104);
                        v2 = *(v6 + 112);
                        v219 = v286;
                        *(v6 + 80) = v14;
                        *(v6 + 88) = v219;
                        v27 = v275;
                        *(v6 + 96) = v282;
                        *(v6 + 104) = v27;
                        *(v6 + 112) = v281;
                        v7 = *(v6 + 120);
                        *(v6 + 120) = v280.i8[0];
                        v279 = v14;
                        outlined copy of _Glass.Variant.Role(v14, v219);

                        v220 = v218;
                        v17 = v284;
                        outlined consume of _Glass?(v217, v220, v11, v19);
                        *(v6 + 172) = v266;
                        *(v6 + 176) = 0;
                        if (*(v276 + 16) > v17)
                        {
                          v221 = *v6;
                          v222 = *(v6 + 16);
                          v223 = *(v6 + 32);
                          v334[3] = *(v6 + 48);
                          v334[2] = v223;
                          v334[1] = v222;
                          v334[0] = v221;
                          v224 = *(v6 + 64);
                          v225 = *(v6 + 80);
                          v226 = *(v6 + 96);
                          v334[7] = *(v6 + 112);
                          v334[6] = v226;
                          v334[5] = v225;
                          v334[4] = v224;
                          v227 = *(v6 + 128);
                          v228 = *(v6 + 144);
                          v229 = *(v6 + 160);
                          LOBYTE(v334[11]) = *(v6 + 176);
                          v334[10] = v229;
                          v334[9] = v228;
                          v334[8] = v227;
                          memmove(v335, v6, 0xB1uLL);
                          _ViewInputs.base.modify(v335, v230);
                          v336[8] = v310[35];
                          v336[9] = v310[36];
                          v336[10] = v310[37];
                          LOBYTE(v336[11]) = v310[38];
                          v336[4] = v310[31];
                          v336[5] = v310[32];
                          v336[6] = v310[33];
                          v336[7] = v310[34];
                          v336[0] = v310[27];
                          v336[1] = v310[28];
                          v336[2] = v310[29];
                          v336[3] = v310[30];
                          v310[35] = v335[8];
                          v310[36] = v335[9];
                          v310[37] = v335[10];
                          LOBYTE(v310[38]) = v335[11];
                          v310[31] = v335[4];
                          v310[32] = v335[5];
                          v310[33] = v335[6];
                          v310[34] = v335[7];
                          v310[27] = v335[0];
                          v310[28] = v335[1];
                          v310[29] = v335[2];
                          v310[30] = v335[3];
                          outlined init with copy of GlassContainer.DisplayMaterial(v334, v337);
                          outlined destroy of SeedValue<GlassContainer.EntryState>(v336, &lazy cache variable for type metadata for GlassContainer.DisplayMaterial?, &type metadata for GlassContainer.DisplayMaterial, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
                          v337[8] = v310[35];
                          v337[9] = v310[36];
                          v337[10] = v310[37];
                          LOBYTE(v337[11]) = v310[38];
                          v337[4] = v310[31];
                          v337[5] = v310[32];
                          v337[6] = v310[33];
                          v337[7] = v310[34];
                          v337[0] = v310[27];
                          v337[1] = v310[28];
                          v337[2] = v310[29];
                          v337[3] = v310[30];
                          if (_s7SwiftUI14GlassContainerO15DisplayMaterialVSgWOg(v337) == 1)
                          {
                            outlined consume of _Glass.Variant.Role(v279, v286);
                          }

                          else
                          {
                            outlined consume of _Glass.Variant.Role(*&v310[27], DWORD2(v310[27]));

                            *&v310[27] = v279;
                            *(&v310[27] + 1) = v286;
                            LOBYTE(v310[28]) = v282;
                            *(&v310[28] + 1) = v275;
                            *&v310[29] = v281;
                            BYTE8(v310[29]) = v280.i8[0];
                          }

                          v2 = v267;
                          v7 = v274;
                          v267[24] = 1;
                          v14 = v276;
                          goto LABEL_212;
                        }
                      }

                      __break(1u);
LABEL_245:
                      __break(1u);
LABEL_246:
                      v27 = specialized _ArrayBuffer._consumeAndCreateNew()(v27);
                      while (*(v27 + 16) <= v17)
                      {
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
                        swift_once();
LABEL_204:
                        v2 = static Color.clear;
LABEL_208:

LABEL_209:
                        type metadata accessor for ColorBox<Color.MixProvider>();
                        v11 = swift_allocObject();
                        *(v11 + 16) = v2;
                        *(v11 + 24) = v6;
                        *(v11 + 32) = 2;
                        *(v11 + 36) = 0;

                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          goto LABEL_246;
                        }
                      }

                      v14 = v27;
                      *(v27 + v285 + 96) = v11;

                      v233 = swift_allocObject();
                      *(v233 + 16) = v2;
                      *(v233 + 24) = v6;
                      *(v233 + 32) = 2;
                      *(v233 + 36) = 1065353216;

                      *(&v310[38] + 1) = v233;
                      v2 = v19;
                      *(v19 + 24) = 1;
LABEL_212:
                      if (*(v14 + 2) <= v17)
                      {
                        continue;
                      }

                      break;
                    }

                    v234 = v380[15];
                    v6 = &v14[v285];
                    v235 = *&v14[v285 + 152];
                    v11 = *(&v310[26] + 1);

                    *(&v310[26] + 1) = v235;
                    v27 = v14;
                    v236 = *(v14 + 2);

                    v237 = v236 <= v284;
                    v17 = v284;
                    if (!v237)
                    {
                      *(v6 + 152) = v234;

                      continue;
                    }

                    goto LABEL_239;
                  }

                  break;
                }
              }

              v27 = specialized _ArrayBuffer._consumeAndCreateNew()(v27);
              goto LABEL_219;
            }

            goto LABEL_28;
          }
        }

        while (v6 >= v278 && v6 < v11);
      }

LABEL_223:
      __break(1u);
LABEL_224:
      __break(1u);
LABEL_225:
      __break(1u);
LABEL_226:
      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      __break(1u);
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
LABEL_233:
      __break(1u);
LABEL_234:
      swift_once();
      goto LABEL_6;
    }

    if (v70 != 1)
    {
      v2 = *(v17 - 16);
      *&v276 = *(v17 - 8);
      v5 = v275;
      v71 = v69;
      outlined init with copy of Logger?(v282, v275, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
      if ((v280.i64[0])(v5, 1, v6) != 1)
      {
        (*v269)(v271, v275, v6);
        v72 = Logger.logObject.getter();
        v5 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v72, v5))
        {
          v73 = swift_slowAlloc();
          v259 = v2;
          v260 = v73;
          v74 = v73;
          v268 = swift_slowAlloc();
          *&v335[0] = v268;
          *v74 = v253;
          *&v337[0] = 0;
          *(&v337[0] + 1) = 0xE000000000000000;
          LODWORD(v258) = v5;
          _StringGuts.grow(_:)(26);

          *&v337[0] = 0xD000000000000012;
          *(&v337[0] + 1) = v254;
          *&v334[0] = v71;
          *v311 = v14;
          *&v336[0] = 0;
          *(&v336[0] + 1) = 0xE000000000000000;
          v14 = MEMORY[0x1E69E6530];
          v2 = MEMORY[0x1E69E7078];
          _print_unlocked<A, B>(_:_:)();
          MEMORY[0x193ABEDD0](3943982, 0xE300000000000000);
          _print_unlocked<A, B>(_:_:)();
          MEMORY[0x193ABEDD0](*&v336[0], *(&v336[0] + 1));

          MEMORY[0x193ABEDD0](544175136, 0xE400000000000000);
          *&v334[0] = v259;
          *v311 = v276;
          *&v336[0] = 0;
          *(&v336[0] + 1) = 0xE000000000000000;
          _print_unlocked<A, B>(_:_:)();
          MEMORY[0x193ABEDD0](3943982, 0xE300000000000000);
          _print_unlocked<A, B>(_:_:)();
          MEMORY[0x193ABEDD0](*&v336[0], *(&v336[0] + 1));

          v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v337[0], *(&v337[0] + 1), v335);

          v5 = v260;
          *(v260 + 4) = v75;
          _os_log_impl(&dword_18D018000, v72, v258, "Glass container %s", v5, 0xCu);
          v76 = v268;
          __swift_destroy_boxed_opaque_existential_1(v268);
          MEMORY[0x193AC4820](v76, -1, -1);
          MEMORY[0x193AC4820](v5, -1, -1);
        }

        v6 = v277;
        (*v270)(v271, v277);
      }

      goto LABEL_30;
    }

    if (v69 != v14)
    {
      break;
    }

LABEL_30:
    v11 = v283;
    v63 = *(v283 + 16);
    v17 += 40;
    v68 = v286 + 1;
    if (v286 == v63)
    {
      v2 = v267;
      v17 = v284;
      goto LABEL_156;
    }
  }

  v11 = v14;
  if (v14 < v69)
  {
    goto LABEL_251;
  }

  v2 = v267;
  v141 = *(v267 + 212);
  v363 = *(v267 + 196);
  v364 = v141;
  v365 = *(v267 + 228);
  v366 = *(v267 + 61);
  LODWORD(v268) = v267[248];
  *(v267 + 1) = v27;
  v17 = v284;
  if (v69 >= v14)
  {
    goto LABEL_224;
  }

  v6 = v69;
  *&v278 = v69;
  v252 = v14;
  while (2)
  {
    if (*(v27 + 16) <= v17)
    {
      goto LABEL_227;
    }

    v5 = v27 + v285 + 32;
    memcpy(v289, v5, 0x154uLL);
    v142 = *v5;
    v143 = *(v27 + v285 + 48);
    v144 = *(v27 + v285 + 64);
    v354 = *(v27 + v285 + 80);
    v353 = v144;
    v352 = v143;
    v145 = *(v27 + v285 + 96);
    v146 = *(v27 + v285 + 112);
    v147 = *(v27 + v285 + 128);
    v358 = *(v27 + v285 + 144);
    v357 = v147;
    v356 = v146;
    v355 = v145;
    v351 = v142;
    v14 = v289[16];
    v148 = *(v27 + v285 + 356);
    v149 = *(v27 + v285 + 328);
    v150 = *(v27 + v285 + 312);
    v350[0] = *(v27 + v285 + 344);
    *(v350 + 12) = v148;
    v349 = v149;
    v348 = v150;
    v151 = *(v27 + v285 + 248);
    v152 = *(v27 + v285 + 296);
    v153 = *(v27 + v285 + 264);
    v346 = *(v27 + v285 + 280);
    v347 = v152;
    v345 = v153;
    v344 = v151;
    v154 = *(v27 + v285 + 184);
    v155 = *(v27 + v285 + 232);
    v156 = *(v27 + v285 + 200);
    v342 = *(v27 + v285 + 216);
    v343 = v155;
    v341 = v156;
    v340 = v154;
    v339 = *(v27 + v285 + 168);
    v359 = v363;
    v360 = v364;
    v361 = v365;
    v362 = v366;
    if (v268)
    {
      outlined init with copy of GlassContainer.Entry(v289, v337);
      goto LABEL_115;
    }

    memcpy(v338, v2, sizeof(v338));
    v157 = v263;
    outlined init with copy of Logger?(v282, v263, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
    v5 = v277;
    if ((v280.i64[0])(v157, 1, v277) == 1)
    {
      outlined init with copy of GlassContainer.Entry(v289, v337);
    }

    else
    {
      v27 = v256;
      (*v269)(v256, v157, v5);
      outlined init with copy of GlassContainer.Entry(v289, v337);
      outlined init with copy of Resolver(v338, v337);
      v158 = v272;
      specialized closure #1 in Resolver.log(_:)();
      v272 = v158;
      if (v158)
      {
        goto LABEL_257;
      }

      outlined destroy of Resolver(v338);
      (*v270)(v27, v5);
    }

    v17 = v2[32];
    v5 = v2[33];
    v159 = *(v289[16] + 16);
    v160 = v159 == 0;
    if (v159)
    {
      v161 = 0;
      v162 = (v289[16] + 208);
      while (*v162 == 1)
      {
        ++v161;
        v162 += 656;
        v160 = v159 == v161;
        if (v159 == v161)
        {
          goto LABEL_113;
        }
      }
    }

    else
    {
LABEL_113:
      v161 = *(v289[16] + 16);
    }

    v279 = v338[15];
    v27 = v338[1];
    v274 = v338[0];
    v273 = v338[34];
    LODWORD(v266) = v338[24];
    if (v160)
    {
LABEL_115:
      v17 = v284;
      goto LABEL_116;
    }

    if (v161 >= v159)
    {
      goto LABEL_229;
    }

    if (*(v289[16] + 32 + 656 * v161 + 176) != 1)
    {
      v260 = v289[16];
      *&v276 = v338[1];
      v163 = v338[14];
      v11 = v338[16];
      v2 = v338[17];
      if (v5)
      {

        v27 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA040AccessibilityPrefersCrossFadeTransitionsI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v17);

        goto LABEL_129;
      }

      _s7SwiftUI22TransactionPropertyKey33_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationE033_D98E9A1069CEEADA58829ED440E36F30LLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityPrefersCrossFadeTransitionsKey>, &type metadata for AccessibilityPrefersCrossFadeTransitionsKey, &protocol witness table for AccessibilityPrefersCrossFadeTransitionsKey, type metadata accessor for EnvironmentPropertyKey);
      BloomFilter.init(hashValue:)(v164);
      v165 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA040AccessibilityPrefersCrossFadeTransitionsV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(v17, *&v337[0]);
      if (!v165)
      {
        goto LABEL_130;
      }

      v27 = *(v165 + 72);
LABEL_129:
      if (v27 != 2)
      {
        v17 = v284;
        if (v27)
        {
LABEL_137:
          v27 = v276;
          v2 = v267;
          v11 = v252;
LABEL_116:
          v337[4] = v355;
          v337[5] = v356;
          v337[6] = v357;
          v337[7] = v358;
          v337[0] = v351;
          v337[1] = v352;
          v337[2] = v353;
          v337[3] = v354;
          *&v337[8] = v14;
          *(&v337[18] + 8) = v349;
          *(&v337[19] + 8) = v350[0];
          *(&v337[20] + 4) = *(v350 + 12);
          *(&v337[14] + 8) = v345;
          *(&v337[15] + 8) = v346;
          *(&v337[16] + 8) = v347;
          *(&v337[17] + 8) = v348;
          *(&v337[10] + 8) = v341;
          *(&v337[11] + 8) = v342;
          *(&v337[12] + 8) = v343;
          *(&v337[13] + 8) = v344;
          *(&v337[8] + 8) = v339;
          *(&v337[9] + 8) = v340;
          outlined init with copy of GlassContainer.Entry(v337, v336);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = specialized _ArrayBuffer._consumeAndCreateNew()(v27);
          }

          if (*(v27 + 16) <= v17)
          {
            goto LABEL_228;
          }

          ++v6;
          v5 = v27 + v285;
          memcpy(v335, (v27 + v285 + 32), 0x154uLL);
          memcpy((v27 + v285 + 32), v337, 0x154uLL);
          outlined destroy of GlassContainer.Entry(v335);
          v2[1] = v27;
          v336[4] = v355;
          v336[5] = v356;
          v336[6] = v357;
          v336[7] = v358;
          v336[0] = v351;
          v336[1] = v352;
          v336[2] = v353;
          v336[3] = v354;
          *&v336[8] = v14;
          *(&v336[10] + 8) = v341;
          *(&v336[11] + 8) = v342;
          *(&v336[8] + 8) = v339;
          *(&v336[9] + 8) = v340;
          *(&v336[14] + 8) = v345;
          *(&v336[15] + 8) = v346;
          *(&v336[12] + 8) = v343;
          *(&v336[13] + 8) = v344;
          *(&v336[20] + 4) = *(v350 + 12);
          *(&v336[18] + 8) = v349;
          *(&v336[19] + 8) = v350[0];
          *(&v336[16] + 8) = v347;
          *(&v336[17] + 8) = v348;
          outlined destroy of GlassContainer.Entry(v336);
          if (v6 == v11)
          {
            goto LABEL_152;
          }

          if (v6 < v278 || v6 >= v11)
          {
            goto LABEL_224;
          }

          continue;
        }
      }

      else
      {
LABEL_130:
        *&v337[0] = v17;
        *(&v337[0] + 1) = v5;
        LOBYTE(v336[0]) = 3;
        v5 = v337;
        v166 = EnvironmentValues.accessibilitySettingEnabled(_:)(v336);
        v17 = v284;
        if (v166)
        {
          goto LABEL_137;
        }
      }

      if (v6 < 0)
      {
        goto LABEL_240;
      }

      if (v6 >= *(v262 + 16))
      {
        goto LABEL_241;
      }

      v5 = v338[19];
      v259 = 656 * v6;
      memcpy(v287, (v251 + 656 * v6), 0x289uLL);
      v375 = v359;
      v376 = v360;
      v377 = v361;
      v378 = v362;
      v374[0] = v163;
      v374[1] = v279;
      v374[2] = v11;
      v374[3] = v2;
      v374[4] = v338[18];
      v374[5] = v338[19];
      v374[6] = v338[20];
      v374[7] = v338[21];
      v379 = v338[23];

      outlined init with copy of GlassContainer.Item(v287, v334);
      specialized RandomAccessCollection<>.sourceElement(target:otherElements:config:context:)(v287);
      outlined destroy of GlassContainer.Item.DistanceContext(v374);
      memcpy(v336, v335, 0x2E9uLL);
      memcpy(v337, v335, 0x2E9uLL);
      if (getEnumTag for AccessibilityTextLayoutProperties(v337) != 1)
      {
        v2 = v267;
        memcpy(v332, v267, sizeof(v332));
        memcpy(v334, v267, 0x118uLL);
        outlined init with copy of Resolver(v332, v311);
        specialized Resolver.log(_:)(v334, specialized closure #1 in Resolver.log(_:));
        memcpy(v333, v334, sizeof(v333));
        outlined destroy of Resolver(v333);
        v328 = v287[10];
        v329 = v287[11];
        v330 = v287[12];
        v279 = *(&v287[13] + 1);
        v331 = *&v287[13];
        v324 = v287[6];
        v325 = v287[7];
        v326 = v287[8];
        v327 = v287[9];
        v320 = v287[2];
        v321 = v287[3];
        v322 = v287[4];
        v323 = v287[5];
        v318 = v287[0];
        v319 = v287[1];
        v274 = *(&v287[14] + 1);
        *&v276 = *&v287[14];
        v316 = v287[15];
        v317 = *&v287[16];
        v315 = BYTE8(v287[17]);
        *v314 = *v247;
        *&v314[3] = *(v247 + 3);
        memcpy(v313, &v287[21], sizeof(v313));
        v168 = v2[32];
        v167 = v2[33];
        outlined init with copy of GlassContainer.Item(v287, v334);
        static GlassContainer.AppearanceSettings.match.getter(v334);
        v169 = *(&v334[0] + 1);
        v170 = *v334;
        v171 = v334[1];
        if (v167)
        {

          v172 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA025AccessibilityReduceMotionI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v168);
        }

        else
        {
          v173 = v272;
          v172 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA025AccessibilityReduceMotionF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v168);
          v272 = v173;
        }

        v11 = v252;
        if (v172 == 2)
        {
          *v311 = v168;
          *&v311[8] = v167;
          LOBYTE(v310[0]) = 2;
          v172 = EnvironmentValues.accessibilitySettingEnabled(_:)(v310);
        }

        if (v172)
        {
          v170 = 1.0;
        }

        if (BYTE8(v287[17]))
        {
          v174 = 1.0;
        }

        else
        {
          v174 = *&v287[17];
        }

        v315 = 1;
        v27 = LODWORD(v337[0]);
        v5 = *(&v337[0] + 1);
        v175 = *&v337[1];

        outlined consume of Text.LineStyle?(v279, v276);
        *(v2 + 24) = 1;
        v334[10] = v328;
        v334[11] = v329;
        v334[12] = v330;
        v334[6] = v324;
        v334[7] = v325;
        v334[8] = v326;
        v334[9] = v327;
        v334[2] = v320;
        v334[3] = v321;
        v334[4] = v322;
        v334[5] = v323;
        v334[0] = v318;
        v334[1] = v319;
        *&v334[13] = v331;
        *(&v334[13] + 1) = v27;
        *&v334[14] = v5;
        *&v276 = v175;
        *(&v334[14] + 1) = v175;
        v334[15] = v316;
        *&v334[16] = v317;
        *(&v334[16] + 1) = v174;
        v17 = v315;
        BYTE8(v334[17]) = v315;
        v176 = v250;
        *v250 = *v314;
        *(v176 + 3) = *&v314[3];
        *&v334[17] = 0;
        *&v334[18] = 0;
        *(&v334[18] + 1) = *(&v171 + 1);
        *&v334[19] = v170;
        *(&v334[19] + 1) = v169;
        v334[20] = v171;
        memcpy(&v334[21], v313, 0x138uLL);
        BYTE8(v334[40]) = 0;
        outlined init with copy of GlassContainer.Item(v334, v311);
        v14 = v260;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
        }

        outlined destroy of GlassContainer.MatchingResult<GlassContainer.Item>?(v336, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Item>?, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Item>, &type metadata for GlassContainer.Item, type metadata accessor for GlassContainer.MatchingResult);
        outlined destroy of GlassContainer.Item(v287);
        if (v6 >= *(v14 + 2))
        {
          goto LABEL_245;
        }

        LODWORD(v266) = v332[24];
        v279 = v332[15];
        v273 = v332[34];
        v274 = v332[0];
        LODWORD(v260) = v17;
        v177 = v332[1];
        memcpy(v310, &v14[v259 + 32], 0x289uLL);
        v2 = v267;
        memcpy(&v14[v259 + 32], v334, 0x289uLL);
        outlined destroy of GlassContainer.Item(v310);
        *&v311[160] = v328;
        *&v311[176] = v329;
        *&v311[192] = v330;
        *&v311[96] = v324;
        *&v311[112] = v325;
        *&v311[128] = v326;
        *&v311[144] = v327;
        *&v311[32] = v320;
        *&v311[48] = v321;
        *&v311[64] = v322;
        *&v311[80] = v323;
        *v311 = v318;
        *&v311[16] = v319;
        *&v311[208] = v331;
        *&v311[216] = v27;
        *&v311[224] = v5;
        *&v311[232] = v276;
        v27 = v177;
        *&v311[240] = v316;
        *&v311[256] = v317;
        *&v311[264] = v174;
        *&v311[272] = 0;
        v311[280] = v260;
        v178 = v249;
        *v249 = *v314;
        *(v178 + 3) = *&v314[3];
        *&v311[288] = 0;
        *&v311[296] = *(&v171 + 1);
        *&v311[304] = v170;
        *&v311[312] = v169;
        *&v311[320] = v171;
        memcpy(&v311[336], v313, 0x138uLL);
        v312 = 0;
        outlined destroy of GlassContainer.Item(v311);
        goto LABEL_115;
      }

      outlined destroy of GlassContainer.Item(v287);
      v17 = v284;
      goto LABEL_137;
    }

    break;
  }

  __break(1u);
LABEL_256:
  __break(1u);
LABEL_257:
  result = (*v270)(v27, v5);
  __break(1u);
  return result;
}

uint64_t Resolver.postProcessEntries()()
{
  v1 = v0;
  result = Transaction.shouldUseGlassAnimation.getter(*(v0 + 272));
  if (result)
  {
    v3 = *(v0 + 96);
    v6 = *(v3 + 64);
    v5 = v3 + 64;
    v4 = v6;
    v7 = 1 << *(*(v0 + 96) + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & v4;
    v10 = (v7 + 63) >> 6;
    v45 = *(v0 + 96);

    v11 = 0;
    while (v9)
    {
LABEL_11:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v14 = (v11 << 9) | (8 * v13);
      v15 = *(v45[6] + v14);
      v16 = *(v45[7] + v14);
      v17 = v1[11];
      if (*(v17 + 16) && (Hasher.init(_seed:)(), MEMORY[0x193AC11A0](v15), result = Hasher._finalize()(), v18 = -1 << *(v17 + 32), v19 = result & ~v18, ((*(v17 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0))
      {
        v20 = ~v18;
        while (*(*(v17 + 48) + 8 * v19) != v15)
        {
          v19 = (v19 + 1) & v20;
          if (((*(v17 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
LABEL_16:
        if (*(v1[13] + 16))
        {
          result = specialized __RawDictionaryStorage.find<A>(_:)(v15);
          if (v21)
          {

            adjustTransitionState #1 (entryID:) in Resolver.postProcessEntries()(v15);
            v22 = *(v16 + 16);
            if (v22)
            {
              v23 = (v16 + 32);
              do
              {
                v24 = *v23++;
                adjustTransitionState #1 (entryID:) in Resolver.postProcessEntries()(v24);
                --v22;
              }

              while (v22);
            }
          }
        }
      }
    }

    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_47;
      }

      if (v12 >= v10)
      {
        break;
      }

      v9 = *(v5 + 8 * v12);
      ++v11;
      if (v9)
      {
        v11 = v12;
        goto LABEL_11;
      }
    }

    v25 = v1[13];
    v26 = 1 << *(v25 + 32);
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v28 = v27 & *(v25 + 64);
    v29 = (v26 + 63) >> 6;

    v30 = 0;
    while (v28)
    {
LABEL_32:
      v32 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v33 = (v30 << 9) | (8 * v32);
      v34 = *(*(v25 + 48) + v33);
      v35 = *(*(v25 + 56) + v33);
      v36 = v1[11];
      if (*(v36 + 16) && (Hasher.init(_seed:)(), MEMORY[0x193AC11A0](v34), result = Hasher._finalize()(), v37 = -1 << *(v36 + 32), v38 = result & ~v37, ((*(v36 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) != 0))
      {
        v39 = ~v37;
        while (*(*(v36 + 48) + 8 * v38) != v34)
        {
          v38 = (v38 + 1) & v39;
          if (((*(v36 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
          {
            goto LABEL_37;
          }
        }
      }

      else
      {
LABEL_37:
        if (v45[2])
        {
          result = specialized __RawDictionaryStorage.find<A>(_:)(v34);
          if (v40)
          {

            adjustTransitionState #1 (entryID:) in Resolver.postProcessEntries()(v34);
            v41 = *(v35 + 16);
            if (v41)
            {
              v42 = (v35 + 32);
              do
              {
                v43 = *v42++;
                adjustTransitionState #1 (entryID:) in Resolver.postProcessEntries()(v43);
                --v41;
              }

              while (v41);
            }
          }
        }
      }
    }

    while (1)
    {
      v31 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v31 >= v29)
      {

        KeyPath = swift_getKeyPath();
        specialized MutableCollection<>.sort(by:)(v1 + 1, 0, KeyPath, specialized _ArrayBuffer._consumeAndCreateNew(), specialized UnsafeMutableBufferPointer._stableSortImpl(by:));
      }

      v28 = *(v25 + 64 + 8 * v31);
      ++v30;
      if (v28)
      {
        v30 = v31;
        goto LABEL_32;
      }
    }

LABEL_47:
    __break(1u);
  }

  return result;
}

void *specialized RandomAccessCollection<>.sourceElement(target:otherElements:config:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11)
{
  v108 = MEMORY[0x1EEE9AC00](a1);
  v19 = v18;
  if ((*(v11 + 136) & 1) == 0 || (v20 = *(v11 + 128), (v21 = *(v20 + 16)) == 0))
  {
LABEL_6:
    _s7SwiftUI14GlassContainerO14MatchingResultVy_AC5EntryVGSgWOi0_(__src);
    v25 = v19;
    return memcpy(v25, __src, 0x1B1uLL);
  }

  v22 = v17;
  v23 = (v20 + 208);
  v24 = *(v20 + 16);
  while (*v23 == 1)
  {
    v23 += 656;
    if (!--v24)
    {
      goto LABEL_6;
    }
  }

  v103 = v11;
  v82 = v19 + 344;
  v83 = v15;
  v87 = v13;
  v88 = v19;
  v84 = v14;
  v86 = v12;
  v85 = v16;
  v119 = xmmword_18DDAA040;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  memset(v124, 0, 25);
  _s7SwiftUI14GlassContainerO5EntryVSgWOi0_(v126);
  v27 = a11 >> 1;
  swift_unknownObjectRetain();
  swift_beginAccess();
  result = memcpy(__dst, v126, 0x154uLL);
  v89 = 0;
  v28 = 0;
  v92 = *(MEMORY[0x1E695F050] + 8);
  v93 = *MEMORY[0x1E695F050];
  v90 = *(MEMORY[0x1E695F050] + 24);
  v91 = *(MEMORY[0x1E695F050] + 16);
  v29 = (v20 + 48);
  v105 = INFINITY;
  v30 = a10;
  while (1)
  {
LABEL_14:
    if (v30 == v27)
    {
      _sSi6offset_7SwiftUI14GlassContainerO5EntryV7elementtSgWOi0_(__src);
      v32 = *__src;
      memcpy(v118, &__src[8], sizeof(v118));
      v30 = a11 >> 1;
      goto LABEL_20;
    }

    if (v30 < a10 || v30 >= v27)
    {
      break;
    }

    v33 = (a9 + 344 * v30);
    result = memcpy(v117, v33, 0x154uLL);
    if (__OFADD__(v28, 1))
    {
      goto LABEL_80;
    }

    ++v30;
    memcpy(&__src[8], v33, 0x154uLL);
    *__src = v28;
    _ViewInputs.base.modify(__src, v34);
    outlined init with copy of GlassContainer.Entry(v117, v135);
    v32 = *__src;
    memcpy(v118, &__src[8], sizeof(v118));
    ++v28;
LABEL_20:
    memcpy(&v117[1], v118, 0x154uLL);
    v117[0] = v32;
    if (_sSi6offset_7SwiftUI14GlassContainerO5EntryV7elementtSgWOg(v117) == 1)
    {
      swift_unknownObjectRelease();
      if ((v89 & 0x100000000) != 0)
      {
        v75 = v88;
        if (v89)
        {
LABEL_71:
          v76 = BYTE8(v119);
          if (BYTE8(v119) != 2)
          {
            v110 = v121;
            v111 = v120;
            v107 = v123;
            v109 = v122;
            *v104 = v124[0];
            v77 = *&v124[1];
            v78 = BYTE8(v124[1]);
            memcpy(__src, __dst, 0x154uLL);
            if (_s7SwiftUI14GlassContainerO5EntryVSgWOg(__src) != 1)
            {
              memcpy(v75, __dst, 0x154uLL);
              v75[340] = v76 & 1;
              *v82 = v111;
              *(v82 + 1) = v110;
              *(v82 + 2) = v109;
              *(v82 + 3) = v107;
              *(v82 + 4) = *v104;
              *(v75 + 53) = v77;
              v82[88] = v78 & 1;
              return _ViewInputs.base.modify(v75, v79);
            }

            goto LABEL_78;
          }
        }
      }

      else
      {
        v75 = v88;
        if (v89)
        {
          memcpy(__src, __dst, 0x154uLL);
          if (_s7SwiftUI14GlassContainerO5EntryVSgWOg(__src) == 1)
          {
LABEL_78:
            _s7SwiftUI14GlassContainerO14MatchingResultVy_AC5EntryVGSgWOi0_(__src);
            v25 = v75;
            return memcpy(v25, __src, 0x1B1uLL);
          }

          memcpy(v135, __dst, 0x154uLL);
          memcpy(v114, v126, 0x154uLL);
          v113 = v105;
          memcpy(v115, __dst, 0x154uLL);
          outlined init with copy of GlassContainer.Entry(v115, v112);
          v80 = specialized RandomAccessCollection<>.hasCloseElement(potentialSource:target:closestDistance:closestElement:config:context:)(v135, v103, &v113, v114, v85 & 1, v22, v86, v87, v108, v84, v83);
          v81 = MEMORY[0x1E69E6720];
          outlined destroy of SeedValue<GlassContainer.EntryState>(__dst, &lazy cache variable for type metadata for GlassContainer.Entry?, &type metadata for GlassContainer.Entry, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
          memcpy(v116, v114, 0x154uLL);
          outlined destroy of SeedValue<GlassContainer.EntryState>(v116, &lazy cache variable for type metadata for GlassContainer.Entry?, &type metadata for GlassContainer.Entry, v81, type metadata accessor for Resolver?);
          if (v80)
          {
            goto LABEL_71;
          }
        }
      }

      outlined destroy of SeedValue<GlassContainer.EntryState>(__dst, &lazy cache variable for type metadata for GlassContainer.Entry?, &type metadata for GlassContainer.Entry, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
      goto LABEL_78;
    }

    memcpy(__src, v118, 0x154uLL);
    v35 = *(*&__src[128] + 16);
    v36 = v35 == 0;
    if (v35)
    {
      v37 = (*&__src[128] + 48);
      while (!*(v37 - 1))
      {
        v37 += 82;
        v36 = --v35 == 0;
        if (!v35)
        {
          goto LABEL_27;
        }
      }

      v35 = *v37;
    }

LABEL_27:
    v38 = v21;
    v39 = v29;
    while (!*(v39 - 1))
    {
      v39 += 82;
      if (!--v38)
      {
        if (v36)
        {
          goto LABEL_34;
        }

LABEL_13:
        result = outlined destroy of GlassContainer.Entry(__src);
        goto LABEL_14;
      }
    }

    if (v36 || v35 != *v39)
    {
      goto LABEL_13;
    }

LABEL_34:
    v40 = *(v22 + 16);
    memcpy(v135, v118, 0x154uLL);
    v41 = *(v22 + 40);
    v116[0] = *(v22 + 24);
    v116[1] = v41;
    v116[2] = *(v22 + 56);
    LODWORD(v116[3]) = *(v22 + 72);
    GlassContainer.Entry.shapeBounds(data:proxy:cache:options:)(v40, v116, 0, v128);
    if (v129 & 1) != 0 || (v42 = *v128, v43 = *&v128[1], v44 = *&v128[2], v45 = *&v128[3], memcpy(v135, v103, 0x154uLL), v46 = *(v22 + 40), v116[0] = *(v22 + 24), v116[1] = v46, v116[2] = *(v22 + 56), LODWORD(v116[3]) = *(v22 + 72), GlassContainer.Entry.shapeBounds(data:proxy:cache:options:)(v40, v116, 0, &v130), (v134))
    {
      v47 = 0.0;
      v48 = 0.0;
      v49 = 0.0;
      v50 = INFINITY;
      v51 = 0.0;
      v52 = 0.0;
      v53 = 0.0;
      v54 = 0.0;
      v55 = 0.0;
      v56 = 0.0;
      v57 = 0.0;
      goto LABEL_37;
    }

    v63 = v130;
    v64 = v131;
    v51 = v132;
    v49 = v133;
    v101 = resolvedDistance(from:to:pixelLength:)(v42, v43, v44, v45, v130, v131, v132, v133, *v22);
    v136.origin.x = v63;
    v136.origin.y = v64;
    v136.size.width = v51;
    v136.size.height = v49;
    Width = CGRectGetWidth(v136);
    v137.origin.x = v63;
    v137.origin.y = v64;
    v137.size.width = v51;
    v137.size.height = v49;
    Height = CGRectGetHeight(v137);
    v138.origin.x = v42;
    v138.origin.y = v43;
    v138.size.width = v44;
    v138.size.height = v45;
    v97 = CGRectGetWidth(v138);
    v139.origin.x = v42;
    v139.origin.y = v43;
    v139.size.width = v44;
    v139.size.height = v45;
    v96 = CGRectGetHeight(v139);
    v140.origin.x = v42;
    v140.origin.y = v43;
    v140.size.width = v44;
    v140.size.height = v45;
    v142.origin.x = v63;
    v142.origin.y = v64;
    v142.size.width = v51;
    v142.size.height = v49;
    v141 = CGRectIntersection(v140, v142);
    v94 = v45;
    v95 = v44;
    v65 = v141.size.width;
    v66 = v42;
    v67 = v141.size.height;
    v143.origin.y = v92;
    v143.origin.x = v93;
    v143.size.height = v90;
    v143.size.width = v91;
    v68 = CGRectEqualToRect(v141, v143);
    v53 = v63;
    v52 = v64;
    v54 = v94;
    v69 = v95 * v94;
    if (v51 * v49 < v95 * v94)
    {
      v69 = v51 * v49;
    }

    v70 = v69 * 0.5 > v65 * v67;
    v56 = v43;
    v57 = v66;
    v71 = v64 + Height * 0.5 - (v43 + v96 * 0.5);
    if (v68)
    {
      v48 = v53 + Width * 0.5 - (v66 + v97 * 0.5);
    }

    else
    {
      v48 = 0.0;
    }

    if (v68)
    {
      v47 = v71;
    }

    else
    {
      v47 = 0.0;
    }

    if (v68)
    {
      v70 = 1;
    }

    v55 = v95;
    if (v70)
    {
      v50 = v101;
LABEL_37:
      v58 = v51 * v49;
      v59 = v55 * v54;
      if (v55 * v54 >= v51 * v49)
      {
        v60 = v51 * v49;
      }

      else
      {
        v60 = v55 * v54;
      }

      if (v58 > v59)
      {
        v61 = v51 * v49;
      }

      else
      {
        v61 = v55 * v54;
      }

      v62 = 1;
      if (v60 == 0.0 || v61 == 0.0 || v61 / v60 < 3.0)
      {
        v31 = 1;
        goto LABEL_10;
      }

      if (v58 >= v59)
      {
        goto LABEL_13;
      }

      if (v50 > v108)
      {
        v31 = 1;
        goto LABEL_12;
      }

      if (v50 < v105)
      {
        v31 = 1;
        BYTE4(v89) = 1;
        goto LABEL_64;
      }

      result = outlined destroy of GlassContainer.Entry(__src);
      BYTE4(v89) = 1;
    }

    else
    {
      v62 = 0;
      v31 = 0;
      v50 = v101;
LABEL_10:
      if (v50 <= v108)
      {
        BYTE4(v89) = 1;
      }

LABEL_12:
      if (v50 >= v105)
      {
        goto LABEL_13;
      }

LABEL_64:
      if (BYTE8(v119) != 2 && (BYTE8(v119) & 1) == 0 && v62)
      {
        goto LABEL_13;
      }

      v106 = v49;
      v100 = v52;
      v102 = v51;
      v72 = v55;
      v73 = v53;
      outlined destroy of SeedValue<GlassContainer.EntryState>(__dst, &lazy cache variable for type metadata for GlassContainer.Entry?, &type metadata for GlassContainer.Entry, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
      memcpy(v135, __src, 0x154uLL);
      _ViewInputs.base.modify(v135, v74);
      *&v119 = v50;
      BYTE8(v119) = v31;
      *&v120 = v57;
      *(&v120 + 1) = v56;
      *&v121 = v72;
      *(&v121 + 1) = v54;
      *&v122 = v73;
      *(&v122 + 1) = v100;
      *&v123 = v102;
      *(&v123 + 1) = v106;
      *v124 = v48;
      *(v124 + 1) = v47;
      *&v124[1] = v32;
      BYTE8(v124[1]) = 0;
      result = memcpy(__dst, v135, 0x154uLL);
      LOBYTE(v89) = 1;
      v105 = v50;
    }
  }

  __break(1u);
LABEL_80:
  __break(1u);
  return result;
}

{
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = v12;
  v15 = v14;
  v16 = v11;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27[176];
  memcpy(v93, v27, 0x289uLL);
  v29 = v13[5];
  v89 = v13[4];
  v90 = v29;
  v30 = v13[7];
  v91 = v13[6];
  v92 = v30;
  v31 = v13[1];
  v85 = *v13;
  v86 = v31;
  v32 = v13[3];
  v87 = v13[2];
  v88 = v32;
  if (v28)
  {
    _s7SwiftUI14GlassContainerO14MatchingResultVy_AC4ItemVGSgWOi0_(v84);
    v33 = v26;
    return memcpy(v33, v84, 0x2E9uLL);
  }

  v57 = v18;
  v58 = v20;
  v59 = v24;
  v60 = v22;
  v62 = v26;
  v76 = xmmword_18DDAA040;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  memset(v81, 0, 25);
  _s7SwiftUI14GlassContainerO4ItemVSgWOi0_(v83);
  v34 = a11 >> 1;
  swift_unknownObjectRetain();
  swift_beginAccess();
  result = memcpy(v82, v83, 0x289uLL);
  v64 = 0;
  v66 = 0;
  v36 = 0;
  v37 = INFINITY;
  v38 = a10;
LABEL_4:
  v39 = v93[1];
  if (v93[1])
  {
    v40 = v93[2];
  }

  else
  {
    v40 = 0;
  }

  while (1)
  {
    if (v38 == v34)
    {
      _sSi6offset_7SwiftUI14GlassContainerO4ItemV7elementtSgWOi0_(v84);
      v41 = v84[0];
      memcpy(__src, &v84[1], sizeof(__src));
      v38 = a11 >> 1;
      goto LABEL_15;
    }

    if (v38 < a10 || v38 >= v34)
    {
      break;
    }

    v42 = (a9 + 656 * v38);
    result = memcpy(__dst, v42, 0x289uLL);
    if (__OFADD__(v36, 1))
    {
      goto LABEL_53;
    }

    ++v38;
    memcpy(&v84[1], v42, 0x289uLL);
    v84[0] = v36;
    _ViewInputs.base.modify(v84, v43);
    outlined init with copy of GlassContainer.Item(__dst, v100);
    v41 = v84[0];
    memcpy(__src, &v84[1], sizeof(__src));
    ++v36;
LABEL_15:
    memcpy(&__dst[1], __src, 0x289uLL);
    __dst[0] = v41;
    if (_s7SwiftUI14GlassContainerO5EntryVSgWOg(__dst) == 1)
    {
      swift_unknownObjectRelease();
      if (v66)
      {
        v50 = v62;
        if (v64)
        {
LABEL_43:
          v51 = BYTE8(v76);
          if (BYTE8(v76) != 2)
          {
            v67 = v78;
            v68 = v77;
            v63 = v80;
            v65 = v79;
            v61 = v81[0];
            v52 = *&v81[1];
            v53 = BYTE8(v81[1]);
            memcpy(v84, v82, 0x289uLL);
            if (getEnumTag for AccessibilityTextLayoutProperties(v84) != 1)
            {
              memcpy(v50, v82, 0x289uLL);
              *(v50 + 649) = v51 & 1;
              *(v50 + 41) = v68;
              *(v50 + 42) = v67;
              *(v50 + 43) = v65;
              *(v50 + 44) = v63;
              *(v50 + 45) = v61;
              *(v50 + 92) = v52;
              *(v50 + 744) = v53 & 1;
              return _ViewInputs.base.modify(v50, v54);
            }

            goto LABEL_50;
          }
        }
      }

      else
      {
        v50 = v62;
        if (v64)
        {
          memcpy(v84, v82, 0x289uLL);
          if (getEnumTag for AccessibilityTextLayoutProperties(v84) == 1)
          {
LABEL_50:
            _s7SwiftUI14GlassContainerO14MatchingResultVy_AC4ItemVGSgWOi0_(v84);
            v33 = v50;
            return memcpy(v33, v84, 0x2E9uLL);
          }

          memcpy(v99, v82, 0x289uLL);
          memcpy(v71, v83, 0x289uLL);
          v70 = v37;
          memcpy(v100, v93, 0x289uLL);
          v101[4] = v89;
          v101[5] = v90;
          v101[6] = v91;
          v101[7] = v92;
          v101[0] = v85;
          v101[1] = v86;
          v101[2] = v87;
          v101[3] = v88;
          memcpy(v72, v82, 0x289uLL);
          outlined init with copy of GlassContainer.Item(v72, v69);
          v55 = specialized RandomAccessCollection<>.hasCloseElement(potentialSource:target:closestDistance:closestElement:config:context:)(v99, v100, &v70, v71, v15 & 1, v101, v59, v60, v58, v57);
          v56 = MEMORY[0x1E69E6720];
          outlined destroy of SeedValue<GlassContainer.EntryState>(v82, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
          memcpy(v73, v71, 0x289uLL);
          outlined destroy of SeedValue<GlassContainer.EntryState>(v73, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, v56, type metadata accessor for Resolver?);
          if (v55)
          {
            goto LABEL_43;
          }
        }
      }

      outlined destroy of SeedValue<GlassContainer.EntryState>(v82, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
      goto LABEL_50;
    }

    memcpy(v84, __src, 0x289uLL);
    if (v84[1])
    {
      if (!v39 || v84[2] != v40)
      {
        goto LABEL_8;
      }

LABEL_19:
      GlassContainer.Item.matchingResult(to:context:)(v93, &v85, v94);
      if (BYTE8(v94[0]))
      {
        v44 = *&v97 * *(&v97 + 1);
        v45 = *&v95 * *(&v95 + 1);
        v46 = *&v95 * *(&v95 + 1) >= *&v97 * *(&v97 + 1) ? *&v97 * *(&v97 + 1) : *&v95 * *(&v95 + 1);
        v47 = v44 > v45 ? *&v97 * *(&v97 + 1) : *&v95 * *(&v95 + 1);
        if (v46 != 0.0 && v47 != 0.0 && v47 / v46 >= 3.0 && v44 >= v45)
        {
          goto LABEL_36;
        }
      }

      v48 = *v94;
      if (*v94 <= v16)
      {
        v66 = 1;
      }

      if (*v94 < v37 && (BYTE8(v76) == 2 || (BYTE8(v76) & 1) != 0 || BYTE8(v94[0]) != 1))
      {
        outlined destroy of SeedValue<GlassContainer.EntryState>(v82, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
        memcpy(v99, v84, 0x289uLL);
        _ViewInputs.base.modify(v99, v49);
        v80 = v97;
        v81[0] = v98[0];
        *(v81 + 9) = *(v98 + 9);
        v76 = v94[0];
        v77 = v94[1];
        v78 = v95;
        v79 = v96;
        if (BYTE8(v94[0]) != 2)
        {
          *&v81[1] = v41;
          BYTE8(v81[1]) = 0;
        }

        memcpy(v100, v99, 0x289uLL);
        v64 = 1;
        v37 = v48;
      }

      else
      {
LABEL_36:
        memcpy(v99, v84, 0x289uLL);
        outlined destroy of GlassContainer.Item(v99);
        memcpy(v100, v82, 0x289uLL);
      }

      result = memcpy(v82, v100, 0x289uLL);
      goto LABEL_4;
    }

    if (!v39)
    {
      goto LABEL_19;
    }

LABEL_8:
    memcpy(v100, __src, 0x289uLL);
    result = outlined destroy of GlassContainer.Item(v100);
  }

  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

void *specialized RandomAccessCollection<>.sourceElement(target:otherElements:config:context:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v8 = v7;
  v10 = v9[176];
  memcpy(v70, v9, 0x289uLL);
  v11 = v5[5];
  v66 = v5[4];
  v67 = v11;
  v12 = v5[7];
  v68 = v5[6];
  v69 = v12;
  v13 = v5[1];
  v62 = *v5;
  v63 = v13;
  v14 = v5[3];
  v64 = v5[2];
  v65 = v14;
  if (v10)
  {
    _s7SwiftUI14GlassContainerO14MatchingResultVy_AC4ItemVGSgWOi0_(v61);
    v15 = v8;
    return memcpy(v15, v61, 0x2E9uLL);
  }

  v40 = v8;
  v53 = xmmword_18DDAA040;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  memset(v58, 0, 25);
  _s7SwiftUI14GlassContainerO4ItemVSgWOi0_(v60);
  v16 = *(v3 + 16);
  swift_beginAccess();
  result = memcpy(v59, v60, 0x289uLL);
  v42 = 0;
  v44 = 0;
  v18 = 0;
  v19 = v3 + 32;
  v20 = INFINITY;
LABEL_4:
  v21 = v70[1];
  if (v70[1])
  {
    v22 = v70[2];
  }

  else
  {
    v22 = 0;
  }

  while (1)
  {
    if (v18 == v16)
    {
      _sSi6offset_7SwiftUI14GlassContainerO4ItemV7elementtSgWOi0_(v61);
      v23 = v61[0];
      memcpy(__src, &v61[1], sizeof(__src));
      v18 = v16;
      goto LABEL_14;
    }

    if (v18 >= v16)
    {
      break;
    }

    result = memcpy(__dst, (v19 + 656 * v18), 0x289uLL);
    if (__OFADD__(v18, 1))
    {
      goto LABEL_52;
    }

    memcpy(&v61[1], (v19 + 656 * v18), 0x289uLL);
    v61[0] = v18;
    _ViewInputs.base.modify(v61, v24);
    outlined init with copy of GlassContainer.Item(__dst, v77);
    v23 = v61[0];
    memcpy(__src, &v61[1], sizeof(__src));
    ++v18;
LABEL_14:
    memcpy(&__dst[1], __src, 0x289uLL);
    __dst[0] = v23;
    if (_s7SwiftUI14GlassContainerO5EntryVSgWOg(__dst) == 1)
    {
      if (v44)
      {
        v31 = v40;
        if (v42)
        {
          goto LABEL_42;
        }

LABEL_48:
        outlined destroy of SeedValue<GlassContainer.EntryState>(v59, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
      }

      else
      {
        v31 = v40;
        if ((v42 & 1) == 0)
        {
          goto LABEL_48;
        }

        memcpy(v61, v59, 0x289uLL);
        if (getEnumTag for AccessibilityTextLayoutProperties(v61) != 1)
        {
          memcpy(v76, v59, 0x289uLL);
          memcpy(v48, v60, sizeof(v48));
          v47 = v20;
          memcpy(v77, v70, 0x289uLL);
          v82 = v66;
          v83 = v67;
          v84 = v68;
          v85 = v69;
          v78 = v62;
          v79 = v63;
          v80 = v64;
          v81 = v65;
          memcpy(v49, v59, 0x289uLL);
          outlined init with copy of GlassContainer.Item(v49, v46);
          v36 = specialized RandomAccessCollection<>.hasCloseElement(potentialSource:target:closestDistance:closestElement:config:context:)(v76);
          v37 = MEMORY[0x1E69E6720];
          outlined destroy of SeedValue<GlassContainer.EntryState>(v59, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
          memcpy(v50, v48, 0x289uLL);
          outlined destroy of SeedValue<GlassContainer.EntryState>(v50, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, v37, type metadata accessor for Resolver?);
          if ((v36 & 1) == 0)
          {
            goto LABEL_48;
          }

LABEL_42:
          v32 = BYTE8(v53);
          if (BYTE8(v53) == 2)
          {
            goto LABEL_48;
          }

          v43 = v55;
          v45 = v54;
          v39 = v57;
          v41 = v56;
          v38 = v58[0];
          v33 = *&v58[1];
          v34 = BYTE8(v58[1]);
          memcpy(v61, v59, 0x289uLL);
          if (getEnumTag for AccessibilityTextLayoutProperties(v61) != 1)
          {
            memcpy(v31, v59, 0x289uLL);
            *(v31 + 649) = v32 & 1;
            *(v31 + 41) = v45;
            *(v31 + 42) = v43;
            *(v31 + 43) = v41;
            *(v31 + 44) = v39;
            *(v31 + 45) = v38;
            *(v31 + 92) = v33;
            *(v31 + 744) = v34 & 1;
            return _ViewInputs.base.modify(v31, v35);
          }
        }
      }

      _s7SwiftUI14GlassContainerO14MatchingResultVy_AC4ItemVGSgWOi0_(v61);
      v15 = v31;
      return memcpy(v15, v61, 0x2E9uLL);
    }

    memcpy(v61, __src, 0x289uLL);
    if (v61[1])
    {
      if (v21 && v61[2] == v22)
      {
LABEL_18:
        GlassContainer.Item.matchingResult(to:context:)(v70, &v62, v71);
        if (BYTE8(v71[0]))
        {
          v25 = *&v74 * *(&v74 + 1);
          v26 = *&v72 * *(&v72 + 1);
          v27 = *&v72 * *(&v72 + 1) >= *&v74 * *(&v74 + 1) ? *&v74 * *(&v74 + 1) : *&v72 * *(&v72 + 1);
          v28 = v25 > v26 ? *&v74 * *(&v74 + 1) : *&v72 * *(&v72 + 1);
          if (v27 != 0.0 && v28 != 0.0 && v28 / v27 >= 3.0 && v25 >= v26)
          {
            goto LABEL_35;
          }
        }

        v29 = *v71;
        if (*v71 <= v6)
        {
          v44 = 1;
        }

        if (*v71 < v20 && (BYTE8(v53) == 2 || (BYTE8(v53) & 1) != 0 || BYTE8(v71[0]) != 1))
        {
          outlined destroy of SeedValue<GlassContainer.EntryState>(v59, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
          memcpy(v76, v61, 0x289uLL);
          _ViewInputs.base.modify(v76, v30);
          v57 = v74;
          v58[0] = v75[0];
          *(v58 + 9) = *(v75 + 9);
          v53 = v71[0];
          v54 = v71[1];
          v55 = v72;
          v56 = v73;
          if (BYTE8(v71[0]) != 2)
          {
            *&v58[1] = v23;
            BYTE8(v58[1]) = 0;
          }

          memcpy(v77, v76, 0x289uLL);
          v42 = 1;
          v20 = v29;
        }

        else
        {
LABEL_35:
          memcpy(v76, v61, 0x289uLL);
          outlined destroy of GlassContainer.Item(v76);
          memcpy(v77, v59, 0x289uLL);
        }

        result = memcpy(v59, v77, 0x289uLL);
        goto LABEL_4;
      }
    }

    else if (!v21)
    {
      goto LABEL_18;
    }

    memcpy(v77, __src, 0x289uLL);
    result = outlined destroy of GlassContainer.Item(v77);
  }

  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

uint64_t Resolver.canMatchEntry(_:isRemoval:allowSelf:sourceResult:)(uint64_t a1, char a2, char a3, void *__src)
{
  v8 = *(a1 + 128);
  memcpy(__dst, __src, 0x1B1uLL);
  memcpy(v48, v4, sizeof(v48));
  v9 = *(v8 + 16);
  if (v9)
  {
    for (i = (v8 + 208); *i == 1; i += 656)
    {
      if (!--v9)
      {
        return v9 & 1;
      }
    }

    v11 = v48[32];
    v12 = v48[33];
    if (v48[33])
    {

      v13 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA040AccessibilityPrefersCrossFadeTransitionsI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v11);
    }

    else
    {
      v13 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA040AccessibilityPrefersCrossFadeTransitionsF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v48[32]);
    }

    if (v13 == 2)
    {
      v49[0] = v11;
      v49[1] = v12;
      LOBYTE(__srca[0]) = 3;
      v13 = EnvironmentValues.accessibilitySettingEnabled(_:)(__srca);
    }

    LOBYTE(v9) = v13 ^ 1;
    if (v13 & 1) == 0 && (a2)
    {
      memcpy(__srca, __dst, 0x1B1uLL);
      if (_s7SwiftUI14GlassContainerO5EntryVSgWOg(__srca) == 1)
      {
        goto LABEL_34;
      }

      memcpy(v49, __srca, 0x1B1uLL);
      v14 = *(v8 + 16);
      if (!v14)
      {
        goto LABEL_34;
      }

      v15 = (v8 + 208);
      while (*v15 == 1)
      {
        v15 += 656;
        if (!--v14)
        {
          goto LABEL_34;
        }
      }

      if ((__srca[42] & 0x100000000) != 0)
      {
        goto LABEL_34;
      }

      v46[0] = 2;
      outlined init with copy of GlassContainer.MatchingResult<GlassContainer.Entry>?(__dst, v32);
      if (specialized getter of containsSource #1 in Resolver.canReuseEntry(_:sourceResult:isRemoval:)(v46, v48, v49) & 1) != 0 || (__srca[54])
      {
        outlined destroy of GlassContainer.MatchingResult<GlassContainer.Item>?(__dst, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>?, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>, &type metadata for GlassContainer.Entry, type metadata accessor for GlassContainer.MatchingResult);
LABEL_34:
        memcpy(v46, v48, sizeof(v46));
        v21 = *(a1 + 80);
        v32[4] = *(a1 + 64);
        v32[5] = v21;
        v22 = *(a1 + 112);
        v32[6] = *(a1 + 96);
        v32[7] = v22;
        v23 = *(a1 + 16);
        v32[0] = *a1;
        v32[1] = v23;
        v24 = *(a1 + 48);
        v32[2] = *(a1 + 32);
        v32[3] = v24;
        v25 = *(a1 + 312);
        v44 = *(a1 + 296);
        v45[0] = v25;
        *(v45 + 12) = *(a1 + 324);
        v26 = *(a1 + 280);
        v42 = *(a1 + 264);
        v43 = v26;
        v27 = *(a1 + 200);
        v39 = *(a1 + 216);
        v28 = *(a1 + 248);
        v40 = *(a1 + 232);
        v41 = v28;
        v29 = *(a1 + 136);
        v35 = *(a1 + 152);
        v30 = *(a1 + 184);
        v36 = *(a1 + 168);
        v37 = v30;
        v38 = v27;
        v33 = v8;
        v34 = v29;
        LOBYTE(v9) = Resolver.containsItemsInEntry(_:allowSelf:)(v32, a3 & 1) ^ 1;
        return v9 & 1;
      }

      v50 = v48[9];
      v16 = *(v48[9] + 16);
      if (!v16)
      {
LABEL_33:
        outlined init with copy of (Int, Int, GlassContainer.Entry, GlassContainer.Entry)(&v50, v32, type metadata accessor for CollectionChanges<Int, Int>);
        outlined destroy of GlassContainer.MatchingResult<GlassContainer.Item>?(__dst, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>?, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>, &type metadata for GlassContainer.Entry, type metadata accessor for GlassContainer.MatchingResult);

        goto LABEL_34;
      }

      v17 = v48[9] + 64;
      v18 = (v48[9] + 64);
      while (1)
      {
        v19 = *v18;
        v18 += 40;
        if (v19 == 1 && __srca[53] >= *(v17 - 32) && __srca[53] < *(v17 - 24))
        {
          break;
        }

        v17 = v18;
        if (!--v16)
        {
          goto LABEL_33;
        }
      }

      outlined init with copy of (Int, Int, GlassContainer.Entry, GlassContainer.Entry)(&v50, v32, type metadata accessor for CollectionChanges<Int, Int>);
      outlined destroy of GlassContainer.MatchingResult<GlassContainer.Item>?(__dst, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>?, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>, &type metadata for GlassContainer.Entry, type metadata accessor for GlassContainer.MatchingResult);

      LOBYTE(v9) = 0;
    }
  }

  return v9 & 1;
}

uint64_t Resolver.adjustMatchedEntry(_:sourceResult:isRemoval:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v1;
  v5 = v4;
  v7 = v6;
  result = memcpy(v176, v8, 0x1B1uLL);
  if (v1[31])
  {
    return result;
  }

  specialized static Update.begin()();
  v10 = 0.0;
  v11 = 0.0;
  if (AGWeakAttributeGetAttribute() != *MEMORY[0x1E698D3F8])
  {
    AGWeakAttributeGetAttribute();
    InputValue = AGGraphGetInputValue();
    v10 = *InputValue;
    v11 = InputValue[1];
  }

  static Update.end()();
  v13 = specialized GlassContainer.MatchingResult.transitionAnchor(containerSize:)(v10);
  v15 = v14;
  v16 = *&v176[49] * *&v176[50];
  if (*&v176[45] * *&v176[46] >= *&v176[49] * *&v176[50])
  {
    v17 = *&v176[49] * *&v176[50];
  }

  else
  {
    v17 = *&v176[45] * *&v176[46];
  }

  if (v16 <= *&v176[45] * *&v176[46])
  {
    v16 = *&v176[45] * *&v176[46];
  }

  v18 = 1;
  if (v17 != 0.0 && v16 != 0.0)
  {
    v18 = v16 / v17 < 3.0;
  }

  v148 = v18;
  v157 = *v1;
  v19 = *(v7 + 328);
  GlassContainerCache.entryState(id:)(v19, v173);
  v155 = v1;
  v156 = v176[8];
  v150 = v176[16];
  v20 = v176[41];
  v22 = v1[32];
  v21 = v1[33];
  v153 = v5;
  v154 = v19;
  if (v5)
  {
    static GlassContainer.AppearanceSettings.match.getter(v175);
    v145 = *(v175 + 8);
    v23 = *v175;
    v24 = *(&v175[1] + 1);
    if (v21)
    {

      v25 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA025AccessibilityReduceMotionI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v22);
    }

    else
    {
      v25 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA025AccessibilityReduceMotionF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v22);
    }

    v29 = v150;
    if (v25 == 2)
    {
      *&v174[0] = v22;
      *(&v174[0] + 1) = v21;
      LOBYTE(v172[0]) = 2;
      v25 = EnvironmentValues.accessibilitySettingEnabled(_:)(v172);
    }

    v30 = 1.0;
    if ((v25 & 1) == 0)
    {
      v30 = v23;
    }

    *&v173[72] = v30;
    *&v173[80] = v145;
    *&v173[96] = v24;
    v31 = *&v173[40];
    if (v173[48])
    {
      v31 = 0.0;
    }

    *&v173[32] = v31;
    *&v173[56] = xmmword_18DDAA020;
    *&v173[40] = 0;
    v173[48] = 1;
    v173[416] = 2;
    *v173 = v20;
    v173[8] = 0;
    v32 = *(v150 + 16);
    if (v32)
    {
      v151 = v20;
      *&v175[0] = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32, 0);
      v33 = *&v175[0];
      v34 = *(*&v175[0] + 16);
      v35 = 24 * v34 + 48;
      v36 = (v29 + 48);
      do
      {
        v37 = *(v36 - 4);
        v38 = *(v36 - 1);
        v39 = *v36;
        *&v175[0] = v33;
        v40 = *(v33 + 24);

        if (v34 >= v40 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v34 + 1, 1);
          v33 = *&v175[0];
        }

        v36 += 82;
        *(v33 + 16) = v34 + 1;
        v41 = (v33 + v35);
        *(v41 - 4) = v37;
        *(v41 - 1) = v38;
        *v41 = v39;
        v35 += 24;
        ++v34;
        --v32;
      }

      while (v32);

      v42 = 0;
      *&v173[624] = v33;
      v43 = MEMORY[0x1E69E7CC0];
      v20 = v151;
      v19 = v154;
    }

    else
    {

      v42 = 0;
      v43 = MEMORY[0x1E69E7CC0];
      *&v173[624] = MEMORY[0x1E69E7CC0];
    }

    goto LABEL_105;
  }

  static GlassContainer.AppearanceSettings.match.getter(v175);
  v146 = *(v175 + 8);
  v26 = *v175;
  v27 = *(&v175[1] + 1);
  if (v21)
  {

    v28 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA025AccessibilityReduceMotionI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v22);
  }

  else
  {
    v28 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA025AccessibilityReduceMotionF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v22);
  }

  v149 = v7;
  if (v28 == 2)
  {
    *&v174[0] = v22;
    *(&v174[0] + 1) = v21;
    v44 = v171;
    LOBYTE(v172[0]) = 2;
    v28 = EnvironmentValues.accessibilitySettingEnabled(_:)(v172);
  }

  else
  {
    v44 = v171;
  }

  v45 = 1.0;
  if (v28)
  {
    v46 = 1.0;
  }

  else
  {
    v46 = v26;
  }

  *&v173[80] = v146;
  *&v173[96] = v27;
  if (!v173[48])
  {
    v45 = *&v173[40];
  }

  *&v173[32] = v45;
  *&v173[72] = v46;
  *&v173[64] = v27;
  *&v173[56] = 0;
  *&v173[40] = 0;
  v173[48] = 1;
  v173[416] = 0;
  v47 = *&v176[51];
  v48 = *&v176[52];
  v49 = v1[33];
  v50 = v3[34];
  v51 = v3[32];
  if ((Transaction.shouldUseGlassAnimation.getter(v50) & 1) == 0)
  {
    goto LABEL_46;
  }

  if (v49)
  {

    v52 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA025AccessibilityReduceMotionI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v51);
  }

  else
  {
    v52 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA025AccessibilityReduceMotionF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v51);
  }

  if (v52 == 2)
  {
    *&v175[0] = v51;
    *(&v175[0] + 1) = v49;
    LOBYTE(v174[0]) = 2;
    v49 = v175;
    if (EnvironmentValues.accessibilitySettingEnabled(_:)(v174))
    {
LABEL_46:
      v2 = 0;
      goto LABEL_59;
    }
  }

  else if (v52)
  {
    goto LABEL_46;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE030GlassContainerSettingsOverrideF033_C0CCB6EB7DEF7555840E44B500337668LLVG_Tt2g5(v50, v175);
  if (v175[3])
  {
    type metadata accessor for GlassContainerPTDomain();
    v158.receiver = swift_getObjCClassFromMetadata();
    v158.super_class = &OBJC_METACLASS____TtC7SwiftUI22GlassContainerPTDomain;
    v53 = objc_msgSendSuper2(&v158, sel_rootSettings);
    if (!v53)
    {
LABEL_206:
      __break(1u);
      goto LABEL_207;
    }

    v54 = v53;
    type metadata accessor for GlassContainerPTSettings();
    v55 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7SwiftUI24GlassContainerPTSettings_transition);

    v49 = v55;
    GlassContainerTransitionPTSettings.transition.getter(v174);

    v56 = *(&v174[1] + 1);
    v57 = *(&v174[2] + 1);
    v58 = *&v174[2];
    if (one-time initialization token for enableAdjustments != -1)
    {
      v144 = *(&v174[1] + 1);
      v147 = *(&v174[2] + 1);
      v142 = *&v174[2];
      swift_once();
      v58 = v142;
      v56 = v144;
      v57 = v147;
    }

    if (!enableAdjustments)
    {
      Spring.init(duration:bounce:)(0.5, 0.3);
      v57 = 0.2;
      v58 = 0.1;
      v56 = 0.4;
    }
  }

  else
  {
    v57 = *(&v175[2] + 1);
    v58 = *&v175[2];
    v56 = *(&v175[1] + 1);
  }

  if (__OFADD__(*&v173[104], 1))
  {
    __break(1u);
    goto LABEL_201;
  }

  *&v173[112] = *&v173[104] + 1;
  v59 = sqrt(v47 * v47 + v48 * v48) / sqrt(v10 * v10 + v11 * v11) * v56;
  if (v57 >= v59)
  {
    v57 = v59;
  }

  *&v173[120] = v58 + v57;
  v2 = 1;
LABEL_59:
  v60 = v3[32];
  v49 = v3[33];
  if ((Transaction.shouldUseGlassAnimation.getter(v50) & 1) == 0)
  {
    v62 = 0;
    goto LABEL_78;
  }

  if (v49)
  {

    v61 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA025AccessibilityReduceMotionI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v60);
  }

  else
  {
    v61 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA025AccessibilityReduceMotionF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v60);
  }

  if (v61 == 2)
  {
    *&v175[0] = v60;
    *(&v175[0] + 1) = v49;
    LOBYTE(v174[0]) = 2;
    v49 = v175;
    if (EnvironmentValues.accessibilitySettingEnabled(_:)(v174))
    {
LABEL_66:
      v62 = 0;
      goto LABEL_78;
    }
  }

  else if (v61)
  {
    goto LABEL_66;
  }

  if (__OFADD__(*&v173[128], 1))
  {
LABEL_201:
    __break(1u);
LABEL_202:
    v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 2) + 1, 1, v49);
    goto LABEL_159;
  }

  *&v173[160] = *&v173[128] + 1;
  *&v173[136] = v13;
  *&v173[144] = v15;
  v173[152] = 0;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE030GlassContainerSettingsOverrideF033_C0CCB6EB7DEF7555840E44B500337668LLVG_Tt2g5(v50, v175);
  v174[6] = v175[12];
  v174[7] = v175[13];
  v174[8] = v175[14];
  *(&v174[8] + 9) = *(&v175[14] + 9);
  v174[2] = v175[8];
  v174[3] = v175[9];
  v174[4] = v175[10];
  v174[5] = v175[11];
  v174[0] = v175[6];
  v174[1] = v175[7];
  if (_s7SwiftUI14GlassContainerO18ScalePulseSettingsVSgWOg(v174) == 1)
  {
    type metadata accessor for GlassContainerPTDomain();
    v159.receiver = swift_getObjCClassFromMetadata();
    v159.super_class = &OBJC_METACLASS____TtC7SwiftUI22GlassContainerPTDomain;
    v63 = objc_msgSendSuper2(&v159, sel_rootSettings);
    if (!v63)
    {
LABEL_207:
      __break(1u);
      goto LABEL_208;
    }

    v64 = v63;
    type metadata accessor for GlassContainerPTSettings();
    v65 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7SwiftUI24GlassContainerPTSettings_scalePulse);

    GlassContainerScalePulsePTSettings.scalePulse.getter(v171);
    if (one-time initialization token for enableAdjustments != -1)
    {
      swift_once();
    }

    if (enableAdjustments)
    {
      v172[6] = v171[6];
      v172[7] = v171[7];
      v172[8] = v171[8];
      *&v172[9] = *&v171[9];
      v172[2] = v171[2];
      v172[3] = v171[3];
      v172[4] = v171[4];
      v172[5] = v171[5];
      v172[0] = v171[0];
      v172[1] = v171[1];
    }

    else
    {
      static GlassContainer.ScalePulseSettings.defaultValue.getter(v172);
    }
  }

  else
  {
    v172[6] = v175[12];
    v172[7] = v175[13];
    v172[8] = v175[14];
    *&v172[9] = *&v175[15];
    v172[2] = v175[8];
    v172[3] = v175[9];
    v172[4] = v175[10];
    v172[5] = v175[11];
    v172[0] = v175[6];
    v172[1] = v175[7];
  }

  *&v173[264] = v172[6];
  *&v173[280] = v172[7];
  *&v173[296] = v172[8];
  *&v173[200] = v172[2];
  *&v173[216] = v172[3];
  *&v173[232] = v172[4];
  *&v173[248] = v172[5];
  *&v173[168] = v172[0];
  *&v173[312] = *&v172[9];
  v62 = 1;
  *&v173[184] = v172[1];
LABEL_78:
  v67 = v3[32];
  v66 = v3[33];
  if (Transaction.shouldUseGlassAnimation.getter(v50))
  {
    v68 = v150;
    if (v66)
    {

      v69 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA025AccessibilityReduceMotionI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v67);
    }

    else
    {
      v69 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA025AccessibilityReduceMotionF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v67);
    }

    if (v69 == 2)
    {
      *&v175[0] = v67;
      *(&v175[0] + 1) = v66;
      LOBYTE(v174[0]) = 2;
      v66 = v175;
      if (!EnvironmentValues.accessibilitySettingEnabled(_:)(v174))
      {
LABEL_89:
        if (__OFADD__(*&v173[320], 1))
        {
          __break(1u);
        }

        else
        {
          *&v173[336] = *&v173[320] + 1;
          v66 = *&v173[328];
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_91:
            v71 = *(v66 + 2);
            v70 = *(v66 + 3);
            if (v71 >= v70 >> 1)
            {
              v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v71 + 1, 1, v66);
            }

            *(v66 + 2) = v71 + 1;
            v72 = &v66[16 * v71];
            *(v72 + 4) = v47;
            *(v72 + 5) = v48;
            *&v173[328] = v66;
            _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE030GlassContainerSettingsOverrideF033_C0CCB6EB7DEF7555840E44B500337668LLVG_Tt2g5(v50, v175);
            if (BYTE8(v175[20]))
            {
              static GlassContainer.TranslationKickSettings.default.getter(v174);
            }

            else
            {
              v174[2] = v175[18];
              v174[3] = v175[19];
              *&v174[4] = *&v175[20];
              v174[0] = v175[16];
              v174[1] = v175[17];
            }

            v68 = v150;
            *&v173[376] = v174[2];
            *&v173[392] = v174[3];
            *&v173[344] = v174[0];
            *&v173[360] = v174[1];
            *&v173[408] = *&v174[4];
            goto LABEL_97;
          }
        }

        v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v66 + 2) + 1, 1, v66);
        goto LABEL_91;
      }
    }

    else if ((v69 & 1) == 0)
    {
      goto LABEL_89;
    }
  }

  else
  {
    v68 = v150;
  }

  if (((v2 | v62) & 1) == 0)
  {
    v42 = 0;
    *v173 = v20;
    v173[8] = 0;
    goto LABEL_98;
  }

LABEL_97:
  *v173 = v20;
  v173[8] = 0;
  v42 = 1;
LABEL_98:

  v43 = MEMORY[0x1E69E7CC0];
  *&v173[624] = MEMORY[0x1E69E7CC0];
  v73 = *(v68 + 16);
  if (v73)
  {
    v143 = v42;
    v152 = v20;
    *&v175[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v73, 0);
    v43 = *&v175[0];
    v74 = *(*&v175[0] + 16);
    v75 = 24 * v74 + 48;
    v76 = (v68 + 48);
    do
    {
      v77 = *(v76 - 4);
      v78 = *(v76 - 1);
      v79 = *v76;
      *&v175[0] = v43;
      v80 = *(v43 + 24);

      if (v74 >= v80 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v74 + 1, 1);
        v43 = *&v175[0];
      }

      v76 += 82;
      *(v43 + 16) = v74 + 1;
      v81 = (v43 + v75);
      *(v81 - 4) = v77;
      *(v81 - 1) = v78;
      *v81 = v79;
      v75 += 24;
      ++v74;
      --v73;
    }

    while (v73);
    v7 = v149;
    v20 = v152;
    v19 = v154;
    v42 = v143;
  }

  else
  {
    v7 = v149;
  }

LABEL_105:

  *&v173[16] = v43;
  v82 = *(v7 + 64);
  v83 = v156;
  v84 = v157;
  if (v156)
  {
    if (v82)
    {
      if (v156 == v82)
      {
        goto LABEL_127;
      }

      v85 = *(*v156 + 88);
      swift_retain_n();

      v87 = v85(v86);

      v83 = v156;
      if (v87)
      {

        goto LABEL_127;
      }
    }

    else
    {

      v83 = v156;
    }

LABEL_113:
    if (one-time initialization token for clear != -1)
    {
      swift_once();
      v83 = v156;
    }

    v88 = static Color.clear;
    if (v153)
    {
      v89 = v83;
    }

    else
    {
      v89 = v82;
    }

    if (v153)
    {
      v90 = v82;
    }

    else
    {
      v90 = v83;
    }

    if (v90)
    {
      if (v89)
      {
LABEL_123:
        v88 = v89;
LABEL_126:
        type metadata accessor for ColorBox<Color.MixProvider>();
        v91 = swift_allocObject();
        *(v91 + 16) = v90;
        *(v91 + 24) = v88;
        *(v91 + 32) = 2;
        *(v91 + 36) = 0;
        *(v7 + 64) = v91;
        v92 = swift_allocObject();
        *(v92 + 16) = v90;
        *(v92 + 24) = v88;
        *(v92 + 32) = 2;
        *(v92 + 36) = 1065353216;

        *&v173[616] = v92;
        v84 = v157;
        goto LABEL_127;
      }
    }

    else
    {

      v90 = v88;
      if (v89)
      {
        goto LABEL_123;
      }
    }

    goto LABEL_126;
  }

  if (v82)
  {
    goto LABEL_113;
  }

LABEL_127:
  memcpy(v170, v173, sizeof(v170));
  swift_beginAccess();
  v93 = *(v84 + 176);
  memcpy(v169, v170, 0x278uLL);
  v169[158] = v93;
  _ViewInputs.base.modify(v169, v94);
  memcpy(v171, v169, 0x27CuLL);
  memcpy(v172, v169, 0x27CuLL);
  if (_s7SwiftUI9SeedValueVyAA14GlassContainerO10EntryStateVGSgWOg(v172) == 1)
  {
    outlined init with copy of GlassContainer.EntryState(v170, v175);
    specialized Dictionary._Variant.removeValue(forKey:)(v19, v174);
    memcpy(v175, v174, 0x27CuLL);
    outlined destroy of GlassContainer.MatchingResult<GlassContainer.Item>?(v175, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>?, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>, &type metadata for GlassContainer.EntryState, type metadata accessor for SeedValue);
  }

  else
  {
    memcpy(v175, v171, 0x27CuLL);
    outlined init with copy of GlassContainer.EntryState(v170, v174);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v174[0] = *(v84 + 168);
    *(v84 + 168) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v175, v19, isUniquelyReferenced_nonNull_native);
    *(v84 + 168) = *&v174[0];
  }

  swift_endAccess();
  memcpy(__dst, v173, sizeof(__dst));
  outlined destroy of GlassContainer.EntryState(__dst);
  if (v42)
  {
    ++*(v84 + 200);
  }

  v44 = v166;
  GlassContainer.Entry.resetTransition()();
  ++*(v7 + 336);
  v50 = v20;
  GlassContainerCache.entryState(id:)(v20, __src);
  v96 = *(v155 + 33);
  v19 = *(v155 + 34);
  v97 = *(v155 + 32);
  if ((Transaction.shouldUseGlassAnimation.getter(v19) & 1) == 0)
  {
    goto LABEL_138;
  }

  if (v96)
  {

    v98 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA025AccessibilityReduceMotionI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v97);
  }

  else
  {
    v98 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA025AccessibilityReduceMotionF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v97);
  }

  if (v98 != 2)
  {
    if ((v98 & 1) == 0)
    {
      goto LABEL_141;
    }

LABEL_138:
    if (v153)
    {
      goto LABEL_165;
    }

    goto LABEL_150;
  }

  *&v174[0] = v97;
  *(&v174[0] + 1) = v96;
  LOBYTE(v166[0]) = 2;
  if (EnvironmentValues.accessibilitySettingEnabled(_:)(v166))
  {
    goto LABEL_138;
  }

LABEL_141:
  ++__src[16];
  *&__src[17] = v13;
  __src[18] = v15;
  LOBYTE(__src[19]) = v148;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE030GlassContainerSettingsOverrideF033_C0CCB6EB7DEF7555840E44B500337668LLVG_Tt2g5(v19, v174);
  v166[6] = v174[12];
  v166[7] = v174[13];
  v166[8] = v174[14];
  *(&v166[8] + 9) = *(&v174[14] + 9);
  v166[2] = v174[8];
  v166[3] = v174[9];
  v166[4] = v174[10];
  v166[5] = v174[11];
  v166[0] = v174[6];
  v166[1] = v174[7];
  if (_s7SwiftUI14GlassContainerO18ScalePulseSettingsVSgWOg(v166) != 1)
  {
    v165[6] = v174[12];
    v165[7] = v174[13];
    v165[8] = v174[14];
    v165[2] = v174[8];
    v165[3] = v174[9];
    v165[4] = v174[10];
    v165[5] = v174[11];
    v165[0] = v174[6];
    *&v165[9] = *&v174[15];
    v165[1] = v174[7];
    v102 = v153;
    goto LABEL_149;
  }

  type metadata accessor for GlassContainerPTDomain();
  v160.receiver = swift_getObjCClassFromMetadata();
  v160.super_class = &OBJC_METACLASS____TtC7SwiftUI22GlassContainerPTDomain;
  v99 = objc_msgSendSuper2(&v160, sel_rootSettings);
  if (!v99)
  {
    __break(1u);
    goto LABEL_206;
  }

  v100 = v99;
  type metadata accessor for GlassContainerPTSettings();
  v101 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7SwiftUI24GlassContainerPTSettings_scalePulse);

  GlassContainerScalePulsePTSettings.scalePulse.getter(v162);
  if (one-time initialization token for enableAdjustments != -1)
  {
    swift_once();
  }

  v102 = v153;
  if (enableAdjustments)
  {
    v165[6] = v162[6];
    v165[7] = v162[7];
    v165[8] = v162[8];
    v165[2] = v162[2];
    v165[3] = v162[3];
    v165[4] = v162[4];
    v165[5] = v162[5];
    v165[0] = v162[0];
    *&v165[9] = *&v162[9];
    v165[1] = v162[1];
  }

  else
  {
    static GlassContainer.ScalePulseSettings.defaultValue.getter(v165);
  }

LABEL_149:
  *&__src[33] = v165[6];
  *&__src[35] = v165[7];
  *&__src[37] = v165[8];
  __src[39] = *&v165[9];
  *&__src[25] = v165[2];
  *&__src[27] = v165[3];
  *&__src[29] = v165[4];
  *&__src[31] = v165[5];
  *&__src[21] = v165[0];
  *&__src[23] = v165[1];
  if (v102)
  {
    goto LABEL_165;
  }

LABEL_150:
  v2 = &v177;
  v177 = *&v176[51];
  v104 = *(v155 + 32);
  v103 = *(v155 + 33);
  if ((Transaction.shouldUseGlassAnimation.getter(v19) & 1) == 0)
  {
    goto LABEL_165;
  }

  if (v103)
  {

    v105 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA025AccessibilityReduceMotionI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v104);
  }

  else
  {
    v105 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA025AccessibilityReduceMotionF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v104);
  }

  if (v105 == 2)
  {
    *&v174[0] = v104;
    *(&v174[0] + 1) = v103;
    LOBYTE(v166[0]) = 2;
    if (EnvironmentValues.accessibilitySettingEnabled(_:)(v166))
    {
      goto LABEL_165;
    }
  }

  else if (v105)
  {
    goto LABEL_165;
  }

  v49 = __src[41];
  ++__src[40];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_202;
  }

LABEL_159:
  v107 = *(v49 + 2);
  v106 = *(v49 + 3);
  if (v107 >= v106 >> 1)
  {
    v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v106 > 1), v107 + 1, 1, v49);
  }

  *(v49 + 2) = v107 + 1;
  *&v49[16 * v107 + 32] = *v2;
  __src[41] = v49;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE030GlassContainerSettingsOverrideF033_C0CCB6EB7DEF7555840E44B500337668LLVG_Tt2g5(v19, v174);
  if (BYTE8(v174[20]))
  {
    static GlassContainer.TranslationKickSettings.default.getter(v166);
  }

  else
  {
    v108 = v174[19];
    v44[2] = v174[18];
    v44[3] = v108;
    *&v166[4] = *&v174[20];
    v109 = v174[17];
    *v44 = v174[16];
    v44[1] = v109;
  }

  v110 = v44[3];
  *&__src[47] = v44[2];
  *&__src[49] = v110;
  v111 = v44[1];
  *&__src[43] = *v44;
  *&__src[45] = v111;
  __src[51] = *&v166[4];
LABEL_165:
  memcpy(v164, __src, sizeof(v164));
  swift_beginAccess();
  v112 = *(v157 + 176);
  memcpy(v162, v164, 0x278uLL);
  DWORD2(v162[39]) = v112;
  _ViewInputs.base.modify(v162, v113);
  memcpy(v165, v162, 0x27CuLL);
  memcpy(v166, v162, 0x27CuLL);
  if (_s7SwiftUI9SeedValueVyAA14GlassContainerO10EntryStateVGSgWOg(v166) == 1)
  {
    outlined init with copy of GlassContainer.EntryState(v164, v174);
    v114 = v50;
    specialized Dictionary._Variant.removeValue(forKey:)(v50, v161);
    memcpy(v174, v161, 0x27CuLL);
    outlined destroy of GlassContainer.MatchingResult<GlassContainer.Item>?(v174, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>?, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>, &type metadata for GlassContainer.EntryState, type metadata accessor for SeedValue);
  }

  else
  {
    memcpy(v174, v165, 0x27CuLL);
    outlined init with copy of GlassContainer.EntryState(v164, v161);
    v115 = swift_isUniquelyReferenced_nonNull_native();
    v161[0] = *(v157 + 168);
    v114 = v50;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v174, v50, v115);
    *(v157 + 168) = v161[0];
  }

  v116 = v155;
  swift_endAccess();
  memcpy(v161, __src, 0x278uLL);
  outlined destroy of GlassContainer.EntryState(v161);
  v117 = swift_isUniquelyReferenced_nonNull_native();
  v163 = *(v155 + 12);
  v118 = v163;
  v120 = specialized __RawDictionaryStorage.find<A>(_:)(v114);
  v121 = *(v118 + 2);
  v122 = (v119 & 1) == 0;
  v123 = v121 + v122;
  if (!__OFADD__(v121, v122))
  {
    v124 = v119;
    if (*(v118 + 3) >= v123)
    {
      if (v117)
      {
        *(v155 + 12) = v118;
        if (v119)
        {
          goto LABEL_176;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v118 = v163;
        *(v155 + 12) = v163;
        if (v124)
        {
          goto LABEL_176;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v123, v117);
      v118 = v163;
      v125 = specialized __RawDictionaryStorage.find<A>(_:)(v114);
      if ((v124 & 1) != (v126 & 1))
      {
        goto LABEL_208;
      }

      v120 = v125;
      *(v155 + 12) = v118;
      if (v124)
      {
LABEL_176:
        v44 = *(v118 + 7);
        v118 = *(v44 + v120);
        v127 = swift_isUniquelyReferenced_nonNull_native();
        *(v44 + v120) = v118;
        if (v127)
        {
          goto LABEL_177;
        }

        goto LABEL_193;
      }
    }

    specialized _NativeDictionary._insert(at:key:value:)(v120, v114, MEMORY[0x1E69E7CC0], v118);
    goto LABEL_176;
  }

  __break(1u);
LABEL_193:
  v118 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v118 + 2) + 1, 1, v118);
  *(v44 + v120) = v118;
LABEL_177:
  v129 = *(v118 + 2);
  v128 = *(v118 + 3);
  if (v129 >= v128 >> 1)
  {
    v118 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v128 > 1), v129 + 1, 1, v118);
    *(v44 + v120) = v118;
  }

  *(v118 + 2) = v129 + 1;
  *&v118[8 * v129 + 32] = v154;
  v130 = swift_isUniquelyReferenced_nonNull_native();
  v163 = *(v155 + 13);
  v131 = v163;
  v133 = specialized __RawDictionaryStorage.find<A>(_:)(v154);
  v134 = *(v131 + 2);
  v135 = (v132 & 1) == 0;
  v136 = v134 + v135;
  if (__OFADD__(v134, v135))
  {
    __break(1u);
    goto LABEL_195;
  }

  v137 = v132;
  if (*(v131 + 3) < v136)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v136, v130);
    v131 = v163;
    v138 = specialized __RawDictionaryStorage.find<A>(_:)(v154);
    if ((v137 & 1) == (v139 & 1))
    {
      v133 = v138;
      *(v155 + 13) = v131;
      if (v137)
      {
        goto LABEL_187;
      }

      goto LABEL_186;
    }

LABEL_208:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  if (v130)
  {
    *(v155 + 13) = v131;
    if (v132)
    {
      goto LABEL_187;
    }

    goto LABEL_186;
  }

  specialized _NativeDictionary.copy()();
  v131 = v163;
  *(v155 + 13) = v163;
  if ((v137 & 1) == 0)
  {
LABEL_186:
    specialized _NativeDictionary._insert(at:key:value:)(v133, v154, MEMORY[0x1E69E7CC0], v131);
  }

LABEL_187:
  v44 = *(v131 + 7);
  v116 = *(v44 + v133);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v44 + v133) = v116;
  if ((result & 1) == 0)
  {
LABEL_195:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v116 + 2) + 1, 1, v116);
    v116 = result;
    *(v44 + v133) = result;
  }

  v141 = *(v116 + 2);
  v140 = *(v116 + 3);
  if (v141 >= v140 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v140 > 1), v141 + 1, 1, v116);
    v116 = result;
    *(v44 + v133) = result;
  }

  *(v116 + 2) = v141 + 1;
  *&v116[8 * v141 + 32] = v114;
  return result;
}

uint64_t Resolver.canMaterializeEntry(_:isRemoval:)(uint64_t a1, char a2)
{
  v3 = *(a1 + 128);
  v4 = *(v3 + 16);
  if (!v4)
  {
    return 1;
  }

  v5 = *(v2 + 8);
  if (*(v3 + 208) == 1 && !(*(v3 + 192) | *(v3 + 200) | *(v3 + 184)))
  {
    return 0;
  }

  if ((a2 & 1) == 0)
  {
    return 1;
  }

  v6 = 0;
  v7 = *(v5 + 16);
  while (1)
  {
    memcpy(__dst, (v3 + 32 + 656 * v6), 0x289uLL);
    if (v7)
    {
      break;
    }

LABEL_15:
    if (++v6 == v4)
    {
      return 1;
    }

    if (v6 >= *(v3 + 16))
    {
      __break(1u);
      return 1;
    }
  }

  v8 = __dst[0];
  result = outlined init with copy of GlassContainer.Item(__dst, v16);
  v10 = 0;
  while (v10 != *(v5 + 16))
  {
    v11 = v10 + 1;
    v12 = *(v5 + 160 + 344 * v10);
    v13 = (v12 + 32);
    v14 = *(v12 + 16) + 1;
    while (--v14)
    {
      v15 = *v13;
      v13 += 164;
      if (v15 == v8)
      {
        outlined destroy of GlassContainer.Item(__dst);
        return 0;
      }
    }

    v10 = v11;
    if (v11 == v7)
    {
      outlined destroy of GlassContainer.Item(__dst);
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void Resolver.adjustMaterializedEntry(_:isRemoval:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  memcpy(__dst, v1, sizeof(__dst));
  v6 = __dst[24];
  v7 = __dst[0];
  v8 = *(v5 + 328);
  GlassContainerCache.entryState(id:)(v8, __src);
  closure #1 in Resolver.adjustMaterializedEntry(_:isRemoval:)(__src, v3, __dst, v5, v6);
  memcpy(v17, __src, sizeof(v17));
  swift_beginAccess();
  v9 = *(v7 + 176);
  memcpy(v13, v17, 0x278uLL);
  v13[158] = v9;
  _ViewInputs.base.modify(v13, v10);
  memcpy(v18, v13, sizeof(v18));
  memcpy(v19, v13, 0x27CuLL);
  if (_s7SwiftUI9SeedValueVyAA14GlassContainerO10EntryStateVGSgWOg(v19) == 1)
  {
    outlined init with copy of GlassContainer.EntryState(v17, v15);
    specialized Dictionary._Variant.removeValue(forKey:)(v8, v12);
    memcpy(v15, v12, 0x27CuLL);
    outlined destroy of GlassContainer.MatchingResult<GlassContainer.Item>?(v15, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>?, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>, &type metadata for GlassContainer.EntryState, type metadata accessor for SeedValue);
  }

  else
  {
    memcpy(v15, v18, 0x27CuLL);
    outlined init with copy of GlassContainer.EntryState(v17, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12[0] = *(v7 + 168);
    *(v7 + 168) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, v8, isUniquelyReferenced_nonNull_native);
    *(v7 + 168) = v12[0];
  }

  swift_endAccess();
  memcpy(v12, __src, 0x278uLL);
  outlined destroy of GlassContainer.EntryState(v12);
  GlassContainer.Entry.resetTransition()();
  ++*(v5 + 336);
}

id adjustTransitionState #1 (entryID:) in Resolver.postProcessEntries()(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v5 = *v1;

  GlassContainerCache.entryState(id:)(v4, __src);
  v6 = 0;
  __src[5] = 0;
  LOBYTE(__src[6]) = 0;
  v7 = __src[13];
  v8 = __src[14];
  v9 = *&__src[15];
  memset(&__src[13], 0, 24);
  if (!(v7 | v8))
  {
    v6 = v9 == 0.0;
  }

  v10 = v2[33];
  v11 = v2[34];
  v12 = v2[32];

  if ((Transaction.shouldUseGlassAnimation.getter(v11) & 1) == 0)
  {
    goto LABEL_16;
  }

  if (v10)
  {

    v13 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA025AccessibilityReduceMotionI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v12);
  }

  else
  {
    v13 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA025AccessibilityReduceMotionF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v12);
  }

  if (v13 != 2)
  {
    if ((v13 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_16:

    goto LABEL_20;
  }

  *&v73[0] = v12;
  *(&v73[0] + 1) = v10;
  LOBYTE(v71[0]) = 2;
  if (EnvironmentValues.accessibilitySettingEnabled(_:)(v71))
  {
    goto LABEL_16;
  }

LABEL_9:
  ++__src[16];
  __asm { FMOV            V0.2D, #0.5 }

  *&__src[17] = _Q0;
  LOBYTE(__src[19]) = 0;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE030GlassContainerSettingsOverrideF033_C0CCB6EB7DEF7555840E44B500337668LLVG_Tt2g5(v11, v73);
  v20 = *(&v73[14] + 1);
  v19 = *&v73[14];
  v21 = *&v73[15];
  v50 = v73[7];
  v53 = v73[6];
  v71[0] = v73[6];
  v71[1] = v73[7];
  v61 = v73[8];
  v63 = v73[9];
  v71[2] = v73[8];
  v71[3] = v73[9];
  v56 = v73[11];
  v59 = v73[10];
  v71[4] = v73[10];
  v71[5] = v73[11];
  v44 = v73[13];
  v47 = v73[12];
  v71[6] = v73[12];
  v71[7] = v73[13];
  v71[8] = v73[14];
  *&v71[9] = *&v73[15];
  BYTE8(v71[9]) = BYTE8(v73[15]);
  if (_s7SwiftUI14GlassContainerO18ScalePulseSettingsVSgWOg(v71) == 1)
  {
    type metadata accessor for GlassContainerPTDomain();
    v66.receiver = swift_getObjCClassFromMetadata();
    v66.super_class = &OBJC_METACLASS____TtC7SwiftUI22GlassContainerPTDomain;
    result = objc_msgSendSuper2(&v66, sel_rootSettings);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v23 = result;
    type metadata accessor for GlassContainerPTSettings();
    v24 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7SwiftUI24GlassContainerPTSettings_scalePulse);

    GlassContainerScalePulsePTSettings.scalePulse.getter(v70);
    v25 = v70[1];
    v26 = v70[0];
    v27 = v70[3];
    v28 = v70[2];
    v29 = v70[5];
    v30 = v70[4];
    v31 = v70[7];
    v32 = v70[6];
    v20 = *(&v70[8] + 1);
    v19 = *&v70[8];
    v21 = *&v70[9];
    if (one-time initialization token for enableAdjustments != -1)
    {
      v62 = v70[2];
      v65 = v70[3];
      v58 = v70[5];
      v60 = v70[4];
      v52 = v70[1];
      v55 = v70[0];
      v46 = v70[7];
      v49 = v70[6];
      swift_once();
      v31 = v46;
      v32 = v49;
      v25 = v52;
      v26 = v55;
      v29 = v58;
      v30 = v60;
      v28 = v62;
      v27 = v65;
    }

    if (enableAdjustments)
    {
      v59 = v30;
      v61 = v28;
      v63 = v27;
      v54 = v26;
      v57 = v29;
      v48 = v32;
      v51 = v25;
      v45 = v31;

      v34 = v45;
      v33 = v48;
      _Q2 = v51;
      v35 = v54;
      v37 = v57;
    }

    else
    {
      Spring.init(duration:bounce:)(0.5, 0.3);
      v20 = *(&v70[0] + 1);
      v19 = *&v70[0];
      v21 = *&v70[1];
      Spring.init(duration:bounce:)(0.35, 0.6);
      v61 = v70[0];
      v64 = *&v70[1];
      Spring.init(duration:bounce:)(0.5, 0.5);
      *&v38 = v64;
      *(&v38 + 1) = v68[0];
      v63 = v38;
      v59 = *&v68[1];
      Spring.init(duration:bounce:)(0.5, 0.6);

      v39 = &unk_18DDA9FF8;
      *&v37 = *&vld1q_dup_f64(v39);
      *(&v37 + 1) = v67[0];
      v33 = *&v67[1];
      v35 = vdupq_n_s64(0x3FF3333333333333uLL);
      v34 = xmmword_18DDAA030;
      __asm { FMOV            V2.2D, #16.0 }
    }
  }

  else
  {

    v35 = v53;
    v37 = v56;
    v33 = v47;
    _Q2 = v50;
    v34 = v44;
  }

  *&__src[21] = v35;
  *&__src[23] = _Q2;
  *&__src[25] = v61;
  *&__src[27] = v63;
  *&__src[29] = v59;
  *&__src[31] = v37;
  *&__src[33] = v33;
  *&__src[35] = v34;
  __src[37] = v19;
  __src[38] = v20;
  __src[39] = v21;
LABEL_20:
  memcpy(__dst, __src, sizeof(__dst));
  swift_beginAccess();
  v40 = *(v5 + 176);
  memcpy(v68, __dst, 0x278uLL);
  LODWORD(v68[79]) = v40;
  _ViewInputs.base.modify(v68, v41);
  memcpy(v70, v68, 0x27CuLL);
  memcpy(v71, v68, 0x27CuLL);
  if (_s7SwiftUI9SeedValueVyAA14GlassContainerO10EntryStateVGSgWOg(v71) == 1)
  {
    outlined init with copy of GlassContainer.EntryState(__dst, v73);
    specialized Dictionary._Variant.removeValue(forKey:)(v4, v67);
    memcpy(v73, v67, 0x27CuLL);
    outlined destroy of GlassContainer.MatchingResult<GlassContainer.Item>?(v73, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>?, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>, &type metadata for GlassContainer.EntryState, type metadata accessor for SeedValue);
  }

  else
  {
    memcpy(v73, v70, 0x27CuLL);
    outlined init with copy of GlassContainer.EntryState(__dst, v67);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67[0] = *(v5 + 168);
    *(v5 + 168) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v73, v4, isUniquelyReferenced_nonNull_native);
    *(v5 + 168) = v67[0];
  }

  swift_endAccess();

  memcpy(v67, __src, 0x278uLL);
  result = outlined destroy of GlassContainer.EntryState(v67);
  if (!v6)
  {
    v43 = *(*v2 + 200) - 1;
    *(*v2 + 200) = v43;
    if (!v43)
    {

      GlassContainerCache.invalidateResolved(transaction:)(0);
    }
  }

  return result;
}

uint64_t Resolver.containsItemsInEntry(_:allowSelf:)(uint64_t a1, char a2)
{
  v3 = *(a1 + 128);
  v584 = *(v3 + 16);
  if (!v584)
  {
    return 0;
  }

  v4 = 0;
  v5 = *a1;
  v6 = *(a1 + 8);
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(v2 + 8);
  v11 = *(v10 + 16);
  v12 = v3 + 32;
  v585 = v10 + 32;
  v583 = v6 >> 6;
  v581 = v6 & 0x3F;
  v582 = v3 + 32;
  do
  {
    memcpy(__dst, (v12 + 656 * v4), 0x289uLL);
    if (!v11)
    {
      goto LABEL_560;
    }

    v13 = __dst[0];
    result = outlined init with copy of GlassContainer.Item(__dst, v601);
    if (!*(v10 + 16))
    {
LABEL_565:
      __break(1u);
      return result;
    }

    v15 = 0;
    while (1)
    {
      v586 = v15;
      memcpy(v601, (v585 + 344 * v15), 0x154uLL);
      if ((a2 & 1) == 0)
      {
        outlined init with copy of GlassContainer.Entry(v601, &v599);
        goto LABEL_30;
      }

      v16 = v601[4];
      v592[0] = v5;
      v592[1] = v6;
      v592[2] = v8;
      v592[3] = v7;
      v593 = v9;
      v594 = v601[0];
      v595 = v601[1];
      v596 = v601[2];
      v597 = v601[3];
      v598 = v601[4];
      if (v9)
      {
        if (v9 != 1)
        {
          if (LOBYTE(v601[4]) == 2 && !(v601[1] | v601[0] | v601[2] | v601[3]))
          {
            outlined copy of GlassContainer.Entry.ModelID(0, 0, 0, 0, 2);
            result = outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
            goto LABEL_35;
          }

          outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], v601[4]);
          outlined init with copy of GlassContainer.Entry(v601, &v599);
          goto LABEL_29;
        }

        if (LOBYTE(v601[4]) != 1)
        {
          goto LABEL_27;
        }

        if (v5 != LODWORD(v601[0]))
        {
          v16 = 1;
LABEL_27:
          outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], v16);
          outlined init with copy of GlassContainer.Entry(v601, &v599);
          v31 = v5;
          v32 = v6;
          v33 = v8;
          v34 = v7;
          v35 = 1;
LABEL_28:
          outlined copy of GlassContainer.Entry.ModelID(v31, v32, v33, v34, v35);
LABEL_29:
          outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
          goto LABEL_30;
        }

        v574 = v601[0];
        v561 = v3;
        v578 = v4;
        v579 = v11;
        v576 = 1;
        v580 = v10;
        if (v6)
        {
          if (v601[1])
          {
            v567 = v7;
            v17 = v8;
            if (v6 == v601[1])
            {
              v18 = v601[0];
              v19 = v601[1];
              v20 = v601[2];
              v21 = v601[3];
              outlined copy of GlassContainer.Entry.ModelID(v601[0], v6, v601[2], v601[3], 1);
              v22 = v5;
              v23 = v5;
              v24 = v567;
              outlined copy of GlassContainer.Entry.ModelID(v23, v6, v17, v567, 1);
              outlined copy of GlassContainer.Entry.ModelID(v18, v6, v20, v21, 1);
              outlined copy of GlassContainer.Entry.ModelID(v22, v6, v17, v567, 1);
              v25 = v18;
              v26 = v6;
              v27 = v6;
              v28 = v20;
              v29 = v21;
              outlined copy of GlassContainer.Entry.ModelID(v25, v26, v20, v21, 1);
              outlined init with copy of GlassContainer.Entry(v601, &v599);
              outlined copy of GlassContainer.Entry.ModelID(v22, v27, v17, v567, 1);
              swift_retain_n();
              outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));

              v30 = v19;

LABEL_65:

              outlined consume of GlassContainer.Entry.ModelID(v574, v30, v28, v29, 1);
              outlined consume of GlassContainer.Entry.ModelID(v22, v27, v17, v24, 1);
              v63 = v17 == v28;
              v3 = v561;
              v5 = v22;
              v4 = v578;
              v6 = v27;
              v8 = v17;
              if (v63)
              {
                result = outlined destroy of GlassContainer.Entry(v601);
                v7 = v567;
                goto LABEL_68;
              }
            }

            else
            {
              v108 = *(*v6 + 112);
              v27 = v6;
              v109 = v601[0];
              v110 = v601[1];
              v111 = v601[2];
              v112 = v601[3];
              outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 1);
              outlined copy of GlassContainer.Entry.ModelID(v109, v110, v111, v112, 1);
              v22 = v5;
              v113 = v5;
              v24 = v567;
              outlined copy of GlassContainer.Entry.ModelID(v113, v27, v17, v567, 1);
              outlined copy of GlassContainer.Entry.ModelID(v109, v110, v111, v112, 1);
              outlined copy of GlassContainer.Entry.ModelID(v22, v27, v17, v567, 1);
              outlined copy of GlassContainer.Entry.ModelID(v109, v110, v111, v112, 1);
              outlined init with copy of GlassContainer.Entry(v601, &v599);
              outlined copy of GlassContainer.Entry.ModelID(v22, v27, v17, v567, 1);
              swift_retain_n();
              v539 = v108(v110);
              outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
              v114 = v109;
              v28 = v111;
              v29 = v112;
              outlined consume of GlassContainer.Entry.ModelID(v114, v110, v111, v112, 1);

              v30 = v110;

              if (v539)
              {
                goto LABEL_65;
              }

              outlined consume of GlassContainer.Entry.ModelID(v574, v110, v28, v112, 1);
              outlined consume of GlassContainer.Entry.ModelID(v22, v27, v17, v567, 1);
              v3 = v561;
              v5 = v22;
              v4 = v578;
              v6 = v27;
              v8 = v17;
            }

            v7 = v567;
LABEL_131:
            v9 = v576;
            goto LABEL_132;
          }

          v72 = v7;
          v79 = 0;
          v101 = v601[0];
          v102 = v601[2];
          v103 = v8;
          v104 = v6;
          v105 = v601[3];
          outlined copy of GlassContainer.Entry.ModelID(v601[0], 0, v601[2], v601[3], 1);
          outlined copy of GlassContainer.Entry.ModelID(v5, v104, v103, v72, 1);
          outlined copy of GlassContainer.Entry.ModelID(v101, 0, v102, v105, 1);
          outlined copy of GlassContainer.Entry.ModelID(v5, v104, v103, v72, 1);
          v106 = v101;
          v573 = v102;
          v77 = v105;
          v107 = v105;
          v6 = v104;
          v8 = v103;
          outlined copy of GlassContainer.Entry.ModelID(v106, 0, v102, v107, 1);
          outlined init with copy of GlassContainer.Entry(v601, &v599);
          outlined copy of GlassContainer.Entry.ModelID(v5, v6, v103, v72, 1);

          outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
        }

        else
        {
          v69 = v601[0];
          v70 = v601[1];
          v71 = v601[2];
          v72 = v7;
          v73 = v8;
          v74 = v601[3];
          outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 1);
          outlined copy of GlassContainer.Entry.ModelID(v5, 0, v73, v7, 1);
          outlined copy of GlassContainer.Entry.ModelID(v69, v70, v71, v74, 1);
          outlined copy of GlassContainer.Entry.ModelID(v5, 0, v73, v7, 1);
          v75 = v69;
          v573 = v71;
          v76 = v71;
          v6 = 0;
          v77 = v74;
          v78 = v74;
          v8 = v73;
          outlined copy of GlassContainer.Entry.ModelID(v75, v70, v76, v78, 1);
          outlined init with copy of GlassContainer.Entry(v601, &v599);
          outlined copy of GlassContainer.Entry.ModelID(v5, 0, v73, v7, 1);
          outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
          v79 = v70;
          if (!v70)
          {
            outlined consume of GlassContainer.Entry.ModelID(v574, 0, v573, v77, 1);
            outlined consume of GlassContainer.Entry.ModelID(v5, 0, v73, v72, 1);
            result = outlined destroy of GlassContainer.Entry(v601);
            v3 = v561;
            v7 = v72;
LABEL_68:
            v9 = 1;
            v11 = v579;
            v10 = v580;
            goto LABEL_35;
          }
        }

        outlined consume of GlassContainer.Entry.ModelID(v574, v79, v573, v77, 1);
        outlined consume of GlassContainer.Entry.ModelID(v5, v6, v8, v72, 1);
        v3 = v561;
LABEL_63:
        v4 = v578;
        v7 = v72;
        goto LABEL_131;
      }

      if (LOBYTE(v601[4]))
      {
        outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], v601[4]);
        outlined init with copy of GlassContainer.Entry(v601, &v599);
        v31 = v5;
        v32 = v6;
        v33 = v8;
        v34 = v7;
        v35 = 0;
        goto LABEL_28;
      }

      v577 = v8;
      v578 = v4;
      v579 = v11;
      v580 = v10;
      if (!v583)
      {
        if (LOBYTE(v601[1]) >= 0x40u)
        {
          v91 = v6;
          v92 = v601[0];
          v93 = v5;
          v94 = v601[1];
          v95 = v601[2];
          v96 = v601[3];
          outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
          outlined copy of GlassContainer.Entry.ModelID(v93, v91, v577, v7, 0);
          outlined copy of GlassContainer.Entry.ModelID(v92, v94, v95, v96, 0);
          outlined init with copy of GlassContainer.Entry(v601, &v599);
          outlined copy of GlassContainer.Entry.ModelID(v93, v91, v577, v7, 0);
          outlined copy of _Glass.Variant.ID(v92, v94);
          outlined copy of _Glass.Variant.ID(v93, v91);
          outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
          outlined consume of _Glass.Variant.ID(v93, v91);
          outlined consume of _Glass.Variant.ID(v92, v94);
          v97 = v92;
          v6 = v91;
          v98 = v94;
          v5 = v93;
          v8 = v577;
          v4 = v578;
          v99 = v95;
          v100 = v96;
          v11 = v579;
          v10 = v580;
        }

        else
        {
          v45 = *(v5 + 16);
          v46 = *(v5 + 24);
          v47 = *(v5 + 48);
          v48 = *(v601[0] + 16);
          v49 = *(v601[0] + 24);
          v50 = *(v601[0] + 48);
          v547 = v601[3];
          v576 = 0;
          if (v46 >> 6)
          {
            v531 = *(v5 + 24);
            v534 = *(v5 + 16);
            if (v46 >> 6 == 1)
            {
              v51 = v7;
              v52 = v8;
              v549 = v5;
              v556 = v6;
              v572 = v601[2];
              v528 = *(v601[0] + 24);
              if ((v49 & 0xC0) == 0x40)
              {
                v521 = *(v5 + 32);
                v525 = *(v5 + 40);
                v527 = *(v601[0] + 32);
                v526 = *(v601[0] + 40);
                v590 = *(v5 + 16);
                v591 = v46 & 0x3F;
                v588 = v48;
                v589 = v49 & 0x3F;
                v53 = v601[0];
                v54 = v601[1];
                v55 = v601[2];
                v56 = v601[3];
                v538 = v48;
                outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
                outlined copy of GlassContainer.Entry.ModelID(v53, v54, v55, v56, 0);
                outlined copy of GlassContainer.Entry.ModelID(v549, v556, v8, v51, 0);
                v57 = v55;
                v5 = v549;
                v58 = v56;
                v6 = v556;
                v7 = v51;
                outlined copy of GlassContainer.Entry.ModelID(v53, v54, v57, v58, 0);
                outlined init with copy of GlassContainer.Entry(v601, &v599);
                outlined copy of GlassContainer.Entry.ModelID(v549, v556, v8, v51, 0);
                v575 = v53;
                v546 = v54;
                outlined copy of _Glass.Variant.ID(v53, v54);
                outlined copy of _Glass.Variant.ID(v549, v556);
                outlined copy of _Glass.Variant.ID(v538, v528);
                outlined copy of _Glass.Variant.ID(v534, v531);
                if (specialized static Material.ID.== infix(_:_:)(&v590, &v588))
                {
                  outlined consume of _Glass.Variant.ID(v534, v531);
                  v59 = v538;
                  v60 = v528;
                  goto LABEL_120;
                }

                outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                outlined consume of GlassContainer.Entry.ModelID(v53, v54, v572, v547, 0);
                outlined consume of _Glass.Variant.ID(v534, v531);
                outlined consume of _Glass.Variant.ID(v538, v528);
                outlined consume of _Glass.Variant.ID(v549, v556);
                outlined consume of _Glass.Variant.ID(v53, v54);
                v5 = v549;
                v6 = v556;
                outlined consume of GlassContainer.Entry.ModelID(v53, v54, v572, v547, 0);
                v176 = v549;
              }

              else
              {
                v169 = v601[0];
                v170 = v601[1];
                v562 = v3;
                v171 = v601[2];
                v172 = v601[3];
                v173 = *(v601[0] + 16);
                outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
                v174 = v52;
                v7 = v51;
                outlined copy of GlassContainer.Entry.ModelID(v549, v6, v174, v51, 0);
                outlined copy of GlassContainer.Entry.ModelID(v169, v170, v171, v172, 0);
                outlined init with copy of GlassContainer.Entry(v601, &v599);
                outlined copy of GlassContainer.Entry.ModelID(v549, v6, v577, v51, 0);
                outlined copy of _Glass.Variant.ID(v169, v170);
                outlined copy of _Glass.Variant.ID(v549, v6);
                outlined copy of _Glass.Variant.ID(v173, v528);
                outlined copy of _Glass.Variant.ID(v534, v531);
                outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                outlined consume of _Glass.Variant.ID(v534, v531);
                outlined consume of _Glass.Variant.ID(v173, v528);
                outlined consume of _Glass.Variant.ID(v549, v6);
                outlined consume of _Glass.Variant.ID(v169, v170);
                v175 = v169;
                v5 = v549;
                v3 = v562;
                v8 = v577;
                outlined consume of GlassContainer.Entry.ModelID(v175, v170, v572, v547, 0);
                v176 = v549;
              }

              v206 = v6;
LABEL_129:
              v207 = v8;
              v208 = v7;
LABEL_130:
              outlined consume of GlassContainer.Entry.ModelID(v176, v206, v207, v208, 0);
              v4 = v578;
              goto LABEL_131;
            }

            v156 = v7;
            if (v45 | v46 ^ 0x80)
            {
              v157 = v8;
              v158 = v5;
              v159 = v49 & 0xC0;
              if (*(v5 + 24) == 128 && v45 == 1)
              {
                if (v159 != 128 || v48 != 1 || v49 != 128)
                {
                  goto LABEL_126;
                }

                v521 = *(v5 + 32);
                v525 = *(v5 + 40);
                v527 = *(v601[0] + 32);
                v526 = *(v601[0] + 40);
                v161 = v601[0];
                v162 = v601[1];
                v163 = v601[2];
                v164 = v601[3];
                outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
                outlined copy of GlassContainer.Entry.ModelID(v161, v162, v163, v164, 0);
                outlined copy of GlassContainer.Entry.ModelID(v158, v6, v157, v156, 0);
                v572 = v163;
                v165 = v163;
                v5 = v158;
                v166 = v164;
                v8 = v157;
                v7 = v156;
                outlined copy of GlassContainer.Entry.ModelID(v161, v162, v165, v166, 0);
                outlined init with copy of GlassContainer.Entry(v601, &v599);
                outlined copy of GlassContainer.Entry.ModelID(v158, v6, v8, v156, 0);
                v575 = v161;
                v546 = v162;
                outlined copy of _Glass.Variant.ID(v161, v162);
                outlined copy of _Glass.Variant.ID(v158, v6);
                outlined consume of _Glass.Variant.ID(v534, v531);
                v59 = 1;
              }

              else
              {
                if (v159 != 128 || v48 != 2 || v49 != 128)
                {
                  goto LABEL_126;
                }

                v521 = *(v5 + 32);
                v525 = *(v5 + 40);
                v527 = *(v601[0] + 32);
                v526 = *(v601[0] + 40);
                v190 = v601[0];
                v191 = v601[1];
                v192 = v601[2];
                v193 = v601[3];
                outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
                outlined copy of GlassContainer.Entry.ModelID(v190, v191, v192, v193, 0);
                outlined copy of GlassContainer.Entry.ModelID(v158, v6, v157, v156, 0);
                v572 = v192;
                v194 = v192;
                v5 = v158;
                v195 = v193;
                v8 = v157;
                v7 = v156;
                outlined copy of GlassContainer.Entry.ModelID(v190, v191, v194, v195, 0);
                outlined init with copy of GlassContainer.Entry(v601, &v599);
                outlined copy of GlassContainer.Entry.ModelID(v158, v6, v8, v156, 0);
                v575 = v190;
                v546 = v191;
                outlined copy of _Glass.Variant.ID(v190, v191);
                outlined copy of _Glass.Variant.ID(v158, v6);
                outlined consume of _Glass.Variant.ID(v534, v531);
                v59 = 2;
              }
            }

            else
            {
              v157 = v8;
              v158 = v5;
              if ((v49 & 0xC0) != 0x80 || v48 || v49 != 128)
              {
LABEL_126:
                v198 = v601[0];
                v564 = v3;
                v199 = v601[1];
                v200 = v601[2];
                v201 = v601[3];
                v202 = *(v601[0] + 24);
                v542 = *(v601[0] + 16);
                outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
                outlined copy of GlassContainer.Entry.ModelID(v158, v6, v157, v156, 0);
                outlined copy of GlassContainer.Entry.ModelID(v198, v199, v200, v201, 0);
                outlined init with copy of GlassContainer.Entry(v601, &v599);
                outlined copy of GlassContainer.Entry.ModelID(v158, v6, v157, v156, 0);
                outlined copy of _Glass.Variant.ID(v198, v199);
                outlined copy of _Glass.Variant.ID(v158, v6);
                outlined copy of _Glass.Variant.ID(v542, v202);
                outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                outlined consume of _Glass.Variant.ID(v534, v531);
                outlined consume of _Glass.Variant.ID(v542, v202);
                outlined consume of _Glass.Variant.ID(v158, v6);
                outlined consume of _Glass.Variant.ID(v198, v199);
                v203 = v198;
                v8 = v157;
                v7 = v156;
                v204 = v199;
                v3 = v564;
                v205 = v200;
                v5 = v158;
                outlined consume of GlassContainer.Entry.ModelID(v203, v204, v205, v547, 0);
                v176 = v158;
                v206 = v6;
                v207 = v8;
                v208 = v156;
                goto LABEL_130;
              }

              v521 = *(v5 + 32);
              v525 = *(v5 + 40);
              v527 = *(v601[0] + 32);
              v526 = *(v601[0] + 40);
              v184 = v601[0];
              v185 = v601[1];
              v186 = v601[2];
              v187 = v601[3];
              outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
              outlined copy of GlassContainer.Entry.ModelID(v184, v185, v186, v187, 0);
              outlined copy of GlassContainer.Entry.ModelID(v158, v6, v157, v156, 0);
              v572 = v186;
              v188 = v186;
              v5 = v158;
              v189 = v187;
              v8 = v157;
              v7 = v156;
              outlined copy of GlassContainer.Entry.ModelID(v184, v185, v188, v189, 0);
              outlined init with copy of GlassContainer.Entry(v601, &v599);
              outlined copy of GlassContainer.Entry.ModelID(v158, v6, v8, v156, 0);
              v575 = v184;
              v546 = v185;
              outlined copy of _Glass.Variant.ID(v184, v185);
              outlined copy of _Glass.Variant.ID(v158, v6);
              outlined consume of _Glass.Variant.ID(v534, v531);
              v59 = 0;
            }

            v60 = 0x80;
LABEL_120:
            outlined consume of _Glass.Variant.ID(v59, v60);
LABEL_121:
            if (v525 >> 6)
            {
              v9 = 0;
              if (v525 >> 6 == 1)
              {
                if ((v526 & 0xC0) == 0x40)
                {
                  v599 = v521;
                  v600 = v525 & 0x3F;
                  v590 = v527;
                  v591 = v526 & 0x3F;
                  outlined copy of _Glass.Variant.ID(v527, v526);
                  outlined copy of _Glass.Variant.ID(v521, v525);
                  if (specialized static Material.ID.== infix(_:_:)(&v599, &v590))
                  {
                    outlined consume of _Glass.Variant.ID(v521, v525);
                    v196 = v527;
                    v197 = v526;
LABEL_173:
                    outlined consume of _Glass.Variant.ID(v196, v197);
                    if (v47 != v50)
                    {
                      goto LABEL_180;
                    }

LABEL_174:
                    outlined consume of _Glass.Variant.ID(v5, v6);
                    v68 = v575;
                    v123 = v546;
LABEL_78:
                    outlined consume of _Glass.Variant.ID(v68, v123);
                    goto LABEL_79;
                  }

                  outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                  v239 = v546;
                  v553 = v5;
                  v240 = v572;
                  v241 = v7;
                  v242 = v8;
                  v243 = v6;
                  v244 = v547;
                  outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
                  outlined consume of _Glass.Variant.ID(v521, v525);
                  outlined consume of _Glass.Variant.ID(v527, v526);
                  outlined consume of _Glass.Variant.ID(v553, v243);
                  v238 = v575;
                }

                else
                {
                  outlined copy of _Glass.Variant.ID(v527, v526);
                  outlined copy of _Glass.Variant.ID(v521, v525);
                  outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                  v238 = v575;
                  v239 = v546;
                  v553 = v5;
                  v240 = v572;
                  v241 = v7;
                  v242 = v8;
                  v243 = v6;
                  v244 = v547;
                  outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
                  outlined consume of _Glass.Variant.ID(v521, v525);
                  outlined consume of _Glass.Variant.ID(v527, v526);
                  outlined consume of _Glass.Variant.ID(v553, v243);
                }

                outlined consume of _Glass.Variant.ID(v238, v239);
                v289 = v240;
                v5 = v553;
                v290 = v244;
                v6 = v243;
                v8 = v242;
                v7 = v241;
                v9 = 0;
                outlined consume of GlassContainer.Entry.ModelID(v238, v239, v289, v290, 0);
                v132 = v553;
LABEL_83:
                v133 = v6;
LABEL_84:
                outlined consume of GlassContainer.Entry.ModelID(v132, v133, v8, v7, 0);
                v4 = v578;
                goto LABEL_132;
              }

              if (v521 | v525 ^ 0x80)
              {
                v551 = v5;
                v558 = v6;
                v219 = v526 & 0xC0;
                if (v525 != 128 || v521 != 1)
                {
                  if (v219 != 128 || v527 != 2 || v526 != 128)
                  {
                    goto LABEL_181;
                  }

                  outlined consume of _Glass.Variant.ID(v521, v525);
                  v221 = 2;
                  goto LABEL_179;
                }

                if (v219 == 128 && v527 == 1 && v526 == 128)
                {
                  outlined consume of _Glass.Variant.ID(v521, v525);
                  v221 = 1;
LABEL_179:
                  outlined consume of _Glass.Variant.ID(v221, 0x80u);
                  if (v47 != v50)
                  {
                    goto LABEL_180;
                  }

                  goto LABEL_174;
                }

LABEL_181:
                outlined copy of _Glass.Variant.ID(v527, v526);
                outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                v265 = v572;
                v262 = v575;
                v263 = v546;
                v267 = v547;
                outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
                outlined consume of _Glass.Variant.ID(v521, v525);
                outlined consume of _Glass.Variant.ID(v527, v526);
                v264 = v551;
                v266 = v558;
              }

              else
              {
                if ((v526 & 0xC0) == 0x80 && !v527 && v526 == 128)
                {
                  outlined consume of _Glass.Variant.ID(v521, v525);
                  v196 = 0;
                  v197 = 0x80;
                  goto LABEL_173;
                }

                outlined copy of _Glass.Variant.ID(v527, v526);
                outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                v262 = v575;
                v263 = v546;
                v264 = v5;
                v265 = v572;
                v266 = v6;
                v267 = v547;
                outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
                outlined consume of _Glass.Variant.ID(v521, v525);
                outlined consume of _Glass.Variant.ID(v527, v526);
              }

LABEL_201:
              outlined consume of _Glass.Variant.ID(v264, v266);
              outlined consume of _Glass.Variant.ID(v262, v263);
              v291 = v265;
              v5 = v264;
              v292 = v267;
              v6 = v266;
              outlined consume of GlassContainer.Entry.ModelID(v262, v263, v291, v292, 0);
              v132 = v264;
              v133 = v266;
              v8 = v577;
              goto LABEL_84;
            }

            if (v526 >= 0x40)
            {
              outlined copy of _Glass.Variant.ID(v527, v526);
              outlined copy of _Glass.Variant.ID(v521, v525);
              outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
              outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
              outlined consume of _Glass.Variant.ID(v521, v525);
              outlined consume of _Glass.Variant.ID(v527, v526);
              outlined consume of _Glass.Variant.ID(v5, v6);
              outlined consume of _Glass.Variant.ID(v575, v546);
              outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
              v176 = v5;
              v206 = v6;
              v8 = v577;
              goto LABEL_129;
            }

            v565 = v3;
            v570 = v7;
            v209 = *(v521 + 16);
            v210 = *(v521 + 24);
            v211 = *(v521 + 48);
            v212 = *(v527 + 16);
            v213 = *(v527 + 24);
            v214 = *(v527 + 48);
            if (v210 >> 6)
            {
              if (v210 >> 6 == 1)
              {
                if ((v213 & 0xC0) == 0x40)
                {
                  v530 = *(v527 + 40);
                  v523 = *(v521 + 32);
                  v533 = *(v521 + 40);
                  v519 = *(v527 + 32);
                  v550 = v5;
                  v557 = v6;
                  v599 = *(v521 + 16);
                  v600 = v210 & 0x3F;
                  v590 = v212;
                  v591 = v213 & 0x3F;
                  v215 = v209;
                  v216 = v210;
                  outlined copy of _Glass.Variant.ID(v527, v526);
                  outlined copy of _Glass.Variant.ID(v521, v525);
                  outlined copy of _Glass.Variant.ID(v212, v213);
                  outlined copy of _Glass.Variant.ID(v215, v216);
                  if (specialized static Material.ID.== infix(_:_:)(&v599, &v590))
                  {
                    outlined consume of _Glass.Variant.ID(v215, v216);
                    v217 = v212;
                    v218 = v213;
                    goto LABEL_277;
                  }

                  outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                  outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
                  outlined consume of _Glass.Variant.ID(v215, v216);
                  v363 = v212;
                  v364 = v213;
LABEL_433:
                  outlined consume of _Glass.Variant.ID(v363, v364);
LABEL_434:
                  v5 = v550;
                  v6 = v557;
                  v4 = v578;
                  v334 = v526;
                  v339 = v527;
                  v337 = v525;
                  v336 = v521;
LABEL_435:
                  outlined consume of _Glass.Variant.ID(v336, v337);
                  outlined consume of _Glass.Variant.ID(v339, v334);
                  outlined consume of _Glass.Variant.ID(v5, v6);
                  outlined consume of _Glass.Variant.ID(v575, v546);
                  outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
                  v8 = v577;
                  v7 = v570;
                  outlined consume of GlassContainer.Entry.ModelID(v5, v6, v577, v570, 0);
                  v3 = v565;
                  goto LABEL_131;
                }

                v333 = *(v527 + 16);
                v334 = v526;
                v335 = *(v521 + 24);
                outlined copy of _Glass.Variant.ID(v527, v526);
                v336 = v521;
                v337 = v525;
                outlined copy of _Glass.Variant.ID(v521, v525);
                outlined copy of _Glass.Variant.ID(v333, v213);
                outlined copy of _Glass.Variant.ID(v209, v335);
                outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
                outlined consume of _Glass.Variant.ID(v209, v335);
                v338 = v333;
                v339 = v527;
LABEL_255:
                outlined consume of _Glass.Variant.ID(v338, v213);
                v4 = v578;
                goto LABEL_435;
              }

              v550 = v5;
              v557 = v6;
              v533 = *(v521 + 40);
              v530 = *(v527 + 40);
              v544 = *(v521 + 24);
              v523 = *(v521 + 32);
              v519 = *(v527 + 32);
              if (v209 | v210 ^ 0x80)
              {
                v312 = *(v527 + 24);
                v313 = v213 & 0xC0;
                if (*(v521 + 24) == 128 && v209 == 1)
                {
                  if (v313 != 128 || v212 != 1 || v213 != 128)
                  {
                    goto LABEL_282;
                  }

                  outlined copy of _Glass.Variant.ID(v527, v526);
                  outlined copy of _Glass.Variant.ID(v521, v525);
                  outlined consume of _Glass.Variant.ID(v209, v544);
                  v217 = 1;
                }

                else
                {
                  if (v313 != 128 || v212 != 2 || v213 != 128)
                  {
                    goto LABEL_282;
                  }

                  outlined copy of _Glass.Variant.ID(v527, v526);
                  outlined copy of _Glass.Variant.ID(v521, v525);
                  outlined consume of _Glass.Variant.ID(v209, v544);
                  v217 = 2;
                }
              }

              else
              {
                v312 = *(v527 + 24);
                if ((v213 & 0xC0) != 0x80 || v212 || v213 != 128)
                {
LABEL_282:
                  v339 = v527;
                  v334 = v526;
                  outlined copy of _Glass.Variant.ID(v527, v526);
                  v336 = v521;
                  v337 = v525;
                  outlined copy of _Glass.Variant.ID(v521, v525);
                  outlined copy of _Glass.Variant.ID(v212, v312);
                  outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                  outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
                  outlined consume of _Glass.Variant.ID(v209, v544);
                  outlined consume of _Glass.Variant.ID(v212, v312);
                  v6 = v557;
                  v4 = v578;
                  goto LABEL_435;
                }

                outlined copy of _Glass.Variant.ID(v527, v526);
                outlined copy of _Glass.Variant.ID(v521, v525);
                outlined consume of _Glass.Variant.ID(v209, v544);
                v217 = 0;
              }

              v218 = 0x80;
            }

            else
            {
              v543 = *(v521 + 24);
              v516 = *(v527 + 16);
              if (v213 >= 0x40)
              {
                v334 = v526;
                v339 = v527;
                outlined copy of _Glass.Variant.ID(v527, v526);
                v336 = v521;
                v337 = v525;
                outlined copy of _Glass.Variant.ID(v521, v525);
                outlined copy of _Glass.Variant.ID(v212, v213);
                outlined copy of _Glass.Variant.ID(v209, v543);
                outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
                outlined consume of _Glass.Variant.ID(v209, v543);
                v338 = v212;
                goto LABEL_255;
              }

              v530 = *(v527 + 40);
              v523 = *(v521 + 32);
              v533 = *(v521 + 40);
              v536 = *(v521 + 16);
              v519 = *(v527 + 32);
              v550 = v5;
              v557 = v6;
              v305 = *(v209 + 16);
              v509 = *(v209 + 40);
              v306 = *(v209 + 48);
              v307 = *(v212 + 16);
              v308 = *(v212 + 24);
              v495 = *(v212 + 32);
              v498 = *(v209 + 32);
              v505 = *(v212 + 40);
              v309 = *(v212 + 48);
              v310 = *(v209 + 24);
              if (v310 >> 6)
              {
                if (v310 >> 6 == 1)
                {
                  if ((v308 & 0xC0) != 0x40)
                  {
                    goto LABEL_430;
                  }

                  v599 = v305;
                  v600 = v310 & 0x3F;
                  v590 = v307;
                  v591 = v308 & 0x3F;
                  outlined copy of _Glass.Variant.ID(v305, v310);
                  outlined copy of _Glass.Variant.ID(v307, v308);
                  outlined copy of _Glass.Variant.ID(v527, v526);
                  outlined copy of _Glass.Variant.ID(v521, v525);
                  outlined copy of _Glass.Variant.ID(v212, v213);
                  outlined copy of _Glass.Variant.ID(v536, v543);
                  outlined copy of _Glass.Variant.ID(v305, v310);
                  outlined copy of _Glass.Variant.ID(v307, v308);
                  v311 = specialized static Material.ID.== infix(_:_:)(&v599, &v590);
                  outlined consume of _Glass.Variant.ID(v305, v310);
                  outlined consume of _Glass.Variant.ID(v307, v308);
                  outlined consume of _Glass.Variant.ID(v307, v308);
                  outlined consume of _Glass.Variant.ID(v305, v310);
                  if ((v311 & 1) == 0)
                  {
                    goto LABEL_432;
                  }
                }

                else
                {
                  if (v305 | v310 ^ 0x80)
                  {
                    v396 = v308 & 0xC0;
                    if (v310 == 128 && v305 == 1)
                    {
                      if (v396 != 128 || v307 != 1 || v308 != 128)
                      {
                        goto LABEL_430;
                      }

                      v398 = 1;
                    }

                    else
                    {
                      if (v396 != 128 || v307 != 2 || v308 != 128)
                      {
                        goto LABEL_430;
                      }

                      v398 = 2;
                    }
                  }

                  else
                  {
                    if ((v308 & 0xC0) != 0x80 || v307 || v308 != 128)
                    {
LABEL_430:
                      outlined copy of _Glass.Variant.ID(v527, v526);
                      outlined copy of _Glass.Variant.ID(v521, v525);
                      outlined copy of _Glass.Variant.ID(v212, v213);
                      outlined copy of _Glass.Variant.ID(v536, v543);
                      outlined copy of _Glass.Variant.ID(v305, v310);
                      outlined copy of _Glass.Variant.ID(v307, v308);
                      outlined consume of _Glass.Variant.ID(v305, v310);
                      v405 = v307;
                      v406 = v308;
LABEL_431:
                      outlined consume of _Glass.Variant.ID(v405, v406);
LABEL_432:
                      outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                      outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
                      outlined consume of _Glass.Variant.ID(v536, v543);
                      v363 = v516;
                      v364 = v213;
                      goto LABEL_433;
                    }

                    v398 = 0;
                  }

                  outlined copy of _Glass.Variant.ID(v527, v526);
                  outlined copy of _Glass.Variant.ID(v521, v525);
                  outlined copy of _Glass.Variant.ID(v212, v213);
                  outlined copy of _Glass.Variant.ID(v536, v543);
                  outlined consume of _Glass.Variant.ID(v305, v310);
                  outlined consume of _Glass.Variant.ID(v398, 0x80u);
                }
              }

              else
              {
                if (v308 >= 0x40)
                {
                  goto LABEL_430;
                }

                v474 = *(v305 + 40);
                v391 = *(v305 + 48);
                v478 = *(v305 + 32);
                v492 = *(v307 + 16);
                v471 = *(v307 + 32);
                v468 = *(v307 + 40);
                v392 = *(v307 + 48);
                v393 = *(v305 + 24);
                v488 = *(v307 + 24);
                v599 = *(v305 + 16);
                v482 = v599;
                v600 = v393;
                v590 = v492;
                v591 = v488;
                outlined copy of _Glass.Variant.ID(v305, v310);
                outlined copy of _Glass.Variant.ID(v307, v308);
                outlined copy of _Glass.Variant.ID(v527, v526);
                outlined copy of _Glass.Variant.ID(v521, v525);
                outlined copy of _Glass.Variant.ID(v212, v213);
                outlined copy of _Glass.Variant.ID(v536, v543);
                outlined copy of _Glass.Variant.ID(v305, v310);
                outlined copy of _Glass.Variant.ID(v307, v308);
                outlined copy of _Glass.Variant.ID(v482, v393);
                outlined copy of _Glass.Variant.ID(v492, v488);
                v394 = specialized static _Glass.Variant.ID.== infix(_:_:)(&v599, &v590);
                outlined consume of _Glass.Variant.ID(v590, v591);
                outlined consume of _Glass.Variant.ID(v599, v600);
                if ((v394 & 1) == 0)
                {
                  outlined consume of _Glass.Variant.ID(v305, v310);
                  outlined consume of _Glass.Variant.ID(v307, v308);
                  outlined consume of _Glass.Variant.ID(v307, v308);
                  v405 = v305;
                  v406 = v310;
                  goto LABEL_431;
                }

                v599 = v478;
                v600 = v474;
                v590 = v471;
                v591 = v468;
                outlined copy of _Glass.Variant.ID(v478, v474);
                outlined copy of _Glass.Variant.ID(v471, v468);
                v395 = specialized static _Glass.Variant.ID.== infix(_:_:)(&v599, &v590);
                outlined consume of _Glass.Variant.ID(v590, v591);
                outlined consume of _Glass.Variant.ID(v599, v600);
                outlined consume of _Glass.Variant.ID(v305, v310);
                outlined consume of _Glass.Variant.ID(v307, v308);
                outlined consume of _Glass.Variant.ID(v307, v308);
                outlined consume of _Glass.Variant.ID(v305, v310);
                if ((v395 & 1) == 0 || v391 != v392)
                {
                  goto LABEL_432;
                }
              }

              if (v509 >> 6)
              {
                if (v509 >> 6 == 1)
                {
                  if ((v505 & 0xC0) != 0x40)
                  {
                    goto LABEL_510;
                  }

                  v599 = v498;
                  v600 = v509 & 0x3F;
                  v590 = v495;
                  v591 = v505 & 0x3F;
                  outlined copy of _Glass.Variant.ID(v498, v509);
                  outlined copy of _Glass.Variant.ID(v495, v505);
                  outlined copy of _Glass.Variant.ID(v498, v509);
                  outlined copy of _Glass.Variant.ID(v495, v505);
                  v404 = specialized static Material.ID.== infix(_:_:)(&v599, &v590);
                  outlined consume of _Glass.Variant.ID(v498, v509);
                  outlined consume of _Glass.Variant.ID(v495, v505);
                  outlined consume of _Glass.Variant.ID(v495, v505);
                  outlined consume of _Glass.Variant.ID(v498, v509);
                  if ((v404 & 1) == 0)
                  {
                    goto LABEL_432;
                  }
                }

                else
                {
                  if (v498 | v509 ^ 0x80)
                  {
                    if (v509 == 128 && v498 == 1)
                    {
                      if ((v505 & 0xC0) != 0x80 || v495 != 1 || v505 != 128)
                      {
                        goto LABEL_510;
                      }

                      v428 = 1;
                    }

                    else
                    {
                      if ((v505 & 0xC0) != 0x80 || v495 != 2 || v505 != 128)
                      {
                        goto LABEL_510;
                      }

                      v428 = 2;
                    }
                  }

                  else
                  {
                    if ((v505 & 0xC0) != 0x80 || v495 || v505 != 128)
                    {
LABEL_510:
                      outlined copy of _Glass.Variant.ID(v498, v509);
                      outlined copy of _Glass.Variant.ID(v495, v505);
                      outlined consume of _Glass.Variant.ID(v498, v509);
                      v405 = v495;
                      v406 = v505;
                      goto LABEL_431;
                    }

                    v428 = 0;
                  }

                  outlined consume of _Glass.Variant.ID(v498, v509);
                  outlined consume of _Glass.Variant.ID(v428, 0x80u);
                }
              }

              else
              {
                if (v505 >= 0x40)
                {
                  goto LABEL_510;
                }

                v493 = *(v498 + 32);
                v490 = *(v498 + 40);
                v418 = *(v498 + 48);
                v420 = *(v495 + 16);
                v484 = *(v495 + 32);
                v421 = *(v495 + 40);
                v422 = *(v495 + 48);
                v423 = *(v498 + 24);
                v424 = *(v495 + 24);
                v599 = *(v498 + 16);
                v419 = v599;
                v600 = v423;
                v590 = v420;
                v591 = v424;
                outlined copy of _Glass.Variant.ID(v498, v509);
                outlined copy of _Glass.Variant.ID(v495, v505);
                outlined copy of _Glass.Variant.ID(v498, v509);
                outlined copy of _Glass.Variant.ID(v495, v505);
                outlined copy of _Glass.Variant.ID(v419, v423);
                outlined copy of _Glass.Variant.ID(v420, v424);
                v425 = specialized static _Glass.Variant.ID.== infix(_:_:)(&v599, &v590);
                outlined consume of _Glass.Variant.ID(v590, v591);
                outlined consume of _Glass.Variant.ID(v599, v600);
                if ((v425 & 1) == 0)
                {
                  outlined consume of _Glass.Variant.ID(v498, v509);
                  outlined consume of _Glass.Variant.ID(v495, v505);
                  outlined consume of _Glass.Variant.ID(v495, v505);
                  v405 = v498;
                  v406 = v509;
                  goto LABEL_431;
                }

                v599 = v493;
                v600 = v490;
                v590 = v484;
                v591 = v421;
                outlined copy of _Glass.Variant.ID(v493, v490);
                outlined copy of _Glass.Variant.ID(v484, v421);
                v426 = specialized static _Glass.Variant.ID.== infix(_:_:)(&v599, &v590);
                outlined consume of _Glass.Variant.ID(v590, v591);
                outlined consume of _Glass.Variant.ID(v599, v600);
                outlined consume of _Glass.Variant.ID(v498, v509);
                outlined consume of _Glass.Variant.ID(v495, v505);
                outlined consume of _Glass.Variant.ID(v495, v505);
                outlined consume of _Glass.Variant.ID(v498, v509);
                if ((v426 & 1) == 0 || v418 != v422)
                {
                  goto LABEL_432;
                }
              }

              if (v306 != v309)
              {
                goto LABEL_432;
              }

              outlined consume of _Glass.Variant.ID(v536, v543);
              v217 = v516;
              v218 = v213;
            }

LABEL_277:
            outlined consume of _Glass.Variant.ID(v217, v218);
            if (v533 >> 6)
            {
              if (v533 >> 6 == 1)
              {
                if ((v530 & 0xC0) != 0x40)
                {
                  goto LABEL_329;
                }

                v599 = v523;
                v600 = v533 & 0x3F;
                v590 = v519;
                v591 = v530 & 0x3F;
                outlined copy of _Glass.Variant.ID(v519, v530);
                outlined copy of _Glass.Variant.ID(v523, v533);
                if ((specialized static Material.ID.== infix(_:_:)(&v599, &v590) & 1) == 0)
                {
                  goto LABEL_527;
                }

                goto LABEL_281;
              }

              if (v523 | v533 ^ 0x80)
              {
                if (v533 == 128 && v523 == 1)
                {
                  if ((v530 & 0xC0) != 0x80 || v519 != 1 || v530 != 128)
                  {
                    goto LABEL_394;
                  }

                  outlined consume of _Glass.Variant.ID(v523, v533);
                  v340 = 1;
                }

                else
                {
                  if ((v530 & 0xC0) != 0x80 || v519 != 2 || v530 != 128)
                  {
                    goto LABEL_394;
                  }

                  outlined consume of _Glass.Variant.ID(v523, v533);
                  v340 = 2;
                }
              }

              else
              {
                if ((v530 & 0xC0) != 0x80 || v519 || v530 != 128)
                {
LABEL_394:
                  outlined copy of _Glass.Variant.ID(v519, v530);
                  outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                  outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
                  outlined consume of _Glass.Variant.ID(v523, v533);
                  v363 = v519;
                  v364 = v530;
                  goto LABEL_433;
                }

                outlined consume of _Glass.Variant.ID(v523, v533);
                v340 = 0;
              }

              v341 = 0x80;
            }

            else
            {
              if (v530 >= 0x40)
              {
LABEL_329:
                outlined copy of _Glass.Variant.ID(v519, v530);
                outlined copy of _Glass.Variant.ID(v523, v533);
                outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
                outlined consume of _Glass.Variant.ID(v523, v533);
                v363 = v519;
                v364 = v530;
                goto LABEL_433;
              }

              v375 = *(v523 + 16);
              v376 = *(v523 + 24);
              v545 = *(v523 + 40);
              v377 = *(v523 + 48);
              v378 = *(v519 + 16);
              v379 = *(v519 + 24);
              v513 = *(v519 + 32);
              v517 = *(v523 + 32);
              v537 = *(v519 + 40);
              v380 = *(v519 + 48);
              if (v376 >> 6)
              {
                if (v376 >> 6 == 1)
                {
                  if ((v379 & 0xC0) != 0x40)
                  {
                    goto LABEL_525;
                  }

                  v599 = *(v523 + 16);
                  v600 = v376 & 0x3F;
                  v590 = v378;
                  v591 = v379 & 0x3F;
                  outlined copy of _Glass.Variant.ID(v375, v376);
                  outlined copy of _Glass.Variant.ID(v378, v379);
                  outlined copy of _Glass.Variant.ID(v519, v530);
                  outlined copy of _Glass.Variant.ID(v523, v533);
                  outlined copy of _Glass.Variant.ID(v375, v376);
                  outlined copy of _Glass.Variant.ID(v378, v379);
                  v381 = specialized static Material.ID.== infix(_:_:)(&v599, &v590);
                  outlined consume of _Glass.Variant.ID(v375, v376);
                  outlined consume of _Glass.Variant.ID(v378, v379);
                  outlined consume of _Glass.Variant.ID(v378, v379);
                  outlined consume of _Glass.Variant.ID(v375, v376);
                  if ((v381 & 1) == 0)
                  {
                    goto LABEL_527;
                  }
                }

                else
                {
                  if (v375 | v376 ^ 0x80)
                  {
                    v436 = v379 & 0xC0;
                    if (*(v523 + 24) == 128 && v375 == 1)
                    {
                      if (v436 != 128 || v378 != 1 || v379 != 128)
                      {
                        goto LABEL_525;
                      }

                      v438 = 1;
                    }

                    else
                    {
                      if (v436 != 128 || v378 != 2 || v379 != 128)
                      {
                        goto LABEL_525;
                      }

                      v438 = 2;
                    }
                  }

                  else
                  {
                    if ((v379 & 0xC0) != 0x80 || v378 || v379 != 128)
                    {
LABEL_525:
                      outlined copy of _Glass.Variant.ID(v519, v530);
                      outlined copy of _Glass.Variant.ID(v523, v533);
                      outlined copy of _Glass.Variant.ID(v375, v376);
                      outlined copy of _Glass.Variant.ID(v378, v379);
                      outlined consume of _Glass.Variant.ID(v375, v376);
                      v440 = v378;
                      v441 = v379;
LABEL_526:
                      outlined consume of _Glass.Variant.ID(v440, v441);
LABEL_527:
                      outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                      outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
                      outlined consume of _Glass.Variant.ID(v523, v533);
                      v363 = v519;
                      v364 = v530;
                      goto LABEL_433;
                    }

                    v438 = 0;
                  }

                  outlined copy of _Glass.Variant.ID(v519, v530);
                  outlined copy of _Glass.Variant.ID(v523, v533);
                  outlined consume of _Glass.Variant.ID(v375, v376);
                  outlined consume of _Glass.Variant.ID(v438, 0x80u);
                }
              }

              else
              {
                if (v379 >= 0x40)
                {
                  goto LABEL_525;
                }

                v496 = *(v375 + 32);
                v510 = *(v375 + 40);
                v429 = *(v375 + 48);
                v431 = *(v378 + 16);
                v506 = *(v378 + 32);
                v502 = *(v378 + 40);
                v432 = *(v378 + 48);
                v433 = *(v375 + 24);
                v434 = *(v378 + 24);
                v599 = *(v375 + 16);
                v430 = v599;
                v600 = v433;
                v590 = v431;
                v591 = v434;
                outlined copy of _Glass.Variant.ID(v375, v376);
                outlined copy of _Glass.Variant.ID(v378, v379);
                outlined copy of _Glass.Variant.ID(v519, v530);
                outlined copy of _Glass.Variant.ID(v523, v533);
                outlined copy of _Glass.Variant.ID(v375, v376);
                outlined copy of _Glass.Variant.ID(v378, v379);
                outlined copy of _Glass.Variant.ID(v430, v433);
                outlined copy of _Glass.Variant.ID(v431, v434);
                LOBYTE(v430) = specialized static _Glass.Variant.ID.== infix(_:_:)(&v599, &v590);
                outlined consume of _Glass.Variant.ID(v590, v591);
                outlined consume of _Glass.Variant.ID(v599, v600);
                if ((v430 & 1) == 0)
                {
                  outlined consume of _Glass.Variant.ID(v375, v376);
                  outlined consume of _Glass.Variant.ID(v378, v379);
                  outlined consume of _Glass.Variant.ID(v378, v379);
                  v440 = v375;
                  v441 = v376;
                  goto LABEL_526;
                }

                v599 = v496;
                v600 = v510;
                v590 = v506;
                v591 = v502;
                outlined copy of _Glass.Variant.ID(v496, v510);
                outlined copy of _Glass.Variant.ID(v506, v502);
                v435 = specialized static _Glass.Variant.ID.== infix(_:_:)(&v599, &v590);
                outlined consume of _Glass.Variant.ID(v590, v591);
                outlined consume of _Glass.Variant.ID(v599, v600);
                outlined consume of _Glass.Variant.ID(v375, v376);
                outlined consume of _Glass.Variant.ID(v378, v379);
                outlined consume of _Glass.Variant.ID(v378, v379);
                outlined consume of _Glass.Variant.ID(v375, v376);
                if ((v435 & 1) == 0 || v429 != v432)
                {
                  goto LABEL_527;
                }
              }

              if (v545 >> 6)
              {
                if (v545 >> 6 == 1)
                {
                  if ((v537 & 0xC0) != 0x40)
                  {
                    goto LABEL_557;
                  }

                  v599 = v517;
                  v600 = v545 & 0x3F;
                  v590 = v513;
                  v591 = v537 & 0x3F;
                  outlined copy of _Glass.Variant.ID(v517, v545);
                  outlined copy of _Glass.Variant.ID(v513, v537);
                  outlined copy of _Glass.Variant.ID(v517, v545);
                  outlined copy of _Glass.Variant.ID(v513, v537);
                  v439 = specialized static Material.ID.== infix(_:_:)(&v599, &v590);
                  outlined consume of _Glass.Variant.ID(v517, v545);
                  outlined consume of _Glass.Variant.ID(v513, v537);
                  outlined consume of _Glass.Variant.ID(v513, v537);
                  outlined consume of _Glass.Variant.ID(v517, v545);
                  if ((v439 & 1) == 0)
                  {
                    goto LABEL_527;
                  }
                }

                else
                {
                  if (v517 | v545 ^ 0x80)
                  {
                    if (v545 == 128 && v517 == 1)
                    {
                      if ((v537 & 0xC0) != 0x80 || v513 != 1 || v537 != 128)
                      {
                        goto LABEL_557;
                      }

                      v452 = 1;
                    }

                    else
                    {
                      if ((v537 & 0xC0) != 0x80 || v513 != 2 || v537 != 128)
                      {
                        goto LABEL_557;
                      }

                      v452 = 2;
                    }
                  }

                  else
                  {
                    if ((v537 & 0xC0) != 0x80 || v513 || v537 != 128)
                    {
LABEL_557:
                      outlined copy of _Glass.Variant.ID(v517, v545);
                      outlined copy of _Glass.Variant.ID(v513, v537);
                      outlined consume of _Glass.Variant.ID(v517, v545);
                      v440 = v513;
                      v441 = v537;
                      goto LABEL_526;
                    }

                    v452 = 0;
                  }

                  outlined consume of _Glass.Variant.ID(v517, v545);
                  outlined consume of _Glass.Variant.ID(v452, 0x80u);
                }
              }

              else
              {
                if (v537 >= 0x40)
                {
                  goto LABEL_557;
                }

                v507 = *(v517 + 32);
                v503 = *(v517 + 40);
                v442 = *(v517 + 48);
                v444 = *(v513 + 16);
                v445 = *(v513 + 32);
                v511 = *(v513 + 40);
                v446 = *(v513 + 48);
                v447 = *(v517 + 24);
                v448 = *(v513 + 24);
                v599 = *(v517 + 16);
                v443 = v599;
                v600 = v447;
                v590 = v444;
                v591 = v448;
                outlined copy of _Glass.Variant.ID(v517, v545);
                outlined copy of _Glass.Variant.ID(v513, v537);
                outlined copy of _Glass.Variant.ID(v517, v545);
                outlined copy of _Glass.Variant.ID(v513, v537);
                outlined copy of _Glass.Variant.ID(v443, v447);
                outlined copy of _Glass.Variant.ID(v444, v448);
                v449 = specialized static _Glass.Variant.ID.== infix(_:_:)(&v599, &v590);
                outlined consume of _Glass.Variant.ID(v590, v591);
                outlined consume of _Glass.Variant.ID(v599, v600);
                if ((v449 & 1) == 0)
                {
                  outlined consume of _Glass.Variant.ID(v517, v545);
                  outlined consume of _Glass.Variant.ID(v513, v537);
                  outlined consume of _Glass.Variant.ID(v513, v537);
                  v440 = v517;
                  v441 = v545;
                  goto LABEL_526;
                }

                v599 = v507;
                v600 = v503;
                v590 = v445;
                v591 = v511;
                outlined copy of _Glass.Variant.ID(v507, v503);
                outlined copy of _Glass.Variant.ID(v445, v511);
                v450 = specialized static _Glass.Variant.ID.== infix(_:_:)(&v599, &v590);
                outlined consume of _Glass.Variant.ID(v590, v591);
                outlined consume of _Glass.Variant.ID(v599, v600);
                outlined consume of _Glass.Variant.ID(v517, v545);
                outlined consume of _Glass.Variant.ID(v513, v537);
                outlined consume of _Glass.Variant.ID(v513, v537);
                outlined consume of _Glass.Variant.ID(v517, v545);
                if ((v450 & 1) == 0 || v442 != v446)
                {
                  goto LABEL_527;
                }
              }

              if (v377 != v380)
              {
                goto LABEL_527;
              }

LABEL_281:
              outlined consume of _Glass.Variant.ID(v523, v533);
              v340 = v519;
              v341 = v530;
            }

            outlined consume of _Glass.Variant.ID(v340, v341);
            if (v211 == v214)
            {
              outlined consume of _Glass.Variant.ID(v521, v525);
              outlined consume of _Glass.Variant.ID(v527, v526);
              v6 = v557;
              v3 = v565;
              v5 = v550;
              v7 = v570;
              v9 = 0;
              if (v47 == v50)
              {
                goto LABEL_174;
              }

LABEL_180:
              outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
              v262 = v575;
              v263 = v546;
              v264 = v5;
              v265 = v572;
              v266 = v6;
              v267 = v547;
              outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
              goto LABEL_201;
            }

            outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
            outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
            goto LABEL_434;
          }

          v572 = v601[2];
          v529 = *(v601[0] + 24);
          v540 = *(v601[0] + 16);
          if (v49 < 0x40)
          {
            v134 = *(v45 + 16);
            v135 = *(v45 + 24);
            v136 = *(v45 + 48);
            v514 = *(v45 + 24);
            v518 = *(v48 + 16);
            v522 = *(v48 + 24);
            v137 = *(v48 + 48);
            v575 = v601[0];
            v546 = v601[1];
            v532 = *(v5 + 24);
            v535 = *(v5 + 16);
            if (v135 >> 6)
            {
              v138 = v7;
              if (v135 >> 6 == 1)
              {
                v139 = v8;
                v140 = v6;
                v141 = v5;
                if ((v522 & 0xC0) == 0x40)
                {
                  v504 = *(v45 + 32);
                  v508 = *(v45 + 40);
                  v491 = *(v48 + 32);
                  v494 = *(v48 + 40);
                  v521 = *(v5 + 32);
                  v525 = *(v5 + 40);
                  v527 = *(v601[0] + 32);
                  v526 = *(v601[0] + 40);
                  v590 = *(v45 + 16);
                  v591 = v135 & 0x3F;
                  v588 = v518;
                  v589 = v522 & 0x3F;
                  v142 = v601[0];
                  v143 = v601[1];
                  v144 = v601[2];
                  v145 = v601[3];
                  outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
                  outlined copy of GlassContainer.Entry.ModelID(v142, v143, v144, v145, 0);
                  outlined copy of GlassContainer.Entry.ModelID(v141, v140, v139, v138, 0);
                  v146 = v144;
                  v5 = v141;
                  v147 = v145;
                  v6 = v140;
                  v8 = v139;
                  v7 = v138;
                  v149 = v514;
                  v148 = v518;
                  outlined copy of GlassContainer.Entry.ModelID(v142, v143, v146, v147, 0);
                  outlined init with copy of GlassContainer.Entry(v601, &v599);
                  outlined copy of GlassContainer.Entry.ModelID(v5, v6, v8, v7, 0);
                  v150 = v142;
                  v151 = v143;
                  v152 = v134;
                  v153 = v522;
                  outlined copy of _Glass.Variant.ID(v150, v151);
                  outlined copy of _Glass.Variant.ID(v5, v6);
                  outlined copy of _Glass.Variant.ID(v540, v529);
                  outlined copy of _Glass.Variant.ID(v535, v532);
                  outlined copy of _Glass.Variant.ID(v518, v522);
                  outlined copy of _Glass.Variant.ID(v134, v514);
                  if ((specialized static Material.ID.== infix(_:_:)(&v590, &v588) & 1) == 0)
                  {
                    goto LABEL_252;
                  }

                  goto LABEL_94;
                }

                v245 = v601[0];
                v246 = v601[1];
                v247 = v601[2];
                v248 = v601[3];
                outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
                outlined copy of GlassContainer.Entry.ModelID(v141, v140, v139, v138, 0);
                v249 = v247;
                v5 = v141;
                v250 = v248;
                v6 = v140;
                v8 = v139;
                v7 = v138;
                outlined copy of GlassContainer.Entry.ModelID(v245, v246, v249, v250, 0);
                outlined init with copy of GlassContainer.Entry(v601, &v599);
                outlined copy of GlassContainer.Entry.ModelID(v141, v6, v8, v138, 0);
                outlined copy of _Glass.Variant.ID(v245, v246);
                outlined copy of _Glass.Variant.ID(v141, v6);
                v251 = v529;
                outlined copy of _Glass.Variant.ID(v540, v529);
                outlined copy of _Glass.Variant.ID(v535, v532);
                outlined copy of _Glass.Variant.ID(v518, v522);
                outlined copy of _Glass.Variant.ID(v134, v514);
                outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                outlined consume of _Glass.Variant.ID(v134, v514);
                outlined consume of _Glass.Variant.ID(v518, v522);
                v252 = v532;
LABEL_197:
                v261 = v535;
                v4 = v578;
                v9 = 0;
                goto LABEL_415;
              }

              v228 = v8;
              if (v134 | v135 ^ 0x80)
              {
                v229 = v6;
                v230 = v5;
                if (*(v45 + 24) == 128 && v134 == 1)
                {
                  if ((v522 & 0xC0) != 0x80 || v518 != 1 || v522 != 128)
                  {
                    goto LABEL_196;
                  }

                  v504 = *(v45 + 32);
                  v508 = *(v45 + 40);
                  v491 = *(v48 + 32);
                  v494 = *(v48 + 40);
                  v521 = *(v5 + 32);
                  v525 = *(v5 + 40);
                  v527 = *(v601[0] + 32);
                  v526 = *(v601[0] + 40);
                  v232 = v601[0];
                  v233 = v601[1];
                  v234 = v601[2];
                  v235 = v601[3];
                  outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
                  outlined copy of GlassContainer.Entry.ModelID(v232, v233, v234, v235, 0);
                  outlined copy of GlassContainer.Entry.ModelID(v230, v229, v228, v138, 0);
                  v236 = v234;
                  v5 = v230;
                  v237 = v235;
                  v6 = v229;
                  v8 = v228;
                  v7 = v138;
                  outlined copy of GlassContainer.Entry.ModelID(v232, v233, v236, v237, 0);
                  outlined init with copy of GlassContainer.Entry(v601, &v599);
                  outlined copy of GlassContainer.Entry.ModelID(v230, v6, v8, v138, 0);
                  outlined copy of _Glass.Variant.ID(v232, v233);
                  outlined copy of _Glass.Variant.ID(v230, v6);
                  outlined copy of _Glass.Variant.ID(v540, v529);
                  outlined copy of _Glass.Variant.ID(v535, v532);
                  outlined consume of _Glass.Variant.ID(v134, v514);
                  v154 = 1;
                }

                else
                {
                  if ((v522 & 0xC0) != 0x80 || v518 != 2 || v522 != 128)
                  {
                    goto LABEL_196;
                  }

                  v504 = *(v45 + 32);
                  v508 = *(v45 + 40);
                  v491 = *(v48 + 32);
                  v494 = *(v48 + 40);
                  v521 = *(v5 + 32);
                  v525 = *(v5 + 40);
                  v527 = *(v601[0] + 32);
                  v526 = *(v601[0] + 40);
                  v274 = v601[0];
                  v275 = v601[1];
                  v276 = v601[2];
                  v277 = v601[3];
                  outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
                  outlined copy of GlassContainer.Entry.ModelID(v274, v275, v276, v277, 0);
                  outlined copy of GlassContainer.Entry.ModelID(v230, v229, v228, v138, 0);
                  v278 = v276;
                  v5 = v230;
                  v279 = v277;
                  v6 = v229;
                  v8 = v228;
                  v7 = v138;
                  outlined copy of GlassContainer.Entry.ModelID(v274, v275, v278, v279, 0);
                  outlined init with copy of GlassContainer.Entry(v601, &v599);
                  outlined copy of GlassContainer.Entry.ModelID(v230, v6, v8, v138, 0);
                  outlined copy of _Glass.Variant.ID(v274, v275);
                  outlined copy of _Glass.Variant.ID(v230, v6);
                  outlined copy of _Glass.Variant.ID(v540, v529);
                  outlined copy of _Glass.Variant.ID(v535, v532);
                  outlined consume of _Glass.Variant.ID(v134, v514);
                  v154 = 2;
                }
              }

              else
              {
                v229 = v6;
                v230 = v5;
                if ((v522 & 0xC0) != 0x80 || v518 || v522 != 128)
                {
LABEL_196:
                  v283 = v601[0];
                  v284 = v601[1];
                  v285 = v601[2];
                  v286 = v601[3];
                  outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
                  outlined copy of GlassContainer.Entry.ModelID(v230, v229, v228, v138, 0);
                  v287 = v285;
                  v5 = v230;
                  v288 = v286;
                  v6 = v229;
                  v8 = v228;
                  v7 = v138;
                  outlined copy of GlassContainer.Entry.ModelID(v283, v284, v287, v288, 0);
                  outlined init with copy of GlassContainer.Entry(v601, &v599);
                  outlined copy of GlassContainer.Entry.ModelID(v230, v6, v8, v138, 0);
                  outlined copy of _Glass.Variant.ID(v283, v284);
                  outlined copy of _Glass.Variant.ID(v230, v6);
                  v251 = v529;
                  outlined copy of _Glass.Variant.ID(v540, v529);
                  outlined copy of _Glass.Variant.ID(v535, v532);
                  outlined copy of _Glass.Variant.ID(v518, v522);
                  outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                  outlined consume of _Glass.Variant.ID(v134, v514);
                  outlined consume of _Glass.Variant.ID(v518, v522);
                  v252 = v532;
                  goto LABEL_197;
                }

                v504 = *(v45 + 32);
                v508 = *(v45 + 40);
                v491 = *(v48 + 32);
                v494 = *(v48 + 40);
                v521 = *(v5 + 32);
                v525 = *(v5 + 40);
                v527 = *(v601[0] + 32);
                v526 = *(v601[0] + 40);
                v268 = v601[0];
                v269 = v601[1];
                v270 = v601[2];
                v271 = v601[3];
                outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
                outlined copy of GlassContainer.Entry.ModelID(v268, v269, v270, v271, 0);
                outlined copy of GlassContainer.Entry.ModelID(v230, v229, v228, v138, 0);
                v272 = v270;
                v5 = v230;
                v273 = v271;
                v6 = v229;
                v8 = v228;
                v7 = v138;
                outlined copy of GlassContainer.Entry.ModelID(v268, v269, v272, v273, 0);
                outlined init with copy of GlassContainer.Entry(v601, &v599);
                outlined copy of GlassContainer.Entry.ModelID(v230, v6, v8, v138, 0);
                outlined copy of _Glass.Variant.ID(v268, v269);
                outlined copy of _Glass.Variant.ID(v230, v6);
                outlined copy of _Glass.Variant.ID(v540, v529);
                outlined copy of _Glass.Variant.ID(v535, v532);
                outlined consume of _Glass.Variant.ID(v134, v514);
                v154 = 0;
              }

              v155 = 0x80;
LABEL_191:
              outlined consume of _Glass.Variant.ID(v154, v155);
              if (v508 >> 6)
              {
                if (v508 >> 6 == 1)
                {
                  if ((v494 & 0xC0) == 0x40)
                  {
                    v566 = v3;
                    v571 = v7;
                    v554 = v5;
                    v560 = v6;
                    v599 = v504;
                    v600 = v508 & 0x3F;
                    v590 = v491;
                    v591 = v494 & 0x3F;
                    v280 = v494;
                    outlined copy of _Glass.Variant.ID(v491, v494);
                    outlined copy of _Glass.Variant.ID(v504, v508);
                    if (specialized static Material.ID.== infix(_:_:)(&v599, &v590))
                    {
                      goto LABEL_195;
                    }

                    outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                    outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
                    outlined consume of _Glass.Variant.ID(v504, v508);
                    v361 = v491;
LABEL_303:
                    v362 = v280;
                    goto LABEL_412;
                  }

                  v153 = v494;
                  v148 = v491;
                  v149 = v508;
                  v152 = v504;
                  outlined copy of _Glass.Variant.ID(v491, v494);
                  v330 = v504;
LABEL_251:
                  outlined copy of _Glass.Variant.ID(v330, v149);
LABEL_252:
                  outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                  outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
                  outlined consume of _Glass.Variant.ID(v152, v149);
                  v331 = v148;
                  v332 = v153;
                  goto LABEL_300;
                }

                v560 = v6;
                v566 = v3;
                v571 = v7;
                v554 = v5;
                if (v504 | v508 ^ 0x80)
                {
                  v302 = v508;
                  v280 = v494;
                  v303 = v494 & 0xC0;
                  if (v508 == 128 && v504 == 1)
                  {
                    if (v303 != 128 || v491 != 1 || v494 != 128)
                    {
                      goto LABEL_302;
                    }

                    outlined consume of _Glass.Variant.ID(v504, v508);
                    v281 = 1;
                  }

                  else
                  {
                    if (v303 != 128 || v491 != 2 || v494 != 128)
                    {
                      goto LABEL_302;
                    }

                    outlined consume of _Glass.Variant.ID(v504, v508);
                    v281 = 2;
                  }
                }

                else
                {
                  v302 = v508;
                  v280 = v494;
                  if ((v494 & 0xC0) != 0x80 || v491 || v494 != 128)
                  {
LABEL_302:
                    outlined copy of _Glass.Variant.ID(v491, v494);
                    outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                    outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
                    outlined consume of _Glass.Variant.ID(v504, v302);
                    v361 = v491;
                    goto LABEL_303;
                  }

                  outlined consume of _Glass.Variant.ID(v504, v508);
                  v281 = 0;
                }

                v282 = 0x80;
              }

              else
              {
                if (v494 >= 0x40)
                {
                  v153 = v494;
                  v148 = v491;
                  v152 = v504;
                  outlined copy of _Glass.Variant.ID(v491, v494);
                  v330 = v504;
                  v149 = v508;
                  goto LABEL_251;
                }

                v566 = v3;
                v571 = v7;
                v554 = v5;
                v560 = v6;
                v293 = *(v504 + 16);
                v294 = *(v504 + 24);
                v524 = *(v504 + 40);
                v295 = *(v504 + 48);
                v296 = *(v491 + 16);
                v297 = *(v491 + 24);
                v512 = *(v491 + 32);
                v515 = *(v504 + 32);
                v520 = *(v491 + 40);
                v298 = *(v491 + 48);
                v299 = *(v504 + 24);
                if (v294 >> 6)
                {
                  if (v294 >> 6 == 1)
                  {
                    if ((v297 & 0xC0) != 0x40)
                    {
                      goto LABEL_409;
                    }

                    v599 = *(v504 + 16);
                    v300 = v297;
                    v600 = v294 & 0x3F;
                    v590 = v296;
                    v591 = v297 & 0x3F;
                    outlined copy of _Glass.Variant.ID(v293, v294);
                    outlined copy of _Glass.Variant.ID(v296, v297);
                    outlined copy of _Glass.Variant.ID(v491, v494);
                    outlined copy of _Glass.Variant.ID(v504, v508);
                    outlined copy of _Glass.Variant.ID(v293, v299);
                    outlined copy of _Glass.Variant.ID(v296, v297);
                    v301 = specialized static Material.ID.== infix(_:_:)(&v599, &v590);
                    outlined consume of _Glass.Variant.ID(v293, v299);
                    outlined consume of _Glass.Variant.ID(v296, v300);
                    outlined consume of _Glass.Variant.ID(v296, v300);
                    outlined consume of _Glass.Variant.ID(v293, v299);
                    if ((v301 & 1) == 0)
                    {
                      goto LABEL_411;
                    }
                  }

                  else
                  {
                    if (v293 | v294 ^ 0x80)
                    {
                      v388 = v297 & 0xC0;
                      if (*(v504 + 24) == 128 && v293 == 1)
                      {
                        if (v388 != 128 || v296 != 1 || v297 != 128)
                        {
                          goto LABEL_409;
                        }

                        v390 = 1;
                      }

                      else
                      {
                        if (v388 != 128 || v296 != 2 || v297 != 128)
                        {
                          goto LABEL_409;
                        }

                        v390 = 2;
                      }
                    }

                    else
                    {
                      if ((v297 & 0xC0) != 0x80 || v296 || v297 != 128)
                      {
LABEL_409:
                        outlined copy of _Glass.Variant.ID(v491, v494);
                        outlined copy of _Glass.Variant.ID(v504, v508);
                        outlined copy of _Glass.Variant.ID(v293, v299);
                        outlined copy of _Glass.Variant.ID(v296, v297);
                        outlined consume of _Glass.Variant.ID(v293, v299);
                        v402 = v296;
                        v403 = v297;
                        goto LABEL_410;
                      }

                      v390 = 0;
                    }

                    outlined copy of _Glass.Variant.ID(v491, v494);
                    outlined copy of _Glass.Variant.ID(v504, v508);
                    outlined consume of _Glass.Variant.ID(v293, v299);
                    outlined consume of _Glass.Variant.ID(v390, 0x80u);
                  }
                }

                else
                {
                  if (v297 >= 0x40)
                  {
                    goto LABEL_409;
                  }

                  v473 = *(v293 + 40);
                  v383 = *(v293 + 48);
                  v477 = *(v293 + 32);
                  v500 = *(v296 + 16);
                  v470 = *(v296 + 32);
                  v467 = *(v296 + 40);
                  v384 = *(v296 + 48);
                  v385 = *(v293 + 24);
                  v487 = *(v296 + 24);
                  v599 = *(v293 + 16);
                  v481 = v599;
                  v600 = v385;
                  v590 = v500;
                  v591 = v487;
                  outlined copy of _Glass.Variant.ID(v293, v294);
                  outlined copy of _Glass.Variant.ID(v296, v297);
                  outlined copy of _Glass.Variant.ID(v491, v494);
                  outlined copy of _Glass.Variant.ID(v504, v508);
                  outlined copy of _Glass.Variant.ID(v293, v299);
                  outlined copy of _Glass.Variant.ID(v296, v297);
                  outlined copy of _Glass.Variant.ID(v481, v385);
                  outlined copy of _Glass.Variant.ID(v500, v487);
                  v386 = specialized static _Glass.Variant.ID.== infix(_:_:)(&v599, &v590);
                  outlined consume of _Glass.Variant.ID(v590, v591);
                  outlined consume of _Glass.Variant.ID(v599, v600);
                  if ((v386 & 1) == 0)
                  {
                    outlined consume of _Glass.Variant.ID(v293, v299);
                    outlined consume of _Glass.Variant.ID(v296, v297);
                    outlined consume of _Glass.Variant.ID(v296, v297);
                    v402 = v293;
                    goto LABEL_439;
                  }

                  v599 = v477;
                  v600 = v473;
                  v590 = v470;
                  v591 = v467;
                  outlined copy of _Glass.Variant.ID(v477, v473);
                  outlined copy of _Glass.Variant.ID(v470, v467);
                  v387 = specialized static _Glass.Variant.ID.== infix(_:_:)(&v599, &v590);
                  outlined consume of _Glass.Variant.ID(v590, v591);
                  outlined consume of _Glass.Variant.ID(v599, v600);
                  outlined consume of _Glass.Variant.ID(v293, v299);
                  outlined consume of _Glass.Variant.ID(v296, v297);
                  outlined consume of _Glass.Variant.ID(v296, v297);
                  outlined consume of _Glass.Variant.ID(v293, v299);
                  if ((v387 & 1) == 0 || v383 != v384)
                  {
                    goto LABEL_411;
                  }
                }

                if (v524 >> 6)
                {
                  if (v524 >> 6 == 1)
                  {
                    if ((v520 & 0xC0) != 0x40)
                    {
                      goto LABEL_498;
                    }

                    v599 = v515;
                    v600 = v524 & 0x3F;
                    v590 = v512;
                    v591 = v520 & 0x3F;
                    outlined copy of _Glass.Variant.ID(v515, v524);
                    outlined copy of _Glass.Variant.ID(v512, v520);
                    outlined copy of _Glass.Variant.ID(v515, v524);
                    outlined copy of _Glass.Variant.ID(v512, v520);
                    v401 = specialized static Material.ID.== infix(_:_:)(&v599, &v590);
                    outlined consume of _Glass.Variant.ID(v515, v524);
                    outlined consume of _Glass.Variant.ID(v512, v520);
                    outlined consume of _Glass.Variant.ID(v512, v520);
                    outlined consume of _Glass.Variant.ID(v515, v524);
                    if ((v401 & 1) == 0)
                    {
                      goto LABEL_411;
                    }
                  }

                  else
                  {
                    if (v515 | v524 ^ 0x80)
                    {
                      if (v524 == 128 && v515 == 1)
                      {
                        if ((v520 & 0xC0) != 0x80 || v512 != 1 || v520 != 128)
                        {
                          goto LABEL_498;
                        }

                        v417 = 1;
                      }

                      else
                      {
                        if ((v520 & 0xC0) != 0x80 || v512 != 2 || v520 != 128)
                        {
                          goto LABEL_498;
                        }

                        v417 = 2;
                      }
                    }

                    else
                    {
                      if ((v520 & 0xC0) != 0x80 || v512 || v520 != 128)
                      {
LABEL_498:
                        outlined copy of _Glass.Variant.ID(v515, v524);
                        outlined copy of _Glass.Variant.ID(v512, v520);
                        outlined consume of _Glass.Variant.ID(v515, v524);
                        v402 = v512;
                        v403 = v520;
                        goto LABEL_410;
                      }

                      v417 = 0;
                    }

                    outlined consume of _Glass.Variant.ID(v515, v524);
                    outlined consume of _Glass.Variant.ID(v417, 0x80u);
                  }
                }

                else
                {
                  if (v520 >= 0x40)
                  {
                    goto LABEL_498;
                  }

                  v501 = *(v515 + 32);
                  v489 = *(v515 + 40);
                  v407 = *(v515 + 48);
                  v409 = *(v512 + 16);
                  v483 = *(v512 + 32);
                  v410 = *(v512 + 40);
                  v411 = *(v512 + 48);
                  v412 = *(v515 + 24);
                  v413 = *(v512 + 24);
                  v599 = *(v515 + 16);
                  v408 = v599;
                  v600 = v412;
                  v590 = v409;
                  v591 = v413;
                  outlined copy of _Glass.Variant.ID(v515, v524);
                  outlined copy of _Glass.Variant.ID(v512, v520);
                  outlined copy of _Glass.Variant.ID(v515, v524);
                  outlined copy of _Glass.Variant.ID(v512, v520);
                  outlined copy of _Glass.Variant.ID(v408, v412);
                  outlined copy of _Glass.Variant.ID(v409, v413);
                  v414 = specialized static _Glass.Variant.ID.== infix(_:_:)(&v599, &v590);
                  outlined consume of _Glass.Variant.ID(v590, v591);
                  outlined consume of _Glass.Variant.ID(v599, v600);
                  if ((v414 & 1) == 0)
                  {
                    v299 = v524;
                    outlined consume of _Glass.Variant.ID(v515, v524);
                    outlined consume of _Glass.Variant.ID(v512, v520);
                    outlined consume of _Glass.Variant.ID(v512, v520);
                    v402 = v515;
LABEL_439:
                    v403 = v299;
LABEL_410:
                    outlined consume of _Glass.Variant.ID(v402, v403);
LABEL_411:
                    outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                    outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
                    outlined consume of _Glass.Variant.ID(v504, v508);
                    v361 = v491;
                    v362 = v494;
LABEL_412:
                    outlined consume of _Glass.Variant.ID(v361, v362);
LABEL_413:
                    v6 = v560;
                    v3 = v566;
                    v5 = v554;
                    v8 = v577;
                    v4 = v578;
                    v7 = v571;
LABEL_414:
                    v9 = 0;
                    v252 = v532;
                    v261 = v535;
                    v251 = v529;
LABEL_415:
                    outlined consume of _Glass.Variant.ID(v261, v252);
                    outlined consume of _Glass.Variant.ID(v540, v251);
                    outlined consume of _Glass.Variant.ID(v5, v6);
                    outlined consume of _Glass.Variant.ID(v575, v546);
                    outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
                    v88 = v5;
                    v89 = v6;
                    v90 = v8;
LABEL_58:
                    outlined consume of GlassContainer.Entry.ModelID(v88, v89, v90, v7, 0);
LABEL_132:
                    v11 = v579;
                    v10 = v580;
                    goto LABEL_30;
                  }

                  v599 = v501;
                  v600 = v489;
                  v590 = v483;
                  v591 = v410;
                  outlined copy of _Glass.Variant.ID(v501, v489);
                  outlined copy of _Glass.Variant.ID(v483, v410);
                  v415 = specialized static _Glass.Variant.ID.== infix(_:_:)(&v599, &v590);
                  outlined consume of _Glass.Variant.ID(v590, v591);
                  outlined consume of _Glass.Variant.ID(v599, v600);
                  outlined consume of _Glass.Variant.ID(v515, v524);
                  outlined consume of _Glass.Variant.ID(v512, v520);
                  outlined consume of _Glass.Variant.ID(v512, v520);
                  outlined consume of _Glass.Variant.ID(v515, v524);
                  if ((v415 & 1) == 0 || v407 != v411)
                  {
                    goto LABEL_411;
                  }
                }

                if (v295 != v298)
                {
                  goto LABEL_411;
                }

LABEL_195:
                outlined consume of _Glass.Variant.ID(v504, v508);
                v281 = v491;
                v282 = v494;
              }

              outlined consume of _Glass.Variant.ID(v281, v282);
              if (v136 != v137)
              {
                outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
                goto LABEL_413;
              }

              outlined consume of _Glass.Variant.ID(v535, v532);
              outlined consume of _Glass.Variant.ID(v540, v529);
              v6 = v560;
              v3 = v566;
              v5 = v554;
              v8 = v577;
              v7 = v571;
              goto LABEL_121;
            }

            if (v522 >= 0x40)
            {
              v253 = v601[0];
              v254 = v601[1];
              v255 = v5;
              v256 = v601[2];
              v257 = v6;
              v258 = v601[3];
              outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
              outlined copy of GlassContainer.Entry.ModelID(v255, v257, v577, v7, 0);
              v259 = v256;
              v5 = v255;
              v260 = v258;
              v6 = v257;
              v8 = v577;
              v4 = v578;
              outlined copy of GlassContainer.Entry.ModelID(v253, v254, v259, v260, 0);
              outlined init with copy of GlassContainer.Entry(v601, &v599);
              outlined copy of GlassContainer.Entry.ModelID(v5, v6, v577, v7, 0);
              outlined copy of _Glass.Variant.ID(v253, v254);
              outlined copy of _Glass.Variant.ID(v5, v6);
              outlined copy of _Glass.Variant.ID(v540, v529);
              outlined copy of _Glass.Variant.ID(v535, v532);
              outlined copy of _Glass.Variant.ID(v518, v522);
              outlined copy of _Glass.Variant.ID(v134, v514);
              outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
              outlined consume of _Glass.Variant.ID(v134, v514);
              v251 = v529;
              outlined consume of _Glass.Variant.ID(v518, v522);
              v252 = v532;
              v261 = v535;
              goto LABEL_415;
            }

            v504 = *(v45 + 32);
            v508 = *(v45 + 40);
            v479 = *(v134 + 16);
            v469 = *(v134 + 32);
            v472 = *(v134 + 40);
            v475 = *(v518 + 16);
            v497 = *(v518 + 24);
            v466 = *(v518 + 32);
            v465 = *(v518 + 40);
            v485 = *(v134 + 24);
            v552 = v5;
            v559 = v6;
            if (v485 >> 6)
            {
              if (v485 >> 6 == 1)
              {
                if ((v497 & 0xC0) != 0x40)
                {
                  goto LABEL_297;
                }

                v491 = *(v48 + 32);
                v494 = *(v48 + 40);
                v521 = *(v5 + 32);
                v525 = *(v5 + 40);
                v527 = *(v601[0] + 32);
                v526 = *(v601[0] + 40);
                v463 = *(v134 + 48);
                v464 = *(v518 + 48);
                v590 = *(v134 + 16);
                v591 = v485 & 0x3F;
                v588 = v475;
                v589 = v497 & 0x3F;
                v222 = v601[0];
                v223 = v601[1];
                v224 = v601[2];
                v225 = v601[3];
                outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
                outlined copy of GlassContainer.Entry.ModelID(v222, v223, v224, v225, 0);
                outlined copy of GlassContainer.Entry.ModelID(v552, v559, v8, v7, 0);
                outlined copy of _Glass.Variant.ID(v479, v485);
                outlined copy of _Glass.Variant.ID(v475, v497);
                v226 = v224;
                v5 = v552;
                v227 = v225;
                v6 = v559;
                outlined copy of GlassContainer.Entry.ModelID(v222, v223, v226, v227, 0);
                outlined init with copy of GlassContainer.Entry(v601, &v599);
                outlined copy of GlassContainer.Entry.ModelID(v552, v559, v8, v7, 0);
                outlined copy of _Glass.Variant.ID(v222, v223);
                outlined copy of _Glass.Variant.ID(v552, v559);
                outlined copy of _Glass.Variant.ID(v540, v529);
                outlined copy of _Glass.Variant.ID(v535, v532);
                outlined copy of _Glass.Variant.ID(v518, v522);
                outlined copy of _Glass.Variant.ID(v134, v514);
                outlined copy of _Glass.Variant.ID(v479, v485);
                outlined copy of _Glass.Variant.ID(v475, v497);
                v460 = specialized static Material.ID.== infix(_:_:)(&v590, &v588);
                outlined consume of _Glass.Variant.ID(v479, v485);
                outlined consume of _Glass.Variant.ID(v475, v497);
                outlined consume of _Glass.Variant.ID(v475, v497);
                outlined consume of _Glass.Variant.ID(v479, v485);
                if ((v460 & 1) == 0)
                {
                  goto LABEL_299;
                }
              }

              else
              {
                if (v479 | v485 ^ 0x80)
                {
                  if (*(v134 + 24) == 128 && v479 == 1)
                  {
                    if ((v497 & 0xC0) != 0x80 || v475 != 1 || v497 != 128)
                    {
                      goto LABEL_297;
                    }

                    v491 = *(v48 + 32);
                    v494 = *(v48 + 40);
                    v521 = *(v5 + 32);
                    v525 = *(v5 + 40);
                    v527 = *(v601[0] + 32);
                    v526 = *(v601[0] + 40);
                    v463 = *(v134 + 48);
                    v464 = *(v518 + 48);
                    v325 = v601[0];
                    v326 = v601[1];
                    v327 = v601[2];
                    v328 = v601[3];
                    outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
                    outlined copy of GlassContainer.Entry.ModelID(v325, v326, v327, v328, 0);
                    outlined copy of GlassContainer.Entry.ModelID(v552, v559, v8, v7, 0);
                    outlined copy of GlassContainer.Entry.ModelID(v325, v326, v327, v328, 0);
                    outlined init with copy of GlassContainer.Entry(v601, &v599);
                    v329 = 1;
                  }

                  else
                  {
                    if ((v497 & 0xC0) != 0x80 || v475 != 2 || v497 != 128)
                    {
                      goto LABEL_297;
                    }

                    v491 = *(v48 + 32);
                    v494 = *(v48 + 40);
                    v521 = *(v5 + 32);
                    v525 = *(v5 + 40);
                    v527 = *(v601[0] + 32);
                    v526 = *(v601[0] + 40);
                    v463 = *(v134 + 48);
                    v464 = *(v518 + 48);
                    v346 = v601[0];
                    v347 = v601[1];
                    v348 = v601[2];
                    v349 = v601[3];
                    outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
                    outlined copy of GlassContainer.Entry.ModelID(v346, v347, v348, v349, 0);
                    outlined copy of GlassContainer.Entry.ModelID(v552, v559, v8, v7, 0);
                    outlined copy of GlassContainer.Entry.ModelID(v346, v347, v348, v349, 0);
                    outlined init with copy of GlassContainer.Entry(v601, &v599);
                    v329 = 2;
                  }
                }

                else
                {
                  if ((v497 & 0xC0) != 0x80 || v475 || v497 != 128)
                  {
LABEL_297:
                    v353 = v601[0];
                    v354 = v601[1];
                    v355 = v601[2];
                    v356 = v601[3];
                    outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
                    outlined copy of GlassContainer.Entry.ModelID(v353, v354, v355, v356, 0);
                    outlined copy of GlassContainer.Entry.ModelID(v552, v559, v8, v7, 0);
                    v357 = v355;
                    v5 = v552;
                    v358 = v356;
                    v6 = v559;
                    outlined copy of GlassContainer.Entry.ModelID(v353, v354, v357, v358, 0);
                    outlined init with copy of GlassContainer.Entry(v601, &v599);
                    outlined copy of GlassContainer.Entry.ModelID(v552, v559, v8, v7, 0);
                    outlined copy of _Glass.Variant.ID(v353, v354);
                    outlined copy of _Glass.Variant.ID(v552, v559);
                    outlined copy of _Glass.Variant.ID(v540, v529);
                    outlined copy of _Glass.Variant.ID(v535, v532);
                    outlined copy of _Glass.Variant.ID(v518, v522);
                    outlined copy of _Glass.Variant.ID(v134, v514);
                    outlined copy of _Glass.Variant.ID(v479, v485);
                    outlined copy of _Glass.Variant.ID(v475, v497);
                    outlined consume of _Glass.Variant.ID(v479, v485);
                    v359 = v475;
                    v360 = v497;
LABEL_298:
                    outlined consume of _Glass.Variant.ID(v359, v360);
                    goto LABEL_299;
                  }

                  v491 = *(v48 + 32);
                  v494 = *(v48 + 40);
                  v521 = *(v5 + 32);
                  v525 = *(v5 + 40);
                  v527 = *(v601[0] + 32);
                  v526 = *(v601[0] + 40);
                  v463 = *(v134 + 48);
                  v464 = *(v518 + 48);
                  v342 = v601[0];
                  v343 = v601[1];
                  v344 = v601[2];
                  v345 = v601[3];
                  outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
                  outlined copy of GlassContainer.Entry.ModelID(v342, v343, v344, v345, 0);
                  outlined copy of GlassContainer.Entry.ModelID(v552, v559, v8, v7, 0);
                  outlined copy of GlassContainer.Entry.ModelID(v342, v343, v344, v345, 0);
                  outlined init with copy of GlassContainer.Entry(v601, &v599);
                  v329 = 0;
                }

                outlined copy of GlassContainer.Entry.ModelID(v552, v559, v8, v7, 0);
                outlined copy of _Glass.Variant.ID(v575, v546);
                outlined copy of _Glass.Variant.ID(v552, v559);
                outlined copy of _Glass.Variant.ID(v540, v529);
                outlined copy of _Glass.Variant.ID(v535, v532);
                outlined copy of _Glass.Variant.ID(v518, v522);
                outlined copy of _Glass.Variant.ID(v134, v514);
                outlined consume of _Glass.Variant.ID(v479, v485);
                outlined consume of _Glass.Variant.ID(v329, 0x80u);
              }
            }

            else
            {
              if (v497 >= 0x40)
              {
                goto LABEL_297;
              }

              v491 = *(v48 + 32);
              v494 = *(v48 + 40);
              v521 = *(v5 + 32);
              v525 = *(v5 + 40);
              v527 = *(v601[0] + 32);
              v526 = *(v601[0] + 40);
              v463 = *(v134 + 48);
              v464 = *(v518 + 48);
              v455 = *(v479 + 40);
              v315 = *(v479 + 48);
              v456 = *(v479 + 32);
              v459 = *(v475 + 16);
              v454 = *(v475 + 32);
              v453 = *(v475 + 40);
              v316 = *(v475 + 48);
              v458 = *(v479 + 24);
              v461 = *(v475 + 24);
              v590 = *(v479 + 16);
              v457 = v590;
              v591 = v458;
              v588 = v459;
              v589 = v461;
              v317 = v601[0];
              v318 = v601[1];
              v319 = v601[2];
              v320 = v601[3];
              outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
              outlined copy of GlassContainer.Entry.ModelID(v317, v318, v319, v320, 0);
              outlined copy of GlassContainer.Entry.ModelID(v552, v559, v8, v7, 0);
              outlined copy of _Glass.Variant.ID(v479, v485);
              outlined copy of _Glass.Variant.ID(v475, v497);
              v321 = v319;
              v322 = v320;
              v5 = v552;
              v6 = v559;
              outlined copy of GlassContainer.Entry.ModelID(v317, v318, v321, v322, 0);
              outlined init with copy of GlassContainer.Entry(v601, &v599);
              outlined copy of GlassContainer.Entry.ModelID(v552, v559, v8, v7, 0);
              outlined copy of _Glass.Variant.ID(v317, v318);
              outlined copy of _Glass.Variant.ID(v552, v559);
              outlined copy of _Glass.Variant.ID(v540, v529);
              outlined copy of _Glass.Variant.ID(v535, v532);
              outlined copy of _Glass.Variant.ID(v518, v522);
              outlined copy of _Glass.Variant.ID(v134, v514);
              outlined copy of _Glass.Variant.ID(v479, v485);
              outlined copy of _Glass.Variant.ID(v475, v497);
              outlined copy of _Glass.Variant.ID(v457, v458);
              outlined copy of _Glass.Variant.ID(v459, v461);
              v323 = specialized static _Glass.Variant.ID.== infix(_:_:)(&v590, &v588);
              outlined consume of _Glass.Variant.ID(v588, v589);
              outlined consume of _Glass.Variant.ID(v590, v591);
              if ((v323 & 1) == 0)
              {
                outlined consume of _Glass.Variant.ID(v479, v485);
                outlined consume of _Glass.Variant.ID(v475, v497);
                outlined consume of _Glass.Variant.ID(v475, v497);
                v359 = v479;
                v360 = v485;
                goto LABEL_298;
              }

              v599 = v456;
              v600 = v455;
              v590 = v454;
              v591 = v453;
              outlined copy of _Glass.Variant.ID(v456, v455);
              outlined copy of _Glass.Variant.ID(v454, v453);
              v462 = specialized static _Glass.Variant.ID.== infix(_:_:)(&v599, &v590);
              outlined consume of _Glass.Variant.ID(v590, v591);
              outlined consume of _Glass.Variant.ID(v599, v600);
              outlined consume of _Glass.Variant.ID(v479, v485);
              outlined consume of _Glass.Variant.ID(v475, v497);
              outlined consume of _Glass.Variant.ID(v475, v497);
              outlined consume of _Glass.Variant.ID(v479, v485);
              if ((v462 & 1) == 0 || v315 != v316)
              {
                goto LABEL_299;
              }
            }

            v350 = v3;
            if (v472 >> 6)
            {
              if (v472 >> 6 == 1)
              {
                v351 = v465;
                if ((v465 & 0xC0) != 0x40)
                {
                  goto LABEL_380;
                }

                v599 = v469;
                v600 = v472 & 0x3F;
                v590 = v466;
                v591 = v465 & 0x3F;
                outlined copy of _Glass.Variant.ID(v469, v472);
                outlined copy of _Glass.Variant.ID(v466, v465);
                outlined copy of _Glass.Variant.ID(v469, v472);
                outlined copy of _Glass.Variant.ID(v466, v465);
                v352 = specialized static Material.ID.== infix(_:_:)(&v599, &v590);
                outlined consume of _Glass.Variant.ID(v469, v472);
                outlined consume of _Glass.Variant.ID(v466, v465);
                outlined consume of _Glass.Variant.ID(v466, v465);
                outlined consume of _Glass.Variant.ID(v469, v472);
                v3 = v350;
                v5 = v552;
                v6 = v559;
                if ((v352 & 1) == 0)
                {
                  goto LABEL_299;
                }

                goto LABEL_310;
              }

              if (v469 | v472 ^ 0x80)
              {
                if (v472 == 128 && v469 == 1)
                {
                  v351 = v465;
                  if ((v465 & 0xC0) != 0x80 || v466 != 1 || v465 != 128)
                  {
                    goto LABEL_380;
                  }

                  v374 = 1;
                }

                else
                {
                  v351 = v465;
                  if ((v465 & 0xC0) != 0x80 || v466 != 2 || v465 != 128)
                  {
                    goto LABEL_380;
                  }

                  v374 = 2;
                }
              }

              else
              {
                v351 = v465;
                if ((v465 & 0xC0) != 0x80 || v466 || v465 != 128)
                {
LABEL_380:
                  outlined copy of _Glass.Variant.ID(v469, v472);
                  outlined copy of _Glass.Variant.ID(v466, v351);
                  outlined consume of _Glass.Variant.ID(v469, v472);
                  v399 = v466;
                  v400 = v351;
                  goto LABEL_381;
                }

                v374 = 0;
              }

              outlined consume of _Glass.Variant.ID(v469, v472);
              outlined consume of _Glass.Variant.ID(v374, 0x80u);
              v3 = v350;
              v5 = v552;
              v6 = v559;
              if (v463 != v464)
              {
                goto LABEL_299;
              }
            }

            else
            {
              v351 = v465;
              if (v465 >= 0x40)
              {
                goto LABEL_380;
              }

              v499 = *(v469 + 32);
              v486 = *(v469 + 40);
              v365 = *(v469 + 48);
              v367 = *(v466 + 16);
              v480 = *(v466 + 32);
              v476 = *(v466 + 40);
              v368 = *(v466 + 48);
              v369 = *(v469 + 24);
              v370 = *(v466 + 24);
              v599 = *(v469 + 16);
              v366 = v599;
              v600 = v369;
              v590 = v367;
              v591 = v370;
              outlined copy of _Glass.Variant.ID(v469, v472);
              outlined copy of _Glass.Variant.ID(v466, v465);
              outlined copy of _Glass.Variant.ID(v469, v472);
              outlined copy of _Glass.Variant.ID(v466, v465);
              outlined copy of _Glass.Variant.ID(v366, v369);
              outlined copy of _Glass.Variant.ID(v367, v370);
              v371 = specialized static _Glass.Variant.ID.== infix(_:_:)(&v599, &v590);
              outlined consume of _Glass.Variant.ID(v590, v591);
              outlined consume of _Glass.Variant.ID(v599, v600);
              if ((v371 & 1) == 0)
              {
                outlined consume of _Glass.Variant.ID(v469, v472);
                outlined consume of _Glass.Variant.ID(v466, v465);
                outlined consume of _Glass.Variant.ID(v466, v465);
                v399 = v469;
                v400 = v472;
LABEL_381:
                outlined consume of _Glass.Variant.ID(v399, v400);
                v3 = v350;
                v5 = v552;
                v6 = v559;
                v8 = v577;
LABEL_299:
                outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
                outlined consume of _Glass.Variant.ID(v134, v514);
                v331 = v518;
                v332 = v522;
LABEL_300:
                outlined consume of _Glass.Variant.ID(v331, v332);
                v4 = v578;
                goto LABEL_414;
              }

              v599 = v499;
              v600 = v486;
              v590 = v480;
              v591 = v476;
              outlined copy of _Glass.Variant.ID(v499, v486);
              outlined copy of _Glass.Variant.ID(v480, v476);
              v372 = specialized static _Glass.Variant.ID.== infix(_:_:)(&v599, &v590);
              outlined consume of _Glass.Variant.ID(v590, v591);
              outlined consume of _Glass.Variant.ID(v599, v600);
              outlined consume of _Glass.Variant.ID(v469, v472);
              outlined consume of _Glass.Variant.ID(v466, v465);
              outlined consume of _Glass.Variant.ID(v466, v465);
              outlined consume of _Glass.Variant.ID(v469, v472);
              v3 = v350;
              v5 = v552;
              v6 = v559;
              v8 = v577;
              if ((v372 & 1) == 0 || v365 != v368)
              {
                goto LABEL_299;
              }

LABEL_310:
              if (v463 != v464)
              {
                goto LABEL_299;
              }
            }

LABEL_94:
            outlined consume of _Glass.Variant.ID(v134, v514);
            v154 = v518;
            v155 = v522;
            goto LABEL_191;
          }

          v177 = v5;
          v178 = v601[0];
          v179 = v601[1];
          v563 = v3;
          v569 = v7;
          v180 = v601[2];
          v181 = v601[3];
          v182 = v46;
          v183 = v45;
          outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
          outlined copy of GlassContainer.Entry.ModelID(v177, v6, v577, v569, 0);
          outlined copy of GlassContainer.Entry.ModelID(v178, v179, v180, v181, 0);
          outlined init with copy of GlassContainer.Entry(v601, &v599);
          outlined copy of GlassContainer.Entry.ModelID(v177, v6, v577, v569, 0);
          outlined copy of _Glass.Variant.ID(v178, v179);
          outlined copy of _Glass.Variant.ID(v177, v6);
          outlined copy of _Glass.Variant.ID(v540, v529);
          outlined copy of _Glass.Variant.ID(v183, v182);
          outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
          outlined consume of _Glass.Variant.ID(v183, v182);
          outlined consume of _Glass.Variant.ID(v540, v529);
          outlined consume of _Glass.Variant.ID(v177, v6);
          outlined consume of _Glass.Variant.ID(v178, v179);
          v97 = v178;
          v5 = v177;
          v98 = v179;
          v11 = v579;
          v10 = v580;
          v7 = v569;
          v99 = v572;
          v3 = v563;
          v100 = v547;
          v9 = 0;
          v8 = v577;
        }

        outlined consume of GlassContainer.Entry.ModelID(v97, v98, v99, v100, 0);
        outlined consume of GlassContainer.Entry.ModelID(v5, v6, v8, v7, 0);
        goto LABEL_30;
      }

      if (v583 != 1)
      {
        if (v5 | v6 ^ 0x80)
        {
          v61 = v5;
          v62 = v601[1] & 0xC0;
          v63 = v6 == 128 && v5 == 1;
          if (v63)
          {
            if (v62 != 128 || v601[0] != 1 || LOBYTE(v601[1]) != 128)
            {
              goto LABEL_82;
            }

            v575 = v601[0];
            v64 = v601[1];
            v65 = v601[2];
            v66 = v601[3];
            outlined copy of GlassContainer.Entry.ModelID(1, v601[1], v601[2], v601[3], 0);
            outlined copy of GlassContainer.Entry.ModelID(1, v64, v65, v66, 0);
            outlined copy of GlassContainer.Entry.ModelID(v61, v6, v8, v7, 0);
            v546 = v64;
            v547 = v66;
            v572 = v65;
            v67 = v66;
            v5 = v61;
            outlined copy of GlassContainer.Entry.ModelID(1, v64, v65, v67, 0);
            outlined init with copy of GlassContainer.Entry(v601, &v599);
            outlined copy of GlassContainer.Entry.ModelID(v61, v6, v8, v7, 0);
            outlined consume of _Glass.Variant.ID(v61, v6);
            v68 = 1;
          }

          else
          {
            if (v62 != 128 || v601[0] != 2 || LOBYTE(v601[1]) != 128)
            {
              goto LABEL_82;
            }

            v575 = v601[0];
            v119 = v601[1];
            v120 = v601[2];
            v121 = v601[3];
            outlined copy of GlassContainer.Entry.ModelID(2, v601[1], v601[2], v601[3], 0);
            outlined copy of GlassContainer.Entry.ModelID(2, v119, v120, v121, 0);
            outlined copy of GlassContainer.Entry.ModelID(v61, v6, v8, v7, 0);
            v546 = v119;
            v547 = v121;
            v572 = v120;
            v122 = v121;
            v5 = v61;
            outlined copy of GlassContainer.Entry.ModelID(2, v119, v120, v122, 0);
            outlined init with copy of GlassContainer.Entry(v601, &v599);
            outlined copy of GlassContainer.Entry.ModelID(v61, v6, v8, v7, 0);
            outlined consume of _Glass.Variant.ID(v61, v6);
            v68 = 2;
          }
        }

        else
        {
          v61 = v5;
          if ((v601[1] & 0xC0) != 0x80 || v601[0] || LOBYTE(v601[1]) != 128)
          {
LABEL_82:
            v125 = v6;
            v126 = v601[0];
            v127 = v601[1];
            v128 = v601[2];
            v129 = v601[3];
            outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
            outlined copy of GlassContainer.Entry.ModelID(v61, v125, v577, v7, 0);
            outlined copy of GlassContainer.Entry.ModelID(v126, v127, v128, v129, 0);
            outlined init with copy of GlassContainer.Entry(v601, &v599);
            outlined copy of GlassContainer.Entry.ModelID(v61, v125, v577, v7, 0);
            outlined copy of _Glass.Variant.ID(v126, v127);
            outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
            outlined consume of _Glass.Variant.ID(v61, v125);
            outlined consume of _Glass.Variant.ID(v126, v127);
            v130 = v126;
            v6 = v125;
            v8 = v577;
            v131 = v127;
            v5 = v61;
            outlined consume of GlassContainer.Entry.ModelID(v130, v131, v128, v129, 0);
            v132 = v61;
            goto LABEL_83;
          }

          v575 = v601[0];
          v115 = v601[1];
          v116 = v601[2];
          v117 = v601[3];
          outlined copy of GlassContainer.Entry.ModelID(0, v601[1], v601[2], v601[3], 0);
          outlined copy of GlassContainer.Entry.ModelID(0, v115, v116, v117, 0);
          outlined copy of GlassContainer.Entry.ModelID(v61, v6, v8, v7, 0);
          v546 = v115;
          v547 = v117;
          v572 = v116;
          v118 = v117;
          v5 = v61;
          outlined copy of GlassContainer.Entry.ModelID(0, v115, v116, v118, 0);
          outlined init with copy of GlassContainer.Entry(v601, &v599);
          outlined copy of GlassContainer.Entry.ModelID(v61, v6, v8, v7, 0);
          outlined consume of _Glass.Variant.ID(v61, v6);
          v68 = 0;
        }

        v123 = 0x80;
        goto LABEL_78;
      }

      v555 = v6;
      if ((v601[1] & 0xC0) != 0x40)
      {
        v80 = v601[0];
        v81 = v5;
        v82 = v601[1];
        v568 = v7;
        v83 = v601[2];
        v84 = v601[3];
        outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
        outlined copy of GlassContainer.Entry.ModelID(v81, v555, v8, v568, 0);
        outlined copy of GlassContainer.Entry.ModelID(v80, v82, v83, v84, 0);
        outlined init with copy of GlassContainer.Entry(v601, &v599);
        outlined copy of GlassContainer.Entry.ModelID(v81, v555, v8, v568, 0);
        outlined copy of _Glass.Variant.ID(v80, v82);
        outlined copy of _Glass.Variant.ID(v81, v555);
        outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
        outlined consume of _Glass.Variant.ID(v81, v555);
        outlined consume of _Glass.Variant.ID(v80, v82);
        v85 = v80;
        v6 = v555;
        v86 = v82;
        v5 = v81;
        v4 = v578;
        v87 = v83;
        v7 = v568;
        outlined consume of GlassContainer.Entry.ModelID(v85, v86, v87, v84, 0);
        v88 = v5;
        v89 = v555;
        v90 = v8;
        goto LABEL_58;
      }

      v576 = 0;
      v590 = v5;
      v591 = v581;
      v588 = v601[0];
      v589 = v601[1] & 0x3F;
      v36 = v601[0];
      v37 = v601[1];
      v548 = v5;
      v38 = v601[2];
      v39 = v601[3];
      outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
      outlined copy of GlassContainer.Entry.ModelID(v36, v37, v38, v39, 0);
      outlined copy of GlassContainer.Entry.ModelID(v548, v555, v8, v7, 0);
      v572 = v38;
      v40 = v38;
      v5 = v548;
      v547 = v39;
      v41 = v39;
      v6 = v555;
      outlined copy of GlassContainer.Entry.ModelID(v36, v37, v40, v41, 0);
      outlined init with copy of GlassContainer.Entry(v601, &v599);
      outlined copy of GlassContainer.Entry.ModelID(v548, v555, v8, v7, 0);
      v575 = v36;
      v546 = v37;
      outlined copy of _Glass.Variant.ID(v36, v37);
      outlined copy of _Glass.Variant.ID(v548, v555);
      if ((specialized static Material.ID.== infix(_:_:)(&v590, &v588) & 1) == 0)
      {
        outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
        outlined consume of GlassContainer.Entry.ModelID(v36, v37, v572, v547, 0);
        outlined consume of _Glass.Variant.ID(v548, v555);
        outlined consume of _Glass.Variant.ID(v36, v37);
        v5 = v548;
        v6 = v555;
        outlined consume of GlassContainer.Entry.ModelID(v36, v37, v572, v547, 0);
        outlined consume of GlassContainer.Entry.ModelID(v548, v555, v8, v7, 0);
        goto LABEL_131;
      }

      outlined consume of _Glass.Variant.ID(v548, v555);
      outlined consume of _Glass.Variant.ID(v36, v37);
      v9 = 0;
LABEL_79:
      if (((v6 >> 8) & 1) == ((v546 & 0x100) == 0))
      {
        outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
        outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
        outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
        outlined consume of GlassContainer.Entry.ModelID(v5, v6, v577, v7, 0);
        v4 = v578;
        v8 = v577;
        goto LABEL_132;
      }

      v576 = v9;
      v72 = v7;
      if (v577 == v572)
      {

        outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
        outlined consume of GlassContainer.Entry.ModelID(v575, v546, v577, v547, 0);

        v124 = v547;
        outlined consume of GlassContainer.Entry.ModelID(v575, v546, v577, v547, 0);
        outlined consume of GlassContainer.Entry.ModelID(v5, v6, v577, v72, 0);
        v8 = v577;
      }

      else
      {
        v167 = *(*v577 + 112);

        v541 = v167(v168);
        outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
        outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);

        v124 = v547;
        outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
        outlined consume of GlassContainer.Entry.ModelID(v5, v6, v577, v72, 0);
        v8 = v577;
        if ((v541 & 1) == 0)
        {
          goto LABEL_63;
        }
      }

      v63 = v72 == v124;
      v4 = v578;
      v11 = v579;
      v7 = v72;
      v10 = v580;
      if (v63)
      {
        result = outlined destroy of GlassContainer.Entry(v601);
        v9 = v576;
        goto LABEL_35;
      }

      v9 = v576;
LABEL_30:
      v42 = (v601[16] + 32);
      v43 = *(v601[16] + 16) + 1;
      while (--v43)
      {
        v44 = *v42;
        v42 += 164;
        if (v44 == v13)
        {
          goto LABEL_563;
        }
      }

      result = outlined destroy of GlassContainer.Entry(v601);
LABEL_35:
      v15 = v586 + 1;
      if (v586 + 1 == v11)
      {
        break;
      }

      if (v15 >= *(v10 + 16))
      {
        goto LABEL_565;
      }
    }

    outlined destroy of GlassContainer.Item(__dst);
    v12 = v582;
LABEL_560:
    if (++v4 == v584)
    {
      return 0;
    }
  }

  while (v4 < *(v3 + 16));
  __break(1u);
LABEL_563:
  outlined destroy of GlassContainer.Item(__dst);
  outlined destroy of GlassContainer.Entry(v601);
  return 1;
}