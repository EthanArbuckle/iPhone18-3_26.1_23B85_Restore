uint64_t _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCs5SIMD3VySfG_Tt1g50158_s17RealityFoundation15TesselatedShape33_958D9063BE5145611DD1DCE0DF8621CFLLV16extractExtrusion10sweepCurveAA14MeshDescriptorVSgSaySo13simd_float4x4aG_tFySrys5F32VySfGGz_SiztXEfU0_yAPz_SiztXEfU_Si0H10Foundation0S8ExtruderVSryAGGSaySo13simd_float4x4aGAI0uV0VTf1nc_nTf4nngngn_n(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
    goto LABEL_10;
  }

  v8 = a2;
  v9 = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    v15 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v15 + 16) = a1;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v43[0] = v15 + 32;
  v43[1] = a1;
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_26;
  }

  v35 = v15;
  v47 = a8;
  v36 = a1;

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    v16 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v16 + 16) = v8;
    v37 = v16;
    v39 = v16 + 32;
    v40 = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v9 + 16) = v8;
  }

  else
  {
    v39 = v9 + 32;
    v40 = 0;

    v37 = v9;
  }

  v38[0] = v9 + 32;
  v38[1] = v8;

  v17 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCs5SIMD2VySfG_Tt1g50229_s17RealityFoundation15TesselatedShape33_958D9063BE5145611DD1DCE0DF8621CFLLV16extractExtrusion10sweepCurveAA14MeshDescriptorVSgSaySo13simd_float4x4aG_tFySrys5SIMD3VySfGGz_SiztXEfU0_yAPz_SiztXEfU_yAPz_SiztXEfU_yAPz_SiztXEfU_ySrys5F17VySfGGz_SiztXEfU_0H10Foundation0S8ExtruderVSrys5SIMD3VySfGGA3OSaySo13simd_float4x4aGSiTf1nc_nTf4ngXnnnngn_n(v8, a3, a6, v43, &v39, v38, a7, v8);

  _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD2VySfG_AA05ArrayD0VyAJGTt1g5(v17, v46);
  if (one-time initialization token for textureCoordinates != -1)
  {
    goto LABEL_27;
  }

LABEL_10:
  v18 = static MeshBuffers.textureCoordinates;
  v19 = unk_1EBEAD110;
  v20 = word_1EBEAD118;
  v21 = HIBYTE(word_1EBEAD118);
  v44[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD2VySfGGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD2VySfGGMR);
  v44[4] = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
  v44[0] = swift_allocObject();
  swift_bridgeObjectRetain_n();
  outlined init with copy of [String : String](v46, v45, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGMR);
  if (v21)
  {
    v22 = 256;
  }

  else
  {
    v22 = 0;
  }

  _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5(v18, v19, v22 | v20, v46);
  specialized Dictionary.subscript.setter(v44, v18, v19, v22 | v20);
  outlined destroy of BodyTrackingComponent?(v46, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGMR);
  *(v9 + 16) = v8;

  _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA05ArrayD0VyAJGTt1g5(v9, v45);
  if (one-time initialization token for normals != -1)
  {
    swift_once();
  }

  v23 = static MeshBuffers.normals;
  v24 = *algn_1EBEAD0C8;
  v25 = word_1EBEAD0D0;
  v26 = HIBYTE(word_1EBEAD0D0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMR);
  v38[3] = v27;
  v38[4] = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
  v38[0] = swift_allocObject();
  swift_bridgeObjectRetain_n();
  outlined init with copy of [String : String](v45, v44, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
  if (v26)
  {
    v28 = 256;
  }

  else
  {
    v28 = 0;
  }

  _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5(v23, v24, v28 | v25, v45);
  specialized Dictionary.subscript.setter(v38, v23, v24, v28 | v25);
  outlined destroy of BodyTrackingComponent?(v45, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
  *(v37 + 16) = v8;

  _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA05ArrayD0VyAJGTt1g5(v37, v44);
  if (one-time initialization token for bitangents != -1)
  {
    swift_once();
  }

  v29 = static MeshBuffers.bitangents;
  v30 = *algn_1EBEAD0F8;
  v31 = word_1EBEAD100;
  v32 = HIBYTE(word_1EBEAD100);
  v41 = v27;
  v42 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
  v39 = swift_allocObject();
  swift_bridgeObjectRetain_n();
  outlined init with copy of [String : String](v44, v38, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
  if (v32)
  {
    v33 = 256;
  }

  else
  {
    v33 = 0;
  }

  _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5(v29, v30, v33 | v31, v44);
  specialized Dictionary.subscript.setter(&v39, v29, v30, v33 | v31);
  result = outlined destroy of BodyTrackingComponent?(v44, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
  if (v36 < v8)
  {
    __break(1u);
  }

  else
  {
    result = v35;
    *(v35 + 16) = v8;
  }

  return result;
}

void specialized TesselatedShape.init(shape:chamferProfile:chamferRadius:resolution:triangulatePreInset:)(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X3>, int64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v14 = *a4;
  *&v177 = MEMORY[0x1E69E7CC0];
  *(&v177 + 1) = MEMORY[0x1E69E7CC0];
  *&v178 = 0;
  *&v179 = MEMORY[0x1E69E7CC0];
  *(&v179 + 1) = MEMORY[0x1E69E7CC0];
  *&v180 = MEMORY[0x1E69E7CC0];
  *(&v180 + 1) = MEMORY[0x1E69E7CC0];
  *&v181 = 0;
  BYTE8(v181) = 1;

  trace(path:points:tangents:uniformSegmentsPerSpan:)(v15, &v177, &v177 + 1, v14, v16, v17);

  v18 = v177;
  v19 = *(v177 + 16);
  v20 = HIDWORD(v19);
  if (HIDWORD(v19))
  {
    goto LABEL_184;
  }

  LOBYTE(v153) = a5;
  v146 = a6;
  a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v7 = *(a6 + 16);
  v20 = *(a6 + 24);
  a5 = v7 + 1;
  if (v7 >= v20 >> 1)
  {
    goto LABEL_185;
  }

  while (1)
  {
    *(a6 + 16) = a5;
    *(a6 + 4 * v7 + 32) = v19;
    *(&v178 + 1) = a6;
    v21 = *(a1 + 16);
    v22 = vdupq_n_s64(0x7FF0000000000000uLL);
    v23 = vdupq_n_s64(0xFFF0000000000000);
    if (v21)
    {
      v24 = a1 + 48;
      do
      {
        v27 = *(v24 - 16);
        v26 = *(v24 - 8);
        v29 = *v24;
        v28 = *(v24 + 8);
        if (*(v24 + 48))
        {
          v30 = *(v24 - 16);
          v31 = *v24;
          v32 = *(v24 + 16);
          if (*(v24 + 48) == 1)
          {
            v33 = vminnmq_f64(v22, vminnmq_f64(v30, v31));
            v34 = vmaxnmq_f64(v23, vmaxnmq_f64(v30, v31));
            v22 = vminnmq_f64(v33, vminnmq_f64(v31, v32));
            v35 = vmaxnmq_f64(v31, v32);
          }

          else
          {
            v36 = *(v24 + 32);
            v37 = vminnmq_f64(v22, vminnmq_f64(v30, v31));
            v34 = vmaxnmq_f64(vmaxnmq_f64(v23, vmaxnmq_f64(v30, v31)), vmaxnmq_f64(v31, v32));
            v22 = vminnmq_f64(vminnmq_f64(v37, vminnmq_f64(v31, v32)), vminnmq_f64(v32, v36));
            v35 = vmaxnmq_f64(v32, v36);
          }

          v23 = vmaxnmq_f64(v34, v35);
        }

        else
        {
          v25 = *(v24 - 16);
          v22 = vminnmq_f64(v22, vminnmq_f64(v25, *v24));
          v23 = vmaxnmq_f64(v23, vmaxnmq_f64(v25, *v24));
        }

        v24 += 80;
        --v21;
      }

      while (v21);
    }

    v154 = v22;
    v157 = v23;

    v182 = v154;
    v183 = v157;
    a5 = *(a2 + 16);
    v151 = a3;
    if (a5)
    {
      v19 = 32;
      do
      {
        v38 = *(a2 + v19);

        trace(path:points:tangents:uniformSegmentsPerSpan:)(v39, &v177, &v177 + 1, v14, &v177, v40);

        v18 = v177;
        a3 = *(v177 + 16);
        v20 = HIDWORD(a3);
        if (HIDWORD(a3))
        {
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
          goto LABEL_182;
        }

        v7 = *(a6 + 16);
        v41 = *(a6 + 24);
        a1 = v7 + 1;
        if (v7 >= v41 >> 1)
        {
          a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v7 + 1, 1, a6);
        }

        *(a6 + 16) = a1;
        *(a6 + 4 * v7 + 32) = a3;
        v19 += 8;
        --a5;
      }

      while (a5);

      *(&v178 + 1) = a6;
      a3 = v151;
      if ((v153 & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_19:
      *&v170 = MEMORY[0x1E69E7CC0];
      triangulateByEarClippingFix(points:accumuluatedOutlineIndexCount:triangleVertexIndices:)(v18, a6, &v170);
      *&v178 = v170;
      goto LABEL_20;
    }

    if (v153)
    {
      goto LABEL_19;
    }

LABEL_20:
    if (!a3)
    {
      goto LABEL_106;
    }

    if (fabs(a7) <= 0.000001)
    {

LABEL_106:
      v167 = v181;
      v168 = v182;
      v163 = v177;
      v164 = v178;
      v165 = v179;
      v166 = v180;
      v171 = v178;
      v172 = v179;
      v169 = v183;
      v170 = v177;
      v175 = v182;
      v176 = v183;
      v173 = v180;
      v174 = v181;
      outlined init with copy of TesselatedShape(&v163, v162);
      outlined destroy of TesselatedShape(&v170);
      v82 = v168;
      v146[4] = v167;
      v146[5] = v82;
      v146[6] = v169;
      v83 = v164;
      *v146 = v163;
      v146[1] = v83;
      v84 = v166;
      v146[2] = v165;
      v146[3] = v84;
      return;
    }

    if (a7 <= 0.0)
    {

      lazy protocol witness table accessor for type ShapeExtrusionError and conformance ShapeExtrusionError();
      swift_allocError();
      *v85 = 0xD000000000000022;
      *(v85 + 8) = 0x80000001C18F08D0;
      *(v85 + 16) = 1;
      swift_willThrow();
LABEL_109:
      v174 = v181;
      v175 = v182;
      v176 = v183;
      v170 = v177;
      v171 = v178;
      v172 = v179;
      v173 = v180;
      outlined destroy of TesselatedShape(&v170);
      return;
    }

    a1 = *(a3 + 16);
    if (!a1)
    {
      break;
    }

    v137 = a3 + 32;
    __asm { FMOV            V1.2D, #-1.0 }

    v46 = vaddq_f64(*(a3 + 32 + 16 * a1 - 16), _Q1);
    if (sqrt(vaddvq_f64(vmulq_f64(v46, v46))) > 0.000001)
    {
      goto LABEL_198;
    }

    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_geom_inset_evaluator_2d, 0x1E69A2830);

    v18 = OS_geom_inset_evaluator_2d.init(points:accumulatedOutlineIndexCount:)();
    a6 = 0;
    while (1)
    {
      v20 = *(a3 + 16);
      if (a6 >= v20)
      {
        break;
      }

      v47 = *(a3 + 16 * a6 + 32) * a7;
      geom_inset_evaluator_get_computed_inset_distance_2d();
      if (v48 > v47)
      {

        lazy protocol witness table accessor for type ShapeExtrusionError and conformance ShapeExtrusionError();
        swift_allocError();
        *v86 = 0xD000000000000083;
        *(v86 + 8) = 0x80000001C18F0900;
        *(v86 + 16) = 0;
        swift_willThrow();

        goto LABEL_109;
      }

      ++a6;
      geom_inset_evaluator_advance_inset_to_2d();
      if (a1 == a6)
      {
        collection_2d = geom_create_collection_2d();
        collection_u = geom_create_collection_u();
        v138 = v18;
        v144 = collection_2d;
        geom_inset_evaluator_extract_offset_curve_2d();
        *&v163 = collection_u;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_geom_collection_u, 0x1E69A2828);
        v51 = lazy protocol witness table accessor for type OS_geom_collection_u and conformance OS_geom_collection_u(&lazy protocol witness table cache variable for type OS_geom_collection_u and conformance OS_geom_collection_u, &lazy cache variable for type metadata for OS_geom_collection_u, 0x1E69A2828);
        v52 = collection_u;
        dispatch thunk of Collection.startIndex.getter();
        v145 = v52;
        *&v163 = v52;
        v162[0] = v170;
        a1 = &v170;
        v147 = v51;
        dispatch thunk of Collection.endIndex.getter();
        a6 = v162[0];
        if (v162[0] != v170)
        {
          a5 = 0;
          v150 = MEMORY[0x1E69E7CC0];
          v14 = v51;
          while (1)
          {
            v87 = dispatch thunk of Collection.subscript.read();
            v7 = *v88;
            v87(&v170, 0);
            *&v170 = v145;
            v18 = &v170;
            dispatch thunk of Collection.index(after:)();
            v89 = geom_collection_data_2d();
            a2 = (v7 - a5);
            if (v7 < a5)
            {
              goto LABEL_183;
            }

            v90 = v89;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v150 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v150 + 2) + 1, 1, v150);
            }

            v92 = *(v150 + 2);
            v91 = *(v150 + 3);
            if (v92 >= v91 >> 1)
            {
              v150 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), v92 + 1, 1, v150);
            }

            *(v150 + 2) = v92 + 1;
            v93 = &v150[16 * v92];
            *(v93 + 4) = v90 + 16 * a5;
            *(v93 + 5) = a2;
            v14 = v147;
            dispatch thunk of Collection.endIndex.getter();
            a6 = v162[0];
            a5 = v7;
            a3 = v151;
            if (v162[0] == v170)
            {
              goto LABEL_31;
            }
          }
        }

        v150 = MEMORY[0x1E69E7CC0];
LABEL_31:

        v56 = specialized classify<A>(subpaths:)(v150, v53, v54, v55);
        a5 = v56;
        v148 = v56[2];
        if (v148)
        {
          v7 = 0;
          v142 = v56 + 4;
          v139 = v56;
          while (v7 < *(a5 + 16))
          {
            v57 = &v142[3 * v7];
            v58 = v57[1];
            v59 = v57[2];
            if (v58)
            {
              v60 = *v57;
              a1 = 16 * v58;
              if (v58 <= 0)
              {
                v14 = MEMORY[0x1E69E7CC0];
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD2VySdGGMd, &_ss23_ContiguousArrayStorageCys5SIMD2VySdGGMR);
                v14 = swift_allocObject();
                v61 = _swift_stdlib_malloc_size(v14);
                v62 = v61 - 32;
                if (v61 < 32)
                {
                  v62 = v61 - 17;
                }

                *(v14 + 16) = v58;
                *(v14 + 24) = 2 * (v62 >> 4);
              }

              memcpy((v14 + 32), v60, 16 * v58);
              a2 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              a2 = MEMORY[0x1E69E7CC0];
              v14 = MEMORY[0x1E69E7CC0];
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt32VGMd, &_ss23_ContiguousArrayStorageCys6UInt32VGMR);
            v63 = swift_allocObject();
            *(v63 + 16) = xmmword_1C1887600;
            v64 = *(v14 + 16);
            if (HIDWORD(v64))
            {
              goto LABEL_188;
            }

            v19 = v63;
            v153 = v7;
            *(v63 + 32) = v64;
            v158 = v59[2];
            if (v158)
            {
              v155 = v59 + 4;

              a3 = 0;
              while (1)
              {
                v20 = &v155[2 * a3];
                v18 = *(v20 + 8);
                a6 = *(v14 + 16);
                a5 = a6 + v18;
                if (__OFADD__(a6, v18))
                {
                  goto LABEL_174;
                }

                v65 = *v20;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                if (isUniquelyReferenced_nonNull_native && (v67 = *(v14 + 24) >> 1, v67 >= a5))
                {
                  v7 = v19;
                }

                else
                {
                  v7 = v19;
                  if (a6 <= a5)
                  {
                    v68 = a6 + v18;
                  }

                  else
                  {
                    v68 = a6;
                  }

                  v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v68, 1, v14);
                  v67 = *(v14 + 24) >> 1;
                }

                v69 = *(v14 + 16);
                v19 = v67 - v69;
                if (v18)
                {
                  _ZF = v67 == v69;
                }

                else
                {
                  _ZF = 1;
                }

                if (_ZF)
                {
                  if (v65)
                  {
                    v20 = v65;
                  }

                  else
                  {
                    v20 = 0;
                  }

                  if (v65)
                  {
                    a1 = v65 + 16 * v18;
                  }

                  else
                  {
                    a1 = 0;
                  }

                  a2 = 0;
                }

                else
                {
                  if (v18 >= v19)
                  {
                    a2 = v67 - v69;
                  }

                  else
                  {
                    a2 = v18;
                  }

                  a5 = 16 * a2;
                  memcpy((v14 + 16 * v69 + 32), v65, 16 * a2);
                  v20 = v65 + 16 * a2;
                  a1 = v65 + 16 * v18;
                }

                if (a2 < v18)
                {
                  goto LABEL_175;
                }

                if (a2 > 0)
                {
                  v71 = *(v14 + 16);
                  _VF = __OFADD__(v71, a2);
                  v72 = v71 + a2;
                  if (_VF)
                  {
                    goto LABEL_178;
                  }

                  *(v14 + 16) = v72;
                }

                a5 = *(v14 + 16);
                if (a2 != v19)
                {
                  v19 = v7;
                  goto LABEL_78;
                }

                v19 = v7;
                if (v20 && a1 != v20)
                {
                  a6 = v20 + 16;
                  v18 = *v20;
                  v7 = *(v20 + 8);
                  while (1)
                  {
                    v75 = *(v14 + 24);
                    v76 = v75 >> 1;
                    if ((v75 >> 1) < a5 + 1)
                    {
                      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), a5 + 1, 1, v14);
                      v76 = *(v14 + 24) >> 1;
                      if (a5 < v76)
                      {
LABEL_89:
                        v77 = a6;
                        a6 = a6 + 16 * v76 - 16 * a5;
                        v78 = a5 + 2;
                        while (1)
                        {
                          v79 = (v14 + 16 * v78);
                          *v79 = v18;
                          v79[1] = v7;
                          if (v77 == a1)
                          {
                            break;
                          }

                          v18 = *v77;
                          v7 = v77[1];
                          v77 += 2;
                          if (++v78 - v76 == 2)
                          {
                            a5 = v76;
                            goto LABEL_86;
                          }
                        }

                        a5 = v78 - 1;
                        *(v14 + 16) = v78 - 1;
                        break;
                      }
                    }

                    else if (a5 < v76)
                    {
                      goto LABEL_89;
                    }

LABEL_86:
                    *(v14 + 16) = a5;
                  }
                }

LABEL_78:
                v20 = HIDWORD(a5);
                if (HIDWORD(a5))
                {
                  goto LABEL_176;
                }

                v74 = *(v19 + 16);
                v73 = *(v19 + 24);
                a1 = v74 + 1;
                if (v74 >= v73 >> 1)
                {
                  v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v73 > 1), v74 + 1, 1, v19);
                }

                ++a3;
                *(v19 + 16) = a1;
                *(v19 + 4 * v74 + 32) = a5;
                if (a3 == v158)
                {

                  a2 = MEMORY[0x1E69E7CC0];
                  break;
                }
              }
            }

            *&v170 = a2;
            triangulateByEarClippingFix(points:accumuluatedOutlineIndexCount:triangleVertexIndices:)(v14, v19, &v170);
            a3 = *(v179 + 16);

            specialized Array.append<A>(contentsOf:)(v80);
            v7 = *(v170 + 16);
            if (v7)
            {
              v159 = v170;
              *&v163 = a2;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
              if (HIDWORD(a3))
              {
                goto LABEL_195;
              }

              a2 = v163;
              v19 = 32;
              v18 = v159;
              do
              {
                v20 = *(v18 + v19);
                a6 = (v20 + a3);
                if (__CFADD__(v20, a3))
                {
                  goto LABEL_173;
                }

                *&v163 = a2;
                a1 = *(a2 + 16);
                v81 = *(a2 + 24);
                a5 = a1 + 1;
                if (a1 >= v81 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v81 > 1), a1 + 1, 1);
                  v18 = v159;
                  a2 = v163;
                }

                *(a2 + 16) = a5;
                *(a2 + 4 * a1 + 32) = a6;
                v19 += 4;
              }

              while (--v7);
            }

            v7 = v153 + 1;
            specialized Array.append<A>(contentsOf:)(a2);
            a3 = v151;
            a5 = v139;
            if (v153 + 1 == v148)
            {
              goto LABEL_118;
            }
          }
        }

        else
        {
LABEL_118:

          a5 = geom_create_collection_2d();
          v94 = geom_create_collection_u();
          v95 = geom_create_collection_u();
          v96 = geom_create_collection_u();
          collection_d = geom_create_collection_d();
          v149 = v94;
          v143 = v95;
          v135 = v96;
          geom_inset_evaluator_extract_joiner_mesh_2d();
          geom_inset_evaluator_get_computed_inset_distance_2d();
          *&v181 = v98;
          BYTE8(v181) = 0;
          v136 = collection_d;
          v99 = geom_collection_size_d();
          if (v99 < 0)
          {
            goto LABEL_199;
          }

          a2 = v99;
          v134 = a5;
          if (v99)
          {
            v14 = *(a3 + 16);
            type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_geom_collection_d, 0x1E69A2820);
            v133 = a2;
            lazy protocol witness table accessor for type OS_geom_collection_u and conformance OS_geom_collection_u(&lazy protocol witness table cache variable for type OS_geom_collection_d and conformance OS_geom_collection_d, &lazy cache variable for type metadata for OS_geom_collection_d, 0x1E69A2820);
            v156 = 0;
            a1 = 0;
            a6 = 0;
            v19 = a3 + 48;
            v131 = a3 + 48;
            v132 = v14;
LABEL_122:
            v153 = v156;
            v7 = a6 + 1;
            *&v170 = v136;
            v18 = &v170;
            GeometryCollection.subscript.getter();
            v20 = a1 + 1;
            v100 = a1 + 2;
            if (v14 > (a1 + 2))
            {
              v100 = v14;
            }

            v101 = v100 - 2;
            while (!__OFADD__(a1, 2))
            {
              if ((a1 + 2) >= v14)
              {
                goto LABEL_131;
              }

              if ((v20 & 0x8000000000000000) != 0)
              {
                goto LABEL_180;
              }

              v102 = a1 + 1;
              if (a1 + 1 >= *(a3 + 16))
              {
                goto LABEL_181;
              }

              v103 = *(v19 + 16 * a1++) * a7;
              if (v103 >= *&v163)
              {
                v101 = v102 - 1;
LABEL_131:
                if ((v101 & 0x8000000000000000) != 0)
                {
                  goto LABEL_189;
                }

                v104 = *(a3 + 16);
                if (v101 >= v104)
                {
                  goto LABEL_190;
                }

                if (v101 + 1 >= v104)
                {
                  goto LABEL_191;
                }

                v105 = *(v137 + 16 * v101);
                v106 = a7 * v105.f64[0];
                v152 = vmuld_lane_f64(a7, v105, 1);
                v107 = *(v137 + 16 * (v101 + 1));
                v108 = a7 * v107.f64[0];
                v141 = v101;
                if (v106 != a7 * v107.f64[0])
                {
                  if ((v109 = fabs(v106), v110 = fabs(v108), v109 == INFINITY) && v110 == INFINITY || vabdd_f64(v106, v108) >= (v109 + v110 + 1.0) * 0.000001)
                  {
                    v152 = vmuld_lane_f64(a7, v107, 1) * ((*&v163 - v106) / (v108 - v106)) + v152 * (1.0 - (*&v163 - v106) / (v108 - v106));
                  }
                }

                *&v170 = v135;
                lazy protocol witness table accessor for type OS_geom_collection_u and conformance OS_geom_collection_u(&lazy protocol witness table cache variable for type OS_geom_collection_u and conformance OS_geom_collection_u, &lazy cache variable for type metadata for OS_geom_collection_u, 0x1E69A2828);
                GeometryCollection.subscript.getter();
                v111 = v163;
                if (v156 > v163)
                {
                  goto LABEL_192;
                }

                v140 = a6 + 1;
                *&v170 = a5;
                v7 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_geom_collection_2d, 0x1E69A2818);
                a6 = lazy protocol witness table accessor for type OS_geom_collection_u and conformance OS_geom_collection_u(&lazy protocol witness table cache variable for type OS_geom_collection_2d and conformance OS_geom_collection_2d, &lazy cache variable for type metadata for OS_geom_collection_2d, 0x1E69A2818);
                dispatch thunk of Collection.startIndex.getter();
                dispatch thunk of Collection.endIndex.getter();
                if (v162[0] < v163)
                {
                  goto LABEL_193;
                }

                if (v156 < v163 || v162[0] < v111)
                {
                  goto LABEL_194;
                }

                v19 = a5;
                v156 = v111;
                v112 = specialized RandomAccessCollection<>.distance(from:to:)(v153, v111);
                if (v112)
                {
                  a2 = v112;
                  *&v163 = MEMORY[0x1E69E7CC0];
                  v18 = &v163;
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v112 & ~(v112 >> 63), 0);
                  a3 = v163;
                  v162[0] = v153;
                  if (a2 < 0)
                  {
                    goto LABEL_196;
                  }

                  while (1)
                  {
                    a1 = v162[0];
                    v20 = v156;
                    if (v162[0] < v153 || v162[0] >= v156)
                    {
                      goto LABEL_177;
                    }

                    v114 = dispatch thunk of Collection.subscript.read();
                    v160 = *v115;
                    v114(&v170, 0);
                    *&v163 = a3;
                    v14 = *(a3 + 16);
                    v116 = *(a3 + 24);
                    a5 = v14 + 1;
                    if (v14 >= v116 >> 1)
                    {
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v116 > 1), v14 + 1, 1);
                      a3 = v163;
                    }

                    *(a3 + 16) = a5;
                    v117 = a3 + 32 * v14;
                    *(v117 + 32) = v160;
                    *(v117 + 48) = *&v152;
                    *&v170 = v19;
                    v18 = &v170;
                    dispatch thunk of Collection.index(after:)();
                    if (!--a2)
                    {

                      goto LABEL_121;
                    }
                  }
                }

                a3 = MEMORY[0x1E69E7CC0];
LABEL_121:
                specialized Array.append<A>(contentsOf:)(a3);
                v14 = v132;
                a2 = v133;
                a6 = v140;
                a1 = v141;
                a3 = v151;
                a5 = v134;
                v19 = v131;
                if (v140 == v133)
                {
                  goto LABEL_155;
                }

                goto LABEL_122;
              }
            }

            goto LABEL_179;
          }

LABEL_155:

          *&v170 = v143;
          dispatch thunk of Collection.startIndex.getter();
          v118 = 0;
          *&v163 = v143;
          v119 = MEMORY[0x1E69E7CC0];
          while (1)
          {
            v120 = v118;
            dispatch thunk of Collection.endIndex.getter();
            if (v162[0] == v170)
            {

              goto LABEL_106;
            }

            v121 = dispatch thunk of Collection.subscript.read();
            v118 = *v122;
            v121(&v170, 0);
            *&v170 = v143;
            v161 = v162[0];
            dispatch thunk of Collection.index(after:)();
            v123 = v120 + 1;
            if (v120 + 1 >= v118)
            {
              break;
            }

            if (v123 != v118 - 1)
            {
              if (v123 >= v118 - 1)
              {
                goto LABEL_200;
              }

              lazy protocol witness table accessor for type OS_geom_collection_u and conformance OS_geom_collection_u(&lazy protocol witness table cache variable for type OS_geom_collection_u and conformance OS_geom_collection_u, &lazy cache variable for type metadata for OS_geom_collection_u, 0x1E69A2828);
              v124 = v120 + 2;
              do
              {
                *&v170 = v149;
                GeometryCollection.subscript.getter();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v119 + 2) + 1, 1, v119);
                }

                v126 = *(v119 + 2);
                v125 = *(v119 + 3);
                if (v126 >= v125 >> 1)
                {
                  v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v125 > 1), v126 + 1, 1, v119);
                }

                *(v119 + 2) = v126 + 1;
                *&v119[4 * v126 + 32] = v161;
                *&v170 = v149;
                GeometryCollection.subscript.getter();
                v128 = *(v119 + 2);
                v127 = *(v119 + 3);
                if (v128 >= v127 >> 1)
                {
                  v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v127 > 1), v128 + 1, 1, v119);
                }

                *(v119 + 2) = v128 + 1;
                *&v119[4 * v128 + 32] = v161;
                *&v170 = v149;
                GeometryCollection.subscript.getter();
                v130 = *(v119 + 2);
                v129 = *(v119 + 3);
                if (v130 >= v129 >> 1)
                {
                  v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v129 > 1), v130 + 1, 1, v119);
                }

                *(v119 + 2) = v130 + 1;
                *&v119[4 * v130 + 32] = v161;
                ++v124;
              }

              while (v118 != v124);
              *(&v180 + 1) = v119;
            }
          }

          __break(1u);
        }

        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
        goto LABEL_197;
      }
    }

LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), a5, 1, a6);
  }

LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
}

uint64_t lazy protocol witness table accessor for type OS_geom_collection_u and conformance OS_geom_collection_u(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OS_os_log(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for thunk for @callee_guaranteed (@unowned UnsafePointer<CGPathElement>) -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_56(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata completion function for PiecewiseLinearPolygon(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PiecewiseLinearPolygon(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *storeEnumTagSinglePayload for PiecewiseLinearPolygon(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t type metadata completion function for Shape(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for Array();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Shape(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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

_DWORD *storeEnumTagSinglePayload for Shape(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

__n128 __swift_memcpy112_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for TesselatedShape(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t storeEnumTagSinglePayload for TesselatedShape(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExtrudedShapeDescriptor(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 520))
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

uint64_t storeEnumTagSinglePayload for ExtrudedShapeDescriptor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 504) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 520) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 520) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PathSpan(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 65))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 64);
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

uint64_t storeEnumTagSinglePayload for PathSpan(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SpatialPhotoStereoAggressor.AggressorType@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized SpatialPhotoStereoAggressor.AggressorType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SpatialPhotoStereoAggressor.AggressorType(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0x80000001C18DD290;
    v9 = 0xD000000000000019;
    if (v2 != 6)
    {
      v9 = 0x6567616D49776F4CLL;
      v8 = 0xEF7974696C617551;
    }

    v10 = 0xEF65736F6C436F6FLL;
    v11 = 0xD000000000000017;
    if (v2 == 4)
    {
      v11 = 0x54737463656A624FLL;
    }

    else
    {
      v10 = 0x80000001C18DD270;
    }

    if (*v1 <= 5u)
    {
      v12 = v11;
    }

    else
    {
      v12 = v9;
    }

    if (*v1 <= 5u)
    {
      v8 = v10;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xEB00000000646569;
    v4 = 0x6669636570736E55;
    v5 = 0x80000001C18DD220;
    if (v2 == 2)
    {
      v6 = 0xD000000000000016;
    }

    else
    {
      v6 = 0xD000000000000015;
    }

    if (v2 != 2)
    {
      v5 = 0x80000001C18DD240;
    }

    if (*v1)
    {
      v4 = 0x6C63634F736E654CLL;
      v3 = 0xED00006E6F697375;
    }

    if (*v1 <= 1u)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if (*v1 > 1u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

void SpatialPhotoStereoAggressor.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  String.hash(into:)();

  if (!a4)
  {
    Hasher._combine(_:)(0);
    if ((a5 & 0x100000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if ((a5 & 0x100000000) != 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  if ((a5 & 0x7FFFFF) == 0 && (a5 & 0x7F800000) == 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = a5;
  }

  Hasher._combine(_:)(v8);
}

Swift::Int SpatialPhotoStereoAggressor.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  if (!a3)
  {
    Hasher._combine(_:)(0);
    if ((a4 & 0x100000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if ((a4 & 0x100000000) != 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  if ((a4 & 0x7FFFFF) == 0 && (a4 & 0x7F800000) == 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = a4;
  }

  Hasher._combine(_:)(v7);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SpatialPhotoStereoAggressor()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 6);
  v5 = v0[28];
  Hasher.init(_seed:)();
  String.hash(into:)();

  if (v3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v5)
    {
LABEL_3:
      Hasher._combine(_:)(0);
      return Hasher._finalize()();
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(1u);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

uint64_t specialized static SpatialPhotoStereoAggressor.== infix(_:_:)(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((specialized == infix<A>(_:_:)(a1, a5) & 1) == 0)
  {
    return 0;
  }

  if (a3)
  {
    if (!a7 || (a2 != a6 || a3 != a7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (a7)
  {
    return 0;
  }

  if ((a4 & 0x100000000) != 0)
  {
    if ((a8 & 0x100000000) != 0)
    {
      return 1;
    }
  }

  else if ((a8 & 0x100000000) == 0 && *&a4 == *&a8)
  {
    return 1;
  }

  return 0;
}

unint64_t specialized SpatialPhotoStereoAggressor.AggressorType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SpatialPhotoStereoAggressor.AggressorType.init(rawValue:), v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

char *specialized static SpatialPhotoStereoAggressor.aggressors(fromStereoPairGroupDictionary:)(uint64_t a1)
{
  v2 = *MEMORY[0x1E696DCC8];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

    return 0;
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v5, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, &_sSaySDySSypGGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v8 = *(v45._countAndFlagsBits + 16);
  countAndFlagsBits = v45._countAndFlagsBits;
  if (v8)
  {
    v44 = *MEMORY[0x1E696E230];
    v43 = *MEMORY[0x1E696E220];
    v42 = *MEMORY[0x1E696E228];
    v9 = MEMORY[0x1E69E7CC0];
    v10 = (v45._countAndFlagsBits + 32);
    while (1)
    {
      v11 = *v10;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
      if (!*(v11 + 16))
      {
        break;
      }

      v15 = v12;

      v16 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v14);
      v18 = v17;

      if ((v18 & 1) == 0)
      {
        goto LABEL_13;
      }

      outlined init with copy of Any(*(v11 + 56) + 32 * v16, v46);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_13;
      }

      v19 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SpatialPhotoStereoAggressor.AggressorType.init(rawValue:), v45);

      if (v19 >= 8)
      {
        v20 = 0;
      }

      else
      {
        v20 = v19;
      }

LABEL_14:
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (!*(v11 + 16))
      {

LABEL_20:
        v26 = 0;
        goto LABEL_21;
      }

      v23 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v22);
      v25 = v24;

      if ((v25 & 1) == 0)
      {
        goto LABEL_20;
      }

      outlined init with copy of Any(*(v11 + 56) + 32 * v23, v46);
      type metadata accessor for NSNumber();
      if (swift_dynamicCast())
      {
        v26 = v45._countAndFlagsBits;
      }

      else
      {
        v26 = 0;
      }

LABEL_21:
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (!*(v11 + 16))
      {

LABEL_32:

        v33 = 0;
        object = 0;
        if (v26)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      }

      v29 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v28);
      v31 = v30;

      if ((v31 & 1) == 0)
      {
        goto LABEL_32;
      }

      outlined init with copy of Any(*(v11 + 56) + 32 * v29, v46);

      v32 = swift_dynamicCast();
      if (v32)
      {
        v33 = v45._countAndFlagsBits;
      }

      else
      {
        v33 = 0;
      }

      if (v32)
      {
        object = v45._object;
      }

      else
      {
        object = 0;
      }

      if (v26)
      {
LABEL_33:
        [v26 floatValue];
        v35 = v36;
        goto LABEL_34;
      }

LABEL_30:
      v35 = 0;
LABEL_34:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      }

      v38 = *(v9 + 2);
      v37 = *(v9 + 3);
      if (v38 >= v37 >> 1)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v9);
      }

      *(v9 + 2) = v38 + 1;
      v39 = &v9[32 * v38];
      v39[32] = v20;
      *(v39 + 5) = v33;
      *(v39 + 6) = object;
      *(v39 + 14) = v35;
      v39[60] = v26 == 0;
      ++v10;
      if (!--v8)
      {
        goto LABEL_44;
      }
    }

LABEL_13:
    v20 = 0;
    goto LABEL_14;
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_44:

  return v9;
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpatialPhotoStereoAggressor(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 29))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for SpatialPhotoStereoAggressor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 29) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 29) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialPhotoStereoAggressor and conformance SpatialPhotoStereoAggressor()
{
  result = lazy protocol witness table cache variable for type SpatialPhotoStereoAggressor and conformance SpatialPhotoStereoAggressor;
  if (!lazy protocol witness table cache variable for type SpatialPhotoStereoAggressor and conformance SpatialPhotoStereoAggressor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialPhotoStereoAggressor and conformance SpatialPhotoStereoAggressor);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialPhotoStereoAggressor.AggressorType and conformance SpatialPhotoStereoAggressor.AggressorType()
{
  result = lazy protocol witness table cache variable for type SpatialPhotoStereoAggressor.AggressorType and conformance SpatialPhotoStereoAggressor.AggressorType;
  if (!lazy protocol witness table cache variable for type SpatialPhotoStereoAggressor.AggressorType and conformance SpatialPhotoStereoAggressor.AggressorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialPhotoStereoAggressor.AggressorType and conformance SpatialPhotoStereoAggressor.AggressorType);
  }

  return result;
}

uint64_t Entity.playAnimation(_:transitionDuration:blendLayerOffset:separateAnimatedValue:startsPaused:clock:handoffType:)(uint64_t a1, uint64_t a2, double a3, uint64_t a4, char a5, const void *a6, unsigned __int8 *a7)
{
  v35 = *MEMORY[0x1E69E9840];
  v13 = *a7;
  REAnimationHandoffDefaultDescEx();
  v14 = v33;
  v15 = v13 >> 6;
  if (v13 >> 6 <= 1)
  {
    v16 = v15 != 0;
    v17 = v13 ^ 1;
    if (!a2)
    {
      goto LABEL_15;
    }

LABEL_11:
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      v14 = a2;
      goto LABEL_15;
    }

    __break(1u);
  }

  if (v15 == 3)
  {
    if (!a2)
    {
      v17 = 0;
      v16 = 0;
      goto LABEL_15;
    }

LABEL_9:
    v17 = 0;
    v16 = 2;
    goto LABEL_11;
  }

  if (v13 == 128)
  {
    if (!a2)
    {
      v17 = 0;
      v16 = 2;
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  v17 = 0;
  v16 = 3;
  if (a2)
  {
    goto LABEL_11;
  }

LABEL_15:
  v19 = *(v7 + 16);
  REAnimationComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  v20 = *(a1 + 16);
  LODWORD(timebaseOut) = v16;
  v18 = a3;
  *(&timebaseOut + 1) = v18;
  v33 = v14;
  v34 = v17 & 1;
  v21 = REAnimationComponentPlay();
  if (!a6)
  {
LABEL_23:
    if ((a5 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_24:
    REAnimationComponentPauseAnimation();
    goto LABEL_25;
  }

  v22 = swift_unknownObjectRetain();
  v23 = CFGetTypeID(v22);
  if (v23 != CMClockGetTypeID())
  {
    v27 = CFGetTypeID(a6);
    if (v27 != CMTimebaseGetTypeID())
    {
      swift_unknownObjectRelease();
      if ((a5 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    type metadata accessor for CMTimebaseRef(0);
    v28 = swift_dynamicCastUnknownClassUnconditional();
    REAnimationComponentSetAnimationParentTimebase();

    goto LABEL_23;
  }

  timebaseOut = 0;
  v24 = *MEMORY[0x1E695E480];
  type metadata accessor for CMClockRef(0);
  swift_unknownObjectRetain();
  v25 = swift_dynamicCastUnknownClassUnconditional();
  CMTimebaseCreateWithSourceClock(v24, v25, &timebaseOut);

  if (timebaseOut)
  {
    v26 = timebaseOut;
    REAnimationComponentSetAnimationParentTimebase();
  }

  swift_unknownObjectRelease();

  if (a5)
  {
    goto LABEL_24;
  }

LABEL_25:
  type metadata accessor for AnimationPlaybackController();
  swift_allocObject();

  result = AnimationPlaybackController.init(entity:identifier:withObservation:)(v29, v21, 1);
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t Entity.playAnimation(named:transitionDuration:startsPaused:recursive:)(uint64_t a1, uint64_t a2, char a3, char a4, double a5)
{
  v6 = v5;
  if (a4)
  {

    v10 = *(v5 + 16);
    if (REEntityGetChildCount() >= 1)
    {
      v11 = 0;
      do
      {
        v12 = *(v6 + 16);
        if (v11 >= REEntityGetChildCount())
        {
          goto LABEL_37;
        }

        v13 = *(v6 + 16);
        Child = REEntityGetChild();
        if (!Child)
        {
          goto LABEL_70;
        }

        v15 = Child;
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v16 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          if (REEntityIsBeingDestroyed())
          {
            goto LABEL_39;
          }

          v17 = specialized static Entity.entityInfoType(_:)();
          if (v17)
          {
            v5 = (*(v17 + 232))();
            v18 = *(v5 + 16);

            MEMORY[0x1C68F9740](v18, 0);
            *(v5 + 16) = v15;
            MEMORY[0x1C68F9740](v15, v5);

            goto LABEL_12;
          }

          v16 = makeEntity(for:)(v15);
        }

        v5 = v16;
LABEL_12:
        v19 = *(v6 + 16);
        if (v11 >= REEntityGetChildCount())
        {
          goto LABEL_38;
        }

        ++v11;
        Entity.playAnimation(named:transitionDuration:startsPaused:recursive:)(a1, a2, a3 & 1, 1, a5);

        v20 = *(v6 + 16);
      }

      while (v11 < REEntityGetChildCount());
    }
  }

  v21 = Entity.availableAnimations.getter();
  v5 = v21;
  v74 = MEMORY[0x1E69E7CC0];
  if (v21 >> 62)
  {
    goto LABEL_40;
  }

  v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v71 = v6;
  if (v22)
  {
LABEL_19:
    v23 = 0;
    v24 = v5 & 0xC000000000000001;
    v25 = v5 & 0xFFFFFFFFFFFFFF8;
    v72 = v5;
    while (1)
    {
      if (v24)
      {
        v26 = MEMORY[0x1C68F41F0](v23, v5);
        v27 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
LABEL_34:
          __break(1u);
LABEL_35:
          v34 = v74;
          v6 = v71;
          goto LABEL_42;
        }
      }

      else
      {
        if (v23 >= *(v25 + 16))
        {
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          v22 = __CocoaSet.count.getter();
          v71 = v6;
          if (!v22)
          {
            break;
          }

          goto LABEL_19;
        }

        v26 = *(v5 + 8 * v23 + 32);

        v27 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_34;
        }
      }

      v28 = *(v26 + 32);
      if (v28 && (*(v26 + 24) == a1 ? (v29 = v28 == a2) : (v29 = 0), v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v6 = v24;
        v30 = v22;
        v31 = a1;
        v32 = a2;
        v33 = *(v74 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        a2 = v32;
        a1 = v31;
        v22 = v30;
        v24 = v6;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v5 = v72;
      }

      else
      {
      }

      ++v23;
      if (v27 == v22)
      {
        goto LABEL_35;
      }
    }
  }

  v34 = MEMORY[0x1E69E7CC0];
LABEL_42:

  if ((v34 & 0x8000000000000000) == 0 && (v34 & 0x4000000000000000) == 0)
  {
    v35 = *(v34 + 16);
    if (v35)
    {
      goto LABEL_45;
    }

LABEL_64:

    type metadata accessor for AnimationPlaybackController();
    v42 = swift_allocObject();
    *(v42 + 40) = 0;
    swift_weakInit();
    *(v42 + 16) = 0;
    swift_weakAssign();
    v68 = *(v6 + 16);

    *(v42 + 32) = REEntityGetLocalId();
    Hasher.init(_seed:)();
    MEMORY[0x1C68F4C10](*(v6 + 16));
    v69 = Hasher._finalize()();

    *(v42 + 24) = v69;
    return v42;
  }

  v35 = __CocoaSet.count.getter();
  if (!v35)
  {
    goto LABEL_64;
  }

LABEL_45:
  if (v35 == 1)
  {
    if ((v34 & 0xC000000000000001) != 0)
    {
      v36 = MEMORY[0x1C68F41F0](0, v34);
      goto LABEL_49;
    }

    if (*(v34 + 16))
    {
      v36 = *(v34 + 32);

LABEL_49:

      REAnimationHandoffDefaultDescEx();
      v38 = *(v71 + 16);
      REAnimationComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      v39 = *(v36 + 16);
      v37 = a5;
      *(&v74 + 1) = v37;
      v40 = REAnimationComponentPlay();
      if (a3)
      {
        REAnimationComponentPauseAnimation();
      }

      type metadata accessor for AnimationPlaybackController();
      swift_allocObject();

      v42 = AnimationPlaybackController.init(entity:identifier:withObservation:)(v41, v40, 1);

      return v42;
    }

    goto LABEL_68;
  }

  v43 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v43 + 120, &v74);
  v44 = v77;
  v45 = v78;
  __swift_project_boxed_opaque_existential_1(&v74, v77);
  (*(v45 + 32))(v44, v45);
  __swift_destroy_boxed_opaque_existential_1(&v74);
  if ((v35 - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v46 = swift_slowAlloc();
  if (v35 < 0)
  {
    goto LABEL_69;
  }

  v47 = v46;
  for (i = 0; i != v35; ++i)
  {
    if ((v34 & 0xC000000000000001) != 0)
    {
      v49 = MEMORY[0x1C68F41F0](i, v34);
    }

    else
    {
      v51 = *(v34 + 8 * i + 32);
    }

    v50 = *(v49 + 16);

    *(v47 + 8 * i) = v50;
  }

  TimelineGroup = REAssetManagerTimelineAssetCreateTimelineGroup();
  if (TimelineGroup)
  {
    v53 = TimelineGroup;

    v54 = *(v71 + 16);
    REEntityGetName();
    v55 = String.init(cString:)();
    v57 = v56;
    type metadata accessor for AnimationResource();
    v58 = swift_allocObject();
    v58[2] = v53;
    v58[3] = v55;
    v58[4] = v57;
    RERetain();
    REAssetSetSwiftObject();
    REAnimationHandoffDefaultDescEx();
    v59 = v74;
    v60 = v75;
    v61 = v76;
    v62 = v77;
    v64 = *(v71 + 16);
    REAnimationComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    v65 = v58[2];
    LODWORD(v74) = v59;
    v63 = a5;
    *(&v74 + 1) = v63;
    v75 = v60;
    v76 = v61;
    LOBYTE(v77) = v62;
    v66 = REAnimationComponentPlay();
    if (a3)
    {
      REAnimationComponentPauseAnimation();
    }

    type metadata accessor for AnimationPlaybackController();
    swift_allocObject();

    v42 = AnimationPlaybackController.init(entity:identifier:withObservation:)(v67, v66, 1);

    MEMORY[0x1C6902A30](v47, -1, -1);
    return v42;
  }

LABEL_71:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Entity.playAnimation(_:transitionDuration:blendLayerOffset:separateAnimatedValue:startsPaused:clock:)(uint64_t a1, uint64_t a2, double a3, uint64_t a4, char a5, const void *a6)
{
  v29 = *MEMORY[0x1E69E9840];
  REAnimationHandoffDefaultDescEx();
  if (a2)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      v12 = 2;
      goto LABEL_6;
    }

    __break(1u);
  }

  v12 = timebaseOut;
  LODWORD(a2) = v28;
LABEL_6:
  v14 = *(v6 + 16);
  REAnimationComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  v15 = *(a1 + 16);
  LODWORD(timebaseOut) = v12;
  v13 = a3;
  *(&timebaseOut + 1) = v13;
  v28 = a2;
  v16 = REAnimationComponentPlay();
  if (!a6)
  {
LABEL_14:
    if ((a5 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_15:
    REAnimationComponentPauseAnimation();
    goto LABEL_16;
  }

  v17 = swift_unknownObjectRetain();
  v18 = CFGetTypeID(v17);
  if (v18 != CMClockGetTypeID())
  {
    v22 = CFGetTypeID(a6);
    if (v22 != CMTimebaseGetTypeID())
    {
      swift_unknownObjectRelease();
      if ((a5 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    type metadata accessor for CMTimebaseRef(0);
    v23 = swift_dynamicCastUnknownClassUnconditional();
    REAnimationComponentSetAnimationParentTimebase();

    goto LABEL_14;
  }

  timebaseOut = 0;
  v19 = *MEMORY[0x1E695E480];
  type metadata accessor for CMClockRef(0);
  swift_unknownObjectRetain();
  v20 = swift_dynamicCastUnknownClassUnconditional();
  CMTimebaseCreateWithSourceClock(v19, v20, &timebaseOut);

  if (timebaseOut)
  {
    v21 = timebaseOut;
    REAnimationComponentSetAnimationParentTimebase();
  }

  swift_unknownObjectRelease();

  if (a5)
  {
    goto LABEL_15;
  }

LABEL_16:
  type metadata accessor for AnimationPlaybackController();
  swift_allocObject();

  result = AnimationPlaybackController.init(entity:identifier:withObservation:)(v24, v16, 1);
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t Entity.playAnimation(_:transitionDuration:startsPaused:)(uint64_t a1, char a2)
{
  REAnimationHandoffDefaultDescEx();
  v5 = *(v2 + 16);
  REAnimationComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  v6 = *(a1 + 16);
  v7 = REAnimationComponentPlay();
  if (a2)
  {
    REAnimationComponentPauseAnimation();
  }

  type metadata accessor for AnimationPlaybackController();
  swift_allocObject();

  return AnimationPlaybackController.init(entity:identifier:withObservation:)(v8, v7, 1);
}

Swift::Void __swiftcall Entity.stopAllAnimations(recursive:)(Swift::Bool recursive)
{
  v2 = v1;
  v4 = *(v2 + 16);
  REAnimationComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    REAnimationComponentStopAllAnimations();
    RENetworkMarkComponentDirty();
  }

  if (recursive)
  {

    v5 = *(v2 + 16);
    if (REEntityGetChildCount() < 1)
    {
LABEL_18:
    }

    else
    {
      v6 = 0;
      while (1)
      {
        v7 = *(v2 + 16);
        if (v6 >= REEntityGetChildCount())
        {
          break;
        }

        v8 = *(v2 + 16);
        Child = REEntityGetChild();
        if (!Child)
        {
          goto LABEL_24;
        }

        v10 = Child;
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          swift_dynamicCastClassUnconditional();
        }

        else
        {
          if (REEntityIsBeingDestroyed())
          {
            goto LABEL_23;
          }

          v11 = specialized static Entity.entityInfoType(_:)();
          if (v11)
          {
            v12 = (*(v11 + 232))();
            v13 = *(v12 + 16);

            MEMORY[0x1C68F9740](v13, 0);
            *(v12 + 16) = v10;
            MEMORY[0x1C68F9740](v10, v12);
          }

          else
          {
            makeEntity(for:)(v10);
          }
        }

        v14 = *(v2 + 16);
        if (v6 >= REEntityGetChildCount())
        {
          goto LABEL_22;
        }

        ++v6;
        Entity.stopAllAnimations(recursive:)(1);

        v15 = *(v2 + 16);
        if (v6 >= REEntityGetChildCount())
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
    }
  }
}

id Entity.defaultAnimationClock.getter()
{
  v1 = *(v0 + 16);
  REAnimationComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  result = REAnimationComponentCopyDefaultTimebaseRef();
  if (!result)
  {
    v3 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    v4 = *(v3 + 24);
    v5 = *(swift_unownedRetainStrong() + 24);

    ServiceLocator = REEngineGetServiceLocator();
    result = MEMORY[0x1C68FE1E0](ServiceLocator);
    if (result)
    {
      RootTimebase = REAnimationServiceGetRootTimebase();

      return RootTimebase;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t key path setter for Entity.defaultAnimationClock : Entity(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + 16);
  REAnimationComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  v5 = *(v3 + 16);
  RETimebaseComponentGetComponentType();
  result = REEntityGetComponentByClass();
  if (result)
  {
    type metadata accessor for CMTimebaseRef(0);
    swift_dynamicCastUnknownClassUnconditional();
    RETimebaseComponentAddTimebase();

    return REAnimationComponentSetDefaultTimebaseID();
  }

  return result;
}

uint64_t Entity.defaultAnimationClock.setter()
{
  v1 = *(v0 + 16);
  REAnimationComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  v2 = *(v0 + 16);
  RETimebaseComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    type metadata accessor for CMTimebaseRef(0);
    swift_unknownObjectRetain();
    v3 = swift_dynamicCastUnknownClassUnconditional();
    RETimebaseComponentAddTimebase();

    REAnimationComponentSetDefaultTimebaseID();
  }

  return swift_unknownObjectRelease();
}

void (*Entity.defaultAnimationClock.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 16);
  REAnimationComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  v6 = REAnimationComponentCopyDefaultTimebaseRef();
  if (v6)
  {
    goto LABEL_7;
  }

  v7 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v8 = *(v7 + 24);
  v9 = *(swift_unownedRetainStrong() + 24);

  ServiceLocator = REEngineGetServiceLocator();
  result = MEMORY[0x1C68FE1E0](ServiceLocator);
  if (result)
  {
    v6 = REAnimationServiceGetRootTimebase();
LABEL_7:
    *(v4 + 24) = v6;
    return Entity.defaultAnimationClock.modify;
  }

  __break(1u);
  return result;
}

void Entity.defaultAnimationClock.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(v4 + 16);
  if (a2)
  {
    v6 = *(*a1 + 24);
    swift_unknownObjectRetain();
    REAnimationComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    v7 = *(v4 + 16);
    RETimebaseComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      type metadata accessor for CMTimebaseRef(0);
      swift_unknownObjectRetain();
      v8 = swift_dynamicCastUnknownClassUnconditional();
      RETimebaseComponentAddTimebase();

      REAnimationComponentSetDefaultTimebaseID();
    }

    swift_unknownObjectRelease();
    v9 = *v3;
  }

  else
  {
    REAnimationComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    v10 = *(v4 + 16);
    RETimebaseComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      type metadata accessor for CMTimebaseRef(0);
      swift_unknownObjectRetain();
      v11 = swift_dynamicCastUnknownClassUnconditional();
      RETimebaseComponentAddTimebase();

      REAnimationComponentSetDefaultTimebaseID();
    }
  }

  swift_unknownObjectRelease();

  free(v2);
}

void AnimationHandoffType.HandoffType.hash(into:)(uint64_t a1, unsigned __int8 a2)
{
  v3 = a2 >> 6;
  if (v3 > 1)
  {
    if (v3 == 3)
    {
      v4 = 4;
    }

    else if (a2 == 128)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }

    MEMORY[0x1C68F4C10](v4);
  }

  else
  {
    MEMORY[0x1C68F4C10](v3 != 0);
    Hasher._combine(_:)(a2 & 1);
  }
}

Swift::Int AnimationHandoffType.HandoffType.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  v2 = a1 >> 6;
  if (v2 > 1)
  {
    if (v2 == 3)
    {
      v3 = 4;
    }

    else if (a1 == 128)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }

    MEMORY[0x1C68F4C10](v3);
  }

  else
  {
    MEMORY[0x1C68F4C10](v2 != 0);
    Hasher._combine(_:)(a1 & 1);
  }

  return Hasher._finalize()();
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance AnimationHandoffType.HandoffType.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6563616C706572;
  v3 = 0x65736F706D6F63;
  v4 = 1886352499;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AnimationHandoffType.HandoffType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized AnimationHandoffType.HandoffType.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnimationHandoffType.HandoffType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.CodingKeys and conformance AnimationHandoffType.HandoffType.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnimationHandoffType.HandoffType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.CodingKeys and conformance AnimationHandoffType.HandoffType.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnimationHandoffType.HandoffType.ComposeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.ComposeCodingKeys and conformance AnimationHandoffType.HandoffType.ComposeCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnimationHandoffType.HandoffType.ComposeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.ComposeCodingKeys and conformance AnimationHandoffType.HandoffType.ComposeCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys and conformance AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys and conformance AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnimationHandoffType.HandoffType.ReplaceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.ReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.ReplaceCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnimationHandoffType.HandoffType.ReplaceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.ReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.ReplaceCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AnimationHandoffType.HandoffType.ReplaceCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnimationHandoffType.HandoffType.StopCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.StopCodingKeys and conformance AnimationHandoffType.HandoffType.StopCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnimationHandoffType.HandoffType.StopCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.StopCodingKeys and conformance AnimationHandoffType.HandoffType.StopCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnimationHandoffType.HandoffType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  AnimationHandoffType.HandoffType.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance AnimationHandoffType.HandoffType(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 6;
  if (v2 >> 6 > 1)
  {
    if (v4 == 3)
    {
      return v3 == 192;
    }

    else
    {
      v9 = v3 == 128;
      v10 = v3 == 129;
      if (v2 == 128)
      {
        return v9;
      }

      return v10;
    }
  }

  else
  {
    v5 = v3 ^ v2 ^ 1;
    if (v3 >= 0x40)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }

    if ((v3 & 0xC0) == 0x40)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }

    if (!v4)
    {
      v7 = v6;
    }

    return v7 & 1;
  }
}

uint64_t static AnimationHandoffType.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 6;
  if (v2 >> 6 > 1)
  {
    if (v4 == 3)
    {
      if (v3 == 192)
      {
        return 1;
      }
    }

    else if (v2 == 128)
    {
      if (v3 == 128)
      {
        return 1;
      }
    }

    else if (v3 == 129)
    {
      return 1;
    }
  }

  else if (v4)
  {
    if ((v3 & 0xC0) == 0x40 && ((v3 ^ v2) & 1) == 0)
    {
      return 1;
    }
  }

  else if (v3 <= 0x3F && ((v3 ^ v2) & 1) == 0)
  {
    return 1;
  }

  return 0;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AnimationHandoffType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5466666F646E6168 && a2 == 0xEB00000000657079)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnimationHandoffType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnimationHandoffType.CodingKeys and conformance AnimationHandoffType.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnimationHandoffType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnimationHandoffType.CodingKeys and conformance AnimationHandoffType.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AnimationHandoffType(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 6;
  if (v2 >> 6 > 1)
  {
    if (v4 == 3)
    {
      if (v3 != 192)
      {
        return 0;
      }
    }

    else
    {
      if (v2 != 128)
      {
        return v3 == 129;
      }

      if (v3 != 128)
      {
        return 0;
      }
    }

    return 1;
  }

  if (v4)
  {
    if ((v3 & 0xC0) != 0x40)
    {
      return 0;
    }
  }

  else if (v3 > 0x3F)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

uint64_t AnimationHandoffType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation20AnimationHandoffTypeV10CodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation20AnimationHandoffTypeV10CodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AnimationHandoffType.CodingKeys and conformance AnimationHandoffType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = v8;
  lazy protocol witness table accessor for type AnimationHandoffType.HandoffType and conformance AnimationHandoffType.HandoffType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t AnimationHandoffType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation20AnimationHandoffTypeV10CodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation20AnimationHandoffTypeV10CodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AnimationHandoffType.CodingKeys and conformance AnimationHandoffType.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type AnimationHandoffType.HandoffType and conformance AnimationHandoffType.HandoffType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t AnimationHandoffType.HandoffType.encode(to:)(void *a1, int a2)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O07DefaultgH10CodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O07DefaultgH10CodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMR);
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O14StopCodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O14StopCodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMR);
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v39 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O17ComposeCodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O17ComposeCodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMR);
  v37 = *(v9 - 8);
  v38 = v9;
  v10 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v36 = &v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O17ReplaceCodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O17ReplaceCodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMR);
  v43 = *(v12 - 8);
  v13 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O28SnapshotAndReplaceCodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O28SnapshotAndReplaceCodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMR);
  v42 = *(v16 - 8);
  v17 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - v18;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O10CodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O10CodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMR);
  v20 = *(v48 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v23 = &v36 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.CodingKeys and conformance AnimationHandoffType.HandoffType.CodingKeys();
  v25 = v47;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if ((v25 >> 6) > 1u)
  {
    if (v25 >> 6 == 3)
    {
      v53 = 4;
      lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys and conformance AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys();
      v28 = v44;
      v29 = v48;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v45 + 8))(v28, v46);
      return (*(v20 + 8))(v23, v29);
    }

    else
    {
      v31 = (v20 + 8);
      if (v25 == 128)
      {
        v51 = 2;
        lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.ComposeCodingKeys and conformance AnimationHandoffType.HandoffType.ComposeCodingKeys();
        v32 = v36;
        v33 = v48;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v35 = v37;
        v34 = v38;
      }

      else
      {
        v52 = 3;
        lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.StopCodingKeys and conformance AnimationHandoffType.HandoffType.StopCodingKeys();
        v32 = v39;
        v33 = v48;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v35 = v40;
        v34 = v41;
      }

      (*(v35 + 8))(v32, v34);
      return (*v31)(v23, v33);
    }
  }

  else if (v25 >> 6)
  {
    v50 = 1;
    lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.ReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.ReplaceCodingKeys();
    v30 = v48;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v43 + 8))(v15, v12);
    return (*(v20 + 8))(v23, v30);
  }

  else
  {
    v49 = 0;
    lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys();
    v26 = v48;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v42 + 8))(v19, v16);
    return (*(v20 + 8))(v23, v26);
  }
}

uint64_t protocol witness for Decodable.init(from:) in conformance AnimationHandoffType.HandoffType@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized AnimationHandoffType.HandoffType.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimationHandoffType.CodingKeys and conformance AnimationHandoffType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.CodingKeys and conformance AnimationHandoffType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.CodingKeys and conformance AnimationHandoffType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.CodingKeys and conformance AnimationHandoffType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.CodingKeys and conformance AnimationHandoffType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.CodingKeys and conformance AnimationHandoffType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.CodingKeys and conformance AnimationHandoffType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.CodingKeys and conformance AnimationHandoffType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.CodingKeys and conformance AnimationHandoffType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.CodingKeys and conformance AnimationHandoffType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.CodingKeys and conformance AnimationHandoffType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.CodingKeys and conformance AnimationHandoffType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.CodingKeys and conformance AnimationHandoffType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimationHandoffType.HandoffType and conformance AnimationHandoffType.HandoffType()
{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType and conformance AnimationHandoffType.HandoffType;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType and conformance AnimationHandoffType.HandoffType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType and conformance AnimationHandoffType.HandoffType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType and conformance AnimationHandoffType.HandoffType;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType and conformance AnimationHandoffType.HandoffType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType and conformance AnimationHandoffType.HandoffType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType and conformance AnimationHandoffType.HandoffType;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType and conformance AnimationHandoffType.HandoffType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType and conformance AnimationHandoffType.HandoffType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnimationHandoffType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7D)
  {
    goto LABEL_17;
  }

  if (a2 + 131 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 131) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 131;
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

      return (*a1 | (v4 << 8)) - 131;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 131;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v6 >= 0x7C)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for AnimationHandoffType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 131 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 131) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7D)
  {
    v4 = 0;
  }

  if (a2 > 0x7C)
  {
    v5 = ((a2 - 125) >> 8) + 1;
    *result = a2 - 125;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTag for AnimationHandoffType.HandoffType(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1;
  v3 = v1 >> 6;
  v4 = (v1 | 0xFFFFFFFE) + 2 * (v1 >> 6);
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

_BYTE *destructiveInjectEnumTag for AnimationHandoffType.HandoffType(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 1 | (a2 << 6);
  }

  else
  {
    *result = (a2 & 1 | ((a2 >> 1) << 6)) + 64;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.CodingKeys and conformance AnimationHandoffType.HandoffType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.CodingKeys and conformance AnimationHandoffType.HandoffType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.CodingKeys and conformance AnimationHandoffType.HandoffType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.CodingKeys and conformance AnimationHandoffType.HandoffType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.CodingKeys and conformance AnimationHandoffType.HandoffType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.CodingKeys and conformance AnimationHandoffType.HandoffType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.CodingKeys and conformance AnimationHandoffType.HandoffType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.CodingKeys and conformance AnimationHandoffType.HandoffType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.CodingKeys and conformance AnimationHandoffType.HandoffType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.CodingKeys and conformance AnimationHandoffType.HandoffType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.CodingKeys and conformance AnimationHandoffType.HandoffType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.CodingKeys and conformance AnimationHandoffType.HandoffType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.CodingKeys and conformance AnimationHandoffType.HandoffType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys and conformance AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys()
{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys and conformance AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys and conformance AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys and conformance AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys and conformance AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys and conformance AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys and conformance AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys and conformance AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys and conformance AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys and conformance AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.StopCodingKeys and conformance AnimationHandoffType.HandoffType.StopCodingKeys()
{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.StopCodingKeys and conformance AnimationHandoffType.HandoffType.StopCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.StopCodingKeys and conformance AnimationHandoffType.HandoffType.StopCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.StopCodingKeys and conformance AnimationHandoffType.HandoffType.StopCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.StopCodingKeys and conformance AnimationHandoffType.HandoffType.StopCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.StopCodingKeys and conformance AnimationHandoffType.HandoffType.StopCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.StopCodingKeys and conformance AnimationHandoffType.HandoffType.StopCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.StopCodingKeys and conformance AnimationHandoffType.HandoffType.StopCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.StopCodingKeys and conformance AnimationHandoffType.HandoffType.StopCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.StopCodingKeys and conformance AnimationHandoffType.HandoffType.StopCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.ComposeCodingKeys and conformance AnimationHandoffType.HandoffType.ComposeCodingKeys()
{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.ComposeCodingKeys and conformance AnimationHandoffType.HandoffType.ComposeCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.ComposeCodingKeys and conformance AnimationHandoffType.HandoffType.ComposeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.ComposeCodingKeys and conformance AnimationHandoffType.HandoffType.ComposeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.ComposeCodingKeys and conformance AnimationHandoffType.HandoffType.ComposeCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.ComposeCodingKeys and conformance AnimationHandoffType.HandoffType.ComposeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.ComposeCodingKeys and conformance AnimationHandoffType.HandoffType.ComposeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.ComposeCodingKeys and conformance AnimationHandoffType.HandoffType.ComposeCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.ComposeCodingKeys and conformance AnimationHandoffType.HandoffType.ComposeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.ComposeCodingKeys and conformance AnimationHandoffType.HandoffType.ComposeCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.ReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.ReplaceCodingKeys()
{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.ReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.ReplaceCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.ReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.ReplaceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.ReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.ReplaceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.ReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.ReplaceCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.ReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.ReplaceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.ReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.ReplaceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.ReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.ReplaceCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.ReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.ReplaceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.ReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.ReplaceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.ReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.ReplaceCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.ReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.ReplaceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.ReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.ReplaceCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys()
{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys);
  }

  return result;
}

uint64_t specialized AnimationHandoffType.HandoffType.init(from:)(uint64_t *a1)
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O07DefaultgH10CodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O07DefaultgH10CodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMR);
  v55 = *(v58 - 8);
  v2 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v59 = &v48 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O14StopCodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O14StopCodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMR);
  v5 = *(v4 - 8);
  v56 = v4;
  v57 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v61 = &v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O17ComposeCodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O17ComposeCodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMR);
  v51 = *(v8 - 8);
  v52 = v8;
  v9 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v60 = &v48 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O17ReplaceCodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O17ReplaceCodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMR);
  v53 = *(v11 - 8);
  v54 = v11;
  v12 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O28SnapshotAndReplaceCodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O28SnapshotAndReplaceCodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMR);
  v50 = *(v15 - 8);
  v16 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v48 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O10CodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O10CodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMR);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v48 - v22;
  v24 = a1[3];
  v25 = a1[4];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.CodingKeys and conformance AnimationHandoffType.HandoffType.CodingKeys();
  v26 = v63;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v26)
  {
    v27 = v18;
    v49 = v15;
    v29 = v60;
    v28 = v61;
    v63 = v20;
    v30 = KeyedDecodingContainer.allKeys.getter();
    v31 = (2 * *(v30 + 16)) | 1;
    v64 = v30;
    v65 = v30 + 32;
    v66 = 0;
    v67 = v31;
    v32 = specialized Collection<>.popFirst()();
    if (v32 == 5 || v66 != v67 >> 1)
    {
      v24 = type metadata accessor for DecodingError();
      swift_allocError();
      v35 = v34;
      v36 = v23;
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v35 = &type metadata for AnimationHandoffType.HandoffType;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v24 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v63 + 8))(v36, v19);
      swift_unknownObjectRelease();
    }

    else if (v32 <= 1u)
    {
      if (v32)
      {
        v68 = 1;
        lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.ReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.ReplaceCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v43 = v63;
        v44 = v54;
        v47 = KeyedDecodingContainer.decode(_:forKey:)();
        (*(v53 + 8))(v14, v44);
        (*(v43 + 8))(v23, v19);
        swift_unknownObjectRelease();
        v24 = v47 & 1 | 0x40u;
      }

      else
      {
        v68 = 0;
        lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys();
        v39 = v27;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v40 = v63;
        v45 = v49;
        v46 = KeyedDecodingContainer.decode(_:forKey:)();
        (*(v50 + 8))(v39, v45);
        (*(v40 + 8))(v23, v19);
        swift_unknownObjectRelease();
        v24 = v46 & 1;
      }
    }

    else if (v32 == 2)
    {
      v68 = 2;
      lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.ComposeCodingKeys and conformance AnimationHandoffType.HandoffType.ComposeCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v51 + 8))(v29, v52);
      (*(v63 + 8))(v23, v19);
      swift_unknownObjectRelease();
      v24 = 128;
    }

    else if (v32 == 3)
    {
      v68 = 3;
      lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.StopCodingKeys and conformance AnimationHandoffType.HandoffType.StopCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v33 = v63;
      (*(v57 + 8))(v28, v56);
      (*(v33 + 8))(v23, v19);
      swift_unknownObjectRelease();
      v24 = 129;
    }

    else
    {
      v68 = 4;
      lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys and conformance AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys();
      v41 = v59;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v42 = v63;
      (*(v55 + 8))(v41, v58);
      (*(v42 + 8))(v23, v19);
      swift_unknownObjectRelease();
      v24 = 192;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v62);
  return v24;
}

uint64_t specialized AnimationHandoffType.HandoffType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001C18F0A60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6563616C706572 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65736F706D6F63 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1886352499 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C18F0A80 == a2)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t StateMachineController.currentState.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  REStateMachineComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {
    _StringGuts.grow(_:)(37);

    v12 = 0xD000000000000023;
    v13 = 0x80000001C18F0AD0;
    v8 = *(v1 + 16);
    REEntityGetName();
    v9 = String.init(cString:)();
    MEMORY[0x1C68F3410](v9);

LABEL_11:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (!REStateMachineComponentGetCurrentStateName())
  {

    _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlF0A10Foundation012StateMachineD0V_Tt0B5(v1, &v12);

    v4 = v13;
    if (v13)
    {
      v5 = v12;
      if (v12)
      {
        v6 = *(v12 + 48);

        REStateMachineAssetGetInitialStateName();
        v7 = String.init(cString:)();

        outlined consume of StateMachineComponent?(v5, v4);
        return v7;
      }
    }

    else
    {
      v12 = 0;
      v13 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      v12 = 0xD000000000000023;
      v13 = 0x80000001C18F0AD0;
      v10 = *(v1 + 16);
      REEntityGetName();
      v11 = String.init(cString:)();
      MEMORY[0x1C68F3410](v11);
    }

    goto LABEL_11;
  }

  return String.init(cString:)();
}

uint64_t outlined consume of StateMachineComponent?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t StateMachineController.previousState.getter(uint64_t (*a1)(uint64_t, const char *))
{
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  REStateMachineComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (ComponentByClass)
  {
    result = a1(ComponentByClass, "");
    if (result)
    {
      return String.init(cString:)();
    }
  }

  else
  {
    _StringGuts.grow(_:)(37);

    v7 = *(v3 + 16);
    REEntityGetName();
    v8 = String.init(cString:)();
    MEMORY[0x1C68F3410](v8);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t StateMachineController.ParametersReference.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a4 + 16);
  REStateMachineComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    static StateMachineUtils.convert<A>(_:)(a3);
    String.utf8CString.getter();
    HasBoundParameterAtName = REStateMachineComponentHasBoundParameterAtName();

    if (HasBoundParameterAtName)
    {
      String.utf8CString.getter();
      REStateMachineComponentGetBoundParameterIndexAtName();

      REStateMachineComponentGetBoundParameterBindTargetAtIndex();
      v14 = String.init(cString:)();
      static InternalBindPath.targetFromPath(_:)(v14, v15, &v21);

      v16 = v21;
      v17 = v22;
    }

    else
    {
      v16 = 0uLL;
      v17 = -1;
    }

    v21 = v16;
    v22 = v17;

    return StateMachineParameter.init(name:bindTarget:)(a1, a2, &v21, a5, a6);
  }

  else
  {
    _StringGuts.grow(_:)(37);

    *&v21 = 0xD000000000000023;
    *(&v21 + 1) = 0x80000001C18F0AD0;
    v19 = *(a4 + 16);
    REEntityGetName();
    v20 = String.init(cString:)();
    MEMORY[0x1C68F3410](v20);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t StateMachineController.ParameterValuesReference.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = type metadata accessor for StateMachineParameter();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v18 - v14;
  v16 = *v5;
  StateMachineController.ParametersReference.subscript.getter(a1, a2, a3, v16, a4, &v18 - v14);
  StateMachineParameter.value(entity:)(v16, v11, a5);
  return (*(v12 + 8))(v15, v11);
}

uint64_t StateMachineController.ParameterValuesReference.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  specialized StateMachineController.ParameterValuesReference.subscript.setter(a1, a2, a3, a4, a5);
  v7 = *(*(a5 - 8) + 8);

  return v7(a1, a5);
}

void (*StateMachineController.ParameterValuesReference.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t **a1, char a2)
{
  v13 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(0x48uLL);
  }

  v15 = v14;
  *a1 = v14;
  v14[4] = a6;
  v14[5] = v6;
  v14[2] = a4;
  v14[3] = a5;
  *v14 = a2;
  v14[1] = a3;
  v16 = *(a5 - 8);
  v14[6] = v16;
  v17 = *(v16 + 64);
  if (v13)
  {
    v14[7] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v14[7] = malloc(*(v16 + 64));
    v18 = malloc(v17);
  }

  v15[8] = v18;
  v20 = *v6;
  StateMachineController.ParameterValuesReference.subscript.getter(a2, a3, a4, a5, v18);
  return StateMachineController.ParameterValuesReference.subscript.modify;
}

void StateMachineController.ParameterValuesReference.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[7];
  v4 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v7 = (*a1)[3];
  v8 = (*a1)[4];
  v10 = (*a1)[1];
  v9 = (*a1)[2];
  v11 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[7], v4, v7);

    specialized StateMachineController.ParameterValuesReference.subscript.setter(v3, v11, v10, v9, v7);
    v12 = *(v6 + 8);
    v12(v3, v7);
    v12(v4, v7);
  }

  else
  {
    v13 = (*a1)[1];

    specialized StateMachineController.ParameterValuesReference.subscript.setter(v4, v11, v10, v9, v7);
    (*(v6 + 8))(v4, v7);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t StateMachineController.ParameterBindTargetsReference.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = type metadata accessor for StateMachineParameter();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  StateMachineController.ParametersReference.subscript.getter(a1, a2, a3, *v5, a4, &v19 - v14);
  v16 = *(v15 + 2);
  v17 = *(v15 + 3);
  LOBYTE(a4) = v15[32];
  outlined copy of BindTarget?(v16, v17, a4);
  result = (*(v12 + 8))(v15, v11);
  *a5 = v16;
  *(a5 + 8) = v17;
  *(a5 + 16) = a4;
  return result;
}

uint64_t StateMachineController.ParameterBindTargetsReference.subscript.setter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = type metadata accessor for StateMachineParameter();
  v11 = *(v18 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v14 = &v17 - v13;
  v15 = a1[1];
  v17 = *a1;
  LOBYTE(a1) = *(a1 + 16);
  StateMachineController.ParametersReference.subscript.getter(a2, a3, a4, *v5, a5, &v17 - v13);
  outlined consume of BindTarget?(*(v14 + 2), *(v14 + 3), v14[32]);
  *(v14 + 2) = v17;
  *(v14 + 3) = v15;
  v14[32] = a1;
  specialized StateMachineController.ParametersReference.subscript.setter(v14, a2, a3, a4, a5);
  return (*(v11 + 8))(v14, v18);
}

void (*StateMachineController.ParameterBindTargetsReference.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(0x48uLL);
  }

  *a1 = v13;
  v13[7] = a6;
  v13[8] = v6;
  v13[5] = a4;
  v13[6] = a5;
  v13[3] = a2;
  v13[4] = a3;
  v15 = *v6;
  StateMachineController.ParameterBindTargetsReference.subscript.getter(a2, a3, a4, a5, v13);
  return StateMachineController.ParameterBindTargetsReference.subscript.modify;
}

void StateMachineController.ParameterBindTargetsReference.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 16);
  v7 = (*a1)[7];
  v6 = (*a1)[8];
  v9 = (*a1)[5];
  v8 = (*a1)[6];
  v11 = (*a1)[3];
  v10 = (*a1)[4];
  v12[0] = v4;
  v12[1] = v3;
  v13 = v5;
  if (a2)
  {

    outlined copy of BindTarget?(v4, v3, v5);
    StateMachineController.ParameterBindTargetsReference.subscript.setter(v12, v11, v10, v9, v8);
    outlined consume of BindTarget?(*v2, v2[1], *(v2 + 16));
  }

  else
  {

    StateMachineController.ParameterBindTargetsReference.subscript.setter(v12, v11, v10, v9, v8);
  }

  free(v2);
}

uint64_t (*StateMachineController.values.modify(void *a1))()
{
  v3 = *(v1 + 16);
  *a1 = v3;
  a1[1] = v3;

  return StateMachineController.values.modify;
}

uint64_t StateMachineController.values.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);

  if (v2 != v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t (*StateMachineController.bindTargets.modify(void *a1))()
{
  v3 = *(v1 + 16);
  *a1 = v3;
  a1[1] = v3;

  return Entity.parameters.modify;
}

uint64_t StateMachineController.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t StateMachineController.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t specialized StateMachineController.ParametersReference.subscript.setter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a1 != a2 || a1[1] != a3)
  {
    v11 = *a1;
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (a4 != a5)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = *v5;
  v12 = *(*v5 + 16);
  REStateMachineComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {
LABEL_18:
    _StringGuts.grow(_:)(37);

    *&v18 = 0xD000000000000023;
    *(&v18 + 1) = 0x80000001C18F0AD0;
    v16 = *(v6 + 16);
    REEntityGetName();
    v17 = String.init(cString:)();
    MEMORY[0x1C68F3410](v17);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  static StateMachineUtils.convert<A>(_:)(a4);
  v13 = *(a1 + 32);
  if (v13 == 255)
  {
    String.utf8CString.getter();

    REStateMachineComponentRemoveBoundParameterAtName();
  }

  else
  {
    v18 = *(a1 + 1);
    v19 = v13;
    specialized static InternalBindPath.pathFromTarget(_:_:)(&v18, 1);
    String.utf8CString.getter();
    HasBoundParameterAtName = REStateMachineComponentHasBoundParameterAtName();

    if (HasBoundParameterAtName)
    {
      String.utf8CString.getter();

      REStateMachineComponentGetBoundParameterIndexAtName();

      String.utf8CString.getter();

      REStateMachineComponentSetBoundParameterBindTargetAtIndex();
    }

    else
    {

      String.utf8CString.getter();
      String.utf8CString.getter();

      REStateMachineComponentAddBoundParameter();
    }
  }
}

uint64_t specialized StateMachineController.ParameterValuesReference.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for StateMachineParameter();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v18 - v14;
  v16 = *v5;
  StateMachineController.ParametersReference.subscript.getter(a2, a3, a4, v16, a5, &v18 - v14);

  StateMachineParameter.setValue(entity:newValue:)(v16, a1, v11);
  return (*(v12 + 8))(v15, v11);
}

void *keypath_setTm_0(void *result, uint64_t a2)
{
  if (*result != *(*a2 + 16))
  {
    __break(1u);
  }

  return result;
}

RealityKit::REAngleF __swiftcall REAngleF.init(degrees:)(Swift::Float degrees)
{
  result.radians = (degrees * 3.1416) / 180.0;
  *v1 = result.radians;
  return result;
}

float REAngleF.degrees.setter(float a1)
{
  result = (a1 * 3.1416) / 180.0;
  *v1 = result;
  return result;
}

float (*REAngleF.degrees.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = (*v1 * 180.0) / 3.1416;
  return REAngleF.degrees.modify;
}

float REAngleF.degrees.modify(uint64_t a1)
{
  result = (*(a1 + 8) * 3.1416) / 180.0;
  **a1 = result;
  return result;
}

RealityKit::RotationOrder_optional __swiftcall RotationOrder.init(rawValue:)(RealityKit::RotationOrder_optional rawValue)
{
  value = rawValue.value;
  if (rawValue.value >= RealityKit_RotationOrder_unknownDefault)
  {
    value = RealityKit_RotationOrder_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

void simd_quatf.init(eulerAngles:order:)(unsigned __int8 *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  REConvertIntrinsicEulersToMatrices3x3();
  v4.columns[1] = 0u;
  v4.columns[2] = 0u;
  v4.columns[0] = 0u;
  simd_quaternion(v4);
  v2 = *MEMORY[0x1E69E9840];
}

double simd_quaternion(simd_float3x3 a1)
{
  v1 = a1.columns[2].f32[2] + (a1.columns[0].f32[0] + a1.columns[1].f32[1]);
  if (v1 >= 0.0)
  {
    v8 = sqrtf(v1 + 1.0);
    v9 = vrecpe_f32(COERCE_UNSIGNED_INT(v8 + v8));
    v10 = vmul_f32(v9, vrecps_f32(COERCE_UNSIGNED_INT(v8 + v8), v9));
    v20 = vmul_n_f32(vsub_f32(vzip1_s32(*&vextq_s8(a1.columns[1], a1.columns[1], 8uLL), *a1.columns[2].f32), vext_s8(*a1.columns[2].f32, *&vextq_s8(a1.columns[0], a1.columns[0], 8uLL), 4uLL)), vmul_f32(v10, vrecps_f32(COERCE_UNSIGNED_INT(v8 + v8), v10)).f32[0]);
  }

  else if (a1.columns[0].f32[0] < a1.columns[1].f32[1] || a1.columns[0].f32[0] < a1.columns[2].f32[2])
  {
    v3 = 1.0 - a1.columns[0].f32[0];
    if (a1.columns[1].f32[1] >= a1.columns[2].f32[2])
    {
      v21 = sqrtf(a1.columns[1].f32[1] + (v3 - a1.columns[2].f32[2]));
      *&v22 = v21 + v21;
      v23 = vrecpe_f32(v22);
      v24 = vmul_f32(v23, vrecps_f32(v22, v23));
      v25.i32[0] = vmul_f32(v24, vrecps_f32(v22, v24)).u32[0];
      v24.f32[0] = a1.columns[0].f32[1] + a1.columns[1].f32[0];
      v24.i32[1] = v22;
      v25.i32[1] = 0.25;
      v20 = vmul_f32(v24, v25);
    }

    else
    {
      v4 = sqrtf(a1.columns[2].f32[2] + (v3 - a1.columns[1].f32[1]));
      v5 = vrecpe_f32(COERCE_UNSIGNED_INT(v4 + v4));
      v6 = vmul_f32(v5, vrecps_f32(COERCE_UNSIGNED_INT(v4 + v4), v5));
      v20 = vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(a1.columns[0], a1.columns[0], 8uLL), *&vextq_s8(a1.columns[1], a1.columns[1], 8uLL)), *a1.columns[2].f32), vmul_f32(v6, vrecps_f32(COERCE_UNSIGNED_INT(v4 + v4), v6)).f32[0]);
      __asm { FMOV            V0.2S, #0.25 }
    }
  }

  else
  {
    v11 = sqrtf(a1.columns[0].f32[0] + ((1.0 - a1.columns[1].f32[1]) - a1.columns[2].f32[2]));
    v12.f32[0] = v11 + v11;
    v13 = vrecpe_f32(v12.u32[0]);
    v14 = vmul_f32(v13, vrecps_f32(v12.u32[0], v13));
    v15 = vmul_f32(v14, vrecps_f32(v12.u32[0], v14)).u32[0];
    v12.f32[1] = a1.columns[0].f32[1] + a1.columns[1].f32[0];
    __asm { FMOV            V5.2S, #0.25 }

    _D5.i32[1] = v15;
    v20 = vmul_f32(v12, _D5);
  }

  return *&v20;
}

unint64_t lazy protocol witness table accessor for type RotationOrder and conformance RotationOrder()
{
  result = lazy protocol witness table cache variable for type RotationOrder and conformance RotationOrder;
  if (!lazy protocol witness table cache variable for type RotationOrder and conformance RotationOrder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RotationOrder and conformance RotationOrder);
  }

  return result;
}

uint64_t specialized static __RKVisibilityHideScaleUpAnimation.createVisibilityHideScaleUpAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:)(float32x4_t *a1, double a2, float a3, float32x4_t a4, uint64_t a5, _BYTE *a6, char a7)
{
  v59 = a1[1];
  if (*a6)
  {
    if (*a6 == 1)
    {
      v61._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 128, 0, MEMORY[0x1E69E7CC0]);
      v9 = &outlined read-only object #1 of static __RKVisibilityHideScaleUpAnimation.createVisibilityHideScaleUpAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
    }

    else
    {
      v61._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 83, 0, MEMORY[0x1E69E7CC0]);
      v9 = &outlined read-only object #2 of static __RKVisibilityHideScaleUpAnimation.createVisibilityHideScaleUpAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
    }
  }

  else
  {
    v61._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 127, 0, MEMORY[0x1E69E7CC0]);
    v9 = &outlined read-only object #0 of static __RKVisibilityHideScaleUpAnimation.createVisibilityHideScaleUpAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
  }

  __makeXfos(_:_:)(v9, &v61);
  rawValue = v61._rawValue;
  if (!*(v61._rawValue + 2))
  {

    return MEMORY[0x1E69E7CC0];
  }

  RESampledAnimationDefaultParameters();
  v11 = rawValue[1].u64[0];
  if (v11)
  {
    v12 = &rawValue[3 * v11];
    v57 = *v12;
    v58 = *(v12 - 1);
    v56 = v12[1];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_9;
    }
  }

  else
  {
LABEL_40:
    __break(1u);
  }

  rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11 + 1, 1, rawValue);
LABEL_9:
  a7 &= 1u;
  v11 = rawValue[1].u64[0];
  v14 = rawValue[1].u64[1];
  v15 = v11 + 1;
  if (v11 >= v14 >> 1)
  {
    v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v11 + 1, 1, rawValue);
    v15 = v11 + 1;
    rawValue = v55;
  }

  rawValue[1].i64[0] = v15;
  f32 = rawValue[3 * v11 + 2].f32;
  *f32 = v58;
  f32[1] = v57;
  f32[2] = v56;
  v61._rawValue = rawValue;
  v17 = 0.0;
  v18 = 4;
  v19 = v15;
  do
  {
    v20 = rawValue[v18];
    v21 = fabsf(v20.f32[0]);
    if ((LODWORD(v21) & 0x7FFFFF) != 0)
    {
      v22 = v17;
    }

    else
    {
      v22 = v21;
    }

    if ((~LODWORD(v21) & 0x7F800000) != 0)
    {
      v22 = v21;
    }

    if (v21 >= v17)
    {
      v17 = v22;
    }

    v23 = fabsf(v20.f32[1]);
    if (v23 >= v17)
    {
      if ((LODWORD(v23) & 0x7FFFFF) == 0)
      {
        v17 = v23;
      }

      if ((~LODWORD(v23) & 0x7F800000) != 0)
      {
        v17 = v23;
      }
    }

    v24 = fabsf(v20.f32[2]);
    if (v24 >= v17)
    {
      if ((~LODWORD(v24) & 0x7F800000) != 0)
      {
        v17 = v24;
      }

      else if ((LODWORD(v24) & 0x7FFFFF) == 0)
      {
        v17 = v24;
      }
    }

    v18 += 3;
    --v19;
  }

  while (v19);
  v25 = 0;
  v26 = a3 / v17;
  v27 = v17 <= 0.0;
  v28 = 1.0;
  if (!v27)
  {
    v28 = v26;
  }

  v29 = vmulq_f32(v59, v59);
  *v29.i8 = vadd_f32(*v29.i8, *&vextq_s8(v29, v29, 8uLL));
  v29.i32[0] = vadd_f32(*v29.i8, vdup_lane_s32(*v29.i8, 1)).u32[0];
  v30 = vrecpe_f32(v29.u32[0]);
  v31 = vmul_f32(v30, vrecps_f32(v29.u32[0], v30));
  v32 = vmulq_n_f32(vmulq_f32(v59, xmmword_1C1899C90), vmul_f32(v31, vrecps_f32(v29.u32[0], v31)).f32[0]);
  v33 = vnegq_f32(a4);
  v34 = vtrn2q_s32(a4, vtrn1q_s32(a4, v33));
  v35 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(a4, v33, 8uLL), *v32.f32, 1), vextq_s8(v34, v34, 8uLL), v32.f32[0]);
  v36 = vrev64q_s32(a4);
  v36.i32[0] = v33.i32[1];
  v36.i32[3] = v33.i32[2];
  v37 = vaddq_f32(v35, vmlaq_laneq_f32(vmulq_laneq_f32(a4, v32, 3), v36, v32, 2));
  v38 = vmulq_f32(v37, xmmword_1C1899C90);
  v39 = vnegq_f32(v38);
  v40 = vtrn2q_s32(v38, vtrn1q_s32(v38, v39));
  v41 = vextq_s8(v40, v40, 8uLL);
  v42 = vextq_s8(v38, v39, 8uLL);
  v43 = vrev64q_s32(v38);
  v43.i32[0] = v39.i32[1];
  v43.i32[3] = v39.i32[2];
  v44 = vdupq_lane_s32(*v37.f32, 0);
  v45 = vdupq_laneq_s32(v37, 2);
  v46 = 4;
  do
  {
    if (v25 > v11)
    {
      __break(1u);
      goto LABEL_40;
    }

    v47 = vsubq_f32(rawValue[v46], rawValue[4]);
    v48 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v42, vmuls_lane_f32(v28, *v47.f32, 1)), v41, v28 * v47.f32[0]), v43, vmuls_lane_f32(v28, v47, 2));
    v49 = vnegq_f32(v48);
    v50 = vtrn2q_s32(v48, vtrn1q_s32(v48, v49));
    v51 = vrev64q_s32(v48);
    v51.i32[0] = v49.i32[1];
    v51.i32[3] = v49.i32[2];
    v52 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v48, v37, 3), v51, v45), vmlaq_f32(vmulq_lane_f32(vextq_s8(v48, v49, 8uLL), *v37.f32, 1), vextq_s8(v50, v50, 8uLL), v44));
    v52.i32[3] = v13;
    ++v25;
    rawValue[v46] = v52;
    v46 += 3;
  }

  while (v11 + 1 != v25);
  result = REAssetManagerTimelineAssetCreateSRTSampledAnimation();
  if (result)
  {
    v54 = result;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_1C1887600;
    *(result + 32) = v54;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized static __RKVisibilityHideScaleAnimation.createVisibilityHideScaleAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:)(float32x4_t *a1, double a2, float a3, float32x4_t a4, uint64_t a5, _BYTE *a6, char a7)
{
  v59 = a1[1];
  if (*a6)
  {
    if (*a6 == 1)
    {
      v61._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 120, 0, MEMORY[0x1E69E7CC0]);
      v9 = &outlined read-only object #1 of static __RKVisibilityHideScaleAnimation.createVisibilityHideScaleAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
    }

    else
    {
      v61._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 96, 0, MEMORY[0x1E69E7CC0]);
      v9 = &outlined read-only object #2 of static __RKVisibilityHideScaleAnimation.createVisibilityHideScaleAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
    }
  }

  else
  {
    v61._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 53, 0, MEMORY[0x1E69E7CC0]);
    v9 = &outlined read-only object #0 of static __RKVisibilityHideScaleAnimation.createVisibilityHideScaleAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
  }

  __makeXfos(_:_:)(v9, &v61);
  rawValue = v61._rawValue;
  if (!*(v61._rawValue + 2))
  {

    return MEMORY[0x1E69E7CC0];
  }

  RESampledAnimationDefaultParameters();
  v11 = rawValue[1].u64[0];
  if (v11)
  {
    v12 = &rawValue[3 * v11];
    v57 = *v12;
    v58 = *(v12 - 1);
    v56 = v12[1];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_9;
    }
  }

  else
  {
LABEL_40:
    __break(1u);
  }

  rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11 + 1, 1, rawValue);
LABEL_9:
  a7 &= 1u;
  v11 = rawValue[1].u64[0];
  v14 = rawValue[1].u64[1];
  v15 = v11 + 1;
  if (v11 >= v14 >> 1)
  {
    v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v11 + 1, 1, rawValue);
    v15 = v11 + 1;
    rawValue = v55;
  }

  rawValue[1].i64[0] = v15;
  f32 = rawValue[3 * v11 + 2].f32;
  *f32 = v58;
  f32[1] = v57;
  f32[2] = v56;
  v61._rawValue = rawValue;
  v17 = 0.0;
  v18 = 4;
  v19 = v15;
  do
  {
    v20 = rawValue[v18];
    v21 = fabsf(v20.f32[0]);
    if ((LODWORD(v21) & 0x7FFFFF) != 0)
    {
      v22 = v17;
    }

    else
    {
      v22 = v21;
    }

    if ((~LODWORD(v21) & 0x7F800000) != 0)
    {
      v22 = v21;
    }

    if (v21 >= v17)
    {
      v17 = v22;
    }

    v23 = fabsf(v20.f32[1]);
    if (v23 >= v17)
    {
      if ((LODWORD(v23) & 0x7FFFFF) == 0)
      {
        v17 = v23;
      }

      if ((~LODWORD(v23) & 0x7F800000) != 0)
      {
        v17 = v23;
      }
    }

    v24 = fabsf(v20.f32[2]);
    if (v24 >= v17)
    {
      if ((~LODWORD(v24) & 0x7F800000) != 0)
      {
        v17 = v24;
      }

      else if ((LODWORD(v24) & 0x7FFFFF) == 0)
      {
        v17 = v24;
      }
    }

    v18 += 3;
    --v19;
  }

  while (v19);
  v25 = 0;
  v26 = a3 / v17;
  v27 = v17 <= 0.0;
  v28 = 1.0;
  if (!v27)
  {
    v28 = v26;
  }

  v29 = vmulq_f32(v59, v59);
  *v29.i8 = vadd_f32(*v29.i8, *&vextq_s8(v29, v29, 8uLL));
  v29.i32[0] = vadd_f32(*v29.i8, vdup_lane_s32(*v29.i8, 1)).u32[0];
  v30 = vrecpe_f32(v29.u32[0]);
  v31 = vmul_f32(v30, vrecps_f32(v29.u32[0], v30));
  v32 = vmulq_n_f32(vmulq_f32(v59, xmmword_1C1899C90), vmul_f32(v31, vrecps_f32(v29.u32[0], v31)).f32[0]);
  v33 = vnegq_f32(a4);
  v34 = vtrn2q_s32(a4, vtrn1q_s32(a4, v33));
  v35 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(a4, v33, 8uLL), *v32.f32, 1), vextq_s8(v34, v34, 8uLL), v32.f32[0]);
  v36 = vrev64q_s32(a4);
  v36.i32[0] = v33.i32[1];
  v36.i32[3] = v33.i32[2];
  v37 = vaddq_f32(v35, vmlaq_laneq_f32(vmulq_laneq_f32(a4, v32, 3), v36, v32, 2));
  v38 = vmulq_f32(v37, xmmword_1C1899C90);
  v39 = vnegq_f32(v38);
  v40 = vtrn2q_s32(v38, vtrn1q_s32(v38, v39));
  v41 = vextq_s8(v40, v40, 8uLL);
  v42 = vextq_s8(v38, v39, 8uLL);
  v43 = vrev64q_s32(v38);
  v43.i32[0] = v39.i32[1];
  v43.i32[3] = v39.i32[2];
  v44 = vdupq_lane_s32(*v37.f32, 0);
  v45 = vdupq_laneq_s32(v37, 2);
  v46 = 4;
  do
  {
    if (v25 > v11)
    {
      __break(1u);
      goto LABEL_40;
    }

    v47 = vsubq_f32(rawValue[v46], rawValue[4]);
    v48 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v42, vmuls_lane_f32(v28, *v47.f32, 1)), v41, v28 * v47.f32[0]), v43, vmuls_lane_f32(v28, v47, 2));
    v49 = vnegq_f32(v48);
    v50 = vtrn2q_s32(v48, vtrn1q_s32(v48, v49));
    v51 = vrev64q_s32(v48);
    v51.i32[0] = v49.i32[1];
    v51.i32[3] = v49.i32[2];
    v52 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v48, v37, 3), v51, v45), vmlaq_f32(vmulq_lane_f32(vextq_s8(v48, v49, 8uLL), *v37.f32, 1), vextq_s8(v50, v50, 8uLL), v44));
    v52.i32[3] = v13;
    ++v25;
    rawValue[v46] = v52;
    v46 += 3;
  }

  while (v11 + 1 != v25);
  result = REAssetManagerTimelineAssetCreateSRTSampledAnimation();
  if (result)
  {
    v54 = result;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_1C1887600;
    *(result + 32) = v54;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for static Component.__fromCore(_:) in conformance TrueToneComponent@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = RETrueToneComponentGetEnabled();
  *a2 = result;
  return result;
}

uint64_t static TrueToneComponent.__fromCore(_:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = RETrueToneComponentGetEnabled();
  *a2 = result;
  return result;
}

uint64_t protocol witness for Component.__toCore(_:) in conformance TrueToneComponent(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  RETrueToneComponentSetEnabled();

  return RENetworkMarkComponentDirty();
}

uint64_t TrueToneComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  RETrueToneComponentSetEnabled();

  return RENetworkMarkComponentDirty();
}

uint64_t EntityGeometricPins.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(*v3 + 16);
  REPinComponentGetComponentType();
  result = REEntityGetComponentByClass();
  if (result && (String.utf8CString.getter(), PinByName = REPinComponentGetPinByName(), result = , PinByName))
  {
    REPinGetOffsetPose();
    v15 = v10;
    v16 = v11;
    if (REPinIsSkeletalJointPin())
    {
      REPinGetSkeletalJointName();
      v12 = String.init(cString:)();
      v14 = v13;
      RERelease();
      swift_weakInit();
      *(a3 + 48) = v15;
      *(a3 + 64) = v16;
      swift_weakAssign();
      *(a3 + 8) = a1;
      *(a3 + 16) = a2;
      *(a3 + 24) = v12;
      *(a3 + 32) = v14;
    }

    else
    {
      RERelease();
      swift_weakInit();
      *(a3 + 48) = v15;
      *(a3 + 64) = v16;
      swift_weakAssign();
      *(a3 + 8) = a1;
      *(a3 + 16) = a2;
      *(a3 + 24) = 0;
      *(a3 + 32) = 0;
    }
  }

  else
  {
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t EntityGeometricPins.set(named:position:orientation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>, float32x4_t a5@<Q1>)
{
  v9 = *v5;
  v10 = vmulq_f32(a5, a5);
  v11 = vextq_s8(v10, v10, 8uLL);
  *v10.f32 = vadd_f32(*v10.f32, *v11.f32);
  v10.f32[0] = fabsf(sqrtf(vaddv_f32(*v10.f32)) + -1.0);
  v11.i32[0] = 981668463;
  v14 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v10, v11), 0), *&zmmword_1C1887630[48], a5);
  REPoseIdentity();
  String.utf8CString.getter();
  REPinCreateExt();

  v12 = *(v9 + 16);
  REPinComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  REPinComponentAddPin();
  RERelease();
  swift_weakInit();
  *(a3 + 48) = a4;
  *(a3 + 64) = v14;
  swift_weakAssign();
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
}

uint64_t EntityGeometricPins.set(named:position:orientation:relativeTo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, __n128 a5@<Q0>, float32x4_t a6@<Q1>)
{
  v7 = a6;
  v11 = *v6;
  a6.i32[0] = a5.n128_i32[2];
  v12 = transformPose(_:from:to:)(a3, *v6, a5.n128_f64[0], *a6.i64, v7);
  v12.n128_u32[2] = v13;
  v20 = v12;
  v15 = vmulq_f32(v14, v14);
  v16 = vextq_s8(v15, v15, 8uLL);
  *v15.f32 = vadd_f32(*v15.f32, *v16.f32);
  v15.f32[0] = fabsf(sqrtf(vaddv_f32(*v15.f32)) + -1.0);
  v16.i32[0] = 981668463;
  v19 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v15, v16), 0), *&zmmword_1C1887630[48], v14);
  REPoseIdentity();
  String.utf8CString.getter();
  REPinCreateExt();

  v17 = *(v11 + 16);
  REPinComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  REPinComponentAddPin();
  RERelease();
  swift_weakInit();
  *(a4 + 48) = v20;
  *(a4 + 64) = v19;
  swift_weakAssign();
  *(a4 + 8) = a1;
  *(a4 + 16) = a2;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
}

uint64_t EntityGeometricPins.set(named:skeletalJointName:position:orientation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, __n128 a6@<Q0>, float32x4_t a7@<Q1>)
{
  v13 = *v7;
  v14 = vmulq_f32(a7, a7);
  v15 = vextq_s8(v14, v14, 8uLL);
  *v14.f32 = vadd_f32(*v14.f32, *v15.f32);
  v14.f32[0] = fabsf(sqrtf(vaddv_f32(*v14.f32)) + -1.0);
  v15.i32[0] = 981668463;
  v18 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v14, v15), 0), *&zmmword_1C1887630[48], a7);
  REPoseIdentity();
  String.utf8CString.getter();
  String.utf8CString.getter();
  REPinCreateExt();

  v16 = *(v13 + 16);
  REPinComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  REPinComponentAddPin();
  RERelease();
  swift_weakInit();
  *(a5 + 48) = a6;
  *(a5 + 64) = v18;
  swift_weakAssign();
  *(a5 + 8) = a1;
  *(a5 + 16) = a2;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
}

Swift::Void __swiftcall EntityGeometricPins.remove(named:)(Swift::String named)
{
  v2 = *(*v1 + 16);
  REPinComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    String.utf8CString.getter();
    REPinComponentRemovePin();
  }
}

uint64_t EntityGeometricPins.count.getter()
{
  v1 = *(*v0 + 16);
  REPinComponentGetComponentType();
  result = REEntityGetComponentByClass();
  if (result)
  {

    return REPinComponentGetPinCount();
  }

  return result;
}

BOOL EntityGeometricPins.isEmpty.getter()
{
  v1 = *(*v0 + 16);
  REPinComponentGetComponentType();
  return !REEntityGetComponentByClass() || REPinComponentGetPinCount() == 0;
}

void EntityGeometricPins.Iterator.next()(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v1[2] = v4;
  if (v4 >= v1[1])
  {
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return;
  }

  v5 = *(*v1 + 16);
  REPinComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {
    goto LABEL_9;
  }

  REPinComponentGetPinNameAtIndex();
  v6 = String.init(cString:)();
  v8 = v7;
  REPinComponentGetPinOffsetPoseAtIndex();
  v14 = v9;
  v15 = v10;
  if (REPinComponentIsSkeletalJointPinAtIndex())
  {
    REPinComponentGetSkeletalJointNameAtIndex();
    v11 = String.init(cString:)();
    v13 = v12;
    swift_weakInit();
    *(a1 + 48) = v14;
    *(a1 + 64) = v15;
    swift_weakAssign();
    *(a1 + 8) = v6;
    *(a1 + 16) = v8;
    *(a1 + 24) = v11;
    *(a1 + 32) = v13;
  }

  else
  {
    swift_weakInit();
    *(a1 + 48) = v14;
    *(a1 + 64) = v15;
    swift_weakAssign();
    *(a1 + 8) = v6;
    *(a1 + 16) = v8;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }
}

uint64_t EntityGeometricPins.makeIterator()@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v3 + 16);

  REPinComponentGetComponentType();
  result = REEntityGetComponentByClass();
  if (result)
  {
    result = REPinComponentGetPinCount();
  }

  *a1 = v3;
  a1[1] = result;
  a1[2] = -1;
  return result;
}

unint64_t lazy protocol witness table accessor for type EntityGeometricPins.Iterator and conformance EntityGeometricPins.Iterator()
{
  result = lazy protocol witness table cache variable for type EntityGeometricPins.Iterator and conformance EntityGeometricPins.Iterator;
  if (!lazy protocol witness table cache variable for type EntityGeometricPins.Iterator and conformance EntityGeometricPins.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityGeometricPins.Iterator and conformance EntityGeometricPins.Iterator);
  }

  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance EntityGeometricPins@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 16);

  REPinComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (ComponentByClass)
  {
    ComponentByClass = REPinComponentGetPinCount();
  }

  *a1 = v3;
  a1[1] = ComponentByClass;
  a1[2] = -1;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance EntityGeometricPins()
{
  v1 = specialized _copySequenceToContiguousArray<A>(_:)(*v0);

  return v1;
}

RealityFoundation::PhysicsSimulationComponent::SolverIterations __swiftcall PhysicsSimulationComponent.SolverIterations.init(positionIterations:velocityIterations:)(Swift::Int positionIterations, Swift::Int velocityIterations)
{
  *v2 = positionIterations;
  v2[1] = velocityIterations;
  result.velocityIterations = velocityIterations;
  result.positionIterations = positionIterations;
  return result;
}

__n128 PhysicsSimulationComponent.solverIterations.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 PhysicsSimulationComponent.solverIterations.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double PhysicsSimulationComponent.init()@<D0>(uint64_t a1@<X8>)
{
  *&result = 6;
  *a1 = xmmword_1C18D6870;
  *(a1 + 16) = xmmword_1C18D6880;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

id PhysicsSimulationComponent.init(_:)@<X0>(uint64_t a1@<X8>)
{
  GravityOverride = REPhysicsSimulationComponentGetGravityOverride();
  if (GravityOverride)
  {
    v3 = *GravityOverride;
  }

  else
  {
    type metadata accessor for __ServiceLocator();
    v4 = static __ServiceLocator.shared.getter();
    swift_beginAccess();
    v5 = *(v4 + 16);

    result = MEMORY[0x1C68FE290](v5);
    if (!result)
    {
      __break(1u);
      return result;
    }

    REPhysicsSimulationServiceGetDefaultGravity();
  }

  v11 = v3;
  KinematicVsStaticFlag = REPhysicsSimulationComponentGetKinematicVsStaticFlag();
  if (REPhysicsSimulationComponentGetKinematicVsKinematicFlag())
  {
    KinematicVsStaticFlag |= 2u;
  }

  REPhysicsSimulationComponentGetSolverIterations();
  v9 = v8;
  result = REPhysicsSimulationComponentGetParentTimebase();
  *&v10 = v9;
  *(&v10 + 1) = HIDWORD(v9);
  *a1 = v10;
  *(a1 + 16) = v11;
  *(a1 + 32) = KinematicVsStaticFlag;
  *(a1 + 40) = result;
  return result;
}

void PhysicsSimulationComponent.clock.getter()
{
  v10[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
LABEL_9:
    v8 = v1;
    v9 = *MEMORY[0x1E69E9840];
    return;
  }

  v3 = specialized static __ServiceLocator.shared.getter();
  if (*(*(v3 + 160) + 16))
  {
    v4 = *(v3 + 160);

    if (RETimebaseServiceCreateEngineSourceTimebase())
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = *(v3 + 160);
  }

  v10[0] = 0;
  v6 = *MEMORY[0x1E695E480];
  v7 = CMClockGetHostTimeClock();
  CMTimebaseCreateWithSourceClock(v6, v7, v10);

  if (v10[0])
  {
LABEL_8:

    goto LABEL_9;
  }

  __break(1u);
}

void key path getter for PhysicsSimulationComponent.clock : PhysicsSimulationComponent(uint64_t a1@<X0>, CMTimebaseRef *a2@<X8>)
{
  timebaseOut[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (!v2)
  {
    v4 = a2;
    v5 = specialized static __ServiceLocator.shared.getter();
    if (*(*(v5 + 160) + 16))
    {
      v6 = *(v5 + 160);

      EngineSourceTimebase = RETimebaseServiceCreateEngineSourceTimebase();
      if (EngineSourceTimebase)
      {
        v3 = EngineSourceTimebase;
LABEL_8:

        a2 = v4;
        v2 = 0;
        goto LABEL_9;
      }
    }

    else
    {
      v8 = *(v5 + 160);
    }

    timebaseOut[0] = 0;
    v9 = *MEMORY[0x1E695E480];
    v10 = CMClockGetHostTimeClock();
    CMTimebaseCreateWithSourceClock(v9, v10, timebaseOut);

    v3 = timebaseOut[0];
    if (!timebaseOut[0])
    {
      __break(1u);
      return;
    }

    goto LABEL_8;
  }

  v3 = v2;
LABEL_9:
  *a2 = v3;
  v11 = *MEMORY[0x1E69E9840];

  v12 = v2;
}

void PhysicsSimulationComponent.clock.setter(const void *a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = CFGetTypeID(a1);
  if (v2 == CMClockGetTypeID())
  {
    v10[0] = 0;
    v3 = *MEMORY[0x1E695E480];
    type metadata accessor for CMClockRef(0);
    swift_unknownObjectRetain();
    v4 = swift_dynamicCastUnknownClassUnconditional();
    CMTimebaseCreateWithSourceClock(v3, v4, v10);
    swift_unknownObjectRelease();

    v5 = v10[0];
    v6 = *(v1 + 40);
    v7 = v10[0];

    *(v1 + 40) = v5;
  }

  else
  {
    type metadata accessor for CMTimebaseRef(0);
    v8 = swift_dynamicCastUnknownClassUnconditional();

    *(v1 + 40) = v8;
  }

  v9 = *MEMORY[0x1E69E9840];
}

void PhysicsSimulationComponent.clock.modify(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  *(a1 + 16) = v1;
  v3 = *(v1 + 40);
  if (v3)
  {
    v4 = *(v1 + 40);
LABEL_9:
    *a1 = v4;
    v11 = v3;
    v12 = *MEMORY[0x1E69E9840];
    return;
  }

  v5 = specialized static __ServiceLocator.shared.getter();
  if (*(*(v5 + 160) + 16))
  {
    v6 = *(v5 + 160);

    EngineSourceTimebase = RETimebaseServiceCreateEngineSourceTimebase();
    if (EngineSourceTimebase)
    {
      v4 = EngineSourceTimebase;
LABEL_8:

      goto LABEL_9;
    }
  }

  else
  {
    v8 = *(v5 + 160);
  }

  *(a1 + 8) = 0;
  v9 = *MEMORY[0x1E695E480];
  v10 = CMClockGetHostTimeClock();
  CMTimebaseCreateWithSourceClock(v9, v10, (a1 + 8));

  v4 = *(a1 + 8);
  if (v4)
  {
    goto LABEL_8;
  }

  __break(1u);
}

void PhysicsSimulationComponent.clock.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  if (a2)
  {
    v4 = *a1;
    v5 = swift_unknownObjectRetain();
    PhysicsSimulationComponent.clock.setter(v5);

    swift_unknownObjectRelease();
  }

  else
  {
    PhysicsSimulationComponent.clock.setter(*a1);
  }
}

id static PhysicsSimulationComponent.__fromCore(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  GravityOverride = REPhysicsSimulationComponentGetGravityOverride();
  if (GravityOverride)
  {
    v5 = *GravityOverride;
  }

  else
  {
    v6 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    result = MEMORY[0x1C68FE290](*(v6 + 16));
    if (!result)
    {
      __break(1u);
      return result;
    }

    REPhysicsSimulationServiceGetDefaultGravity();
  }

  v12 = v5;
  KinematicVsStaticFlag = REPhysicsSimulationComponentGetKinematicVsStaticFlag();
  if (REPhysicsSimulationComponentGetKinematicVsKinematicFlag())
  {
    KinematicVsStaticFlag |= 2u;
  }

  REPhysicsSimulationComponentGetSolverIterations();
  v10 = v9;
  result = REPhysicsSimulationComponentGetParentTimebase();
  *&v11 = v10;
  *(&v11 + 1) = HIDWORD(v10);
  *a2 = v11;
  *(a2 + 16) = v12;
  *(a2 + 32) = KinematicVsStaticFlag;
  *(a2 + 40) = result;
  return result;
}

uint64_t PhysicsSimulationComponent.__toCore(_:)(uint64_t *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 1);
  v6 = *(v1 + 32);
  v7 = v1[5];
  REPhysicsSimulationComponentSetGravityOverride();
  REPhysicsSimulationComponentSetKinematicFlags();
  REPhysicsSimulationComponentSetParentTimebase();
  REPhysicsSimulationComponentSetSolverIterations();
  result = RENetworkMarkComponentDirty();
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void PhysicsSimulationComponent.customMirror.getter()
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  v10 = *(v0 + 32);
  v11 = *(v0 + 5);
  v12 = *v0;
  v25 = v0[1];
  v27 = v12;
  v28 = v25;
  v29 = v10;
  v30 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C1897FD0;
  *(v13 + 32) = 0x79746976617267;
  *(v13 + 40) = 0xE700000000000000;
  *(v13 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  v14 = swift_allocObject();
  *(v13 + 48) = v14;
  *(v14 + 16) = v25;
  *(v13 + 80) = 0xD000000000000010;
  *(v13 + 88) = 0x80000001C18F0C00;
  *(v13 + 96) = v10;
  *(v13 + 120) = &type metadata for PhysicsSimulationComponent.CollisionOptions;
  *(v13 + 128) = 0x6B636F6C63;
  *(v13 + 136) = 0xE500000000000000;
  if (v11)
  {
    v15 = v11;
LABEL_9:
    *(v13 + 168) = swift_getObjectType();
    *(v13 + 144) = v15;
    v22 = type metadata accessor for Mirror.DisplayStyle();
    (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
    (*(v2 + 104))(v5, *MEMORY[0x1E69E75D8], v1);
    v23 = v11;
    Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
    v24 = *MEMORY[0x1E69E9840];
    return;
  }

  v16 = specialized static __ServiceLocator.shared.getter();
  if (*(*(v16 + 160) + 16))
  {
    v17 = *(v16 + 160);

    EngineSourceTimebase = RETimebaseServiceCreateEngineSourceTimebase();
    if (EngineSourceTimebase)
    {
      v15 = EngineSourceTimebase;
LABEL_8:

      goto LABEL_9;
    }
  }

  else
  {
    v19 = *(v16 + 160);
  }

  timebaseOut = 0;
  v20 = *MEMORY[0x1E695E480];
  v21 = CMClockGetHostTimeClock();
  CMTimebaseCreateWithSourceClock(v20, v21, &timebaseOut);

  v15 = timebaseOut;
  if (timebaseOut)
  {
    goto LABEL_8;
  }

  __break(1u);
}

BOOL specialized static PhysicsSimulationComponent.== infix(_:_:)(float32x4_t *a1, float32x4_t *a2)
{
  result = 0;
  if (a1->i64[0] == a2->i64[0] && a1->i64[1] == a2->i64[1])
  {
    v5 = vmovn_s32(vceqq_f32(a1[1], a2[1]));
    if (v5.i8[0] & 1) != 0 && (v5.i8[2])
    {
      result = 0;
      if ((v5.i8[4] & 1) != 0 && a1[2].u8[0] == a2[2].u8[0])
      {
        v6 = a1[2].i64[1];
        v7 = a2[2].u64[1];
        result = (v6 | v7) == 0;
        if (v6)
        {
          if (v7)
          {
            type metadata accessor for CMTimebaseRef(0);
            lazy protocol witness table accessor for type CMTimebaseRef and conformance CMTimebaseRef();
            v8 = v7;
            v9 = static _CFObject.== infix(_:_:)();

            return v9 & 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t specialized static PhysicsSimulationComponent.nearestSimulationEntity(for:)(uint64_t a1)
{
  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  result = MEMORY[0x1C68FE290](*(v2 + 16));
  if (result)
  {
    v4 = *(a1 + 16);
    result = REPhysicsSimulationServiceGetRootSimulationEntity();
    if (result)
    {
      v5 = result;
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        return swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
          __break(1u);
        }

        else
        {
          v6 = specialized static Entity.entityInfoType(_:)();
          if (v6)
          {
            v7 = (*(v6 + 232))();
            v8 = *(v7 + 16);

            MEMORY[0x1C68F9740](v8, 0);
            *(v7 + 16) = v5;
            MEMORY[0x1C68F9740](v5, v7);

            return v7;
          }

          else
          {
            return makeEntity(for:)(v5);
          }
        }
      }
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhysicsSimulationComponent.CollisionOptions and conformance PhysicsSimulationComponent.CollisionOptions()
{
  result = lazy protocol witness table cache variable for type PhysicsSimulationComponent.CollisionOptions and conformance PhysicsSimulationComponent.CollisionOptions;
  if (!lazy protocol witness table cache variable for type PhysicsSimulationComponent.CollisionOptions and conformance PhysicsSimulationComponent.CollisionOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsSimulationComponent.CollisionOptions and conformance PhysicsSimulationComponent.CollisionOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhysicsSimulationComponent.CollisionOptions and conformance PhysicsSimulationComponent.CollisionOptions;
  if (!lazy protocol witness table cache variable for type PhysicsSimulationComponent.CollisionOptions and conformance PhysicsSimulationComponent.CollisionOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsSimulationComponent.CollisionOptions and conformance PhysicsSimulationComponent.CollisionOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhysicsSimulationComponent.CollisionOptions and conformance PhysicsSimulationComponent.CollisionOptions;
  if (!lazy protocol witness table cache variable for type PhysicsSimulationComponent.CollisionOptions and conformance PhysicsSimulationComponent.CollisionOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsSimulationComponent.CollisionOptions and conformance PhysicsSimulationComponent.CollisionOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhysicsSimulationComponent.CollisionOptions and conformance PhysicsSimulationComponent.CollisionOptions;
  if (!lazy protocol witness table cache variable for type PhysicsSimulationComponent.CollisionOptions and conformance PhysicsSimulationComponent.CollisionOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsSimulationComponent.CollisionOptions and conformance PhysicsSimulationComponent.CollisionOptions);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhysicsSimulationComponent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t storeEnumTagSinglePayload for PhysicsSimulationComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CMTimebaseRef and conformance CMTimebaseRef()
{
  result = lazy protocol witness table cache variable for type CMTimebaseRef and conformance CMTimebaseRef;
  if (!lazy protocol witness table cache variable for type CMTimebaseRef and conformance CMTimebaseRef)
  {
    type metadata accessor for CMTimebaseRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMTimebaseRef and conformance CMTimebaseRef);
  }

  return result;
}

uint64_t USDDecodableContext.identifierForScene(uskNodePath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v29 = a3;
    v30 = v10;
    v28 = a1;
    v35 = a1;
    v36 = a2;
    v33 = 91;
    v34 = 0xE100000000000000;
    v31 = 0;
    v32 = 0xE000000000000000;
    lazy protocol witness table accessor for type String and conformance String();

    v13 = MEMORY[0x1E69E6158];
    v35 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v36 = v14;
    v33 = 93;
    v34 = 0xE100000000000000;
    v31 = 0;
    v32 = 0xE000000000000000;
    v15 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v17 = v16;

    v18 = *(v4 + 32);
    if (*(v18 + 16))
    {
      v19 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v17);
      v21 = v20;

      if (v21)
      {

        (*(v30 + 16))(v12, *(v18 + 56) + *(v30 + 72) * v19, v8);
        v22 = v29;
        (*(v30 + 32))(v29, v12, v8);
        return (*(v30 + 56))(v22, 0, 1, v8);
      }
    }

    else
    {
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1C1887600;
    *(v25 + 56) = v13;
    *(v25 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v25 + 32) = v28;
    *(v25 + 40) = a2;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
    v26 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    return (*(v30 + 56))(v29, 1, 1, v8);
  }

  else
  {
    v24 = *(v10 + 56);

    return v24(a3, 1, 1, v8);
  }
}

uint64_t USDDecodableContext.identifierForPath(uskNodePath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v37 - v15;
  if (!a2)
  {
    goto LABEL_10;
  }

  v38 = v14;
  v39 = 0;
  v43 = a1;
  v44 = a2;
  v41 = 91;
  v42 = 0xE100000000000000;
  v40 = 0xE000000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v43 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v44 = v17;
  v41 = 93;
  v42 = 0xE100000000000000;
  v39 = 0;
  v40 = 0xE000000000000000;
  v18 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v20 = v19;

  v21 = *(v4 + 24);
  if (!*(v21 + 16))
  {

LABEL_10:
    v36 = type metadata accessor for UUID();
    return (*(*(v36 - 8) + 56))(a3, 1, 1, v36);
  }

  v22 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v20);
  v24 = v23;

  v25 = v38;
  if ((v24 & 1) == 0)
  {
    goto LABEL_10;
  }

  v26 = (*(v21 + 56) + 16 * v22);
  v27 = *v26;
  v28 = v26[1];
  v29 = *(v4 + 16);

  v30 = specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(v27, v28, v29, v21);

  if (!v30)
  {
    goto LABEL_10;
  }

  Entity.__interactionIdentifier.getter(v16);
  v31 = type metadata accessor for UUID();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  v34 = v33(v16, 1, v31);
  outlined destroy of BodyTrackingComponent?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v34 == 1)
  {
    UUID.init()();
    (*(v32 + 56))(v13, 0, 1, v31);
    Entity.__interactionIdentifier.setter(v13);
  }

  Entity.__interactionIdentifier.getter(v25);
  result = v33(v25, 1, v31);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    (*(v32 + 32))(a3, v25, v31);
    return (*(v32 + 56))(a3, 0, 1, v31);
  }

  return result;
}

uint64_t __USDExportContext.pathTo(_:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  swift_beginAccess();
  v4 = *(v3 + 16);
  if (*(v4 + 16))
  {

    v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v6)
    {
      v7 = *(*(v4 + 56) + 8 * v5);
      v8 = v7;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v10[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13USKObjectPathCSgMd, &_sSo13USKObjectPathCSgMR);
  v10[0] = v7;
  outlined init with copy of Any(v10, v11);
  outlined destroy of __USKObjectPathWrapper(v10);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
  if (swift_dynamicCast())
  {
    return v10[0];
  }

  else
  {
    return 0;
  }
}

void USDDecodableContext.forEachObjectPathInProperty(named:requestContext:block:)(uint64_t a1, uint64_t a2, int a3, void (*a4)(char *), uint64_t a5)
{
  v118 = a5;
  v117 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v113 = &v110 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v123 = &v110 - v16;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v112 = &v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v116 = &v110 - v22;
  v125 = v5;
  v23 = *v5;
  v24 = MEMORY[0x1C68F3280](a1, a2);
  v25 = [v23 property_];

  if (!v25)
  {
    v95 = 0xD000000000000012;
    static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v96 = swift_allocObject();
    v97 = v96;
    *(v96 + 16) = xmmword_1C1897FD0;
    if (a3)
    {
      if (a3 == 1)
      {
        v98 = "ng: Unknown action type";
      }

      else
      {
        v98 = "imagesByFullSchemePath";
        v95 = 0xD000000000000013;
      }
    }

    else
    {
      v95 = 0xD000000000000014;
      v98 = "USD trigger loading";
    }

    v99 = v98 | 0x8000000000000000;
    v100 = MEMORY[0x1E69E6158];
    *(v96 + 56) = MEMORY[0x1E69E6158];
    v101 = lazy protocol witness table accessor for type String and conformance String();
    v97[4] = v95;
    v97[5] = v99;
    v97[12] = v100;
    v97[13] = v101;
    v97[8] = v101;
    v97[9] = a1;
    v97[10] = a2;

    v102 = [v23 path];
    v103 = [v102 stringValue];

    if (v103)
    {
      v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v106 = v105;

      v107 = v97 + 14;
      v97[17] = v100;
      v97[18] = v101;
      if (v106)
      {
        *v107 = v104;
LABEL_50:
        v97[15] = v106;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v132 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        v108 = v132;

        return;
      }
    }

    else
    {
      v107 = v97 + 14;
      v97[17] = v100;
      v97[18] = v101;
    }

    *v107 = 7104878;
    v106 = 0xE300000000000000;
    goto LABEL_50;
  }

  v26 = v25;
  v27 = [v26 objectPathArray];
  v129 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
  v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = v28;
  if (v28 >> 62)
  {
    v109 = __CocoaSet.count.getter();
    v29 = v28;
    v30 = v109;
    v31 = v123;
    if (v109)
    {
      goto LABEL_4;
    }

LABEL_54:

LABEL_56:

    return;
  }

  v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v31 = v123;
  if (!v30)
  {
    goto LABEL_54;
  }

LABEL_4:
  if (v30 >= 1)
  {
    v111 = v13;
    v32 = 0;
    v33 = v125[1];
    v131 = v29 & 0xC000000000000001;
    v132 = v33;
    v126 = (v18 + 56);
    v115 = (v18 + 32);
    v124 = (v18 + 48);
    v114 = (v18 + 8);
    v128 = xmmword_1C1897FC0;
    v122 = "USD trigger loading";
    v121 = "ng: Unknown action type";
    v120 = "imagesByFullSchemePath";
    v130 = v29;
    v119 = a3;
    while (1)
    {
      if (v131)
      {
        v39 = MEMORY[0x1C68F41F0](v32);
      }

      else
      {
        v39 = *(v29 + 8 * v32 + 32);
      }

      v40 = v39;
      v41 = [v132 objectAtPath_];
      if (!v41)
      {
        goto LABEL_28;
      }

      v42 = v41;
      objc_opt_self();
      v43 = swift_dynamicCastObjCClass();

      if (!v43)
      {
        goto LABEL_28;
      }

      v44 = [v40 stringValue];
      if (!v44)
      {
        goto LABEL_25;
      }

      v45 = v44;
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v47;

      v137 = v46;
      v138 = v48;
      v127 = v48;
      v135 = 91;
      v136 = 0xE100000000000000;
      v133 = 0;
      v134 = 0xE000000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v137 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v138 = v49;
      v135 = 93;
      v136 = 0xE100000000000000;
      v133 = 0;
      v134 = 0xE000000000000000;
      v50 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v52 = v51;

      v53 = v125[3];
      if (!*(v53 + 16))
      {
        break;
      }

      v54 = specialized __RawDictionaryStorage.find<A>(_:)(v50, v52);
      v56 = v55;

      if ((v56 & 1) == 0 || (v57 = (*(v53 + 56) + 16 * v54), v58 = *v57, v59 = v57[1], v60 = v125[2], , v61 = specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(v58, v59, v60, v53), , !v61))
      {
        LOBYTE(a3) = v119;
        v31 = v123;
LABEL_25:
        (*v126)(v31, 1, 1, v17);
        goto LABEL_26;
      }

      v62 = *(v61 + 16);
      swift_beginAccess();
      LOBYTE(a3) = v119;
      if (static __RKEntityUUIDComponent.registration && (v63 = *(static __RKEntityUUIDComponent.registration + 4), REEntityGetCustomComponent()) && (Object = RECustomComponentGetObject()) != 0)
      {
        v65 = *(Object + 1);
        v66 = Object[7];
        v67 = Object[6];
        v68 = Object[5];
        v69 = Object[4];
        v70 = Object[3];
        v71 = Object[2];
        v72 = Object[1];
        v73 = *Object;
        v74 = v113;
        UUID.init(uuid:)();
        v75 = *v126;
        (*v126)(v74, 0, 1, v17);
        outlined destroy of BodyTrackingComponent?(v74, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }

      else
      {
        v75 = *v126;
        v80 = v113;
        (*v126)(v113, 1, 1, v17);
        outlined destroy of BodyTrackingComponent?(v80, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v81 = v111;
        UUID.init()();
        v75(v81, 0, 1, v17);
        Entity.__interactionIdentifier.setter(v81);
      }

      v31 = v123;
      if (!static __RKEntityUUIDComponent.registration)
      {
        goto LABEL_58;
      }

      v82 = *(v61 + 16);
      v83 = *(static __RKEntityUUIDComponent.registration + 4);
      if (!REEntityGetCustomComponent())
      {
        goto LABEL_58;
      }

      v84 = RECustomComponentGetObject();
      if (!v84)
      {
        goto LABEL_58;
      }

      v85 = *(v84 + 1);
      v86 = v84[7];
      v87 = v84[6];
      v88 = v84[5];
      v89 = v84[4];
      v90 = v84[3];
      v91 = v84[2];
      v92 = v84[1];
      v93 = *v84;
      v94 = v112;
      UUID.init(uuid:)();

      (*v115)(v31, v94, v17);
      v75(v31, 0, 1, v17);
LABEL_26:

      if ((*v124)(v31, 1, v17) == 1)
      {
        outlined destroy of BodyTrackingComponent?(v31, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_28:
        static os_log_type_t.debug.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v76 = swift_allocObject();
        v77 = v76;
        *(v76 + 16) = v128;
        if (a3)
        {
          if (a3 == 1)
          {
            v34 = 0xD000000000000012;
            v78 = &v140;
          }

          else
          {
            v34 = 0xD000000000000013;
            v78 = &v139;
          }

          v35 = *(v78 - 32);
        }

        else
        {
          v34 = 0xD000000000000014;
          v35 = v122;
        }

        v36 = v35 | 0x8000000000000000;
        *(v76 + 56) = MEMORY[0x1E69E6158];
        *(v76 + 64) = lazy protocol witness table accessor for type String and conformance String();
        v77[4] = v34;
        v77[5] = v36;
        v77[12] = v129;
        v77[13] = lazy protocol witness table accessor for type USKObjectPath and conformance NSObject();
        v77[9] = v40;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v37 = v40;
        v38 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        goto LABEL_8;
      }

      v79 = v116;
      (*v115)(v116, v31, v17);
      v117(v79);

      (*v114)(v79, v17);
LABEL_8:
      ++v32;
      v29 = v130;
      if (v30 == v32)
      {
        goto LABEL_56;
      }
    }

    LOBYTE(a3) = v119;
    v31 = v123;
    goto LABEL_25;
  }

  __break(1u);
LABEL_58:
  __break(1u);
}

uint64_t __USDExportContext.InstanceMapper.addMapping(from:to:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any(a2, v22);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
  swift_dynamicCast();
  v14 = v21;
  outlined init with copy of UUID?(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {

    return outlined destroy of BodyTrackingComponent?(v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    swift_beginAccess();
    v16 = v14;
    v17 = *(v2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v2 + 16);
    *(v2 + 16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, v13, isUniquelyReferenced_nonNull_native);
    *(v2 + 16) = v20;
    swift_endAccess();

    return (*(v10 + 8))(v13, v9);
  }
}

uint64_t __USDExportContext.InstanceMapper.getMapping(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 16))
  {

    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);
      v9 = v8;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13USKObjectPathCSgMd, &_sSo13USKObjectPathCSgMR);
  a2[3] = result;
  *a2 = v8;
  return result;
}

uint64_t __USDExportContext.InstanceMapper.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t __USDExportContext.InstanceMapper.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t __USDExportContext.instanceMapper.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t __USDExportContext.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of __USKSceneWrapper(a1, v7);
  __USDExportContext.init(with:resolver:)(v7, 0, 0, &v8);
  result = outlined destroy of __USKSceneWrapper(a1);
  v5 = v9;
  v6 = v10;
  if (!v9)
  {
    v5 = 0;
  }

  *a2 = v8;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  return result;
}

void __USDExportContext.init(with:resolver:)(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for __USDExportContext.InstanceMapper();
  v8 = swift_allocObject();
  *(v8 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_So13USKObjectPathCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  outlined init with take of Any(a1, &v12);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKScene, 0x1E69DED78);
  if (swift_dynamicCast())
  {
    v9 = v11;
    outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a2);
    v10 = v11;

    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a2);
  }

  else
  {
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a2);

    a2 = 0;
    a3 = 0;
    v9 = 0;
    v8 = 0;
  }

  *a4 = a2;
  a4[1] = a3;
  a4[2] = v9;
  a4[3] = v8;
}

uint64_t __USKNodeWrapper.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v6 = *(*(a2 - 8) + 32);

  return v6(boxed_opaque_existential_1, a1, a2);
}

uint64_t __USDEncoder.exportContext.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v4;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v2);
  v6 = v5;
}

__n128 __USDEncoder.exportContext.setter(__n128 *a1)
{
  v3 = a1->n128_u64[0];
  v4 = a1->n128_i64[1];
  v5 = v1[1];
  v7 = v1[2];
  v6 = v1[3];
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*v1);

  *v1 = v3;
  v1[1] = v4;
  result = a1[1];
  *(v1 + 1) = result;
  return result;
}

__n128 __USDEncoder.init(exportContext:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t specialized USDDecodableContext.sceneChildEntityWithName(childEntityName:scene:)(uint64_t a1, uint64_t a2)
{
  result = RESceneGetEntitiesArray();
  if (v5)
  {
    v6 = result;
    v7 = v5;
    v8 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs13OpaquePointerV_Tt1g5(v5, 0);
    result = memcpy(v8 + 4, v6, 8 * v7);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v9 = 0;
  v10 = v8[2];
  while (1)
  {
    if (v10 == v9)
    {

      return 0;
    }

    if (v9 >= v8[2])
    {
      break;
    }

    v11 = v8[v9 + 4];
    REEntityGetName();
    if (String.init(cString:)() == a1 && v12 == a2)
    {

      return v11;
    }

    ++v9;
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {

      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized USDDecodableContext.childEntityWithName(childEntityName:entity:)(uint64_t a1, uint64_t a2)
{
  result = REEntityGetChildCount();
  if ((result & 0x8000000000000000) == 0)
  {
    v5 = result;
    for (i = 0; ; ++i)
    {
      if (v5 == i)
      {
        return 0;
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      result = REEntityGetChild();
      if (!result)
      {
        goto LABEL_14;
      }

      v8 = result;
      REEntityGetName();
      if (String.init(cString:)() == a1 && v9 == a2)
      {

        return v8;
      }

      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v7)
      {
        return v8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = 47;
  v50 = 0xE100000000000000;
  v44 = &v49;

  result = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), v43, a1, a2, v8);
  v10 = result;
  if (*(a4 + 16) && (result = specialized __RawDictionaryStorage.find<A>(_:)(47, 0xE100000000000000), (v11 & 1) != 0))
  {
    v12 = (*(a4 + 56) + 16 * result);
    v14 = *v12;
    v13 = v12[1];
    v49 = v14;
    v50 = v13;
    v47 = 12079;
    v48 = 0xE200000000000000;
    v45 = 47;
    v46 = 0xE100000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v15 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v16 = *(a3 + 16);
    v18 = specialized USDDecodableContext.sceneChildEntityWithName(childEntityName:scene:)(v15, v17);
    v19 = 0;
  }

  else
  {
    if (!v10[2])
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

    v20 = v10[4];
    v21 = v10[5];
    v22 = v10[6];
    v23 = v10[7];

    v24 = MEMORY[0x1C68F3380](v20, v21, v22, v23);
    v26 = v25;

    v27 = *(a3 + 16);
    v18 = specialized USDDecodableContext.sceneChildEntityWithName(childEntityName:scene:)(v24, v26);
    v19 = 1;
  }

  v28 = v10[2];
  if ((v28 & ~v19) != 0)
  {
    v29 = &v10[4 * v19 + 7];
    while (v28 != v19)
    {
      if (!v18)
      {

        return 0;
      }

      if (v19 >= v10[2])
      {
        goto LABEL_23;
      }

      ++v19;
      v30 = *(v29 - 3);
      v31 = *(v29 - 2);
      v32 = *(v29 - 1);
      v33 = *v29;

      v34 = MEMORY[0x1C68F3380](v30, v31, v32, v33);
      v36 = v35;

      v18 = specialized USDDecodableContext.childEntityWithName(childEntityName:entity:)(v34, v36);

      v29 += 4;
      if (v28 == v19)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_12:

  if (!v18)
  {
    return 0;
  }

  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    return swift_dynamicCastClassUnconditional();
  }

  result = REEntityIsBeingDestroyed();
  if (result)
  {
    goto LABEL_25;
  }

  v37 = specialized static Entity.entityInfoType(_:)();
  if (!v37)
  {
    return makeEntity(for:)(v18);
  }

  v41 = (*(v37 + 232))(v37, v38, v39, v40);
  v42 = *(v41 + 16);

  MEMORY[0x1C68F9740](v42, 0);
  *(v41 + 16) = v18;
  MEMORY[0x1C68F9740](v18, v41);

  return v41;
}

void specialized USDDecodableContext.forEachObjectPathInProperty(named:requestContext:block:)(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void **a8)
{
  v126 = a8;
  v131 = a7;
  v122 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v119 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v132 = &v119 - v21;
  v22 = type metadata accessor for UUID();
  v130 = *(v22 - 8);
  v23 = *(v130 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v137 = &v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v121 = &v119 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v136 = &v119 - v28;
  v29 = MEMORY[0x1C68F3280](a1, a2);
  v30 = [a4 property_];

  if (!v30)
  {
    v104 = 0xD000000000000012;
    static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v105 = swift_allocObject();
    v106 = v105;
    *(v105 + 16) = xmmword_1C1897FD0;
    if (a3)
    {
      if (a3 == 1)
      {
        v107 = "ng: Unknown action type";
      }

      else
      {
        v107 = "imagesByFullSchemePath";
        v104 = 0xD000000000000013;
      }
    }

    else
    {
      v104 = 0xD000000000000014;
      v107 = "USD trigger loading";
    }

    v108 = v107 | 0x8000000000000000;
    v109 = MEMORY[0x1E69E6158];
    *(v105 + 56) = MEMORY[0x1E69E6158];
    v110 = lazy protocol witness table accessor for type String and conformance String();
    v106[4] = v104;
    v106[5] = v108;
    v106[12] = v109;
    v106[13] = v110;
    v106[8] = v110;
    v106[9] = a1;
    v106[10] = a2;

    v111 = [a4 path];
    v112 = [v111 stringValue];

    if (v112)
    {
      v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v115 = v114;

      v116 = v106 + 14;
      v106[17] = v109;
      v106[18] = v110;
      if (v115)
      {
        *v116 = v113;
LABEL_53:
        v106[15] = v115;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v143 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        v117 = v143;

        return;
      }
    }

    else
    {
      v116 = v106 + 14;
      v106[17] = v109;
      v106[18] = v110;
    }

    *v116 = 7104878;
    v115 = 0xE300000000000000;
    goto LABEL_53;
  }

  v31 = v30;
  v32 = [v31 objectPathArray];
  v141 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
  v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v34 = v33;
  if (v33 >> 62)
  {
    v118 = __CocoaSet.count.getter();
    v34 = v33;
    v35 = v118;
    if (v118)
    {
      goto LABEL_4;
    }

LABEL_57:

LABEL_59:

    return;
  }

  v35 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v35)
  {
    goto LABEL_57;
  }

LABEL_4:
  if (v35 >= 1)
  {
    v120 = v20;
    v119 = v17;
    v140 = a3;
    v36 = 0;
    v143 = v34 & 0xC000000000000001;
    v134 = (v130 + 32);
    v135 = (v130 + 56);
    v133 = (v130 + 48);
    v124 = (v130 + 16);
    v123 = v130 + 8;
    v139 = xmmword_1C1897FC0;
    v129 = "USD trigger loading";
    v128 = "ng: Unknown action type";
    v127 = "imagesByFullSchemePath";
    v37 = v132;
    v142 = v34;
    v125 = a5;
    while (1)
    {
      if (v143)
      {
        v43 = MEMORY[0x1C68F41F0](v36);
      }

      else
      {
        v43 = *(v34 + 8 * v36 + 32);
      }

      v44 = v43;
      v45 = [a5 objectAtPath_];
      if (!v45)
      {
        goto LABEL_28;
      }

      v46 = v45;
      objc_opt_self();
      v47 = swift_dynamicCastObjCClass();

      if (!v47)
      {
        goto LABEL_28;
      }

      v48 = [v44 stringValue];
      if (v48)
      {
        v49 = v48;
        v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v52 = v51;

        v148 = v50;
        v149 = v52;
        v138 = v52;
        v146 = 91;
        v147 = 0xE100000000000000;
        v144 = 0;
        v145 = 0xE000000000000000;
        lazy protocol witness table accessor for type String and conformance String();
        v148 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v149 = v53;
        v146 = 93;
        v147 = 0xE100000000000000;
        v144 = 0;
        v145 = 0xE000000000000000;
        v54 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v56 = v55;

        v57 = v131;
        if (*(v131 + 16))
        {
          v58 = specialized __RawDictionaryStorage.find<A>(_:)(v54, v56);
          v60 = v59;

          if (v60)
          {
            v61 = (*(v57 + 56) + 16 * v58);
            v62 = *v61;
            v63 = v61[1];

            v64 = specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(v62, v63, v122, v57);

            if (v64)
            {
              v65 = *(v64 + 16);
              swift_beginAccess();
              a5 = v125;
              if (static __RKEntityUUIDComponent.registration && (v66 = *(static __RKEntityUUIDComponent.registration + 4), REEntityGetCustomComponent()) && (Object = RECustomComponentGetObject()) != 0)
              {
                v68 = *(Object + 1);
                v69 = Object[7];
                v70 = Object[6];
                v71 = Object[5];
                v72 = Object[4];
                v73 = Object[3];
                v74 = Object[2];
                v75 = Object[1];
                v76 = *Object;
                v77 = v120;
                UUID.init(uuid:)();
                v78 = *v135;
                (*v135)(v77, 0, 1, v22);
                outlined destroy of BodyTrackingComponent?(v77, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              }

              else
              {
                v78 = *v135;
                v89 = v120;
                (*v135)(v120, 1, 1, v22);
                outlined destroy of BodyTrackingComponent?(v89, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                v90 = v119;
                UUID.init()();
                v78(v90, 0, 1, v22);
                Entity.__interactionIdentifier.setter(v90);
              }

              v37 = v132;
              if (!static __RKEntityUUIDComponent.registration)
              {
                goto LABEL_61;
              }

              v91 = *(v64 + 16);
              v92 = *(static __RKEntityUUIDComponent.registration + 4);
              if (!REEntityGetCustomComponent())
              {
                goto LABEL_61;
              }

              v93 = RECustomComponentGetObject();
              if (!v93)
              {
                goto LABEL_61;
              }

              v94 = *(v93 + 1);
              v95 = v93[7];
              v96 = v93[6];
              v97 = v93[5];
              v98 = v93[4];
              v99 = v93[3];
              v100 = v93[2];
              v101 = v93[1];
              v102 = *v93;
              v103 = v121;
              UUID.init(uuid:)();

              (*v134)(v37, v103, v22);
              v78(v37, 0, 1, v22);
              goto LABEL_26;
            }
          }

          a5 = v125;
          v37 = v132;
        }

        else
        {

          a5 = v125;
          v37 = v132;
        }
      }

      (*v135)(v37, 1, 1, v22);
LABEL_26:

      if ((*v133)(v37, 1, v22) != 1)
      {
        v81 = *v134;
        v82 = v136;
        (*v134)(v136, v37, v22);
        (*v124)(v137, v82, v22);
        v83 = v126;
        v84 = *v126;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v83 = v84;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v84[2] + 1, 1, v84);
          *v126 = v84;
        }

        v87 = v84[2];
        v86 = v84[3];
        if (v87 >= v86 >> 1)
        {
          v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v86 > 1, v87 + 1, 1, v84);
          *v126 = v84;
        }

        v84[2] = v87 + 1;
        v88 = v130;
        v81(v84 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v130 + 72) * v87, v137, v22);

        (*(v88 + 8))(v136, v22);
        goto LABEL_8;
      }

      outlined destroy of BodyTrackingComponent?(v37, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_28:
      static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v79 = swift_allocObject();
      v80 = v79;
      *(v79 + 16) = v139;
      if (v140)
      {
        if (v140 == 1)
        {
          v38 = 0xD000000000000012;
          v39 = &v151;
        }

        else
        {
          v38 = 0xD000000000000013;
          v39 = &v150;
        }
      }

      else
      {
        v38 = 0xD000000000000014;
        v39 = &v152;
      }

      v40 = *(v39 - 32) | 0x8000000000000000;
      *(v79 + 56) = MEMORY[0x1E69E6158];
      *(v79 + 64) = lazy protocol witness table accessor for type String and conformance String();
      v80[4] = v38;
      v80[5] = v40;
      v80[12] = v141;
      v80[13] = lazy protocol witness table accessor for type USKObjectPath and conformance NSObject();
      v80[9] = v44;
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
      v41 = v44;
      v42 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

LABEL_8:
      ++v36;
      v34 = v142;
      if (v35 == v36)
      {
        goto LABEL_59;
      }
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
}

void specialized USDDecodableContext.forEachObjectPathInProperty(named:requestContext:block:)(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void **a8, void *a9)
{
  v132 = a8;
  v136 = a7;
  v125 = a6;
  v137 = a5;
  v131 = a9;
  v130 = type metadata accessor for __RKEntityTriggerSpecification(0);
  v129 = *(v130 - 8);
  v13 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v130);
  v142 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v122 = &v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v124 = &v122 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v140 = &v122 - v21;
  v22 = type metadata accessor for UUID();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v123 = &v122 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v141 = &v122 - v27;
  v28 = MEMORY[0x1C68F3280](a1, a2);
  v29 = [a4 property_];

  if (!v29)
  {
    v107 = 0xD000000000000012;
    static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v108 = swift_allocObject();
    v109 = v108;
    *(v108 + 16) = xmmword_1C1897FD0;
    if (a3)
    {
      if (a3 == 1)
      {
        v110 = "ng: Unknown action type";
      }

      else
      {
        v110 = "imagesByFullSchemePath";
        v107 = 0xD000000000000013;
      }
    }

    else
    {
      v107 = 0xD000000000000014;
      v110 = "USD trigger loading";
    }

    v111 = v110 | 0x8000000000000000;
    v112 = MEMORY[0x1E69E6158];
    *(v108 + 56) = MEMORY[0x1E69E6158];
    v113 = lazy protocol witness table accessor for type String and conformance String();
    v109[4] = v107;
    v109[5] = v111;
    v109[12] = v112;
    v109[13] = v113;
    v109[8] = v113;
    v109[9] = a1;
    v109[10] = a2;

    v114 = [a4 path];
    v115 = [v114 stringValue];

    if (v115)
    {
      v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v118 = v117;

      v119 = v109 + 14;
      v109[17] = v112;
      v109[18] = v113;
      if (v118)
      {
        *v119 = v116;
LABEL_57:
        v109[15] = v118;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v148 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        v120 = v148;

        return;
      }
    }

    else
    {
      v119 = v109 + 14;
      v109[17] = v112;
      v109[18] = v113;
    }

    *v119 = 7104878;
    v118 = 0xE300000000000000;
    goto LABEL_57;
  }

  v146 = a3;
  v30 = v29;
  v31 = [v30 objectPathArray];
  v145 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = v32;
  if (v32 >> 62)
  {
    v121 = __CocoaSet.count.getter();
    v33 = v32;
    v34 = v121;
  }

  else
  {
    v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = v137;
  if (v34)
  {
    if (v34 >= 1)
    {
      v36 = 0;
      v148 = v33 & 0xC000000000000001;
      v139 = (v23 + 56);
      v128 = (v23 + 32);
      v138 = (v23 + 48);
      v127 = (v23 + 16);
      v126 = (v23 + 8);
      v144 = xmmword_1C1897FC0;
      v37 = MEMORY[0x1E69E6158];
      v135 = "USD trigger loading";
      v134 = "ng: Unknown action type";
      v133 = "imagesByFullSchemePath";
      v147 = v33;
      while (1)
      {
        if (v148)
        {
          v43 = MEMORY[0x1C68F41F0](v36);
        }

        else
        {
          v43 = *(v33 + 8 * v36 + 32);
        }

        v44 = v43;
        v45 = [v35 objectAtPath_];
        if (!v45)
        {
          goto LABEL_29;
        }

        v46 = v45;
        objc_opt_self();
        v47 = swift_dynamicCastObjCClass();

        if (!v47)
        {
          goto LABEL_29;
        }

        v48 = [v44 stringValue];
        if (v48)
        {
          v49 = v48;
          v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v52 = v51;

          v153 = v50;
          v154 = v52;
          v143 = v52;
          v151 = 91;
          v152 = 0xE100000000000000;
          v149 = 0;
          v150 = 0xE000000000000000;
          lazy protocol witness table accessor for type String and conformance String();
          v153 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v154 = v53;
          v151 = 93;
          v152 = 0xE100000000000000;
          v149 = 0;
          v150 = 0xE000000000000000;
          v54 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v56 = v55;

          v57 = v136;
          if (*(v136 + 16))
          {
            v58 = specialized __RawDictionaryStorage.find<A>(_:)(v54, v56);
            v60 = v59;

            if (v60)
            {
              v61 = (*(v57 + 56) + 16 * v58);
              v62 = *v61;
              v63 = v61[1];

              v64 = specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(v62, v63, v125, v57);

              if (v64)
              {
                v65 = *(v64 + 16);
                swift_beginAccess();
                v35 = v137;
                if (static __RKEntityUUIDComponent.registration && (v66 = *(static __RKEntityUUIDComponent.registration + 4), REEntityGetCustomComponent()) && (Object = RECustomComponentGetObject()) != 0)
                {
                  v68 = *(Object + 1);
                  v69 = Object[7];
                  v70 = Object[6];
                  v71 = Object[5];
                  v72 = Object[4];
                  v73 = Object[3];
                  v74 = Object[2];
                  v75 = Object[1];
                  v76 = *Object;
                  v77 = v124;
                  UUID.init(uuid:)();
                  v78 = *v139;
                  (*v139)(v77, 0, 1, v22);
                  outlined destroy of BodyTrackingComponent?(v77, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                }

                else
                {
                  v78 = *v139;
                  v92 = v124;
                  (*v139)(v124, 1, 1, v22);
                  outlined destroy of BodyTrackingComponent?(v92, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                  v93 = v122;
                  UUID.init()();
                  v78(v93, 0, 1, v22);
                  Entity.__interactionIdentifier.setter(v93);
                }

                if (!static __RKEntityUUIDComponent.registration)
                {
                  goto LABEL_62;
                }

                v94 = *(v64 + 16);
                v95 = *(static __RKEntityUUIDComponent.registration + 4);
                if (!REEntityGetCustomComponent())
                {
                  goto LABEL_62;
                }

                v96 = RECustomComponentGetObject();
                if (!v96)
                {
                  goto LABEL_62;
                }

                v97 = *(v96 + 1);
                v98 = v96[7];
                v99 = v96[6];
                v100 = v96[5];
                v101 = v96[4];
                v102 = v96[3];
                v103 = v96[2];
                v104 = v96[1];
                v105 = *v96;
                v106 = v123;
                UUID.init(uuid:)();

                v79 = v140;
                (*v128)(v140, v106, v22);
                v78(v79, 0, 1, v22);
                goto LABEL_27;
              }
            }

            v35 = v137;
          }

          else
          {

            v35 = v137;
          }
        }

        v79 = v140;
        (*v139)(v140, 1, 1, v22);
LABEL_27:

        if ((*v138)(v79, 1, v22) != 1)
        {
          v82 = v141;
          (*v128)(v141, v79, v22);
          v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV6target_SayACG17collidingEntitiesSaySSG4tagstMd, &_s10Foundation4UUIDV6target_SayACG17collidingEntitiesSaySSG4tagstMR);
          v84 = *(v83 + 48);
          v85 = *(v83 + 64);
          v86 = v142;
          (*v127)(v142, v82, v22);
          *(v86 + v84) = *v131;
          *(v86 + v85) = MEMORY[0x1E69E7CC0];
          swift_storeEnumTagMultiPayload();
          v87 = v132;
          v88 = *v132;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v87 = v88;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v88 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v88[2] + 1, 1, v88);
            *v132 = v88;
          }

          v91 = v88[2];
          v90 = v88[3];
          if (v91 >= v90 >> 1)
          {
            v88 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v90 > 1, v91 + 1, 1, v88);
            *v132 = v88;
          }

          v88[2] = v91 + 1;
          _s10RealityKit29__RKEntityActionSpecificationOWObTm_0(v142, v88 + ((*(v129 + 80) + 32) & ~*(v129 + 80)) + *(v129 + 72) * v91, type metadata accessor for __RKEntityTriggerSpecification);

          (*v126)(v141, v22);
          goto LABEL_9;
        }

        outlined destroy of BodyTrackingComponent?(v79, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_29:
        static os_log_type_t.debug.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v80 = swift_allocObject();
        v81 = v80;
        *(v80 + 16) = v144;
        if (v146)
        {
          if (v146 == 1)
          {
            v38 = 0xD000000000000012;
            v39 = &v156;
          }

          else
          {
            v38 = 0xD000000000000013;
            v39 = &v155;
          }
        }

        else
        {
          v38 = 0xD000000000000014;
          v39 = &v157;
        }

        v40 = *(v39 - 32) | 0x8000000000000000;
        *(v80 + 56) = v37;
        *(v80 + 64) = lazy protocol witness table accessor for type String and conformance String();
        v81[4] = v38;
        v81[5] = v40;
        v81[12] = v145;
        v81[13] = lazy protocol witness table accessor for type USKObjectPath and conformance NSObject();
        v81[9] = v44;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v41 = v44;
        v42 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

LABEL_9:
        ++v36;
        v33 = v147;
        if (v34 == v36)
        {
          goto LABEL_49;
        }
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
  }

  else
  {

LABEL_49:
  }
}

void specialized USDDecodableContext.forEachObjectPathInProperty(named:requestContext:block:)(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void **a8, float a9)
{
  v133 = a8;
  v137 = a7;
  v127 = a6;
  v138 = a5;
  v132 = type metadata accessor for __RKEntityTriggerSpecification(0);
  v131 = *(v132 - 8);
  v14 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v143 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v124 = &v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v126 = &v123 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v141 = &v123 - v22;
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v125 = &v123 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v142 = &v123 - v28;
  v29 = MEMORY[0x1C68F3280](a1, a2);
  v30 = [a4 property_];

  if (!v30)
  {
    v108 = 0xD000000000000012;
    static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v109 = swift_allocObject();
    v110 = v109;
    *(v109 + 16) = xmmword_1C1897FD0;
    if (a3)
    {
      if (a3 == 1)
      {
        v111 = "ng: Unknown action type";
      }

      else
      {
        v111 = "imagesByFullSchemePath";
        v108 = 0xD000000000000013;
      }
    }

    else
    {
      v108 = 0xD000000000000014;
      v111 = "USD trigger loading";
    }

    v112 = v111 | 0x8000000000000000;
    v113 = MEMORY[0x1E69E6158];
    *(v109 + 56) = MEMORY[0x1E69E6158];
    v114 = lazy protocol witness table accessor for type String and conformance String();
    v110[4] = v108;
    v110[5] = v112;
    v110[12] = v113;
    v110[13] = v114;
    v110[8] = v114;
    v110[9] = a1;
    v110[10] = a2;

    v115 = [a4 path];
    v116 = [v115 stringValue];

    if (v116)
    {
      v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v119 = v118;

      v120 = v110 + 14;
      v110[17] = v113;
      v110[18] = v114;
      if (v119)
      {
        *v120 = v117;
LABEL_57:
        v110[15] = v119;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v149 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        v121 = v149;

        return;
      }
    }

    else
    {
      v120 = v110 + 14;
      v110[17] = v113;
      v110[18] = v114;
    }

    *v120 = 7104878;
    v119 = 0xE300000000000000;
    goto LABEL_57;
  }

  v147 = a3;
  v31 = v30;
  v32 = [v31 objectPathArray];
  v146 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
  v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v34 = v33;
  if (v33 >> 62)
  {
    v122 = __CocoaSet.count.getter();
    v34 = v33;
    v35 = v122;
  }

  else
  {
    v35 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v36 = v138;
  if (v35)
  {
    if (v35 >= 1)
    {
      v37 = 0;
      v149 = v34 & 0xC000000000000001;
      v140 = (v24 + 56);
      v130 = (v24 + 32);
      v139 = (v24 + 48);
      v129 = (v24 + 16);
      v128 = (v24 + 8);
      v145 = xmmword_1C1897FC0;
      v38 = MEMORY[0x1E69E6158];
      v136 = "USD trigger loading";
      v135 = "ng: Unknown action type";
      v134 = "imagesByFullSchemePath";
      v148 = v34;
      while (1)
      {
        if (v149)
        {
          v44 = MEMORY[0x1C68F41F0](v37);
        }

        else
        {
          v44 = *(v34 + 8 * v37 + 32);
        }

        v45 = v44;
        v46 = [v36 objectAtPath_];
        if (!v46)
        {
          goto LABEL_29;
        }

        v47 = v46;
        objc_opt_self();
        v48 = swift_dynamicCastObjCClass();

        if (!v48)
        {
          goto LABEL_29;
        }

        v49 = [v45 stringValue];
        if (v49)
        {
          v50 = v49;
          v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v53 = v52;

          v154 = v51;
          v155 = v53;
          v144 = v53;
          v152 = 91;
          v153 = 0xE100000000000000;
          v150 = 0;
          v151 = 0xE000000000000000;
          lazy protocol witness table accessor for type String and conformance String();
          v154 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v155 = v54;
          v152 = 93;
          v153 = 0xE100000000000000;
          v150 = 0;
          v151 = 0xE000000000000000;
          v55 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v57 = v56;

          v58 = v137;
          if (*(v137 + 16))
          {
            v59 = specialized __RawDictionaryStorage.find<A>(_:)(v55, v57);
            v61 = v60;

            if (v61)
            {
              v62 = (*(v58 + 56) + 16 * v59);
              v63 = *v62;
              v64 = v62[1];

              v65 = specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(v63, v64, v127, v58);

              if (v65)
              {
                v66 = *(v65 + 16);
                swift_beginAccess();
                v36 = v138;
                if (static __RKEntityUUIDComponent.registration && (v67 = *(static __RKEntityUUIDComponent.registration + 4), REEntityGetCustomComponent()) && (Object = RECustomComponentGetObject()) != 0)
                {
                  v69 = *(Object + 1);
                  v70 = Object[7];
                  v71 = Object[6];
                  v72 = Object[5];
                  v73 = Object[4];
                  v74 = Object[3];
                  v75 = Object[2];
                  v76 = Object[1];
                  v77 = *Object;
                  v78 = v126;
                  UUID.init(uuid:)();
                  v79 = *v140;
                  (*v140)(v78, 0, 1, v23);
                  outlined destroy of BodyTrackingComponent?(v78, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                }

                else
                {
                  v79 = *v140;
                  v93 = v126;
                  (*v140)(v126, 1, 1, v23);
                  outlined destroy of BodyTrackingComponent?(v93, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                  v94 = v124;
                  UUID.init()();
                  v79(v94, 0, 1, v23);
                  Entity.__interactionIdentifier.setter(v94);
                }

                if (!static __RKEntityUUIDComponent.registration)
                {
                  goto LABEL_62;
                }

                v95 = *(v65 + 16);
                v96 = *(static __RKEntityUUIDComponent.registration + 4);
                if (!REEntityGetCustomComponent())
                {
                  goto LABEL_62;
                }

                v97 = RECustomComponentGetObject();
                if (!v97)
                {
                  goto LABEL_62;
                }

                v98 = *(v97 + 1);
                v99 = v97[7];
                v100 = v97[6];
                v101 = v97[5];
                v102 = v97[4];
                v103 = v97[3];
                v104 = v97[2];
                v105 = v97[1];
                v106 = *v97;
                v107 = v125;
                UUID.init(uuid:)();

                v80 = v141;
                (*v130)(v141, v107, v23);
                v79(v80, 0, 1, v23);
                goto LABEL_27;
              }
            }

            v36 = v138;
          }

          else
          {

            v36 = v138;
          }
        }

        v80 = v141;
        (*v140)(v141, 1, 1, v23);
LABEL_27:

        if ((*v139)(v80, 1, v23) != 1)
        {
          v83 = v142;
          (*v130)(v142, v80, v23);
          v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV6target_Sf8distance10RealityKit26__RKEntityProximityTriggerC8ExitTypeO4typetMd, &_s10Foundation4UUIDV6target_Sf8distance10RealityKit26__RKEntityProximityTriggerC8ExitTypeO4typetMR);
          v85 = *(v84 + 48);
          v86 = *(v84 + 64);
          v87 = v143;
          (*v129)(v143, v83, v23);
          *(v87 + v85) = a9;
          *(v87 + v86) = 0;
          swift_storeEnumTagMultiPayload();
          v88 = v133;
          v89 = *v133;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v88 = v89;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v89[2] + 1, 1, v89);
            *v133 = v89;
          }

          v92 = v89[2];
          v91 = v89[3];
          if (v92 >= v91 >> 1)
          {
            v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v91 > 1, v92 + 1, 1, v89);
            *v133 = v89;
          }

          v89[2] = v92 + 1;
          _s10RealityKit29__RKEntityActionSpecificationOWObTm_0(v143, v89 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v92, type metadata accessor for __RKEntityTriggerSpecification);

          (*v128)(v142, v23);
          goto LABEL_9;
        }

        outlined destroy of BodyTrackingComponent?(v80, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_29:
        static os_log_type_t.debug.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v81 = swift_allocObject();
        v82 = v81;
        *(v81 + 16) = v145;
        if (v147)
        {
          if (v147 == 1)
          {
            v39 = 0xD000000000000012;
            v40 = &v157;
          }

          else
          {
            v39 = 0xD000000000000013;
            v40 = &v156;
          }
        }

        else
        {
          v39 = 0xD000000000000014;
          v40 = &v158;
        }

        v41 = *(v40 - 32) | 0x8000000000000000;
        *(v81 + 56) = v38;
        *(v81 + 64) = lazy protocol witness table accessor for type String and conformance String();
        v82[4] = v39;
        v82[5] = v41;
        v82[12] = v146;
        v82[13] = lazy protocol witness table accessor for type USKObjectPath and conformance NSObject();
        v82[9] = v45;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v42 = v45;
        v43 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

LABEL_9:
        ++v37;
        v34 = v148;
        if (v35 == v37)
        {
          goto LABEL_49;
        }
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
  }

  else
  {

LABEL_49:
  }
}

uint64_t specialized USDDecodableContext.entityFromIdentifier(identifier:)(uint64_t a1, uint64_t a2)
{
  v82 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v72 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v7 = *(*(v81 - 8) + 64);
  MEMORY[0x1EEE9AC00](v81);
  v9 = &v71 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v71 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v84 = &v71 - v18;
  v19 = *(a2 + 16);
  AllEntitiesArray = RESceneGetAllEntitiesArray();
  if (v21)
  {
    v22 = AllEntitiesArray;
    v23 = v21;
    v83 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs13OpaquePointerV_Tt1g5(v21, 0);
    memcpy(v83 + 4, v22, 8 * v23);
  }

  else
  {
    v83 = MEMORY[0x1E69E7CC0];
  }

  v80 = v83[2];
  if (!v80)
  {
LABEL_50:

    return 0;
  }

  v75 = v14;
  result = swift_beginAccess();
  v25 = 0;
  v78 = (v4 + 16);
  v79 = (v4 + 56);
  v71 = (v4 + 32);
  v74 = (v4 + 8);
  v77 = (v4 + 48);
  while (v25 < v83[2])
  {
    v26 = v83[v25 + 4];
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v27 = swift_dynamicCastClassUnconditional();
LABEL_39:
      v48 = v27;
      goto LABEL_40;
    }

    result = REEntityIsBeingDestroyed();
    if (result)
    {
      goto LABEL_55;
    }

    if (one-time initialization token for customComponentTypeObjectIdToHandles != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v28 = static SceneManager.customComponentTypeObjectIdToHandles;
    if (*(static SceneManager.customComponentTypeObjectIdToHandles + 16) && (v29 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent), (v30 & 1) != 0))
    {
      v31 = *(*(v28 + 56) + 8 * v29);
    }

    else
    {
      swift_endAccess();
      v32 = specialized static SceneManager.customComponentTypeHelper(_:typeName:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent, 0, 0);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85 = static SceneManager.customComponentTypeObjectIdToHandles;
      static SceneManager.customComponentTypeObjectIdToHandles = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v32, &type metadata for __EntityInfoComponent, isUniquelyReferenced_nonNull_native);
      static SceneManager.customComponentTypeObjectIdToHandles = v85;
    }

    swift_endAccess();
    if (!REEntityGetCustomComponent())
    {
      goto LABEL_38;
    }

    Object = RECustomComponentGetObject();
    if (!Object)
    {
      goto LABEL_38;
    }

    v35 = *Object;
    if (*(Object + 8) || !v35)
    {
      v41 = *(Object + 8);
    }

    else
    {
      v36 = *v35;
      v37 = String.init(utf8String:)();
      if (v38)
      {
        v39 = v37;
      }

      else
      {
        v39 = 0;
      }

      if (v38)
      {
        v40 = v38;
      }

      else
      {
        v40 = 0xE000000000000000;
      }

      v35 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v36 == 42, v39, v40);

      type metadata accessor for IntrospectionDataCleanupHelper();
      result = swift_allocObject();
      *(result + 16) = v35;
    }

    if (!v35)
    {
      goto LABEL_56;
    }

    v42 = String.init(utf8String:)();
    if (v43)
    {
      v44 = v43;
    }

    else
    {
      v42 = 0;
      v44 = 0xE000000000000000;
    }

    v45 = MEMORY[0x1C68F3280](v42, v44);

    v46 = NSClassFromString(v45);

    if (!v46 || (swift_getObjCClassMetadata(), type metadata accessor for Entity(), (v47 = swift_dynamicCastMetatype()) == 0))
    {
LABEL_38:
      v27 = makeEntity(for:)(v26);
      goto LABEL_39;
    }

    v48 = (*(v47 + 232))();
    v49 = *(v48 + 16);

    MEMORY[0x1C68F9740](v49, 0);
    *(v48 + 16) = v26;
    MEMORY[0x1C68F9740](v26, v48);

LABEL_40:
    if (static __RKEntityUUIDComponent.registration && (v50 = *(v48 + 16), v51 = *(static __RKEntityUUIDComponent.registration + 4), REEntityGetCustomComponent()) && (v52 = RECustomComponentGetObject()) != 0)
    {
      v53 = *(v52 + 1);
      v54 = v52[7];
      v55 = v52[6];
      v56 = v52[5];
      v57 = v52[4];
      v58 = v52[3];
      v59 = v52[2];
      v60 = v52[1];
      v61 = *v52;
      UUID.init(uuid:)();
      v62 = 0;
    }

    else
    {
      v62 = 1;
    }

    v63 = *v79;
    v64 = v84;
    (*v79)(v84, v62, 1, v3);
    (*v78)(v17, v82, v3);
    v63(v17, 0, 1, v3);
    v65 = *(v81 + 48);
    outlined init with copy of UUID?(v64, v9);
    outlined init with copy of UUID?(v17, &v9[v65]);
    v66 = *v77;
    if ((*v77)(v9, 1, v3) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of BodyTrackingComponent?(v84, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if (v66(&v9[v65], 1, v3) == 1)
      {
        outlined destroy of BodyTrackingComponent?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_52:

        return v48;
      }

      goto LABEL_7;
    }

    v76 = v48;
    v67 = v84;
    v68 = v75;
    outlined init with copy of UUID?(v9, v75);
    if (v66(&v9[v65], 1, v3) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of BodyTrackingComponent?(v67, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (*v74)(v68, v3);
LABEL_7:
      outlined destroy of BodyTrackingComponent?(v9, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
      goto LABEL_8;
    }

    v69 = v72;
    (*v71)(v72, &v9[v65], v3);
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v73 = dispatch thunk of static Equatable.== infix(_:_:)();
    v70 = *v74;
    (*v74)(v69, v3);
    outlined destroy of BodyTrackingComponent?(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of BodyTrackingComponent?(v67, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v70(v68, v3);
    outlined destroy of BodyTrackingComponent?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v48 = v76;
    if (v73)
    {
      goto LABEL_52;
    }

LABEL_8:
    ++v25;

    if (v80 == v25)
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

void specialized USDDecodableContext.forEachObjectPathInProperty(named:requestContext:block:)(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void **a8, uint64_t a9)
{
  v131 = a8;
  v135 = a7;
  v123 = a6;
  v129 = a9;
  v128 = type metadata accessor for __RKEntityTriggerSpecification(0);
  v127 = *(v128 - 8);
  v14 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v128);
  v139 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v120 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v122 = &v119 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v119 - v22;
  v24 = type metadata accessor for UUID();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v121 = &v119 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v136 = &v119 - v29;
  v30 = MEMORY[0x1C68F3280](a1, a2);
  v31 = [a4 property_];

  if (!v31)
  {
    v105 = 0xD000000000000012;
    static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v106 = swift_allocObject();
    v107 = v106;
    *(v106 + 16) = xmmword_1C1897FD0;
    if (a3)
    {
      if (a3 == 1)
      {
        v108 = "ng: Unknown action type";
      }

      else
      {
        v108 = "imagesByFullSchemePath";
        v105 = 0xD000000000000013;
      }
    }

    else
    {
      v105 = 0xD000000000000014;
      v108 = "USD trigger loading";
    }

    v109 = v108 | 0x8000000000000000;
    v110 = MEMORY[0x1E69E6158];
    *(v106 + 56) = MEMORY[0x1E69E6158];
    v111 = lazy protocol witness table accessor for type String and conformance String();
    v107[4] = v105;
    v107[5] = v109;
    v107[12] = v110;
    v107[13] = v111;
    v107[8] = v111;
    v107[9] = a1;
    v107[10] = a2;

    v112 = [a4 path];
    v113 = [v112 stringValue];

    if (v113)
    {
      v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v116 = v115;

      v117 = v107 + 14;
      v107[17] = v110;
      v107[18] = v111;
      if (v116)
      {
        *v117 = v114;
LABEL_60:
        v107[15] = v116;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v146 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        v118 = v146;

        return;
      }
    }

    else
    {
      v117 = v107 + 14;
      v107[17] = v110;
      v107[18] = v111;
    }

    *v117 = 7104878;
    v116 = 0xE300000000000000;
    goto LABEL_60;
  }

  v32 = v31;
  v33 = [v32 objectPathArray];
  v143 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
  v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v35 = v34;
  if (v34 >> 62)
  {
    v36 = __CocoaSet.count.getter();
    v35 = v34;
  }

  else
  {
    v36 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = v136;
  if (v36)
  {
    if (v36 >= 1)
    {
      v142 = a3;
      v38 = 0;
      v146 = v35 & 0xC000000000000001;
      v138 = (v25 + 56);
      v126 = (v25 + 32);
      v137 = (v25 + 48);
      v125 = (v25 + 16);
      v124 = (v25 + 8);
      v141 = xmmword_1C1897FC0;
      v134 = "USD trigger loading";
      v133 = "ng: Unknown action type";
      v132 = "imagesByFullSchemePath";
      v144 = v36;
      v145 = v35;
      v130 = v23;
      while (1)
      {
        if (v146)
        {
          v45 = MEMORY[0x1C68F41F0](v38);
        }

        else
        {
          v45 = *(v35 + 8 * v38 + 32);
        }

        v46 = v45;
        v47 = [a5 objectAtPath_];
        if (!v47)
        {
          goto LABEL_29;
        }

        v48 = v47;
        objc_opt_self();
        v49 = swift_dynamicCastObjCClass();

        if (!v49)
        {
          goto LABEL_29;
        }

        v50 = [v46 stringValue];
        if (v50)
        {
          v51 = a5;
          v52 = v50;
          v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v55 = v54;

          v151 = v53;
          v152 = v55;
          v140 = v55;
          v149 = 91;
          v150 = 0xE100000000000000;
          v147 = 0;
          v148 = 0xE000000000000000;
          lazy protocol witness table accessor for type String and conformance String();
          v151 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v152 = v56;
          v149 = 93;
          v150 = 0xE100000000000000;
          v147 = 0;
          v148 = 0xE000000000000000;
          v57 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v59 = v58;

          v60 = v135;
          if (*(v135 + 16))
          {
            v61 = specialized __RawDictionaryStorage.find<A>(_:)(v57, v59);
            v63 = v62;

            if (v63)
            {
              v64 = (*(v60 + 56) + 16 * v61);
              v65 = *v64;
              v66 = v64[1];

              v67 = specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(v65, v66, v123, v60);

              if (v67)
              {
                v68 = *(v67 + 16);
                swift_beginAccess();
                a5 = v51;
                if (static __RKEntityUUIDComponent.registration && (v69 = *(static __RKEntityUUIDComponent.registration + 4), REEntityGetCustomComponent()) && (Object = RECustomComponentGetObject()) != 0)
                {
                  v71 = *(Object + 1);
                  v72 = Object[7];
                  v73 = Object[6];
                  v74 = Object[5];
                  v75 = Object[4];
                  v76 = Object[3];
                  v77 = Object[2];
                  v78 = Object[1];
                  v79 = *Object;
                  v80 = v122;
                  UUID.init(uuid:)();
                  v81 = *v138;
                  (*v138)(v80, 0, 1, v24);
                  outlined destroy of BodyTrackingComponent?(v80, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                }

                else
                {
                  v81 = *v138;
                  v90 = v122;
                  (*v138)(v122, 1, 1, v24);
                  outlined destroy of BodyTrackingComponent?(v90, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                  v91 = v120;
                  UUID.init()();
                  v81(v91, 0, 1, v24);
                  Entity.__interactionIdentifier.setter(v91);
                }

                v23 = v130;
                if (!static __RKEntityUUIDComponent.registration)
                {
                  goto LABEL_65;
                }

                v92 = *(v67 + 16);
                v93 = *(static __RKEntityUUIDComponent.registration + 4);
                if (!REEntityGetCustomComponent())
                {
                  goto LABEL_65;
                }

                v94 = RECustomComponentGetObject();
                if (!v94)
                {
                  goto LABEL_65;
                }

                v95 = *(v94 + 1);
                v96 = v94[7];
                v97 = v94[6];
                v98 = v94[5];
                v99 = v94[4];
                v100 = v94[3];
                v101 = v94[2];
                v102 = v94[1];
                v103 = *v94;
                v104 = v121;
                UUID.init(uuid:)();

                (*v126)(v23, v104, v24);
                v81(v23, 0, 1, v24);
                v37 = v136;
                goto LABEL_27;
              }
            }

            a5 = v51;
            v23 = v130;
            v37 = v136;
          }

          else
          {

            a5 = v51;
            v23 = v130;
            v37 = v136;
          }
        }

        (*v138)(v23, 1, 1, v24);
LABEL_27:

        if ((*v137)(v23, 1, v24) != 1)
        {
          (*v126)(v37, v23, v24);
          (*v125)(v139, v37, v24);
          swift_storeEnumTagMultiPayload();
          v84 = v131;
          v85 = *v131;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v84 = v85;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v85[2] + 1, 1, v85);
            *v131 = v85;
          }

          v88 = v85[2];
          v87 = v85[3];
          if (v88 >= v87 >> 1)
          {
            v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v87 > 1, v88 + 1, 1, v85);
            *v131 = v85;
          }

          v85[2] = v88 + 1;
          _s10RealityKit29__RKEntityActionSpecificationOWObTm_0(v139, v85 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v88, type metadata accessor for __RKEntityTriggerSpecification);
          if (specialized USDDecodableContext.entityFromIdentifier(identifier:)(v37, v129))
          {
            Entity.generateCollisionShapes(recursive:static:)(1, 0);
          }

          else
          {
          }

          v44 = v144;
          v89 = v145;
          (*v124)(v37, v24);
          v35 = v89;
          goto LABEL_9;
        }

        outlined destroy of BodyTrackingComponent?(v23, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_29:
        static os_log_type_t.debug.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v82 = swift_allocObject();
        v83 = v82;
        *(v82 + 16) = v141;
        if (v142)
        {
          if (v142 == 1)
          {
            v39 = 0xD000000000000012;
            v40 = &v154;
          }

          else
          {
            v39 = 0xD000000000000013;
            v40 = &v153;
          }
        }

        else
        {
          v39 = 0xD000000000000014;
          v40 = &v155;
        }

        v41 = *(v40 - 32) | 0x8000000000000000;
        *(v82 + 56) = MEMORY[0x1E69E6158];
        *(v82 + 64) = lazy protocol witness table accessor for type String and conformance String();
        v83[4] = v39;
        v83[5] = v41;
        v83[12] = v143;
        v83[13] = lazy protocol witness table accessor for type USKObjectPath and conformance NSObject();
        v83[9] = v46;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v42 = v46;
        v43 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        v44 = v144;
        v35 = v145;
LABEL_9:
        if (v44 == ++v38)
        {
          goto LABEL_52;
        }
      }
    }

    __break(1u);
LABEL_65:
    __break(1u);
  }

  else
  {

LABEL_52:
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation3URLVACSgs5Error_pIegnrzo_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void specialized USDDecodableContext.forEachObjectPathInProperty(named:requestContext:block:)(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void **a8, __n128 a9)
{
  v149 = a9;
  v134 = a8;
  v138 = a7;
  v127 = a6;
  v139 = a5;
  v133 = type metadata accessor for __RKEntityActionSpecification(0);
  v132 = *(v133 - 8);
  v13 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v144 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v124 = &v123 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v126 = &v123 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v142 = &v123 - v21;
  v22 = type metadata accessor for UUID();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v125 = &v123 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v143 = &v123 - v27;
  v28 = MEMORY[0x1C68F3280](a1, a2);
  v29 = [a4 property_];

  if (!v29)
  {
    v108 = 0xD000000000000012;
    static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v109 = swift_allocObject();
    v110 = v109;
    *(v109 + 16) = xmmword_1C1897FD0;
    if (a3)
    {
      if (a3 == 1)
      {
        v111 = "ng: Unknown action type";
      }

      else
      {
        v111 = "imagesByFullSchemePath";
        v108 = 0xD000000000000013;
      }
    }

    else
    {
      v108 = 0xD000000000000014;
      v111 = "USD trigger loading";
    }

    v112 = v111 | 0x8000000000000000;
    v113 = MEMORY[0x1E69E6158];
    *(v109 + 56) = MEMORY[0x1E69E6158];
    v114 = lazy protocol witness table accessor for type String and conformance String();
    v110[4] = v108;
    v110[5] = v112;
    v110[12] = v113;
    v110[13] = v114;
    v110[8] = v114;
    v110[9] = a1;
    v110[10] = a2;

    v115 = [a4 path];
    v116 = [v115 stringValue];

    if (v116)
    {
      v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v119 = v118;

      v120 = v110 + 14;
      v110[17] = v113;
      v110[18] = v114;
      if (v119)
      {
        *v120 = v117;
LABEL_57:
        v110[15] = v119;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v150 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        v121 = v150;

        return;
      }
    }

    else
    {
      v120 = v110 + 14;
      v110[17] = v113;
      v110[18] = v114;
    }

    *v120 = 7104878;
    v119 = 0xE300000000000000;
    goto LABEL_57;
  }

  v148 = a3;
  v30 = v29;
  v31 = [v30 objectPathArray];
  v147 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = v32;
  if (v32 >> 62)
  {
    v122 = __CocoaSet.count.getter();
    v33 = v32;
    v34 = v122;
  }

  else
  {
    v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = v139;
  if (v34)
  {
    if (v34 >= 1)
    {
      v36 = 0;
      v150 = v33 & 0xC000000000000001;
      v141 = (v23 + 56);
      v131 = (v23 + 32);
      v140 = (v23 + 48);
      v130 = (v23 + 16);
      v129 = v149;
      v128 = (v23 + 8);
      v146 = xmmword_1C1897FC0;
      v137 = "USD trigger loading";
      v37 = MEMORY[0x1E69E6158];
      v136 = "ng: Unknown action type";
      v135 = "imagesByFullSchemePath";
      v149.n128_u64[0] = v33;
      while (1)
      {
        if (v150)
        {
          v43 = MEMORY[0x1C68F41F0](v36);
        }

        else
        {
          v43 = *(v33 + 8 * v36 + 32);
        }

        v44 = v43;
        v45 = [v35 objectAtPath_];
        if (!v45)
        {
          goto LABEL_29;
        }

        v46 = v45;
        objc_opt_self();
        v47 = swift_dynamicCastObjCClass();

        if (!v47)
        {
          goto LABEL_29;
        }

        v48 = [v44 stringValue];
        if (v48)
        {
          v49 = v48;
          v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v52 = v51;

          v155 = v50;
          v156 = v52;
          v145 = v52;
          v153 = 91;
          v154 = 0xE100000000000000;
          v151 = 0;
          v152 = 0xE000000000000000;
          lazy protocol witness table accessor for type String and conformance String();
          v155 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v156 = v53;
          v153 = 93;
          v154 = 0xE100000000000000;
          v151 = 0;
          v152 = 0xE000000000000000;
          v54 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v56 = v55;

          v57 = v138;
          if (*(v138 + 16))
          {
            v58 = specialized __RawDictionaryStorage.find<A>(_:)(v54, v56);
            v60 = v59;

            if (v60)
            {
              v61 = (*(v57 + 56) + 16 * v58);
              v62 = *v61;
              v63 = v61[1];

              v64 = specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(v62, v63, v127, v57);

              if (v64)
              {
                v65 = *(v64 + 16);
                swift_beginAccess();
                v35 = v139;
                if (static __RKEntityUUIDComponent.registration && (v66 = *(static __RKEntityUUIDComponent.registration + 4), REEntityGetCustomComponent()) && (Object = RECustomComponentGetObject()) != 0)
                {
                  v68 = *(Object + 1);
                  v69 = Object[7];
                  v70 = Object[6];
                  v71 = Object[5];
                  v72 = Object[4];
                  v73 = Object[3];
                  v74 = Object[2];
                  v75 = Object[1];
                  v76 = *Object;
                  v77 = v126;
                  UUID.init(uuid:)();
                  v78 = *v141;
                  (*v141)(v77, 0, 1, v22);
                  outlined destroy of BodyTrackingComponent?(v77, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                }

                else
                {
                  v78 = *v141;
                  v93 = v126;
                  (*v141)(v126, 1, 1, v22);
                  outlined destroy of BodyTrackingComponent?(v93, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                  v94 = v124;
                  UUID.init()();
                  v78(v94, 0, 1, v22);
                  Entity.__interactionIdentifier.setter(v94);
                }

                if (!static __RKEntityUUIDComponent.registration)
                {
                  goto LABEL_62;
                }

                v95 = *(v64 + 16);
                v96 = *(static __RKEntityUUIDComponent.registration + 4);
                if (!REEntityGetCustomComponent())
                {
                  goto LABEL_62;
                }

                v97 = RECustomComponentGetObject();
                if (!v97)
                {
                  goto LABEL_62;
                }

                v98 = *(v97 + 1);
                v99 = v97[7];
                v100 = v97[6];
                v101 = v97[5];
                v102 = v97[4];
                v103 = v97[3];
                v104 = v97[2];
                v105 = v97[1];
                v106 = *v97;
                v107 = v125;
                UUID.init(uuid:)();

                v79 = v142;
                (*v131)(v142, v107, v22);
                v78(v79, 0, 1, v22);
                goto LABEL_27;
              }
            }

            v35 = v139;
          }

          else
          {

            v35 = v139;
          }
        }

        v79 = v142;
        (*v141)(v142, 1, 1, v22);
LABEL_27:

        if ((*v140)(v79, 1, v22) != 1)
        {
          v82 = v143;
          (*v131)(v143, v79, v22);
          v83 = v144;
          (*v130)(v144, v82, v22);
          v84 = type metadata accessor for __RKEntityForceActionArguments(0);
          v85 = v83 + *(v84 + 20);
          v86 = v83 + *(v84 + 24);
          *v85 = 0;
          *(v85 + 8) = 0;
          *(v85 + 16) = 1;
          v87 = v129.n128_u64[1];
          *v86 = v129.n128_u64[0];
          *(v86 + 8) = v87;
          *(v86 + 16) = 0;
          swift_storeEnumTagMultiPayload();
          v88 = v134;
          v89 = *v134;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v88 = v89;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v89[2] + 1, 1, v89);
            *v134 = v89;
          }

          v92 = v89[2];
          v91 = v89[3];
          if (v92 >= v91 >> 1)
          {
            v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v91 > 1, v92 + 1, 1, v89);
            *v134 = v89;
          }

          v89[2] = v92 + 1;
          _s10RealityKit29__RKEntityActionSpecificationOWObTm_0(v144, v89 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v92, type metadata accessor for __RKEntityActionSpecification);

          (*v128)(v143, v22);
          goto LABEL_9;
        }

        outlined destroy of BodyTrackingComponent?(v79, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_29:
        static os_log_type_t.debug.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v80 = swift_allocObject();
        v81 = v80;
        *(v80 + 16) = v146;
        if (v148)
        {
          if (v148 == 1)
          {
            v38 = 0xD000000000000012;
            v39 = &v158;
          }

          else
          {
            v38 = 0xD000000000000013;
            v39 = &v157;
          }
        }

        else
        {
          v38 = 0xD000000000000014;
          v39 = &v159;
        }

        v40 = *(v39 - 32) | 0x8000000000000000;
        *(v80 + 56) = v37;
        *(v80 + 64) = lazy protocol witness table accessor for type String and conformance String();
        v81[4] = v38;
        v81[5] = v40;
        v81[12] = v147;
        v81[13] = lazy protocol witness table accessor for type USKObjectPath and conformance NSObject();
        v81[9] = v44;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v41 = v44;
        v42 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

LABEL_9:
        ++v36;
        v33 = v149.n128_u64[0];
        if (v34 == v36)
        {
          goto LABEL_49;
        }
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
  }

  else
  {

LABEL_49:
  }
}