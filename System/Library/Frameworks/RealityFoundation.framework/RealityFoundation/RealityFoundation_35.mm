uint64_t AnyMeshBuffer.customMirror.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v25[-v9 - 8];
  outlined init with copy of AnyMeshBuffer(v0, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C189FFC0;
  *(v11 + 32) = 25705;
  *(v11 + 40) = 0xE200000000000000;
  *(v11 + 72) = &type metadata for MeshBuffers.Identifier;
  v12 = v0[3];
  v13 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v12);
  (*(v13 + 8))(v12, v13);
  *(v11 + 80) = 0x746E756F63;
  *(v11 + 88) = 0xE500000000000000;
  v14 = v0[3];
  v15 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v16 = (*(v15 + 16))(v14, v15);
  v17 = MEMORY[0x1E69E6530];
  *(v11 + 96) = v16;
  *(v11 + 120) = v17;
  *(v11 + 128) = 1702125938;
  *(v11 + 136) = 0xE400000000000000;
  *(v11 + 168) = &type metadata for MeshBuffers.Rate;
  v18 = v0[3];
  v19 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  (*(v19 + 24))(v18, v19);
  *(v11 + 176) = 0x54746E656D656C65;
  *(v11 + 184) = 0xEB00000000657079;
  *(v11 + 216) = &type metadata for MeshBuffers.ElementType;
  v20 = v0[3];
  v21 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  (*(v21 + 32))(v20, v21);
  v22 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
  (*(v3 + 104))(v6, *MEMORY[0x1E69E75D8], v2);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t __deallocating_deinit in BufferInstaller #1 in static MeshResource.Part.unpack(coreAsset:modelIndex:)()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[6];

  v4 = v0[15];

  return swift_deallocClassInstance();
}

uint64_t outlined copy of MeshDescriptor.Primitives(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 < 2)
  {
  }

  if (!a3)
  {
  }

  return result;
}

void partial apply for closure #1 in MeshBuffer.forEach(_:)(uint64_t a1)
{
  closure #1 in MeshBuffer.forEach(_:)(a1, *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 16));
}

{
  closure #1 in MeshBuffer.forEach(_:)(a1, *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 16));
}

{
  closure #1 in MeshBuffer.forEach(_:)(a1, *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 16));
}

uint64_t specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(uint64_t *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      outlined copy of Data._Representation(v5, v4);
      outlined consume of Data._Representation(v5, v4);
      *&v25 = v5;
      *(&v25 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1C18A2C50;
      outlined consume of Data._Representation(0, 0xC000000000000000);
      specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(&v25, a2);

      v19 = *(&v25 + 1) | 0x4000000000000000;
      *a1 = v25;
      a1[1] = v19;
    }

    else
    {

      outlined consume of Data._Representation(v5, v4);
      *&v25 = v5;
      WORD4(v25) = v4;
      BYTE10(v25) = BYTE2(v4);
      BYTE11(v25) = BYTE3(v4);
      BYTE12(v25) = BYTE4(v4);
      BYTE13(v25) = BYTE5(v4);
      BYTE14(v25) = BYTE6(v4);
      v7 = a2[2];
      v8 = a2[3];
      v9 = a2[4];
      v10 = a2[5];
      REMeshAssetGetModelPartBufferAttributeData();
      v11 = DWORD2(v25) | ((WORD6(v25) | (BYTE6(v4) << 16)) << 32);

      *a1 = v5;
      a1[1] = v11;
    }

    goto LABEL_10;
  }

  if (v6 != 2)
  {
    *(&v25 + 7) = 0;
    *&v25 = 0;
    v20 = a2[2];
    v21 = a2[3];
    v22 = a2[4];
    v23 = a2[5];
    REMeshAssetGetModelPartBufferAttributeData();

LABEL_10:
    v24 = *MEMORY[0x1E69E9840];
    return result;
  }

  outlined consume of Data._Representation(v5, v4);
  *&v25 = v5;
  *(&v25 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_1C18A2C50;
  outlined consume of Data._Representation(0, 0xC000000000000000);
  Data.LargeSlice.ensureUniqueReference()();
  v13 = *(&v25 + 1);
  v14 = *(v25 + 16);
  if (__DataStorage._bytes.getter())
  {
    if (__OFSUB__(v14, __DataStorage._offset.getter()))
    {
      __break(1u);
    }

    MEMORY[0x1C68F2040]();
    v15 = a2[2];
    v16 = a2[3];
    v17 = a2[4];
    v18 = a2[5];
    REMeshAssetGetModelPartBufferAttributeData();

    *a1 = v25;
    a1[1] = v13 | 0x8000000000000000;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(int *a1, void *a2)
{
  Data.InlineSlice.ensureUniqueReference()();
  v4 = *a1;
  if (a1[1] < v4)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = *(a1 + 1);

  if (__DataStorage._bytes.getter())
  {
    if (!__OFSUB__(v4, __DataStorage._offset.getter()))
    {
      MEMORY[0x1C68F2040]();
      v6 = a2[2];
      v7 = a2[3];
      v8 = a2[4];
      v9 = a2[5];
      REMeshAssetGetModelPartBufferAttributeData();

      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
}

Swift::Int specialized MutableCollection<>.sort(by:)(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a5)(void, Swift::Int, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a4)(void, Swift::Int, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v7);
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      if (v7 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v10 + 16) = v7 / 2;
      }

      v12[0] = v10 + 32;
      v12[1] = v7 / 2;
      v11 = v10;
      a3(v12, v13, a1, v9);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    return a4(0, v7, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 + 28;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      v11 = (v10 - 28);
      result = *(v10 - 60);
      v12 = result == *(v10 - 28) && *(v10 - 52) == *(v10 - 20);
      if (v12 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 32;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v10 - 60);
      v13 = *(v10 - 44);
      *(v10 - 32) = *v10;
      v10 -= 32;
      v15 = *(v10 + 4);
      v16 = *(v10 + 28);
      v17 = *(v10 + 12);
      *v11 = v14;
      v11[1] = v13;
      *(v10 - 28) = v15;
      *(v10 - 20) = v17;
      *(v10 - 4) = v16;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = result - a3;
    v8 = (*a4 + (a3 << 6));
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = *(v9 + 1);
      v11 = result == *(v9 - 7) && *(v9 + 2) == *(v9 - 6);
      if (v11 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        --v7;
        v8 += 4;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v12 = v9 - 4;
      v13 = v9[1];
      *v18 = v9[2];
      *&v18[9] = *(v9 + 41);
      v14 = *v9;
      v15 = *(v9 - 3);
      *v9 = *(v9 - 4);
      v9[1] = v15;
      v16 = *(v9 - 1);
      v9[2] = *(v9 - 2);
      v9[3] = v16;
      *(v12 + 41) = *&v18[9];
      v12[1] = v13;
      v12[2] = *v18;
      v9 -= 4;
      *v12 = v14;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in ConversionBuffer.init(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = *(a2 + 56);
  v11 = (*(a2 + 48))();
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = a3;
  v15[4] = a4;

  return v14;
}

uint64_t specialized closure #1 in MeshBuffer.init<A>(_:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = *(*a1 + 16);
  v7 = v5[3];
  v8 = v5[4];
  v9 = v5[5];
  ModelPartBufferAttributeCount = REMeshAssetGetModelPartBufferAttributeCount();

  v11 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCs5SIMD4VySfG_Tt1g5092_s17RealityFoundation14MeshPartBufferC9copySlice6offset5countSayxGSi_SitFySryxGz_SiztXEfU_s5F9VySfG_Tg50H10Foundation0jkL0CyAGGS2iTf1nc_nTf4ngnn_nTm(ModelPartBufferAttributeCount, v5, 0, ModelPartBufferAttributeCount, a2, a3);

  return v11;
}

uint64_t specialized closure #1 in MeshBuffer.init<A>(_:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  ModelPartBufferAttributeCount = REMeshAssetGetModelPartBufferAttributeCount();

  v7 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfC17RealityFoundation18MeshJointInfluenceV_Tt1g504_s17f12Foundation14h69PartBufferC9copySlice6offset5countSayxGSi_SitFySryxGz_SiztXEfU_AA0C14iJ5V_Tg5AE0hmN0CyAGGS2iTf1nc_nTf4ngnn_nTm(ModelPartBufferAttributeCount, v1);

  return v7;
}

uint64_t specialized closure #3 in MeshBuffer.init<A>(_:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  ModelPartBufferAttributeCount = REMeshAssetGetModelPartBufferAttributeCount();
  v9[0] = specialized Data.init(count:)(ModelPartBufferAttributeCount);
  v9[1] = v7;

  specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(v9, v1);
  return v9[0];
}

uint64_t specialized closure #4 in MeshBuffer.init<A>(_:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (a1)
  {
    return 0;
  }

  v5 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = 0;

  return 1;
}

{
  if (a1)
  {
    return 0;
  }

  v6 = *a2;
  v5 = a2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v5;
  v7[4] = 0;

  return 1;
}

{
  if (a1)
  {
    return 0;
  }

  v7 = *a2;
  v8 = dispatch thunk of _AnySequenceBox._makeIterator()();
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  *(swift_allocObject() + 16) = v8;
  return 1;
}

unint64_t specialized MeshBuffers.Identifier.BufferName.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MeshBuffers.Identifier.BufferName.init(rawValue:), v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCs5SIMD4VySfG_Tt1g5092_s17RealityFoundation14MeshPartBufferC9copySlice6offset5countSayxGSi_SitFySryxGz_SiztXEfU_s5F9VySfG_Tg50H10Foundation0jkL0CyAGGS2iTf1nc_nTf4ngnn_nTm(uint64_t result, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v8 + 16) = v7;
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    v9 = a2[2];
    v10 = a2[3];
    v11 = a2[4];
    v12 = a2[5];
    result = REMeshAssetGetModelPartBufferAttributeData();
    if (result <= v7)
    {
      *(v8 + 16) = result;
      return v8;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfC17RealityFoundation18MeshJointInfluenceV_Tt1g504_s17f12Foundation14h69PartBufferC9copySlice6offset5countSayxGSi_SitFySryxGz_SiztXEfU_AA0C14iJ5V_Tg5AE0hmN0CyAGGS2iTf1nc_nTf4ngnn_nTm(uint64_t result, void *a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (result)
    {
      v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v4 + 16) = v3;
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    v5 = a2[2];
    v6 = a2[3];
    v7 = a2[4];
    v8 = a2[5];
    result = REMeshAssetGetModelPartBufferAttributeData();
    if (result <= v3)
    {
      *(v4 + 16) = result;
      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized SequenceBuffer.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = v9;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  Sequence.count(where:)();
  (*(v5 + 16))(v8, a1, a3);
  return AnySequence.init<A>(_:)();
}

uint64_t partial apply for specialized closure #3 in MeshBuffer.init<A>(_:)()
{
  return 0;
}

{
  return partial apply for specialized closure #3 in MeshBuffer.init<A>(_:)();
}

{
  return specialized closure #3 in MeshBuffer.init<A>(_:)(v0);
}

{
  return specialized closure #3 in MeshBuffer.init<A>(_:)(v0);
}

{
  return specialized closure #3 in MeshBuffer.init<A>(_:)(v0);
}

{
  return specialized closure #3 in MeshBuffer.init<A>(_:)(v0);
}

{
  return specialized closure #3 in MeshBuffer.init<A>(_:)(v0);
}

{
  return specialized closure #3 in MeshBuffer.init<A>(_:)(&v1);
}

uint64_t partial apply for specialized closure #4 in MeshBuffer.init<A>(_:)(uint64_t a1)
{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, (v1 + 16), &_ss12_IteratorBoxCys03AnyA0Vys4Int8VGGMd, &_ss12_IteratorBoxCys03AnyA0Vys4Int8VGGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, (v1 + 16), &_ss12_IteratorBoxCys03AnyA0Vys5UInt8VGGMd, &_ss12_IteratorBoxCys03AnyA0Vys5UInt8VGGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, (v1 + 16), &_ss12_IteratorBoxCys03AnyA0Vys5Int16VGGMd, &_ss12_IteratorBoxCys03AnyA0Vys5Int16VGGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, (v1 + 16), &_ss12_IteratorBoxCys03AnyA0Vys6UInt16VGGMd, &_ss12_IteratorBoxCys03AnyA0Vys6UInt16VGGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, (v1 + 16), &_ss12_IteratorBoxCys03AnyA0Vys5Int32VGGMd, &_ss12_IteratorBoxCys03AnyA0Vys5Int32VGGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, (v1 + 16), &_ss12_IteratorBoxCys03AnyA0Vys6UInt32VGGMd, &_ss12_IteratorBoxCys03AnyA0Vys6UInt32VGGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, (v1 + 16), &_ss12_IteratorBoxCys03AnyA0VySfGGMd, &_ss12_IteratorBoxCys03AnyA0VySfGGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, (v1 + 16), &_ss12_IteratorBoxCys03AnyA0VySdGGMd, &_ss12_IteratorBoxCys03AnyA0VySdGGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, (v1 + 16), &_ss12_IteratorBoxCys03AnyA0Vys5SIMD2VySfGGGMd, &_ss12_IteratorBoxCys03AnyA0Vys5SIMD2VySfGGGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, (v1 + 16), &_ss12_IteratorBoxCys03AnyA0Vys5SIMD3VySfGGGMd, &_ss12_IteratorBoxCys03AnyA0Vys5SIMD3VySfGGGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, (v1 + 16), &_ss12_IteratorBoxCys03AnyA0Vys5SIMD4VySfGGGMd, &_ss12_IteratorBoxCys03AnyA0Vys5SIMD4VySfGGGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, (v1 + 16), &_ss12_IteratorBoxCys03AnyA0Vy17RealityFoundation18MeshJointInfluenceVGGMd, &_ss12_IteratorBoxCys03AnyA0Vy17RealityFoundation18MeshJointInfluenceVGGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, (v1 + 16));
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, v1, &type metadata for MeshJointInfluence, &_ss12_IteratorBoxCys08IndexingA0VySay17RealityFoundation18MeshJointInfluenceVGGGMd, &_ss12_IteratorBoxCys08IndexingA0VySay17RealityFoundation18MeshJointInfluenceVGGGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, v1, &_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR, &_ss12_IteratorBoxCys08IndexingA0VySays5SIMD4VySfGGGGMd, &_ss12_IteratorBoxCys08IndexingA0VySays5SIMD4VySfGGGGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, v1, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR, &_ss12_IteratorBoxCys08IndexingA0VySays5SIMD3VySfGGGGMd, &_ss12_IteratorBoxCys08IndexingA0VySays5SIMD3VySfGGGGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, v1, &type metadata for FloatVector3Packed, &_ss12_IteratorBoxCys08IndexingA0VySay17RealityFoundation18FloatVector3PackedVGGGMd, &_ss12_IteratorBoxCys08IndexingA0VySay17RealityFoundation18FloatVector3PackedVGGGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, v1, &_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR, &_ss12_IteratorBoxCys08IndexingA0VySays5SIMD2VySfGGGGMd, &_ss12_IteratorBoxCys08IndexingA0VySays5SIMD2VySfGGGGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, v1, MEMORY[0x1E69E63B0], &_ss12_IteratorBoxCys08IndexingA0VySaySdGGGMd, &_ss12_IteratorBoxCys08IndexingA0VySaySdGGGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, v1, MEMORY[0x1E69E6448], &_ss12_IteratorBoxCys08IndexingA0VySaySfGGGMd, &_ss12_IteratorBoxCys08IndexingA0VySaySfGGGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, v1, MEMORY[0x1E69E72F0], &_ss12_IteratorBoxCys08IndexingA0VySays5Int32VGGGMd, &_ss12_IteratorBoxCys08IndexingA0VySays5Int32VGGGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, v1, MEMORY[0x1E69E7290], &_ss12_IteratorBoxCys08IndexingA0VySays5Int16VGGGMd, &_ss12_IteratorBoxCys08IndexingA0VySays5Int16VGGGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, v1, MEMORY[0x1E69E7230], &_ss12_IteratorBoxCys08IndexingA0VySays4Int8VGGGMd, &_ss12_IteratorBoxCys08IndexingA0VySays4Int8VGGGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, v1, MEMORY[0x1E69E7668], &_ss12_IteratorBoxCys08IndexingA0VySays6UInt32VGGGMd, &_ss12_IteratorBoxCys08IndexingA0VySays6UInt32VGGGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, v1, MEMORY[0x1E69E75F8], &_ss12_IteratorBoxCys08IndexingA0VySays6UInt16VGGGMd, &_ss12_IteratorBoxCys08IndexingA0VySays6UInt16VGGGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, v1, MEMORY[0x1E69E7508], &_ss12_IteratorBoxCys08IndexingA0VySays5UInt8VGGGMd, &_ss12_IteratorBoxCys08IndexingA0VySays5UInt8VGGGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, (v1 + 16), &_ss12_IteratorBoxCy17RealityFoundation14IndexingBufferV0A0VyAC18MeshJointInfluenceV_GGMd, &_ss12_IteratorBoxCy17RealityFoundation14IndexingBufferV0A0VyAC18MeshJointInfluenceV_GGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, (v1 + 16), &_ss12_IteratorBoxCys08IndexingA0VySay17RealityFoundation18MeshJointInfluenceVGGGMd, &_ss12_IteratorBoxCys08IndexingA0VySay17RealityFoundation18MeshJointInfluenceVGGGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, (v1 + 16), &_ss12_IteratorBoxCy17RealityFoundation14IndexingBufferV0A0Vys5SIMD4VySfG_GGMd, &_ss12_IteratorBoxCy17RealityFoundation14IndexingBufferV0A0Vys5SIMD4VySfG_GGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, (v1 + 16), &_ss12_IteratorBoxCys08IndexingA0VySays5SIMD4VySfGGGGMd, &_ss12_IteratorBoxCys08IndexingA0VySays5SIMD4VySfGGGGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, (v1 + 16), &_ss12_IteratorBoxCy17RealityFoundation14IndexingBufferV0A0Vys5SIMD3VySfG_GGMd, &_ss12_IteratorBoxCy17RealityFoundation14IndexingBufferV0A0Vys5SIMD3VySfG_GGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, (v1 + 16), &_ss12_IteratorBoxCy17RealityFoundation14IndexingBufferV0A0Vys5SIMD2VySfG_GGMd, &_ss12_IteratorBoxCy17RealityFoundation14IndexingBufferV0A0Vys5SIMD2VySfG_GGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, (v1 + 16), &_ss12_IteratorBoxCys08IndexingA0VySays5SIMD2VySfGGGGMd, &_ss12_IteratorBoxCys08IndexingA0VySays5SIMD2VySfGGGGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, (v1 + 16), &_ss12_IteratorBoxCy17RealityFoundation14IndexingBufferV0A0VySd_GGMd, &_ss12_IteratorBoxCy17RealityFoundation14IndexingBufferV0A0VySd_GGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, (v1 + 16), &_ss12_IteratorBoxCys08IndexingA0VySaySdGGGMd, &_ss12_IteratorBoxCys08IndexingA0VySaySdGGGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, (v1 + 16), &_ss12_IteratorBoxCy17RealityFoundation14IndexingBufferV0A0VySf_GGMd, &_ss12_IteratorBoxCy17RealityFoundation14IndexingBufferV0A0VySf_GGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, (v1 + 16), &_ss12_IteratorBoxCys08IndexingA0VySaySfGGGMd, &_ss12_IteratorBoxCys08IndexingA0VySaySfGGGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, (v1 + 16), &_ss12_IteratorBoxCy17RealityFoundation14IndexingBufferV0A0Vys6UInt32V_GGMd, &_ss12_IteratorBoxCy17RealityFoundation14IndexingBufferV0A0Vys6UInt32V_GGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, (v1 + 16), &_ss12_IteratorBoxCys08IndexingA0VySays6UInt32VGGGMd, &_ss12_IteratorBoxCys08IndexingA0VySays6UInt32VGGGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, (v1 + 16), &_ss12_IteratorBoxCy17RealityFoundation14IndexingBufferV0A0Vys5Int32V_GGMd, &_ss12_IteratorBoxCy17RealityFoundation14IndexingBufferV0A0Vys5Int32V_GGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, (v1 + 16), &_ss12_IteratorBoxCys08IndexingA0VySays5Int32VGGGMd, &_ss12_IteratorBoxCys08IndexingA0VySays5Int32VGGGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, (v1 + 16), &_ss12_IteratorBoxCy17RealityFoundation14IndexingBufferV0A0Vys6UInt16V_GGMd, &_ss12_IteratorBoxCy17RealityFoundation14IndexingBufferV0A0Vys6UInt16V_GGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, (v1 + 16), &_ss12_IteratorBoxCys08IndexingA0VySays6UInt16VGGGMd, &_ss12_IteratorBoxCys08IndexingA0VySays6UInt16VGGGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, (v1 + 16), &_ss12_IteratorBoxCy17RealityFoundation14IndexingBufferV0A0Vys5Int16V_GGMd, &_ss12_IteratorBoxCy17RealityFoundation14IndexingBufferV0A0Vys5Int16V_GGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, (v1 + 16), &_ss12_IteratorBoxCys08IndexingA0VySays5Int16VGGGMd, &_ss12_IteratorBoxCys08IndexingA0VySays5Int16VGGGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, (v1 + 16), &_ss12_IteratorBoxCy17RealityFoundation14IndexingBufferV0A0Vys5UInt8V_GGMd, &_ss12_IteratorBoxCy17RealityFoundation14IndexingBufferV0A0Vys5UInt8V_GGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, (v1 + 16), &_ss12_IteratorBoxCys08IndexingA0VySays5UInt8VGGGMd, &_ss12_IteratorBoxCys08IndexingA0VySays5UInt8VGGGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, (v1 + 16), &_ss12_IteratorBoxCy17RealityFoundation14IndexingBufferV0A0Vys4Int8V_GGMd, &_ss12_IteratorBoxCy17RealityFoundation14IndexingBufferV0A0Vys4Int8V_GGMR);
}

{
  return specialized closure #4 in MeshBuffer.init<A>(_:)(a1, (v1 + 16), &_ss12_IteratorBoxCys08IndexingA0VySays4Int8VGGGMd, &_ss12_IteratorBoxCys08IndexingA0VySays4Int8VGGGMR);
}

uint64_t lazy protocol witness table accessor for type MeshBuffers.Semantic<SIMD3<Float>> and conformance MeshBuffers.Semantic<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined copy of MeshDescriptor.Materials(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined consume of MeshDescriptor.Materials(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined copy of MeshDescriptor.Primitives?(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return outlined copy of MeshDescriptor.Primitives(a1, a2, a3);
  }

  return a1;
}

uint64_t outlined consume of MeshDescriptor.Primitives?(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return outlined consume of MeshDescriptor.Primitives(a1, a2, a3);
  }

  return a1;
}

uint64_t outlined consume of MeshDescriptor.Primitives(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 < 2)
  {
  }

  if (!a3)
  {
  }

  return result;
}

uint64_t specialized MeshDescriptor.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*(a3 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  return MeshBufferDictionary.subscript.setter(a1, v10, a3, a4);
}

uint64_t outlined copy of MeshDescriptor.Skinning?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MeshBuffers.Identifier and conformance MeshBuffers.Identifier()
{
  result = lazy protocol witness table cache variable for type MeshBuffers.Identifier and conformance MeshBuffers.Identifier;
  if (!lazy protocol witness table cache variable for type MeshBuffers.Identifier and conformance MeshBuffers.Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshBuffers.Identifier and conformance MeshBuffers.Identifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MeshBuffers.Identifier and conformance MeshBuffers.Identifier;
  if (!lazy protocol witness table cache variable for type MeshBuffers.Identifier and conformance MeshBuffers.Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshBuffers.Identifier and conformance MeshBuffers.Identifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MeshBuffers.Rate and conformance MeshBuffers.Rate()
{
  result = lazy protocol witness table cache variable for type MeshBuffers.Rate and conformance MeshBuffers.Rate;
  if (!lazy protocol witness table cache variable for type MeshBuffers.Rate and conformance MeshBuffers.Rate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshBuffers.Rate and conformance MeshBuffers.Rate);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MeshBuffers.ElementType and conformance MeshBuffers.ElementType()
{
  result = lazy protocol witness table cache variable for type MeshBuffers.ElementType and conformance MeshBuffers.ElementType;
  if (!lazy protocol witness table cache variable for type MeshBuffers.ElementType and conformance MeshBuffers.ElementType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshBuffers.ElementType and conformance MeshBuffers.ElementType);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for MeshBuffers.Semantic<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t keypath_set_193Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t))
{
  v9 = *(a3 + a4 - 16);
  v10 = *(a3 + a4 - 8);
  v11 = *(a1 + 32);
  v12 = *(a1 + 64);
  v16[3] = *(a1 + 48);
  v16[4] = v12;
  v17 = *(a1 + 80);
  v13 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v13;
  v16[2] = v11;
  outlined init with copy of [String : String](v16, v15, a5, a6);
  return a7(a1, v9, v10);
}

double keypath_get_192Tm@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void (*a3)(_OWORD *__return_ptr, void, void)@<X3>, uint64_t a4@<X8>)
{
  a3(v8, *(a1 + a2 - 16), *(a1 + a2 - 8));
  v5 = v8[3];
  *(a4 + 32) = v8[2];
  *(a4 + 48) = v5;
  *(a4 + 64) = v8[4];
  *(a4 + 80) = v9;
  result = *v8;
  v7 = v8[1];
  *a4 = v8[0];
  *(a4 + 16) = v7;
  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t type metadata instantiation function for MeshBuffers.Semantic()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for MeshBuffers.Identifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t storeEnumTagSinglePayload for MeshBuffers.Identifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for MeshBuffer()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for MeshBuffer.Iterator()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for MeshBuffer.Iterator(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MeshBuffer.Iterator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnyMeshBuffer(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for AnyMeshBuffer(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17RealityFoundation14MeshDescriptorV10PrimitivesOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for MeshDescriptor.Skinning(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for MeshDescriptor.Skinning(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GeomMeshError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 18))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GeomMeshError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for GeomMeshError(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BufferDescriptor(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 21))
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

uint64_t storeEnumTagSinglePayload for BufferDescriptor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 21) = 1;
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

    *(result + 21) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for MeshBuffer.Closures()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for MeshBufferDictionary.BufferEntry()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for MeshBufferDictionary.BufferEntry(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
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

uint64_t storeEnumTagSinglePayload for MeshBufferDictionary.BufferEntry(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in ConversionBuffer.init(_:_:)(uint64_t a1)
{
  return specialized closure #1 in ConversionBuffer.init(_:_:)(a1, v1 + 16, *(v1 + 104), *(v1 + 112), &_ss12_IteratorBoxCy17RealityFoundation16ConversionBufferV010ConvertingA0Vys6UInt32VAC04MeshF0Vys6UInt16VG_AMGGMd, &_ss12_IteratorBoxCy17RealityFoundation16ConversionBufferV010ConvertingA0Vys6UInt32VAC04MeshF0Vys6UInt16VG_AMGGMR);
}

{
  return specialized closure #1 in ConversionBuffer.init(_:_:)(a1, v1 + 16, *(v1 + 104), *(v1 + 112), &_ss12_IteratorBoxCy17RealityFoundation16ConversionBufferV010ConvertingA0Vys5SIMD3VySfGAC04MeshF0VyAC18FloatVector3PackedVG_ANGGMd, &_ss12_IteratorBoxCy17RealityFoundation16ConversionBufferV010ConvertingA0Vys5SIMD3VySfGAC04MeshF0VyAC18FloatVector3PackedVG_ANGGMR);
}

uint64_t partial apply for specialized closure #4 in MeshBuffer.init<A>(_:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t partial apply for specialized closure #1 in MeshBuffer.init<A>(_:)()
{
  return specialized closure #1 in MeshBuffer.init<A>(_:)((v0 + 16));
}

{
  return specialized closure #1 in MeshBuffer.init<A>(_:)(&v1);
}

{
  return specialized closure #1 in MeshBuffer.init<A>(_:)(&v1, &_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
}

{
  return specialized closure #1 in MeshBuffer.init<A>(_:)(&v1, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
}

{
  return specialized closure #1 in MeshBuffer.init<A>(_:)(&v1);
}

{
  return specialized closure #1 in MeshBuffer.init<A>(_:)(&v1, &_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
}

{
  return specialized closure #1 in MeshBuffer.init<A>(_:)(&v1);
}

{
  return specialized closure #1 in MeshBuffer.init<A>(_:)(&v1);
}

{
  return specialized closure #1 in MeshBuffer.init<A>(_:)(&v1);
}

{
  return specialized closure #1 in MeshBuffer.init<A>(_:)(&v1);
}

{
  return specialized closure #1 in MeshBuffer.init<A>(_:)(&v1);
}

{
  return specialized closure #1 in MeshBuffer.init<A>(_:)(&v1);
}

{
  return specialized closure #1 in MeshBuffer.init<A>(_:)(&v1);
}

{
  return specialized closure #1 in MeshBuffer.init<A>(_:)(&v1);
}

{
  v1 = *(v0 + 16);
}

uint64_t partial apply for specialized closure #2 in MeshBuffer.init<A>(_:)()
{
  return type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore();
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

unint64_t lazy protocol witness table accessor for type MeshResourceError and conformance MeshResourceError()
{
  result = lazy protocol witness table cache variable for type MeshResourceError and conformance MeshResourceError;
  if (!lazy protocol witness table cache variable for type MeshResourceError and conformance MeshResourceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshResourceError and conformance MeshResourceError);
  }

  return result;
}

uint64_t _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfC17RealityFoundation18MeshJointInfluenceV_Tt1g504_s10f5Kit12h13ResourceC0A10g75E4PartV6unpack9coreAsset10modelIndexSayAFGs13OpaquePointerV_SitFZySryAD0C14iJ13VGz_SiztXEfU_So9CFDataRefaSiTf1nc_nTf4ngn_n(uint64_t result, const __CFData *a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (result)
    {
      v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v6 + 16) = v5;
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    result = CFDataGetBytePtr(a2);
    if (!result)
    {
      goto LABEL_10;
    }

    result = memcpy((v6 + 32), result, 8 * a3);
    if (v5 >= a3)
    {
      *(v6 + 16) = a3;
      return v6;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCs5Int32V_Tt1g50114_s10RealityKit12MeshResourceC0A10FoundationE4PartV6unpack9coreAsset10modelIndexSayAFGs13OpaquePointerV_SitFZySrys5F14VGz_SiztXEfU0_So9CFDataRefaSiTf1nc_nTf4ngn_n(uint64_t result, const __CFData *a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (result)
    {
      v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v6 + 16) = v5;
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    result = CFDataGetBytePtr(a2);
    if (!result)
    {
      goto LABEL_10;
    }

    result = memcpy((v6 + 32), result, 4 * a3);
    if (v5 >= a3)
    {
      *(v6 + 16) = a3;
      return v6;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

char *specialized static MeshResource.Part.unpack(coreAsset:modelIndex:)(uint64_t a1, uint64_t a2)
{
  v875 = *MEMORY[0x1E69E9840];
  v785 = a2;
  ModelPartCount = REMeshAssetGetModelPartCount();
  if (ModelPartCount < 0)
  {
    goto LABEL_314;
  }

  if (ModelPartCount)
  {
    v770 = ModelPartCount;
    REMeshAssetGetModelPartName();
    v4 = String.init(cString:)();
    v775 = v5;
    v776 = v4;
    v779 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_17RealityFoundation16BufferDescriptorVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    ModelPartBufferCount = REMeshAssetGetModelPartBufferCount();
    if (ModelPartBufferCount < 0)
    {
      goto LABEL_312;
    }

    v784 = 0;
    v772 = 0;
    v769 = 0x80000001C18DD9D0;
    v778 = 0x80000001C18E8710;
    v764 = (v817 + 5);
    v763 = (v815 + 5);
    v753 = (v813 + 5);
    v752 = (v811 + 5);
    v762 = (v809 + 5);
    v761 = (v807 + 5);
    v760 = (v805 + 5);
    v759 = (v803 + 5);
    v758 = (v801 + 5);
    v757 = (v799 + 5);
    v756 = (v797 + 5);
    v755 = (v795 + 5);
    v754 = (v793 + 5);
    v777 = (v791 + 5);
    v7 = 1;
    v786 = MEMORY[0x1E69E7CC0];
    v773 = MEMORY[0x1E69E7CC0];
    v782 = a1;
    while (1)
    {
      v771 = v7;
      if (ModelPartBufferCount)
      {
        break;
      }

LABEL_82:
      v790 = 0;
      v54 = v784;
      v53 = v785;
      ModelPartMaterial = REMeshAssetGetModelPartMaterial();
      v56 = v790;
      type metadata accessor for BufferInstaller #1 in static MeshResource.Part.unpack(coreAsset:modelIndex:)();
      v57 = swift_allocObject();
      v58 = v57;
      v57[14] = 0;
      v57[15] = 0;
      *(v57 + 125) = 0;
      v57[10] = a1;
      v57[11] = v53;
      if (!ModelPartMaterial)
      {
        v56 = 0;
      }

      v57[12] = v54;
      v57[13] = -1;
      v59 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation11MeshBuffersO10IdentifierV_AC0E12BufferErased_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v788 = 1;
      v58[2] = v59;
      v787 = (v58 + 2);
      v60 = v775;
      v58[3] = v776;
      v58[4] = v60;
      v58[5] = 0;
      v58[6] = 0;
      *(v58 + 14) = 0;
      *(v58 + 60) = 1;
      v58[8] = v56;
      *(v58 + 72) = 0;
      if ((ModelPartMaterial & 1) == 0)
      {
        swift_beginAccess();
        *(v58 + 72) = 0;
      }

      v61 = v779 + 8;
      v62 = 1 << *(v779 + 32);
      if (v62 < 64)
      {
        v63 = ~(-1 << v62);
      }

      else
      {
        v63 = -1;
      }

      v64 = v63 & v779[8];
      v65 = (v62 + 63) >> 6;

      v66 = 0;
      v775 = v65;
      v776 = v58;
      v774 = v61;
LABEL_90:
      if (v64)
      {
        v67 = v779;
        goto LABEL_97;
      }

      v67 = v779;
      while (1)
      {
        v68 = v66 + 1;
        if (__OFADD__(v66, 1))
        {
          __break(1u);
LABEL_309:
          __break(1u);
LABEL_310:
          __break(1u);
LABEL_311:
          __break(1u);
          goto LABEL_312;
        }

        if (v68 >= v65)
        {
          break;
        }

        v64 = v61[v68];
        ++v66;
        if (v64)
        {
          v66 = v68;
LABEL_97:
          v69 = __clz(__rbit64(v64));
          v64 &= v64 - 1;
          v70 = v69 | (v66 << 6);
          v71 = *(v67[6] + 8 * v70);
          v72 = v67[7] + 24 * v70;
          v74 = *v72;
          v73 = *(v72 + 8);
          v75 = *(v72 + 16);
          v76 = *(v72 + 17);
          v77 = *(v72 + 18);
          v78 = *(v72 + 19);
          v79 = *(v72 + 20);
          v80 = 256;
          if (!v76)
          {
            v80 = 0;
          }

          v81 = v58[15];
          v781 = v71;
          v58[13] = v71;
          v58[14] = v74;
          v58[15] = v73;
          *(v58 + 132) = v79 != 0;
          *(v58 + 32) = v80 | v75 | (v77 << 16) | (v78 << 24);
          ModelPartBufferAttributeRate = v73;
          swift_bridgeObjectRetain_n();

          v83 = v58[14];
          v82 = v58[15];
          if (v78 > 5)
          {
            if (v78 > 8)
            {
              if (v78 == 9)
              {
                if (v79)
                {
                  if (!v82)
                  {
                    goto LABEL_217;
                  }

                  v224 = *(v58 + 130);
                  v225 = v58[15];
                  swift_bridgeObjectRetain_n();

                  v780 = v83;
                  v883._countAndFlagsBits = v83;
                  v883._object = v82;
                  v766 = specialized MeshBuffers.Identifier.BufferName.init(rawValue:)(v883);
                  isUniquelyReferenced_nonNull_native = v766 == 8;
                  v226 = v82;
                  v227 = v58[10];
                  v228 = v58[11];
                  v229 = v58[12];
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14MeshPartBufferCyAA18FloatVector3PackedVGMd, &_s17RealityFoundation14MeshPartBufferCyAA18FloatVector3PackedVGMR);
                  v230 = swift_allocObject();
                  v230[2] = v227;
                  v230[3] = v228;
                  v231 = v781;
                  v230[4] = v229;
                  v230[5] = v231;
                  IsSlow = REMeshAssetModelPartBufferAttributeIsSlow();
                  v233 = 512;
                  if (IsSlow)
                  {
                    v233 = 0x40000;
                  }

                  v230[6] = v233;
                  RERetain();
                  v234 = v230[2];
                  v235 = v230[3];
                  v236 = v230[4];
                  v237 = v230[5];

                  ModelPartBufferAttributeCount = REMeshAssetGetModelPartBufferAttributeCount();
                  swift_retain_n();

                  *&v870 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
                  *(&v870 + 1) = v230;
                  *&v871 = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
                  *(&v871 + 1) = v230;
                  *&v872[0] = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
                  *(&v872[0] + 1) = v230;
                  *&v872[1] = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
                  *(&v872[1] + 1) = v230;
                  LOWORD(v873) = 265;
                  v768 = ModelPartBufferAttributeCount;
                  *(&v873 + 1) = ModelPartBufferAttributeCount;
                  LODWORD(v781) = v224;
                  v874 = v224;
                  swift_beginAccess();
                  v867 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_AA18FloatVector3PackedVGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_AA18FloatVector3PackedVGMR);
                  v868 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
                  v239 = swift_allocObject();
                  v866[0] = v239;
                  outlined init with copy of [String : String](&v870, &v853, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGMd, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGMR);
                  outlined init with copy of [String : String](&v870, &v853, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGMd, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGMR);
                  v240 = one-time initialization token for triangleIndices;

                  if (v240 != -1)
                  {
                    swift_once();
                  }

                  v241 = v780;
                  v242 = v226;
                  if (v780 == static MeshBuffers.Identifier.triangleIndices && v226 == *algn_1EBEAD098)
                  {
                    v243 = 2;
                  }

                  else
                  {
                    v612 = _stringCompareWithSmolCheck(_:_:expecting:)();
                    v243 = v874;
                    if (v612)
                    {
                      v243 = 2;
                    }
                  }

                  v613 = *(&v873 + 1);
                  v766 = v766 == 8;
                  v614 = v873;
                  v615 = BYTE1(v873);
                  v616 = v871;
                  v617 = v752;
                  *v752 = v870;
                  v617[1] = v616;
                  *(v617 + 80) = v874;
                  v618 = v873;
                  v617[3] = v872[1];
                  v617[4] = v618;
                  v617[2] = v872[0];
                  *(v239 + 16) = v241;
                  *(v239 + 24) = v226;
                  *(v239 + 32) = isUniquelyReferenced_nonNull_native;
                  *(v239 + 40) = v613;
                  *(v239 + 48) = v243;
                  *(v239 + 49) = v614;
                  *(v239 + 50) = v615;
                  v619 = v811[0];
                  *(v239 + 67) = v811[1];
                  *(v239 + 51) = v619;
                  v620 = v811[2];
                  v621 = v811[3];
                  v622 = *v812;
                  *(v239 + 129) = *&v812[14];
                  *(v239 + 115) = v622;
                  *(v239 + 99) = v621;
                  *(v239 + 83) = v620;
                  outlined init with take of BindableDataInternal(v866, v851);
                  v623 = v776;
                  v624 = *(v776 + 16);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v789 = v623[2];
                  v623[2] = 0x8000000000000000;
                  v625 = v852;
                  v626 = __swift_mutable_project_boxed_opaque_existential_1(v851, v852);
                  v765 = &v751;
                  v627 = *(*(v625 - 8) + 64);
                  v628 = MEMORY[0x1EEE9AC00](v626);
                  v630 = v241;
                  v631 = (&v751 - ((v629 + 15) & 0xFFFFFFFFFFFFFFF0));
                  (*(v632 + 16))(v631, v628);
                  v633 = v631[5];
                  v837[4] = v631[4];
                  v837[5] = v633;
                  v838[0] = v631[6];
                  *(v838 + 9) = *(v631 + 105);
                  v634 = v631[1];
                  v837[0] = *v631;
                  v837[1] = v634;
                  v635 = v631[3];
                  v837[2] = v631[2];
                  v837[3] = v635;
                  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v837, v630, v242, v766, isUniquelyReferenced_nonNull_native, &v789);
                  __swift_destroy_boxed_opaque_existential_1(v851);

                  v58 = v623;
                  v623[2] = v789;
                  v368 = &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGMd;
                  v369 = &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGMR;
                  outlined destroy of BodyTrackingComponent?(&v870, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGMd, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGMR);
                  swift_endAccess();

                  v853 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
                  v854 = v230;
                  v855 = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
                  v856 = v230;
                  v857 = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
                  v858 = v230;
                  v859 = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
                  v860 = v230;
                  v394 = 265;
                }

                else
                {
                  if (!v82)
                  {
                    goto LABEL_217;
                  }

                  v324 = *(v58 + 130);
                  v325 = v58[15];
                  swift_bridgeObjectRetain_n();

                  v780 = v83;
                  v888._countAndFlagsBits = v83;
                  v888._object = v82;
                  v766 = specialized MeshBuffers.Identifier.BufferName.init(rawValue:)(v888);
                  isUniquelyReferenced_nonNull_native = v766 == 8;
                  v326 = v82;
                  v327 = v58[10];
                  v328 = v58[11];
                  v329 = v58[12];
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14MeshPartBufferCys5SIMD3VySfGGMd, &_s17RealityFoundation14MeshPartBufferCys5SIMD3VySfGGMR);
                  v330 = swift_allocObject();
                  v330[2] = v327;
                  v330[3] = v328;
                  v331 = v781;
                  v330[4] = v329;
                  v330[5] = v331;
                  v332 = REMeshAssetModelPartBufferAttributeIsSlow();
                  v333 = 512;
                  if (v332)
                  {
                    v333 = 0x40000;
                  }

                  v330[6] = v333;
                  RERetain();
                  v334 = v330[2];
                  v335 = v330[3];
                  v336 = v330[4];
                  v337 = v330[5];

                  v338 = REMeshAssetGetModelPartBufferAttributeCount();
                  swift_retain_n();

                  *&v870 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
                  *(&v870 + 1) = v330;
                  *&v871 = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
                  *(&v871 + 1) = v330;
                  *&v872[0] = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
                  *(&v872[0] + 1) = v330;
                  *&v872[1] = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
                  *(&v872[1] + 1) = v330;
                  LOWORD(v873) = 9;
                  v768 = v338;
                  *(&v873 + 1) = v338;
                  LODWORD(v781) = v324;
                  v874 = v324;
                  swift_beginAccess();
                  v867 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMR);
                  v868 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
                  v339 = swift_allocObject();
                  v866[0] = v339;
                  outlined init with copy of [String : String](&v870, &v853, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
                  outlined init with copy of [String : String](&v870, &v853, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
                  v340 = one-time initialization token for triangleIndices;

                  if (v340 != -1)
                  {
                    swift_once();
                  }

                  v341 = v780;
                  v342 = v326;
                  if (v780 == static MeshBuffers.Identifier.triangleIndices && v326 == *algn_1EBEAD098)
                  {
                    v343 = 2;
                  }

                  else
                  {
                    v636 = _stringCompareWithSmolCheck(_:_:expecting:)();
                    v343 = v874;
                    if (v636)
                    {
                      v343 = 2;
                    }
                  }

                  v637 = *(&v873 + 1);
                  v766 = v766 == 8;
                  v638 = v873;
                  v639 = BYTE1(v873);
                  v640 = v871;
                  v641 = v753;
                  *v753 = v870;
                  v641[1] = v640;
                  *(v641 + 80) = v874;
                  v642 = v873;
                  v641[3] = v872[1];
                  v641[4] = v642;
                  v641[2] = v872[0];
                  *(v339 + 16) = v341;
                  *(v339 + 24) = v326;
                  *(v339 + 32) = isUniquelyReferenced_nonNull_native;
                  *(v339 + 40) = v637;
                  *(v339 + 48) = v343;
                  *(v339 + 49) = v638;
                  *(v339 + 50) = v639;
                  v643 = v813[0];
                  *(v339 + 67) = v813[1];
                  *(v339 + 51) = v643;
                  v644 = v813[2];
                  v645 = v813[3];
                  v646 = *v814;
                  *(v339 + 129) = *&v814[14];
                  *(v339 + 115) = v646;
                  *(v339 + 99) = v645;
                  *(v339 + 83) = v644;
                  outlined init with take of BindableDataInternal(v866, v851);
                  v647 = v776;
                  v648 = *(v776 + 16);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v789 = v647[2];
                  v647[2] = 0x8000000000000000;
                  v649 = v852;
                  v650 = __swift_mutable_project_boxed_opaque_existential_1(v851, v852);
                  v765 = &v751;
                  v651 = *(*(v649 - 8) + 64);
                  v652 = MEMORY[0x1EEE9AC00](v650);
                  v654 = v341;
                  v655 = (&v751 - ((v653 + 15) & 0xFFFFFFFFFFFFFFF0));
                  (*(v656 + 16))(v655, v652);
                  v657 = v655[5];
                  v839[4] = v655[4];
                  v839[5] = v657;
                  v840[0] = v655[6];
                  *(v840 + 9) = *(v655 + 105);
                  v658 = v655[1];
                  v839[0] = *v655;
                  v839[1] = v658;
                  v659 = v655[3];
                  v839[2] = v655[2];
                  v839[3] = v659;
                  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v839, v654, v342, v766, isUniquelyReferenced_nonNull_native, &v789);
                  __swift_destroy_boxed_opaque_existential_1(v851);

                  v58 = v647;
                  v647[2] = v789;
                  v368 = &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd;
                  v369 = &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR;
                  outlined destroy of BodyTrackingComponent?(&v870, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
                  swift_endAccess();

                  v853 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
                  v854 = v330;
                  v855 = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
                  v856 = v330;
                  v857 = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
                  v858 = v330;
                  v859 = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
                  v860 = v330;
                  v394 = 9;
                }
              }

              else if (v78 == 10)
              {
                if (!v82)
                {
                  goto LABEL_217;
                }

                v144 = *(v58 + 130);
                v145 = v58[15];
                swift_bridgeObjectRetain_n();

                v780 = v83;
                v879._countAndFlagsBits = v83;
                v879._object = v82;
                v766 = specialized MeshBuffers.Identifier.BufferName.init(rawValue:)(v879);
                isUniquelyReferenced_nonNull_native = v766 == 8;
                v146 = v82;
                v147 = v58[10];
                v148 = v58[11];
                v149 = v58[12];
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14MeshPartBufferCys5SIMD4VySfGGMd, &_s17RealityFoundation14MeshPartBufferCys5SIMD4VySfGGMR);
                v150 = swift_allocObject();
                v150[2] = v147;
                v150[3] = v148;
                v151 = v781;
                v150[4] = v149;
                v150[5] = v151;
                v152 = REMeshAssetModelPartBufferAttributeIsSlow();
                v153 = 512;
                if (v152)
                {
                  v153 = 0x40000;
                }

                v150[6] = v153;
                RERetain();
                v154 = v150[2];
                v155 = v150[3];
                v156 = v150[4];
                v157 = v150[5];

                v158 = REMeshAssetGetModelPartBufferAttributeCount();
                swift_retain_n();

                *&v870 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
                *(&v870 + 1) = v150;
                *&v871 = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
                *(&v871 + 1) = v150;
                *&v872[0] = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
                *(&v872[0] + 1) = v150;
                *&v872[1] = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
                *(&v872[1] + 1) = v150;
                LOWORD(v873) = 10;
                v768 = v158;
                *(&v873 + 1) = v158;
                LODWORD(v781) = v144;
                v874 = v144;
                swift_beginAccess();
                v867 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD4VySfGGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD4VySfGGMR);
                v868 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
                v159 = swift_allocObject();
                v866[0] = v159;
                outlined init with copy of [String : String](&v870, &v853, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGMR);
                outlined init with copy of [String : String](&v870, &v853, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGMR);
                v160 = one-time initialization token for triangleIndices;

                if (v160 != -1)
                {
                  swift_once();
                }

                v161 = v780;
                v162 = v146;
                if (v780 == static MeshBuffers.Identifier.triangleIndices && v146 == *algn_1EBEAD098)
                {
                  v163 = 2;
                }

                else
                {
                  v492 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v163 = v874;
                  if (v492)
                  {
                    v163 = 2;
                  }
                }

                v493 = *(&v873 + 1);
                v766 = v766 == 8;
                v494 = v873;
                v495 = BYTE1(v873);
                v496 = v871;
                v497 = v763;
                *v763 = v870;
                v497[1] = v496;
                *(v497 + 80) = v874;
                v498 = v873;
                v497[3] = v872[1];
                v497[4] = v498;
                v497[2] = v872[0];
                *(v159 + 16) = v161;
                *(v159 + 24) = v146;
                *(v159 + 32) = isUniquelyReferenced_nonNull_native;
                *(v159 + 40) = v493;
                *(v159 + 48) = v163;
                *(v159 + 49) = v494;
                *(v159 + 50) = v495;
                v499 = v815[0];
                *(v159 + 67) = v815[1];
                *(v159 + 51) = v499;
                v500 = v815[2];
                v501 = v815[3];
                v502 = *v816;
                *(v159 + 129) = *&v816[14];
                *(v159 + 115) = v502;
                *(v159 + 99) = v501;
                *(v159 + 83) = v500;
                outlined init with take of BindableDataInternal(v866, v851);
                v503 = v776;
                v504 = *(v776 + 16);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v789 = v503[2];
                v503[2] = 0x8000000000000000;
                v505 = v852;
                v506 = __swift_mutable_project_boxed_opaque_existential_1(v851, v852);
                v765 = &v751;
                v507 = *(*(v505 - 8) + 64);
                v508 = MEMORY[0x1EEE9AC00](v506);
                v510 = v161;
                v511 = (&v751 - ((v509 + 15) & 0xFFFFFFFFFFFFFFF0));
                (*(v512 + 16))(v511, v508);
                v513 = v511[5];
                v841[4] = v511[4];
                v841[5] = v513;
                v842[0] = v511[6];
                *(v842 + 9) = *(v511 + 105);
                v514 = v511[1];
                v841[0] = *v511;
                v841[1] = v514;
                v515 = v511[3];
                v841[2] = v511[2];
                v841[3] = v515;
                specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v841, v510, v162, v766, isUniquelyReferenced_nonNull_native, &v789);
                __swift_destroy_boxed_opaque_existential_1(v851);

                v58 = v503;
                v503[2] = v789;
                v368 = &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGMd;
                v369 = &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGMR;
                outlined destroy of BodyTrackingComponent?(&v870, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGMR);
                swift_endAccess();

                v853 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
                v854 = v150;
                v855 = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
                v856 = v150;
                v857 = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
                v858 = v150;
                v859 = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
                v860 = v150;
                v394 = 10;
              }

              else
              {
                if (!v82)
                {
                  goto LABEL_217;
                }

                v304 = *(v58 + 130);
                v305 = v58[15];
                swift_bridgeObjectRetain_n();

                v780 = v83;
                v887._countAndFlagsBits = v83;
                v887._object = v82;
                v766 = specialized MeshBuffers.Identifier.BufferName.init(rawValue:)(v887);
                isUniquelyReferenced_nonNull_native = v766 == 8;
                v306 = v82;
                v307 = v58[10];
                v308 = v58[11];
                v309 = v58[12];
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14MeshPartBufferCyAA0C14JointInfluenceVGMd, &_s17RealityFoundation14MeshPartBufferCyAA0C14JointInfluenceVGMR);
                v310 = swift_allocObject();
                v310[2] = v307;
                v310[3] = v308;
                v311 = v781;
                v310[4] = v309;
                v310[5] = v311;
                v312 = REMeshAssetModelPartBufferAttributeIsSlow();
                v313 = 512;
                if (v312)
                {
                  v313 = 0x40000;
                }

                v310[6] = v313;
                RERetain();
                v314 = v310[2];
                v315 = v310[3];
                v316 = v310[4];
                v317 = v310[5];

                v318 = REMeshAssetGetModelPartBufferAttributeCount();
                swift_retain_n();

                *&v870 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
                *(&v870 + 1) = v310;
                *&v871 = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
                *(&v871 + 1) = v310;
                *&v872[0] = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
                *(&v872[0] + 1) = v310;
                *&v872[1] = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
                *(&v872[1] + 1) = v310;
                LOWORD(v873) = 11;
                v768 = v318;
                *(&v873 + 1) = v318;
                LODWORD(v781) = v304;
                v874 = v304;
                swift_beginAccess();
                v867 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_AA0C14JointInfluenceVGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_AA0C14JointInfluenceVGMR);
                v868 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
                v319 = swift_allocObject();
                v866[0] = v319;
                outlined init with copy of [String : String](&v870, &v853, &_s17RealityFoundation10MeshBufferVyAA0C14JointInfluenceVGMd, &_s17RealityFoundation10MeshBufferVyAA0C14JointInfluenceVGMR);
                outlined init with copy of [String : String](&v870, &v853, &_s17RealityFoundation10MeshBufferVyAA0C14JointInfluenceVGMd, &_s17RealityFoundation10MeshBufferVyAA0C14JointInfluenceVGMR);
                v320 = one-time initialization token for triangleIndices;

                if (v320 != -1)
                {
                  swift_once();
                }

                v321 = v780;
                v322 = v306;
                if (v780 == static MeshBuffers.Identifier.triangleIndices && v306 == *algn_1EBEAD098)
                {
                  v323 = 2;
                }

                else
                {
                  v588 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v323 = v874;
                  if (v588)
                  {
                    v323 = 2;
                  }
                }

                v589 = *(&v873 + 1);
                v766 = v766 == 8;
                v590 = v873;
                v591 = BYTE1(v873);
                v592 = v871;
                v593 = v764;
                *v764 = v870;
                v593[1] = v592;
                *(v593 + 80) = v874;
                v594 = v873;
                v593[3] = v872[1];
                v593[4] = v594;
                v593[2] = v872[0];
                *(v319 + 16) = v321;
                *(v319 + 24) = v306;
                *(v319 + 32) = isUniquelyReferenced_nonNull_native;
                *(v319 + 40) = v589;
                *(v319 + 48) = v323;
                *(v319 + 49) = v590;
                *(v319 + 50) = v591;
                v595 = v817[0];
                *(v319 + 67) = v817[1];
                *(v319 + 51) = v595;
                v596 = v817[2];
                v597 = v817[3];
                v598 = *v818;
                *(v319 + 129) = *&v818[14];
                *(v319 + 115) = v598;
                *(v319 + 99) = v597;
                *(v319 + 83) = v596;
                outlined init with take of BindableDataInternal(v866, v851);
                v599 = v776;
                v600 = *(v776 + 16);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v789 = v599[2];
                v599[2] = 0x8000000000000000;
                v601 = v852;
                v602 = __swift_mutable_project_boxed_opaque_existential_1(v851, v852);
                v765 = &v751;
                v603 = *(*(v601 - 8) + 64);
                v604 = MEMORY[0x1EEE9AC00](v602);
                v606 = v321;
                v607 = (&v751 - ((v605 + 15) & 0xFFFFFFFFFFFFFFF0));
                (*(v608 + 16))(v607, v604);
                v609 = v607[5];
                v843[4] = v607[4];
                v843[5] = v609;
                v844[0] = v607[6];
                *(v844 + 9) = *(v607 + 105);
                v610 = v607[1];
                v843[0] = *v607;
                v843[1] = v610;
                v611 = v607[3];
                v843[2] = v607[2];
                v843[3] = v611;
                specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v843, v606, v322, v766, isUniquelyReferenced_nonNull_native, &v789);
                __swift_destroy_boxed_opaque_existential_1(v851);

                v58 = v599;
                v599[2] = v789;
                v368 = &_s17RealityFoundation10MeshBufferVyAA0C14JointInfluenceVGMd;
                v369 = &_s17RealityFoundation10MeshBufferVyAA0C14JointInfluenceVGMR;
                outlined destroy of BodyTrackingComponent?(&v870, &_s17RealityFoundation10MeshBufferVyAA0C14JointInfluenceVGMd, &_s17RealityFoundation10MeshBufferVyAA0C14JointInfluenceVGMR);
                swift_endAccess();

                v853 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
                v854 = v310;
                v855 = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
                v856 = v310;
                v857 = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
                v858 = v310;
                v859 = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
                v860 = v310;
                v394 = 11;
              }

              goto LABEL_258;
            }

            if (v78 != 6)
            {
              if (v78 == 7)
              {
                if (v82)
                {
                  v104 = *(v58 + 130);
                  v105 = v58[15];
                  swift_bridgeObjectRetain_n();

                  v780 = v83;
                  v877._countAndFlagsBits = v83;
                  v877._object = v82;
                  v766 = specialized MeshBuffers.Identifier.BufferName.init(rawValue:)(v877);
                  isUniquelyReferenced_nonNull_native = v766 == 8;
                  v106 = v82;
                  v107 = v58[10];
                  v108 = v58[11];
                  v109 = v58[12];
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14MeshPartBufferCySdGMd, &_s17RealityFoundation14MeshPartBufferCySdGMR);
                  v110 = swift_allocObject();
                  v110[2] = v107;
                  v110[3] = v108;
                  v111 = v781;
                  v110[4] = v109;
                  v110[5] = v111;
                  v112 = REMeshAssetModelPartBufferAttributeIsSlow();
                  v113 = 512;
                  if (v112)
                  {
                    v113 = 0x40000;
                  }

                  v110[6] = v113;
                  RERetain();
                  v114 = v110[2];
                  v115 = v110[3];
                  v116 = v110[4];
                  v117 = v110[5];

                  v118 = REMeshAssetGetModelPartBufferAttributeCount();
                  swift_retain_n();

                  *&v870 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
                  *(&v870 + 1) = v110;
                  *&v871 = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
                  *(&v871 + 1) = v110;
                  *&v872[0] = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
                  *(&v872[0] + 1) = v110;
                  *&v872[1] = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
                  *(&v872[1] + 1) = v110;
                  LOWORD(v873) = 7;
                  v768 = v118;
                  *(&v873 + 1) = v118;
                  LODWORD(v781) = v104;
                  v874 = v104;
                  swift_beginAccess();
                  v867 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_SdGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_SdGMR);
                  v868 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
                  v119 = swift_allocObject();
                  v866[0] = v119;
                  outlined init with copy of [String : String](&v870, &v853, &_s17RealityFoundation10MeshBufferVySdGMd, &_s17RealityFoundation10MeshBufferVySdGMR);
                  outlined init with copy of [String : String](&v870, &v853, &_s17RealityFoundation10MeshBufferVySdGMd, &_s17RealityFoundation10MeshBufferVySdGMR);
                  v120 = one-time initialization token for triangleIndices;

                  if (v120 != -1)
                  {
                    swift_once();
                  }

                  v121 = v780;
                  v122 = v106;
                  if (v780 == static MeshBuffers.Identifier.triangleIndices && v106 == *algn_1EBEAD098)
                  {
                    v123 = 2;
                  }

                  else
                  {
                    v444 = _stringCompareWithSmolCheck(_:_:expecting:)();
                    v123 = v874;
                    if (v444)
                    {
                      v123 = 2;
                    }
                  }

                  v445 = *(&v873 + 1);
                  v766 = v766 == 8;
                  v446 = v873;
                  v447 = BYTE1(v873);
                  v448 = v871;
                  v449 = v761;
                  *v761 = v870;
                  v449[1] = v448;
                  *(v449 + 80) = v874;
                  v450 = v873;
                  v449[3] = v872[1];
                  v449[4] = v450;
                  v449[2] = v872[0];
                  *(v119 + 16) = v121;
                  *(v119 + 24) = v106;
                  *(v119 + 32) = isUniquelyReferenced_nonNull_native;
                  *(v119 + 40) = v445;
                  *(v119 + 48) = v123;
                  *(v119 + 49) = v446;
                  *(v119 + 50) = v447;
                  v451 = v807[0];
                  *(v119 + 67) = v807[1];
                  *(v119 + 51) = v451;
                  v452 = v807[2];
                  v453 = v807[3];
                  v454 = *v808;
                  *(v119 + 129) = *&v808[14];
                  *(v119 + 115) = v454;
                  *(v119 + 99) = v453;
                  *(v119 + 83) = v452;
                  outlined init with take of BindableDataInternal(v866, v851);
                  v455 = v776;
                  v456 = *(v776 + 16);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v789 = v455[2];
                  v455[2] = 0x8000000000000000;
                  v457 = v852;
                  v458 = __swift_mutable_project_boxed_opaque_existential_1(v851, v852);
                  v765 = &v751;
                  v459 = *(*(v457 - 8) + 64);
                  v460 = MEMORY[0x1EEE9AC00](v458);
                  v462 = v121;
                  v463 = (&v751 - ((v461 + 15) & 0xFFFFFFFFFFFFFFF0));
                  (*(v464 + 16))(v463, v460);
                  v465 = v463[5];
                  v833[4] = v463[4];
                  v833[5] = v465;
                  v834[0] = v463[6];
                  *(v834 + 9) = *(v463 + 105);
                  v466 = v463[1];
                  v833[0] = *v463;
                  v833[1] = v466;
                  v467 = v463[3];
                  v833[2] = v463[2];
                  v833[3] = v467;
                  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v833, v462, v122, v766, isUniquelyReferenced_nonNull_native, &v789);
                  __swift_destroy_boxed_opaque_existential_1(v851);

                  v58 = v455;
                  v455[2] = v789;
                  v368 = &_s17RealityFoundation10MeshBufferVySdGMd;
                  v369 = &_s17RealityFoundation10MeshBufferVySdGMR;
                  outlined destroy of BodyTrackingComponent?(&v870, &_s17RealityFoundation10MeshBufferVySdGMd, &_s17RealityFoundation10MeshBufferVySdGMR);
                  swift_endAccess();

                  v853 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
                  v854 = v110;
                  v855 = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
                  v856 = v110;
                  v857 = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
                  v858 = v110;
                  v859 = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
                  v860 = v110;
                  v443 = 7;
                  goto LABEL_248;
                }

LABEL_217:

LABEL_260:
                v61 = v774;
                v65 = v775;
                goto LABEL_90;
              }

              if (!v82)
              {
                goto LABEL_217;
              }

              v264 = *(v58 + 130);
              v265 = v58[15];
              swift_bridgeObjectRetain_n();

              v780 = v83;
              v885._countAndFlagsBits = v83;
              v885._object = v82;
              v766 = specialized MeshBuffers.Identifier.BufferName.init(rawValue:)(v885);
              isUniquelyReferenced_nonNull_native = v766 == 8;
              v266 = v82;
              v267 = v58[10];
              v268 = v58[11];
              v269 = v58[12];
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14MeshPartBufferCys5SIMD2VySfGGMd, &_s17RealityFoundation14MeshPartBufferCys5SIMD2VySfGGMR);
              v270 = swift_allocObject();
              v270[2] = v267;
              v270[3] = v268;
              v271 = v781;
              v270[4] = v269;
              v270[5] = v271;
              v272 = REMeshAssetModelPartBufferAttributeIsSlow();
              v273 = 512;
              if (v272)
              {
                v273 = 0x40000;
              }

              v270[6] = v273;
              RERetain();
              v274 = v270[2];
              v275 = v270[3];
              v276 = v270[4];
              v277 = v270[5];

              v278 = REMeshAssetGetModelPartBufferAttributeCount();
              swift_retain_n();

              *&v870 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
              *(&v870 + 1) = v270;
              *&v871 = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
              *(&v871 + 1) = v270;
              *&v872[0] = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
              *(&v872[0] + 1) = v270;
              *&v872[1] = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
              *(&v872[1] + 1) = v270;
              LOWORD(v873) = 8;
              v768 = v278;
              *(&v873 + 1) = v278;
              LODWORD(v781) = v264;
              v874 = v264;
              swift_beginAccess();
              v867 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD2VySfGGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD2VySfGGMR);
              v868 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
              v279 = swift_allocObject();
              v866[0] = v279;
              outlined init with copy of [String : String](&v870, &v853, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGMR);
              outlined init with copy of [String : String](&v870, &v853, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGMR);
              v280 = one-time initialization token for triangleIndices;

              if (v280 != -1)
              {
                swift_once();
              }

              v281 = v780;
              v282 = v266;
              if (v780 == static MeshBuffers.Identifier.triangleIndices && v266 == *algn_1EBEAD098)
              {
                v283 = 2;
              }

              else
              {
                v540 = _stringCompareWithSmolCheck(_:_:expecting:)();
                v283 = v874;
                if (v540)
                {
                  v283 = 2;
                }
              }

              v541 = *(&v873 + 1);
              v766 = v766 == 8;
              v542 = v873;
              v543 = BYTE1(v873);
              v544 = v871;
              v545 = v762;
              *v762 = v870;
              v545[1] = v544;
              *(v545 + 80) = v874;
              v546 = v873;
              v545[3] = v872[1];
              v545[4] = v546;
              v545[2] = v872[0];
              *(v279 + 16) = v281;
              *(v279 + 24) = v266;
              *(v279 + 32) = isUniquelyReferenced_nonNull_native;
              *(v279 + 40) = v541;
              *(v279 + 48) = v283;
              *(v279 + 49) = v542;
              *(v279 + 50) = v543;
              v547 = v809[0];
              *(v279 + 67) = v809[1];
              *(v279 + 51) = v547;
              v548 = v809[2];
              v549 = v809[3];
              v550 = *v810;
              *(v279 + 129) = *&v810[14];
              *(v279 + 115) = v550;
              *(v279 + 99) = v549;
              *(v279 + 83) = v548;
              outlined init with take of BindableDataInternal(v866, v851);
              v551 = v776;
              v552 = *(v776 + 16);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v789 = v551[2];
              v551[2] = 0x8000000000000000;
              v553 = v852;
              v554 = __swift_mutable_project_boxed_opaque_existential_1(v851, v852);
              v765 = &v751;
              v555 = *(*(v553 - 8) + 64);
              v556 = MEMORY[0x1EEE9AC00](v554);
              v558 = v281;
              v559 = (&v751 - ((v557 + 15) & 0xFFFFFFFFFFFFFFF0));
              (*(v560 + 16))(v559, v556);
              v561 = v559[5];
              v835[4] = v559[4];
              v835[5] = v561;
              v836[0] = v559[6];
              *(v836 + 9) = *(v559 + 105);
              v562 = v559[1];
              v835[0] = *v559;
              v835[1] = v562;
              v563 = v559[3];
              v835[2] = v559[2];
              v835[3] = v563;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v835, v558, v282, v766, isUniquelyReferenced_nonNull_native, &v789);
              __swift_destroy_boxed_opaque_existential_1(v851);

              v58 = v551;
              v551[2] = v789;
              v368 = &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGMd;
              v369 = &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGMR;
              outlined destroy of BodyTrackingComponent?(&v870, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGMR);
              swift_endAccess();

              v853 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
              v854 = v270;
              v855 = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
              v856 = v270;
              v857 = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
              v858 = v270;
              v859 = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
              v860 = v270;
              v394 = 8;
LABEL_258:
              v861 = v394;
LABEL_259:
              v862 = v851[0];
              v863 = WORD2(v851[0]);
              v864 = v768;
              v865 = v781;
              outlined destroy of BodyTrackingComponent?(&v853, v368, v369);

              goto LABEL_260;
            }

            if (v82)
            {
              v184 = *(v58 + 130);
              v185 = v58[15];
              swift_bridgeObjectRetain_n();

              v780 = v83;
              v881._countAndFlagsBits = v83;
              v881._object = v82;
              v766 = specialized MeshBuffers.Identifier.BufferName.init(rawValue:)(v881);
              isUniquelyReferenced_nonNull_native = v766 == 8;
              v186 = v82;
              v187 = v58[10];
              v188 = v58[11];
              v189 = v58[12];
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14MeshPartBufferCySfGMd, &_s17RealityFoundation14MeshPartBufferCySfGMR);
              v190 = swift_allocObject();
              v190[2] = v187;
              v190[3] = v188;
              v191 = v781;
              v190[4] = v189;
              v190[5] = v191;
              v192 = REMeshAssetModelPartBufferAttributeIsSlow();
              v193 = 512;
              if (v192)
              {
                v193 = 0x40000;
              }

              v190[6] = v193;
              RERetain();
              v194 = v190[2];
              v195 = v190[3];
              v196 = v190[4];
              v197 = v190[5];

              v198 = REMeshAssetGetModelPartBufferAttributeCount();
              swift_retain_n();

              *&v870 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
              *(&v870 + 1) = v190;
              *&v871 = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
              *(&v871 + 1) = v190;
              *&v872[0] = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
              *(&v872[0] + 1) = v190;
              *&v872[1] = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
              *(&v872[1] + 1) = v190;
              LOWORD(v873) = 6;
              v768 = v198;
              *(&v873 + 1) = v198;
              LODWORD(v781) = v184;
              v874 = v184;
              swift_beginAccess();
              v867 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_SfGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_SfGMR);
              v868 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
              v199 = swift_allocObject();
              v866[0] = v199;
              outlined init with copy of [String : String](&v870, &v853, &_s17RealityFoundation10MeshBufferVySfGMd, &_s17RealityFoundation10MeshBufferVySfGMR);
              outlined init with copy of [String : String](&v870, &v853, &_s17RealityFoundation10MeshBufferVySfGMd, &_s17RealityFoundation10MeshBufferVySfGMR);
              v200 = one-time initialization token for triangleIndices;

              if (v200 != -1)
              {
                swift_once();
              }

              v201 = v780;
              v202 = v186;
              if (v780 == static MeshBuffers.Identifier.triangleIndices && v186 == *algn_1EBEAD098)
              {
                v203 = 2;
              }

              else
              {
                v370 = _stringCompareWithSmolCheck(_:_:expecting:)();
                v203 = v874;
                if (v370)
                {
                  v203 = 2;
                }
              }

              v371 = *(&v873 + 1);
              v766 = v766 == 8;
              v372 = v873;
              v373 = BYTE1(v873);
              v374 = v871;
              v375 = v760;
              *v760 = v870;
              v375[1] = v374;
              *(v375 + 80) = v874;
              v376 = v873;
              v375[3] = v872[1];
              v375[4] = v376;
              v375[2] = v872[0];
              *(v199 + 16) = v201;
              *(v199 + 24) = v186;
              *(v199 + 32) = isUniquelyReferenced_nonNull_native;
              *(v199 + 40) = v371;
              *(v199 + 48) = v203;
              *(v199 + 49) = v372;
              *(v199 + 50) = v373;
              v377 = v805[0];
              *(v199 + 67) = v805[1];
              *(v199 + 51) = v377;
              v378 = v805[2];
              v379 = v805[3];
              v380 = *v806;
              *(v199 + 129) = *&v806[14];
              *(v199 + 115) = v380;
              *(v199 + 99) = v379;
              *(v199 + 83) = v378;
              outlined init with take of BindableDataInternal(v866, v851);
              v381 = v776;
              v382 = *(v776 + 16);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v789 = v381[2];
              v381[2] = 0x8000000000000000;
              v383 = v852;
              v384 = __swift_mutable_project_boxed_opaque_existential_1(v851, v852);
              v765 = &v751;
              v385 = *(*(v383 - 8) + 64);
              v386 = MEMORY[0x1EEE9AC00](v384);
              v388 = v201;
              v389 = (&v751 - ((v387 + 15) & 0xFFFFFFFFFFFFFFF0));
              (*(v390 + 16))(v389, v386);
              v391 = v389[5];
              v831[4] = v389[4];
              v831[5] = v391;
              v832[0] = v389[6];
              *(v832 + 9) = *(v389 + 105);
              v392 = v389[1];
              v831[0] = *v389;
              v831[1] = v392;
              v393 = v389[3];
              v831[2] = v389[2];
              v831[3] = v393;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v831, v388, v202, v766, isUniquelyReferenced_nonNull_native, &v789);
              __swift_destroy_boxed_opaque_existential_1(v851);

              v58 = v381;
              v381[2] = v789;
              v368 = &_s17RealityFoundation10MeshBufferVySfGMd;
              v369 = &_s17RealityFoundation10MeshBufferVySfGMR;
              outlined destroy of BodyTrackingComponent?(&v870, &_s17RealityFoundation10MeshBufferVySfGMd, &_s17RealityFoundation10MeshBufferVySfGMR);
              swift_endAccess();

              v853 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
              v854 = v190;
              v855 = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
              v856 = v190;
              v857 = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
              v858 = v190;
              v859 = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
              v860 = v190;
              v394 = 6;
              goto LABEL_258;
            }

LABEL_166:

            goto LABEL_90;
          }

          if (v78 > 2)
          {
            if (v78 != 3)
            {
              if (v78 == 4)
              {
                if (!v82)
                {
                  goto LABEL_200;
                }

                v124 = *(v58 + 130);
                v125 = v58[15];
                swift_bridgeObjectRetain_n();

                v780 = v83;
                v878._countAndFlagsBits = v83;
                v878._object = v82;
                v766 = specialized MeshBuffers.Identifier.BufferName.init(rawValue:)(v878);
                isUniquelyReferenced_nonNull_native = v766 == 8;
                v126 = v82;
                v127 = v58[10];
                v128 = v58[11];
                v129 = v58[12];
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14MeshPartBufferCys5Int16VGMd, &_s17RealityFoundation14MeshPartBufferCys5Int16VGMR);
                v130 = swift_allocObject();
                v130[2] = v127;
                v130[3] = v128;
                v131 = v781;
                v130[4] = v129;
                v130[5] = v131;
                v132 = REMeshAssetModelPartBufferAttributeIsSlow();
                v133 = 512;
                if (v132)
                {
                  v133 = 0x40000;
                }

                v130[6] = v133;
                RERetain();
                v134 = v130[2];
                v135 = v130[3];
                v136 = v130[4];
                v137 = v130[5];

                v138 = REMeshAssetGetModelPartBufferAttributeCount();
                swift_retain_n();

                *&v870 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
                *(&v870 + 1) = v130;
                *&v871 = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
                *(&v871 + 1) = v130;
                *&v872[0] = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
                *(&v872[0] + 1) = v130;
                *&v872[1] = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
                *(&v872[1] + 1) = v130;
                LOWORD(v873) = 4;
                v768 = v138;
                *(&v873 + 1) = v138;
                LODWORD(v781) = v124;
                v874 = v124;
                swift_beginAccess();
                v867 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5Int16VGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5Int16VGMR);
                v868 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
                v139 = swift_allocObject();
                v866[0] = v139;
                outlined init with copy of [String : String](&v870, &v853, &_s17RealityFoundation10MeshBufferVys5Int16VGMd, &_s17RealityFoundation10MeshBufferVys5Int16VGMR);
                outlined init with copy of [String : String](&v870, &v853, &_s17RealityFoundation10MeshBufferVys5Int16VGMd, &_s17RealityFoundation10MeshBufferVys5Int16VGMR);
                v140 = one-time initialization token for triangleIndices;

                if (v140 != -1)
                {
                  swift_once();
                }

                v141 = v780;
                v142 = v126;
                if (v780 == static MeshBuffers.Identifier.triangleIndices && v126 == *algn_1EBEAD098)
                {
                  v143 = 2;
                }

                else
                {
                  v468 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v143 = v874;
                  if (v468)
                  {
                    v143 = 2;
                  }
                }

                v469 = *(&v873 + 1);
                v766 = v766 == 8;
                v470 = v873;
                v471 = BYTE1(v873);
                v472 = v871;
                v473 = v758;
                *v758 = v870;
                v473[1] = v472;
                *(v473 + 80) = v874;
                v474 = v873;
                v473[3] = v872[1];
                v473[4] = v474;
                v473[2] = v872[0];
                *(v139 + 16) = v141;
                *(v139 + 24) = v126;
                *(v139 + 32) = isUniquelyReferenced_nonNull_native;
                *(v139 + 40) = v469;
                *(v139 + 48) = v143;
                *(v139 + 49) = v470;
                *(v139 + 50) = v471;
                v475 = v801[0];
                *(v139 + 67) = v801[1];
                *(v139 + 51) = v475;
                v476 = v801[2];
                v477 = v801[3];
                v478 = *v802;
                *(v139 + 129) = *&v802[14];
                *(v139 + 115) = v478;
                *(v139 + 99) = v477;
                *(v139 + 83) = v476;
                outlined init with take of BindableDataInternal(v866, v851);
                v479 = v776;
                v480 = *(v776 + 16);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v789 = v479[2];
                v479[2] = 0x8000000000000000;
                v481 = v852;
                v482 = __swift_mutable_project_boxed_opaque_existential_1(v851, v852);
                v765 = &v751;
                v483 = *(*(v481 - 8) + 64);
                v484 = MEMORY[0x1EEE9AC00](v482);
                v486 = v141;
                v487 = (&v751 - ((v485 + 15) & 0xFFFFFFFFFFFFFFF0));
                (*(v488 + 16))(v487, v484);
                v489 = v487[5];
                v827[4] = v487[4];
                v827[5] = v489;
                v828[0] = v487[6];
                *(v828 + 9) = *(v487 + 105);
                v490 = v487[1];
                v827[0] = *v487;
                v827[1] = v490;
                v491 = v487[3];
                v827[2] = v487[2];
                v827[3] = v491;
                specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v827, v486, v142, v766, isUniquelyReferenced_nonNull_native, &v789);
                __swift_destroy_boxed_opaque_existential_1(v851);

                v58 = v479;
                v479[2] = v789;
                v368 = &_s17RealityFoundation10MeshBufferVys5Int16VGMd;
                v369 = &_s17RealityFoundation10MeshBufferVys5Int16VGMR;
                outlined destroy of BodyTrackingComponent?(&v870, &_s17RealityFoundation10MeshBufferVys5Int16VGMd, &_s17RealityFoundation10MeshBufferVys5Int16VGMR);
                swift_endAccess();

                v853 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
                v854 = v130;
                v855 = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
                v856 = v130;
                v857 = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
                v858 = v130;
                v859 = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
                v860 = v130;
                v394 = 4;
                goto LABEL_258;
              }

              if (!v82)
              {
                goto LABEL_200;
              }

              v284 = *(v58 + 130);
              v285 = v58[15];
              swift_bridgeObjectRetain_n();

              v780 = v83;
              v886._countAndFlagsBits = v83;
              v886._object = v82;
              v766 = specialized MeshBuffers.Identifier.BufferName.init(rawValue:)(v886);
              isUniquelyReferenced_nonNull_native = v766 == 8;
              v286 = v82;
              v287 = v58[10];
              v288 = v58[11];
              v289 = v58[12];
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14MeshPartBufferCys5Int32VGMd, &_s17RealityFoundation14MeshPartBufferCys5Int32VGMR);
              v290 = swift_allocObject();
              v290[2] = v287;
              v290[3] = v288;
              v291 = v781;
              v290[4] = v289;
              v290[5] = v291;
              v292 = REMeshAssetModelPartBufferAttributeIsSlow();
              v293 = 512;
              if (v292)
              {
                v293 = 0x40000;
              }

              v290[6] = v293;
              RERetain();
              v294 = v290[2];
              v295 = v290[3];
              v296 = v290[4];
              v297 = v290[5];

              v298 = REMeshAssetGetModelPartBufferAttributeCount();
              swift_retain_n();

              *&v870 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
              *(&v870 + 1) = v290;
              *&v871 = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
              *(&v871 + 1) = v290;
              *&v872[0] = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
              *(&v872[0] + 1) = v290;
              *&v872[1] = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
              *(&v872[1] + 1) = v290;
              LOWORD(v873) = 5;
              v768 = v298;
              *(&v873 + 1) = v298;
              LODWORD(v781) = v284;
              v874 = v284;
              swift_beginAccess();
              v867 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5Int32VGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5Int32VGMR);
              v868 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
              v299 = swift_allocObject();
              v866[0] = v299;
              outlined init with copy of [String : String](&v870, &v853, &_s17RealityFoundation10MeshBufferVys5Int32VGMd, &_s17RealityFoundation10MeshBufferVys5Int32VGMR);
              outlined init with copy of [String : String](&v870, &v853, &_s17RealityFoundation10MeshBufferVys5Int32VGMd, &_s17RealityFoundation10MeshBufferVys5Int32VGMR);
              v300 = one-time initialization token for triangleIndices;

              if (v300 != -1)
              {
                swift_once();
              }

              v301 = v780;
              v302 = v286;
              if (v780 == static MeshBuffers.Identifier.triangleIndices && v286 == *algn_1EBEAD098)
              {
                v303 = 2;
              }

              else
              {
                v564 = _stringCompareWithSmolCheck(_:_:expecting:)();
                v303 = v874;
                if (v564)
                {
                  v303 = 2;
                }
              }

              v565 = *(&v873 + 1);
              v766 = v766 == 8;
              v566 = v873;
              v567 = BYTE1(v873);
              v568 = v871;
              v569 = v759;
              *v759 = v870;
              v569[1] = v568;
              *(v569 + 80) = v874;
              v570 = v873;
              v569[3] = v872[1];
              v569[4] = v570;
              v569[2] = v872[0];
              *(v299 + 16) = v301;
              *(v299 + 24) = v286;
              *(v299 + 32) = isUniquelyReferenced_nonNull_native;
              *(v299 + 40) = v565;
              *(v299 + 48) = v303;
              *(v299 + 49) = v566;
              *(v299 + 50) = v567;
              v571 = v803[0];
              *(v299 + 67) = v803[1];
              *(v299 + 51) = v571;
              v572 = v803[2];
              v573 = v803[3];
              v574 = *v804;
              *(v299 + 129) = *&v804[14];
              *(v299 + 115) = v574;
              *(v299 + 99) = v573;
              *(v299 + 83) = v572;
              outlined init with take of BindableDataInternal(v866, v851);
              v575 = v776;
              v576 = *(v776 + 16);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v789 = v575[2];
              v575[2] = 0x8000000000000000;
              v577 = v852;
              v578 = __swift_mutable_project_boxed_opaque_existential_1(v851, v852);
              v765 = &v751;
              v579 = *(*(v577 - 8) + 64);
              v580 = MEMORY[0x1EEE9AC00](v578);
              v582 = v301;
              v583 = (&v751 - ((v581 + 15) & 0xFFFFFFFFFFFFFFF0));
              (*(v584 + 16))(v583, v580);
              v585 = v583[5];
              v829[4] = v583[4];
              v829[5] = v585;
              v830[0] = v583[6];
              *(v830 + 9) = *(v583 + 105);
              v586 = v583[1];
              v829[0] = *v583;
              v829[1] = v586;
              v587 = v583[3];
              v829[2] = v583[2];
              v829[3] = v587;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v829, v582, v302, v766, isUniquelyReferenced_nonNull_native, &v789);
              __swift_destroy_boxed_opaque_existential_1(v851);

              v58 = v575;
              v575[2] = v789;
              v368 = &_s17RealityFoundation10MeshBufferVys5Int32VGMd;
              v369 = &_s17RealityFoundation10MeshBufferVys5Int32VGMR;
              outlined destroy of BodyTrackingComponent?(&v870, &_s17RealityFoundation10MeshBufferVys5Int32VGMd, &_s17RealityFoundation10MeshBufferVys5Int32VGMR);
              swift_endAccess();

              v853 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
              v854 = v290;
              v855 = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
              v856 = v290;
              v857 = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
              v858 = v290;
              v859 = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
              v860 = v290;
              v443 = 5;
LABEL_248:
              v861 = v443;
              goto LABEL_259;
            }

            if (v82)
            {
              v204 = *(v58 + 130);
              v205 = v58[15];
              swift_bridgeObjectRetain_n();

              v780 = v83;
              v882._countAndFlagsBits = v83;
              v882._object = v82;
              v766 = specialized MeshBuffers.Identifier.BufferName.init(rawValue:)(v882);
              isUniquelyReferenced_nonNull_native = v766 == 8;
              v206 = v82;
              v207 = v58[10];
              v208 = v58[11];
              v209 = v58[12];
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14MeshPartBufferCys4Int8VGMd, &_s17RealityFoundation14MeshPartBufferCys4Int8VGMR);
              v210 = swift_allocObject();
              v210[2] = v207;
              v210[3] = v208;
              v211 = v781;
              v210[4] = v209;
              v210[5] = v211;
              v212 = REMeshAssetModelPartBufferAttributeIsSlow();
              v213 = 512;
              if (v212)
              {
                v213 = 0x40000;
              }

              v210[6] = v213;
              RERetain();
              v214 = v210[2];
              v215 = v210[3];
              v216 = v210[4];
              v217 = v210[5];

              v218 = REMeshAssetGetModelPartBufferAttributeCount();
              swift_retain_n();

              *&v870 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
              *(&v870 + 1) = v210;
              *&v871 = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
              *(&v871 + 1) = v210;
              *&v872[0] = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
              *(&v872[0] + 1) = v210;
              *&v872[1] = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
              *(&v872[1] + 1) = v210;
              LOWORD(v873) = 3;
              v768 = v218;
              *(&v873 + 1) = v218;
              LODWORD(v781) = v204;
              v874 = v204;
              swift_beginAccess();
              v867 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s4Int8VGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s4Int8VGMR);
              v868 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
              v219 = swift_allocObject();
              v866[0] = v219;
              outlined init with copy of [String : String](&v870, &v853, &_s17RealityFoundation10MeshBufferVys4Int8VGMd, &_s17RealityFoundation10MeshBufferVys4Int8VGMR);
              outlined init with copy of [String : String](&v870, &v853, &_s17RealityFoundation10MeshBufferVys4Int8VGMd, &_s17RealityFoundation10MeshBufferVys4Int8VGMR);
              v220 = one-time initialization token for triangleIndices;

              if (v220 != -1)
              {
                swift_once();
              }

              v221 = v780;
              v222 = v206;
              if (v780 == static MeshBuffers.Identifier.triangleIndices && v206 == *algn_1EBEAD098)
              {
                v223 = 2;
              }

              else
              {
                v395 = _stringCompareWithSmolCheck(_:_:expecting:)();
                v223 = v874;
                if (v395)
                {
                  v223 = 2;
                }
              }

              v396 = *(&v873 + 1);
              v766 = v766 == 8;
              v397 = v873;
              v398 = BYTE1(v873);
              v399 = v871;
              v400 = v757;
              *v757 = v870;
              v400[1] = v399;
              *(v400 + 80) = v874;
              v401 = v873;
              v400[3] = v872[1];
              v400[4] = v401;
              v400[2] = v872[0];
              *(v219 + 16) = v221;
              *(v219 + 24) = v206;
              *(v219 + 32) = isUniquelyReferenced_nonNull_native;
              *(v219 + 40) = v396;
              *(v219 + 48) = v223;
              *(v219 + 49) = v397;
              *(v219 + 50) = v398;
              v402 = v799[0];
              *(v219 + 67) = v799[1];
              *(v219 + 51) = v402;
              v403 = v799[2];
              v404 = v799[3];
              v405 = *v800;
              *(v219 + 129) = *&v800[14];
              *(v219 + 115) = v405;
              *(v219 + 99) = v404;
              *(v219 + 83) = v403;
              outlined init with take of BindableDataInternal(v866, v851);
              v406 = v776;
              v407 = *(v776 + 16);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v789 = v406[2];
              v406[2] = 0x8000000000000000;
              v408 = v852;
              v409 = __swift_mutable_project_boxed_opaque_existential_1(v851, v852);
              v765 = &v751;
              v410 = *(*(v408 - 8) + 64);
              v411 = MEMORY[0x1EEE9AC00](v409);
              v413 = v221;
              v414 = (&v751 - ((v412 + 15) & 0xFFFFFFFFFFFFFFF0));
              (*(v415 + 16))(v414, v411);
              v416 = v414[5];
              v825[4] = v414[4];
              v825[5] = v416;
              v826[0] = v414[6];
              *(v826 + 9) = *(v414 + 105);
              v417 = v414[1];
              v825[0] = *v414;
              v825[1] = v417;
              v418 = v414[3];
              v825[2] = v414[2];
              v825[3] = v418;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v825, v413, v222, v766, isUniquelyReferenced_nonNull_native, &v789);
              __swift_destroy_boxed_opaque_existential_1(v851);

              v58 = v406;
              v406[2] = v789;
              v368 = &_s17RealityFoundation10MeshBufferVys4Int8VGMd;
              v369 = &_s17RealityFoundation10MeshBufferVys4Int8VGMR;
              outlined destroy of BodyTrackingComponent?(&v870, &_s17RealityFoundation10MeshBufferVys4Int8VGMd, &_s17RealityFoundation10MeshBufferVys4Int8VGMR);
              swift_endAccess();

              v853 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
              v854 = v210;
              v855 = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
              v856 = v210;
              v857 = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
              v858 = v210;
              v859 = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
              v860 = v210;
              v394 = 3;
              goto LABEL_258;
            }

            goto LABEL_166;
          }

          if (!v78)
          {
            if (v82)
            {
              v164 = *(v58 + 130);
              v165 = v58[15];
              swift_bridgeObjectRetain_n();

              v780 = v83;
              v880._countAndFlagsBits = v83;
              v880._object = v82;
              v766 = specialized MeshBuffers.Identifier.BufferName.init(rawValue:)(v880);
              isUniquelyReferenced_nonNull_native = v766 == 8;
              v166 = v82;
              v167 = v58[10];
              v168 = v58[11];
              v169 = v58[12];
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14MeshPartBufferCys5UInt8VGMd, &_s17RealityFoundation14MeshPartBufferCys5UInt8VGMR);
              v170 = swift_allocObject();
              v170[2] = v167;
              v170[3] = v168;
              v171 = v781;
              v170[4] = v169;
              v170[5] = v171;
              v172 = REMeshAssetModelPartBufferAttributeIsSlow();
              v173 = 512;
              if (v172)
              {
                v173 = 0x40000;
              }

              v170[6] = v173;
              RERetain();
              v174 = v170[2];
              v175 = v170[3];
              v176 = v170[4];
              v177 = v170[5];

              v178 = REMeshAssetGetModelPartBufferAttributeCount();
              swift_retain_n();

              *&v870 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
              *(&v870 + 1) = v170;
              *&v871 = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
              *(&v871 + 1) = v170;
              *&v872[0] = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
              *(&v872[0] + 1) = v170;
              *&v872[1] = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
              *(&v872[1] + 1) = v170;
              LOWORD(v873) = 0;
              v768 = v178;
              *(&v873 + 1) = v178;
              LODWORD(v781) = v164;
              v874 = v164;
              swift_beginAccess();
              v867 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5UInt8VGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5UInt8VGMR);
              v868 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
              v179 = swift_allocObject();
              v866[0] = v179;
              outlined init with copy of [String : String](&v870, &v853, &_s17RealityFoundation10MeshBufferVys5UInt8VGMd, &_s17RealityFoundation10MeshBufferVys5UInt8VGMR);
              outlined init with copy of [String : String](&v870, &v853, &_s17RealityFoundation10MeshBufferVys5UInt8VGMd, &_s17RealityFoundation10MeshBufferVys5UInt8VGMR);
              v180 = one-time initialization token for triangleIndices;

              if (v180 != -1)
              {
                swift_once();
              }

              v181 = v780;
              v182 = v166;
              if (v780 == static MeshBuffers.Identifier.triangleIndices && v166 == *algn_1EBEAD098)
              {
                v183 = 2;
              }

              else
              {
                v344 = _stringCompareWithSmolCheck(_:_:expecting:)();
                v183 = v874;
                if (v344)
                {
                  v183 = 2;
                }
              }

              v345 = *(&v873 + 1);
              v766 = v766 == 8;
              v346 = v873;
              v347 = BYTE1(v873);
              v348 = v871;
              v349 = v754;
              *v754 = v870;
              v349[1] = v348;
              *(v349 + 80) = v874;
              v350 = v873;
              v349[3] = v872[1];
              v349[4] = v350;
              v349[2] = v872[0];
              *(v179 + 16) = v181;
              *(v179 + 24) = v166;
              *(v179 + 32) = isUniquelyReferenced_nonNull_native;
              *(v179 + 40) = v345;
              *(v179 + 48) = v183;
              *(v179 + 49) = v346;
              *(v179 + 50) = v347;
              v351 = v793[0];
              v352 = v793[2];
              *(v179 + 67) = v793[1];
              *(v179 + 51) = v351;
              v353 = v793[3];
              v354 = *v794;
              *(v179 + 129) = *&v794[14];
              *(v179 + 115) = v354;
              *(v179 + 99) = v353;
              *(v179 + 83) = v352;
              outlined init with take of BindableDataInternal(v866, v851);
              v355 = v776;
              v356 = *(v776 + 16);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v789 = v355[2];
              v355[2] = 0x8000000000000000;
              v357 = v852;
              v358 = __swift_mutable_project_boxed_opaque_existential_1(v851, v852);
              v765 = &v751;
              v359 = *(*(v357 - 8) + 64);
              v360 = MEMORY[0x1EEE9AC00](v358);
              v362 = v181;
              v363 = (&v751 - ((v361 + 15) & 0xFFFFFFFFFFFFFFF0));
              (*(v364 + 16))(v363, v360);
              v365 = v363[5];
              v819[4] = v363[4];
              v819[5] = v365;
              v820[0] = v363[6];
              *(v820 + 9) = *(v363 + 105);
              v366 = v363[1];
              v819[0] = *v363;
              v819[1] = v366;
              v367 = v363[3];
              v819[2] = v363[2];
              v819[3] = v367;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v819, v362, v182, v766, isUniquelyReferenced_nonNull_native, &v789);
              __swift_destroy_boxed_opaque_existential_1(v851);

              v58 = v355;
              v355[2] = v789;
              v368 = &_s17RealityFoundation10MeshBufferVys5UInt8VGMd;
              v369 = &_s17RealityFoundation10MeshBufferVys5UInt8VGMR;
              outlined destroy of BodyTrackingComponent?(&v870, &_s17RealityFoundation10MeshBufferVys5UInt8VGMd, &_s17RealityFoundation10MeshBufferVys5UInt8VGMR);
              swift_endAccess();

              v853 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
              v854 = v170;
              v855 = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
              v856 = v170;
              v857 = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
              v858 = v170;
              v859 = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
              v860 = v170;
              v861 = 0;
              goto LABEL_259;
            }

            goto LABEL_166;
          }

          if (v78 != 1)
          {
            if (!v82)
            {
              goto LABEL_200;
            }

            v244 = *(v58 + 130);
            v245 = v58[15];
            swift_bridgeObjectRetain_n();

            v780 = v83;
            v884._countAndFlagsBits = v83;
            v884._object = v82;
            v766 = specialized MeshBuffers.Identifier.BufferName.init(rawValue:)(v884);
            isUniquelyReferenced_nonNull_native = v766 == 8;
            v246 = v82;
            v247 = v58[10];
            v248 = v58[11];
            v249 = v58[12];
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14MeshPartBufferCys6UInt32VGMd, &_s17RealityFoundation14MeshPartBufferCys6UInt32VGMR);
            v250 = swift_allocObject();
            v250[2] = v247;
            v250[3] = v248;
            v251 = v781;
            v250[4] = v249;
            v250[5] = v251;
            v252 = REMeshAssetModelPartBufferAttributeIsSlow();
            v253 = 512;
            if (v252)
            {
              v253 = 0x40000;
            }

            v250[6] = v253;
            RERetain();
            v254 = v250[2];
            v255 = v250[3];
            v256 = v250[4];
            v257 = v250[5];

            v258 = REMeshAssetGetModelPartBufferAttributeCount();
            swift_retain_n();

            *&v870 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
            *(&v870 + 1) = v250;
            *&v871 = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
            *(&v871 + 1) = v250;
            *&v872[0] = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
            *(&v872[0] + 1) = v250;
            *&v872[1] = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
            *(&v872[1] + 1) = v250;
            LOWORD(v873) = 2;
            v768 = v258;
            *(&v873 + 1) = v258;
            LODWORD(v781) = v244;
            v874 = v244;
            swift_beginAccess();
            v867 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s6UInt32VGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s6UInt32VGMR);
            v868 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
            v259 = swift_allocObject();
            v866[0] = v259;
            outlined init with copy of [String : String](&v870, &v853, &_s17RealityFoundation10MeshBufferVys6UInt32VGMd, &_s17RealityFoundation10MeshBufferVys6UInt32VGMR);
            outlined init with copy of [String : String](&v870, &v853, &_s17RealityFoundation10MeshBufferVys6UInt32VGMd, &_s17RealityFoundation10MeshBufferVys6UInt32VGMR);
            v260 = one-time initialization token for triangleIndices;

            if (v260 != -1)
            {
              swift_once();
            }

            v261 = v780;
            v262 = v246;
            if (v780 == static MeshBuffers.Identifier.triangleIndices && v246 == *algn_1EBEAD098)
            {
              v263 = 2;
            }

            else
            {
              v516 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v263 = v874;
              if (v516)
              {
                v263 = 2;
              }
            }

            v517 = *(&v873 + 1);
            v766 = v766 == 8;
            v518 = v873;
            v519 = BYTE1(v873);
            v520 = v871;
            v521 = v756;
            *v756 = v870;
            v521[1] = v520;
            *(v521 + 80) = v874;
            v522 = v873;
            v521[3] = v872[1];
            v521[4] = v522;
            v521[2] = v872[0];
            *(v259 + 16) = v261;
            *(v259 + 24) = v246;
            *(v259 + 32) = isUniquelyReferenced_nonNull_native;
            *(v259 + 40) = v517;
            *(v259 + 48) = v263;
            *(v259 + 49) = v518;
            *(v259 + 50) = v519;
            v523 = v797[0];
            *(v259 + 67) = v797[1];
            *(v259 + 51) = v523;
            v524 = v797[2];
            v525 = v797[3];
            v526 = *v798;
            *(v259 + 129) = *&v798[14];
            *(v259 + 115) = v526;
            *(v259 + 99) = v525;
            *(v259 + 83) = v524;
            outlined init with take of BindableDataInternal(v866, v851);
            v527 = v776;
            v528 = *(v776 + 16);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v789 = v527[2];
            v527[2] = 0x8000000000000000;
            v529 = v852;
            v530 = __swift_mutable_project_boxed_opaque_existential_1(v851, v852);
            v765 = &v751;
            v531 = *(*(v529 - 8) + 64);
            v532 = MEMORY[0x1EEE9AC00](v530);
            v534 = v261;
            v535 = (&v751 - ((v533 + 15) & 0xFFFFFFFFFFFFFFF0));
            (*(v536 + 16))(v535, v532);
            v537 = v535[5];
            v823[4] = v535[4];
            v823[5] = v537;
            v824[0] = v535[6];
            *(v824 + 9) = *(v535 + 105);
            v538 = v535[1];
            v823[0] = *v535;
            v823[1] = v538;
            v539 = v535[3];
            v823[2] = v535[2];
            v823[3] = v539;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v823, v534, v262, v766, isUniquelyReferenced_nonNull_native, &v789);
            __swift_destroy_boxed_opaque_existential_1(v851);

            v58 = v527;
            v527[2] = v789;
            v368 = &_s17RealityFoundation10MeshBufferVys6UInt32VGMd;
            v369 = &_s17RealityFoundation10MeshBufferVys6UInt32VGMR;
            outlined destroy of BodyTrackingComponent?(&v870, &_s17RealityFoundation10MeshBufferVys6UInt32VGMd, &_s17RealityFoundation10MeshBufferVys6UInt32VGMR);
            swift_endAccess();

            v853 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
            v854 = v250;
            v855 = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
            v856 = v250;
            v857 = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
            v858 = v250;
            v859 = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
            v860 = v250;
            v394 = 2;
            goto LABEL_258;
          }

          if (v82)
          {
            v84 = *(v58 + 130);
            v85 = v58[15];
            swift_bridgeObjectRetain_n();

            v780 = v83;
            v876._countAndFlagsBits = v83;
            v876._object = v82;
            v766 = specialized MeshBuffers.Identifier.BufferName.init(rawValue:)(v876);
            isUniquelyReferenced_nonNull_native = v766 == 8;
            v86 = v82;
            v87 = v58[10];
            v88 = v58[11];
            v89 = v58[12];
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14MeshPartBufferCys6UInt16VGMd, &_s17RealityFoundation14MeshPartBufferCys6UInt16VGMR);
            v90 = swift_allocObject();
            v90[2] = v87;
            v90[3] = v88;
            v91 = v781;
            v90[4] = v89;
            v90[5] = v91;
            v92 = REMeshAssetModelPartBufferAttributeIsSlow();
            v93 = 512;
            if (v92)
            {
              v93 = 0x40000;
            }

            v90[6] = v93;
            RERetain();
            v94 = v90[2];
            v95 = v90[3];
            v96 = v90[4];
            v97 = v90[5];

            v98 = REMeshAssetGetModelPartBufferAttributeCount();
            swift_retain_n();

            *&v870 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
            *(&v870 + 1) = v90;
            *&v871 = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
            *(&v871 + 1) = v90;
            *&v872[0] = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
            *(&v872[0] + 1) = v90;
            *&v872[1] = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
            *(&v872[1] + 1) = v90;
            LOWORD(v873) = 1;
            v768 = v98;
            *(&v873 + 1) = v98;
            LODWORD(v781) = v84;
            v874 = v84;
            swift_beginAccess();
            v867 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s6UInt16VGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s6UInt16VGMR);
            v868 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
            v99 = swift_allocObject();
            v866[0] = v99;
            outlined init with copy of [String : String](&v870, &v853, &_s17RealityFoundation10MeshBufferVys6UInt16VGMd, &_s17RealityFoundation10MeshBufferVys6UInt16VGMR);
            outlined init with copy of [String : String](&v870, &v853, &_s17RealityFoundation10MeshBufferVys6UInt16VGMd, &_s17RealityFoundation10MeshBufferVys6UInt16VGMR);
            v100 = one-time initialization token for triangleIndices;

            if (v100 != -1)
            {
              swift_once();
            }

            v101 = v780;
            v102 = v86;
            if (v780 == static MeshBuffers.Identifier.triangleIndices && v86 == *algn_1EBEAD098)
            {
              v103 = 2;
            }

            else
            {
              v419 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v103 = v874;
              if (v419)
              {
                v103 = 2;
              }
            }

            v420 = *(&v873 + 1);
            v766 = v766 == 8;
            v421 = v873;
            v422 = BYTE1(v873);
            v423 = v871;
            v424 = v755;
            *v755 = v870;
            v424[1] = v423;
            *(v424 + 80) = v874;
            v425 = v873;
            v424[3] = v872[1];
            v424[4] = v425;
            v424[2] = v872[0];
            *(v99 + 16) = v101;
            *(v99 + 24) = v86;
            *(v99 + 32) = isUniquelyReferenced_nonNull_native;
            *(v99 + 40) = v420;
            *(v99 + 48) = v103;
            *(v99 + 49) = v421;
            *(v99 + 50) = v422;
            v426 = v795[0];
            *(v99 + 67) = v795[1];
            *(v99 + 51) = v426;
            v427 = v795[2];
            v428 = v795[3];
            v429 = *v796;
            *(v99 + 129) = *&v796[14];
            *(v99 + 115) = v429;
            *(v99 + 99) = v428;
            *(v99 + 83) = v427;
            outlined init with take of BindableDataInternal(v866, v851);
            v430 = v776;
            v431 = *(v776 + 16);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v789 = v430[2];
            v430[2] = 0x8000000000000000;
            v432 = v852;
            v433 = __swift_mutable_project_boxed_opaque_existential_1(v851, v852);
            v765 = &v751;
            v434 = *(*(v432 - 8) + 64);
            v435 = MEMORY[0x1EEE9AC00](v433);
            v437 = v101;
            v438 = (&v751 - ((v436 + 15) & 0xFFFFFFFFFFFFFFF0));
            (*(v439 + 16))(v438, v435);
            v440 = v438[5];
            v821[4] = v438[4];
            v821[5] = v440;
            v822[0] = v438[6];
            *(v822 + 9) = *(v438 + 105);
            v441 = v438[1];
            v821[0] = *v438;
            v821[1] = v441;
            v442 = v438[3];
            v821[2] = v438[2];
            v821[3] = v442;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v821, v437, v102, v766, isUniquelyReferenced_nonNull_native, &v789);
            __swift_destroy_boxed_opaque_existential_1(v851);

            v58 = v430;
            v430[2] = v789;
            v368 = &_s17RealityFoundation10MeshBufferVys6UInt16VGMd;
            v369 = &_s17RealityFoundation10MeshBufferVys6UInt16VGMR;
            outlined destroy of BodyTrackingComponent?(&v870, &_s17RealityFoundation10MeshBufferVys6UInt16VGMd, &_s17RealityFoundation10MeshBufferVys6UInt16VGMR);
            swift_endAccess();

            v853 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
            v854 = v90;
            v855 = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
            v856 = v90;
            v857 = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
            v858 = v90;
            v859 = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
            v860 = v90;
            v443 = 1;
            goto LABEL_248;
          }

LABEL_200:

          v65 = v775;
          goto LABEL_90;
        }
      }

      a1 = v782;
      v660 = REMeshAssetCopyModelPartSkinInfluences();
      if (v660)
      {
        v661 = v660;
        v662 = CFDataGetLength(v660) / 8;
        v663 = v661;
        v664 = v662;
        v665 = v662;
        v666 = v772;
        v667 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfC17RealityFoundation18MeshJointInfluenceV_Tt1g504_s10f5Kit12h13ResourceC0A10g75E4PartV6unpack9coreAsset10modelIndexSayAFGs13OpaquePointerV_SitFZySryAD0C14iJ13VGz_SiztXEfU_So9CFDataRefaSiTf1nc_nTf4ngn_n(v664, v663, v665);
        v772 = v666;

        if (one-time initialization token for jointInfluences != -1)
        {
          swift_once();
        }

        v669 = static MeshBuffers.jointInfluences;
        v668 = unk_1EBEAD140;
        v670 = word_1EBEAD148;
        LODWORD(ModelPartBufferAttributeRate) = HIBYTE(word_1EBEAD148);
        _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCAA0C14JointInfluenceV_AA05ArrayD0VyAIGTt1g5(v667, &v870);
        v849[2] = v872[0];
        v849[3] = v872[1];
        v849[4] = v873;
        v850 = v874;
        v849[0] = v870;
        v849[1] = v871;
        swift_beginAccess();
        v867 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_AA0C14JointInfluenceVGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_AA0C14JointInfluenceVGMR);
        v868 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
        v866[0] = swift_allocObject();
        swift_bridgeObjectRetain_n();
        outlined init with copy of [String : String](v849, &v853, &_s17RealityFoundation10MeshBufferVyAA0C14JointInfluenceVGMd, &_s17RealityFoundation10MeshBufferVyAA0C14JointInfluenceVGMR);
        if (ModelPartBufferAttributeRate)
        {
          v671 = 256;
        }

        else
        {
          v671 = 0;
        }

        _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5(v669, v668, v671 | v670, v849);
        specialized Dictionary.subscript.setter(v866, v669, v668, v671 | v670);
        outlined destroy of BodyTrackingComponent?(v849, &_s17RealityFoundation10MeshBufferVyAA0C14JointInfluenceVGMd, &_s17RealityFoundation10MeshBufferVyAA0C14JointInfluenceVGMR);
        swift_endAccess();
        a1 = v782;
        ModelPartSkinUniformInfluenceCount = REMeshAssetGetModelPartSkinUniformInfluenceCount();

        v58 = v776;
        if (ModelPartSkinUniformInfluenceCount)
        {
          *(v776 + 56) = ModelPartSkinUniformInfluenceCount;
          *(v58 + 60) = 0;
        }
      }

      v673 = REMeshAssetCopyModelPartSkinInfluenceEndIndices();
      if (v673)
      {
        v674 = v673;
        v675 = CFDataGetLength(v673) / 4;
        v676 = v674;
        v677 = v675;
        v678 = v675;
        v679 = v772;
        v680 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCs5Int32V_Tt1g50114_s10RealityKit12MeshResourceC0A10FoundationE4PartV6unpack9coreAsset10modelIndexSayAFGs13OpaquePointerV_SitFZySrys5F14VGz_SiztXEfU0_So9CFDataRefaSiTf1nc_nTf4ngn_n(v677, v676, v678);
        v772 = v679;

        if (one-time initialization token for jointInfluenceEndIndices != -1)
        {
          swift_once();
        }

        v682 = static MeshBuffers.jointInfluenceEndIndices;
        v681 = *algn_1EBEAD158;
        v683 = word_1EBEAD160;
        LODWORD(ModelPartBufferAttributeRate) = HIBYTE(word_1EBEAD160);
        _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5Int32V_AA05ArrayD0VyAIGTt1g5(v680, &v870);
        v847[2] = v872[0];
        v847[3] = v872[1];
        v847[4] = v873;
        v848 = v874;
        v847[0] = v870;
        v847[1] = v871;
        swift_beginAccess();
        v867 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5Int32VGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5Int32VGMR);
        v868 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
        v866[0] = swift_allocObject();
        swift_bridgeObjectRetain_n();
        outlined init with copy of [String : String](v847, &v853, &_s17RealityFoundation10MeshBufferVys5Int32VGMd, &_s17RealityFoundation10MeshBufferVys5Int32VGMR);
        if (ModelPartBufferAttributeRate)
        {
          v684 = 256;
        }

        else
        {
          v684 = 0;
        }

        _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5(v682, v681, v684 | v683, v847);
        specialized Dictionary.subscript.setter(v866, v682, v681, v684 | v683);
        outlined destroy of BodyTrackingComponent?(v847, &_s17RealityFoundation10MeshBufferVys5Int32VGMd, &_s17RealityFoundation10MeshBufferVys5Int32VGMR);
        swift_endAccess();

        a1 = v782;
        v58 = v776;
      }

      LODWORD(v789) = -1;
      if (REMeshAssetGetModelPartSkeletonIndex())
      {
        REMeshAssetGetSkeletonName();
        v685 = String.init(cString:)();
        v687 = v686;
        swift_beginAccess();
        v688 = v58[6];
        v58[5] = v685;
        v58[6] = v687;
      }

      BlendShapeDefinitionCountForPart = REMeshAssetGetBlendShapeDefinitionCountForPart();
      if (BlendShapeDefinitionCountForPart < 0)
      {
LABEL_313:
        __break(1u);
LABEL_314:
        __break(1u);
LABEL_315:
        __break(1u);
      }

      v690 = BlendShapeDefinitionCountForPart;
      if (BlendShapeDefinitionCountForPart)
      {
        v691 = 0;
        v780 = BlendShapeDefinitionCountForPart;
        do
        {
          REMeshAssetGetBlendShapeDefinitionNameForPart();
          v692 = String.init(cString:)();
          v694 = v693;
          v695 = REMeshAssetGetBlendShapeOffsetsForPart();
          if (v695)
          {
            v696 = v695;
            Length = CFDataGetLength(v695);
            v698 = Length + 15;
            if (Length >= 0)
            {
              v698 = Length;
            }

            if (Length < -15)
            {
              goto LABEL_309;
            }

            v699 = Length;
            v700 = v698 >> 4;
            v701 = v696;
            v702 = MEMORY[0x1E69E7CC0];
            if (v699 >= 16)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
              v702 = static Array._allocateBufferUninitialized(minimumCapacity:)();
              *(v702 + 16) = v700;
            }

            BytePtr = CFDataGetBytePtr(v701);
            if (!BytePtr)
            {
              goto LABEL_315;
            }

            memcpy((v702 + 32), BytePtr, 16 * v700);
            *(v702 + 16) = v700;
            ModelPartBufferAttributeRate = v701;

            v704 = *(v702 + 16);
            v705 = swift_allocObject();
            *(v705 + 16) = v702;
            v706 = swift_allocObject();
            *(v706 + 16) = v702;
            v707 = swift_allocObject();
            *(v707 + 16) = v702;
            v708 = swift_allocObject();
            *(v708 + 16) = v702;
            *&v870 = closure #1 in MeshBuffer.init<A>(_:)specialized partial apply;
            *(&v870 + 1) = v705;
            *&v871 = closure #2 in MeshBuffer.init<A>(_:)specialized partial apply;
            *(&v871 + 1) = v706;
            *&v872[0] = closure #3 in MeshBuffer.init<A>(_:)specialized partial apply;
            *(&v872[0] + 1) = v707;
            *&v872[1] = closure #4 in MeshBuffer.init<A>(_:)specialized partial apply;
            *(&v872[1] + 1) = v708;
            LOWORD(v873) = 9;
            *(&v873 + 1) = v704;
            v874 = 0;
            swift_beginAccess();
            swift_bridgeObjectRetain_n();

            v889._countAndFlagsBits = v692;
            v889._object = v694;
            v709 = specialized MeshBuffers.Identifier.BufferName.init(rawValue:)(v889);
            v867 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMR);
            v868 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
            v710 = swift_allocObject();
            v866[0] = v710;

            outlined init with copy of [String : String](&v870, &v853, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
            v711 = one-time initialization token for triangleIndices;

            if (v711 != -1)
            {
              swift_once();
            }

            if (v692 == static MeshBuffers.Identifier.triangleIndices && v694 == *algn_1EBEAD098)
            {
              v712 = 2;
            }

            else
            {
              v713 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v712 = v874;
              if (v713)
              {
                v712 = 2;
              }
            }

            v714 = *(&v873 + 1);
            LODWORD(v781) = v709 == 8;
            v715 = v873;
            v716 = BYTE1(v873);
            v717 = v871;
            v718 = v777;
            *v777 = v870;
            v718[1] = v717;
            *(v718 + 80) = v874;
            v719 = v873;
            v718[3] = v872[1];
            v718[4] = v719;
            v718[2] = v872[0];
            *(v710 + 16) = v692;
            *(v710 + 24) = v694;
            *(v710 + 32) = 0;
            *(v710 + 33) = v709 == 8;
            *(v710 + 40) = v714;
            *(v710 + 48) = v712;
            *(v710 + 49) = v715;
            *(v710 + 50) = v716;
            v720 = v791[0];
            *(v710 + 67) = v791[1];
            *(v710 + 51) = v720;
            v721 = v791[2];
            v722 = v791[3];
            v723 = *v792;
            *(v710 + 129) = *&v792[14];
            *(v710 + 115) = v723;
            *(v710 + 99) = v722;
            *(v710 + 83) = v721;
            outlined init with take of BindableDataInternal(v866, &v853);
            v724 = v787;
            v725 = *v787;
            v726 = swift_isUniquelyReferenced_nonNull_native();
            v869[0] = *v724;
            *v724 = 0x8000000000000000;
            v727 = v856;
            v728 = __swift_mutable_project_boxed_opaque_existential_1(&v853, v856);
            v729 = *(*(v727 - 8) + 64);
            v730 = MEMORY[0x1EEE9AC00](v728);
            v732 = (&v751 - ((v731 + 15) & 0xFFFFFFFFFFFFFFF0));
            (*(v733 + 16))(v732, v730);
            v734 = v732[5];
            v845[4] = v732[4];
            v845[5] = v734;
            v846[0] = v732[6];
            *(v846 + 9) = *(v732 + 105);
            v735 = v732[1];
            v845[0] = *v732;
            v845[1] = v735;
            v736 = v732[3];
            v845[2] = v732[2];
            v845[3] = v736;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v845, v692, v694, v781 << 8, v726, v869);

            outlined destroy of BodyTrackingComponent?(&v870, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
            __swift_destroy_boxed_opaque_existential_1(&v853);
            *v724 = v869[0];
            swift_endAccess();

            a1 = v782;
            v690 = v780;
          }

          else
          {
          }

          ++v691;
        }

        while (v690 != v691);
      }

      v737 = v787;
      swift_beginAccess();
      v738 = v737[1];
      v870 = *v737;
      v871 = v738;
      v872[0] = v737[2];
      *(v872 + 9) = *(v737 + 41);
      outlined init with copy of MeshResource.Part(&v870, &v853);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v773 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v773 + 2) + 1, 1, v773);
      }

      v740 = *(v773 + 2);
      v739 = *(v773 + 3);
      if (v740 >= v739 >> 1)
      {
        v773 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v739 > 1), v740 + 1, 1, v773);
      }

      v741 = v773;
      *(v773 + 2) = v740 + 1;
      v742 = &v741[64 * v740];
      v743 = v870;
      v744 = v871;
      v745 = v872[0];
      *(v742 + 73) = *(v872 + 9);
      *(v742 + 3) = v744;
      *(v742 + 4) = v745;
      *(v742 + 2) = v743;
      v746 = v771;
      if (v771 == v770)
      {

        goto LABEL_307;
      }

      v7 = v771 + 1;
      REMeshAssetGetModelPartName();
      v747 = String.init(cString:)();
      v775 = v748;
      v776 = v747;
      v779 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_17RealityFoundation16BufferDescriptorVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      ModelPartBufferCount = REMeshAssetGetModelPartBufferCount();
      v784 = v746;
      if (ModelPartBufferCount < 0)
      {
LABEL_312:
        __break(1u);
        goto LABEL_313;
      }
    }

    v8 = 0;
    v780 = ModelPartBufferCount;
    while (1)
    {
      REMeshAssetGetModelPartBufferName();
      v787 = String.init(cString:)();
      v12 = v11;
      ModelPartBufferAttributeRate = REMeshAssetGetModelPartBufferAttributeRate();
      ModelPartBufferAttributeType = REMeshAssetGetModelPartBufferAttributeType();
      v14 = ModelPartBufferAttributeType;
      if (ModelPartBufferAttributeType <= 4)
      {
        if (ModelPartBufferAttributeType <= 1)
        {
          if (ModelPartBufferAttributeType)
          {
            if (ModelPartBufferAttributeType != 1)
            {
              goto LABEL_66;
            }

            v15 = 0;
            v17 = 0;
            v18 = 0;
            v19 = 0;
            v16 = 1;
            v20 = 1;
          }

          else
          {
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v18 = 0;
            v19 = 0;
            v20 = 4;
          }
        }

        else
        {
          if (ModelPartBufferAttributeType == 2)
          {
            v16 = 0;
            v17 = 0;
            v18 = 0;
            v19 = 0;
            LODWORD(v781) = 5;
            v15 = 1;
            goto LABEL_34;
          }

          if (ModelPartBufferAttributeType == 3)
          {
            v15 = 0;
            v16 = 0;
            v18 = 0;
            v19 = 0;
            LODWORD(v781) = 2;
            v17 = 1;
            goto LABEL_34;
          }

          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 6;
        }

        goto LABEL_33;
      }

      if (ModelPartBufferAttributeType > 7)
      {
        break;
      }

      if (ModelPartBufferAttributeType == 5)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 7;
LABEL_33:
        LODWORD(v781) = v20;
        goto LABEL_34;
      }

      v15 = 0;
      v16 = 0;
      v17 = 0;
      if (ModelPartBufferAttributeType == 6)
      {
        v19 = 0;
        LODWORD(v781) = 8;
        v18 = 1;
      }

      else
      {
        v18 = 0;
        LODWORD(v781) = 9;
        v19 = 1;
      }

LABEL_34:
      v21 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v21 = v787 & 0xFFFFFFFFFFFFLL;
      }

      if (!v21)
      {
LABEL_66:
        *&v870 = 0;
        *(&v870 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(30);

        *&v870 = 0xD000000000000010;
        *(&v870 + 1) = v778;
        v853 = v8;
        v27 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1C68F3410](v27);

        MEMORY[0x1C68F3410](8250, 0xE200000000000000);
        MEMORY[0x1C68F3410](v787, v12);

        MEMORY[0x1C68F3410](8236, 0xE200000000000000);
        LOBYTE(v853) = ModelPartBufferAttributeRate;
        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1C68F3410](v28);

        MEMORY[0x1C68F3410](8236, 0xE200000000000000);
        LOBYTE(v853) = v14;
        v29 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1C68F3410](v29);

        v30 = v870;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v786 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v786 + 2) + 1, 1, v786);
        }

        v32 = *(v786 + 2);
        v31 = *(v786 + 3);
        a1 = v782;
        if (v32 >= v31 >> 1)
        {
          v786 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v786);
        }

        v33 = v786;
        *(v786 + 2) = v32 + 1;
        *&v33[16 * v32 + 32] = v30;
        goto LABEL_9;
      }

      v22._countAndFlagsBits = v787;
      v22._object = v12;
      v23 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MeshBuffers.Identifier.BufferName.init(rawValue:), v22);

      if (v23 > 3)
      {
        if (v23 > 5)
        {
          if (v23 == 6)
          {
            goto LABEL_66;
          }

          if (v23 != 7)
          {
            goto LABEL_64;
          }

          if ((v15 & 1) == 0)
          {
            goto LABEL_66;
          }

          goto LABEL_63;
        }

        if (v23 != 4)
        {
          if (v16)
          {
            goto LABEL_71;
          }

          v24 = 5;
          if (!v17)
          {
            goto LABEL_66;
          }

LABEL_56:
          if (v24 > 3)
          {
LABEL_71:

LABEL_72:
            LOBYTE(v26) = 2;
            goto LABEL_73;
          }

          goto LABEL_63;
        }

        if ((v18 & 1) == 0)
        {
          goto LABEL_66;
        }
      }

      else if (v23 > 1)
      {
        if (v23 == 2)
        {
          if ((v19 & 1) == 0)
          {
            goto LABEL_66;
          }
        }

        else if ((v19 & 1) == 0)
        {
          goto LABEL_66;
        }
      }

      else
      {
        if (!v23)
        {
          v24 = 0;
          if (!v19)
          {
            goto LABEL_66;
          }

          goto LABEL_56;
        }

        if (v23 != 1)
        {
          goto LABEL_64;
        }

        if ((v19 & 1) == 0)
        {
          goto LABEL_66;
        }
      }

LABEL_63:
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v25)
      {
        goto LABEL_72;
      }

LABEL_64:
      if (ModelPartBufferAttributeRate >= 4)
      {
        goto LABEL_66;
      }

      v26 = 0x2010003u >> (8 * (ModelPartBufferAttributeRate & 0x1F));
LABEL_73:

      v34._countAndFlagsBits = v787;
      v34._object = v12;
      v35 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MeshBuffers.Identifier.BufferName.init(rawValue:), v34);

      v36 = v35 > 7;
      v37 = v779;
      v38 = swift_isUniquelyReferenced_nonNull_native();
      *&v870 = v37;
      v39 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
      v41 = v37[2];
      v42 = (v40 & 1) == 0;
      v43 = __OFADD__(v41, v42);
      v44 = v41 + v42;
      if (v43)
      {
        goto LABEL_310;
      }

      v45 = v40;
      if (v37[3] >= v44)
      {
        if ((v38 & 1) == 0)
        {
          v52 = v39;
          specialized _NativeDictionary.copy()();
          v39 = v52;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v44, v38);
        v39 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
        if ((v45 & 1) != (v46 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      v47 = v781;
      v48 = v870;
      v779 = v870;
      if (v45)
      {
        v9 = *(v870 + 56) + 24 * v39;
        v10 = *(v9 + 8);
        *v9 = v787;
        *(v9 + 8) = v12;
        *(v9 + 16) = v36;
        *(v9 + 17) = 0;
        *(v9 + 18) = v26;
        *(v9 + 19) = v47;
        *(v9 + 20) = 1;
      }

      else
      {
        *(v870 + 8 * (v39 >> 6) + 64) |= 1 << v39;
        *(v48[6] + 8 * v39) = v8;
        v49 = v48[7] + 24 * v39;
        *v49 = v787;
        *(v49 + 8) = v12;
        *(v49 + 16) = v36;
        *(v49 + 17) = 0;
        *(v49 + 18) = v26;
        *(v49 + 19) = v47;
        *(v49 + 20) = 1;
        v50 = v48[2];
        v43 = __OFADD__(v50, 1);
        v51 = v50 + 1;
        if (v43)
        {
          goto LABEL_311;
        }

        v48[2] = v51;
      }

      a1 = v782;
LABEL_9:
      v8 = (v8 + 1);
      if (v780 == v8)
      {
        goto LABEL_82;
      }
    }

    switch(ModelPartBufferAttributeType)
    {
      case 8:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 10;
        break;
      case 9:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        LODWORD(v781) = 0;
        goto LABEL_34;
      case 10:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 3;
        break;
      default:
        goto LABEL_66;
    }

    goto LABEL_33;
  }

  v773 = MEMORY[0x1E69E7CC0];
LABEL_307:
  v749 = *MEMORY[0x1E69E9840];
  return v773;
}

uint64_t objectdestroy_413Tm()
{
  v1 = v0[3];

  v2 = v0[8];

  v3 = v0[10];

  v4 = v0[12];

  v5 = v0[14];

  return MEMORY[0x1EEE6BDD0](v0, 137, 7);
}

uint64_t objectdestroy_474Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t objectdestroy_337Tm()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[14];

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t type metadata instantiation function for IndexingBuffer()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for IndexingBuffer.Iterator()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for ConversionBuffer()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for ConversionBuffer.ConvertingIterator()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for FloatVector3Packed(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FloatVector3Packed(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 12) = v3;
  return result;
}

uint64_t static RealityFusionSession.createRealityFusionSession(arSession:)(void *a1)
{
  swift_beginAccess();
  v2 = static RealityFusionSession.sharedSession;
  if (!static RealityFusionSession.sharedSession)
  {
    specialized static __ServiceLocator.shared.getter();
    type metadata accessor for RealityFusionSession();
    swift_allocObject();
    if (!a1)
    {
      return specialized RealityFusionSession.init(_:)();
    }

    v8 = a1;

    v2 = specialized RealityFusionSession.init(_:)();

    RealityFusionSession.configure(with:)(v8);

    return v2;
  }

  result = swift_beginAccess();
  v4 = v2[3];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (!v5)
  {
    v2[3] = v6;

    RealityFusionSession.sharedCount.didset();
    if (a1)
    {
      v7 = a1;
      RealityFusionSession.configure(with:)(v7);
    }

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t static RealityFusionSession.sharedSession.setter(void *a1)
{
  swift_beginAccess();
  static RealityFusionSession.sharedSession = a1;
}

uint64_t key path setter for static RealityFusionSession.sharedSession : RealityFusionSession.Type(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  static RealityFusionSession.sharedSession = v1;
}

void key path setter for RealityFusionSession.serviceManager : RealityFusionSession(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  v5 = v2;
}

void *RealityFusionSession.serviceManager.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void RealityFusionSession.serviceManager.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t RealityFusionSession.sharedCount.didset()
{
  result = swift_beginAccess();
  if (!*(v0 + 24))
  {
    swift_beginAccess();
    v2 = static RealityFusionSession.sharedSession;
    if (static RealityFusionSession.sharedSession)
    {
      swift_beginAccess();
      if (v2[2])
      {
        v3 = RFServiceManagerGetAnchorManagementService();
        if (v3)
        {
          v4 = v3;
          v5 = specialized static __ServiceLocator.shared.getter();
          swift_beginAccess();
          v6 = *(v5 + 16);
          RFAnchorManagementServiceCleanupWithServiceLocator();
        }
      }
    }

    RFServiceManagerCleanUp();
    static RealityFusionSession.sharedSession = 0;
  }

  return result;
}

uint64_t RealityFusionSession.sharedCount.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  if (!a1)
  {
    swift_beginAccess();
    v4 = static RealityFusionSession.sharedSession;
    if (static RealityFusionSession.sharedSession)
    {
      swift_beginAccess();
      if (v4[2])
      {
        v5 = RFServiceManagerGetAnchorManagementService();
        if (v5)
        {
          v6 = v5;
          v7 = specialized static __ServiceLocator.shared.getter();
          swift_beginAccess();
          v8 = *(v7 + 16);
          RFAnchorManagementServiceCleanupWithServiceLocator();
        }
      }
    }

    RFServiceManagerCleanUp();
    static RealityFusionSession.sharedSession = 0;
  }

  return result;
}

void (*RealityFusionSession.sharedCount.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  *a1 = v3;
  *(v3 + 72) = v1;
  swift_beginAccess();
  return RealityFusionSession.sharedCount.modify;
}

void RealityFusionSession.sharedCount.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0 && !*(v3[9] + 24))
  {
    swift_beginAccess();
    v4 = static RealityFusionSession.sharedSession;
    if (static RealityFusionSession.sharedSession)
    {
      swift_beginAccess();
      if (v4[2])
      {
        v5 = RFServiceManagerGetAnchorManagementService();
        if (v5)
        {
          v6 = v5;
          v7 = specialized static __ServiceLocator.shared.getter();
          swift_beginAccess();
          v8 = *(v7 + 16);
          RFAnchorManagementServiceCleanupWithServiceLocator();
        }
      }
    }

    RFServiceManagerCleanUp();
    static RealityFusionSession.sharedSession = 0;
  }

  free(v3);
}

uint64_t RealityFusionSession.__allocating_init(_:)()
{
  swift_allocObject();
  v0 = specialized RealityFusionSession.init(_:)();

  return v0;
}

uint64_t RealityFusionSession.init(_:)()
{
  v0 = specialized RealityFusionSession.init(_:)();

  return v0;
}

Swift::Void __swiftcall RealityFusionSession.configure(with:)(ARSession with)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = RFServiceManagerGetARKitDataProvider();
  if (v5)
  {
    v6 = v5;
    v7 = RFARKitDataProviderGetARSession();
    type metadata accessor for ARSession();
    v8 = static NSObject.== infix(_:_:)();

    if ((v8 & 1) == 0)
    {
      RFARKitDataProviderSetARSession();
      goto LABEL_7;
    }
  }

  v6 = RFARKitDataProviderCreate();
  RFServiceManagerSetARKitDataProvider();
LABEL_7:

  v9 = RFServiceManagerGetAnchorManagementService();
  if (v9)
  {
    v10 = v9;
    v11 = swift_allocObject();
    v11[2].super.isa = with.super.isa;
    v26 = partial apply for closure #1 in RealityFusionSession.configure(with:);
    v27 = v11;
    aBlock = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
    v25 = &block_descriptor_12_0;
    v12 = _Block_copy(&aBlock);
    v13 = with.super.isa;

    RFAnchorManagementSetOnCustomAnchorCreateCallback();
    _Block_release(v12);
  }

  v14 = RFServiceManagerGetEnvironmentProbePlacementService();
  if (v14)
  {
    v15 = v14;
    v16 = swift_allocObject();
    v16[2].super.isa = with.super.isa;
    v26 = partial apply for closure #2 in RealityFusionSession.configure(with:);
    v27 = v16;
    aBlock = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = thunk for @escaping @callee_guaranteed (@unowned RFEnvProbeData) -> ();
    v25 = &block_descriptor_22;
    v17 = _Block_copy(&aBlock);
    v18 = with.super.isa;

    RFEnvironmentProbePlacementServiceSetOnProbeDataCreatedCallback();
    _Block_release(v17);
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    v26 = partial apply for closure #3 in RealityFusionSession.configure(with:);
    v27 = v19;
    aBlock = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = thunk for @escaping @callee_guaranteed (@unowned RFEnvProbeData) -> ();
    v25 = &block_descriptor_6_0;
    v20 = _Block_copy(&aBlock);
    v21 = v18;

    RFEnvironmentProbePlacementServiceSetOnProbeDataRemovedCallback();

    _Block_release(v20);
    v4 = v15;
  }
}

uint64_t RealityFusionSession.__allocating_init(_:arSession:)(uint64_t a1, void *a2)
{
  type metadata accessor for RealityFusionSession();
  swift_allocObject();
  v3 = specialized RealityFusionSession.init(_:)();

  RealityFusionSession.configure(with:)(a2);

  return v3;
}

uint64_t static RealityFusionSession.destroyRealityFusionSession()()
{
  result = swift_beginAccess();
  v1 = static RealityFusionSession.sharedSession;
  if (static RealityFusionSession.sharedSession)
  {
    result = swift_beginAccess();
    v2 = v1[3];
    v3 = __OFSUB__(v2, 1);
    v4 = v2 - 1;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      v1[3] = v4;
      if (!v4)
      {
        swift_beginAccess();
        if (v1[2])
        {

          v5 = RFServiceManagerGetAnchorManagementService();
          if (v5)
          {
            v6 = v5;
            v7 = specialized static __ServiceLocator.shared.getter();
            swift_beginAccess();
            v8 = *(v7 + 16);
            RFAnchorManagementServiceCleanupWithServiceLocator();
          }
        }

        else
        {
        }

        RFServiceManagerCleanUp();
        static RealityFusionSession.sharedSession = 0;
      }
    }
  }

  return result;
}

uint64_t RealityFusionSession.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t closure #1 in RealityFusionSession.configure(with:)(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  RFAnchorPtrGetTransform();
  v23 = v12;
  *v24 = v11;
  v21 = v14;
  v22 = v13;
  UUID.init()();
  (*(v4 + 16))(v7, v10, v3);
  v15 = objc_allocWithZone(MEMORY[0x1E6986418]);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v17 = [v15 initWithIdentifier:isa transform:{v24[0], *&v23, *&v22, *&v21}];

  v18 = *(v4 + 8);
  v18(v7, v3);
  RFAnchorPtrSetIdentifier();
  [a2 addAnchor_];

  result = (v18)(v10, v3);
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned RFEnvProbeData) -> ()(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 3);
  v5 = *(a2 + 4);
  v6 = *(a2 + 5);
  v10 = *a2;
  v11 = v2;
  v12 = v3;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);

  v7(&v10);
}

uint64_t closure #2 in RealityFusionSession.configure(with:)(_OWORD *a1, void *a2, SEL *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  v14 = *(*a1 + 7);
  v15 = *(*a1 + 6);
  v16 = *(*a1 + 5);
  v17 = *(*a1 + 4);
  v18 = *(*a1 + 3);
  v19 = *(*a1 + 2);
  v20 = *(*a1 + 1);
  v21 = **a1;
  v29 = *(*a1 + 8);
  UUID.init(uuid:)();
  UUID.uuid.getter();
  UUID.init(uuid:)();
  v22 = a1[5];
  v33 = a1[4];
  v34 = v22;
  v23 = a1[3];
  v31 = a1[2];
  v32 = v23;
  v30 = a1[1];
  v24 = objc_allocWithZone(MEMORY[0x1E6986448]);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v26 = [v24 initWithIdentifier:isa transform:*&v30 extent:{*&v31, *&v32, *&v33, *&v34}];

  v27 = *(v7 + 8);
  v27(v10, v6);
  [a2 *a3];

  return (v27)(v13, v6);
}

uint64_t __AnyARKitObject.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v6 = *(*(a2 - 8) + 32);

  return v6(boxed_opaque_existential_1, a1, a2);
}

void RealityFusionSession.configure(with:)(uint64_t a1)
{
  outlined init with copy of Any(a1, v2);
  type metadata accessor for ARSession();
  swift_dynamicCast();
  isa = v3.super.isa;
  RealityFusionSession.configure(with:)(v3);
}

uint64_t specialized RealityFusionSession.init(_:)()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = RFServiceManagerCreate();
  swift_beginAccess();
  v2 = *(v0 + 16);
  *(v0 + 16) = v1;
  v3 = v1;

  if (v3)
  {
    v4 = RFMeshReconstructionServiceCreate();
    RFServiceManagerSetMeshReconstructionService();
    v5 = RFAnchorManagementServiceCreate();
    RFServiceManagerSetAnchorManagementService();
    v6 = RFLoggingServiceCreate();
    RFServiceManagerSetLoggingService();
    v7 = RFEnvironmentProbePlacementServiceCreate();
    RFServiceManagerSetEnvironmentProbePlacementService();
    v8 = RFAtmospherePlacementServiceCreate();
    RFServiceManagerSetAtmospherePlacementService();
    v9 = RFAnchorDataProviderCreate();
    RFServiceManagerSetAnchorDataProvider();
  }

  swift_beginAccess();
  *(v0 + 24) = 1;
  swift_beginAccess();
  static RealityFusionSession.sharedSession = v0;

  return v0;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t type metadata accessor for ARSession()
{
  result = lazy cache variable for type metadata for ARSession;
  if (!lazy cache variable for type metadata for ARSession)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ARSession);
  }

  return result;
}

void *Array<A>.hasLookAtInteractions.getter(uint64_t a1)
{
  v176 = type metadata accessor for __RKEntityActionSpecification(0);
  v2 = *(v176 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v176);
  v5 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v124 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v124 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v124 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v148 = &v124 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v155 = &v124 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v125 = &v124 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v154 = &v124 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v142 = &v124 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v157 = &v124 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v146 = &v124 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v158 = &v124 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v145 = &v124 - v32;
  v144 = type metadata accessor for __RKEntityInteractionSpecification(0);
  v33 = *(v144 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v144);
  v147 = &v124 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(a1 + 16);
  if (!v36)
  {
    isUniquelyReferenced_nonNull_native = MEMORY[0x1E69E7CC0];
    goto LABEL_132;
  }

  v165 = v11;
  v124 = 0;
  v179 = MEMORY[0x1E69E7CC0];
  v129 = v36;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36, 0);
  v37 = 0;
  isUniquelyReferenced_nonNull_native = v179;
  v139 = a1 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
  v138 = *(v33 + 72);
  v174 = xmmword_1C1887600;
  while (1)
  {
    v151 = isUniquelyReferenced_nonNull_native;
    v152 = v37;
    v39 = v147;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v139 + v138 * v37, v147, type metadata accessor for __RKEntityInteractionSpecification);
    v40 = *(v144 + 20);
    v41 = v145;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v39 + v40, v145, type metadata accessor for __RKEntityActionSpecification);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      break;
    }

    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v41, type metadata accessor for __RKEntityActionSpecification);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
    v48 = *(v2 + 72);
    v49 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = v174;
    v44 = v50;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v39 + v40, v50 + v49, type metadata accessor for __RKEntityActionSpecification);
LABEL_126:
    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v39, type metadata accessor for __RKEntityInteractionSpecification);
    isUniquelyReferenced_nonNull_native = v151;
    v179 = v151;
    v121 = *(v151 + 16);
    v120 = *(v151 + 24);
    if (v121 >= v120 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v120 > 1), v121 + 1, 1);
      isUniquelyReferenced_nonNull_native = v179;
    }

    v37 = v152 + 1;
    *(isUniquelyReferenced_nonNull_native + 16) = v121 + 1;
    *(isUniquelyReferenced_nonNull_native + 8 * v121 + 32) = v44;
    if (v37 == v129)
    {
      goto LABEL_132;
    }
  }

  result = *(v41 + 8);
  v133 = result[2];
  if (!v133)
  {

    v44 = MEMORY[0x1E69E7CC0];
    goto LABEL_126;
  }

  v43 = 0;
  v173 = *(v2 + 80);
  v175 = (v173 + 32) & ~v173;
  v136 = result + v175;
  v44 = MEMORY[0x1E69E7CC0];
  v45 = v125;
  v46 = v146;
  v47 = v158;
  v167 = v14;
  v128 = result;
  while (1)
  {
    if (v43 >= result[2])
    {
      goto LABEL_140;
    }

    v160 = v44;
    v51 = *(v2 + 72);
    v150 = v43;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(&v136[v51 * v43], v47, type metadata accessor for __RKEntityActionSpecification);
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v47, v46, type metadata accessor for __RKEntityActionSpecification);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      break;
    }

    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v46, type metadata accessor for __RKEntityActionSpecification);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
    v54 = v175;
    v53 = swift_allocObject();
    *(v53 + 16) = v174;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v47, v53 + v54, type metadata accessor for __RKEntityActionSpecification);
LABEL_113:
    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v47, type metadata accessor for __RKEntityActionSpecification);
    v113 = *(v53 + 16);
    result = v160;
    v114 = v160[2];
    v115 = v114 + v113;
    if (__OFADD__(v114, v113))
    {
      goto LABEL_146;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v116 = v160;
    if (!result || v115 > v160[3] >> 1)
    {
      if (v114 <= v115)
      {
        v117 = v114 + v113;
      }

      else
      {
        v117 = v114;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v117, 1, v160);
      v116 = result;
    }

    v46 = v146;
    v47 = v158;
    if (*(v53 + 16))
    {
      if ((v116[3] >> 1) - v116[2] < v113)
      {
        goto LABEL_152;
      }

      v44 = v116;
      swift_arrayInitWithCopy();

      v14 = v167;
      if (v113)
      {
        v118 = v44[2];
        v89 = __OFADD__(v118, v113);
        v119 = v118 + v113;
        if (v89)
        {
          goto LABEL_156;
        }

        v44[2] = v119;
      }
    }

    else
    {
      v44 = v116;

      v14 = v167;
      if (v113)
      {
        goto LABEL_147;
      }
    }

    v43 = v150 + 1;
    result = v128;
    if (v150 + 1 == v133)
    {

      v39 = v147;
      goto LABEL_126;
    }
  }

  result = *(v46 + 8);
  v132 = result[2];
  if (!v132)
  {
    v53 = MEMORY[0x1E69E7CC0];
LABEL_112:

    goto LABEL_113;
  }

  v52 = 0;
  v135 = result + v175;
  v53 = MEMORY[0x1E69E7CC0];
  v127 = result;
  while (1)
  {
    if (v52 >= result[2])
    {
      goto LABEL_141;
    }

    v159 = v53;
    v149 = v52;
    v55 = v157;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(&v135[v52 * v51], v157, type metadata accessor for __RKEntityActionSpecification);
    v56 = v142;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v55, v142, type metadata accessor for __RKEntityActionSpecification);
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v56, type metadata accessor for __RKEntityActionSpecification);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
      v60 = v175;
      v58 = swift_allocObject();
      *(v58 + 16) = v174;
      _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v55, v58 + v60, type metadata accessor for __RKEntityActionSpecification);
      goto LABEL_99;
    }

    result = *(v56 + 8);
    v134 = result[2];
    if (v134)
    {
      break;
    }

    v58 = MEMORY[0x1E69E7CC0];
LABEL_98:

LABEL_99:
    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v55, type metadata accessor for __RKEntityActionSpecification);
    v106 = *(v58 + 16);
    result = v159;
    v107 = v159[2];
    v108 = v107 + v106;
    if (__OFADD__(v107, v106))
    {
      goto LABEL_148;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v109 = v159;
    if (!result || v108 > v159[3] >> 1)
    {
      if (v107 <= v108)
      {
        v110 = v107 + v106;
      }

      else
      {
        v110 = v107;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v110, 1, v159);
      v109 = result;
    }

    v47 = v158;
    if (*(v58 + 16))
    {
      if ((v109[3] >> 1) - v109[2] < v106)
      {
        goto LABEL_153;
      }

      v53 = v109;
      swift_arrayInitWithCopy();

      if (v106)
      {
        v111 = *(v53 + 16);
        v89 = __OFADD__(v111, v106);
        v112 = v111 + v106;
        if (v89)
        {
          goto LABEL_157;
        }

        *(v53 + 16) = v112;
      }
    }

    else
    {
      v53 = v109;

      if (v106)
      {
        goto LABEL_149;
      }
    }

    v52 = v149 + 1;
    result = v127;
    if (v149 + 1 == v132)
    {
      goto LABEL_112;
    }
  }

  v57 = 0;
  v137 = result + v175;
  v58 = MEMORY[0x1E69E7CC0];
  v59 = v154;
  v126 = v2;
  v169 = v8;
  v170 = v5;
  v130 = result;
  while (1)
  {
    if (v57 >= result[2])
    {
      goto LABEL_139;
    }

    v161 = v58;
    v153 = v57;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(&v137[v57 * v51], v59, type metadata accessor for __RKEntityActionSpecification);
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v59, v45, type metadata accessor for __RKEntityActionSpecification);
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v45, type metadata accessor for __RKEntityActionSpecification);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
      v64 = v175;
      v62 = swift_allocObject();
      *(v62 + 1) = v174;
      _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v59, v62 + v64, type metadata accessor for __RKEntityActionSpecification);
      goto LABEL_84;
    }

    result = *(v45 + 8);
    v140 = result[2];
    if (v140)
    {
      break;
    }

    v62 = MEMORY[0x1E69E7CC0];

LABEL_83:
    v59 = v154;
LABEL_84:
    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v59, type metadata accessor for __RKEntityActionSpecification);
    v99 = v62[2];
    result = v161;
    v100 = v161[2];
    v101 = v100 + v99;
    if (__OFADD__(v100, v99))
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v102 = v161;
    if (!result || v101 > v161[3] >> 1)
    {
      if (v100 <= v101)
      {
        v103 = v100 + v99;
      }

      else
      {
        v103 = v100;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v103, 1, v161);
      v102 = result;
    }

    if (v62[2])
    {
      if ((v102[3] >> 1) - v102[2] < v99)
      {
        goto LABEL_151;
      }

      v58 = v102;
      swift_arrayInitWithCopy();

      v59 = v154;
      if (v99)
      {
        v104 = *(v58 + 16);
        v89 = __OFADD__(v104, v99);
        v105 = v104 + v99;
        if (v89)
        {
          goto LABEL_155;
        }

        *(v58 + 16) = v105;
      }
    }

    else
    {
      v58 = v102;

      v59 = v154;
      if (v99)
      {
        goto LABEL_145;
      }
    }

    v57 = v153 + 1;
    v55 = v157;
    result = v130;
    if (v153 + 1 == v134)
    {
      goto LABEL_98;
    }
  }

  v61 = 0;
  v141 = result + v175;
  v62 = MEMORY[0x1E69E7CC0];
  v63 = v155;
  v131 = result;
  while (1)
  {
    if (v61 >= result[2])
    {
      goto LABEL_138;
    }

    v163 = v62;
    v156 = v61;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(&v141[v61 * v51], v63, type metadata accessor for __RKEntityActionSpecification);
    v66 = v148;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v63, v148, type metadata accessor for __RKEntityActionSpecification);
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v66, type metadata accessor for __RKEntityActionSpecification);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
      v91 = v175;
      v67 = swift_allocObject();
      *(v67 + 16) = v174;
      _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v63, v67 + v91, type metadata accessor for __RKEntityActionSpecification);
      v92 = v63;
      goto LABEL_69;
    }

    result = *(v66 + 8);
    v67 = MEMORY[0x1E69E7CC0];
    v178 = MEMORY[0x1E69E7CC0];
    v164 = result[2];
    if (v164)
    {
      break;
    }

LABEL_68:
    v92 = v155;
LABEL_69:
    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v92, type metadata accessor for __RKEntityActionSpecification);
    v93 = *(v67 + 16);
    result = v163;
    v94 = v163[2];
    v95 = v94 + v93;
    if (__OFADD__(v94, v93))
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v62 = v163;
    if (result && v95 <= v163[3] >> 1)
    {
      if (*(v67 + 16))
      {
        goto LABEL_78;
      }
    }

    else
    {
      if (v94 <= v95)
      {
        v96 = v94 + v93;
      }

      else
      {
        v96 = v94;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v96, 1, v163);
      v62 = result;
      if (*(v67 + 16))
      {
LABEL_78:
        if ((v62[3] >> 1) - v62[2] < v93)
        {
          goto LABEL_150;
        }

        swift_arrayInitWithCopy();

        v63 = v155;
        result = v131;
        v65 = v156;
        if (v93)
        {
          v97 = v62[2];
          v89 = __OFADD__(v97, v93);
          v98 = v97 + v93;
          if (v89)
          {
            goto LABEL_154;
          }

          v62[2] = v98;
        }

        goto LABEL_29;
      }
    }

    v63 = v155;
    result = v131;
    v65 = v156;
    if (v93)
    {
      goto LABEL_143;
    }

LABEL_29:
    v61 = v65 + 1;
    if (v61 == v140)
    {

      v45 = v125;
      goto LABEL_83;
    }
  }

  v68 = 0;
  v166 = result + v175;
  v162 = result;
  while (1)
  {
    if (v68 >= result[2])
    {
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
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
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
      return result;
    }

    v168 = v68;
    v72 = v167;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(&v166[v68 * v51], v167, type metadata accessor for __RKEntityActionSpecification);
    v73 = v165;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v72, v165, type metadata accessor for __RKEntityActionSpecification);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      break;
    }

    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v73, type metadata accessor for __RKEntityActionSpecification);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
    v69 = v175;
    v70 = swift_allocObject();
    *(v70 + 16) = v174;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v72, v70 + v69, type metadata accessor for __RKEntityActionSpecification);
    v71 = v72;
LABEL_35:
    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v71, type metadata accessor for __RKEntityActionSpecification);
    v68 = v168 + 1;
    specialized Array.append<A>(contentsOf:)(v70);
    result = v162;
    if (v68 == v164)
    {

      v67 = v178;
      goto LABEL_68;
    }
  }

  v74 = *(v73 + 8);
  v70 = MEMORY[0x1E69E7CC0];
  v177 = MEMORY[0x1E69E7CC0];
  v75 = *(v74 + 16);
  if (!v75)
  {

LABEL_64:
    v71 = v167;
    goto LABEL_35;
  }

  v76 = 0;
  v143 = v74;
  v77 = v74 + v175;
  v171 = v74 + v175;
  v172 = v75;
  while (1)
  {
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v77 + v76 * v51, v8, type metadata accessor for __RKEntityActionSpecification);
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v8, v5, type metadata accessor for __RKEntityActionSpecification);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      break;
    }

    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v5, type metadata accessor for __RKEntityActionSpecification);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
    v78 = v175;
    v79 = swift_allocObject();
    *(v79 + 16) = v174;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v8, v79 + v78, type metadata accessor for __RKEntityActionSpecification);
LABEL_41:
    ++v76;
    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v8, type metadata accessor for __RKEntityActionSpecification);
    specialized Array.append<A>(contentsOf:)(v79);
    if (v76 == v75)
    {

      v70 = v177;
      v2 = v126;
      goto LABEL_64;
    }
  }

  v80 = *(v5 + 1);
  v81 = *(v80 + 16);

  if (!v81)
  {
    v79 = MEMORY[0x1E69E7CC0];
LABEL_61:
    swift_bridgeObjectRelease_n();
    v8 = v169;
    v5 = v170;
    v77 = v171;
    v75 = v172;
    goto LABEL_41;
  }

  v82 = v80 + v175;
  v79 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    isUniquelyReferenced_nonNull_native = __RKEntityActionSpecification.flattened.getter();
    v83 = *(isUniquelyReferenced_nonNull_native + 16);
    v84 = *(v79 + 16);
    v85 = v84 + v83;
    if (__OFADD__(v84, v83))
    {
      break;
    }

    v86 = isUniquelyReferenced_nonNull_native;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v85 <= *(v79 + 24) >> 1)
    {
      if (*(v86 + 16))
      {
        goto LABEL_56;
      }
    }

    else
    {
      if (v84 <= v85)
      {
        v87 = v84 + v83;
      }

      else
      {
        v87 = v84;
      }

      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v87, 1, v79);
      v79 = isUniquelyReferenced_nonNull_native;
      if (*(v86 + 16))
      {
LABEL_56:
        if ((*(v79 + 24) >> 1) - *(v79 + 16) < v83)
        {
          goto LABEL_135;
        }

        swift_arrayInitWithCopy();

        if (v83)
        {
          v88 = *(v79 + 16);
          v89 = __OFADD__(v88, v83);
          v90 = v88 + v83;
          if (v89)
          {
            goto LABEL_136;
          }

          *(v79 + 16) = v90;
        }

        goto LABEL_46;
      }
    }

    if (v83)
    {
      goto LABEL_134;
    }

LABEL_46:
    v82 += v51;
    if (!--v81)
    {
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_132:
  specialized Sequence.filter(_:)(isUniquelyReferenced_nonNull_native);
  v123 = *(v122 + 16);

  return (v123 != 0);
}

void *Array<A>.hasProximityTriggers.getter(uint64_t a1)
{
  v176 = type metadata accessor for __RKEntityTriggerSpecification(0);
  v2 = *(v176 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v176);
  v5 = v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v125 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v125 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v125 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v148 = (v125 - v16);
  MEMORY[0x1EEE9AC00](v17);
  v155 = v125 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v126 = v125 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v154 = v125 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v143 = v125 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v157 = v125 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v147 = v125 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v158 = v125 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v145 = v125 - v32;
  v33 = type metadata accessor for __RKEntityInteractionSpecification(0);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v146 = v125 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(a1 + 16);
  if (!v37)
  {
    isUniquelyReferenced_nonNull_native = MEMORY[0x1E69E7CC0];
    goto LABEL_132;
  }

  v165 = v11;
  v125[1] = 0;
  v179 = MEMORY[0x1E69E7CC0];
  v130 = v37;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37, 0);
  v38 = 0;
  isUniquelyReferenced_nonNull_native = v179;
  v140 = a1 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
  v139 = *(v34 + 72);
  v174 = xmmword_1C1887600;
  v40 = v146;
  while (1)
  {
    v151 = isUniquelyReferenced_nonNull_native;
    v152 = v38;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v140 + v139 * v38, v40, type metadata accessor for __RKEntityInteractionSpecification);
    v41 = v145;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v40, v145, type metadata accessor for __RKEntityTriggerSpecification);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      break;
    }

    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v41, type metadata accessor for __RKEntityTriggerSpecification);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMR);
    v48 = *(v2 + 72);
    v49 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = v174;
    v44 = v50;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v40, v50 + v49, type metadata accessor for __RKEntityTriggerSpecification);
LABEL_126:
    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v40, type metadata accessor for __RKEntityInteractionSpecification);
    isUniquelyReferenced_nonNull_native = v151;
    v179 = v151;
    v122 = *(v151 + 16);
    v121 = *(v151 + 24);
    if (v122 >= v121 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v121 > 1), v122 + 1, 1);
      v40 = v146;
      isUniquelyReferenced_nonNull_native = v179;
    }

    v38 = v152 + 1;
    *(isUniquelyReferenced_nonNull_native + 16) = v122 + 1;
    *(isUniquelyReferenced_nonNull_native + 8 * v122 + 32) = v44;
    if (v38 == v130)
    {
      goto LABEL_132;
    }
  }

  result = *v41;
  v134 = *(*v41 + 16);
  if (!v134)
  {

    v44 = MEMORY[0x1E69E7CC0];
    goto LABEL_126;
  }

  v43 = 0;
  v173 = *(v2 + 80);
  v175 = (v173 + 32) & ~v173;
  v137 = result + v175;
  v44 = MEMORY[0x1E69E7CC0];
  v45 = v126;
  v46 = v147;
  v47 = v158;
  v167 = v14;
  v129 = result;
  while (1)
  {
    if (v43 >= result[2])
    {
      goto LABEL_140;
    }

    v160 = v44;
    v52 = *(v2 + 72);
    v150 = v43;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(&v137[v52 * v43], v47, type metadata accessor for __RKEntityTriggerSpecification);
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v47, v46, type metadata accessor for __RKEntityTriggerSpecification);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      break;
    }

    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v46, type metadata accessor for __RKEntityTriggerSpecification);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMR);
    v55 = v175;
    v54 = swift_allocObject();
    *(v54 + 16) = v174;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v47, v54 + v55, type metadata accessor for __RKEntityTriggerSpecification);
LABEL_113:
    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v47, type metadata accessor for __RKEntityTriggerSpecification);
    v114 = *(v54 + 16);
    result = v160;
    v115 = v160[2];
    v116 = v115 + v114;
    if (__OFADD__(v115, v114))
    {
      goto LABEL_146;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v117 = v160;
    if (!result || v116 > v160[3] >> 1)
    {
      if (v115 <= v116)
      {
        v118 = v115 + v114;
      }

      else
      {
        v118 = v115;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v118, 1, v160);
      v117 = result;
    }

    v46 = v147;
    v47 = v158;
    if (*(v54 + 16))
    {
      if ((v117[3] >> 1) - v117[2] < v114)
      {
        goto LABEL_152;
      }

      v44 = v117;
      swift_arrayInitWithCopy();

      v14 = v167;
      result = v129;
      v51 = v150;
      if (v114)
      {
        v119 = v44[2];
        v90 = __OFADD__(v119, v114);
        v120 = v119 + v114;
        if (v90)
        {
          goto LABEL_156;
        }

        v44[2] = v120;
      }
    }

    else
    {
      v44 = v117;

      v14 = v167;
      result = v129;
      v51 = v150;
      if (v114)
      {
        goto LABEL_147;
      }
    }

    v43 = v51 + 1;
    v40 = v146;
    if (v43 == v134)
    {

      goto LABEL_126;
    }
  }

  result = *v46;
  v133 = *(*v46 + 16);
  if (!v133)
  {
    v54 = MEMORY[0x1E69E7CC0];
LABEL_112:

    goto LABEL_113;
  }

  v53 = 0;
  v136 = result + v175;
  v54 = MEMORY[0x1E69E7CC0];
  v128 = result;
  while (1)
  {
    if (v53 >= result[2])
    {
      goto LABEL_141;
    }

    v159 = v54;
    v149 = v53;
    v56 = v157;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(&v136[v53 * v52], v157, type metadata accessor for __RKEntityTriggerSpecification);
    v57 = v143;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v56, v143, type metadata accessor for __RKEntityTriggerSpecification);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v57, type metadata accessor for __RKEntityTriggerSpecification);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMR);
      v61 = v175;
      v59 = swift_allocObject();
      *(v59 + 16) = v174;
      _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v56, v59 + v61, type metadata accessor for __RKEntityTriggerSpecification);
      goto LABEL_99;
    }

    result = *v57;
    v135 = *(*v57 + 16);
    if (v135)
    {
      break;
    }

    v59 = MEMORY[0x1E69E7CC0];
LABEL_98:

LABEL_99:
    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v56, type metadata accessor for __RKEntityTriggerSpecification);
    v107 = *(v59 + 16);
    result = v159;
    v108 = v159[2];
    v109 = v108 + v107;
    if (__OFADD__(v108, v107))
    {
      goto LABEL_148;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v110 = v159;
    if (!result || v109 > v159[3] >> 1)
    {
      if (v108 <= v109)
      {
        v111 = v108 + v107;
      }

      else
      {
        v111 = v108;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v111, 1, v159);
      v110 = result;
    }

    v47 = v158;
    if (*(v59 + 16))
    {
      if ((v110[3] >> 1) - v110[2] < v107)
      {
        goto LABEL_153;
      }

      v54 = v110;
      swift_arrayInitWithCopy();

      if (v107)
      {
        v112 = *(v54 + 16);
        v90 = __OFADD__(v112, v107);
        v113 = v112 + v107;
        if (v90)
        {
          goto LABEL_157;
        }

        *(v54 + 16) = v113;
      }
    }

    else
    {
      v54 = v110;

      if (v107)
      {
        goto LABEL_149;
      }
    }

    v53 = v149 + 1;
    result = v128;
    if (v149 + 1 == v133)
    {
      goto LABEL_112;
    }
  }

  v58 = 0;
  v138 = result + v175;
  v59 = MEMORY[0x1E69E7CC0];
  v60 = v154;
  v127 = v2;
  v169 = v8;
  v170 = v5;
  v131 = result;
  while (1)
  {
    if (v58 >= result[2])
    {
      goto LABEL_139;
    }

    v161 = v59;
    v153 = v58;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(&v138[v58 * v52], v60, type metadata accessor for __RKEntityTriggerSpecification);
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v60, v45, type metadata accessor for __RKEntityTriggerSpecification);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v45, type metadata accessor for __RKEntityTriggerSpecification);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMR);
      v65 = v175;
      v63 = swift_allocObject();
      *(v63 + 1) = v174;
      _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v60, v63 + v65, type metadata accessor for __RKEntityTriggerSpecification);
      goto LABEL_84;
    }

    result = *v45;
    v141 = *(*v45 + 16);
    if (v141)
    {
      break;
    }

    v63 = MEMORY[0x1E69E7CC0];

LABEL_83:
    v60 = v154;
LABEL_84:
    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v60, type metadata accessor for __RKEntityTriggerSpecification);
    v100 = v63[2];
    result = v161;
    v101 = v161[2];
    v102 = v101 + v100;
    if (__OFADD__(v101, v100))
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v103 = v161;
    if (!result || v102 > v161[3] >> 1)
    {
      if (v101 <= v102)
      {
        v104 = v101 + v100;
      }

      else
      {
        v104 = v101;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v104, 1, v161);
      v103 = result;
    }

    if (v63[2])
    {
      if ((v103[3] >> 1) - v103[2] < v100)
      {
        goto LABEL_151;
      }

      v59 = v103;
      swift_arrayInitWithCopy();

      v60 = v154;
      if (v100)
      {
        v105 = *(v59 + 16);
        v90 = __OFADD__(v105, v100);
        v106 = v105 + v100;
        if (v90)
        {
          goto LABEL_155;
        }

        *(v59 + 16) = v106;
      }
    }

    else
    {
      v59 = v103;

      v60 = v154;
      if (v100)
      {
        goto LABEL_145;
      }
    }

    v58 = v153 + 1;
    v56 = v157;
    result = v131;
    if (v153 + 1 == v135)
    {
      goto LABEL_98;
    }
  }

  v62 = 0;
  v142 = result + v175;
  v63 = MEMORY[0x1E69E7CC0];
  v64 = v155;
  v132 = result;
  while (1)
  {
    if (v62 >= result[2])
    {
      goto LABEL_138;
    }

    v163 = v63;
    v156 = v62;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(&v142[v62 * v52], v64, type metadata accessor for __RKEntityTriggerSpecification);
    v67 = v148;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v64, v148, type metadata accessor for __RKEntityTriggerSpecification);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v67, type metadata accessor for __RKEntityTriggerSpecification);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMR);
      v92 = v175;
      v68 = swift_allocObject();
      *(v68 + 16) = v174;
      _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v64, v68 + v92, type metadata accessor for __RKEntityTriggerSpecification);
      v93 = v64;
      goto LABEL_69;
    }

    result = *v67;
    v68 = MEMORY[0x1E69E7CC0];
    v178 = MEMORY[0x1E69E7CC0];
    v164 = result[2];
    if (v164)
    {
      break;
    }

LABEL_68:
    v93 = v155;
LABEL_69:
    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v93, type metadata accessor for __RKEntityTriggerSpecification);
    v94 = *(v68 + 16);
    result = v163;
    v95 = v163[2];
    v96 = v95 + v94;
    if (__OFADD__(v95, v94))
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v63 = v163;
    if (result && v96 <= v163[3] >> 1)
    {
      if (*(v68 + 16))
      {
        goto LABEL_78;
      }
    }

    else
    {
      if (v95 <= v96)
      {
        v97 = v95 + v94;
      }

      else
      {
        v97 = v95;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v97, 1, v163);
      v63 = result;
      if (*(v68 + 16))
      {
LABEL_78:
        if ((v63[3] >> 1) - v63[2] < v94)
        {
          goto LABEL_150;
        }

        swift_arrayInitWithCopy();

        v64 = v155;
        result = v132;
        v66 = v156;
        if (v94)
        {
          v98 = v63[2];
          v90 = __OFADD__(v98, v94);
          v99 = v98 + v94;
          if (v90)
          {
            goto LABEL_154;
          }

          v63[2] = v99;
        }

        goto LABEL_29;
      }
    }

    v64 = v155;
    result = v132;
    v66 = v156;
    if (v94)
    {
      goto LABEL_143;
    }

LABEL_29:
    v62 = v66 + 1;
    if (v62 == v141)
    {

      v45 = v126;
      goto LABEL_83;
    }
  }

  v69 = 0;
  v166 = result + v175;
  v162 = result;
  while (1)
  {
    if (v69 >= result[2])
    {
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
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
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
      return result;
    }

    v168 = v69;
    v73 = v167;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(&v166[v69 * v52], v167, type metadata accessor for __RKEntityTriggerSpecification);
    v74 = v165;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v73, v165, type metadata accessor for __RKEntityTriggerSpecification);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      break;
    }

    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v74, type metadata accessor for __RKEntityTriggerSpecification);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMR);
    v70 = v175;
    v71 = swift_allocObject();
    *(v71 + 16) = v174;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v73, v71 + v70, type metadata accessor for __RKEntityTriggerSpecification);
    v72 = v73;
LABEL_35:
    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v72, type metadata accessor for __RKEntityTriggerSpecification);
    v69 = v168 + 1;
    specialized Array.append<A>(contentsOf:)(v71);
    result = v162;
    if (v69 == v164)
    {

      v68 = v178;
      goto LABEL_68;
    }
  }

  v75 = *v74;
  v71 = MEMORY[0x1E69E7CC0];
  v177 = MEMORY[0x1E69E7CC0];
  v76 = *(v75 + 16);
  if (!v76)
  {

LABEL_64:
    v72 = v167;
    goto LABEL_35;
  }

  v77 = 0;
  v144 = v75;
  v78 = v75 + v175;
  v171 = v75 + v175;
  v172 = v76;
  while (1)
  {
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v78 + v77 * v52, v8, type metadata accessor for __RKEntityTriggerSpecification);
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v8, v5, type metadata accessor for __RKEntityTriggerSpecification);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      break;
    }

    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v5, type metadata accessor for __RKEntityTriggerSpecification);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMR);
    v79 = v175;
    v80 = swift_allocObject();
    *(v80 + 16) = v174;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v8, v80 + v79, type metadata accessor for __RKEntityTriggerSpecification);
LABEL_41:
    ++v77;
    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v8, type metadata accessor for __RKEntityTriggerSpecification);
    specialized Array.append<A>(contentsOf:)(v80);
    if (v77 == v76)
    {

      v71 = v177;
      v2 = v127;
      goto LABEL_64;
    }
  }

  v81 = *v5;
  v82 = *(*v5 + 16);

  if (!v82)
  {
    v80 = MEMORY[0x1E69E7CC0];
LABEL_61:
    swift_bridgeObjectRelease_n();
    v8 = v169;
    v5 = v170;
    v78 = v171;
    v76 = v172;
    goto LABEL_41;
  }

  v83 = v81 + v175;
  v80 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    isUniquelyReferenced_nonNull_native = __RKEntityTriggerSpecification.flattened.getter();
    v84 = *(isUniquelyReferenced_nonNull_native + 16);
    v85 = *(v80 + 16);
    v86 = v85 + v84;
    if (__OFADD__(v85, v84))
    {
      break;
    }

    v87 = isUniquelyReferenced_nonNull_native;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v86 <= *(v80 + 24) >> 1)
    {
      if (*(v87 + 16))
      {
        goto LABEL_56;
      }
    }

    else
    {
      if (v85 <= v86)
      {
        v88 = v85 + v84;
      }

      else
      {
        v88 = v85;
      }

      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v88, 1, v80);
      v80 = isUniquelyReferenced_nonNull_native;
      if (*(v87 + 16))
      {
LABEL_56:
        if ((*(v80 + 24) >> 1) - *(v80 + 16) < v84)
        {
          goto LABEL_135;
        }

        swift_arrayInitWithCopy();

        if (v84)
        {
          v89 = *(v80 + 16);
          v90 = __OFADD__(v89, v84);
          v91 = v89 + v84;
          if (v90)
          {
            goto LABEL_136;
          }

          *(v80 + 16) = v91;
        }

        goto LABEL_46;
      }
    }

    if (v84)
    {
      goto LABEL_134;
    }

LABEL_46:
    v83 += v52;
    if (!--v82)
    {
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_132:
  specialized Sequence.filter(_:)(isUniquelyReferenced_nonNull_native);
  v124 = *(v123 + 16);

  return (v124 != 0);
}

size_t __RKEntityActionSpecification.flattened.getter()
{
  v1 = v0;
  v2 = type metadata accessor for __RKEntityActionSpecification(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v28 - v8;
  _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v1, v28 - v8, type metadata accessor for __RKEntityActionSpecification);
  v28[1] = v2;
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v9, type metadata accessor for __RKEntityActionSpecification);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
    v26 = *(v3 + 72);
    v27 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1C1887600;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v1, v15 + v27, type metadata accessor for __RKEntityActionSpecification);
    return v15;
  }

  v10 = *(v9 + 1);
  v11 = *(v10 + 16);
  if (!v11)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v28[0] = *(v9 + 1);
  v13 = v10 + v12;
  v14 = *(v3 + 72);
  v15 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v17 = _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v13, v6, type metadata accessor for __RKEntityActionSpecification);
    v18 = __RKEntityActionSpecification.flattened.getter(v17);
    result = _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v6, type metadata accessor for __RKEntityActionSpecification);
    v19 = *(v18 + 16);
    v20 = *(v15 + 16);
    v21 = v20 + v19;
    if (__OFADD__(v20, v19))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v21 <= *(v15 + 24) >> 1)
    {
      if (*(v18 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v20 <= v21)
      {
        v22 = v20 + v19;
      }

      else
      {
        v22 = v20;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v22, 1, v15);
      v15 = result;
      if (*(v18 + 16))
      {
LABEL_15:
        if ((*(v15 + 24) >> 1) - *(v15 + 16) < v19)
        {
          goto LABEL_25;
        }

        swift_arrayInitWithCopy();

        if (v19)
        {
          v23 = *(v15 + 16);
          v24 = __OFADD__(v23, v19);
          v25 = v23 + v19;
          if (v24)
          {
            goto LABEL_26;
          }

          *(v15 + 16) = v25;
        }

        goto LABEL_5;
      }
    }

    if (v19)
    {
      goto LABEL_24;
    }

LABEL_5:
    v13 += v14;
    if (!--v11)
    {

      return v15;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

size_t __RKEntityTriggerSpecification.flattened.getter()
{
  v1 = v0;
  v2 = type metadata accessor for __RKEntityTriggerSpecification(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v28 - v8;
  _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v1, v28 - v8, type metadata accessor for __RKEntityTriggerSpecification);
  v28[1] = v2;
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v9, type metadata accessor for __RKEntityTriggerSpecification);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMR);
    v26 = *(v3 + 72);
    v27 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1C1887600;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v1, v15 + v27, type metadata accessor for __RKEntityTriggerSpecification);
    return v15;
  }

  v10 = *v9;
  v11 = *(*v9 + 16);
  if (!v11)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v28[0] = *v9;
  v13 = v10 + v12;
  v14 = *(v3 + 72);
  v15 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v17 = _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v13, v6, type metadata accessor for __RKEntityTriggerSpecification);
    v18 = __RKEntityTriggerSpecification.flattened.getter(v17);
    result = _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v6, type metadata accessor for __RKEntityTriggerSpecification);
    v19 = *(v18 + 16);
    v20 = *(v15 + 16);
    v21 = v20 + v19;
    if (__OFADD__(v20, v19))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v21 <= *(v15 + 24) >> 1)
    {
      if (*(v18 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v20 <= v21)
      {
        v22 = v20 + v19;
      }

      else
      {
        v22 = v20;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v22, 1, v15);
      v15 = result;
      if (*(v18 + 16))
      {
LABEL_15:
        if ((*(v15 + 24) >> 1) - *(v15 + 16) < v19)
        {
          goto LABEL_25;
        }

        swift_arrayInitWithCopy();

        if (v19)
        {
          v23 = *(v15 + 16);
          v24 = __OFADD__(v23, v19);
          v25 = v23 + v19;
          if (v24)
          {
            goto LABEL_26;
          }

          *(v15 + 16) = v25;
        }

        goto LABEL_5;
      }
    }

    if (v19)
    {
      goto LABEL_24;
    }

LABEL_5:
    v13 += v14;
    if (!--v11)
    {

      return v15;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void specialized Sequence.filter(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit29__RKEntityActionSpecificationOSgMd, &_s10RealityKit29__RKEntityActionSpecificationOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v38 - v7;
  v8 = type metadata accessor for __RKEntityActionSpecification(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v44 = &v38 - v12;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v43 = &v38 - v15;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v20 = (v19 + 56);
  v21 = a1 + 32;
  v47 = v19 + 48;
  v48 = v19;
  v42 = MEMORY[0x1E69E7CC0];
  v45 = v22;
  v46 = a1;
  while (1)
  {
    if (!v17)
    {
      goto LABEL_5;
    }

    v23 = *(v17 + 16);
    if (v16 != v23)
    {
      break;
    }

    (*v20)(v5, 1, 1, v8, v14);
    outlined destroy of BodyTrackingComponent?(v5, &_s10RealityKit29__RKEntityActionSpecificationOSgMd, &_s10RealityKit29__RKEntityActionSpecificationOSgMR);
LABEL_5:
    v24 = *(a1 + 16);
    v25 = v50;
    if (v18 == v24)
    {
LABEL_24:

      (*v20)(v25, 1, 1, v8);
LABEL_25:

      outlined destroy of BodyTrackingComponent?(v25, &_s10RealityKit29__RKEntityActionSpecificationOSgMd, &_s10RealityKit29__RKEntityActionSpecificationOSgMR);
      return;
    }

    if (v18 >= v24)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    while (1)
    {
      v17 = *(v21 + 8 * v18);

      if (v17)
      {
        break;
      }

LABEL_10:
      ++v18;
      v26 = *(a1 + 16);
      if (v18 == v26)
      {
        goto LABEL_24;
      }

      if (v18 >= v26)
      {
        goto LABEL_27;
      }
    }

    if (!*(v17 + 16))
    {
      (*v20)(v5, 1, 1, v8);
      outlined destroy of BodyTrackingComponent?(v5, &_s10RealityKit29__RKEntityActionSpecificationOSgMd, &_s10RealityKit29__RKEntityActionSpecificationOSgMR);
      goto LABEL_10;
    }

    v16 = 0;
    ++v18;
LABEL_16:
    v27 = v48;
    v41 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v40 = *(v48 + 72);
    v28 = v25;
    v29 = v16;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v17 + v41 + v40 * v16, v5, type metadata accessor for __RKEntityActionSpecification);
    (*(v27 + 56))(v5, 0, 1, v8);
    outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v5, v28, &_s10RealityKit29__RKEntityActionSpecificationOSgMd, &_s10RealityKit29__RKEntityActionSpecificationOSgMR);
    if ((*(v27 + 48))(v28, 1, v8) == 1)
    {

      v25 = v28;
      goto LABEL_25;
    }

    v49 = v29 + 1;
    v30 = v43;
    _s10RealityKit30__RKEntityTriggerSpecificationOWObTm_0(v28, v43, type metadata accessor for __RKEntityActionSpecification);
    v31 = v44;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v30, v44, type metadata accessor for __RKEntityActionSpecification);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v31, type metadata accessor for __RKEntityActionSpecification);
    if (EnumCaseMultiPayload == 17)
    {
      _s10RealityKit30__RKEntityTriggerSpecificationOWObTm_0(v30, v39, type metadata accessor for __RKEntityActionSpecification);
      v33 = v42;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = v33;
      a1 = v46;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 16) + 1, 1);
        v33 = v51;
      }

      v8 = v45;
      v36 = *(v33 + 16);
      v35 = *(v33 + 24);
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        v42 = v36 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v35 > 1, v36 + 1, 1);
        v37 = v42;
        v33 = v51;
      }

      *(v33 + 16) = v37;
      v42 = v33;
      _s10RealityKit30__RKEntityTriggerSpecificationOWObTm_0(v39, v33 + v41 + v36 * v40, type metadata accessor for __RKEntityActionSpecification);
      v16 = v49;
    }

    else
    {
      _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v30, type metadata accessor for __RKEntityActionSpecification);
      v8 = v45;
      a1 = v46;
      v16 = v49;
    }
  }

  v25 = v50;
  if (v16 < v23)
  {
    goto LABEL_16;
  }

LABEL_28:
  __break(1u);
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit30__RKEntityTriggerSpecificationOSgMd, &_s10RealityKit30__RKEntityTriggerSpecificationOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v38 - v7;
  v8 = type metadata accessor for __RKEntityTriggerSpecification(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v15 = 0;
  v17 = (v16 + 56);
  v18 = a1 + 32;
  v46 = v16 + 48;
  v47 = v16;
  v42 = MEMORY[0x1E69E7CC0];
  v43 = &v38 - v19;
  v50 = v20;
  v44 = v13;
  v45 = a1;
LABEL_4:
  v22 = *(a1 + 16);
  if (v15 == v22)
  {
LABEL_23:

    (*v17)(v49, 1, 1, v50);
LABEL_24:

    outlined destroy of BodyTrackingComponent?(v49, &_s10RealityKit30__RKEntityTriggerSpecificationOSgMd, &_s10RealityKit30__RKEntityTriggerSpecificationOSgMR);
    return;
  }

  if (v15 >= v22)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  while (1)
  {
    v23 = *(v18 + 8 * v15);

    if (v23)
    {
      break;
    }

LABEL_9:
    ++v15;
    v25 = *(a1 + 16);
    if (v15 == v25)
    {
      goto LABEL_23;
    }

    if (v15 >= v25)
    {
      goto LABEL_26;
    }
  }

  v21 = *(v23 + 16);
  v24 = v50;
  if (!v21)
  {
    (*v17)(v5, 1, 1, v50);
    outlined destroy of BodyTrackingComponent?(v5, &_s10RealityKit30__RKEntityTriggerSpecificationOSgMd, &_s10RealityKit30__RKEntityTriggerSpecificationOSgMR);
    goto LABEL_9;
  }

  v26 = 0;
  ++v15;
  while (v26 < v21)
  {
    v27 = v47;
    v41 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v40 = *(v47 + 72);
    v28 = v24;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v23 + v41 + v40 * v26, v5, type metadata accessor for __RKEntityTriggerSpecification);
    (*(v27 + 56))(v5, 0, 1, v28);
    v29 = v49;
    outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v5, v49, &_s10RealityKit30__RKEntityTriggerSpecificationOSgMd, &_s10RealityKit30__RKEntityTriggerSpecificationOSgMR);
    if ((*(v27 + 48))(v29, 1, v28) == 1)
    {

      goto LABEL_24;
    }

    v48 = v26 + 1;
    v30 = v43;
    _s10RealityKit30__RKEntityTriggerSpecificationOWObTm_0(v49, v43, type metadata accessor for __RKEntityTriggerSpecification);
    v31 = v44;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v30, v44, type metadata accessor for __RKEntityTriggerSpecification);
    if (swift_getEnumCaseMultiPayload())
    {
      _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v31, type metadata accessor for __RKEntityTriggerSpecification);
      _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v30, type metadata accessor for __RKEntityTriggerSpecification);
    }

    else
    {
      v32 = type metadata accessor for UUID();
      (*(*(v32 - 8) + 8))(v31, v32);
      _s10RealityKit30__RKEntityTriggerSpecificationOWObTm_0(v30, v39, type metadata accessor for __RKEntityTriggerSpecification);
      v33 = v42;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 16) + 1, 1);
        v33 = v51;
      }

      v36 = *(v33 + 16);
      v35 = *(v33 + 24);
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        v42 = v36 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v35 > 1, v36 + 1, 1);
        v37 = v42;
        v33 = v51;
      }

      *(v33 + 16) = v37;
      v42 = v33;
      _s10RealityKit30__RKEntityTriggerSpecificationOWObTm_0(v39, v33 + v41 + v36 * v40, type metadata accessor for __RKEntityTriggerSpecification);
    }

    v24 = v50;
    v26 = v48;
    a1 = v45;
    v21 = *(v23 + 16);
    if (v48 == v21)
    {
      (*v17)(v5, 1, 1, v50);
      outlined destroy of BodyTrackingComponent?(v5, &_s10RealityKit30__RKEntityTriggerSpecificationOSgMd, &_s10RealityKit30__RKEntityTriggerSpecificationOSgMR);
      goto LABEL_4;
    }
  }

LABEL_27:
  __break(1u);
}

BOOL Scene.hasLookAtOrProximityInteractions.getter()
{
  v106 = type metadata accessor for Data.Deallocator();
  v1 = *(v106 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v4 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v93 - v6;
  v107 = 91;
  v108 = 0xE100000000000000;
  v109 = 0;
  v110 = 0xE000000000000000;
  v111 = v0;

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](v109, v110);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v8 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v8);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v10 = v107;
  v9 = v108;
  v11 = Scene.__interactionService.getter();
  type metadata accessor for __RKEntityInteractionManager();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
LABEL_32:
    swift_unknownObjectRelease();
    v107 = v10;
    v108 = v9;
    v50 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v50, &v107);

    return 0;
  }

  v13 = v12;
  swift_beginAccess();
  if (!static __RKEntityInteractionsComponent.registration)
  {
    v107 = v10;
    v108 = v9;
    v52 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v52, &v107);

    swift_unknownObjectRelease();
    return 0;
  }

  v102 = v1;
  v97 = v10;
  v98 = v11;
  v99 = v9;
  v100 = v4;
  v14 = *(static __RKEntityInteractionsComponent.registration + 3);
  v15 = closure #1 in __RKEntityInteractionManager.entitiesWithInteractionSpecifications()(v13);
  v9 = v15;
  v111 = MEMORY[0x1E69E7CC0];
  if (v15 >> 62)
  {
    goto LABEL_75;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v17 = MEMORY[0x1E69E7CC0];
  v10 = &static ComponentInfo.Platform.macOS;
  v104 = v9;
  if (!v16)
  {
    v105 = 0;
    v51 = MEMORY[0x1E69E7CC0];
    if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
    {
      goto LABEL_76;
    }

    goto LABEL_38;
  }

  v103 = v7;
  v7 = 0;
  v105 = 0;
  v18 = v9 & 0xC000000000000001;
  v19 = v9 & 0xFFFFFFFFFFFFFF8;
  LODWORD(v96) = *MEMORY[0x1E6969010];
  v95 = (v102 + 13);
  v94 = (v102 + 1);
  do
  {
    if (v18)
    {
      v20 = MEMORY[0x1C68F41F0](v7, v9);
      v21 = v7 + 1;
      if (!__OFADD__(v7, 1))
      {
        goto LABEL_12;
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (v7 >= *(v19 + 16))
    {
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      v16 = __CocoaSet.count.getter();
      goto LABEL_5;
    }

    v20 = *(v9 + 8 * v7 + 32);

    v21 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_31;
    }

LABEL_12:
    v22 = v10[226];
    if (v22 && (v23 = *(v22 + 24), v24 = *(v20 + 16), REEntityGetCustomComponent()) && (Object = RECustomComponentGetObject()) != 0)
    {
      v26 = *(Object + 16);
      if (v26)
      {
        v27 = *(Object + 16);
      }

      else
      {
        v30 = *Object;
        if (*Object)
        {
          v31 = strlen(*Object);
          v32 = v103;
          (*v95)(v103, v96, v106);
          v33 = Data.Deallocator._deallocator.getter();
          v101 = v34;
          if (v31)
          {
            v93 = v33;
            v35 = type metadata accessor for __DataStorage();
            v36 = *(v35 + 48);
            v37 = *(v35 + 52);
            swift_allocObject();

            v38 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
            v39 = __DataStorage._capacity.modify();
            *v40 |= 0x8000000000000000;
            v39(&v107, 0);
            v41 = specialized Data._Representation.init(_:count:)(v38, v31);
            v43 = v42;

            v44 = v103;
          }

          else
          {
            v45 = Data.Deallocator._deallocator.getter();
            v45(v30, 0);

            v41 = 0;
            v43 = 0xC000000000000000;
            v44 = v32;
          }

          (*v94)(v44, v106);
          v46 = type metadata accessor for JSONDecoder();
          v47 = *(v46 + 48);
          v48 = *(v46 + 52);
          swift_allocObject();
          JSONDecoder.init()();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit34__RKEntityInteractionSpecificationVGMd, &_sSay10RealityKit34__RKEntityInteractionSpecificationVGMR);
          lazy protocol witness table accessor for type [__RKEntityInteractionSpecification] and conformance <A> [A]();
          v101 = v43;
          v49 = v105;
          dispatch thunk of JSONDecoder.decode<A>(_:from:)();
          if (v49)
          {

            outlined consume of Data._Representation(v41, v101);

            v105 = 0;
            v26 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            v105 = 0;

            outlined consume of Data._Representation(v41, v101);
            v26 = v107;
          }

          v9 = v104;
          v10 = &static ComponentInfo.Platform.macOS;
        }

        else
        {
          v26 = MEMORY[0x1E69E7CC0];
          v10 = &static ComponentInfo.Platform.macOS;
        }
      }
    }

    else
    {
      v26 = MEMORY[0x1E69E7CC0];
    }

    v28 = Array<A>.hasLookAtInteractions.getter(v26);

    if (v28)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v29 = *(v111 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v7;
  }

  while (v21 != v16);
  v51 = v111;
  v17 = MEMORY[0x1E69E7CC0];
  if (v111 < 0)
  {
LABEL_76:
    v54 = __CocoaSet.count.getter();
    goto LABEL_40;
  }

LABEL_38:
  if ((v51 & 0x4000000000000000) != 0)
  {
    goto LABEL_76;
  }

  v54 = *(v51 + 16);
LABEL_40:

  v111 = v17;
  if (!v16)
  {
    goto LABEL_68;
  }

  v94 = v54;
  v55 = 0;
  v7 = v9 & 0xC000000000000001;
  v56 = v9 & 0xFFFFFFFFFFFFFF8;
  LODWORD(v101) = *MEMORY[0x1E6969010];
  v96 = (v102 + 13);
  ++v102;
  v103 = v9 & 0xC000000000000001;
  while (2)
  {
    if (v7)
    {
      v57 = MEMORY[0x1C68F41F0](v55, v9);
      v58 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      goto LABEL_47;
    }

    if (v55 >= *(v56 + 16))
    {
      goto LABEL_74;
    }

    v57 = *(v9 + 8 * v55 + 32);

    v58 = v55 + 1;
    if (!__OFADD__(v55, 1))
    {
LABEL_47:
      v59 = v10[226];
      if (v59 && (v60 = *(v59 + 24), v61 = *(v57 + 16), REEntityGetCustomComponent()) && (v62 = RECustomComponentGetObject()) != 0)
      {
        v63 = *(v62 + 16);
        if (v63)
        {
          v64 = *(v62 + 16);
        }

        else
        {
          v67 = *v62;
          if (*v62)
          {
            v68 = strlen(*v62);
            v69 = v100;
            (*v96)(v100, v101, v106);
            v70 = Data.Deallocator._deallocator.getter();
            if (v68)
            {
              v95 = v70;
              v71 = type metadata accessor for __DataStorage();
              v72 = *(v71 + 48);
              v73 = *(v71 + 52);
              swift_allocObject();

              v74 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
              v75 = __DataStorage._capacity.modify();
              *v76 |= 0x8000000000000000;
              v75(&v107, 0);
              v68 = specialized Data._Representation.init(_:count:)(v74, v68);
              v78 = v77;
            }

            else
            {
              v79 = Data.Deallocator._deallocator.getter();
              v79(v67, 0);

              v78 = 0xC000000000000000;
            }

            (*v102)(v69, v106);
            v80 = type metadata accessor for JSONDecoder();
            v81 = *(v80 + 48);
            v82 = *(v80 + 52);
            swift_allocObject();
            JSONDecoder.init()();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit34__RKEntityInteractionSpecificationVGMd, &_sSay10RealityKit34__RKEntityInteractionSpecificationVGMR);
            lazy protocol witness table accessor for type [__RKEntityInteractionSpecification] and conformance <A> [A]();
            v83 = v105;
            dispatch thunk of JSONDecoder.decode<A>(_:from:)();
            if (v83)
            {

              outlined consume of Data._Representation(v68, v78);

              v105 = 0;
              v63 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              v105 = 0;

              outlined consume of Data._Representation(v68, v78);
              v63 = v107;
            }

            v7 = v103;
            v9 = v104;
            v10 = &static ComponentInfo.Platform.macOS;
          }

          else
          {
            v63 = MEMORY[0x1E69E7CC0];
            v10 = &static ComponentInfo.Platform.macOS;
          }
        }
      }

      else
      {
        v63 = MEMORY[0x1E69E7CC0];
      }

      v65 = Array<A>.hasProximityTriggers.getter(v63);

      if (v65)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v66 = *(v111 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v55;
      if (v58 == v16)
      {
        goto LABEL_67;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_67:
  v17 = v111;
  v54 = v94;
LABEL_68:
  v84 = v99;
  v85 = v97;
  if (v17 < 0 || (v17 & 0x4000000000000000) != 0)
  {
    v86 = __CocoaSet.count.getter();
  }

  else
  {
    v86 = *(v17 + 16);
  }

  MEMORY[0x1EEE9AC00](v87);
  v88 = v104;
  *(&v93 - 2) = v104;
  *(&v93 - 8) = v54 != 0;
  *(&v93 - 7) = v89;
  v107 = v85;
  v108 = v84;
  v90 = static os_log_type_t.info.getter();
  v91 = specialized InteractionsLogger.log(_:_:)(v90, &v107, partial apply for implicit closure #4 in Scene.hasLookAtOrProximityInteractions.getter, &v93 - 4);
  MEMORY[0x1EEE9AC00](v91);
  *(&v93 - 2) = v88;
  v107 = v85;
  v108 = v84;
  v92 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v92, &v107, partial apply for implicit closure #5 in Scene.hasLookAtOrProximityInteractions.getter, &v93 - 4);

  swift_unknownObjectRelease();
  return (v54 | v86) != 0;
}

uint64_t implicit closure #4 in Scene.hasLookAtOrProximityInteractions.getter(unint64_t a1, char a2, char a3)
{
  _StringGuts.grow(_:)(91);
  MEMORY[0x1C68F3410](0x2064656B63656843, 0xE800000000000000);
  if (a1 >> 62)
  {
    __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v7);

  MEMORY[0x1C68F3410](0xD000000000000035, 0x80000001C18E87D0);
  if (a2)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (a2)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x1C68F3410](v8, v9);

  MEMORY[0x1C68F3410](0xD000000000000018, 0x80000001C18E8810);
  if (a3)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (a3)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x1C68F3410](v10, v11);

  return 0;
}

char *implicit closure #5 in Scene.hasLookAtOrProximityInteractions.getter(unint64_t a1)
{
  v50 = type metadata accessor for Data.Deallocator();
  v2 = *(v50 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = 0x203A7363657053;
  v56 = 0xE700000000000000;
  if (a1 >> 62)
  {
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v54 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6 & ~(v6 >> 63), 0);
    if ((v6 & 0x8000000000000000) == 0)
    {
      v49 = v5;
      v7 = v54;
      v52 = a1 & 0xC000000000000001;
      swift_beginAccess();
      v9 = a1;
      v10 = 0;
      v48 = *MEMORY[0x1E6969010];
      v46 = (v2 + 8);
      v47 = (v2 + 104);
      v51 = a1;
      v11 = v6;
      while (1)
      {
        if (v52)
        {
          v12 = MEMORY[0x1C68F41F0](v10, v9);
        }

        else
        {
          v12 = *(v9 + 8 * v10 + 32);
        }

        if (!static __RKEntityInteractionsComponent.registration)
        {
          goto LABEL_19;
        }

        v13 = *(static __RKEntityInteractionsComponent.registration + 3);
        v14 = *(v12 + 16);
        if (!REEntityGetCustomComponent())
        {
          goto LABEL_19;
        }

        Object = RECustomComponentGetObject();
        if (!Object)
        {
          goto LABEL_19;
        }

        v16 = *(Object + 16);
        if (!v16)
        {
          break;
        }

        v17 = *(Object + 16);

LABEL_20:
        v35 = type metadata accessor for __RKEntityInteractionSpecification(0);
        v36 = MEMORY[0x1C68F36A0](v16, v35);
        v38 = v37;

        v54 = v7;
        v40 = *(v7 + 16);
        v39 = *(v7 + 24);
        if (v40 >= v39 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
          v7 = v54;
        }

        ++v10;
        *(v7 + 16) = v40 + 1;
        v41 = v7 + 16 * v40;
        *(v41 + 32) = v36;
        *(v41 + 40) = v38;
        v9 = v51;
        if (v11 == v10)
        {
          goto LABEL_23;
        }
      }

      v18 = *Object;
      if (*Object)
      {
        v19 = strlen(*Object);
        v20 = v49;
        (*v47)(v49, v48, v50);
        v21 = Data.Deallocator._deallocator.getter();
        if (v19)
        {
          v45 = v21;
          v22 = type metadata accessor for __DataStorage();
          v23 = *(v22 + 48);
          v24 = *(v22 + 52);
          swift_allocObject();

          v25 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
          v26 = __DataStorage._capacity.modify();
          *v27 |= 0x8000000000000000;
          v26(v53, 0);
          v28 = specialized Data._Representation.init(_:count:)(v25, v19);
          v30 = v29;
        }

        else
        {
          v31 = Data.Deallocator._deallocator.getter();
          v31(v18, 0);

          v28 = 0;
          v30 = 0xC000000000000000;
        }

        (*v46)(v20, v50);
        v32 = type metadata accessor for JSONDecoder();
        v33 = *(v32 + 48);
        v34 = *(v32 + 52);
        swift_allocObject();
        JSONDecoder.init()();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit34__RKEntityInteractionSpecificationVGMd, &_sSay10RealityKit34__RKEntityInteractionSpecificationVGMR);
        lazy protocol witness table accessor for type [__RKEntityInteractionSpecification] and conformance <A> [A]();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        outlined consume of Data._Representation(v28, v30);
        v16 = v53[0];
        goto LABEL_20;
      }

LABEL_19:
      v16 = MEMORY[0x1E69E7CC0];
      goto LABEL_20;
    }

    __break(1u);
  }

  else
  {
LABEL_23:
    v53[0] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v42 = BidirectionalCollection<>.joined(separator:)();
    v44 = v43;

    MEMORY[0x1C68F3410](v42, v44);

    return v55;
  }

  return result;
}

uint64_t specialized Data._Representation.init(_:count:)(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = __DataStorage._bytes.getter();
  if (v3)
  {
    result = __DataStorage._offset.getter();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = MEMORY[0x1C68F2040]();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = specialized Data.InlineData.init(_:)(v3, v7);

  return v8;
}

uint64_t _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void specialized StereoPairImageMetadata.init(imageSource:atIndex:)(CGImageSource *a1, size_t a2)
{
  v2 = CGImageSourceCopyPropertiesAtIndex(a1, a2, 0);
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  _StringGuts.grow(_:)(44);

  v8 = 0xD000000000000029;
  v9 = 0x80000001C18E3BC0;
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v4);

  MEMORY[0x1C68F3410](46, 0xE100000000000000);
  v5 = v8;
  v6 = v9;
  lazy protocol witness table accessor for type SpatialMediaError and conformance SpatialMediaError();
  swift_allocError();
  *v7 = v5;
  v7[1] = v6;
  swift_willThrow();
}

uint64_t getEnumTagSinglePayload for StereoPairImageMetadata(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 292))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 280);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for StereoPairImageMetadata(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
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
    *(result + 264) = 0u;
    *(result + 288) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 292) = 1;
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
      *(result + 280) = (a2 - 1);
      return result;
    }

    *(result + 292) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t specialized static ResourceUsageHelper.memoryUsage(in:)(char a1)
{
  v34[1] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for String.Encoding();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  memset(v18, 0, sizeof(v18));
  v17 = 93;
  v4 = task_info(*MEMORY[0x1E69E9A60], 0x16u, v18, &v17);
  if (!v4)
  {
    result = v19 / qword_1C18B5A08[a1];
LABEL_16:
    v16 = *MEMORY[0x1E69E9840];
    return result;
  }

  result = mach_error_string(v4);
  if (result)
  {
    static String.Encoding.ascii.getter();
    v6 = String.init(cString:encoding:)();
    if (v7)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0x206E776F6E6B6E55;
    }

    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0xED0000726F727245;
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, logger);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v34[0] = v14;
      *v13 = 136446210;
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v34);

      *(v13 + 4) = v15;
      _os_log_impl(&dword_1C1358000, v11, v12, "Error with task_info(): %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1C6902A30](v14, -1, -1);
      MEMORY[0x1C6902A30](v13, -1, -1);
    }

    else
    {
    }

    result = 0;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t SharedCacheStorage.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void *ShaderCacheLoader.deinit()
{
  v1 = v0[14];

  __swift_destroy_boxed_opaque_existential_1(v0 + 15);
  v2 = v0[20];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ShaderCacheLoader.__deallocating_deinit()
{
  ShaderCacheLoader.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

__n128 closure #1 in closure #1 in ShaderCacheLoader.loadResource(forKey:)(__n128 *a1, uint64_t a2)
{
  v3 = a1->n128_u8[0];
  v4 = a1->n128_u64[1];
  v5 = a1[2].n128_u64[0];
  v6 = a1[2].n128_u64[1];
  v7 = *(a2 + 56);
  v14 = a1[1];

  v8 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 56) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    *(a2 + 56) = v7;
  }

  v11 = *(v7 + 2);
  v10 = *(v7 + 3);
  if (v11 >= v10 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v7);
    *(a2 + 56) = v7;
  }

  *(v7 + 2) = v11 + 1;
  v12 = &v7[48 * v11];
  v12[2].n128_u8[0] = v3;
  v12[2].n128_u64[1] = v4;
  result = v14;
  v12[3] = v14;
  v12[4].n128_u64[0] = v5;
  v12[4].n128_u64[1] = v8;
  return result;
}

uint64_t *ShaderCache.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  return v0;
}

uint64_t ShaderCache.__deallocating_deinit()
{
  ShaderCache.deinit();

  return swift_deallocClassInstance();
}

uint64_t Entity.playAudio(configuration:_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[1];
  v8 = a1[2];
  v11[0] = *a1;
  v11[1] = v7;
  v11[2] = v8;
  type metadata accessor for AudioGeneratorController();
  swift_allocObject();

  v9 = AudioGeneratorController.init(generatorRenderHandler:configuration:entity:)(a2, a3, v11, v3);
  if (!v4)
  {
    AudioGeneratorController.play()();
  }

  return v9;
}

uint64_t Entity.prepareAudio(configuration:_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[1];
  v7 = a1[2];
  v9[0] = *a1;
  v9[1] = v6;
  v9[2] = v7;
  type metadata accessor for AudioGeneratorController();
  swift_allocObject();

  return AudioGeneratorController.init(generatorRenderHandler:configuration:entity:)(a2, a3, v9, v3);
}

uint64_t specialized Material.parameters.setter(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 8))(v5, v6);

  if (v4 == v7)
  {
    v26 = a1[3];
    v27 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v26);
    (*(v27 + 16))(&v48, v26, v27);
    v28 = v48;
    LOBYTE(v27) = BYTE8(v48);
    v29 = v49;
    v30 = v2[1];
    v31 = v2[3];

    v2[1] = v28;
    *(v2 + 16) = v27;
    *(v2 + 3) = v29;
  }

  else
  {
    v33 = v2;
    v8 = MaterialParameters.allKeys.getter();
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = v9 - 1;
      v11 = (v8 + 40);
      v12 = v2;
      while (1)
      {
        v13 = *(v11 - 1);
        v14 = *v11;
        v15 = a1[3];
        v16 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v15);

        Material.subscript.getter(v13, v14, v15, v16, v46);
        if (v47 == 255)
        {
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v35 = 0u;
          v52 = v47;
          v44 = &type metadata for CustomMaterial;
          v45 = &protocol witness table for CustomMaterial;
          v43[0] = swift_allocObject();
          outlined init with copy of CustomMaterial(v12, v43[0] + 16);
          v23 = 19;
          v34 = 0u;
          v36 = 0u;
          v37 = 0u;
        }

        else
        {
          v38 = v46[0];
          v39 = v46[1];
          v40 = v46[2];
          v41 = v46[3];
          v42 = v47;
          MaterialParameters.Value.init(_:)(&v38, &v48);
          v17 = v48;
          v18 = v49;
          v19 = v52;
          v36 = v51;
          v37 = v50;
          v44 = &type metadata for CustomMaterial;
          v45 = &protocol witness table for CustomMaterial;
          v43[0] = swift_allocObject();
          outlined init with copy of CustomMaterial(v12, v43[0] + 16);
          switch(v19)
          {
            case 0:
              HIDWORD(v21) = -1;
              *&v21 = v18;
              WORD4(v21) = WORD4(v18);
              v22 = vmovn_s64(vshlq_u64(vdupq_n_s64(*(&v18 + 1)), xmmword_1C18A9580));
              v22.i8[1] = v22.i8[4];
              WORD5(v21) = v22.i16[0];
              v34 = v21;
              v35 = v17;
              v23 = 1;
              break;
            case 1:
              v23 = 0;
              *&v20 = v17;
              v35 = v20;
              break;
            case 2:
              LODWORD(v20) = v17;
              v35 = v20;
              v23 = 2;
              break;
            case 3:
              *&v20 = v17;
              v35 = v20;
              v23 = 3;
              break;
            case 4:
              v35 = v17;
              v23 = 4;
              break;
            case 5:
              v35 = v17;
              v23 = 5;
              break;
            case 6:
              *&v20 = v17;
              v35 = v20;
              v23 = 6;
              break;
            case 7:
              v35 = v17;
              v23 = 7;
              break;
            case 8:
              v35 = v17;
              v34 = v18;
              v23 = 8;
              break;
            case 9:
              v35 = v17;
              v34 = v18;
              v23 = 9;
              break;
            case 10:
              LODWORD(v20) = v17 & 1;
              v35 = v20;
              v23 = 10;
              break;
            case 11:
              LODWORD(v20) = v17;
              v35 = v20;
              v23 = 11;
              break;
            case 12:
              *&v20 = v17;
              v35 = v20;
              v23 = 12;
              break;
            case 13:
              v35 = v17;
              v23 = 13;
              break;
            case 14:
              v35 = v17;
              v23 = 14;
              break;
            case 15:
              LODWORD(v20) = v17;
              v35 = v20;
              v23 = 15;
              break;
            case 16:
              *&v20 = v17;
              v35 = v20;
              v23 = 16;
              break;
            case 17:
              v35 = v17;
              v23 = 17;
              break;
            case 18:
              v35 = v17;
              v23 = 18;
              break;
            default:
              v23 = 19;
              v36 = 0u;
              v37 = 0u;
              v34 = 0u;
              v35 = 0u;
              break;
          }

          v12 = v33;
        }

        v24 = v44;
        v25 = v45;
        __swift_mutable_project_boxed_opaque_existential_1(v43, v44);
        v38 = v35;
        v39 = v34;
        v40 = v37;
        v41 = v36;
        v42 = v23;
        Material.subscript.setter(&v38, v13, v14, v24, v25);
        specialized Material.parameters.setter(v43);
        if (!v10)
        {
          break;
        }

        --v10;
        v11 += 2;
      }
    }
  }

  return outlined destroy of MaterialParameters(a1);
}

{
  v2 = v1;
  v4 = *v1;
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 8))(v5, v6);

  if (v4 == v7)
  {
    v37 = a1[3];
    v38 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v37);
    (*(v38 + 16))(&v55, v37, v38);
    v39 = v55;
    v40 = BYTE8(v55);
    v41 = v56;
    v42 = v2[1];
    v43 = v2[3];

    v2[1] = v39;
    *(v2 + 16) = v40;
    *(v2 + 3) = v41;
  }

  else
  {
    v8 = MaterialParameters.allKeys.getter();
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = v9 - 1;
      for (i = (v8 + 40); ; i += 2)
      {
        v12 = *(i - 1);
        v13 = *i;
        v14 = a1[3];
        v15 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v14);

        Material.subscript.getter(v12, v13, v14, v15, v62);
        if (v63 == 255)
        {
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v46 = 0u;
          v68 = -1;
          v30 = *(v2 + 5);
          v59 = *(v2 + 4);
          v60 = v30;
          v61[0] = *(v2 + 6);
          *(v61 + 9) = *(v2 + 105);
          v31 = *(v2 + 1);
          v55 = *v2;
          v56 = v31;
          v32 = *(v2 + 3);
          v57 = *(v2 + 2);
          v58 = v32;
          v53 = &type metadata for ShaderGraphMaterial;
          v54 = &protocol witness table for ShaderGraphMaterial;
          v33 = swift_allocObject();
          v52[0] = v33;
          v34 = *(v2 + 5);
          v33[5] = *(v2 + 4);
          v33[6] = v34;
          v33[7] = *(v2 + 6);
          *(v33 + 121) = *(v2 + 105);
          v35 = *(v2 + 1);
          v33[1] = *v2;
          v33[2] = v35;
          v36 = *(v2 + 3);
          v33[3] = *(v2 + 2);
          v33[4] = v36;
          v29 = 19;
          v45 = 0u;
          v47 = 0u;
          v48 = 0u;
        }

        else
        {
          v55 = v62[0];
          v56 = v62[1];
          v57 = v62[2];
          v58 = v62[3];
          LOBYTE(v59) = v63;
          MaterialParameters.Value.init(_:)(&v55, &v64);
          v16 = v64;
          v17 = v65;
          v18 = v68;
          v47 = v67;
          v48 = v66;
          v19 = *(v2 + 5);
          v59 = *(v2 + 4);
          v60 = v19;
          v61[0] = *(v2 + 6);
          *(v61 + 9) = *(v2 + 105);
          v20 = *(v2 + 1);
          v55 = *v2;
          v56 = v20;
          v21 = *(v2 + 3);
          v57 = *(v2 + 2);
          v58 = v21;
          v53 = &type metadata for ShaderGraphMaterial;
          v54 = &protocol witness table for ShaderGraphMaterial;
          v22 = swift_allocObject();
          v52[0] = v22;
          v23 = *(v2 + 5);
          v22[5] = *(v2 + 4);
          v22[6] = v23;
          v22[7] = *(v2 + 6);
          *(v22 + 121) = *(v2 + 105);
          v24 = *(v2 + 1);
          v22[1] = *v2;
          v22[2] = v24;
          v25 = *(v2 + 2);
          v26 = *(v2 + 3);
          v22[3] = v25;
          v22[4] = v26;
          switch(v18)
          {
            case 0:
              HIDWORD(v27) = -1;
              *&v27 = v17;
              WORD4(v27) = WORD4(v17);
              v28 = vmovn_s64(vshlq_u64(vdupq_n_s64(*(&v17 + 1)), xmmword_1C18A9580));
              v28.i8[1] = v28.i8[4];
              WORD5(v27) = v28.i16[0];
              v45 = v27;
              v46 = v16;
              v29 = 1;
              break;
            case 1:
              v29 = 0;
              *&v25 = v16;
              v46 = v25;
              break;
            case 2:
              LODWORD(v25) = v16;
              v46 = v25;
              v29 = 2;
              break;
            case 3:
              *&v25 = v16;
              v46 = v25;
              v29 = 3;
              break;
            case 4:
              v46 = v16;
              v29 = 4;
              break;
            case 5:
              v46 = v16;
              v29 = 5;
              break;
            case 6:
              *&v25 = v16;
              v46 = v25;
              v29 = 6;
              break;
            case 7:
              v46 = v16;
              v29 = 7;
              break;
            case 8:
              v46 = v16;
              v45 = v17;
              v29 = 8;
              break;
            case 9:
              v46 = v16;
              v45 = v17;
              v29 = 9;
              break;
            case 10:
              LODWORD(v25) = v16 & 1;
              v46 = v25;
              v29 = 10;
              break;
            case 11:
              LODWORD(v25) = v16;
              v46 = v25;
              v29 = 11;
              break;
            case 12:
              *&v25 = v16;
              v46 = v25;
              v29 = 12;
              break;
            case 13:
              v46 = v16;
              v29 = 13;
              break;
            case 14:
              v46 = v16;
              v29 = 14;
              break;
            case 15:
              LODWORD(v25) = v16;
              v46 = v25;
              v29 = 15;
              break;
            case 16:
              *&v25 = v16;
              v46 = v25;
              v29 = 16;
              break;
            case 17:
              v46 = v16;
              v29 = 17;
              break;
            case 18:
              v46 = v16;
              v29 = 18;
              break;
            default:
              v29 = 19;
              v47 = 0u;
              v48 = 0u;
              v45 = 0u;
              v46 = 0u;
              break;
          }
        }

        __swift_mutable_project_boxed_opaque_existential_1(v52, &type metadata for ShaderGraphMaterial);
        v50[0] = v46;
        v50[1] = v45;
        v50[2] = v48;
        v50[3] = v47;
        v51 = v29;
        outlined init with copy of ShaderGraphMaterial(&v55, v49);
        Material.subscript.setter(v50, v12, v13, &type metadata for ShaderGraphMaterial, &protocol witness table for ShaderGraphMaterial);
        specialized Material.parameters.setter(v52);
        if (!v10)
        {
          break;
        }

        --v10;
      }
    }
  }

  return outlined destroy of MaterialParameters(a1);
}

uint64_t CustomMaterial.customParameters.getter@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for CustomMaterial;
  a1[4] = &protocol witness table for CustomMaterial;
  v3 = swift_allocObject();
  *a1 = v3;

  return outlined init with copy of CustomMaterial(v1, v3 + 16);
}

uint64_t key path setter for CustomMaterial.customParameters : CustomMaterial(uint64_t a1)
{
  outlined init with copy of UniformParameters(a1, v3);
  outlined init with copy of MaterialParameters(v3, v2);
  specialized Material.parameters.setter(v2);
  return outlined destroy of UniformParameters(v3);
}

uint64_t CustomMaterial.customParameters.setter(uint64_t a1)
{
  outlined init with copy of MaterialParameters(a1, v3);
  specialized Material.parameters.setter(v3);
  return outlined destroy of UniformParameters(a1);
}

void (*CustomMaterial.customParameters.modify(uint64_t **a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[15] = v1;
  v3[3] = &type metadata for CustomMaterial;
  v3[4] = &protocol witness table for CustomMaterial;
  v5 = swift_allocObject();
  *v4 = v5;
  outlined init with copy of CustomMaterial(v1, v5 + 16);
  return CustomMaterial.customParameters.modify;
}

void CustomMaterial.customParameters.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 120);
  if (a2)
  {
    outlined init with copy of UniformParameters(*a1, (v2 + 5));
    outlined init with copy of MaterialParameters((v2 + 5), (v2 + 10));
    specialized Material.parameters.setter(v2 + 10);
    outlined destroy of UniformParameters((v2 + 5));
  }

  else
  {
    outlined init with copy of MaterialParameters(*a1, (v2 + 5));
    specialized Material.parameters.setter(v2 + 5);
  }

  outlined destroy of UniformParameters(v2);

  free(v2);
}

uint64_t CustomMaterial.getCustomParameter(name:)@<X0>(uint64_t a1@<X8>)
{
  strcpy(v7, "customParams.");
  HIWORD(v7[0]) = -4864;
  MEMORY[0x1C68F3410]();
  v9[3] = &type metadata for CustomMaterial;
  v9[4] = &protocol witness table for CustomMaterial;
  v9[0] = swift_allocObject();
  outlined init with copy of CustomMaterial(v1, v9[0] + 16);
  __swift_project_boxed_opaque_existential_1(v9, &type metadata for CustomMaterial);
  Material.subscript.getter(*&v7[0], *(&v7[0] + 1), &type metadata for CustomMaterial, &protocol witness table for CustomMaterial, v7);

  v3 = v8;
  if (v8 == 255)
  {
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 64) = v3;
  }

  else
  {
    v5[0] = v7[0];
    v5[1] = v7[1];
    v5[2] = v7[2];
    v5[3] = v7[3];
    v6 = v8;
    MaterialParameters.Value.init(_:)(v5, a1);
  }

  return outlined destroy of MaterialParameters(v9);
}

uint64_t CustomMaterial.setCustomParameter(name:value:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = v3;
  v5 = a3[3];
  v32 = a3[2];
  v33 = v5;
  v34 = *(a3 + 64);
  v6 = a3[1];
  v30 = *a3;
  v31 = v6;
  strcpy(&v25, "customParams.");
  HIWORD(v25) = -4864;
  MEMORY[0x1C68F3410]();
  v7 = v25;
  v35 = v30;
  v36 = v31;
  v37 = v32;
  v38 = v33;
  v8 = v34;
  if (v34 == 255)
  {
    *(&v21 + 1) = &type metadata for CustomMaterial;
    *&v22 = &protocol witness table for CustomMaterial;
    *&v20 = swift_allocObject();
    outlined init with copy of CustomMaterial(v3, v20 + 16);
    __swift_mutable_project_boxed_opaque_existential_1(&v20, &type metadata for CustomMaterial);
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v29 = 19;
    Material.subscript.setter(&v25, v7, *(&v7 + 1), &type metadata for CustomMaterial, &protocol witness table for CustomMaterial);
    return specialized Material.parameters.setter(&v20);
  }

  v9 = *v3;
  swift_beginAccess();
  v10 = *(v9 + 16);
  String.utf8CString.getter();
  v27 = v32;
  v28 = v33;
  v29 = v34;
  v25 = v30;
  v26 = v31;
  outlined init with copy of MaterialParameters.Value(&v25, &v20);
  ParameterType = REMaterialAssetGetParameterType();

  if (!ParameterType)
  {
    v16 = 1;
LABEL_8:
    lazy protocol witness table accessor for type CustomMaterial.CustomParameterError and conformance CustomMaterial.CustomParameterError();
    swift_allocError();
    *v17 = v16;
    swift_willThrow();

    return outlined destroy of MaterialParameters.Value?(&v30);
  }

  v20 = v35;
  v21 = v36;
  v22 = v37;
  v23 = v38;
  v24 = v8;
  if (ParameterType != MaterialParameters.Value.getMaterialParameterType()())
  {
    v16 = 0;
    goto LABEL_8;
  }

  v20 = v35;
  v21 = v36;
  v22 = v37;
  v23 = v38;
  v19[3] = &type metadata for CustomMaterial;
  v19[4] = &protocol witness table for CustomMaterial;
  v19[0] = swift_allocObject();
  outlined init with copy of CustomMaterial(v4, v19[0] + 16);
  v24 = v8;
  __RKMaterialParameterBlock.Parameter.init(_:)(&v20, v18, v12, v13, v14);
  __swift_mutable_project_boxed_opaque_existential_1(v19, &type metadata for CustomMaterial);
  outlined init with copy of [String : String](&v30, &v20, &_s17RealityFoundation18MaterialParametersV5ValueOSgMd, &_s17RealityFoundation18MaterialParametersV5ValueOSgMR);
  Material.subscript.setter(v18, v7, *(&v7 + 1), &type metadata for CustomMaterial, &protocol witness table for CustomMaterial);
  specialized Material.parameters.setter(v19);
  return outlined destroy of MaterialParameters.Value?(&v30);
}

void *closure #1 in DirectParameterBuffer.applyToComponent(directParameterComponent:stageFlags:index:)(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v5)
    {
      __src = a3;
      v21 = a4;
      v22 = BYTE2(a4);
      v23 = BYTE3(a4);
      v24 = BYTE4(a4);
      v25 = BYTE5(a4);
      result = memcpy(result, &__src, BYTE6(a4));
LABEL_21:
      v19 = *MEMORY[0x1E69E9840];
      return result;
    }

    goto LABEL_11;
  }

  if (v5 != 2)
  {
    goto LABEL_21;
  }

  v6 = result;
  v7 = *(a3 + 16);
  v8 = __DataStorage._bytes.getter();
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = v8;
  v10 = __DataStorage._offset.getter();
  if (__OFSUB__(v7, v10))
  {
    goto LABEL_23;
  }

  v11 = (v7 - v10 + v9);
  result = MEMORY[0x1C68F2040]();
  if (!v11)
  {
    goto LABEL_21;
  }

  v13 = *(a3 + 16);
  v12 = *(a3 + 24);
  v14 = v12 - v13;
  if (__OFSUB__(v12, v13))
  {
    goto LABEL_25;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    if (a3 <= a3 >> 32)
    {
      v6 = result;
      v15 = __DataStorage._bytes.getter();
      if (v15)
      {
        v16 = v15;
        v17 = __DataStorage._offset.getter();
        if (!__OFSUB__(a3, v17))
        {
          v11 = (a3 - v17 + v16);
          result = MEMORY[0x1C68F2040]();
          if (!v11)
          {
            goto LABEL_21;
          }

          v14 = (HIDWORD(a3) - a3);
          if (!__OFSUB__(HIDWORD(a3), a3))
          {
            if ((v14 & 0x80000000) == 0)
            {
              goto LABEL_17;
            }

LABEL_27:
            __break(1u);
          }

LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        goto LABEL_24;
      }

LABEL_20:
      result = MEMORY[0x1C68F2040]();
      goto LABEL_21;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_17:
  v18 = *MEMORY[0x1E69E9840];

  return memmove(v6, v11, v14);
}

Swift::Void __swiftcall DirectUniformsState.convertToSharedWithSize(size:)(Swift::Int size)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v6 = v1 + 3;
  v5 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = (v7 >> 60) & 3;
  if (((v7 >> 60) & 3) <= 1)
  {
    if (!v9)
    {
      v10 = v2 >> 62;
      if ((v2 >> 62) <= 1)
      {
        if (!v10)
        {
          if (BYTE6(v2) < size)
          {
            goto LABEL_26;
          }

LABEL_21:
          outlined copy of Data._Representation(*v1, v1[1]);
          v24 = v4;
LABEL_27:
          v34 = v24;
          outlined consume of Data._Representation(v3, v2);

          return;
        }

        if (!__OFSUB__(HIDWORD(v3), v3))
        {
          if (HIDWORD(v3) - v3 < size)
          {
            goto LABEL_26;
          }

          goto LABEL_21;
        }

LABEL_31:
        __break(1u);
        return;
      }

      if (v10 == 2)
      {
        v21 = *(v3 + 16);
        v20 = *(v3 + 24);
        v22 = __OFSUB__(v20, v21);
        v23 = v20 - v21;
        if (v22)
        {
          __break(1u);
          goto LABEL_31;
        }

        if (v23 >= size)
        {
          goto LABEL_21;
        }
      }

      else if (size <= 0)
      {
        goto LABEL_21;
      }

LABEL_26:
      v26 = v1[5];
      v33 = v26;
      v27 = v1[3];
      v28 = v1[4];
      outlined copy of Data._Representation(*v1, v1[1]);
      v29 = v4;
      outlined consume of DirectUniformsState(v3, v2, v4, v27, v28, v26);
      v30 = specialized Data.init(count:)(size);
      v32 = v31;
      v24 = REDirectParameterResourcesCreate();
      outlined consume of DirectUniformsState(v3, v2, v4, v27, v28, v33);
      *v1 = v30;
      v1[1] = v32;
      v1[2] = v24;
      v1[4] = 0;
      v1[5] = 0;
      *v6 = 0;
      outlined copy of Data._Representation(v30, v32);
      v3 = v30;
      v2 = v32;
      goto LABEL_27;
    }

    outlined consume of DirectUniformsState(*v1, v1[1], v1[2], v5, v7, v8);
    v14 = size;
LABEL_17:
    v16 = specialized Data.init(count:)(v14);
    v18 = v17;
    v19 = REDirectParameterResourcesCreate();
    *v1 = v16;
    v1[1] = v18;
    v1[2] = v19;
    v1[4] = 0;
    v1[5] = 0;
    *v6 = 0;
    return;
  }

  if (v9 == 2 && v7 == 0x2000000000000000 && (v2 | v3 | v4 | v5 | v8) == 0)
  {
    outlined consume of DirectUniformsState(0, 0, 0, v5, 0x2000000000000000uLL, v8);
    v14 = size;
    goto LABEL_17;
  }
}

Swift::Void __swiftcall DirectUniformsState.convertToUniqueWithGeomSize(size:)(Swift::Int size)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = (v5 >> 60) & 3;
  if (!v6)
  {
    v11 = *(v1 + 24);
    v12 = *(v1 + 40);
    outlined copy of Data._Representation(*v1, *(v1 + 8));
    v14 = v4;
    outlined consume of DirectUniformsState(v2, v3, v4, v11, v5, v12);
    v15 = specialized Data.init(count:)(size);
    v17 = v16;
    v18 = REDirectParameterResourcesCreate();
    *v1 = v15;
    *(v1 + 8) = v17;
    *(v1 + 16) = v18;
    *(v1 + 24) = v2;
    *(v1 + 32) = v3 | 0x1000000000000000;
    *(v1 + 40) = v4;
    return;
  }

  v7 = *(v1 + 24);
  v8 = *(v1 + 40);
  if (v6 != 2)
  {
    if (v6 != 1)
    {
      return;
    }

    v9 = v5 & 0xCFFFFFFFFFFFFFFFLL;
    v10 = v3 >> 62;
    if ((v3 >> 62) <= 1)
    {
      if (!v10)
      {
        if (BYTE6(v3) < size)
        {
          goto LABEL_24;
        }

LABEL_19:
        outlined copy of Data._Representation(*v1, *(v1 + 8));
        v38 = v4;
        outlined copy of Data._Representation(v7, v5 & 0xCFFFFFFFFFFFFFFFLL);
        v30 = v8;
        outlined consume of Data._Representation(v7, v5 & 0xCFFFFFFFFFFFFFFFLL);

LABEL_25:
        outlined consume of Data._Representation(v2, v3);

        return;
      }

      if (!__OFSUB__(HIDWORD(v2), v2))
      {
        if (HIDWORD(v2) - v2 < size)
        {
          goto LABEL_24;
        }

        goto LABEL_19;
      }

LABEL_29:
      __break(1u);
      return;
    }

    if (v10 == 2)
    {
      v27 = *(v2 + 16);
      v26 = *(v2 + 24);
      v28 = __OFSUB__(v26, v27);
      v29 = v26 - v27;
      if (v28)
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v29 >= size)
      {
        goto LABEL_19;
      }
    }

    else if (size <= 0)
    {
      goto LABEL_19;
    }

LABEL_24:
    outlined copy of Data._Representation(*v1, *(v1 + 8));
    v32 = v4;
    outlined copy of Data._Representation(v7, v5 & 0xCFFFFFFFFFFFFFFFLL);
    v33 = v8;
    outlined consume of DirectUniformsState(v2, v3, v4, v7, v5, v8);
    v34 = specialized Data.init(count:)(size);
    v36 = v35;
    v37 = REDirectParameterResourcesCreate();
    outlined consume of Data._Representation(v2, v3);

    *v1 = v34;
    *(v1 + 8) = v36;
    *(v1 + 16) = v37;
    *(v1 + 24) = v7;
    *(v1 + 32) = v9 | 0x1000000000000000;
    *(v1 + 40) = v8;
    outlined copy of Data._Representation(v34, v36);
    v38 = v37;
    v2 = v34;
    v3 = v36;
    goto LABEL_25;
  }

  if (v5 == 0x2000000000000000 && (v3 | v2 | v4 | v7 | v8) == 0)
  {
    outlined consume of DirectUniformsState(0, 0, 0, *(v1 + 24), 0x2000000000000000uLL, *(v1 + 40));
    v21 = specialized Data.init(count:)(size);
    v23 = v22;
    v24 = REDirectParameterResourcesCreate();
    v25 = REDirectParameterResourcesCreate();
    *v1 = v21;
    *(v1 + 8) = v23;
    *(v1 + 16) = v24;
    *(v1 + 24) = xmmword_1C18B5C90;
    *(v1 + 40) = v25;
  }
}

Swift::Void __swiftcall DirectUniformsState.convertToUniqueWithSurfSize(size:)(Swift::Int size)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = (v5 >> 60) & 3;
  if (!v6)
  {
    v11 = *(v1 + 24);
    v12 = *(v1 + 40);
    outlined copy of Data._Representation(*v1, *(v1 + 8));
    v14 = v4;
    outlined consume of DirectUniformsState(v3, v2, v4, v11, v5, v12);
    v15 = specialized Data.init(count:)(size);
    v17 = v16;
    v18 = REDirectParameterResourcesCreate();
    v19 = v17 | 0x1000000000000000;
    *v1 = v3;
    *(v1 + 8) = v2;
    *(v1 + 16) = v4;
    *(v1 + 24) = v15;
LABEL_15:
    *(v1 + 32) = v19;
    *(v1 + 40) = v18;
    return;
  }

  v7 = *(v1 + 24);
  v8 = *(v1 + 40);
  if (v6 != 2)
  {
    if (v6 != 1)
    {
      return;
    }

    v9 = v5 & 0xCFFFFFFFFFFFFFFFLL;
    v10 = v5 >> 62;
    if ((v5 >> 62) <= 1)
    {
      if (!v10)
      {
        if (BYTE6(v5) < size)
        {
          goto LABEL_25;
        }

LABEL_20:
        outlined copy of Data._Representation(*v1, *(v1 + 8));
        v30 = v4;
        outlined copy of Data._Representation(v7, v5 & 0xCFFFFFFFFFFFFFFFLL);
        v38 = v8;
        outlined consume of Data._Representation(v3, v2);

LABEL_26:
        outlined consume of Data._Representation(v7, v9);

        return;
      }

      if (!__OFSUB__(HIDWORD(v7), v7))
      {
        if (HIDWORD(v7) - v7 < size)
        {
          goto LABEL_25;
        }

        goto LABEL_20;
      }

LABEL_30:
      __break(1u);
      return;
    }

    if (v10 == 2)
    {
      v27 = *(v7 + 16);
      v26 = *(v7 + 24);
      v28 = __OFSUB__(v26, v27);
      v29 = v26 - v27;
      if (v28)
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v29 >= size)
      {
        goto LABEL_20;
      }
    }

    else if (size <= 0)
    {
      goto LABEL_20;
    }

LABEL_25:
    outlined copy of Data._Representation(*v1, *(v1 + 8));
    v32 = v4;
    outlined copy of Data._Representation(v7, v5 & 0xCFFFFFFFFFFFFFFFLL);
    v33 = v8;
    outlined consume of DirectUniformsState(v3, v2, v4, v7, v5, v8);
    v34 = specialized Data.init(count:)(size);
    v36 = v35;
    v37 = REDirectParameterResourcesCreate();
    outlined consume of Data._Representation(v7, v9);

    *v1 = v3;
    *(v1 + 8) = v2;
    *(v1 + 16) = v4;
    *(v1 + 24) = v34;
    *(v1 + 32) = v36 | 0x1000000000000000;
    *(v1 + 40) = v37;
    outlined copy of Data._Representation(v34, v36);
    v38 = v37;
    v7 = v34;
    v9 = v36;
    goto LABEL_26;
  }

  if (v5 == 0x2000000000000000 && (v2 | v3 | v4 | v7 | v8) == 0)
  {
    outlined consume of DirectUniformsState(0, 0, 0, *(v1 + 24), 0x2000000000000000uLL, *(v1 + 40));
    v22 = REDirectParameterResourcesCreate();
    v23 = specialized Data.init(count:)(size);
    v25 = v24;
    v18 = REDirectParameterResourcesCreate();
    v19 = v25 | 0x1000000000000000;
    *v1 = xmmword_1C18A2C50;
    *(v1 + 16) = v22;
    *(v1 + 24) = v23;
    goto LABEL_15;
  }
}