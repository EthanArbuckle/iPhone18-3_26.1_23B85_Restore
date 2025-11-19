uint64_t LowLevelMesh.extractPositionsForStaticMesh()()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = (v1 + 32);
  v4 = *(v1 + 16) + 1;
  result = MEMORY[0x1E69E7CC0];
  while (--v4)
  {
    v6 = v3 + 32;
    v7 = *v3;
    v3 += 32;
    if (!v7)
    {
      v8 = *(v6 - 1);
      if ((v8 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v9 = v0[6];
        if (v8 < *(v9 + 16))
        {
          v10 = *(v6 - 2);
          v11 = (v9 + 24 * v8);
          v12 = v11[5];
          if (!__OFADD__(v10, v12))
          {
            v13 = *(v6 - 3);
            v14 = v11[4];
            v15 = v11[6];
            v32 = v10 + v12;
            v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0, MEMORY[0x1E69E7CC0]);
            MEMORY[0x1EEE9AC00](v33);
            v21[2] = v2;
            v22 = 0;
            v23 = v13;
            v24 = v10;
            v25 = v8;
            v26 = &v32;
            v27 = &v33;
            v28 = v14;
            v29 = v12;
            v30 = v15;
            v16 = v0[2];
            v17 = swift_allocObject();
            *(v17 + 16) = partial apply for closure #2 in LowLevelMesh.extractPositionsForStaticMesh();
            *(v17 + 24) = v21;
            v18 = swift_allocObject();
            *(v18 + 16) = _s17RealityFoundation12LowLevelMeshC17withUnsafeIndicesyyySWXEFySV_SitXEfU_TA_0;
            *(v18 + 24) = v17;
            aBlock[4] = thunk for @callee_guaranteed (@unowned UnsafeRawPointer, @unowned Int) -> ()partial apply;
            aBlock[5] = v18;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeRawPointer, @unowned Int) -> ();
            aBlock[3] = &block_descriptor_54;
            v19 = _Block_copy(aBlock);
            v20 = v16;

            DRMeshReadVertices();

            _Block_release(v19);
            LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

            if ((v14 & 1) == 0)
            {
              return v33;
            }

            goto LABEL_13;
          }

LABEL_12:
          __break(1u);
LABEL_13:
          __break(1u);
          return result;
        }
      }

      __break(1u);
      goto LABEL_12;
    }
  }

  return result;
}

uint64_t LowLevelMesh.extractIndicesForStaticMesh()()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v13[0] = *(v0 + 24);
  v13[1] = v2;
  v13[2] = v1;
  v11 = 0;
  v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1 & ~(v1 >> 63), 0, MEMORY[0x1E69E7CC0]);
  v9[2] = v13;
  v9[3] = &v11;
  v9[4] = &v12;
  v3 = *(v0 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for closure #1 in LowLevelMesh.extractIndicesForStaticMesh();
  *(v4 + 24) = v9;
  v5 = swift_allocObject();
  *(v5 + 16) = _s17RealityFoundation12LowLevelMeshC17withUnsafeIndicesyyySWXEFySV_SitXEfU_TA_0;
  *(v5 + 24) = v4;
  aBlock[4] = _sSVSiIgyy_SVSiIegyy_TRTA_0;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeRawPointer, @unowned Int) -> ();
  aBlock[3] = &block_descriptor_47;
  v6 = _Block_copy(aBlock);
  v7 = v3;

  DRMeshReadIndices();

  _Block_release(v6);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t static ShapeResource.generateStaticMesh(meshAnchor:)()
{
  v1 = [*(v0 + 80) geometry];
  v2 = [v1 faces];

  v3 = [v2 primitiveType];
  if (v3 != 1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = [*(v0 + 80) geometry];
  *(v0 + 88) = v7;
  v8 = [v7 vertices];
  *(v0 + 96) = v8;
  v9 = [v7 faces];
  *(v0 + 104) = v9;
  v10 = [v8 count];
  v4 = [v8 stride];
  if ((v10 * (v4 / 4)) >> 64 != (v10 * (v4 / 4)) >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = [v8 buffer];
  [v11 contents];
  v12 = v11;
  [v8 offset];
  v13 = [v9 buffer];
  [v13 contents];
  v14 = v13;
  [v8 count];
  [v8 stride];
  v4 = [v9 count];
  if ((v4 * 3) >> 64 != (3 * v4) >> 63)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v4, v5, v6);
  }

  *(v0 + 112) = RECollisionMeshCreateWithFormatV2();
  type metadata accessor for MainActor();
  *(v0 + 120) = static MainActor.shared.getter();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v17 = v16;
  v4 = static ShapeResource.generateStaticMesh(meshAnchor:);
  v5 = v15;
  v6 = v17;

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

{
  v2 = v0[14];
  v1 = v0[15];

  v3 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v3 + 120, (v0 + 2));
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  (*(v5 + 32))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  REAssetManagerCollisionMeshAssetCreateFromMesh();
  CollisionMesh = REAssetManagerCollisionShapeAssetCreateCollisionMesh();
  type metadata accessor for ShapeResource();
  v7 = swift_allocObject();
  v0[16] = v7;
  *(v7 + 16) = CollisionMesh;
  REPoseIdentity();
  *(v7 + 32) = v8;
  *(v7 + 48) = v9;
  RERetain();
  REAssetSetSwiftObject();
  RERelease();
  RERelease();
  v10 = swift_task_alloc();
  v0[17] = v10;
  *v10 = v0;
  v10[1] = static ShapeResource.generateStaticMesh(meshAnchor:);

  return specialized RequestLoadable.awaitForResourceSharing()();
}

{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = static ShapeResource.generateStaticMesh(meshAnchor:);
  }

  else
  {
    v3 = static ShapeResource.generateStaticMesh(meshAnchor:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);

  v3 = *(v0 + 8);
  v4 = *(v0 + 128);

  return v3(v4);
}

{
  v1 = *(v0 + 128);
  v2 = *(v0 + 96);
  v3 = *(v0 + 88);

  v4 = *(v0 + 8);
  v5 = *(v0 + 144);

  return v4();
}

uint64_t ShapeResource.addToLoadRequest(_:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  return REAssetLoadRequestAddAsset();
}

uint64_t ShapeResource.customMirror.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v21 - v9;
  v23 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C1887600;
  *(v11 + 32) = 0x73646E756F62;
  *(v11 + 40) = 0xE600000000000000;
  v12 = *(v1 + 16);

  if (RECollisionShapeAssetGetCollisionShape())
  {
    v13 = *(v1 + 32);
    v14 = *(v1 + 48);
    RECollisionShapeGetBoundingBox();
    v21 = v15;
    v22 = v16;
  }

  else
  {
    v22 = xmmword_1C189A800;
    v21 = xmmword_1C189A7F0;
  }

  *(v11 + 72) = &type metadata for BoundingBox;
  v17 = swift_allocObject();
  *(v11 + 48) = v17;
  v18 = v22;
  *(v17 + 16) = v21;
  *(v17 + 32) = v18;
  v19 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  (*(v3 + 104))(v6, *MEMORY[0x1E69E75D8], v2);
  type metadata accessor for ShapeResource();
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t closure #2 in LowLevelMesh.extractPositionsForStaticMesh()(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    v12 = a3;
    if (!a3)
    {
      return result;
    }

    v15 = result;
    while (1)
    {
      if (a5 == 26)
      {
        if (!v15)
        {
          goto LABEL_25;
        }

        v30 = *(v15 + *a8);
        v16 = *a9;
        result = swift_isUniquelyReferenced_nonNull_native();
        *a9 = v16;
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1, v16);
          v16 = result;
          *a9 = result;
        }

        v18 = *(v16 + 16);
        v22 = *(v16 + 24);
        v19 = v18 + 1;
        if (v18 >= v22 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v18 + 1, 1, v16);
          v16 = result;
          *a9 = result;
        }

        _H1 = v30.i16[0];
        __asm { FCVT            S0, H1 }

        HIDWORD(v20) = 0;
        LODWORD(v20) = _D0.i32[0];
        *(&v20 + 4) = vcvtq_f32_f16(vext_s8(v30, _D0, 2uLL)).u64[0];
      }

      else
      {
        if (a5 != 30)
        {
          v28 = *a9;
          *a9 = MEMORY[0x1E69E7CC0];
        }

        if (!v15)
        {
          goto LABEL_26;
        }

        v29 = *(v15 + *a8);
        v16 = *a9;
        result = swift_isUniquelyReferenced_nonNull_native();
        *a9 = v16;
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1, v16);
          v16 = result;
          *a9 = result;
        }

        v18 = *(v16 + 16);
        v17 = *(v16 + 24);
        v19 = v18 + 1;
        v20 = v29;
        if (v18 >= v17 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v16);
          v20 = v29;
          v16 = result;
          *a9 = result;
        }
      }

      *(v16 + 16) = v19;
      *(v16 + 16 * v18 + 32) = v20;
      if (__OFADD__(*a8, a12))
      {
        __break(1u);
        break;
      }

      *a8 += a12;
      if (!--v12)
      {
        return result;
      }
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t closure #1 in LowLevelMesh.extractIndicesForStaticMesh()(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a3 + 32);
  if (v5 < 0)
  {
    goto LABEL_20;
  }

  if (v5)
  {
    v9 = result;
    do
    {
      v10 = *(a3 + 40);
      if (v10 == 1)
      {
        if (!v9)
        {
          goto LABEL_21;
        }

        v11 = *a4 + 4;
        if (__OFADD__(*a4, 4))
        {
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          return result;
        }

        v12 = *(v9 + *a4);
      }

      else
      {
        if (v10)
        {
          return result;
        }

        if (!v9)
        {
          goto LABEL_22;
        }

        v11 = *a4 + 2;
        if (__OFADD__(*a4, 2))
        {
          goto LABEL_19;
        }

        v12 = *(v9 + *a4);
      }

      *a4 = v11;
      v13 = *a5;
      result = swift_isUniquelyReferenced_nonNull_native();
      *a5 = v13;
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1, v13);
        v13 = result;
        *a5 = result;
      }

      v15 = *(v13 + 16);
      v14 = *(v13 + 24);
      if (v15 >= v14 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v13);
        v13 = result;
        *a5 = result;
      }

      *(v13 + 16) = v15 + 1;
      *(v13 + 4 * v15 + 32) = v12;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v38 = v3;
  if (v3)
  {
    outlined init with copy of _Proto_AnimationLibraryComponent_v1(a1, v37);
  }

  else
  {
    outlined init with copy of _Proto_AnimationLibraryComponent_v1(a1, v37);
    if (v2)
    {
      v4 = AnimationLibraryResource.keyedResources.getter();
    }

    else
    {
      v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    v3 = v4;
  }

  v6 = v3 + 64;
  v5 = *(v3 + 64);
  v7 = 1 << *(v3 + 32);
  outlined init with copy of [String : AnimationResource]?(&v38, v37);
  result = outlined destroy of _Proto_AnimationLibraryComponent_v1(a1);
  v9 = 0;
  v10 = 0;
  v11 = -1;
  if (v7 < 64)
  {
    v11 = ~(-1 << v7);
  }

  v12 = v11 & v5;
  v13 = (v7 + 63) >> 6;
  v14 = MEMORY[0x1E69E7CC0];
  v15 = (MEMORY[0x1E69E7CC0] + 32);
  v35 = v3;
  if (v12)
  {
    while (1)
    {
      v16 = v10;
LABEL_14:
      v17 = __clz(__rbit64(v12)) | (v16 << 6);
      v18 = *(v3 + 56);
      v19 = (*(v3 + 48) + 16 * v17);
      v20 = v19[1];
      v36 = *v19;
      v21 = *(v18 + 8 * v17);
      if (v9)
      {

        v22 = v14;
        v23 = __OFSUB__(v9--, 1);
        if (v23)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v24 = v14[3];
        if (((v24 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_40;
        }

        v25 = v24 & 0xFFFFFFFFFFFFFFFELL;
        if (v25 <= 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = v25;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS3key_10RealityKit17AnimationResourceC5valuetGMd, &_ss23_ContiguousArrayStorageCySS3key_10RealityKit17AnimationResourceC5valuetGMR);
        v22 = swift_allocObject();
        v27 = (_swift_stdlib_malloc_size(v22) - 32) / 24;
        v22[2] = v26;
        v22[3] = 2 * v27;
        v28 = v22 + 4;
        v29 = v14[3] >> 1;
        v15 = &v22[3 * v29 + 4];
        v30 = (v27 & 0x7FFFFFFFFFFFFFFFLL) - v29;
        if (v14[2])
        {
          if (v22 != v14 || v28 >= &v14[3 * v29 + 4])
          {
            memmove(v28, v14 + 4, 24 * v29);
          }

          v14[2] = 0;
        }

        else
        {
        }

        v23 = __OFSUB__(v30, 1);
        v9 = v30 - 1;
        if (v23)
        {
          goto LABEL_39;
        }
      }

      v12 &= v12 - 1;
      *v15 = v36;
      v15[1] = v20;
      v15[2] = v21;
      v15 += 3;
      v14 = v22;
      v10 = v16;
      v3 = v35;
      if (!v12)
      {
        goto LABEL_11;
      }
    }
  }

  while (1)
  {
LABEL_11:
    v16 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v16 >= v13)
    {
      break;
    }

    v12 = *(v6 + 8 * v16);
    ++v10;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  v32 = v14[3];
  if (v32 < 2)
  {
    return v14;
  }

  v33 = v32 >> 1;
  v23 = __OFSUB__(v33, v9);
  v34 = v33 - v9;
  if (!v23)
  {
    v14[2] = v34;
    return v14;
  }

LABEL_41:
  __break(1u);
  return result;
}

{
  v2 = *a1;
  v3 = a1[1];
  v38 = v3;
  if (v3)
  {
    outlined init with copy of AnimationLibraryComponent(a1, v37);
  }

  else
  {
    outlined init with copy of AnimationLibraryComponent(a1, v37);
    if (v2)
    {
      v4 = AnimationLibraryResource.keyedResources.getter();
    }

    else
    {
      v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    v3 = v4;
  }

  v6 = v3 + 64;
  v5 = *(v3 + 64);
  v7 = 1 << *(v3 + 32);
  outlined init with copy of [String : AnimationResource]?(&v38, v37);
  result = outlined destroy of AnimationLibraryComponent(a1);
  v9 = 0;
  v10 = 0;
  v11 = -1;
  if (v7 < 64)
  {
    v11 = ~(-1 << v7);
  }

  v12 = v11 & v5;
  v13 = (v7 + 63) >> 6;
  v14 = MEMORY[0x1E69E7CC0];
  v15 = (MEMORY[0x1E69E7CC0] + 32);
  v35 = v3;
  if (v12)
  {
    while (1)
    {
      v16 = v10;
LABEL_14:
      v17 = __clz(__rbit64(v12)) | (v16 << 6);
      v18 = *(v3 + 56);
      v19 = (*(v3 + 48) + 16 * v17);
      v20 = v19[1];
      v36 = *v19;
      v21 = *(v18 + 8 * v17);
      if (v9)
      {

        v22 = v14;
        v23 = __OFSUB__(v9--, 1);
        if (v23)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v24 = v14[3];
        if (((v24 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_40;
        }

        v25 = v24 & 0xFFFFFFFFFFFFFFFELL;
        if (v25 <= 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = v25;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS3key_10RealityKit17AnimationResourceC5valuetGMd, &_ss23_ContiguousArrayStorageCySS3key_10RealityKit17AnimationResourceC5valuetGMR);
        v22 = swift_allocObject();
        v27 = (_swift_stdlib_malloc_size(v22) - 32) / 24;
        v22[2] = v26;
        v22[3] = 2 * v27;
        v28 = v22 + 4;
        v29 = v14[3] >> 1;
        v15 = &v22[3 * v29 + 4];
        v30 = (v27 & 0x7FFFFFFFFFFFFFFFLL) - v29;
        if (v14[2])
        {
          if (v22 != v14 || v28 >= &v14[3 * v29 + 4])
          {
            memmove(v28, v14 + 4, 24 * v29);
          }

          v14[2] = 0;
        }

        else
        {
        }

        v23 = __OFSUB__(v30, 1);
        v9 = v30 - 1;
        if (v23)
        {
          goto LABEL_39;
        }
      }

      v12 &= v12 - 1;
      *v15 = v36;
      v15[1] = v20;
      v15[2] = v21;
      v15 += 3;
      v14 = v22;
      v10 = v16;
      v3 = v35;
      if (!v12)
      {
        goto LABEL_11;
      }
    }
  }

  while (1)
  {
LABEL_11:
    v16 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v16 >= v13)
    {
      break;
    }

    v12 = *(v6 + 8 * v16);
    ++v10;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  v32 = v14[3];
  if (v32 < 2)
  {
    return v14;
  }

  v33 = v32 >> 1;
  v23 = __OFSUB__(v33, v9);
  v34 = v33 - v9;
  if (!v23)
  {
    v14[2] = v34;
    return v14;
  }

LABEL_41:
  __break(1u);
  return result;
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);

  REPinComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    PinCount = REPinComponentGetPinCount();
  }

  else
  {
    PinCount = 0;
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (PinCount >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0] + 32;
    while (1)
    {
      v8 = *(a1 + 16);
      REPinComponentGetComponentType();
      result = REEntityGetComponentByClass();
      if (!result)
      {
        goto LABEL_34;
      }

      REPinComponentGetPinNameAtIndex();
      v10 = String.init(cString:)();
      v12 = v11;
      REPinComponentGetPinOffsetPoseAtIndex();
      v14 = v13;
      HIDWORD(v14) = HIDWORD(v31);
      v30 = v15;
      v31 = v14;
      if (REPinComponentIsSkeletalJointPinAtIndex())
      {
        REPinComponentGetSkeletalJointNameAtIndex();
        v16 = String.init(cString:)();
        v18 = v17;
        swift_weakInit();
        v35 = v31;
        v36 = v30;
        swift_weakAssign();
      }

      else
      {
        swift_weakInit();
        v35 = v31;
        v36 = v30;
        swift_weakAssign();
        v16 = 0;
        v18 = 0;
      }

      *(&v32 + 1) = v10;
      *&v33 = v12;
      *(&v33 + 1) = v16;
      *&v34 = v18;
      result = outlined init with take of GeometricPin(&v32, v37);
      if (!v5)
      {
        v19 = v4[3];
        if (((v19 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_32;
        }

        v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
        if (v20 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation12GeometricPinVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation12GeometricPinVGMR);
        v22 = swift_allocObject();
        v23 = (_swift_stdlib_malloc_size(v22) - 32) / 80;
        v22[2] = v21;
        v22[3] = 2 * v23;
        v24 = (v22 + 4);
        v25 = v4[3] >> 1;
        if (v4[2])
        {
          if (v22 < v4 || v24 >= &v4[10 * v25 + 4])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v22 != v4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v4[2] = 0;
        }

        v7 = v24 + 80 * v25;
        v5 = (v23 & 0x7FFFFFFFFFFFFFFFLL) - v25;

        v4 = v22;
      }

      v26 = __OFSUB__(v5--, 1);
      if (v26)
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      outlined init with take of GeometricPin(v37, v7);
      v7 += 80;
      if (++v6 >= PinCount)
      {
        goto LABEL_27;
      }
    }
  }

  v5 = 0;
LABEL_27:
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;

  result = outlined destroy of BodyTrackingComponent?(&v32, &_s17RealityFoundation12GeometricPinVSgMd, &_s17RealityFoundation12GeometricPinVSgMR);
  v27 = v4[3];
  if (v27 < 2)
  {
    return v4;
  }

  v28 = v27 >> 1;
  v26 = __OFSUB__(v28, v5);
  v29 = v28 - v5;
  if (!v26)
  {
    v4[2] = v29;
    return v4;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

{
  return specialized _copySequenceToContiguousArray<A>(_:)(a1, specialized MeshBuffer.Iterator.next(), &_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMR);
}

{
  return specialized _copySequenceToContiguousArray<A>(_:)(a1, specialized MeshBuffer.Iterator.next(), &_ss23_ContiguousArrayStorageCys5SIMD4VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD4VySfGGMR);
}

{
  v1 = *(a1 + 48);
  v23 = *(a1 + 56);

  v1(0);
  result = specialized MeshBuffer.Iterator.next()();
  v3 = MEMORY[0x1E69E7CC0];
  v4 = 0;
  if ((v5 & 1) == 0)
  {
    v6 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      if (!v4)
      {
        v7 = v3[3];
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v8 = result;
        v9 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD2VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD2VySfGGMR);
        v11 = swift_allocObject();
        v12 = _swift_stdlib_malloc_size(v11);
        v13 = v12 - 32;
        if (v12 < 32)
        {
          v13 = v12 - 25;
        }

        v14 = v13 >> 3;
        v11[2] = v10;
        v11[3] = 2 * (v13 >> 3);
        v15 = (v11 + 4);
        v16 = v3[3] >> 1;
        if (v3[2])
        {
          if (v11 != v3 || v15 >= &v3[v16 + 4])
          {
            memmove(v11 + 4, v3 + 4, 8 * v16);
          }

          v3[2] = 0;
        }

        v6 = (v15 + 8 * v16);
        v4 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;

        v3 = v11;
        result = v8;
      }

      v18 = __OFSUB__(v4--, 1);
      if (v18)
      {
        break;
      }

      *v6++ = result;
      result = specialized MeshBuffer.Iterator.next()();
      if (v19)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_21:

  v20 = v3[3];
  if (v20 < 2)
  {
    return v3;
  }

  v21 = v20 >> 1;
  v18 = __OFSUB__(v21, v4);
  v22 = v21 - v4;
  if (!v18)
  {
    v3[2] = v22;
    return v3;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v1 = *(a1 + 48);
  v23 = *(a1 + 56);

  v1(0);
  result = specialized MeshBuffer.Iterator.next()();
  v3 = MEMORY[0x1E69E7CC0];
  v4 = 0;
  if ((v5 & 1) == 0)
  {
    v6 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      if (!v4)
      {
        v7 = v3[3];
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v8 = result;
        v9 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
        v11 = swift_allocObject();
        v12 = _swift_stdlib_malloc_size(v11);
        v13 = v12 - 32;
        if (v12 < 32)
        {
          v13 = v12 - 25;
        }

        v14 = v13 >> 3;
        v11[2] = v10;
        v11[3] = 2 * (v13 >> 3);
        v15 = (v11 + 4);
        v16 = v3[3] >> 1;
        if (v3[2])
        {
          if (v11 != v3 || v15 >= &v3[v16 + 4])
          {
            memmove(v11 + 4, v3 + 4, 8 * v16);
          }

          v3[2] = 0;
        }

        v6 = (v15 + 8 * v16);
        v4 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;

        v3 = v11;
        result = v8;
      }

      v18 = __OFSUB__(v4--, 1);
      if (v18)
      {
        break;
      }

      *v6++ = result;
      result = specialized MeshBuffer.Iterator.next()();
      if (v19)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_21:

  v20 = v3[3];
  if (v20 < 2)
  {
    return v3;
  }

  v21 = v20 >> 1;
  v18 = __OFSUB__(v21, v4);
  v22 = v21 - v4;
  if (!v18)
  {
    v3[2] = v22;
    return v3;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  return specialized _copySequenceToContiguousArray<A>(_:)(a1, specialized MeshBuffer.Iterator.next(), &_ss23_ContiguousArrayStorageCys5Int32VGMd, &_ss23_ContiguousArrayStorageCys5Int32VGMR);
}

{
  return specialized _copySequenceToContiguousArray<A>(_:)(a1, specialized MeshBuffer.Iterator.next(), &_ss23_ContiguousArrayStorageCys5Int16VGMd, &_ss23_ContiguousArrayStorageCys5Int16VGMR);
}

{
  return specialized _copySequenceToContiguousArray<A>(_:)(a1, specialized MeshBuffer.Iterator.next(), &_ss23_ContiguousArrayStorageCys4Int8VGMd, &_ss23_ContiguousArrayStorageCys4Int8VGMR);
}

{
  return specialized _copySequenceToContiguousArray<A>(_:)(a1, specialized MeshBuffer.Iterator.next(), &_ss23_ContiguousArrayStorageCys6UInt32VGMd, &_ss23_ContiguousArrayStorageCys6UInt32VGMR);
}

{
  return specialized _copySequenceToContiguousArray<A>(_:)(a1, specialized MeshBuffer.Iterator.next(), &_ss23_ContiguousArrayStorageCys6UInt16VGMd, &_ss23_ContiguousArrayStorageCys6UInt16VGMR);
}

{
  return specialized _copySequenceToContiguousArray<A>(_:)(a1, specialized MeshBuffer.Iterator.next(), &_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v6 = *(a1 + 48);
  v32 = *(a1 + 56);

  v7 = v6(0);
  result = (a2)(v7);
  v10 = MEMORY[0x1E69E7CC0];
  v11 = 0;
  if ((v12 & 1) == 0)
  {
    v13 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      if (!v11)
      {
        v14 = v10[3];
        if (((v14 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v15 = v9;
        v16 = result;
        v17 = v14 & 0xFFFFFFFFFFFFFFFELL;
        if (v17 <= 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = v17;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
        v19 = swift_allocObject();
        v20 = _swift_stdlib_malloc_size(v19);
        v21 = v20 - 32;
        if (v20 < 32)
        {
          v21 = v20 - 17;
        }

        v22 = v21 >> 4;
        v19[2] = v18;
        v19[3] = 2 * (v21 >> 4);
        v23 = (v19 + 4);
        v24 = v10[3] >> 1;
        if (v10[2])
        {
          if (v19 != v10 || v23 >= &v10[2 * v24 + 4])
          {
            memmove(v19 + 4, v10 + 4, 16 * v24);
          }

          v10[2] = 0;
        }

        v13 = (v23 + 16 * v24);
        v11 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - v24;

        v10 = v19;
        result = v16;
        v9 = v15;
      }

      v26 = __OFSUB__(v11--, 1);
      if (v26)
      {
        break;
      }

      *v13 = result;
      v13[1] = v9;
      v13 += 2;
      result = a2();
      if (v27)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_21:

  v28 = v10[3];
  if (v28 < 2)
  {
    return v10;
  }

  v29 = v28 >> 1;
  v26 = __OFSUB__(v29, v11);
  v30 = v29 - v11;
  if (!v26)
  {
    v10[2] = v30;
    return v10;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1)
{
  v1 = *(a1 + 48);
  v21 = *(a1 + 56);

  v1(0);
  result = specialized MeshBuffer.Iterator.next()();
  v3 = MEMORY[0x1E69E7CC0];
  v4 = 0;
  if ((result & 0x100000000) == 0)
  {
    v5 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      if (!v4)
      {
        v6 = v3[3];
        if (((v6 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v7 = result;
        v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
        v10 = swift_allocObject();
        v11 = _swift_stdlib_malloc_size(v10);
        v12 = v11 - 32;
        if (v11 < 32)
        {
          v12 = v11 - 29;
        }

        v13 = v12 >> 2;
        v10[2] = v9;
        v10[3] = 2 * (v12 >> 2);
        v14 = (v10 + 4);
        v15 = v3[3] >> 1;
        if (v3[2])
        {
          if (v10 != v3 || v14 >= v3 + 4 * v15 + 32)
          {
            memmove(v10 + 4, v3 + 4, 4 * v15);
          }

          v3[2] = 0;
        }

        v5 = (v14 + 4 * v15);
        v4 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - v15;

        v3 = v10;
        result = v7;
      }

      v17 = __OFSUB__(v4--, 1);
      if (v17)
      {
        break;
      }

      *v5++ = result;
      result = specialized MeshBuffer.Iterator.next()();
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_21:

  v18 = v3[3];
  if (v18 < 2)
  {
    return v3;
  }

  v19 = v18 >> 1;
  v17 = __OFSUB__(v19, v4);
  v20 = v19 - v4;
  if (!v17)
  {
    v3[2] = v20;
    return v3;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t *a3, uint64_t *a4)
{
  v7 = *(a1 + 48);
  v31 = *(a1 + 56);

  v8 = v7(0);
  result = a2(v8);
  v13 = MEMORY[0x1E69E7CC0];
  v14 = 0;
  if ((result & 0x100000000) == 0)
  {
    v15 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      if (!v14)
      {
        v16 = v13[3];
        if (((v16 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v17 = result;
        v18 = v16 & 0xFFFFFFFFFFFFFFFELL;
        if (v18 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = v18;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
        v20 = swift_allocObject();
        v21 = _swift_stdlib_malloc_size(v20);
        v22 = v21 - 32;
        if (v21 < 32)
        {
          v22 = v21 - 29;
        }

        v23 = v22 >> 2;
        v20[2] = v19;
        v20[3] = 2 * (v22 >> 2);
        v24 = (v20 + 4);
        v25 = v13[3] >> 1;
        if (v13[2])
        {
          if (v20 != v13 || v24 >= v13 + 4 * v25 + 32)
          {
            memmove(v20 + 4, v13 + 4, 4 * v25);
          }

          v13[2] = 0;
        }

        v15 = (v24 + 4 * v25);
        v14 = (v23 & 0x7FFFFFFFFFFFFFFFLL) - v25;

        v13 = v20;
        result = v17;
      }

      v27 = __OFSUB__(v14--, 1);
      if (v27)
      {
        break;
      }

      *v15++ = result;
      result = (a2)(result, v10, v11, v12);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_21:

  v28 = v13[3];
  if (v28 < 2)
  {
    return v13;
  }

  v29 = v28 >> 1;
  v27 = __OFSUB__(v29, v14);
  v30 = v29 - v14;
  if (!v27)
  {
    v13[2] = v30;
    return v13;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v7 = *(a1 + 48);
  v32 = *(a1 + 56);

  v8 = v7(0);
  result = a2(v8);
  v13 = MEMORY[0x1E69E7CC0];
  v14 = 0;
  if ((result & 0x10000) == 0)
  {
    v15 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      if (!v14)
      {
        v16 = v13[3];
        if (((v16 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v17 = result;
        v18 = v16 & 0xFFFFFFFFFFFFFFFELL;
        if (v18 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = v18;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
        v20 = swift_allocObject();
        v21 = _swift_stdlib_malloc_size(v20);
        v22 = v21 - 32 + ((v21 - 32) >> 63);
        v20[2] = v19;
        v20[3] = v22 & 0xFFFFFFFFFFFFFFFELL;
        v23 = (v20 + 4);
        v24 = v13[3];
        v25 = v24 >> 1;
        if (v13[2])
        {
          if (v20 != v13 || v23 >= v13 + 2 * v25 + 32)
          {
            memmove(v20 + 4, v13 + 4, v24 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13[2] = 0;
        }

        v27 = v22 >> 1;
        v15 = (v23 + 2 * v25);
        v14 = v27 - v25;

        v13 = v20;
        result = v17;
      }

      v28 = __OFSUB__(v14--, 1);
      if (v28)
      {
        break;
      }

      *v15++ = result;
      result = (a2)(result, v10, v11, v12);
      if ((result & 0x10000) != 0)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_19:

  v29 = v13[3];
  if (v29 < 2)
  {
    return v13;
  }

  v30 = v29 >> 1;
  v28 = __OFSUB__(v30, v14);
  v31 = v30 - v14;
  if (!v28)
  {
    v13[2] = v31;
    return v13;
  }

LABEL_25:
  __break(1u);
  return result;
}

{
  v7 = *(a1 + 48);
  v29 = *(a1 + 56);

  v8 = v7(0);
  result = a2(v8);
  v13 = MEMORY[0x1E69E7CC0];
  v14 = 0;
  if ((result & 0x100) == 0)
  {
    v15 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      if (!v14)
      {
        v16 = v13[3];
        if (((v16 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v17 = result;
        v18 = v16 & 0xFFFFFFFFFFFFFFFELL;
        if (v18 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = v18;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
        v20 = swift_allocObject();
        v21 = 2 * _swift_stdlib_malloc_size(v20) - 64;
        v20[2] = v19;
        v20[3] = v21;
        v22 = (v20 + 4);
        v23 = v13[3] >> 1;
        if (v13[2])
        {
          if (v20 != v13 || v22 >= v13 + v23 + 32)
          {
            memmove(v20 + 4, v13 + 4, v23);
          }

          v13[2] = 0;
        }

        v15 = (v22 + v23);
        v14 = (v21 >> 1) - v23;

        v13 = v20;
        result = v17;
      }

      v25 = __OFSUB__(v14--, 1);
      if (v25)
      {
        break;
      }

      *v15++ = result;
      result = (a2)(result, v10, v11, v12);
      if ((result & 0x100) != 0)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_19:

  v26 = v13[3];
  if (v26 < 2)
  {
    return v13;
  }

  v27 = v26 >> 1;
  v25 = __OFSUB__(v27, v14);
  v28 = v27 - v14;
  if (!v25)
  {
    v13[2] = v28;
    return v13;
  }

LABEL_25:
  __break(1u);
  return result;
}

void specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 56);
  v25 = 0;
  v26 = 0;
  v27 = v1;
  v28 = v2;

  v3 = v1(0);
  if (v4)
  {
    v25 = v3;
    v26 = v4;
  }

  specialized MeshBuffer.Iterator.next()(&v23);
  v5 = MEMORY[0x1E69E7CC0];
  if ((v24 & 1) == 0)
  {
    v6 = 0;
    v7 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      v8 = v23;
      if (!v6)
      {
        v9 = v5[3];
        if (((v9 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
        if (v10 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation18MeshJointInfluenceVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation18MeshJointInfluenceVGMR);
        v12 = swift_allocObject();
        v13 = _swift_stdlib_malloc_size(v12);
        v14 = v13 - 32;
        if (v13 < 32)
        {
          v14 = v13 - 25;
        }

        v15 = v14 >> 3;
        v12[2] = v11;
        v12[3] = 2 * (v14 >> 3);
        v16 = (v12 + 4);
        v17 = v5[3] >> 1;
        if (v5[2])
        {
          if (v12 != v5 || v16 >= &v5[v17 + 4])
          {
            memmove(v12 + 4, v5 + 4, 8 * v17);
          }

          v5[2] = 0;
        }

        v7 = (v16 + 8 * v17);
        v6 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - v17;

        v5 = v12;
      }

      v19 = __OFSUB__(v6--, 1);
      if (v19)
      {
        break;
      }

      *v7++ = v8;
      specialized MeshBuffer.Iterator.next()(&v23);
      if (v24)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v6 = 0;
LABEL_24:

  v20 = v5[3];
  if (v20 >= 2)
  {
    v21 = v20 >> 1;
    v19 = __OFSUB__(v21, v6);
    v22 = v21 - v6;
    if (!v19)
    {
      v5[2] = v22;
      return;
    }

LABEL_30:
    __break(1u);
  }
}

uint64_t specialized static ShapeResource.== infix(_:_:)(float32x4_t *a1, float32x4_t *a2)
{
  if (a1[1].i64[0] != a2[1].i64[0])
  {
    return 0;
  }

  v3 = 0;
  v4 = vmovn_s32(vceqq_f32(a1[2], a2[2]));
  if (v4.i8[0] & 1) != 0 && (v4.i8[2] & 1) != 0 && (v4.i8[4])
  {
    v3 = 0;
    v5 = vmovn_s32(vceqq_f32(a1[3], a2[3]));
    if (v5.i8[0] & 1) != 0 && (v5.i8[2] & 1) != 0 && (v5.i8[4])
    {
      v3 = v5.i8[6];
    }
  }

  return v3 & 1;
}

uint64_t specialized static ShapeResource.generateSphere(radius:)()
{
  v0 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v0 + 120, v10);
  v1 = v11;
  v2 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  (*(v2 + 32))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  Sphere = REAssetManagerCollisionShapeAssetCreateSphere();
  v4 = type metadata accessor for ShapeResource();
  v5 = swift_allocObject();
  *(v5 + 16) = Sphere;
  REPoseIdentity();
  *(v5 + 32) = v6;
  *(v5 + 48) = v7;
  RERetain();
  REAssetSetSwiftObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  *(inited + 56) = v4;
  *(inited + 64) = &protocol witness table for ShapeResource;
  *(inited + 32) = v5;

  specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  RERelease();
  return v5;
}

uint64_t specialized static ShapeResource.generateBox(size:)()
{
  v0 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v0 + 120, v10);
  v1 = v11;
  v2 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  (*(v2 + 32))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  Box = REAssetManagerCollisionShapeAssetCreateBox();
  v4 = type metadata accessor for ShapeResource();
  v5 = swift_allocObject();
  *(v5 + 16) = Box;
  REPoseIdentity();
  *(v5 + 32) = v6;
  *(v5 + 48) = v7;
  RERetain();
  REAssetSetSwiftObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  *(inited + 56) = v4;
  *(inited + 64) = &protocol witness table for ShapeResource;
  *(inited + 32) = v5;

  specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  RERelease();
  return v5;
}

{
  v1 = *(v0 + 16);
  *(v0 + 96) = REBoxShapeCreate();
  type metadata accessor for MainActor();
  *(v0 + 104) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](specialized static ShapeResource.generateBox(size:), v3, v2);
}

{
  v2 = v0[12];
  v1 = v0[13];

  v3 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v3 + 120, (v0 + 4));
  v4 = v0[7];
  v5 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v4);
  (*(v5 + 32))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  result = REAssetManagerCollisionShapeAssetCreateFromCollisionShape();
  if (result)
  {
    v7 = result;
    type metadata accessor for ShapeResource();
    v8 = swift_allocObject();
    v0[14] = v8;
    *(v8 + 16) = v7;
    REPoseIdentity();
    *(v8 + 32) = v9;
    *(v8 + 48) = v10;
    RERetain();
    REAssetSetSwiftObject();
    RERelease();
    v11 = swift_task_alloc();
    v0[15] = v11;
    *v11 = v0;
    v11[1] = specialized static ShapeResource.generateBox(size:);

    return specialized RequestLoadable.awaitForResourceSharing()();
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v2 = *(*v1 + 120);
  v3 = *v1;
  v3[16] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](specialized static ShapeResource.generateBox(size:), 0, 0);
  }

  else
  {
    v4 = v3[1];
    v5 = v3[14];

    return v4(v5);
  }
}

{
  v1 = v0[14];

  v2 = v0[1];
  v3 = v0[16];

  return v2();
}

uint64_t specialized static ShapeResource.isSingleUntransformedShape(_:)(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_18:
    v3 = 0;
    return v3 & 1;
  }

  v8 = a1;
  v9 = __CocoaSet.count.getter();
  a1 = v8;
  if (v9 != 1)
  {
    goto LABEL_18;
  }

LABEL_3:
  v1 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v13 = a1;
    v11 = *(MEMORY[0x1C68F41F0](0, a1) + 32);
    swift_unknownObjectRelease();
    v2 = v11;
    a1 = v13;
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_22:
      swift_once();
      goto LABEL_13;
    }

    v2 = *(*(a1 + 32) + 32);
  }

  v3 = 0;
  if (*v2.i32 != 0.0)
  {
    return v3 & 1;
  }

  v4 = vceqz_f32(*&vextq_s8(v2, v2, 4uLL));
  if ((v4.i8[0] & 1) == 0 || (v4.i8[4] & 1) == 0)
  {
    return v3 & 1;
  }

  if (v1)
  {
    v5 = MEMORY[0x1C68F41F0](0, a1);
  }

  else
  {
    v6 = *(a1 + 32);
  }

  v12 = *(v5 + 48);

  if (one-time initialization token for identity != -1)
  {
    goto LABEL_22;
  }

LABEL_13:
  v3 = 0;
  v7 = vmovn_s32(vceqq_f32(v12, static simd_quatf.identity));
  if (v7.i8[0] & 1) != 0 && (v7.i8[2] & 1) != 0 && (v7.i8[4])
  {
    v3 = v7.i8[6];
  }

  return v3 & 1;
}

uint64_t specialized static ShapeResource.__makeShapeResource(_:)(unint64_t a1)
{
  if (specialized static ShapeResource.isSingleUntransformedShape(_:)(a1))
  {
    if ((a1 & 0xC000000000000001) != 0)
    {

LABEL_30:
      JUMPOUT(0x1C68F41F0);
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v2 = *(a1 + 32);

      return v2;
    }

    goto LABEL_27;
  }

  if (a1 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((v3 - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v4 = swift_slowAlloc();
  if ((v3 - 0x400000000000000) >> 59 != 31)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v5 = v4;
  v6 = swift_slowAlloc();
  if (v3 < 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v7 = v6;
  if (v3)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = 0;
      v9 = (v6 + 16);
      do
      {
        v10 = *(MEMORY[0x1C68F41F0](v8, a1) + 16);
        swift_unknownObjectRelease();
        v5[v8] = v10;
        v11 = MEMORY[0x1C68F41F0](v8, a1);
        v26 = *(v11 + 48);
        v27 = *(v11 + 32);
        swift_unknownObjectRelease();
        *(v9 - 1) = v27;
        *v9 = v26;
        v9 += 2;
        ++v8;
      }

      while (v3 != v8);
    }

    else
    {
      v12 = (a1 + 32);
      v13 = (v6 + 16);
      v14 = v5;
      v15 = v3;
      do
      {
        v16 = *v12++;
        *v14++ = *(v16 + 16);
        v17 = *(v16 + 48);
        *(v13 - 1) = *(v16 + 32);
        *v13 = v17;
        v13 += 2;
        --v15;
      }

      while (v15);
    }
  }

  v18 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v18 + 120, v28);
  v19 = v29;
  v20 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  (*(v20 + 32))(v19, v20);
  __swift_destroy_boxed_opaque_existential_1(v28);
  v21 = REAssetManagerCollisionShapeAssetRegistryGetOrAdd();
  v22 = REAssetGetSwiftObject();
  type metadata accessor for ShapeResource();
  if (v22)
  {
    v2 = swift_dynamicCastClassUnconditional();
  }

  else
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v21;
    REPoseIdentity();
    *(v2 + 32) = v23;
    *(v2 + 48) = v24;
    RERetain();
    REAssetSetSwiftObject();
  }

  RERelease();
  MEMORY[0x1C6902A30](v7, -1, -1);
  MEMORY[0x1C6902A30](v5, -1, -1);
  return v2;
}

unint64_t lazy protocol witness table accessor for type ShapeResourceError and conformance ShapeResourceError()
{
  result = lazy protocol witness table cache variable for type ShapeResourceError and conformance ShapeResourceError;
  if (!lazy protocol witness table cache variable for type ShapeResourceError and conformance ShapeResourceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShapeResourceError and conformance ShapeResourceError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShapeResourceError and conformance ShapeResourceError;
  if (!lazy protocol witness table cache variable for type ShapeResourceError and conformance ShapeResourceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShapeResourceError and conformance ShapeResourceError);
  }

  return result;
}

uint64_t specialized static ShapeResource.generateStaticMesh(positions:faceIndices:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x1EEE6DFA0](specialized static ShapeResource.generateStaticMesh(positions:faceIndices:), 0, 0);
}

uint64_t specialized static ShapeResource.generateStaticMesh(positions:faceIndices:)()
{
  v1 = *(v0[10] + 16);
  v2 = *(v0[11] + 16);
  v3 = RECollisionMeshCreateFromSIMDPositionsWithIndexFormat();
  v0[12] = v3;
  if (v3)
  {
    type metadata accessor for MainActor();
    v0[13] = static MainActor.shared.getter();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x1EEE6DFA0](specialized static ShapeResource.generateStaticMesh(positions:faceIndices:), v5, v4);
  }

  else
  {
    lazy protocol witness table accessor for type ShapeResourceError and conformance ShapeResourceError();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

{
  v2 = v0[12];
  v1 = v0[13];

  v3 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v3 + 120, (v0 + 2));
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  (*(v5 + 32))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  REAssetManagerCollisionMeshAssetCreateFromMesh();
  CollisionMesh = REAssetManagerCollisionShapeAssetCreateCollisionMesh();
  type metadata accessor for ShapeResource();
  v7 = swift_allocObject();
  v0[14] = v7;
  *(v7 + 16) = CollisionMesh;
  REPoseIdentity();
  *(v7 + 32) = v8;
  *(v7 + 48) = v9;
  RERetain();
  REAssetSetSwiftObject();
  RERelease();
  RERelease();
  v10 = swift_task_alloc();
  v0[15] = v10;
  *v10 = v0;
  v10[1] = specialized static ShapeResource.generateStaticMesh(positions:faceIndices:);

  return specialized RequestLoadable.awaitForResourceSharing()();
}

{
  v2 = *(*v1 + 120);
  v3 = *v1;
  v3[16] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](specialized static ShapeResource.generateStaticMesh(positions:faceIndices:), 0, 0);
  }

  else
  {
    v4 = v3[1];
    v5 = v3[14];

    return v4(v5);
  }
}

unint64_t lazy protocol witness table accessor for type ShapeResource and conformance ShapeResource()
{
  result = lazy protocol witness table cache variable for type ShapeResource and conformance ShapeResource;
  if (!lazy protocol witness table cache variable for type ShapeResource and conformance ShapeResource)
  {
    type metadata accessor for ShapeResource();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShapeResource and conformance ShapeResource);
  }

  return result;
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t static __RKEntityInteraction.interaction(for:entityLookupTable:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for __RKEntityTrigger();
  v4 = static __RKEntityTrigger.trigger(for:entityLookupTable:)(a1, a2);
  type metadata accessor for __RKEntityAction();
  v5 = type metadata accessor for __RKEntityInteractionSpecification(0);
  v6 = static __RKEntityAction.action(for:entityLookupTable:)(a1 + *(v5 + 20), a2);
  v7 = (a1 + *(v5 + 24));
  v9 = *v7;
  v8 = v7[1];
  type metadata accessor for __RKEntityInteraction();
  swift_allocObject();

  v10 = specialized __RKEntityInteraction.init(trigger:action:)(v4, v6);

  swift_beginAccess();
  v11 = *(v10 + 56);
  *(v10 + 48) = v9;
  *(v10 + 56) = v8;

  return v10;
}

uint64_t __RKEntityInteractionManager.areInteractionsEnabled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t __RKEntityInteractionManager.interactionsDisabledForTests.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 25) = a1;
  return result;
}

uint64_t __RKEntityInteractionManager.customTriggerIdentifiers.getter()
{
  v14 = MEMORY[0x1E69E7CD0];
  result = swift_beginAccess();
  v2 = *(v0 + 64);
  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1C68F41F0](i, v2);
      }

      else
      {
        v7 = *(v2 + 8 * i + 32);
      }

      swift_beginAccess();
      v8 = *(v7 + 16);
      type metadata accessor for __RKCustomTrigger();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v5 = *(v9 + 24);
        v6 = *(v9 + 32);

        specialized Set._Variant.insert(_:)(&v13, v5, v6);
      }

      else
      {
      }
    }

    v10 = v14;
    v11 = *(v14 + 16);
    if (v11)
    {
      while (1)
      {
        v2 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(v11, 0);
        v12 = specialized Sequence._copySequenceContents(initializing:)(&v13, (v2 + 32), v11, v10);
        outlined consume of [String : AnimationResource].Iterator._Variant();
        if (v12 == v11)
        {
          break;
        }

        __break(1u);
LABEL_15:
        result = __CocoaSet.count.getter();
        v3 = result;
        if (result)
        {
          goto LABEL_3;
        }

LABEL_16:
        v10 = MEMORY[0x1E69E7CD0];
        v11 = *(MEMORY[0x1E69E7CD0] + 16);
        if (!v11)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:

      return MEMORY[0x1E69E7CC0];
    }

    return v2;
  }

  return result;
}

uint64_t __RKEntityInteractionManager.customActionIdentifiers.getter()
{
  v15 = MEMORY[0x1E69E7CD0];
  swift_beginAccess();
  v1 = *(v0 + 64);

  v3 = specialized __RKEntityInteractionManager.actions(for:)(v2);

  if (v3 >> 62)
  {
    goto LABEL_15;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C68F41F0](i, v3);
      }

      else
      {
        v9 = *(v3 + 8 * i + 32);
      }

      type metadata accessor for __RKEntityCustomAction();
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v7 = *(v10 + 128);
        v8 = *(v10 + 136);

        specialized Set._Variant.insert(_:)(&v14, v7, v8);
      }

      else
      {
      }
    }

    v11 = v15;
    v12 = *(v15 + 16);
    if (v12)
    {
      while (1)
      {
        v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(v12, 0);
        v13 = specialized Sequence._copySequenceContents(initializing:)(&v14, (v3 + 32), v12, v11);
        outlined consume of [String : AnimationResource].Iterator._Variant();
        if (v13 == v12)
        {
          break;
        }

        __break(1u);
LABEL_15:
        result = __CocoaSet.count.getter();
        v5 = result;
        if (result)
        {
          goto LABEL_3;
        }

LABEL_16:

        v11 = MEMORY[0x1E69E7CD0];
        v12 = *(MEMORY[0x1E69E7CD0] + 16);
        if (!v12)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:

      return MEMORY[0x1E69E7CC0];
    }

    return v3;
  }

  return result;
}

uint64_t __RKEntityInteractionManager.entitiesTargetedByATapTrigger.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v54 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
    goto LABEL_72;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v2)
  {
    v3 = 0;
    v40 = v1 & 0xFFFFFFFFFFFFFF8;
    v41 = v1 & 0xC000000000000001;
    v39 = v1 + 32;
    v4 = &_sSay10RealityKit6EntityCGMd;
    v37 = v2;
    v38 = v1;
    while (1)
    {
      if (v41)
      {
        v43 = MEMORY[0x1C68F41F0](v3, v1);
        v6 = __OFADD__(v3, 1);
        v7 = v3 + 1;
        if (v6)
        {
          goto LABEL_70;
        }
      }

      else
      {
        if (v3 >= *(v40 + 16))
        {
          goto LABEL_71;
        }

        v43 = *(v39 + 8 * v3);

        v6 = __OFADD__(v3, 1);
        v7 = v3 + 1;
        if (v6)
        {
          goto LABEL_70;
        }
      }

      v42 = v7;
      swift_beginAccess();
      v8 = *(v43 + 16);

      v9 = getTapTriggers #1 (from:) in __RKEntityInteractionManager.entitiesTargetedByATapTrigger.getter();

      if (!(v9 >> 62))
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v10)
        {
          break;
        }

        goto LABEL_5;
      }

      v10 = __CocoaSet.count.getter();
      if (v10)
      {
        break;
      }

LABEL_5:
      v5 = MEMORY[0x1E69E7CC0];
LABEL_6:

      specialized Array.append<A>(contentsOf:)(v5);

      v1 = v38;
      v3 = v42;
      if (v42 == v37)
      {
        v35 = v54;
        goto LABEL_62;
      }
    }

    v11 = 0;
    v47 = v9 & 0xFFFFFFFFFFFFFF8;
    v48 = v9 & 0xC000000000000001;
    v46 = v9 + 32;
    v5 = MEMORY[0x1E69E7CC0];
    v44 = v10;
    v45 = v9;
    while (1)
    {
      if (v48)
      {
        v1 = MEMORY[0x1C68F41F0](v11, v9);
        v6 = __OFADD__(v11, 1);
        v13 = v11 + 1;
        if (v6)
        {
          goto LABEL_63;
        }
      }

      else
      {
        if (v11 >= *(v47 + 16))
        {
          goto LABEL_64;
        }

        v1 = *(v46 + 8 * v11);

        v6 = __OFADD__(v11, 1);
        v13 = v11 + 1;
        if (v6)
        {
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          v2 = __CocoaSet.count.getter();
          goto LABEL_3;
        }
      }

      swift_beginAccess();
      v1 = *(v1 + 24);
      if (v1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_1C1898160;
        *(v14 + 32) = v1;
      }

      else
      {
        v14 = MEMORY[0x1E69E7CC0];
      }

      v15 = v14 >> 62;
      if (v14 >> 62)
      {
        v16 = __CocoaSet.count.getter();
      }

      else
      {
        v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v17 = v5 >> 62;
      v51 = v16;
      v52 = v5;
      if (v5 >> 62)
      {
        v34 = __CocoaSet.count.getter();
        v19 = v34 + v51;
        if (__OFADD__(v34, v51))
        {
          goto LABEL_65;
        }
      }

      else
      {
        v18 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v19 = v18 + v16;
        if (__OFADD__(v18, v16))
        {
          goto LABEL_65;
        }
      }

      v49 = v13;
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (v17)
        {
          goto LABEL_32;
        }

        v20 = v52 & 0xFFFFFFFFFFFFFF8;
        v50 = v52;
        if (v19 <= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v17)
        {
LABEL_32:
          __CocoaSet.count.getter();
          goto LABEL_33;
        }

        v20 = v52 & 0xFFFFFFFFFFFFFF8;
      }

      v21 = *(v20 + 16);
LABEL_33:
      v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v20 = v50 & 0xFFFFFFFFFFFFFF8;
LABEL_34:
      v22 = *(v20 + 16);
      v23 = *(v20 + 24);
      if (v15)
      {
        v1 = __CocoaSet.count.getter();
        v24 = v51;
        if (!v1)
        {
LABEL_13:
          v12 = v24;

          if (v12 > 0)
          {
            goto LABEL_66;
          }

          goto LABEL_14;
        }
      }

      else
      {
        v1 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v24 = v51;
        if (!v1)
        {
          goto LABEL_13;
        }
      }

      if (((v23 >> 1) - v22) < v24)
      {
        goto LABEL_67;
      }

      v25 = v20 + 8 * v22 + 32;
      if (v15)
      {
        if (v1 < 1)
        {
          goto LABEL_69;
        }

        lazy protocol witness table accessor for type [Component] and conformance [A](&lazy protocol witness table cache variable for type [Entity] and conformance [A], v4, &_sSay10RealityKit6EntityCGMR);
        for (i = 0; i != v1; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(v4, &_sSay10RealityKit6EntityCGMR);
          v28 = specialized protocol witness for Collection.subscript.read in conformance [A](v53, i, v14);
          v29 = v4;
          v31 = *v30;

          (v28)(v53, 0);
          *(v25 + 8 * i) = v31;
          v4 = v29;
        }

        v26 = v51;
        if (v51 <= 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v1 = v14 & 0xFFFFFFFFFFFFFF8;
        v26 = v24;
        type metadata accessor for Entity();
        swift_arrayInitWithCopy();

        if (v26 <= 0)
        {
          goto LABEL_14;
        }
      }

      v32 = *(v20 + 16);
      v6 = __OFADD__(v32, v26);
      v33 = v32 + v26;
      if (v6)
      {
        goto LABEL_68;
      }

      *(v20 + 16) = v33;
LABEL_14:
      v9 = v45;
      v11 = v49;
      v5 = v50;
      if (v49 == v44)
      {
        goto LABEL_6;
      }
    }
  }

  v35 = MEMORY[0x1E69E7CC0];
LABEL_62:

  return v35;
}

unint64_t getTapTriggers #1 (from:) in __RKEntityInteractionManager.entitiesTargetedByATapTrigger.getter()
{
  v0 = type metadata accessor for __RKEntityTapTrigger();
  v1 = swift_dynamicCastClass();
  if (!v1)
  {
    type metadata accessor for __RKEntityTriggerGroup();
    v4 = swift_dynamicCastClass();
    if (!v4)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v5 = v4;
    swift_beginAccess();
    v6 = *(v5 + 24);
    if (v6 >> 62)
    {
      goto LABEL_53;
    }

    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return MEMORY[0x1E69E7CC0];
    }

LABEL_6:
    v37 = v6 & 0xC000000000000001;
    v34 = v6 + 32;
    v35 = v6 & 0xFFFFFFFFFFFFFF8;

    v8 = 0;
    v3 = MEMORY[0x1E69E7CC0];
    v36 = v7;
    v32 = v6;
    v33 = v0;
    while (1)
    {
      if (v37)
      {
        v9 = MEMORY[0x1C68F41F0](v8, v6);
        v10 = __OFADD__(v8++, 1);
        if (v10)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v8 >= *(v35 + 16))
        {
          goto LABEL_51;
        }

        v9 = *(v34 + 8 * v8);

        v10 = __OFADD__(v8++, 1);
        if (v10)
        {
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
          v7 = __CocoaSet.count.getter();
          if (!v7)
          {
            return MEMORY[0x1E69E7CC0];
          }

          goto LABEL_6;
        }
      }

      v11 = getTapTriggers #1 (from:) in __RKEntityInteractionManager.entitiesTargetedByATapTrigger.getter(v9);
      v12 = v11;
      v13 = v11 >> 62;
      if (v11 >> 62)
      {
        v14 = __CocoaSet.count.getter();
      }

      else
      {
        v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = v3 >> 62;
      if (v3 >> 62)
      {
        v16 = __CocoaSet.count.getter();
      }

      else
      {
        v16 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v38 = v14;
      v10 = __OFADD__(v16, v14);
      v17 = v16 + v14;
      if (v10)
      {
        goto LABEL_47;
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (v15)
        {
          goto LABEL_27;
        }

        v18 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v17 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v15)
        {
LABEL_27:
          __CocoaSet.count.getter();
          goto LABEL_28;
        }

        v18 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v19 = *(v18 + 16);
LABEL_28:
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v18 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_29:
      v20 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v13)
      {
        v22 = __CocoaSet.count.getter();
        if (!v22)
        {
LABEL_7:

          if (v38 > 0)
          {
            goto LABEL_48;
          }

          goto LABEL_8;
        }
      }

      else
      {
        v22 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v22)
        {
          goto LABEL_7;
        }
      }

      if (((v21 >> 1) - v20) < v38)
      {
        goto LABEL_49;
      }

      v23 = v18 + 8 * v20 + 32;
      if (v13)
      {
        if (v22 < 1)
        {
          goto LABEL_52;
        }

        lazy protocol witness table accessor for type [Component] and conformance [A](&lazy protocol witness table cache variable for type [__RKEntityTapTrigger] and conformance [A], &_sSay10RealityKit20__RKEntityTapTriggerCGMd, &_sSay10RealityKit20__RKEntityTapTriggerCGMR);
        for (i = 0; i != v22; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit20__RKEntityTapTriggerCGMd, &_sSay10RealityKit20__RKEntityTapTriggerCGMR);
          v26 = specialized protocol witness for Collection.subscript.read in conformance [A](v39, i, v12);
          v28 = *v27;

          (v26)(v39, 0);
          *(v23 + 8 * i) = v28;
        }

        v6 = v32;
        v0 = v33;
        v24 = v38;
        if (v38 <= 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v24 = v38;
        swift_arrayInitWithCopy();

        if (v38 <= 0)
        {
          goto LABEL_8;
        }
      }

      v29 = *(v18 + 16);
      v10 = __OFADD__(v29, v24);
      v30 = v29 + v24;
      if (v10)
      {
        goto LABEL_50;
      }

      *(v18 + 16) = v30;
LABEL_8:
      if (v8 == v36)
      {

        return v3;
      }
    }
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C1898160;
  *(v3 + 32) = v2;

  return v3;
}

uint64_t closure #2 in __RKEntityInteractionManager.performInteractions(matchingCustomTriggerWithIdentifier:customArguments:overrides:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
    }

    v3 = Strong;
    swift_beginAccess();

    v4 = specialized MutableCollection._halfStablePartition(isSuffixElement:)((v1 + 16), v3);

    v5 = *(v1 + 16);
    if (v5 >> 62)
    {
      if (v5 < 0)
      {
        v7 = *(v1 + 16);
      }

      result = __CocoaSet.count.getter();
      v6 = result;
      if (result >= v4)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6 >= v4)
      {
LABEL_5:
        specialized Array.replaceSubrange<A>(_:with:)(v4, v6);
        swift_endAccess();
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t __RKEntityInteractionManager.setCustomActionHandler(for:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(v4 + 64);

  v9 = specialized __RKEntityInteractionManager.actions(for:)(v8);

  if (!(v9 >> 62))
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }
  }

  result = __CocoaSet.count.getter();
  v11 = result;
  if (!result)
  {
  }

LABEL_3:
  if (v11 >= 1)
  {
    for (i = 0; i != v11; ++i)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C68F41F0](i, v9);
      }

      else
      {
        v15 = *(v9 + 8 * i + 32);
      }

      type metadata accessor for __RKEntityCustomAction();
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v17 = v16;
        v18 = *(v16 + 128) == a1 && *(v16 + 136) == a2;
        if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          swift_beginAccess();
          v14 = *(v17 + 112);
          v13 = *(v17 + 120);
          *(v17 + 112) = a3;
          *(v17 + 120) = a4;
          outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a3);
          outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v14);
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t __RKEntityInteractionManager.applyOverrides(_:on:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if (*(result + 16))
    {
      type metadata accessor for __RKEntityActionGroup();
      v4 = swift_dynamicCastClass();
      if (v4)
      {
        v5 = v4;
        result = swift_beginAccess();
        v6 = *(v5 + 112);
        if (v6 >> 62)
        {
          result = __CocoaSet.count.getter();
          v7 = result;
          if (!result)
          {
            return result;
          }
        }

        else
        {
          v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v7)
          {
            return result;
          }
        }

        if (v7 < 1)
        {
          __break(1u);
        }

        else
        {

          for (i = 0; i != v7; ++i)
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v9 = MEMORY[0x1C68F41F0](i, v6);
            }

            else
            {
              v9 = *(v6 + 8 * i + 32);
            }

            __RKEntityInteractionManager.applyOverrides(_:on:)(v2, v9);
          }
        }
      }

      else
      {
        result = swift_beginAccess();
        v10 = *(a2 + 16);
        if (v10)
        {
          v11 = *(v10 + 16);
          v12 = *(a2 + 16);

          REEntityGetName();
          v13 = String.init(cString:)();
          if (*(v2 + 16))
          {
            v15 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
            v17 = v16;

            if (v17)
            {
              v18 = *(*(v2 + 56) + 8 * v15);

              v19 = *(a2 + 16);
              *(a2 + 16) = v18;
            }
          }

          else
          {
          }
        }
      }
    }
  }

  return result;
}

Swift::Bool __swiftcall __RKEntityInteractionManager.__performInteractions(matchingCustomTriggerWithIdentifier:with:on:)(Swift::String matchingCustomTriggerWithIdentifier, Swift::OpaquePointer with, Swift::OpaquePointer_optional on)
{
  rawValue = on.value._rawValue;
  object = matchingCustomTriggerWithIdentifier._object;
  countAndFlagsBits = matchingCustomTriggerWithIdentifier._countAndFlagsBits;
  swift_beginAccess();
  if (*(v3 + 24) == 1)
  {
    type metadata accessor for __RKCustomTrigger();
    v8 = swift_allocObject();
    *(v8 + 24) = countAndFlagsBits;
    *(v8 + 32) = object;
    *(v8 + 40) = with;
    *(v8 + 16) = 0;
    *(v8 + 18) = 0;

    v9 = __RKEntityInteractionManager.__performInteractions(matching:on:)(v8, rawValue);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t __RKEntityInteractionManager.__setCustomPackageActionHandler(withIdentifier:actionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(v4 + 64);

  v9 = specialized __RKEntityInteractionManager.actions(for:)(v8);

  if (!(v9 >> 62))
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }
  }

  result = __CocoaSet.count.getter();
  v11 = result;
  if (!result)
  {
  }

LABEL_3:
  if (v11 >= 1)
  {
    for (i = 0; i != v11; ++i)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C68F41F0](i, v9);
      }

      else
      {
        v15 = *(v9 + 8 * i + 32);
      }

      type metadata accessor for __RKEntityCustomAction();
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v17 = v16;
        v18 = *(v16 + 128) == a1 && *(v16 + 136) == a2;
        if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          swift_beginAccess();
          v14 = *(v17 + 152);
          v13 = *(v17 + 160);
          *(v17 + 152) = a3;
          *(v17 + 160) = a4;
          outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a3);
          outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v14);
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t __RKEntityInteractionManager.automaticallyInvokesStartTrigger.didset(char a1)
{

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0, 0xE000000000000000);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v3 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v3);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v4 = static os_log_type_t.info.getter();
  if (one-time initialization token for interactionsLoggingEnabled != -1)
  {
    swift_once();
  }

  if (interactionsLoggingEnabled)
  {
    _StringGuts.grow(_:)(27);

    v17 = 0xD000000000000013;
    v18 = 0x80000001C18EF160;
    if (a1)
    {
      v5 = 1702195828;
    }

    else
    {
      v5 = 0x65736C6166;
    }

    if (a1)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }

    MEMORY[0x1C68F3410](v5, v6);

    MEMORY[0x1C68F3410](544175136, 0xE400000000000000);
    swift_beginAccess();
    if (*(v1 + 26))
    {
      v7 = 1702195828;
    }

    else
    {
      v7 = 0x65736C6166;
    }

    if (*(v1 + 26))
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    MEMORY[0x1C68F3410](v7, v8);

    v10 = v17;
    v9 = v18;
    if (one-time initialization token for interactionsLogger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, interactionsLogger);

    v12 = Logger.logObject.getter();

    if (os_log_type_enabled(v12, v4))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136315394;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(91, 0xE100000000000000, &v17);
      *(v13 + 12) = 2080;
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v17);

      *(v13 + 14) = v15;
      _os_log_impl(&dword_1C1358000, v12, v4, "%s%s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6902A30](v14, -1, -1);
      MEMORY[0x1C6902A30](v13, -1, -1);
    }

    else
    {
    }
  }

  v17 = 91;
  v18 = 0xE100000000000000;
  InteractionsLogger.dumpStack()();
}

uint64_t __RKEntityInteractionManager.automaticallyInvokesStartTrigger.setter(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 26);
  *(v1 + 26) = a1;
  return __RKEntityInteractionManager.automaticallyInvokesStartTrigger.didset(v3);
}

void (*__RKEntityInteractionManager.automaticallyInvokesStartTrigger.modify(uint64_t *a1))(uint64_t a1)
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
  *(v3 + 24) = v1;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + 26);
  return __RKEntityInteractionManager.automaticallyInvokesStartTrigger.modify;
}

void __RKEntityInteractionManager.automaticallyInvokesStartTrigger.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v4 = *(v2 + 26);
  *(v2 + 26) = v3;
  __RKEntityInteractionManager.automaticallyInvokesStartTrigger.didset(v4);

  free(v1);
}

_BYTE *(*__RKEntityInteractionManager.proximityEnabled.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 27);
  return __RKEntityInteractionManager.proximityEnabled.modify;
}

Swift::Void __swiftcall __RKEntityInteractionManager.shutdown()()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0 = static __RKActiveSceneManager.shared;
  swift_beginAccess();
  v1 = v0[2];
  v0[2] = 0;

  swift_beginAccess();
  v2 = v0[3];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[3];

    v5 = (v2 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      ObjectType = swift_getObjectType();
      v9 = v0[2];
      v10 = *(v7 + 8);

      swift_unknownObjectRetain();
      v10(v0, v9, ObjectType, v7);
      swift_unknownObjectRelease();

      v5 += 2;
      --v3;
    }

    while (v3);
  }
}

uint64_t __RKEntityInteractionManager.init(sceneRef:)(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  type metadata accessor for __RKEntityLookupTable();
  *(v2 + 24) = 16843009;
  v5 = swift_allocObject();
  *(v5 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_10RealityKit6EntityCTt0g5Tf4g_n(v4);
  *(v2 + 40) = v5;
  type metadata accessor for __RKSimulationSceneCoordinator();
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 32) = 0;
  *(v2 + 48) = v6;
  type metadata accessor for __RKRuntimeSceneCoordinator();
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v2 + 56) = v7;
  *(v2 + 64) = v4;
  *(v2 + 32) = a1;
  v11[0] = 91;
  v11[1] = 0xE100000000000000;

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0, 0xE000000000000000);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v8 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v8);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v9 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v9, v11);

  return v2;
}

void *__RKEntityInteractionManager.deinit()
{
  v9[0] = 91;
  v9[1] = 0xE100000000000000;

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0, 0xE000000000000000);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v1 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v1);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v2 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v2, v9);

  v3 = v0[2];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  return v0;
}

uint64_t __RKEntityInteractionManager.__deallocating_deinit()
{
  __RKEntityInteractionManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t __RKEntityInteractionManager.__entityLookupTable.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

uint64_t key path setter for __RKEntityInteractionManager.__runtimeSceneCoordinator : __RKEntityInteractionManager(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;
}

uint64_t __RKEntityInteractionManager.__runtimeSceneCoordinator.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
}

uint64_t __RKEntityInteractionManager.__runtimeSceneCoordinator.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t key path setter for __RKEntityInteractionManager.__interactions : __RKEntityInteractionManager(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;
}

uint64_t __RKEntityInteractionManager.__interactions.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
}

uint64_t __RKEntityInteractionManager.__hasInteractionsForTrigger<A>(of:)()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  if (v1 >> 62)
  {
    goto LABEL_36;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return 0;
  }

LABEL_3:
  v3 = v1 & 0xC000000000000001;
  v17 = v1 + 32;
  v18 = v1 & 0xFFFFFFFFFFFFFF8;

  v5 = 0;
  v20 = v2;
  v21 = v1;
  v19 = v1 & 0xC000000000000001;
  while (1)
  {
    if (v3)
    {
      v6 = MEMORY[0x1C68F41F0](v5, v1);
      v7 = __OFADD__(v5++, 1);
      if (v7)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (v5 >= *(v18 + 16))
      {
        __break(1u);
        return result;
      }

      v6 = *(v17 + 8 * v5);

      v7 = __OFADD__(v5++, 1);
      if (v7)
      {
        goto LABEL_35;
      }
    }

    swift_beginAccess();
    v8 = *(v6 + 16);
    type metadata accessor for __RKEntityTriggerGroup();
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = v9;
      swift_beginAccess();
      v11 = *(v10 + 24);
      v22 = v6;
      if (v11 >> 62)
      {
        v12 = __CocoaSet.count.getter();
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v12)
      {
        v13 = 0;
        v1 = v11 & 0xFFFFFFFFFFFFFF8;
        do
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1C68F41F0](v13, v11);
            v15 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              goto LABEL_33;
            }
          }

          else
          {
            if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_34;
            }

            v14 = *(v11 + 8 * v13 + 32);

            v15 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
LABEL_33:
              __break(1u);
LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
LABEL_36:
              v2 = __CocoaSet.count.getter();
              if (!v2)
              {
                return 0;
              }

              goto LABEL_3;
            }
          }

          if (swift_dynamicCastClass())
          {

            goto LABEL_30;
          }

          ++v13;
        }

        while (v15 != v12);
      }

      v1 = v21;
      v16 = *(v22 + 16);
      v3 = v19;
      v2 = v20;
    }

    if (swift_dynamicCastClass())
    {
      break;
    }

    if (v5 == v2)
    {

      return 0;
    }
  }

LABEL_30:

  return 1;
}

uint64_t __RKEntityInteractionManager.__actions.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);

  v3 = specialized __RKEntityInteractionManager.actions(for:)(v2);

  return v3;
}

uint64_t __RKEntityInteractionManager.__addInteraction(_:)()
{
  swift_beginAccess();

  MEMORY[0x1C68F3650](v1);
  if (*((*(v0 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v3 = *((*(v0 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

uint64_t __RKEntityInteractionManager.__removeInteraction(_:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v2 + 64);
  if (v4 >> 62)
  {
LABEL_17:
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (v5 != v6)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1C68F41F0](v6, v4);
      swift_unknownObjectRelease();
      if (v8 == a1)
      {
LABEL_12:

        swift_beginAccess();
        v9 = *(**(a1 + 24) + 448);

        v9(v10);

        swift_beginAccess();
        specialized Array.remove(at:)(v6);
        swift_endAccess();
      }
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      if (*(v4 + 8 * v6 + 32) == a1)
      {
        goto LABEL_12;
      }
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }
}

Swift::Void __swiftcall __RKEntityInteractionManager.__removeAllInteractions()()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  *(v0 + 64) = MEMORY[0x1E69E7CC0];
}

uint64_t __RKEntityInteractionManager.__cloneInteractions(fromEntity:toEntity:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = swift_beginAccess();
  v7 = *(v2 + 64);
  if (v7 >> 62)
  {
    if (v7 < 0)
    {
      v23 = *(v2 + 64);
    }

    v24 = *(v2 + 64);
    result = __CocoaSet.count.getter();
    v7 = v24;
    v8 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return result;
    }
  }

  if (v8 >= 1)
  {
    v25 = v7 & 0xC000000000000001;
    v9 = v7;

    v10 = v9;
    v11 = 0;
    v26 = v8;
    v27 = v9;
    while (1)
    {
      if (v25)
      {
        v12 = MEMORY[0x1C68F41F0](v11, v10);
      }

      else
      {
        v12 = *(v10 + 8 * v11 + 32);
      }

      swift_beginAccess();
      v13 = *(**(v12 + 16) + 200);

      v14 = v13(a1, a2);

      swift_beginAccess();
      v15 = *(**(v12 + 24) + 472);

      v16 = v15(a1, a2);
      v18 = v17;

      if (v14)
      {
        v19 = v26;
        if (v16)
        {
          type metadata accessor for __RKEntityInteraction();
          swift_allocObject();
          specialized __RKEntityInteraction.init(trigger:action:)(v14, v16);
LABEL_11:

          swift_beginAccess();

          MEMORY[0x1C68F3650](v20);
          if (*((*(v3 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v22 = *((*(v3 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();

          goto LABEL_20;
        }
      }

      else
      {
        v19 = v26;
        if (!v16)
        {
          goto LABEL_20;
        }

        if (v18)
        {
          v21 = *(v12 + 16);
          swift_retain_n();
          [v21 copyWithZone_];
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          type metadata accessor for __RKEntityTrigger();
          if ((swift_dynamicCast() & 1) == 0)
          {

            goto LABEL_21;
          }

          type metadata accessor for __RKEntityInteraction();
          swift_allocObject();
          specialized __RKEntityInteraction.init(trigger:action:)(v28, v16);

          goto LABEL_11;
        }
      }

LABEL_20:

LABEL_21:
      ++v11;
      v10 = v27;
      if (v19 == v11)
      {
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t __RKEntityInteractionManager.__performInteractions(matching:on:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v108 = a1;
  v5 = type metadata accessor for DispatchTime();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v99 - v11;
  v122 = 91;
  v123 = 0xE100000000000000;
  v120 = 0;
  v121 = 0xE000000000000000;
  v119 = v2;

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](v120, v121);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v13 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v13);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v15 = v122;
  v14 = v123;
  swift_beginAccess();
  if (*(v3 + 24) != 1)
  {
LABEL_14:
    v120 = v15;
    v121 = v14;
    v23 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v23, &v120);
LABEL_30:

    return 0;
  }

  v103 = v5;
  v104 = v14;
  swift_beginAccess();
  v107 = v3;
  v16 = *(v3 + 64);
  v106 = v15;
  v102 = v6;
  v101 = v12;
  v100 = v9;
  v17 = v16 & 0xFFFFFFFFFFFFFF8;
  if (v16 >> 62)
  {
LABEL_50:
    v18 = __CocoaSet.count.getter();
  }

  else
  {
    v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 0;
  while (v18 != v14)
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x1C68F41F0](v14, v16);
      if (__OFADD__(v14, 1))
      {
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    else
    {
      if (v14 >= *(v17 + 16))
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v19 = *(v16 + 8 * v14 + 32);

      if (__OFADD__(v14, 1))
      {
        goto LABEL_13;
      }
    }

    swift_beginAccess();
    v15 = *(v19 + 24);
    v20 = *(*v15 + 328);

    v22 = v20(v21);

    ++v14;
    if (v22)
    {
LABEL_29:

      v116 = v106;
      v117 = v104;
      v33 = static os_log_type_t.info.getter();
      specialized InteractionsLogger.log(_:_:)(v33, &v116);
      goto LABEL_30;
    }
  }

  v24 = __RKEntityInteractionManager.interactions(matching:entities:)(v108, a2);
  v15 = &v99;
  MEMORY[0x1EEE9AC00](v24);
  *(&v99 - 2) = v25;
  v116 = v106;
  v117 = v104;
  v26 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v26, &v116, partial apply for implicit closure #3 in __RKEntityInteractionManager.__performInteractions(matching:on:), &v99 - 4);
  v118 = 0;
  v109 = v24;
  v27 = specialized __RKEntityInteractionManager.actions(for:)(v24);
  v16 = v27;
  v115 = MEMORY[0x1E69E7CC0];
  if (v27 >> 62)
  {
    v28 = __CocoaSet.count.getter();
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = MEMORY[0x1E69E7CC0];
  if (v28)
  {
    v30 = 0;
    v17 = v16 & 0xC000000000000001;
    do
    {
      if (v17)
      {
        v31 = MEMORY[0x1C68F41F0](v30, v16);
        v32 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (v30 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_48;
        }

        v31 = *(v16 + 8 * v30 + 32);

        v32 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }
      }

      swift_beginAccess();
      if (*(v31 + 89))
      {
        v15 = &v115;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        a2 = *(v115 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v30;
    }

    while (v32 != v28);
    v35 = v115;
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
  }

  v36 = *(v107 + 64);

  v38 = specialized __RKEntityInteractionManager.actions(for:)(v37);

  v112 = v29;
  if (v38 >> 62)
  {
    v39 = __CocoaSet.count.getter();
    if (v39)
    {
      goto LABEL_35;
    }

LABEL_53:
    v42 = MEMORY[0x1E69E7CC0];
    goto LABEL_54;
  }

  v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v39)
  {
    goto LABEL_53;
  }

LABEL_35:
  v16 = 0;
  v17 = v38 & 0xC000000000000001;
  while (v17)
  {
    v40 = MEMORY[0x1C68F41F0](v16, v38);
    v41 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_45;
    }

LABEL_41:
    swift_beginAccess();
    if (*(v40 + 89))
    {
      v15 = &v112;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      a2 = *(v112 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v16;
    if (v41 == v39)
    {
      goto LABEL_46;
    }
  }

  if (v16 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_49;
  }

  v40 = *(v38 + 8 * v16 + 32);

  v41 = v16 + 1;
  if (!__OFADD__(v16, 1))
  {
    goto LABEL_41;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  v42 = v112;
LABEL_54:

  if (v35 < 0 || (v35 & 0x4000000000000000) != 0)
  {
    goto LABEL_80;
  }

  v43 = *(v35 + 16);
  if (v43)
  {
    while (1)
    {
      v44 = v42 < 0 || (v42 & 0x4000000000000000) != 0 ? __CocoaSet.count.getter() : *(v42 + 16);
      v45 = 0;
      *&v105 = v35 + 32;
      while (1)
      {
        if ((v35 & 0xC000000000000001) != 0)
        {
          v46 = MEMORY[0x1C68F41F0](v45, v35);
          v47 = __OFADD__(v45++, 1);
          if (v47)
          {
            goto LABEL_77;
          }
        }

        else
        {
          if (v45 >= *(v35 + 16))
          {
            goto LABEL_79;
          }

          v46 = *(v105 + 8 * v45);

          v47 = __OFADD__(v45++, 1);
          if (v47)
          {
LABEL_77:
            __break(1u);
            goto LABEL_78;
          }
        }

        if (v44)
        {
          break;
        }

LABEL_61:

        if (v45 == v43)
        {
          goto LABEL_81;
        }
      }

      if (v44 >= 1)
      {
        break;
      }

LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      v43 = __CocoaSet.count.getter();
      if (!v43)
      {
        goto LABEL_81;
      }
    }

    v48 = 0;
    while (2)
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v49 = MEMORY[0x1C68F41F0](v48, v42);
        if (v46 == v49)
        {
LABEL_71:

          if (v44 == ++v48)
          {
            goto LABEL_61;
          }

          continue;
        }
      }

      else
      {
        v49 = *(v42 + 8 * v48 + 32);

        if (v46 == v49)
        {
          goto LABEL_71;
        }
      }

      break;
    }

    (*(*v49 + 448))();
    goto LABEL_71;
  }

LABEL_81:

  v50 = *(v107 + 32);
  v51 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v51)
  {
    v52 = swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    v52 = Scene.init(coreScene:)(v50);
  }

  v53 = v52;
  v54 = v104;
  v55 = v109;
  type metadata accessor for __RKStartTrigger();
  v56 = swift_dynamicCastClass();
  v57 = v55 >> 62;
  if (!v56)
  {
LABEL_99:
    MEMORY[0x1EEE9AC00](v56);
    *(&v99 - 2) = v55;
    v64 = v106;
    v110 = v106;
    v111 = v54;
    v65 = static os_log_type_t.info.getter();
    v66 = specialized InteractionsLogger.log(_:_:)(v65, &v110, partial apply for implicit closure #4 in __RKEntityInteractionManager.__performInteractions(matching:on:), &v99 - 4);
    if (v57)
    {
      v66 = __CocoaSet.count.getter();
      v68 = v66;
    }

    else
    {
      v68 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v60 = v68 != 0;
    v69 = v108;
    if (v68)
    {
      LODWORD(v103) = 1;
      if (v68 < 1)
      {
        __break(1u);
        goto LABEL_143;
      }

      v70 = 0;
      v71 = v109 & 0xC000000000000001;
      v107 = "Returning interactionsDidFire=";
      *&v67 = 136315394;
      v105 = v67;
      v72 = &unk_1EBF03000;
      do
      {
        if (v71)
        {
          MEMORY[0x1C68F41F0](v70, v109);
        }

        else
        {
          v73 = *(v109 + 8 * v70 + 32);
        }

        v74 = static os_log_type_t.info.getter();
        if (one-time initialization token for interactionsLoggingEnabled != -1)
        {
          swift_once();
        }

        if (v72[1392] == 1)
        {
          if (one-time initialization token for interactionsLogger != -1)
          {
            swift_once();
          }

          v75 = type metadata accessor for Logger();
          __swift_project_value_buffer(v75, interactionsLogger);

          v76 = Logger.logObject.getter();

          if (os_log_type_enabled(v76, v74))
          {
            v77 = swift_slowAlloc();
            v78 = swift_slowAlloc();
            v110 = v78;
            *v77 = v105;
            *(v77 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v54, &v110);
            *(v77 + 12) = 2080;
            *(v77 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, v107 | 0x8000000000000000, &v110);
            _os_log_impl(&dword_1C1358000, v76, v74, "%s%s", v77, 0x16u);
            swift_arrayDestroy();
            v79 = v78;
            v72 = &unk_1EBF03000;
            MEMORY[0x1C6902A30](v79, -1, -1);
            v80 = v77;
            v69 = v108;
            MEMORY[0x1C6902A30](v80, -1, -1);
          }
        }

        ++v70;
        v110 = v69;
        v111 = v53;
        __RKEntityInteraction.fire(context:)(&v110);
      }

      while (v68 != v70);
      v118 = 1;
      v64 = v106;
      v60 = v103;
    }

    MEMORY[0x1EEE9AC00](v66);
    *(&v99 - 2) = v109;
    v110 = v64;
    v111 = v54;
    v81 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v81, &v110, partial apply for implicit closure #6 in __RKEntityInteractionManager.__performInteractions(matching:on:), &v99 - 4);

    goto LABEL_118;
  }

  v58 = v55 & 0xFFFFFFFFFFFFFF8;
  if (v57)
  {
    v56 = __CocoaSet.count.getter();
    if (v56)
    {
      v98 = v56;
      v59 = __CocoaSet.count.getter();
      v60 = v98 > 0;
      goto LABEL_88;
    }

    goto LABEL_99;
  }

  v59 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v59)
  {
    goto LABEL_99;
  }

  v60 = 1;
LABEL_88:
  v54 = v55 & 0xC000000000000001;

  v61 = 0;
  do
  {
    if (v59 == v61)
    {
      goto LABEL_98;
    }

    if (v54)
    {
      v55 = MEMORY[0x1C68F41F0](v61, v55);
      if (__OFADD__(v61, 1))
      {
LABEL_97:
        __break(1u);
LABEL_98:

        v54 = v104;
        goto LABEL_99;
      }
    }

    else
    {
      if (v61 >= *(v58 + 16))
      {
        __break(1u);
        goto LABEL_137;
      }

      v55 = *(v55 + 8 * v61 + 32);

      if (__OFADD__(v61, 1))
      {
        goto LABEL_97;
      }
    }

    swift_beginAccess();
    v62 = *(v55 + 24);

    v63 = __RKEntityInteractionManager.containsChangeSceneAction(action:)();

    v55 = v109;

    ++v61;
  }

  while ((v63 & 1) == 0);
  if (v60)
  {
    v118 = 1;
  }

  v90 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v91 = *(v90 + 24);
  swift_unownedRetainStrong();
  v92 = v100;
  static DispatchTime.now()();
  v93 = v101;
  + infix(_:_:)();
  v94 = *(v102 + 8);
  v95 = v103;
  v94(v92, v103);
  v96 = swift_allocObject();
  v97 = v108;
  v96[2] = v55;
  v96[3] = v97;
  v96[4] = v53;

  __Engine.asyncAfterOnEngineQueue(deadline:_:)(v93, partial apply for closure #3 in __RKEntityInteractionManager.__performInteractions(matching:on:), v96);

  v94(v93, v95);
LABEL_118:
  LOBYTE(v54) = static os_log_type_t.info.getter();
  v61 = &unk_1EBF03000;
  if (one-time initialization token for interactionsLoggingEnabled != -1)
  {
LABEL_137:
    swift_once();
  }

  if (*(v61 + 1392) != 1)
  {

    return v118;
  }

  v113 = 0;
  v114 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  v113 = 0xD00000000000001ELL;
  v114 = 0x80000001C18EEE00;
  if (v60)
  {
    v82 = 1702195828;
  }

  else
  {
    v82 = 0x65736C6166;
  }

  if (v60)
  {
    v83 = 0xE400000000000000;
  }

  else
  {
    v83 = 0xE500000000000000;
  }

  MEMORY[0x1C68F3410](v82, v83);

  v64 = v113;
  v55 = v114;
  if (one-time initialization token for interactionsLogger != -1)
  {
LABEL_143:
    swift_once();
  }

  v84 = type metadata accessor for Logger();
  __swift_project_value_buffer(v84, interactionsLogger);
  v85 = v104;

  v86 = Logger.logObject.getter();

  if (os_log_type_enabled(v86, v54))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v113 = v88;
    *v87 = 136315394;
    *(v87 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v85, &v113);
    *(v87 + 12) = 2080;
    v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v55, &v113);

    *(v87 + 14) = v89;
    _os_log_impl(&dword_1C1358000, v86, v54, "%s%s", v87, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6902A30](v88, -1, -1);
    MEMORY[0x1C6902A30](v87, -1, -1);
  }

  else
  {
  }

  return v118;
}

unint64_t closure #3 in __RKEntityInteractionManager.__performInteractions(matching:on:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  if (result >> 62)
  {
    result = __CocoaSet.count.getter();
    v6 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return result;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C68F41F0](v7, v5);
      }

      else
      {
        v8 = *(v5 + 8 * v7 + 32);
      }

      ++v7;
      v9[0] = a2;
      v9[1] = a3;

      __RKEntityInteraction.fire(context:)(v9);
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t implicit closure #3 in __RKEntityInteractionManager.__performInteractions(matching:on:)(unint64_t a1, Swift::Int a2, uint64_t a3)
{
  _StringGuts.grow(_:)(a2);

  if (a1 >> 62)
  {
    __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v6);

  MEMORY[0x1C68F3410](0xD000000000000016, 0x80000001C18EF100);
  return a3;
}

uint64_t __RKEntityInteractionManager.performTapInteraction(for:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v80 - v5;
  v89 = 91;
  v90 = 0xE100000000000000;
  v87 = 0;
  v88 = 0xE000000000000000;
  v85 = v1;

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](v87, v88);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v7 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v7);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);
  v81 = v1;

  v8 = v90;
  v84 = v89;

  swift_beginAccess();
  v82 = "Skipping target entity ";
  v83 = "formTapInteraction";
  v9 = &static ComponentInfo.Platform.macOS;
  *&v10 = 136315394;
  v80 = v10;
  while (1)
  {
    while (1)
    {
      v11 = v9[255];
      if (!v11)
      {

LABEL_9:
        v28 = type metadata accessor for UUID();
        (*(*(v28 - 8) + 56))(v6, 1, 1, v28);
        outlined destroy of UUID?(v6);
        v29 = static os_log_type_t.info.getter();
        if (one-time initialization token for interactionsLoggingEnabled != -1)
        {
          swift_once();
        }

        if (interactionsLoggingEnabled)
        {
          v87 = 0;
          v88 = 0xE000000000000000;
          _StringGuts.grow(_:)(91);
          MEMORY[0x1C68F3410](0xD000000000000017, v83 | 0x8000000000000000);
          v86 = a1;
          _print_unlocked<A, B>(_:_:)();
          MEMORY[0x1C68F3410](0xD000000000000042, v82 | 0x8000000000000000);
          v30 = v87;
          v31 = v88;
          if (one-time initialization token for interactionsLogger != -1)
          {
            swift_once();
          }

          v32 = type metadata accessor for Logger();
          __swift_project_value_buffer(v32, interactionsLogger);

          v33 = Logger.logObject.getter();

          if (os_log_type_enabled(v33, v29))
          {
            v34 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            v87 = v35;
            *v34 = v80;
            *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v8, &v87);
            *(v34 + 12) = 2080;
            v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v87);

            *(v34 + 14) = v36;
            _os_log_impl(&dword_1C1358000, v33, v29, "%s%s", v34, 0x16u);
            swift_arrayDestroy();
            v37 = v35;
            v9 = &static ComponentInfo.Platform.macOS;
            MEMORY[0x1C6902A30](v37, -1, -1);
            MEMORY[0x1C6902A30](v34, -1, -1);
          }

          else
          {
          }
        }

        goto LABEL_18;
      }

      v12 = *(a1 + 16);
      v13 = *(v11 + 32);

      if (!REEntityGetCustomComponent())
      {
        goto LABEL_9;
      }

      Object = RECustomComponentGetObject();
      if (!Object)
      {
        goto LABEL_9;
      }

      v15 = *(Object + 1);
      v16 = Object[7];
      v17 = Object[6];
      v18 = Object[5];
      v19 = Object[4];
      v20 = Object[3];
      v21 = Object[2];
      v22 = Object[1];
      v23 = *Object;
      UUID.init(uuid:)();
      v24 = type metadata accessor for UUID();
      (*(*(v24 - 8) + 56))(v6, 0, 1, v24);
      outlined destroy of UUID?(v6);
      type metadata accessor for __RKEntityTapTrigger();
      v25 = swift_allocObject();
      *(v25 + 24) = 0;
      swift_beginAccess();
      *(v25 + 24) = a1;
      *(v25 + 16) = 0;
      *(v25 + 18) = 0;
      swift_beginAccess();
      *(v25 + 16) = 0;

      v26 = __RKEntityInteractionManager.__performInteractions(matching:on:)(v25, 0);

      if (v26)
      {
        v87 = v84;
        v88 = v8;
        v79 = static os_log_type_t.info.getter();
        specialized InteractionsLogger.log(_:_:)(v79, &v87, partial apply for implicit closure #1 in __RKEntityInteractionManager.performTapInteraction(for:), a1);

        return 1;
      }

      v87 = v84;
      v88 = v8;
      v27 = static os_log_type_t.info.getter();
      specialized InteractionsLogger.log(_:_:)(v27, &v87, partial apply for implicit closure #2 in __RKEntityInteractionManager.performTapInteraction(for:), a1);
LABEL_18:
      v38 = *(a1 + 16);
      Parent = REEntityGetParent();
      if (!Parent)
      {

        v87 = v84;
        v88 = v8;
        v77 = static os_log_type_t.info.getter();
        specialized InteractionsLogger.log(_:_:)(v77, &v87);

        return 0;
      }

      v40 = Parent;
      if (!REEntityGetSwiftObject())
      {
        break;
      }

      type metadata accessor for Entity();
      a1 = swift_dynamicCastClassUnconditional();
    }

    if (REEntityIsBeingDestroyed())
    {
      break;
    }

    if (one-time initialization token for customComponentTypeObjectIdToHandles != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v41 = static SceneManager.customComponentTypeObjectIdToHandles;
    if (!*(static SceneManager.customComponentTypeObjectIdToHandles + 16) || (v42 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent), (v43 & 1) == 0))
    {
      swift_endAccess();
      v45 = specialized static SceneManager.customComponentTypeHelper(_:typeName:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent, 0, 0);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = static SceneManager.customComponentTypeObjectIdToHandles;
      v86 = static SceneManager.customComponentTypeObjectIdToHandles;
      static SceneManager.customComponentTypeObjectIdToHandles = 0x8000000000000000;
      v48 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
      v50 = *(v47 + 16);
      v51 = (v49 & 1) == 0;
      v52 = __OFADD__(v50, v51);
      v53 = v50 + v51;
      if (v52)
      {
        goto LABEL_60;
      }

      v54 = v49;
      if (*(v47 + 24) >= v53)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_31;
        }

        v57 = v48;
        specialized _NativeDictionary.copy()();
        v48 = v57;
        v9 = &static ComponentInfo.Platform.macOS;
        v56 = v86;
        if ((v54 & 1) == 0)
        {
          goto LABEL_34;
        }

LABEL_32:
        *(v56[7] + 8 * v48) = v45;
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v53, isUniquelyReferenced_nonNull_native);
        v48 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
        if ((v54 & 1) != (v55 & 1))
        {
          goto LABEL_63;
        }

LABEL_31:
        v56 = v86;
        if (v54)
        {
          goto LABEL_32;
        }

LABEL_34:
        v56[(v48 >> 6) + 8] |= 1 << v48;
        *(v56[6] + 8 * v48) = &type metadata for __EntityInfoComponent;
        *(v56[7] + 8 * v48) = v45;
        v58 = v56[2];
        v52 = __OFADD__(v58, 1);
        v59 = v58 + 1;
        if (v52)
        {
          goto LABEL_61;
        }

        v56[2] = v59;
      }

      static SceneManager.customComponentTypeObjectIdToHandles = v56;
      goto LABEL_37;
    }

    v44 = *(*(v41 + 56) + 8 * v42);
LABEL_37:
    swift_endAccess();
    if (!REEntityGetCustomComponent())
    {
      goto LABEL_56;
    }

    v60 = RECustomComponentGetObject();
    if (!v60)
    {
      goto LABEL_56;
    }

    v61 = *v60;
    if (*(v60 + 8) || !v61)
    {
      v67 = *(v60 + 8);
    }

    else
    {
      v62 = *v61;
      v63 = String.init(utf8String:)();
      if (v64)
      {
        v65 = v63;
      }

      else
      {
        v65 = 0;
      }

      if (v64)
      {
        v66 = v64;
      }

      else
      {
        v66 = 0xE000000000000000;
      }

      v61 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v62 == 42, v65, v66);

      type metadata accessor for IntrospectionDataCleanupHelper();
      *(swift_allocObject() + 16) = v61;
    }

    if (!v61)
    {
      goto LABEL_62;
    }

    v68 = String.init(utf8String:)();
    if (v69)
    {
      v70 = v69;
    }

    else
    {
      v68 = 0;
      v70 = 0xE000000000000000;
    }

    v71 = MEMORY[0x1C68F3280](v68, v70);

    v72 = NSClassFromString(v71);

    v9 = &static ComponentInfo.Platform.macOS;
    if (!v72)
    {
      goto LABEL_56;
    }

    swift_getObjCClassMetadata();
    type metadata accessor for Entity();
    v73 = swift_dynamicCastMetatype();
    if (v73)
    {
      v74 = (*(v73 + 232))();
      v75 = *(v74 + 16);

      MEMORY[0x1C68F9740](v75, 0);
      *(v74 + 16) = v40;
      MEMORY[0x1C68F9740](v40, v74);

      a1 = v74;
    }

    else
    {
LABEL_56:
      v76 = makeEntity(for:)(v40);

      a1 = v76;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t implicit closure #1 in __RKEntityInteractionManager.performTapInteraction(for:)()
{
  _StringGuts.grow(_:)(71);
  MEMORY[0x1C68F3410](0xD000000000000035, 0x80000001C18EF060);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0xD000000000000010, 0x80000001C18EF0A0);
  return 0;
}

uint64_t implicit closure #2 in __RKEntityInteractionManager.performTapInteraction(for:)()
{
  _StringGuts.grow(_:)(65);
  MEMORY[0x1C68F3410](0xD000000000000030, 0x80000001C18EF0C0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0x676E69797274202CLL, 0xEF746E6572617020);
  return 0;
}

uint64_t __RKEntityInteractionManager.containsChangeSceneAction(action:)()
{
  type metadata accessor for __RKChangeSceneAction();
  if (swift_dynamicCastClass())
  {
    return 1;
  }

  type metadata accessor for __RKEntityActionGroup();
  v1 = swift_dynamicCastClass();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  swift_beginAccess();
  v3 = *(v2 + 112);
  if (v3 >> 62)
  {
LABEL_20:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  do
  {
    v0 = v4 != v5;
    if (v4 == v5)
    {
      break;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1C68F41F0](v5, v3);
      if (__OFADD__(v5, 1))
      {
LABEL_15:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_20;
      }

      v6 = *(v3 + 8 * v5 + 32);

      if (__OFADD__(v5, 1))
      {
        goto LABEL_15;
      }
    }

    v7 = __RKEntityInteractionManager.containsChangeSceneAction(action:)(v6);

    ++v5;
  }

  while ((v7 & 1) == 0);

  return v0;
}

uint64_t __RKEntityInteractionManager.interactions(matching:entities:)(uint64_t a1, uint64_t a2)
{
  v104 = a1;
  v120[0] = 91;
  v120[1] = 0xE100000000000000;
  v118 = 0;
  v119 = 0xE000000000000000;

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0, 0xE000000000000000);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v4 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v4);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v5 = 0xE100000000000000;
  v121 = MEMORY[0x1E69E7CC0];
  v110 = 91;
  v6 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v6, v120, partial apply for implicit closure #1 in __RKEntityInteractionManager.interactions(matching:entities:), v2);
  swift_beginAccess();
  v105 = v2;
  v7 = *(v2 + 64);
  if (v7 >> 62)
  {
    goto LABEL_150;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
LABEL_139:
    MEMORY[0x1EEE9AC00](v7);
    v87[2] = &v121;
    v116 = v110;
    v117 = v5;
    v85 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v85, &v116, partial apply for implicit closure #9 in __RKEntityInteractionManager.interactions(matching:entities:), v87);

    return v121;
  }

  while (2)
  {
    v109 = v7 & 0xC000000000000001;
    v100 = v7 & 0xFFFFFFFFFFFFFF8;
    v99 = v7 + 32;
    v103 = "s not match trigger";
    v94 = "eractions(matching:entities:)";
    v92 = " !interaction.enabled";
    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >= 0)
    {
      v10 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v10 = a2;
    }

    v90 = v10;
    v96 = a2 & 0xC000000000000001;
    v111 = a2;
    v95 = a2 + 32;
    v107 = v7;

    v11 = 0;
    v102 = MEMORY[0x1E69E7CC0];
    *&v12 = 136315394;
    v106 = v12;
    v93 = xmmword_1C1898160;
    v112 = v5;
    v108 = v8;
    while (1)
    {
      if (v109)
      {
        v7 = MEMORY[0x1C68F41F0](v11, v107);
        v13 = v7;
        v14 = __OFADD__(v11++, 1);
        if (v14)
        {
          goto LABEL_144;
        }
      }

      else
      {
        if (v11 >= *(v100 + 16))
        {
          goto LABEL_148;
        }

        v13 = *(v99 + 8 * v11);

        v14 = __OFADD__(v11++, 1);
        if (v14)
        {
          goto LABEL_144;
        }
      }

      v15 = static os_log_type_t.info.getter();
      if (one-time initialization token for interactionsLoggingEnabled != -1)
      {
        swift_once();
      }

      v16 = interactionsLoggingEnabled;
      if (interactionsLoggingEnabled)
      {
        v116 = 0;
        v117 = 0xE000000000000000;
        _StringGuts.grow(_:)(19);
        MEMORY[0x1C68F3410](0xD000000000000011, v103 | 0x8000000000000000);
        v115 = v13;
        _print_unlocked<A, B>(_:_:)();
        v17 = v116;
        a2 = v117;
        if (one-time initialization token for interactionsLogger != -1)
        {
          swift_once();
        }

        v18 = type metadata accessor for Logger();
        __swift_project_value_buffer(v18, interactionsLogger);

        v19 = Logger.logObject.getter();

        if (os_log_type_enabled(v19, v15))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v116 = v21;
          *v20 = v106;
          *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v112, &v116);
          *(v20 + 12) = 2080;
          v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, a2, &v116);

          *(v20 + 14) = v22;
          _os_log_impl(&dword_1C1358000, v19, v15, "%s%s", v20, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1C6902A30](v21, -1, -1);
          v23 = v20;
          v5 = v112;
          MEMORY[0x1C6902A30](v23, -1, -1);
        }

        else
        {
        }
      }

      swift_beginAccess();
      if (*(v13 + 40))
      {
        break;
      }

      v34 = static os_log_type_t.info.getter();
      if (v16)
      {
        v35 = v34;
        if (one-time initialization token for interactionsLogger != -1)
        {
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        __swift_project_value_buffer(v36, interactionsLogger);

        v37 = Logger.logObject.getter();

        if (os_log_type_enabled(v37, v35))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v116 = v39;
          *v38 = v106;
          *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v5, &v116);
          *(v38 + 12) = 2080;
          v40 = 0xD000000000000025;
          v41 = &v114;
          goto LABEL_50;
        }

LABEL_51:

        a2 = static os_log_type_t.info.getter();
        v116 = 0;
        v117 = 0xE000000000000000;
        _StringGuts.grow(_:)(17);
        MEMORY[0x1C68F3410](0x65746E6920646E45, 0xEF206E6F69746372);
        v115 = v13;
        _print_unlocked<A, B>(_:_:)();
        v44 = v116;
        v43 = v117;
        if (one-time initialization token for interactionsLogger != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v36, interactionsLogger);
        v45 = v112;

        v46 = Logger.logObject.getter();

        if (os_log_type_enabled(v46, a2))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v116 = v48;
          *v47 = v106;
          *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v45, &v116);
          *(v47 + 12) = 2080;
          v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v43, &v116);

          *(v47 + 14) = v49;
          _os_log_impl(&dword_1C1358000, v46, a2, "%s%s", v47, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1C6902A30](v48, -1, -1);
          MEMORY[0x1C6902A30](v47, -1, -1);
        }

        else
        {
        }

        v5 = v45;
        goto LABEL_9;
      }

LABEL_7:
      static os_log_type_t.info.getter();
LABEL_8:

LABEL_9:
      if (v11 == v108)
      {

        goto LABEL_139;
      }
    }

    swift_beginAccess();
    v24 = *(**(v13 + 16) + 184);

    LOBYTE(v24) = v24(v104);

    if ((v24 & 1) == 0)
    {
      v42 = static os_log_type_t.info.getter();
      if (v16)
      {
        v35 = v42;
        if (one-time initialization token for interactionsLogger != -1)
        {
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        __swift_project_value_buffer(v36, interactionsLogger);

        v37 = Logger.logObject.getter();

        if (os_log_type_enabled(v37, v35))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v116 = v39;
          *v38 = v106;
          *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v5, &v116);
          *(v38 + 12) = 2080;
          v40 = 0xD000000000000033;
          v41 = &v113;
LABEL_50:
          *(v38 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, *(v41 - 32) | 0x8000000000000000, &v116);
          _os_log_impl(&dword_1C1358000, v37, v35, "%s%s", v38, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1C6902A30](v39, -1, -1);
          MEMORY[0x1C6902A30](v38, -1, -1);
        }

        goto LABEL_51;
      }

      goto LABEL_7;
    }

    if (!(v102 >> 62))
    {
      v25 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
        goto LABEL_29;
      }

LABEL_58:
      v50 = *(v13 + 16);

      v52 = v111;
      v53 = __RKEntityInteractionManager.doesTrigger(_:containOnly:)(v51, v111);

      if (v53)
      {
        v54 = *(v13 + 16);
        type metadata accessor for __RKEntityTriggerGroup();
        v55 = swift_dynamicCastClass();
        v56 = v52 >> 62;
        v101 = v56;
        if (!v55)
        {
          goto LABEL_96;
        }

        v57 = v55;
        swift_beginAccess();
        v5 = *(v57 + 24);
        if (!(v5 >> 62))
        {
          v58 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v58)
          {
            goto LABEL_96;
          }

LABEL_62:
          v98 = v5 & 0xFFFFFFFFFFFFFF8;
          v97 = v5 + 32;
          v91 = v54;

          a2 = 0;
          while (1)
          {
LABEL_64:
            if ((v5 & 0xC000000000000001) != 0)
            {
              v7 = MEMORY[0x1C68F41F0](a2, v5);
              v14 = __OFADD__(a2++, 1);
              if (v14)
              {
                goto LABEL_145;
              }
            }

            else
            {
              if (a2 >= *(v98 + 16))
              {
                goto LABEL_149;
              }

              v59 = *(v97 + 8 * a2);

              v14 = __OFADD__(a2++, 1);
              if (v14)
              {
                goto LABEL_145;
              }
            }

            if (!v111)
            {
              break;
            }

            if (v56)
            {
              if (!__CocoaSet.count.getter())
              {
                break;
              }
            }

            else if (!*(v9 + 16))
            {
              break;
            }

            v7 = __RKEntityInteractionManager.targetEntity(for:)();
            if (!v7)
            {
              break;
            }

            if (v56)
            {
              v65 = v7;
              v60 = __CocoaSet.count.getter();
              v7 = v65;
            }

            else
            {
              v60 = *(v9 + 16);
            }

            v61 = v96;
            v62 = v95;
            if (v60)
            {
              v63 = 0;
              while (1)
              {
                while (v61)
                {
                  v89 = v7;
                  result = MEMORY[0x1C68F41F0](v63, v111);
                  v14 = __OFADD__(v63++, 1);
                  if (v14)
                  {
                    goto LABEL_155;
                  }

                  v88 = result;
                  swift_unknownObjectRelease();
                  v7 = v89;
                  if (v88 == v89)
                  {
                    goto LABEL_88;
                  }

                  v61 = v96;
                  v62 = v95;
                  if (v63 == v60)
                  {
                    goto LABEL_87;
                  }
                }

                if ((v63 & 0x8000000000000000) != 0)
                {
                  goto LABEL_142;
                }

                if (v63 >= *(v9 + 16))
                {
                  goto LABEL_143;
                }

                if (*(v62 + 8 * v63) == v7)
                {
                  break;
                }

                if (++v63 == v60)
                {
                  goto LABEL_87;
                }
              }

LABEL_88:
            }

            else
            {
LABEL_87:

              v116 = v110;
              v117 = v112;
              v64 = static os_log_type_t.info.getter();
              specialized InteractionsLogger.log(_:_:)(v64, &v116);
            }

            v56 = v101;
            if (a2 == v58)
            {
LABEL_95:

              goto LABEL_96;
            }
          }

          if (a2 == v58)
          {
            goto LABEL_95;
          }

          goto LABEL_64;
        }

        if (v5 < 0)
        {
          v82 = *(v57 + 24);
        }

        v58 = __CocoaSet.count.getter();
        if (v58)
        {
          goto LABEL_62;
        }

LABEL_96:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        inited = swift_initStackObject();
        *(inited + 16) = v93;
        *(inited + 32) = v13;

        v69 = specialized __RKEntityInteractionManager.actions(for:)(inited);
        swift_setDeallocating();
        v70 = *(inited + 16);
        v71 = v101;
        swift_arrayDestroy();
        v5 = v112;
        if (!v111)
        {
          goto LABEL_134;
        }

        if (v71)
        {
          result = __CocoaSet.count.getter();
          if (!result)
          {
            goto LABEL_134;
          }

LABEL_99:
          if (v69 >> 62)
          {
            result = __CocoaSet.count.getter();
            v72 = result;
            if (!result)
            {
              goto LABEL_134;
            }
          }

          else
          {
            v72 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v72)
            {
              goto LABEL_134;
            }
          }

          a2 = 0;
          v73 = v69 & 0xC000000000000001;
          v98 = v69 & 0xFFFFFFFFFFFFFF8;
          v97 = v69 + 32;
          v91 = v69 & 0xC000000000000001;
          while (1)
          {
            if (v73)
            {
              result = MEMORY[0x1C68F41F0](a2, v69);
              v74 = result;
              v14 = __OFADD__(a2++, 1);
              if (v14)
              {
                goto LABEL_152;
              }
            }

            else
            {
              if (a2 >= *(v98 + 16))
              {
                goto LABEL_153;
              }

              v74 = *(v97 + 8 * a2);

              v14 = __OFADD__(a2++, 1);
              if (v14)
              {
LABEL_152:
                __break(1u);
LABEL_153:
                __break(1u);
                goto LABEL_154;
              }
            }

            swift_beginAccess();
            v5 = *(v74 + 16);
            if (v5)
            {
              break;
            }

LABEL_103:

            v5 = v112;
            if (a2 == v72)
            {
              goto LABEL_134;
            }
          }

          v75 = v69;
          if (v71)
          {
            v76 = __CocoaSet.count.getter();
          }

          else
          {
            v76 = *(v9 + 16);
          }

          v77 = v96;
          v78 = v95;
          if (v76)
          {
            v79 = 0;
            do
            {
              if (v77)
              {
                result = MEMORY[0x1C68F41F0](v79, v111);
                v14 = __OFADD__(v79++, 1);
                if (v14)
                {
                  goto LABEL_156;
                }

                v89 = result;
                v7 = swift_unknownObjectRelease();
                v77 = v96;
                v78 = v95;
                if (v89 == v5)
                {
                  goto LABEL_102;
                }
              }

              else
              {
                if ((v79 & 0x8000000000000000) != 0)
                {
                  goto LABEL_146;
                }

                if (v79 >= *(v9 + 16))
                {
                  goto LABEL_147;
                }

                if (*(v78 + 8 * v79) == v5)
                {
LABEL_102:

                  v71 = v101;
                  v69 = v75;
                  v73 = v91;
                  goto LABEL_103;
                }

                ++v79;
              }
            }

            while (v79 != v76);
          }

          v80 = v110;
          v5 = v112;
          v116 = v110;
          v117 = v112;
          v81 = static os_log_type_t.info.getter();
          specialized InteractionsLogger.log(_:_:)(v81, &v116);
          v116 = v80;
          v117 = v5;
          v32 = static os_log_type_t.info.getter();
          v33 = implicit closure #1 in $defer #1 () in __RKEntityInteractionManager.interactions(matching:entities:)partial apply;
        }

        else
        {
          result = *(v9 + 16);
          if (result)
          {
            goto LABEL_99;
          }

LABEL_134:

          MEMORY[0x1C68F3650](v83);
          if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v84 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v102 = v121;
          v116 = v110;
          v117 = v5;
          v32 = static os_log_type_t.info.getter();
          v33 = implicit closure #1 in $defer #1 () in __RKEntityInteractionManager.interactions(matching:entities:)partial apply;
        }
      }

      else
      {
        v66 = v110;
        v5 = v112;
        v116 = v110;
        v117 = v112;
        v67 = static os_log_type_t.info.getter();
        specialized InteractionsLogger.log(_:_:)(v67, &v116);
        v116 = v66;
        v117 = v5;
        v32 = static os_log_type_t.info.getter();
        v33 = implicit closure #1 in $defer #1 () in __RKEntityInteractionManager.interactions(matching:entities:)partial apply;
      }

LABEL_137:
      specialized InteractionsLogger.log(_:_:)(v32, &v116, v33, v13);
      goto LABEL_8;
    }

    v7 = __CocoaSet.count.getter();
    v25 = v7;
    if (!v7)
    {
      goto LABEL_58;
    }

LABEL_29:
    v26 = 0;
    a2 = v102 & 0xC000000000000001;
    v27 = v102 & 0xFFFFFFFFFFFFFF8;
    v5 = v102 + 32;
LABEL_30:
    if (!a2)
    {
      if ((v26 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        v86 = v7;
        v8 = __CocoaSet.count.getter();
        v7 = v86;
        if (!v8)
        {
          goto LABEL_139;
        }

        continue;
      }

      if (v26 >= *(v27 + 16))
      {
        goto LABEL_141;
      }

      if (*(v5 + 8 * v26) == v13)
      {
LABEL_39:
        v30 = v110;
        v5 = v112;
        v116 = v110;
        v117 = v112;
        v31 = static os_log_type_t.info.getter();
        specialized InteractionsLogger.log(_:_:)(v31, &v116);
        v116 = v30;
        v117 = v5;
        v32 = static os_log_type_t.info.getter();
        v33 = implicit closure #1 in $defer #1 () in __RKEntityInteractionManager.interactions(matching:entities:)partial apply;
        goto LABEL_137;
      }

      ++v26;
      goto LABEL_35;
    }

    break;
  }

  result = MEMORY[0x1C68F41F0](v26, v102);
  v14 = __OFADD__(v26++, 1);
  if (!v14)
  {
    v29 = result;
    v7 = swift_unknownObjectRelease();
    if (v29 == v13)
    {
      goto LABEL_39;
    }

LABEL_35:
    if (v26 == v25)
    {
      goto LABEL_58;
    }

    goto LABEL_30;
  }

LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
  return result;
}

uint64_t implicit closure #1 in __RKEntityInteractionManager.interactions(matching:entities:)(uint64_t a1)
{
  _StringGuts.grow(_:)(29);

  strcpy(v7, "Considering ");
  BYTE5(v7[1]) = 0;
  HIWORD(v7[1]) = -5120;
  swift_beginAccess();
  v2 = *(a1 + 64);
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v6 = *(a1 + 64);
    }

    __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v4);

  MEMORY[0x1C68F3410](0x63617265746E6920, 0xEF2973286E6F6974);
  return v7[0];
}

uint64_t implicit closure #9 in __RKEntityInteractionManager.interactions(matching:entities:)(uint64_t *a1)
{
  _StringGuts.grow(_:)(36);

  v2 = *a1;
  if (*a1 >> 62)
  {
    if (v2 < 0)
    {
      v6 = *a1;
    }

    __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v4);

  MEMORY[0x1C68F3410](0xD000000000000018, 0x80000001C18EF250);
  return 0x6E696E7275746552;
}

uint64_t __RKEntityInteractionManager.doesTrigger(_:containOnly:)(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v2 = a2 >> 62;
    if (a2 >> 62)
    {
      goto LABEL_22;
    }

    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      do
      {
        v3 = a2;
        v4 = __RKEntityInteractionManager.targetEntity(for:)();
        if (!v4)
        {
          break;
        }

        if (v2)
        {
          v15 = v4;
          v16 = __CocoaSet.count.getter();
          a2 = v3;
          v2 = v16;
          v4 = v15;
          if (!v2)
          {
LABEL_19:

            return v2;
          }
        }

        else
        {
          a2 = v3;
          v2 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v2)
          {
            goto LABEL_19;
          }
        }

        v5 = 0;
        v6 = a2 & 0xC000000000000001;
        v7 = a2 & 0xFFFFFFFFFFFFFF8;
        v8 = a2 + 32;
        while (1)
        {
          while (v6)
          {
            v9 = v4;
            result = MEMORY[0x1C68F41F0](v5);
            if (__OFADD__(v5++, 1))
            {
              __break(1u);
              return result;
            }

            v12 = result;
            swift_unknownObjectRelease();
            v4 = v9;
            if (v12 == v9)
            {
              goto LABEL_18;
            }

            a2 = v3;
            if (v5 == v2)
            {
LABEL_17:
              v2 = 0;
              goto LABEL_19;
            }
          }

          if ((v5 & 0x8000000000000000) != 0)
          {
            break;
          }

          if (v5 >= *(v7 + 16))
          {
            goto LABEL_21;
          }

          if (*(v8 + 8 * v5) == v4)
          {
LABEL_18:
            v2 = 1;
            goto LABEL_19;
          }

          if (++v5 == v2)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        v13 = a2;
        v14 = __CocoaSet.count.getter();
        a2 = v13;
      }

      while (v14);
    }
  }

  return 1;
}

uint64_t __RKEntityInteractionManager.targetEntity(for:)()
{
  type metadata accessor for __RKEntityCollisionTrigger();
  v0 = swift_dynamicCastClass();
  if (v0 || (type metadata accessor for __RKEntityProximityTrigger(), (v0 = swift_dynamicCastClass()) != 0) || (type metadata accessor for __RKEntityTapTrigger(), (v0 = swift_dynamicCastClass()) != 0))
  {
    v1 = v0;
    swift_beginAccess();
    v2 = *(v1 + 24);
  }

  else
  {
    type metadata accessor for __RKEntityTriggerGroup();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = v4;
      swift_beginAccess();
      v6 = *(v5 + 24);
      if (v6 >> 62)
      {
LABEL_22:
        v7 = __CocoaSet.count.getter();
      }

      else
      {
        v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      for (i = 0; v7 != i; ++i)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1C68F41F0](i, v6);
          if (__OFADD__(i, 1))
          {
LABEL_18:
            __break(1u);
            break;
          }
        }

        else
        {
          if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_22;
          }

          v9 = *(v6 + 8 * i + 32);

          if (__OFADD__(i, 1))
          {
            goto LABEL_18;
          }
        }

        v2 = __RKEntityInteractionManager.targetEntity(for:)(v9);

        if (v2)
        {

          return v2;
        }
      }
    }

    return 0;
  }

  return v2;
}

uint64_t __RKEntityInteractionManager.action(for:)(uint64_t a1)
{
  type metadata accessor for __RKEntityAction();
  swift_beginAccess();
  v3 = *(v1 + 40);

  v4 = static __RKEntityAction.action(for:entityLookupTable:)(a1, v3);

  return v4;
}

uint64_t static __RKEntityAction.action(for:entityLookupTable:)(uint64_t a1, uint64_t a2)
{
  *&v390 = a2;
  *&v391 = a1;
  v380 = type metadata accessor for __RKEntityPlayTimelineActionArguments(0);
  v2 = *(*(v380 - 8) + 64);
  MEMORY[0x1EEE9AC00](v380);
  v381 = &v351 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v373 = type metadata accessor for __RKEntitySetOpacityActionArguments(0);
  v4 = *(*(v373 - 8) + 64);
  MEMORY[0x1EEE9AC00](v373);
  v374 = &v351 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v372 = type metadata accessor for __RKEntitySpinActionArguments(0);
  v6 = *(*(v372 - 1) + 64);
  MEMORY[0x1EEE9AC00](v372);
  v378 = &v351 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v375 = type metadata accessor for __RKEntityLookAtCameraActionArguments(0);
  v8 = *(*(v375 - 1) + 64);
  MEMORY[0x1EEE9AC00](v375);
  v379 = &v351 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v382 = type metadata accessor for __RKEntitySwapEntityActionArguments(0);
  v10 = *(*(v382 - 8) + 64);
  MEMORY[0x1EEE9AC00](v382);
  v383 = &v351 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v371 = type metadata accessor for __RKEntityOrbitEntityActionArguments(0);
  v12 = *(*(v371 - 8) + 64);
  MEMORY[0x1EEE9AC00](v371);
  v376 = &v351 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v368 = type metadata accessor for __RKEntityForceActionArguments(0);
  v14 = *(*(v368 - 8) + 64);
  MEMORY[0x1EEE9AC00](v368);
  v370 = &v351 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v369 = type metadata accessor for __RKEntityTransformActionArguments(0);
  v16 = *(*(v369 - 1) + 64);
  MEMORY[0x1EEE9AC00](v369);
  v387 = &v351 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v365 = type metadata accessor for __RKEntityFadeActionArguments(0);
  v18 = *(*(v365 - 8) + 64);
  MEMORY[0x1EEE9AC00](v365);
  v367 = &v351 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  v388 = v20;
  v389 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v384 = &v351 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v359 = type metadata accessor for __RKChangeSceneActionArguments(0);
  v24 = *(*(v359 - 8) + 64);
  MEMORY[0x1EEE9AC00](v359);
  v361 = &v351 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v360 = type metadata accessor for __RKEntityEmphasisActionArguments(0);
  v26 = *(*(v360 - 1) + 64);
  MEMORY[0x1EEE9AC00](v360);
  v364 = &v351 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v358 = type metadata accessor for __RKEntityAudioActionArguments(0);
  v28 = *(*(v358 - 1) + 64);
  MEMORY[0x1EEE9AC00](v358);
  v377 = &v351 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v385 = type metadata accessor for __RKEntityHideActionArguments(0);
  v30 = *(*(v385 - 1) + 64);
  v31 = MEMORY[0x1EEE9AC00](v385);
  v357 = &v351 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v366 = &v351 - v33;
  v386 = type metadata accessor for __RKEntityShowActionArguments(0);
  v34 = *(*(v386 - 1) + 64);
  v35 = MEMORY[0x1EEE9AC00](v386);
  v363 = &v351 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v362 = &v351 - v37;
  v38 = type metadata accessor for __RKEntityToggleVisibilityActionArguments(0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v355 = &v351 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for __RKEntityStopAnimateActionArguments(0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v354 = &v351 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x1EEE9AC00](v44 - 8);
  v353 = &v351 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v352 = &v351 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v356 = &v351 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v351 = &v351 - v53;
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v351 - v54;
  started = type metadata accessor for __RKEntityStartAnimateActionArguments(0);
  v57 = *(*(started - 1) + 64);
  MEMORY[0x1EEE9AC00](started);
  v59 = &v351 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for __RKEntityToggleAnimateActionArguments(0);
  v61 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60 - 8);
  v63 = &v351 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for __RKEntityCustomActionArguments(0);
  v65 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64);
  v67 = &v351 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for __RKEntityActionSpecification(0);
  v69 = *(v68 - 8);
  v70 = *(v69 + 64);
  v71 = MEMORY[0x1EEE9AC00](v68);
  v73 = &v351 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v71);
  v75 = &v351 - v74;
  _s10RealityKit29__RKEntityActionSpecificationOWOcTm_0(v391, &v351 - v74, type metadata accessor for __RKEntityActionSpecification);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v67 = v361;
      outlined init with take of __RKEntityPlayTimelineActionArguments(v75, v361, type metadata accessor for __RKChangeSceneActionArguments);
      v182 = __RKEntityLookupTable.entity(for:)(v67);
      v183 = v384;
      (*(v389 + 16))(v384, &v67[*(v359 + 20)], v388);
      v184 = type metadata accessor for __RKChangeSceneAction();
      v185 = *(v184 + 48);
      v186 = *(v184 + 52);
      swift_allocObject();
      v88 = specialized __RKChangeSceneAction.init(rootEntity:targetSceneIdentifier:)(v182, v183);

      v148 = type metadata accessor for __RKChangeSceneActionArguments;
      goto LABEL_232;
    case 2u:
      outlined init with take of __RKEntityPlayTimelineActionArguments(v75, v67, type metadata accessor for __RKEntityCustomActionArguments);
      v142 = __RKEntityLookupTable.entity(for:)(v67);
      v143 = &v67[*(v64 + 20)];
      v145 = *v143;
      v144 = *(v143 + 1);
      v146 = *&v67[*(v64 + 24)];
      type metadata accessor for __RKEntityCustomAction();
      v147 = swift_allocObject();
      v147[14] = 0;
      v147[20] = 0;
      v147[19] = 0;
      v147[15] = 0;
      v147[16] = v145;
      v147[17] = v144;
      swift_beginAccess();
      v147[15] = 0;
      v147[14] = 0;
      v147[18] = v146;
      swift_beginAccess();
      v147[20] = 0;
      v147[19] = 0;

      v88 = __RKEntityAction.init(targetEntity:)(v142);
      v148 = type metadata accessor for __RKEntityCustomActionArguments;
      goto LABEL_232;
    case 3u:
      v151 = v364;
      outlined init with take of __RKEntityPlayTimelineActionArguments(v75, v364, type metadata accessor for __RKEntityEmphasisActionArguments);
      v152 = __RKEntityLookupTable.entity(for:)(v151);
      v153 = v360[6];
      v154 = v151 + v360[5];
      if (*(v154 + 4))
      {
        v155 = 1.0;
      }

      else
      {
        v155 = *v154;
      }

      v156 = *(v151 + v153);
      if (*(v151 + v153 + 4))
      {
        v157 = 3.0;
      }

      else
      {
        v157 = *(v151 + v153);
      }

      if (*(v151 + v360[7]) == 3)
      {
        v158 = 0;
      }

      else
      {
        v158 = *(v151 + v360[7]);
      }

      if (*(v151 + v360[8]) == 8)
      {
        v159 = 0;
      }

      else
      {
        v159 = *(v151 + v360[8]);
      }

      type metadata accessor for __RKEntityEmphasisAction();
      v160 = swift_allocObject();
      *(v160 + 120) = 0u;
      *(v160 + 136) = 0u;
      *(v160 + 152) = 0u;
      *(v160 + 168) = 0u;
      *(v160 + 184) = 0u;
      *(v160 + 200) = 0;
      *(v160 + 208) = 1;
      *(v160 + 108) = v155;
      *(v160 + 112) = v157;
      *(v160 + 116) = v158;
      *(v160 + 117) = v159;
      v88 = __RKEntityAction.init(targetEntity:)(v152);
      v161 = type metadata accessor for __RKEntityEmphasisActionArguments;
      v162 = v151;
      goto LABEL_233;
    case 4u:
      v112 = v367;
      outlined init with take of __RKEntityPlayTimelineActionArguments(v75, v367, type metadata accessor for __RKEntityFadeActionArguments);
      v115 = __RKEntityLookupTable.entity(for:)(v112);
      v116 = *(v365 + 24);
      v117 = *(v112 + *(v365 + 20));
      v118 = *(v112 + v116);
      if (*(v112 + v116 + 4))
      {
        v119 = 1.0;
      }

      else
      {
        v119 = *(v112 + v116);
      }

      type metadata accessor for __RKEntityFadeAction();
      v120 = swift_allocObject();
      *(v120 + 108) = v117;
      *(v120 + 112) = v119;
      v88 = __RKEntityAction.init(targetEntity:)(v115);
      v114 = type metadata accessor for __RKEntityFadeActionArguments;
      goto LABEL_135;
    case 5u:
      v205 = *v75;
      v204 = *(v75 + 1);
      if (v75[8])
      {
        v206 = 1.0;
      }

      else
      {
        v206 = *(v75 + 1);
      }

      type metadata accessor for __RKFadeSceneAction();
      v207 = swift_allocObject();
      *(v207 + 108) = v205;
      *(v207 + 112) = v206;
      return __RKEntityAction.init(targetEntity:)(0);
    case 6u:
      v221 = *v75;
      v222 = *(v75 + 1);
      v223 = v75[16];
      v224 = *(v75 + 3);
      v225 = v75[32];
      v226 = v75[33];
      v227 = *(v222 + 16);
      v228 = MEMORY[0x1E69E7CC0];
      if (v227)
      {
        LODWORD(v386) = v221;
        LODWORD(v387) = v225;
        v388 = v224;
        LODWORD(v389) = v223;
        LODWORD(v391) = v226;
        v392 = MEMORY[0x1E69E7CC0];

        specialized ContiguousArray.reserveCapacity(_:)();
        v229 = v222 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
        v230 = *(v69 + 72);
        v231 = v390;
        do
        {
          _s10RealityKit29__RKEntityActionSpecificationOWOcTm_0(v229, v73, type metadata accessor for __RKEntityActionSpecification);
          static __RKEntityAction.action(for:entityLookupTable:)(v73, v231);
          outlined destroy of __RKEntityPlayTimelineActionArguments(v73, type metadata accessor for __RKEntityActionSpecification);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v232 = *(v392 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v229 += v230;
          --v227;
        }

        while (v227);

        v228 = v392;
        LOBYTE(v226) = v391;
        LOBYTE(v223) = v389;
        v224 = v388;
        LOBYTE(v225) = v387;
        LOBYTE(v221) = v386;
      }

      LOBYTE(v392) = v221;
      type metadata accessor for __RKEntityActionGroup();
      swift_allocObject();
      v88 = __RKEntityActionGroup.init(actions:ordering:loopCount:)(v228, &v392, v224, v225);
      swift_beginAccess();
      *(v88 + 89) = v223 & 1;

      swift_beginAccess();
      *(v88 + 90) = v226 & 1;
      return v88;
    case 7u:
      v76 = v366;
      outlined init with take of __RKEntityPlayTimelineActionArguments(v75, v366, type metadata accessor for __RKEntityHideActionArguments);
      v163 = __RKEntityLookupTable.entity(for:)(v76);
      v164 = v385[6];
      v165 = v76 + v385[5];
      if (*(v165 + 4))
      {
        v166 = 1.0;
      }

      else
      {
        v166 = *v165;
      }

      if (*(v76 + v164 + 4))
      {
        v167 = 10.0;
      }

      else
      {
        v167 = *(v76 + v164);
      }

      if (*(v76 + v385[7]) == 10)
      {
        v168 = 0;
      }

      else
      {
        v168 = *(v76 + v385[7]);
      }

      if (*(v76 + v385[8]) == 3)
      {
        v169 = 0;
      }

      else
      {
        v169 = *(v76 + v385[8]);
      }

      v170 = v385[10];
      v171 = *(v76 + v385[9]);
      v172 = (v171 == 2) | v171;
      if (*(v76 + v170 + 4))
      {
        v173 = 0.0;
      }

      else
      {
        v173 = *(v76 + v170);
      }

      v174 = v76 + v385[13];
      if (*(v174 + 4))
      {
        v175 = 0.0;
      }

      else
      {
        v175 = *v174;
      }

      v176 = v76 + v385[12];
      v177 = *(v76 + v385[11]);
      if (*(v176 + 4))
      {
        v178 = 0.0;
      }

      else
      {
        v178 = *v176;
      }

      if (*(v76 + v385[14]) == 3)
      {
        v179 = 0;
      }

      else
      {
        v179 = *(v76 + v385[14]);
      }

      if (*(v76 + v385[15]) == 10)
      {
        v180 = 0;
      }

      else
      {
        v180 = *(v76 + v385[15]);
      }

      type metadata accessor for __RKEntityHideAction();
      v181 = swift_allocObject();
      *(v181 + 174) = 0;
      *(v181 + 176) = 0u;
      *(v181 + 192) = 0u;
      *(v181 + 208) = 0u;
      *(v181 + 224) = 0u;
      *(v181 + 240) = 0u;
      *(v181 + 256) = 0u;
      *(v181 + 272) = 0u;
      *(v181 + 288) = 0u;
      *(v181 + 304) = 0u;
      *(v181 + 320) = 0u;
      *(v181 + 336) = 0;
      *(v181 + 144) = v166;
      *(v181 + 148) = v167;
      *(v181 + 152) = v168;
      *(v181 + 153) = v169;
      *(v181 + 164) = v175;
      *(v181 + 168) = v178;
      *(v181 + 160) = v177 & 1;
      *(v181 + 154) = v172 & 1;
      *(v181 + 156) = v173;
      *(v181 + 172) = v179;
      *(v181 + 173) = v180;
      *(v181 + 112) = 0;
      *(v181 + 120) = 1;
      *(v181 + 128) = 0;
      *(v181 + 136) = 1;
      *(v181 + 140) = 0;
      v88 = __RKEntityAction.init(targetEntity:)(v163);
      v96 = type metadata accessor for __RKEntityHideActionArguments;
      goto LABEL_176;
    case 8u:
      v63 = v370;
      outlined init with take of __RKEntityPlayTimelineActionArguments(v75, v370, type metadata accessor for __RKEntityForceActionArguments);
      *&v391 = __RKEntityLookupTable.entity(for:)(v63);
      v281 = &v63[*(v368 + 20)];
      v282 = *v281;
      v283 = *(v281 + 1);
      v284 = v281[16];
      v285 = &v63[*(v368 + 24)];
      v286 = *v285;
      v287 = *(v285 + 1);
      v288 = v285[16];
      type metadata accessor for __RKEntityForceAction();
      v289 = swift_allocObject();
      *(v289 + 112) = 0;
      *(v289 + 120) = 0;
      *(v289 + 128) = 1;
      *(v289 + 144) = 0;
      *(v289 + 152) = 0;
      *(v289 + 160) = 1;
      *(v289 + 168) = 0u;
      *(v289 + 184) = 0u;
      *(v289 + 200) = 0;
      swift_beginAccess();
      *(v289 + 112) = v282;
      *(v289 + 120) = v283;
      *(v289 + 128) = v284;
      swift_beginAccess();
      *(v289 + 144) = v286;
      *(v289 + 152) = v287;
      *(v289 + 160) = v288;
      v88 = __RKEntityAction.init(targetEntity:)(v391);
      v122 = type metadata accessor for __RKEntityForceActionArguments;
      goto LABEL_183;
    case 9u:
      v76 = v362;
      outlined init with take of __RKEntityPlayTimelineActionArguments(v75, v362, type metadata accessor for __RKEntityShowActionArguments);
      v123 = __RKEntityLookupTable.entity(for:)(v76);
      v124 = v386[6];
      v125 = v76 + v386[5];
      if (*(v125 + 4))
      {
        v126 = 1.0;
      }

      else
      {
        v126 = *v125;
      }

      if (*(v76 + v124 + 4))
      {
        v127 = 10.0;
      }

      else
      {
        v127 = *(v76 + v124);
      }

      if (*(v76 + v386[7]) == 10)
      {
        v128 = 0;
      }

      else
      {
        v128 = *(v76 + v386[7]);
      }

      if (*(v76 + v386[8]) == 3)
      {
        v129 = 0;
      }

      else
      {
        v129 = *(v76 + v386[8]);
      }

      v130 = v386[10];
      v131 = *(v76 + v386[9]);
      v132 = (v131 == 2) | v131;
      if (*(v76 + v130 + 4))
      {
        v133 = 1.0;
      }

      else
      {
        v133 = *(v76 + v130);
      }

      v134 = v76 + v386[13];
      if (*(v134 + 4))
      {
        v135 = 0.0;
      }

      else
      {
        v135 = *v134;
      }

      v136 = v76 + v386[12];
      v137 = *(v76 + v386[11]);
      if (*(v136 + 4))
      {
        v138 = 0.0;
      }

      else
      {
        v138 = *v136;
      }

      if (*(v76 + v386[14]) == 3)
      {
        v139 = 0;
      }

      else
      {
        v139 = *(v76 + v386[14]);
      }

      if (*(v76 + v386[15]) == 10)
      {
        v140 = 0;
      }

      else
      {
        v140 = *(v76 + v386[15]);
      }

      type metadata accessor for __RKEntityShowAction();
      v141 = swift_allocObject();
      *(v141 + 176) = 0u;
      *(v141 + 192) = 0u;
      *(v141 + 208) = 0u;
      *(v141 + 224) = 0u;
      *(v141 + 240) = 0u;
      *(v141 + 256) = 0u;
      *(v141 + 272) = 0u;
      *(v141 + 288) = 0u;
      *(v141 + 304) = 0u;
      *(v141 + 320) = 0u;
      *(v141 + 336) = 0;
      *(v141 + 144) = v126;
      *(v141 + 148) = v127;
      *(v141 + 152) = v128;
      *(v141 + 153) = v129;
      *(v141 + 154) = v132 & 1;
      *(v141 + 156) = v133;
      *(v141 + 164) = v135;
      *(v141 + 168) = v138;
      *(v141 + 160) = v137 & 1;
      *(v141 + 172) = v139;
      *(v141 + 173) = v140;
      *(v141 + 112) = 0;
      *(v141 + 120) = 1;
      *(v141 + 128) = 0;
      *(v141 + 136) = 1;
      *(v141 + 140) = 0;
      v88 = __RKEntityAction.init(targetEntity:)(v123);
      v96 = type metadata accessor for __RKEntityShowActionArguments;
      goto LABEL_176;
    case 0xAu:
      outlined init with take of __RKEntityPlayTimelineActionArguments(v75, v59, type metadata accessor for __RKEntityStartAnimateActionArguments);
      v267 = __RKEntityLookupTable.entity(for:)(v59);
      v268 = *&v59[started[5]];
      LODWORD(v391) = v59[started[6]];
      v269 = *&v59[started[7]];
      v270 = *&v59[started[8]];
      v271 = started[9];
      LODWORD(v386) = v59[started[10]];
      v272 = *&v59[started[11]];
      v273 = v59[v271];
      LODWORD(v387) = v59[started[12]];
      v274 = started[14];
      v275 = &v59[started[13]];
      if (v275[8])
      {
        v276 = 1.0;
      }

      else
      {
        v276 = *v275;
      }

      outlined init with copy of UUID?(&v59[v274], v55);
      v277 = v388;
      v278 = *(v389 + 48);
      v279 = v278(v55, 1, v388);
      outlined destroy of UUID?(v55);
      if (v279 == 1)
      {
        v280 = 0;
      }

      else
      {
        v346 = v351;
        outlined init with copy of UUID?(&v59[v274], v351);
        result = v278(v346, 1, v277);
        if (result == 1)
        {
          goto LABEL_244;
        }

        v280 = __RKEntityLookupTable.entity(for:)(v346);
        (*(v389 + 8))(v346, v277);
      }

      type metadata accessor for __RKEntityStartAnimateAction();
      swift_allocObject();

      v88 = __RKEntityAnimateAction.init(targetEntity:)(v347);
      outlined destroy of __RKEntityPlayTimelineActionArguments(v59, type metadata accessor for __RKEntityStartAnimateActionArguments);
      if (!v267)
      {
        goto LABEL_242;
      }

      v348 = *(v88 + 160);
      *(v88 + 160) = v280;

      swift_beginAccess();
      *(v88 + 105) = v391;
      *(v88 + 112) = v268;
      *(v88 + 137) = v386;
      *(v88 + 120) = v269;
      *(v88 + 128) = v270;
      *(v88 + 140) = v272;
      if (v273)
      {
        v349 = 3;
      }

      else
      {
        v349 = 1;
      }

      if (v268 == 1)
      {
        v349 = 0;
      }

      *(v88 + 136) = v349;
      *(v88 + 145) = v387 & 1;
      *(v88 + 152) = v276;
      return v88;
    case 0xBu:
      v112 = v354;
      outlined init with take of __RKEntityPlayTimelineActionArguments(v75, v354, type metadata accessor for __RKEntityStopAnimateActionArguments);
      v113 = __RKEntityLookupTable.entity(for:)(v112);
      type metadata accessor for __RKEntityStopAnimateAction();
      swift_allocObject();
      v88 = __RKEntityAnimateAction.init(targetEntity:)(v113);
      v114 = type metadata accessor for __RKEntityStopAnimateActionArguments;
      goto LABEL_135;
    case 0xCu:
      outlined init with take of __RKEntityPlayTimelineActionArguments(v75, v63, type metadata accessor for __RKEntityToggleAnimateActionArguments);
      v121 = __RKEntityLookupTable.entity(for:)(v63);
      type metadata accessor for __RKEntityToggleAnimateAction();
      *(swift_allocObject() + 264) = 0;
      v88 = __RKEntityAnimateAction.init(targetEntity:)(v121);
      v122 = type metadata accessor for __RKEntityToggleAnimateActionArguments;
LABEL_183:
      v161 = v122;
      v162 = v63;
      goto LABEL_233;
    case 0xDu:
      v112 = v355;
      outlined init with take of __RKEntityPlayTimelineActionArguments(v75, v355, type metadata accessor for __RKEntityToggleVisibilityActionArguments);
      v219 = __RKEntityLookupTable.entity(for:)(v112);
      type metadata accessor for __RKEntityToggleVisibilityAction();
      v220 = swift_allocObject();
      *(v220 + 112) = 0;
      *(v220 + 120) = 1;
      *(v220 + 128) = 0;
      *(v220 + 136) = 1;
      *(v220 + 140) = 0;
      v88 = __RKEntityAction.init(targetEntity:)(v219);
      v114 = type metadata accessor for __RKEntityToggleVisibilityActionArguments;
      goto LABEL_135;
    case 0xEu:
      v107 = v387;
      outlined init with take of __RKEntityPlayTimelineActionArguments(v75, v387, type metadata accessor for __RKEntityTransformActionArguments);
      v108 = __RKEntityLookupTable.entity(for:)(v107);
      v109 = v107 + v369[5];
      v110 = v107 + v369[6];
      v111 = *(v110 + 16);
      *&v391 = v108;
      if (v111)
      {
        v385 = 0;
        v386 = 0;
      }

      else
      {
        v308 = v110;
        v307 = *v110;
        v386 = *(v308 + 8);
        v385 = v307;
      }

      v309 = *v109;
      v310 = *(v109 + 8);
      LODWORD(v384) = *(v109 + 16);
      v311 = v107 + v369[7];
      v312 = v107 + v369[8];
      if (*(v312 + 4))
      {
        v313 = 1.0;
      }

      else
      {
        v313 = *v312;
      }

      v314 = v369[9];
      v315 = *(v107 + v369[10]);
      if (v315 == 10)
      {
        v315 = 0;
      }

      LODWORD(v383) = v315;
      v316 = v369[12];
      v317 = *(v107 + v369[11]);
      if (v317 == 3)
      {
        v317 = 0;
      }

      LODWORD(v382) = v317;
      v318 = v369[13];
      v319 = v107 + v369[14];
      v320 = *v319;
      v321 = *(v319 + 4) == 0;
      LODWORD(v379) = *v311;
      LODWORD(v378) = *(v311 + 4);
      LODWORD(v380) = *(v107 + v314);
      LODWORD(v381) = *(v107 + v316);
      if (v321)
      {
        v322 = v320;
      }

      else
      {
        v322 = 0.0;
      }

      v323 = *(v107 + v318);
      if (*(v107 + v318 + 4))
      {
        v324 = 0.0;
      }

      else
      {
        v324 = *(v107 + v318);
      }

      v325 = v369[15];
      v326 = v356;
      outlined init with copy of UUID?(v107 + v325, v356);
      v327 = v388;
      v328 = *(v389 + 48);
      v329 = v328(v326, 1, v388);
      outlined destroy of UUID?(v326);
      if (v329 == 1)
      {
        v330 = 0;
LABEL_218:
        v334 = v391;
        v335 = v386;
        v336 = v385;
        v337 = v384;
        type metadata accessor for __RKEntityTransformAction();
        v338 = swift_allocObject();
        *(v338 + 192) = 0;
        *(v338 + 208) = 0u;
        *(v338 + 224) = 0u;
        *(v338 + 240) = xmmword_1C1887620;
        *(v338 + 256) = 0;
        *(v338 + 264) = 1;
        *(v338 + 272) = 0u;
        *(v338 + 288) = 0u;
        *(v338 + 304) = 0u;
        *(v338 + 320) = 0u;
        *(v338 + 336) = 0u;
        *(v338 + 352) = 0;
        *(v338 + 112) = v309;
        *(v338 + 120) = v310;
        *(v338 + 128) = v337;
        *(v338 + 144) = v336;
        *(v338 + 152) = v335;
        *(v338 + 160) = v111;
        *(v338 + 164) = v379;
        *(v338 + 168) = v378;
        *(v338 + 172) = v313;
        *(v338 + 176) = v380 & 1;
        *(v338 + 177) = v383;
        *(v338 + 178) = v382;
        *(v338 + 180) = v322;
        *(v338 + 184) = v324;
        *(v338 + 179) = v381 & 1;
        swift_beginAccess();
        *(v338 + 192) = v330;
        v88 = __RKEntityAction.init(targetEntity:)(v334);
        v161 = type metadata accessor for __RKEntityTransformActionArguments;
        v162 = v387;
        goto LABEL_233;
      }

      v331 = v107 + v325;
      v332 = v352;
      outlined init with copy of UUID?(v331, v352);
      result = v328(v332, 1, v327);
      if (result != 1)
      {
        v330 = __RKEntityLookupTable.entity(for:)(v332);
        (*(v389 + 8))(v332, v327);
        goto LABEL_218;
      }

      __break(1u);
LABEL_244:
      __break(1u);
      return result;
    case 0xFu:
      v149 = *v75;
      type metadata accessor for __RKWaitAction();
      v150 = swift_allocObject();
      *(v150 + 120) = 0;
      *(v150 + 128) = 0x3F80624DD2F1A9FCLL;
      *(v150 + 136) = 0u;
      *(v150 + 152) = 0u;
      *(v150 + 168) = 0u;
      *(v150 + 184) = 0;
      *(v150 + 108) = v149;
      *(v150 + 112) = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
      return __RKEntityAction.init(targetEntity:)(0);
    case 0x10u:
      v97 = v376;
      outlined init with take of __RKEntityPlayTimelineActionArguments(v75, v376, type metadata accessor for __RKEntityOrbitEntityActionArguments);
      v98 = __RKEntityLookupTable.entity(for:)(v97);
      v99 = v371;
      v100 = __RKEntityLookupTable.entity(for:)(v97 + *(v371 + 20));
      v101 = v99[7];
      v102 = v97 + v99[6];
      if (*(v102 + 4))
      {
        v103 = 1.0;
      }

      else
      {
        v103 = *v102;
      }

      if (*(v97 + v101 + 4))
      {
        v104 = 1.0;
      }

      else
      {
        v104 = *(v97 + v101);
      }

      v105 = v97 + v99[8];
      if (*(v105 + 16))
      {
        v106 = xmmword_1C1887640;
      }

      else
      {
        v106 = *v105;
      }

      v391 = v106;
      v298 = *(v97 + v99[9]);
      v299 = *(v97 + v99[10]);
      v300 = v99[12];
      v301 = *(v97 + v99[11]);
      v302 = v97 + v99[13];
      if (*(v302 + 4))
      {
        v303 = 0.0;
      }

      else
      {
        v303 = *v302;
      }

      v304 = *(v97 + v300);
      if (*(v97 + v300 + 4))
      {
        v305 = 0.0;
      }

      else
      {
        v305 = *(v97 + v300);
      }

      type metadata accessor for __RKEntityOrbitEntityAction();
      v306 = swift_allocObject();
      *(v306 + 160) = 0u;
      *(v306 + 176) = 0u;
      *(v306 + 192) = 0u;
      *(v306 + 208) = 0u;
      *(v306 + 224) = 0u;
      *(v306 + 240) = 0u;
      *(v306 + 256) = 0u;
      *(v306 + 272) = 0u;
      *(v306 + 288) = 1;
      *(v306 + 296) = 0;
      *(v306 + 304) = 0;
      *(v306 + 320) = 0u;
      *(v306 + 336) = 0u;
      *(v306 + 352) = 1;
      *(v306 + 112) = v100;
      *(v306 + 120) = v103;
      *(v306 + 124) = v104;
      *(v306 + 128) = v391;
      *(v306 + 144) = v298 & 1;
      *(v306 + 145) = v299 & 1;
      *(v306 + 148) = v303;
      *(v306 + 152) = v305;
      *(v306 + 146) = v301 & 1;
      *(v306 + 354) = 0;
      v88 = __RKEntityAction.init(targetEntity:)(v98);
      v161 = type metadata accessor for __RKEntityOrbitEntityActionArguments;
      v162 = v97;
      goto LABEL_233;
    case 0x11u:
      v67 = v379;
      outlined init with take of __RKEntityPlayTimelineActionArguments(v75, v379, type metadata accessor for __RKEntityLookAtCameraActionArguments);
      __RKEntityLookupTable.entity(for:)(v67);
      v187 = v375[6];
      v188 = &v67[v375[5]];
      if (v188[4])
      {
        v189 = 1.0;
      }

      else
      {
        v189 = *v188;
      }

      if (v67[v187 + 4])
      {
        v190 = 0.0;
      }

      else
      {
        v190 = *&v67[v187];
      }

      v191 = &v67[v375[7]];
      v192 = xmmword_1C1887640;
      v193 = xmmword_1C1887640;
      if ((v191[16] & 1) == 0)
      {
        v193 = *v191;
      }

      v391 = v193;
      v194 = v375[9];
      v195 = &v67[v375[8]];
      if (v195[4])
      {
        v196 = 0.0;
      }

      else
      {
        v196 = *v195;
      }

      if ((v67[v194 + 16] & 1) == 0)
      {
        v192 = *&v67[v194];
      }

      v390 = v192;
      v197 = v67[v375[10]];
      type metadata accessor for __RKEntityLookAtCameraAction();
      v198 = swift_allocObject();
      *(v198 + 184) = 0u;
      *(v198 + 200) = 0u;
      *(v198 + 216) = 0u;
      *(v198 + 232) = 0u;
      *(v198 + 248) = 1;
      *(v198 + 256) = 0;
      *(v198 + 264) = 0;
      *(v198 + 108) = v189;
      *(v198 + 112) = v190;
      v199 = v390;
      *(v198 + 128) = v391;
      *(v198 + 160) = v199;
      *(v198 + 176) = v197 & 1;
      *(v198 + 144) = v196;

      v88 = __RKEntityAction.init(targetEntity:)(v200);
      __RKEntityLookAtCameraAction.setFinalRotation()();

      v148 = type metadata accessor for __RKEntityLookAtCameraActionArguments;
      goto LABEL_232;
    case 0x12u:
      v76 = v383;
      outlined init with take of __RKEntityPlayTimelineActionArguments(v75, v383, type metadata accessor for __RKEntitySwapEntityActionArguments);
      v233 = v382;
      v234 = v76 + *(v382 + 24);
      v235 = v357;
      _s10RealityKit29__RKEntityActionSpecificationOWOcTm_0(v234, v357, type metadata accessor for __RKEntityHideActionArguments);
      *&v391 = __RKEntityLookupTable.entity(for:)(v235);
      v236 = v388;
      v389 = *(v389 + 8);
      (v389)(v235, v388);
      v237 = v385[6];
      v238 = v234 + v385[5];
      v239 = 1.0;
      if (*(v238 + 4))
      {
        v240 = 1.0;
      }

      else
      {
        v240 = *v238;
      }

      v241 = *(v234 + v237);
      v242 = 10.0;
      if (*(v234 + v237 + 4))
      {
        v243 = 10.0;
      }

      else
      {
        v243 = *(v234 + v237);
      }

      if (*(v234 + v385[7]) == 10)
      {
        v244 = 0;
      }

      else
      {
        v244 = *(v234 + v385[7]);
      }

      if (*(v234 + v385[8]) == 3)
      {
        v245 = 0;
      }

      else
      {
        v245 = *(v234 + v385[8]);
      }

      v246 = *(v234 + v385[11]);
      if (*(v234 + v385[14]) == 3)
      {
        v247 = 0;
      }

      else
      {
        v247 = *(v234 + v385[14]);
      }

      if (*(v234 + v385[15]) == 10)
      {
        v248 = 0;
      }

      else
      {
        v248 = *(v234 + v385[15]);
      }

      type metadata accessor for __RKEntityHideAction();
      v249 = swift_allocObject();
      *(v249 + 174) = 0;
      *(v249 + 176) = 0u;
      *(v249 + 192) = 0u;
      *(v249 + 208) = 0u;
      *(v249 + 224) = 0u;
      *(v249 + 240) = 0u;
      *(v249 + 256) = 0u;
      *(v249 + 272) = 0u;
      *(v249 + 288) = 0u;
      *(v249 + 304) = 0u;
      *(v249 + 320) = 0u;
      *(v249 + 336) = 0;
      *(v249 + 144) = v240;
      *(v249 + 148) = v243;
      *(v249 + 152) = v244;
      *(v249 + 153) = v245;
      *(v249 + 164) = 0;
      *(v249 + 160) = v246 & 1;
      *(v249 + 154) = 0;
      *(v249 + 156) = 0;
      *(v249 + 172) = v247;
      *(v249 + 173) = v248;
      *(v249 + 112) = 0;
      *(v249 + 120) = 1;
      *(v249 + 128) = 0;
      *(v249 + 136) = 1;
      *(v249 + 140) = 0;
      *&v391 = __RKEntityAction.init(targetEntity:)(v391);
      v250 = v76 + *(v233 + 28);
      v251 = v363;
      _s10RealityKit29__RKEntityActionSpecificationOWOcTm_0(v250, v363, type metadata accessor for __RKEntityShowActionArguments);
      v252 = __RKEntityLookupTable.entity(for:)(v251);
      (v389)(v251, v236);
      v253 = v386[6];
      v254 = v250 + v386[5];
      if (!*(v254 + 4))
      {
        v239 = *v254;
      }

      v255 = *(v250 + v253);
      if (!*(v250 + v253 + 4))
      {
        v242 = *(v250 + v253);
      }

      if (*(v250 + v386[7]) == 10)
      {
        v256 = 0;
      }

      else
      {
        v256 = *(v250 + v386[7]);
      }

      if (*(v250 + v386[8]) == 3)
      {
        v257 = 0;
      }

      else
      {
        v257 = *(v250 + v386[8]);
      }

      v258 = *(v250 + v386[11]);
      if (*(v250 + v386[14]) == 3)
      {
        v259 = 0;
      }

      else
      {
        v259 = *(v250 + v386[14]);
      }

      if (*(v250 + v386[15]) == 10)
      {
        v260 = 0;
      }

      else
      {
        v260 = *(v250 + v386[15]);
      }

      type metadata accessor for __RKEntityShowAction();
      v261 = swift_allocObject();
      *(v261 + 176) = 0u;
      *(v261 + 192) = 0u;
      *(v261 + 208) = 0u;
      *(v261 + 224) = 0u;
      *(v261 + 240) = 0u;
      *(v261 + 256) = 0u;
      *(v261 + 272) = 0u;
      *(v261 + 288) = 0u;
      *(v261 + 304) = 0u;
      *(v261 + 320) = 0u;
      *(v261 + 336) = 0;
      *(v261 + 144) = v239;
      *(v261 + 148) = v242;
      *(v261 + 152) = v256;
      *(v261 + 153) = v257;
      *(v261 + 154) = 0;
      *(v261 + 156) = 1065353216;
      *(v261 + 164) = 0;
      *(v261 + 160) = v258 & 1;
      *(v261 + 172) = v259;
      *(v261 + 173) = v260;
      *(v261 + 112) = 0;
      *(v261 + 120) = 1;
      *(v261 + 128) = 0;
      *(v261 + 136) = 1;
      *(v261 + 140) = 0;
      v262 = __RKEntityAction.init(targetEntity:)(v252);
      v263 = __RKEntityLookupTable.entity(for:)(v76);
      v264 = __RKEntityLookupTable.entity(for:)(v76 + *(v233 + 20));
      type metadata accessor for __RKEntitySwapEntityAction();
      v265 = swift_allocObject();
      *(v265 + 136) = 0u;
      *(v265 + 152) = 0u;
      *(v265 + 168) = 0u;
      v266 = v391;
      *(v265 + 112) = v264;
      *(v265 + 120) = v266;
      *(v265 + 128) = v262;
      v88 = __RKEntityAction.init(targetEntity:)(v263);
      v96 = type metadata accessor for __RKEntitySwapEntityActionArguments;
      goto LABEL_176;
    case 0x13u:
      v67 = v378;
      outlined init with take of __RKEntityPlayTimelineActionArguments(v75, v378, type metadata accessor for __RKEntitySpinActionArguments);
      v290 = __RKEntityLookupTable.entity(for:)(v67);
      v291 = v372[6];
      v292 = &v67[v372[5]];
      if (v292[4])
      {
        v293 = 1.0;
      }

      else
      {
        v293 = *v292;
      }

      if (v67[v291 + 4])
      {
        v294 = 1.0;
      }

      else
      {
        v294 = *&v67[v291];
      }

      v295 = v67[v372[7]];
      v296 = &v67[v372[8]];
      if (v296[16])
      {
        v297 = xmmword_1C1887640;
      }

      else
      {
        v297 = *v296;
      }

      v391 = v297;
      type metadata accessor for __RKEntitySpinAction();
      v350 = swift_allocObject();
      *(v350 + 152) = 0;
      *(v350 + 160) = 1;
      *(v350 + 168) = 0u;
      *(v350 + 184) = 0u;
      *(v350 + 200) = 0u;
      *(v350 + 216) = 0u;
      *(v350 + 232) = 0u;
      *(v350 + 108) = v293;
      *(v350 + 112) = v294;
      *(v350 + 128) = v391;
      *(v350 + 144) = v295 & 1;
      v88 = __RKEntityAction.init(targetEntity:)(v290);
      v148 = type metadata accessor for __RKEntitySpinActionArguments;
LABEL_232:
      v161 = v148;
      v162 = v67;
      goto LABEL_233;
    case 0x14u:
      v112 = v374;
      outlined init with take of __RKEntityPlayTimelineActionArguments(v75, v374, type metadata accessor for __RKEntitySetOpacityActionArguments);
      v201 = __RKEntityLookupTable.entity(for:)(v112);
      v202 = *(v112 + *(v373 + 20));
      v203 = *(v112 + *(v373 + 24));
      type metadata accessor for __RKEntitySetOpacityAction();
      swift_allocObject();
      v88 = __RKEntitySetOpacityAction.init(targetEntity:duration:opacity:)(v201, v202, v203);
      v114 = type metadata accessor for __RKEntitySetOpacityActionArguments;
LABEL_135:
      v161 = v114;
      v162 = v112;
      goto LABEL_233;
    case 0x15u:
      v208 = v381;
      outlined init with take of __RKEntityPlayTimelineActionArguments(v75, v381, type metadata accessor for __RKEntityPlayTimelineActionArguments);
      v209 = __RKEntityLookupTable.entity(for:)(v208);
      v210 = v380;
      v211 = __RKEntityLookupTable.entity(for:)(v208 + *(v380 + 20));
      v212 = (v208 + v210[6]);
      v214 = *v212;
      v213 = v212[1];
      v215 = v353;
      outlined init with copy of UUID?(v208 + v210[7], v353);
      v216 = v388;
      v217 = v389;
      if ((*(v389 + 48))(v215, 1, v388) == 1)
      {

        v218 = 0;
      }

      else
      {
        v339 = v215;
        v340 = v384;
        (*(v217 + 32))(v384, v339, v216);

        v218 = __RKEntityLookupTable.entity(for:)(v340);
        (*(v217 + 8))(v340, v216);
      }

      v341 = (v208 + v210[8]);
      v343 = *v341;
      v342 = v341[1];
      type metadata accessor for __RKEntityPlayTimelineAction();
      v344 = swift_allocObject();
      *(v344 + 160) = 0u;
      *(v344 + 176) = 0u;
      *(v344 + 192) = 0u;
      *(v344 + 208) = 0u;
      *(v344 + 224) = 0u;
      *(v344 + 240) = 0;
      *(v344 + 112) = v211;
      *(v344 + 120) = v214;
      *(v344 + 128) = v213;
      *(v344 + 136) = v218;
      *(v344 + 144) = v343;
      *(v344 + 152) = v342;

      v88 = __RKEntityAction.init(targetEntity:)(0);
      outlined destroy of __RKEntityPlayTimelineActionArguments(v208, type metadata accessor for __RKEntityPlayTimelineActionArguments);
      swift_beginAccess();
      v345 = *(v88 + 16);
      *(v88 + 16) = v209;

      swift_beginAccess();
      *(v88 + 105) = 0;
      return v88;
    default:
      v76 = v377;
      outlined init with take of __RKEntityPlayTimelineActionArguments(v75, v377, type metadata accessor for __RKEntityAudioActionArguments);
      v77 = __RKEntityLookupTable.entity(for:)(v76);
      v78 = v358[5];
      if (*(v76 + v358[6]) == 3)
      {
        v79 = 0;
      }

      else
      {
        v79 = *(v76 + v358[6]);
      }

      v81 = *(v76 + v78);
      v80 = *(v76 + v78 + 8);
      v82 = v76 + v358[7];
      if (*(v82 + 8))
      {
        v83 = 1.0;
      }

      else
      {
        v83 = *v82;
      }

      v84 = *(v76 + v358[8]);
      if (*(v76 + v358[9]) == 3)
      {
        v85 = 0;
      }

      else
      {
        v85 = *(v76 + v358[9]);
      }

      if (*(v76 + v358[10]) == 3)
      {
        v86 = 1;
      }

      else
      {
        v86 = *(v76 + v358[10]);
      }

      type metadata accessor for __RKEntityAudioAction();
      v87 = swift_allocObject();
      *(v87 + 112) = 0x4024000000000000;
      *(v87 + 160) = 0;
      *(v87 + 168) = 1;
      *(v87 + 176) = 0;
      *(v87 + 120) = v79;
      *(v87 + 128) = v81;
      *(v87 + 136) = v80;
      *(v87 + 144) = v83;
      *(v87 + 152) = v84 & 1;
      *(v87 + 153) = v85;

      v88 = __RKEntityAction.init(targetEntity:)(v77);
      swift_beginAccess();
      *(v88 + 105) = v86;
      swift_beginAccess();
      v90 = *(v88 + 128);
      v89 = *(v88 + 136);
      swift_beginAccess();
      v91 = *(v88 + 16);
      if (!v91)
      {

        goto LABEL_237;
      }

      v92 = *(v91 + 16);

      if (!REEntityGetSceneNullable() || !RESceneGetECSManagerNullable() || (ServiceLocator = REECSManagerGetServiceLocator(), !MEMORY[0x1C68FE1F0](ServiceLocator)))
      {

LABEL_237:
        *(v88 + 176) = 0;
        goto LABEL_238;
      }

      String.utf8CString.getter();

      AssetHandle = REAssetManagerCreateAssetHandle();

      *(v88 + 176) = AssetHandle;
      if (!AssetHandle)
      {
LABEL_238:
        outlined destroy of __RKEntityPlayTimelineActionArguments(v76, type metadata accessor for __RKEntityAudioActionArguments);

        return v88;
      }

      REAssetHandleLoadNow();
      if (v77)
      {
        v95 = *(v77 + 16);
        if (REEntityGetSceneNullable())
        {
          if (RESceneGetECSManagerNullable())
          {
            REECSManagerGetServiceLocator();
            if (REServiceLocatorGetAudioService())
            {
              REAudioServiceStartAudioEngine();

              v96 = type metadata accessor for __RKEntityAudioActionArguments;
LABEL_176:
              v161 = v96;
              v162 = v76;
LABEL_233:
              outlined destroy of __RKEntityPlayTimelineActionArguments(v162, v161);
              return v88;
            }
          }
        }

        outlined destroy of __RKEntityPlayTimelineActionArguments(v76, type metadata accessor for __RKEntityAudioActionArguments);
      }

      else
      {
        outlined destroy of __RKEntityPlayTimelineActionArguments(v76, type metadata accessor for __RKEntityAudioActionArguments);
      }

LABEL_242:

      return v88;
  }
}

uint64_t closure #1 in __RKEntityInteractionManager.entitiesWithInteractionSpecifications()(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = RESceneGetComponentsOfCustomType();
  if (v3 < 0)
  {
    goto LABEL_37;
  }

  v4 = result;
  v5 = v3;
  result = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v32 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    while (1)
    {
      v6 = *v4;
      Entity = REComponentGetEntity();
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
          return result;
        }

        if (one-time initialization token for customComponentTypeObjectIdToHandles != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v8 = static SceneManager.customComponentTypeObjectIdToHandles;
        if (*(static SceneManager.customComponentTypeObjectIdToHandles + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent), (v10 & 1) != 0))
        {
          v11 = *(*(v8 + 56) + 8 * v9);
        }

        else
        {
          swift_endAccess();
          v12 = specialized static SceneManager.customComponentTypeHelper(_:typeName:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent, 0, 0);
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v31 = static SceneManager.customComponentTypeObjectIdToHandles;
          static SceneManager.customComponentTypeObjectIdToHandles = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, &type metadata for __EntityInfoComponent, isUniquelyReferenced_nonNull_native);
          static SceneManager.customComponentTypeObjectIdToHandles = v31;
        }

        swift_endAccess();
        if (!REEntityGetCustomComponent())
        {
          goto LABEL_32;
        }

        Object = RECustomComponentGetObject();
        if (!Object)
        {
          goto LABEL_32;
        }

        v15 = *Object;
        if (*(Object + 8) || !v15)
        {
          v21 = *(Object + 8);
        }

        else
        {
          v16 = *v15;
          v17 = String.init(utf8String:)();
          if (v18)
          {
            v19 = v17;
          }

          else
          {
            v19 = 0;
          }

          if (v18)
          {
            v20 = v18;
          }

          else
          {
            v20 = 0xE000000000000000;
          }

          v15 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v16 == 42, v19, v20);

          type metadata accessor for IntrospectionDataCleanupHelper();
          result = swift_allocObject();
          *(result + 16) = v15;
        }

        if (!v15)
        {
          goto LABEL_38;
        }

        v22 = String.init(utf8String:)();
        if (v23)
        {
          v24 = v23;
        }

        else
        {
          v22 = 0;
          v24 = 0xE000000000000000;
        }

        v25 = MEMORY[0x1C68F3280](v22, v24);

        v26 = NSClassFromString(v25);

        if (!v26)
        {
          goto LABEL_32;
        }

        swift_getObjCClassMetadata();
        type metadata accessor for Entity();
        v27 = swift_dynamicCastMetatype();
        if (v27)
        {
          v28 = (*(v27 + 232))();
          v29 = *(v28 + 16);

          MEMORY[0x1C68F9740](v29, 0);
          *(v28 + 16) = Entity;
          MEMORY[0x1C68F9740](Entity, v28);
        }

        else
        {
LABEL_32:
          makeEntity(for:)(Entity);
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v30 = *(v32 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v4;
      if (!--v5)
      {
        return v32;
      }
    }
  }

  return result;
}

void (*protocol witness for __RKEntityInteractionService.automaticallyInvokesStartTrigger.modify in conformance __RKEntityInteractionManager(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = __RKEntityInteractionManager.automaticallyInvokesStartTrigger.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t static __RKEntityTrigger.trigger(for:entityLookupTable:)(uint64_t a1, uint64_t a2)
{
  v102 = type metadata accessor for UUID();
  v4 = *(v102 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v102);
  v96 = v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v95 = v86 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v86 - v10;
  v12 = type metadata accessor for __RKEntityTriggerSpecification(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (v86 - v18);
  _s10RealityKit29__RKEntityActionSpecificationOWOcTm_0(a1, v86 - v18, type metadata accessor for __RKEntityTriggerSpecification);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v74 = v4;
      v75 = v102;
      (*(v4 + 32))(v11, v19, v102);
      v76 = __RKEntityLookupTable.entity(for:)(v11);
      (*(v74 + 8))(v11, v75);
      type metadata accessor for __RKEntityTapTrigger();
      v77 = swift_allocObject();
      *(v77 + 24) = 0;
      swift_beginAccess();
      *(v77 + 24) = v76;
      *(v77 + 16) = 0;
      *(v77 + 18) = 0;
      swift_beginAccess();
      result = v77;
      *(v77 + 16) = 0;
      return result;
    case 2u:
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV6target_SayACG17collidingEntitiesSaySSG4tagstMd, &_s10Foundation4UUIDV6target_SayACG17collidingEntitiesSaySSG4tagstMR);
      v33 = *(v19 + *(v32 + 48));
      v34 = *(v19 + *(v32 + 64));
      v35 = v4;
      v36 = *(v4 + 32);
      v37 = v95;
      v36(v95, v19, v102);
      v38 = __RKEntityLookupTable.entity(for:)(v37);
      v39 = v38;
      v106 = MEMORY[0x1E69E7CC0];
      v40 = *(v33 + 16);
      if (v40)
      {
        v87 = v38;
        v88 = v34;
        v41 = (*(v35 + 80) + 32) & ~*(v35 + 80);
        v86[1] = v33;
        v42 = v33 + v41;
        swift_beginAccess();
        v44 = *(v35 + 16);
        v43 = v35 + 16;
        v100 = v44;
        v45 = (v43 - 8);
        v93 = MEMORY[0x1E69E7CC0];
        v99 = *(v43 + 56);
        *&v46 = 136315394;
        v89 = v46;
        v47 = v96;
        v92 = (v43 - 8);
        v90 = a2;
        v91 = v43;
        v44(v96, v42, v102);
        while (1)
        {
          v107 = 91;
          v108 = 0xE100000000000000;
          v104 = 0;
          v105 = 0xE000000000000000;
          v103 = a2;

          _print_unlocked<A, B>(_:_:)();
          MEMORY[0x1C68F3410](v104, v105);

          MEMORY[0x1C68F3410](8285, 0xE200000000000000);
          v48 = StaticString.description.getter();
          MEMORY[0x1C68F3410](v48);

          MEMORY[0x1C68F3410](8250, 0xE200000000000000);

          v49 = v108;
          v101 = v107;
          v50 = *(a2 + 16);
          if (*(v50 + 16))
          {
            v51 = *(a2 + 16);

            v52 = specialized __RawDictionaryStorage.find<A>(_:)(v47);
            if (v53)
            {
              v54 = *(*(v50 + 56) + 8 * v52);
            }

            else
            {
              v54 = 0;
            }
          }

          else
          {
            v54 = 0;
          }

          v55 = static os_log_type_t.debug.getter();
          if (one-time initialization token for interactionsLoggingEnabled != -1)
          {
            v71 = v55;
            swift_once();
            v55 = v71;
          }

          if (interactionsLoggingEnabled)
          {
            v97 = v55;
            v98 = v86;
            v56 = v49;
            v107 = 0;
            v108 = 0xE000000000000000;
            _StringGuts.grow(_:)(19);

            v107 = 0x6E696E7275746552;
            v108 = 0xEA00000000002067;
            if (v54)
            {
              v104 = 0;
              v105 = 0xE000000000000000;
              v103 = v54;
              _print_unlocked<A, B>(_:_:)();
              v57 = v104;
              v58 = v105;
            }

            else
            {
              v58 = 0xE300000000000000;
              v57 = 7104878;
            }

            MEMORY[0x1C68F3410](v57, v58);

            MEMORY[0x1C68F3410](0x20726F6620, 0xE500000000000000);
            lazy protocol witness table accessor for type UUID and conformance UUID();
            v59 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x1C68F3410](v59);

            v60 = v108;
            v94 = v107;
            if (one-time initialization token for interactionsLogger != -1)
            {
              swift_once();
            }

            v61 = type metadata accessor for Logger();
            __swift_project_value_buffer(v61, interactionsLogger);

            v62 = Logger.logObject.getter();

            v63 = v97;
            if (os_log_type_enabled(v62, v97))
            {
              v64 = swift_slowAlloc();
              v65 = swift_slowAlloc();
              v107 = v65;
              *v64 = v89;
              *(v64 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v56, &v107);
              *(v64 + 12) = 2080;
              v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v60, &v107);

              *(v64 + 14) = v66;
              v47 = v96;
              _os_log_impl(&dword_1C1358000, v62, v63, "%s%s", v64, 0x16u);
              swift_arrayDestroy();
              v67 = v65;
              a2 = v90;
              MEMORY[0x1C6902A30](v67, -1, -1);
              MEMORY[0x1C6902A30](v64, -1, -1);
            }

            else
            {
            }

            v45 = v92;
          }

          else
          {
          }

          v68 = *v45;
          v69 = (*v45)(v47, v102);
          if (v54)
          {
            MEMORY[0x1C68F3650](v69);
            if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v70 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              v45 = v92;
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v93 = v106;
          }

          v42 += v99;
          if (!--v40)
          {
            break;
          }

          v100(v47, v42, v102);
        }

        v34 = v88;
        v39 = v87;
        v83 = v93;
      }

      else
      {

        v68 = *(v35 + 8);
        v83 = MEMORY[0x1E69E7CC0];
      }

      v68(v95, v102);
      type metadata accessor for __RKEntityCollisionTrigger();
      v85 = swift_allocObject();
      *(v85 + 24) = 0;
      swift_beginAccess();
      result = v85;
      *(v85 + 24) = v39;
      *(v85 + 32) = v83;
      *(v85 + 40) = v34;
      *(v85 + 16) = 0;
      *(v85 + 18) = 0;
      return result;
    case 3u:
      v72 = *v19;
      v73 = v19[1];
      v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      type metadata accessor for __RKCustomTrigger();
      result = swift_allocObject();
      *(result + 24) = v72;
      *(result + 32) = v73;
      goto LABEL_36;
    case 4u:
      v28 = *v19;
      v29 = v19[1];
      v30 = v19[2];
      type metadata accessor for __RKCustomTrigger();
      result = swift_allocObject();
      *(result + 24) = v28;
      *(result + 32) = v29;
      if (!v30)
      {
        v31 = result;
        v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        result = v31;
      }

LABEL_36:
      *(result + 40) = v30;
      goto LABEL_50;
    case 5u:
      v78 = *v19;
      v109 = MEMORY[0x1E69E7CC0];
      v79 = *(v78 + 16);
      if (v79)
      {
        v80 = v78 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
        v81 = *(v13 + 72);
        do
        {
          _s10RealityKit29__RKEntityActionSpecificationOWOcTm_0(v80, v17, type metadata accessor for __RKEntityTriggerSpecification);
          static __RKEntityTrigger.trigger(for:entityLookupTable:)(v17, a2);
          MEMORY[0x1C68F3650]();
          if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v109 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v82 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          outlined destroy of __RKEntityPlayTimelineActionArguments(v17, type metadata accessor for __RKEntityTriggerSpecification);
          v80 += v81;
          --v79;
        }

        while (v79);
        v84 = v109;
      }

      else
      {

        v84 = MEMORY[0x1E69E7CC0];
      }

      type metadata accessor for __RKEntityTriggerGroup();
      swift_allocObject();
      return __RKEntityTriggerGroup.init(triggers:)(v84);
    case 6u:
      type metadata accessor for __RKEntityDragTrigger();
      goto LABEL_49;
    case 7u:
      type metadata accessor for __RKLightTrigger();
      goto LABEL_49;
    case 8u:
      type metadata accessor for __RKEntityLookAtTrigger();
      goto LABEL_49;
    case 9u:
      type metadata accessor for __RKEntityPlacementTrigger();
      goto LABEL_49;
    case 0xAu:
      type metadata accessor for __RKEntityRemovalTrigger();
      goto LABEL_49;
    case 0xBu:
      type metadata accessor for __RKSoundTrigger();
      goto LABEL_49;
    case 0xCu:
      type metadata accessor for __RKStartTrigger();
      result = swift_allocObject();
      *(result + 16) = 0;
      return result;
    case 0xDu:
      type metadata accessor for __RKTimerTrigger();
LABEL_49:
      result = swift_allocObject();
LABEL_50:
      *(result + 16) = 0;
      *(result + 18) = 0;
      break;
    default:
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV6target_Sf8distance10RealityKit26__RKEntityProximityTriggerC8ExitTypeO4typetMd, &_s10Foundation4UUIDV6target_Sf8distance10RealityKit26__RKEntityProximityTriggerC8ExitTypeO4typetMR);
      v21 = *(v19 + *(v20 + 48));
      v22 = v102;
      v23 = *(v19 + *(v20 + 64));
      v24 = v4;
      (*(v4 + 32))(v11, v19, v102);
      v25 = __RKEntityLookupTable.entity(for:)(v11);
      (*(v24 + 8))(v11, v22);
      type metadata accessor for __RKEntityProximityTrigger();
      v26 = swift_allocObject();
      *(v26 + 24) = 0;
      *(v26 + 37) = 0;
      swift_beginAccess();
      result = v26;
      *(v26 + 24) = v25;
      *(v26 + 32) = v21;
      *(v26 + 36) = v23;
      *(v26 + 16) = 0;
      *(v26 + 18) = 0;
      break;
  }

  return result;
}

Swift::Bool __swiftcall Entity.applyTapForBehaviors()()
{
  v1 = v0;
  v11 = 91;
  v12 = 0xE100000000000000;

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0, 0xE000000000000000);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v2 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v2);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v3 = *(v0 + 16);
  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable)
  {
    goto LABEL_8;
  }

  v5 = SceneNullable;
  v6 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v6)
  {
    swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    Scene.init(coreScene:)(v5);
  }

  Scene.__interactionService.getter();
  type metadata accessor for __RKEntityInteractionManager();
  if (!swift_dynamicCastClass())
  {

    swift_unknownObjectRelease();
LABEL_8:
    v11 = 91;
    v12 = 0xE100000000000000;
    v9 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v9, &v11);

    v8 = 0;
    return v8 & 1;
  }

  v11 = 91;
  v12 = 0xE100000000000000;
  v7 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v7, &v11);

  v8 = __RKEntityInteractionManager.performTapInteraction(for:)(v1);

  swift_unknownObjectRelease();
  return v8 & 1;
}

uint64_t implicit closure #1 in $defer #1 () in __RKEntityInteractionManager.interactions(matching:entities:)()
{
  _StringGuts.grow(_:)(17);
  MEMORY[0x1C68F3410](0x65746E6920646E45, 0xEF206E6F69746372);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    __CocoaSet.count.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [Component] and conformance [A](&lazy protocol witness table cache variable for type [Entity] and conformance [A], &_sSay10RealityKit6EntityCGMd, &_sSay10RealityKit6EntityCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit6EntityCGMd, &_sSay10RealityKit6EntityCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for Entity();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [Component] and conformance [A](&lazy protocol witness table cache variable for type [__REAsset] and conformance [A], &_sSay10RealityKit9__REAssetCGMd, &_sSay10RealityKit9__REAssetCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit9__REAssetCGMd, &_sSay10RealityKit9__REAssetCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for __REAsset();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized __RKEntityInteractionManager.actions(for:)(unint64_t a1)
{
  v1 = a1;
  v25 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v3 = 0;
    v23 = v1;
    v24 = v1 & 0xC000000000000001;
    v20 = v1 + 32;
    v21 = v1 & 0xFFFFFFFFFFFFFF8;
    v22 = i;
    while (v24)
    {
      v4 = MEMORY[0x1C68F41F0](v3, v1);
      v5 = __OFADD__(v3++, 1);
      if (v5)
      {
        goto LABEL_30;
      }

LABEL_11:
      swift_beginAccess();
      v6 = *(v4 + 24);
      type metadata accessor for __RKEntityActionGroup();
      v7 = swift_dynamicCastClass();

      if (!v7)
      {
        MEMORY[0x1C68F3650](v8);
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v18 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v10 = v25;
        goto LABEL_4;
      }

      MEMORY[0x1C68F3650](v9);
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v17 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v10 = v25;
      v11 = __RKEntityActionGroup.allActions()();
      v12 = v11;
      if (v11 >> 62)
      {
        v13 = __CocoaSet.count.getter();
        if (!v13)
        {
LABEL_29:

          goto LABEL_4;
        }
      }

      else
      {
        v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v13)
        {
          goto LABEL_29;
        }
      }

      if (v13 < 1)
      {
        goto LABEL_31;
      }

      for (j = 0; j != v13; ++j)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1C68F41F0](j, v12);
        }

        else
        {
          v15 = *(v12 + 8 * j + 32);
        }

        MEMORY[0x1C68F3650](v16);
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v10 = v25;

      i = v22;
      v1 = v23;
LABEL_4:
      if (v3 == i)
      {
        return v10;
      }
    }

    if (v3 >= *(v21 + 16))
    {
      goto LABEL_32;
    }

    v4 = *(v20 + 8 * v3);

    v5 = __OFADD__(v3++, 1);
    if (!v5)
    {
      goto LABEL_11;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t partial apply for closure #2 in __RKEntityInteractionManager.performInteractions(matchingCustomTriggerWithIdentifier:customArguments:overrides:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #2 in __RKEntityInteractionManager.performInteractions(matchingCustomTriggerWithIdentifier:customArguments:overrides:)();
}

uint64_t outlined init with take of __RKEntityPlayTimelineActionArguments(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s10RealityKit29__RKEntityActionSpecificationOWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of __RKEntityPlayTimelineActionArguments(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s17RealityFoundation23BindableValuesReferenceVyAA0C5ValueVyxGSgAA10BindTargetO_xmtcAA0C4DataRzluisSb_Tt1B5(__int16 a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a1 == 2)
  {

    return outlined consume of BindTarget(a2, a3, a4);
  }

  else
  {
    v9 = HIBYTE(a1);
    v11[0] = a2;
    v11[1] = a3;
    v12 = a4;
    specialized static InternalBindPath.pathFromTarget(_:_:)(v11, 1);
    outlined consume of BindTarget(a2, a3, a4);
    v10 = *(*v4 + 16);
    String.utf8CString.getter();

    REBindPointCreateReferenceForEntityAnimatedValuesBool();

    REBindPointIsValid();
    REBindPointSetBool();
    if (v9 != 2)
    {
      REBindPointSetBool();
    }

    return REBindPointDestroy();
  }
}

uint64_t _s17RealityFoundation23BindableValuesReferenceVyAA0C5ValueVyxGSgAA10BindTargetO_xmtcAA0C4DataRzluisSf_Tt1B5(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if ((a2 & 0x100) != 0)
  {

    return outlined consume of BindTarget(a3, a4, a5);
  }

  else
  {
    v9 = a2;
    v12[0] = a3;
    v12[1] = a4;
    v13 = a5;
    specialized static InternalBindPath.pathFromTarget(_:_:)(v12, 1);
    outlined consume of BindTarget(a3, a4, a5);
    v10 = *(*v5 + 16);
    String.utf8CString.getter();

    REBindPointCreateReferenceForEntityAnimatedValuesFloat();

    REBindPointIsValid();
    REBindPointSetFloat();
    if ((v9 & 1) == 0)
    {
      REBindPointSetFloat();
    }

    return REBindPointDestroy();
  }
}

uint64_t _s17RealityFoundation23BindableValuesReferenceVyAA0C5ValueVyxGSgAA10BindTargetO_xmtcAA0C4DataRzluisSi_Tt1B5(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if ((a3 & 0x100) != 0)
  {

    return outlined consume of BindTarget(a4, a5, a6);
  }

  else
  {
    v10 = a3;
    v13[0] = a4;
    v13[1] = a5;
    v14 = a6;
    specialized static InternalBindPath.pathFromTarget(_:_:)(v13, 1);
    outlined consume of BindTarget(a4, a5, a6);
    v11 = *(*v6 + 16);
    String.utf8CString.getter();

    REBindPointCreateReferenceForEntityAnimatedValuesInt64();

    REBindPointIsValid();
    REBindPointSetInt64();
    if ((v10 & 1) == 0)
    {
      REBindPointSetInt64();
    }

    return REBindPointDestroy();
  }
}

uint64_t _s10RealityKit6EntityC0A10FoundationE12ParameterSetVyAD13BindableValueVyxGSgSS_xmtcAD0G4DataRzluisSi_Tt1B5(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  if ((a3 & 0x100) != 0)
  {
  }

  else
  {
    v8 = a3;
    v14[3] = MEMORY[0x1E69E6530];
    v14[4] = &protocol witness table for Int;
    v14[0] = a1;
    outlined init with take of BindableDataInternal(v14, v15);
    v11 = *__swift_project_boxed_opaque_existential_1(v15, v15[3]);
    v12 = *(*v5 + 16);
    REKeyValueComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    String.utf8CString.getter();
    REKeyValueComponentAddInt64Value();

    __swift_destroy_boxed_opaque_existential_1(v15);
    if (v8)
    {
    }

    else
    {
      v15[0] = *v5;

      _s17RealityFoundation23BindableValuesReferenceVyAA0C5ValueVyxGSgAA10BindTargetO_xmtcAA0C4DataRzluisSi_Tt1B5(a1, a2, v8, a4, a5, 1u);
    }
  }
}

uint64_t _s10RealityKit6EntityC0A10FoundationE12ParameterSetVyAD13BindableValueVyxGSgSS_xmtcAD0G4DataRzluisSf_Tt1B5(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 0x100) != 0)
  {
  }

  else
  {
    v7 = a2;
    v13 = MEMORY[0x1E69E6448];
    v14 = &protocol witness table for Float;
    v12[0] = a1;
    outlined init with take of BindableDataInternal(v12, v15);
    v9 = *__swift_project_boxed_opaque_existential_1(v15, v15[3]);
    v10 = *(*v4 + 16);
    REKeyValueComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    String.utf8CString.getter();
    REKeyValueComponentAddFloatValue();

    __swift_destroy_boxed_opaque_existential_1(v15);
    if (v7)
    {
    }

    else
    {
      v15[0] = *v4;

      _s17RealityFoundation23BindableValuesReferenceVyAA0C5ValueVyxGSgAA10BindTargetO_xmtcAA0C4DataRzluisSf_Tt1B5(a1, v7, a3, a4, 1u);
    }
  }
}

uint64_t _s10RealityKit6EntityC0A10FoundationE12ParameterSetVyAD13BindableValueVyxGSgSS_xmtcAD0G4DataRzluisSb_Tt1B5(__int16 a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 2)
  {
  }

  else
  {
    v11 = MEMORY[0x1E69E6370];
    v12 = &protocol witness table for Bool;
    v10[0] = a1 & 1;
    outlined init with take of BindableDataInternal(v10, v13);
    v8 = *__swift_project_boxed_opaque_existential_1(v13, v13[3]);
    v9 = *(*v3 + 16);
    REKeyValueComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    String.utf8CString.getter();
    REKeyValueComponentAddBoolValue();

    __swift_destroy_boxed_opaque_existential_1(v13);
    if ((a1 & 0xFF00) == 0x200)
    {
    }

    else
    {
      v13[0] = *v3;

      _s17RealityFoundation23BindableValuesReferenceVyAA0C5ValueVyxGSgAA10BindTargetO_xmtcAA0C4DataRzluisSb_Tt1B5(a1, a2, a3, 1u);
    }
  }
}

uint64_t static StateMachineUtils.getOrCreateEntityParameter<A>(entity:name:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v34 = a4;
  v35 = a7;
  v11 = *(a6 + 8);
  v12 = type metadata accessor for BindableValue();
  v29 = type metadata accessor for Optional();
  v13 = *(v29 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v16 = &v28 - v15;
  v17 = *(v12 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v28 - v20;
  v36 = a1;
  v32 = a1;

  v30 = a2;
  v31 = a3;
  v22 = a3;
  v23 = v34;
  v33 = a5;
  Entity.ParameterSet.subscript.getter(a2, v22);

  if ((*(v17 + 48))(v16, 1, v12) != 1)
  {
    (*(v17 + 32))(v21, v16, v12);
    BindableValue.value.getter(v12, v35);
    return (*(v17 + 8))(v21, v12);
  }

  (*(v13 + 8))(v16, v29);
  if (v23 == MEMORY[0x1E69E6530])
  {
    v36 = v32;

    v26 = v31;

    _s10RealityKit6EntityC0A10FoundationE12ParameterSetVyAD13BindableValueVyxGSgSS_xmtcAD0G4DataRzluisSi_Tt1B5(0, 0, 1, v30, v26);

    v36 = 0;
  }

  else if (v23 == MEMORY[0x1E69E6448])
  {
    v36 = v32;

    v27 = v31;

    _s10RealityKit6EntityC0A10FoundationE12ParameterSetVyAD13BindableValueVyxGSgSS_xmtcAD0G4DataRzluisSf_Tt1B5(0, 1, v30, v27);

    LODWORD(v36) = 0;
  }

  else
  {
    if (v23 != MEMORY[0x1E69E6370])
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v36 = v32;

    v24 = v31;

    _s10RealityKit6EntityC0A10FoundationE12ParameterSetVyAD13BindableValueVyxGSgSS_xmtcAD0G4DataRzluisSb_Tt1B5(512, v30, v24);

    LOBYTE(v36) = 0;
  }

  return swift_dynamicCast();
}

uint64_t static StateMachineUtils.createEntityParameterIfDoesNotExist<A>(entity:name:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static StateMachineUtils.getOrCreateEntityParameter<A>(entity:name:type:)(v10, v11, v12, v13, v14, v15, v9);
  return (*(v6 + 8))(v9, a5);
}

uint64_t static StateMachineUtils.convert(_:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 5u)
  {
    _StringGuts.grow(_:)(44);
    MEMORY[0x1C68F3410](0xD00000000000002ALL, 0x80000001C18EF2D0);
    type metadata accessor for REStateTransitionInterruptionType(0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t static StateMachineUtils.convert<A>(_:)(uint64_t a1)
{
  if (a1 == MEMORY[0x1E69E6530])
  {
    return 1;
  }

  if (a1 == MEMORY[0x1E69E6448])
  {
    return 2;
  }

  if (a1 == MEMORY[0x1E69E6370])
  {
    return 3;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static StateMachineUtils.logError(_:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v15);
    _os_log_impl(&dword_1C1358000, v9, v10, "%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1C6902A30](v12, -1, -1);
    MEMORY[0x1C6902A30](v11, -1, -1);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = __CocoaDictionary.lookup(_:)();

    if (v3)
    {
      type metadata accessor for RESceneDescriptor();
      swift_dynamicCast();
      return v8;
    }
  }

  else if (*(a2 + 16))
  {
    v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v6)
    {
      v7 = *(*(a2 + 56) + 8 * v5);
    }
  }

  return 0;
}

unint64_t specialized Dictionary.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a3 + 16) && (result = specialized __RawDictionaryStorage.find<A>(_:)(result, a2), (v6 & 1) != 0))
  {
    v7 = *(*(a3 + 56) + 8 * result);
    *a4 = v7;

    return v7;
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

uint64_t static __USDARReferenceProvidingPlugin.instance(for:)(void *a1)
{
  if (one-time initialization token for instances != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return specialized AssetServiceScopedRegistry.instance(for:)(a1);
}

RealityFoundation::ReferenceObjectAR_optional __swiftcall __USDARReferenceProvidingPlugin.fetchReferenceObject(group:name:)(Swift::String group, Swift::String name)
{
  v4 = v3;
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  v7 = group._object;
  v8 = group._countAndFlagsBits;
  v9 = v2;
  v10._countAndFlagsBits = 47;
  v10._object = 0xE100000000000000;
  if (String.hasSuffix(_:)(v10) || (v11 = 47, v12 = 0xE100000000000000, v13._countAndFlagsBits = 47, v13._object = 0xE100000000000000, String.hasPrefix(_:)(v13)))
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  MEMORY[0x1C68F3410](v11, v12);

  MEMORY[0x1C68F3410](countAndFlagsBits, object);

  swift_beginAccess();
  v14 = *(v4 + 16);

  specialized Dictionary.subscript.getter(v8, v7, v14, v9);

  result.value.object.super.isa = v15;
  result.is_nil = v16;
  return result;
}

uint64_t __USDARReferenceProvidingPlugin.fetchReferenceImage(group:name:physicalWidth:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v12._countAndFlagsBits = 47;
  v12._object = 0xE100000000000000;
  if (String.hasSuffix(_:)(v12) || (v13 = 47, v14 = 0xE100000000000000, v15._countAndFlagsBits = 47, v15._object = 0xE100000000000000, String.hasPrefix(_:)(v15)))
  {
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  MEMORY[0x1C68F3410](v13, v14);

  MEMORY[0x1C68F3410](a3, a4);

  swift_beginAccess();
  v16 = *(v6 + 24);

  specialized Dictionary.subscript.getter(a1, a2, v16, a5);
}

Swift::String __swiftcall __USDARReferenceProvidingPlugin.createSchemePrefix(with:)(Swift::String with)
{
  MEMORY[0x1C68F3410](with._countAndFlagsBits, with._object);
  v1 = 979661685;
  v2 = 0xE400000000000000;
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t __USDARReferenceProvidingPlugin.registerARReference(_:forFullSchemePath:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    swift_beginAccess();
    swift_unknownObjectRetain();

    v8 = *(v3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v3 + 16);
    *(v3 + 16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, a2, a3, isUniquelyReferenced_nonNull_native);

    *(v3 + 16) = v15;
LABEL_5:
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    swift_beginAccess();
    swift_unknownObjectRetain();

    v12 = *(v3 + 24);
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v3 + 24);
    *(v3 + 24) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, a2, a3, v13);

    *(v3 + 24) = v16;
    goto LABEL_5;
  }

  return swift_unknownObjectRelease();
}

uint64_t __USDARReferenceProvidingPlugin.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t __USDARReferenceProvidingPlugin.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall __USDARReferenceProvidingPlugin.registerARReference(_:forFullSchemePath:)(ARReferenceObject _, Swift::String forFullSchemePath)
{
  v3 = v2;
  object = forFullSchemePath._object;
  countAndFlagsBits = forFullSchemePath._countAndFlagsBits;
  swift_beginAccess();

  v7 = _.super.isa;
  v8 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + 16);
  *(v3 + 16) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, countAndFlagsBits, object, isUniquelyReferenced_nonNull_native);

  *(v3 + 16) = v10;
  swift_endAccess();
}

Swift::Void __swiftcall __USDARReferenceProvidingPlugin.registerARReference(_:forFullSchemePath:)(ARReferenceImage _, Swift::String forFullSchemePath)
{
  v3 = v2;
  object = forFullSchemePath._object;
  countAndFlagsBits = forFullSchemePath._countAndFlagsBits;
  swift_beginAccess();

  v7 = _.super.isa;
  v8 = *(v3 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + 24);
  *(v3 + 24) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, countAndFlagsBits, object, isUniquelyReferenced_nonNull_native);

  *(v3 + 24) = v10;
  swift_endAccess();
}

void *specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = MEMORY[0x1C68F3280]();
  v9 = [a4 property_];

  if (!v9)
  {
    v14 = 0xD000000000000012;
    static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v15 = swift_allocObject();
    v16 = v15;
    *(v15 + 16) = xmmword_1C1897FD0;
    if (a3)
    {
      if (a3 == 1)
      {
        v17 = "ng: Unknown action type";
      }

      else
      {
        v17 = "imagesByFullSchemePath";
        v14 = 0xD000000000000013;
      }
    }

    else
    {
      v14 = 0xD000000000000014;
      v17 = "USD trigger loading";
    }

    v18 = v17 | 0x8000000000000000;
    v19 = MEMORY[0x1E69E6158];
    *(v15 + 56) = MEMORY[0x1E69E6158];
    v20 = lazy protocol witness table accessor for type String and conformance String();
    v16[4] = v14;
    v16[5] = v18;
    v16[12] = v19;
    v16[13] = v20;
    v16[8] = v20;
    v16[9] = a1;
    v16[10] = a2;

    v21 = [a4 path];
    v22 = [v21 stringValue];

    if (v22)
    {
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = v16 + 14;
      v16[17] = v19;
      v16[18] = v20;
      if (v25)
      {
        *v26 = v23;
LABEL_15:
        v16[15] = v25;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v13 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        lazy protocol witness table accessor for type USKNode.PropertyValueRequestError and conformance USKNode.PropertyValueRequestError();
        swift_allocError();
        swift_willThrow();
        return v13;
      }
    }

    else
    {
      v26 = v16 + 14;
      v16[17] = v19;
      v16[18] = v20;
    }

    *v26 = 7104878;
    v25 = 0xE300000000000000;
    goto LABEL_15;
  }

  v10 = v9;
  v11 = [v10 stringValue];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    return 0;
  }

  return v13;
}

{
  return sub_1C1374818(a1, a2, a3, a4);
}