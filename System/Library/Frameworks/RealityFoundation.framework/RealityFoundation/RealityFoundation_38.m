uint64_t MeshSkeletonCollection.insert(_:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = v1[1];
  if (*(v5 + 16) && (v6 = *v1, v7 = v1[1], result = specialized __RawDictionaryStorage.find<A>(_:)(*a1, v2), (v9 & 1) != 0))
  {
    v10 = *(*(v5 + 56) + 8 * result);
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v11 = *(v6 + 16);

      if (v10 < v11)
      {
        return 0;
      }
    }

    __break(1u);
  }

  else
  {

    specialized OrderedIdentifiableCollection.subscript.setter(v3, v2, v4, v3, v2);
    return 1;
  }

  return result;
}

uint64_t MeshSkeletonCollection.update(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];

  specialized OrderedIdentifiableCollection.updateValue(_:forKey:)(v3, v4, v5, v3, v4, a2);

  return swift_bridgeObjectRelease_n();
}

uint64_t MeshModelCollection.removeAll()()
{
  v1 = *v0;

  *v0 = MEMORY[0x1E69E7CC0];
  v2 = v0[1];

  v0[1] = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t MeshSkeletonCollection.Iterator.next()@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  else if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v4 = (*v1 + 24 * v2);
    v5 = v4[5];
    v6 = v4[6];
    *a1 = v4[4];
    a1[1] = v5;
    a1[2] = v6;
    v1[1] = v2 + 1;
  }

  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance MeshModelCollection(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void))
{
  v4 = a3(*v3, v3[1]);

  return v4;
}

unint64_t MeshSkeletonCollection.subscript.getter@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(*v2 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v3 = (*v2 + 24 * result);
  v4 = v3[5];
  v5 = v3[6];
  *a2 = v3[4];
  a2[1] = v4;
  a2[2] = v5;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance MeshSkeletonCollection(uint64_t (*result)(uint64_t a1), unint64_t *a2))(uint64_t a1)
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 16))
  {
    v4 = result;
    v5 = (*v2 + 24 * v3);
    v6 = v5[5];
    v7 = v5[6];
    *v4 = v5[4];
    *(v4 + 1) = v6;
    *(v4 + 2) = v7;

    return protocol witness for Collection.subscript.read in conformance MeshLevelCollection_v1;
  }

  __break(1u);
  return result;
}

double MeshSkeletonCollection.init(arrayLiteral:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  MeshSkeletonCollection.init(_:)(a1, &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

double protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance MeshSkeletonCollection@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  MeshSkeletonCollection.init(_:)(a1, &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t MeshResource.Part.id.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t MeshResource.Part.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t MeshResource.Part.materialIndex.setter(uint64_t result)
{
  *(v1 + 48) = result;
  *(v1 + 56) = 0;
  return result;
}

uint64_t MeshResource.Part.materialIndex.modify(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*result + 56) = 0;
  }

  return result;
}

uint64_t MeshResource.Part.triangleIndices.setter(uint64_t a1)
{
  v1 = *(a1 + 48);
  v16[2] = *(a1 + 32);
  v16[3] = v1;
  v16[4] = *(a1 + 64);
  v17 = *(a1 + 80);
  v2 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v2;
  if (one-time initialization token for triangleIndices != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v3 = static MeshBuffers.triangleIndices;
  v4 = *algn_1EBEAD128;
  v5 = word_1EBEAD130;
  v6 = HIBYTE(word_1EBEAD130);
  if (*&v16[0])
  {
    v14[0] = *&v16[0];
    *&v14[3] = *(a1 + 24);
    *&v14[5] = *(a1 + 40);
    v15[0] = *(a1 + 56);
    *(v15 + 9) = *(a1 + 65);
    *&v14[1] = *(a1 + 8);
    v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s6UInt32VGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s6UInt32VGMR);
    v13[4] = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
    v7 = swift_allocObject();
    v13[0] = v7;
    swift_bridgeObjectRetain_n();
    outlined init with copy of [String : String](v16, &v12, &_s17RealityFoundation10MeshBufferVys6UInt32VGSgMd, &_s17RealityFoundation10MeshBufferVys6UInt32VGSgMR);
    if (v6)
    {
      v8 = 256;
    }

    else
    {
      v8 = 0;
    }

    _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCAA0C14JointInfluenceV_AA0C7BuffersO0P0Vy_APGTt2B5Tm(v3, v4, v8 | v5, v14, v7 + 16);
    specialized Dictionary.subscript.setter(v13, v3, v4, v8 | v5);
    return outlined destroy of BodyTrackingComponent?(v16, &_s17RealityFoundation10MeshBufferVys6UInt32VGSgMd, &_s17RealityFoundation10MeshBufferVys6UInt32VGSgMR);
  }

  else
  {
    memset(v14, 0, 40);
    if (HIBYTE(word_1EBEAD130))
    {
      v10 = 256;
    }

    else
    {
      v10 = 0;
    }

    return specialized Dictionary.subscript.setter(v14, v3, v4, v10 | v5);
  }
}

void (*MeshResource.Part.triangleIndices.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1C0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 440) = v1;
  v5 = *v1;
  if (one-time initialization token for triangleIndices == -1)
  {
    if (*(v5 + 16))
    {
      goto LABEL_6;
    }

LABEL_12:
    *(v4 + 256) = 0;
    *(v4 + 224) = 0u;
    *(v4 + 240) = 0u;
    *(v4 + 192) = 0u;
    *(v4 + 208) = 0u;
    *(v4 + 176) = 0u;
    return MeshResource.Part.triangleIndices.modify;
  }

  swift_once();
  if (!*(v5 + 16))
  {
    goto LABEL_12;
  }

LABEL_6:
  if (HIBYTE(word_1EBEAD130))
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  v7 = specialized __RawDictionaryStorage.find<A>(_:)(static MeshBuffers.triangleIndices, *algn_1EBEAD128, v6 | word_1EBEAD130);
  if ((v8 & 1) == 0)
  {
    goto LABEL_12;
  }

  outlined init with copy of __REAssetService(*(v5 + 56) + 40 * v7, v4 + 352);
  outlined init with take of BindableDataInternal(v4 + 352, v4 + 264);
  v9 = *(v4 + 288);
  v10 = *(v4 + 296);
  __swift_project_boxed_opaque_existential_1((v4 + 264), v9);
  (*(v10 + 56))(MEMORY[0x1E69E7668], v9, v10);
  __swift_destroy_boxed_opaque_existential_1((v4 + 264));
  return MeshResource.Part.triangleIndices.modify;
}

void MeshResource.Part.triangleIndices.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 264);
  v4 = *(*a1 + 224);
  v3[2] = *(*a1 + 208);
  v3[3] = v4;
  v3[4] = v2[15];
  *(v2 + 344) = *(v2 + 256);
  v5 = v2[12];
  *v3 = v2[11];
  v3[1] = v5;
  v7 = static MeshBuffers.triangleIndices;
  v6 = *algn_1EBEAD128;
  v8 = word_1EBEAD130;
  v9 = HIBYTE(word_1EBEAD130);
  v10 = *(v2 + 33);
  v11 = *(v2 + 55);
  if (a2)
  {
    if (v10)
    {
      *v2 = v10;
      *(v2 + 24) = *(v2 + 200);
      *(v2 + 40) = *(v2 + 216);
      *(v2 + 56) = *(v2 + 232);
      *(v2 + 65) = *(v2 + 241);
      *(v2 + 8) = *(v2 + 184);
      *(&v24 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s6UInt32VGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s6UInt32VGMR);
      v25 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
      v12 = swift_allocObject();
      *&v23 = v12;

      outlined init with copy of [String : String](v3, (v2 + 22), &_s17RealityFoundation10MeshBufferVys6UInt32VGSgMd, &_s17RealityFoundation10MeshBufferVys6UInt32VGSgMR);

      outlined init with copy of [String : String](v3, (v2 + 22), &_s17RealityFoundation10MeshBufferVys6UInt32VGSgMd, &_s17RealityFoundation10MeshBufferVys6UInt32VGSgMR);
      if (v9)
      {
        v13 = 256;
      }

      else
      {
        v13 = 0;
      }

      _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCAA0C14JointInfluenceV_AA0C7BuffersO0P0Vy_APGTt2B5Tm(v7, v6, v13 | v8, v2, v12 + 16);
      specialized Dictionary.subscript.setter(&v23, v7, v6, v13 | v8);
      outlined destroy of BodyTrackingComponent?(v3, &_s17RealityFoundation10MeshBufferVys6UInt32VGSgMd, &_s17RealityFoundation10MeshBufferVys6UInt32VGSgMR);
    }

    else
    {
      v25 = 0;
      v23 = 0u;
      v24 = 0u;
      if (HIBYTE(word_1EBEAD130))
      {
        v19 = 256;
      }

      else
      {
        v19 = 0;
      }

      specialized Dictionary.subscript.setter(&v23, v7, v6, v19 | v8);
    }

    v20 = v2[14];
    v2[24] = v2[13];
    v2[25] = v20;
    v2[26] = v2[15];
    *(v2 + 432) = *(v2 + 256);
    v21 = v2[12];
    v2[22] = v2[11];
    v2[23] = v21;
    v18 = (v2 + 22);
  }

  else
  {
    if (!v10)
    {
      v25 = 0;
      v23 = 0u;
      v24 = 0u;
      if (HIBYTE(word_1EBEAD130))
      {
        v22 = 256;
      }

      else
      {
        v22 = 0;
      }

      specialized Dictionary.subscript.setter(&v23, v7, v6, v22 | v8);
      goto LABEL_18;
    }

    *(v2 + 11) = v10;
    v14 = *(v2 + 200);
    v15 = *(v2 + 232);
    v2[8] = *(v2 + 216);
    v2[9] = v15;
    *(v2 + 153) = *(v2 + 241);
    v2[6] = *(v2 + 184);
    v2[7] = v14;
    *(&v24 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s6UInt32VGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s6UInt32VGMR);
    v25 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
    v16 = swift_allocObject();
    *&v23 = v16;
    swift_bridgeObjectRetain_n();
    outlined init with copy of [String : String](v3, (v2 + 22), &_s17RealityFoundation10MeshBufferVys6UInt32VGSgMd, &_s17RealityFoundation10MeshBufferVys6UInt32VGSgMR);
    if (v9)
    {
      v17 = 256;
    }

    else
    {
      v17 = 0;
    }

    _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCAA0C14JointInfluenceV_AA0C7BuffersO0P0Vy_APGTt2B5Tm(v7, v6, v17 | v8, v2 + 88, v16 + 16);
    specialized Dictionary.subscript.setter(&v23, v7, v6, v17 | v8);
    v18 = v3;
  }

  outlined destroy of BodyTrackingComponent?(v18, &_s17RealityFoundation10MeshBufferVys6UInt32VGSgMd, &_s17RealityFoundation10MeshBufferVys6UInt32VGSgMR);
LABEL_18:

  free(v2);
}

uint64_t key path setter for MeshResource.Part.subscript<A>(_:) : <A>MeshResource.PartA(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 16);
  v18 = *(a1 + 32);
  v19 = v5;
  v7 = *(a1 + 48);
  v20 = *(a1 + 64);
  v8 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v8;
  v15[1] = v6;
  v15[2] = v18;
  v9 = *(a1 + 64);
  v15[3] = v7;
  v15[4] = v9;
  v10 = *(a3 + a4 - 16);
  v11 = *(a3 + a4 - 8);
  v21 = *(a1 + 80);
  v16 = *(a1 + 80);
  v15[0] = v17[0];
  swift_getAssociatedTypeWitness();
  type metadata accessor for MeshBuffer();
  v12 = type metadata accessor for Optional();
  (*(*(v12 - 8) + 16))(v14, v17, v12);
  return specialized MeshResource.Part.subscript.setter(v15, a3, v10, v11);
}

void (*MeshResource.Part.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void **a1, char a2)
{
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x188uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[45] = a4;
  v9[46] = v4;
  v9[44] = a3;
  v11 = *(a3 - 8);
  v12 = v11;
  v9[47] = v11;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v11 + 64));
  }

  *(v10 + 384) = v13;
  (*(v12 + 16))();
  MeshBufferDictionary.subscript.getter(*v4, a3, a4, v10);
  return MeshResource.Part.subscript.modify;
}

void MeshResource.Part.subscript.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    v5 = *(v2 + 1);
    *(v2 + 13) = v4;
    *(v2 + 14) = v3;
    v6 = *(v2 + 3);
    *(v2 + 15) = *(v2 + 4);
    v7 = *(v2 + 1);
    v8 = *v2;
    *(v2 + 11) = *v2;
    *(v2 + 12) = v7;
    v26 = v4;
    v27 = v6;
    v28 = *(v2 + 4);
    v10 = *(v2 + 47);
    v9 = *(v2 + 48);
    v12 = *(v2 + 45);
    v11 = *(v2 + 46);
    v13 = *(v2 + 44);
    v2[256] = v2[80];
    v29 = v2[80];
    v24 = v8;
    v25 = v5;
    swift_getAssociatedTypeWitness();
    type metadata accessor for MeshBuffer();
    v14 = type metadata accessor for Optional();
    v15 = *(v14 - 8);
    (*(v15 + 16))(v2 + 264, v2 + 176, v14);
    specialized MeshResource.Part.subscript.setter(&v24, v9, v13, v12);
    (*(v10 + 8))(v9, v13);
    v16 = *(v2 + 3);
    *(v2 + 120) = *(v2 + 2);
    *(v2 + 136) = v16;
    *(v2 + 152) = *(v2 + 4);
    v2[168] = v2[80];
    v17 = *(v2 + 1);
    *(v2 + 88) = *v2;
    *(v2 + 104) = v17;
    (*(v15 + 8))(v2 + 88, v14);
  }

  else
  {
    v18 = *(v2 + 47);
    v9 = *(v2 + 48);
    v19 = *(v2 + 45);
    v20 = *(v2 + 46);
    v21 = *(v2 + 44);
    v22 = *(v2 + 3);
    v26 = *(v2 + 2);
    v27 = v22;
    v28 = *(v2 + 4);
    v29 = v2[80];
    v23 = *(v2 + 1);
    v24 = *v2;
    v25 = v23;
    specialized MeshResource.Part.subscript.setter(&v24, v9, v21, v19);
    (*(v18 + 8))(v9, v21);
  }

  free(v9);

  free(v2);
}

uint64_t protocol witness for MeshBufferContainer.subscript.setter in conformance MeshResource.Part(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized MeshResource.Part.subscript.setter(a1, a2, a3, a4);
  v6 = *(*(a3 - 8) + 8);

  return v6(a2, a3);
}

void (*protocol witness for MeshBufferContainer.subscript.modify in conformance MeshResource.Part(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
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
  v8[4] = MeshResource.Part.subscript.modify(v8, a2, a3, a4);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t protocol witness for Identifiable.id.getter in conformance MeshResource.Part@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t MeshResource.Model.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MeshResource.Model.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

double MeshResource.Model.init(id:parts:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  MeshPartCollection.init(_:)(a3, &v6);
  *(a4 + 16) = v6;
  MeshLevelCollection_v1.init(_:)(MEMORY[0x1E69E7CC0], &v6);
  result = *&v6;
  *(a4 + 32) = v6;
  return result;
}

uint64_t MeshResource.Model.init(id:descriptors:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  type metadata accessor for MeshResource();
  v9 = MeshResource.init(from:)(a3);
  if (v4)
  {
  }

  v19[7] = v9;
  MeshResource.Contents.init(_:)(*(v9 + 16), v19);
  v11 = v19[0];

  if (v11[2])
  {
    v12 = v11[5];
    v13 = v11[6];
    v18 = a1;
    v15 = v11[7];
    v14 = v11[8];
    v16 = v11[9];

    *a4 = v18;
    a4[1] = a2;
    a4[2] = v13;
    a4[3] = v15;
    a4[4] = v14;
    a4[5] = v16;
  }

  else
  {

    lazy protocol witness table accessor for type MeshResourceError and conformance MeshResourceError();
    swift_allocError();
    *v17 = xmmword_1C18A4F00;
    swift_willThrow();
  }

  return result;
}

uint64_t static MeshResource.generate(from:)()
{
  type metadata accessor for MeshResource();

  return MeshResource.init(from:)(v0);
}

{
  type metadata accessor for MainActor();
  *(v0 + 128) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](static MeshResource.generate(from:), v2, v1);
}

{
  v13 = v0;
  v1 = *(v0 + 128);

  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 120, v0 + 16);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
  (*(v4 + 32))(v3, v4);
  Mutable = REAssetServiceMeshAssetCreateMutable();
  if (REAssetGetSwiftObject())
  {
    type metadata accessor for MeshResource();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      goto LABEL_5;
    }

    swift_unknownObjectRelease();
  }

  type metadata accessor for MeshResource();
  v6 = swift_allocObject();
  *(v6 + 16) = Mutable;
  RERetain();
  REAssetSetSwiftObject();
LABEL_5:
  *(v0 + 136) = v6;
  v10 = *(v0 + 96);
  v11 = *(v0 + 80);
  v9 = *(v0 + 112);
  RERelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v12[0] = v11;
  v12[1] = v10;
  v12[2] = v9;
  MeshResource.replace(with:)(v12);
  v7 = swift_task_alloc();
  *(v0 + 144) = v7;
  *v7 = v0;
  v7[1] = static MeshResource.generate(from:);

  return specialized RequestLoadable.awaitForResourceSharing()();
}

{
  v2 = *(*v1 + 144);
  v3 = *v1;
  v3[19] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](static MeshResource.generate(from:), 0, 0);
  }

  else
  {
    v4 = v3[1];
    v5 = v3[17];

    return v4(v5);
  }
}

{
  v1 = v0[17];

  v2 = v0[19];
  v3 = v0[1];

  return v3();
}

{
  v37 = v0;
  v1 = *(v0 + 312);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v26 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v26;
    v4 = (v1 + 32);
    for (i = v2 - 1; ; --i)
    {
      v6 = *v4;
      v7 = v4[2];
      *(v0 + 32) = v4[1];
      *(v0 + 48) = v7;
      *(v0 + 16) = v6;
      v8 = v4[3];
      v9 = v4[4];
      v10 = v4[5];
      *(v0 + 112) = *(v4 + 12);
      *(v0 + 80) = v9;
      *(v0 + 96) = v10;
      *(v0 + 64) = v8;
      v11 = v4[5];
      v34 = v4[4];
      v35 = v11;
      v36 = *(v4 + 12);
      v12 = v4[1];
      v30 = *v4;
      v31 = v12;
      v13 = v4[3];
      v32 = v4[2];
      v33 = v13;
      outlined init with copy of MeshDescriptor(v0 + 16, v0 + 120);
      MeshDescriptor.makeGeomMesh()(&v27);
      if (v29)
      {
        break;
      }

      v25 = v27;
      outlined destroy of MeshDescriptor(v0 + 16);
      v15 = *(v26 + 16);
      v14 = *(v26 + 24);
      if (v15 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
      }

      *(v26 + 16) = v15 + 1;
      *(v26 + 8 * v15 + 32) = v25;
      if (!i)
      {
        goto LABEL_8;
      }

      v4 = (v4 + 104);
    }

    v18 = v28;
    *(v0 + 288) = v27;
    *(v0 + 304) = v18;
    lazy protocol witness table accessor for type GeomMeshError and conformance GeomMeshError();
    swift_willThrowTypedImpl();
    v19 = *(v0 + 288);
    v20 = *(v0 + 296);
    v21 = *(v0 + 304);
    swift_allocError();
    *v22 = v19;
    *(v22 + 8) = v20;
    *(v22 + 16) = v21;
    outlined destroy of MeshDescriptor(v0 + 16);

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
LABEL_8:
    *(v0 + 320) = v3;
    *(v0 + 328) = REMeshCompileOptionsCreate();
    type metadata accessor for MainActor();
    *(v0 + 336) = static MainActor.shared.getter();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x1EEE6DFA0](static MeshResource.generate(from:), v17, v16);
  }
}

{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];

  v4 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v4 + 120, (v0 + 28));
  v5 = v0[31];
  v6 = v0[32];
  __swift_project_boxed_opaque_existential_1(v0 + 28, v5);
  (*(v6 + 32))(v5, v6);
  v7 = *(v3 + 16);
  v8 = REAssetManagerMeshAssetCreateFromModelsWithOptionsNullable();
  __swift_destroy_boxed_opaque_existential_1(v0 + 28);
  if (v8)
  {
    if (REAssetGetSwiftObject())
    {
      type metadata accessor for MeshResource();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
LABEL_6:
        v0[43] = v9;
        RERelease();
        v10 = static MeshResource.generate(from:);
        goto LABEL_8;
      }

      swift_unknownObjectRelease();
    }

    type metadata accessor for MeshResource();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    RERetain();
    REAssetSetSwiftObject();
    goto LABEL_6;
  }

  v11 = v0[40];
  lazy protocol witness table accessor for type MeshResourceError and conformance MeshResourceError();
  v0[44] = swift_allocError();
  *v12 = xmmword_1C18A4F10;
  swift_willThrow();

  v10 = static MeshResource.generate(from:);
LABEL_8:

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

{
  v1 = *(v0[40] + 16);
  if (v1)
  {
    v2 = 32;
    do
    {
      v3 = *(v0[40] + v2);
      RERelease();
      v2 += 8;
      --v1;
    }

    while (v1);
    v4 = v0[40];
  }

  v5 = swift_task_alloc();
  v0[45] = v5;
  *v5 = v0;
  v5[1] = static MeshResource.generate(from:);
  v6 = v0[43];

  return specialized RequestLoadable.awaitForResourceSharing()();
}

{
  v1 = v0[41];
  RERelease();
  v2 = v0[44];
  v3 = v0[1];

  return v3();
}

{
  v2 = *(*v1 + 360);
  v5 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = static MeshResource.generate(from:);
  }

  else
  {
    v3 = static MeshResource.generate(from:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[41];
  RERelease();
  v2 = v0[1];
  v3 = v0[43];

  return v2(v3);
}

{
  v1 = v0[43];
  v2 = v0[41];

  RERelease();
  v3 = v0[46];
  v4 = v0[1];

  return v4();
}

{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[6];

  return v2(v3);
}

{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

{
  type metadata accessor for MeshResource();

  return MeshResource.init(from:)(v0);
}

uint64_t protocol witness for Identifiable.id.getter in conformance MeshResource.Model@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t MeshResource.Instance.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MeshResource.Instance.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MeshResource.Instance.model.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MeshResource.Instance.model.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

__n128 MeshResource.Instance.transform.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 48);
  v3 = *(v0 + 64);
  v4 = *(v0 + 80);
  return result;
}

void MeshResource.Instance.transform.setter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

uint64_t MeshResource.Instance.init(id:model:at:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (*(a5 + 64))
  {
    v6 = xmmword_1C1887660;
    v7 = xmmword_1C1887650;
    v8 = xmmword_1C1887640;
    v9 = xmmword_1C1887630;
  }

  else
  {
    v7 = *(a5 + 32);
    v6 = *(a5 + 48);
    v9 = *a5;
    v8 = *(a5 + 16);
  }

  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = v9;
  *(a6 + 48) = v8;
  *(a6 + 64) = v7;
  *(a6 + 80) = v6;
  return result;
}

uint64_t MeshResource.Contents.models.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

__n128 MeshResource.Contents.models.setter(__n128 *a1)
{
  v4 = v1->n128_u64[0];
  v3 = v1->n128_i64[1];

  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t MeshResource.Model.parts.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

__n128 MeshResource.Model.parts.setter(__n128 *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  result = *a1;
  *(v1 + 16) = *a1;
  return result;
}

uint64_t MeshResource.Contents.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = _s17RealityFoundation29OrderedIdentifiableCollectionV17dictionaryLiteralACyxq_Gx_q_td_tcfCSS_0A3Kit12MeshResourceCAAE5ModelVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  a1[1] = v3;
  a1[2] = _s17RealityFoundation29OrderedIdentifiableCollectionV17dictionaryLiteralACyxq_Gx_q_td_tcfCSS_0A3Kit12MeshResourceCAAE8InstanceVTt0g5Tf4g_n(v2);
  a1[3] = v4;
  result = _s17RealityFoundation29OrderedIdentifiableCollectionV17dictionaryLiteralACyxq_Gx_q_td_tcfCSS_0A3Kit12MeshResourceCAAE8SkeletonVTt0g5Tf4g_n(v2);
  a1[4] = result;
  a1[5] = v6;
  return result;
}

uint64_t MeshResource.Contents.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *&v84 = _s17RealityFoundation29OrderedIdentifiableCollectionV17dictionaryLiteralACyxq_Gx_q_td_tcfCSS_0A3Kit12MeshResourceCAAE5ModelVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v84 + 1) = v5;
  *&v85 = _s17RealityFoundation29OrderedIdentifiableCollectionV17dictionaryLiteralACyxq_Gx_q_td_tcfCSS_0A3Kit12MeshResourceCAAE8InstanceVTt0g5Tf4g_n(v4);
  *(&v85 + 1) = v6;
  result = _s17RealityFoundation29OrderedIdentifiableCollectionV17dictionaryLiteralACyxq_Gx_q_td_tcfCSS_0A3Kit12MeshResourceCAAE8SkeletonVTt0g5Tf4g_n(v4);
  v86 = result;
  v87 = v8;
  if (!a1)
  {
    v61 = result;
    v62 = v8;
    goto LABEL_52;
  }

  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  ModelCount = REMeshAssetGetModelCount();
  if (ModelCount < 0)
  {
    goto LABEL_60;
  }

  v71 = a2;
  v77 = a1;
  if (ModelCount)
  {
    v11 = 0;
    v75 = ModelCount;
    do
    {
      REMeshAssetGetModelName();
      v14 = String.init(cString:)();
      v16 = v15;
      v17 = specialized static MeshResource.Part.unpack(coreAsset:modelIndex:)(a1, v11);

      MeshPartCollection.init(_:)(v17, v88);
      v18 = v88[0];
      MeshLevelCollection_v1.init(_:)(MEMORY[0x1E69E7CC0], v88);
      v19 = v88[0];
      if (*(*(&v84 + 1) + 16) && (v20 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v16), (v21 & 1) != 0))
      {
        v22 = *(*(*(&v84 + 1) + 56) + 8 * v20);
        if ((v22 & 0x8000000000000000) != 0)
        {
          goto LABEL_55;
        }

        v23 = *(v84 + 16);

        if (v22 >= v23)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v89[0] = v14;
        v89[1] = v16;
        v90 = v18;
        v91 = v19;

        specialized OrderedIdentifiableCollection.subscript.setter(v89, v14, v16);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v88[0] = v9;
      v26 = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      v27 = v9[2];
      v28 = (v25 & 1) == 0;
      v29 = v27 + v28;
      if (__OFADD__(v27, v28))
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v30 = v25;
      if (v9[3] >= v29)
      {
        a1 = v77;
        if (isUniquelyReferenced_nonNull_native)
        {
          v9 = *&v88[0];
          if (v25)
          {
            goto LABEL_5;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          v9 = *&v88[0];
          if (v30)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, isUniquelyReferenced_nonNull_native);
        v31 = specialized __RawDictionaryStorage.find<A>(_:)(v11);
        a1 = v77;
        if ((v30 & 1) != (v32 & 1))
        {
          goto LABEL_63;
        }

        v26 = v31;
        v9 = *&v88[0];
        if (v30)
        {
LABEL_5:
          v12 = (v9[7] + 16 * v26);
          v13 = v12[1];
          *v12 = v14;
          v12[1] = v16;

          goto LABEL_6;
        }
      }

      v9[(v26 >> 6) + 8] |= 1 << v26;
      *(v9[6] + 8 * v26) = v11;
      v33 = (v9[7] + 16 * v26);
      *v33 = v14;
      v33[1] = v16;
      v34 = v9[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_54;
      }

      v9[2] = v36;
LABEL_6:
      ++v11;
    }

    while (v75 != v11);
  }

  InstanceCount = REMeshAssetGetInstanceCount();
  if (InstanceCount < 0)
  {
    goto LABEL_61;
  }

  v38 = InstanceCount;
  if (InstanceCount)
  {
    for (i = 0; v38 != i; ++i)
    {
      REMeshAssetGetInstanceName();
      v40 = String.init(cString:)();
      v42 = v41;
      REMeshAssetGetInstanceTransform();
      v74 = v44;
      v76 = v43;
      v72 = v46;
      v73 = v45;
      InstanceModelIndex = REMeshAssetGetInstanceModelIndex();
      if (v9[2] && (v48 = specialized __RawDictionaryStorage.find<A>(_:)(InstanceModelIndex), (v49 & 1) != 0))
      {
        v50 = (v9[7] + 16 * v48);
        v52 = *v50;
        v51 = v50[1];
        *&v78 = v40;
        *(&v78 + 1) = v42;
        *&v79 = v52;
        *(&v79 + 1) = v51;
        v80 = v76;
        v81 = v74;
        v82 = v73;
        v83 = v72;
        v53 = v85;
        v54 = *(*(&v85 + 1) + 16);

        if (v54 && (v55 = specialized __RawDictionaryStorage.find<A>(_:)(v40, v42), (v56 & 1) != 0))
        {
          if ((*(*(*(&v53 + 1) + 56) + 8 * v55) & 0x8000000000000000) != 0)
          {
            goto LABEL_58;
          }

          v57 = *(v53 + 16);
          outlined destroy of MeshResource.Instance(&v78);
          if (*(&v53 + 1) >= v57)
          {
            goto LABEL_59;
          }
        }

        else
        {
          v88[2] = v80;
          v88[3] = v81;
          v88[4] = v82;
          v88[5] = v83;
          v88[0] = v78;
          v88[1] = v79;

          specialized OrderedIdentifiableCollection.subscript.setter(v88, v40, v42);
        }
      }

      else
      {
      }
    }
  }

  TotalSkeletonCount = REMeshAssetGetTotalSkeletonCount();
  if (TotalSkeletonCount < 0)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v59 = TotalSkeletonCount;
  if (!TotalSkeletonCount)
  {

    v61 = v86;
    v62 = v87;
    goto LABEL_51;
  }

  v60 = 0;
  v61 = v86;
  v62 = v87;
  while (1)
  {
    static MeshResource.Skeleton.unpack(coreAsset:skeletonIndex:)(&v78);
    v63 = v78;
    v64 = v79;
    *&v78 = v61;
    *(&v78 + 1) = v62;
    v65 = *(v62 + 16);

    if (v65)
    {
      v66 = specialized __RawDictionaryStorage.find<A>(_:)(v63, *(&v63 + 1));
      if (v67)
      {
        break;
      }
    }

    specialized OrderedIdentifiableCollection.subscript.setter(v63, *(&v63 + 1), v64, v63, *(&v63 + 1));

    v61 = v78;
LABEL_42:
    ++v60;
    v62 = *(&v78 + 1);
    if (v59 == v60)
    {
      goto LABEL_48;
    }
  }

  v68 = *(*(v62 + 56) + 8 * v66);
  if ((v68 & 0x8000000000000000) != 0)
  {
    goto LABEL_57;
  }

  v69 = *(v61 + 16);

  if (v68 < v69)
  {
    goto LABEL_42;
  }

  __break(1u);
LABEL_48:

LABEL_51:
  a2 = v71;
LABEL_52:
  v70 = v85;
  *a2 = v84;
  *(a2 + 16) = v70;
  *(a2 + 32) = v61;
  *(a2 + 40) = v62;
  return result;
}

uint64_t MeshResource.Model.levels.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

__n128 MeshResource.Model.levels.setter(__n128 *a1)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);

  result = *a1;
  *(v1 + 32) = *a1;
  return result;
}

Swift::tuple_OpaquePointer_OpaquePointer __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MeshResource.Contents.makeDefinitions()()
{
  v1 = *v0;
  v49 = v0[2];
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  v53 = *v0;
  if (v2)
  {
    v66 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = 0;
    v5 = (v1 + 72);
    v57 = v2;
    while (1)
    {
      if (v4 >= *(v1 + 16))
      {
        goto LABEL_46;
      }

      v59 = *(v5 - 5);
      v61 = *(v5 - 4);
      v62 = *(v5 - 3);
      v63 = *(v5 - 2);
      v64 = *(v5 - 1);
      v65 = *v5;

      MeshResource.Model.combine()();

      if (v52)
      {
        break;
      }

      ++v4;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v6 = v66[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v5 += 6;
      v1 = v53;
      if (v57 == v4)
      {
        v3 = v66;
        goto LABEL_7;
      }
    }

LABEL_41:
    v46 = v5;
    goto LABEL_51;
  }

LABEL_7:
  v48 = v3;
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

  v50 = *(v1 + 16);
  if (!v50)
  {
LABEL_23:

    v5 = MEMORY[0x1E69E7CC0];
    v60 = MEMORY[0x1E69E7CC0];
    v29 = *(v49 + 16);

    if (v29)
    {
      v30 = 0;
      v31 = v49 + 56;
LABEL_25:
      v51 = v5;
      v32 = v31 + 96 * v30;
      v33 = v30;
      while (v33 < v29)
      {
        v30 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_45;
        }

        if (v7[2])
        {
          v34 = *(v32 - 24);
          v35 = *(v32 - 16);
          v36 = *(v32 - 8);
          v37 = *v32;
          v56 = *(v32 + 24);
          v58 = *(v32 + 8);
          v54 = *(v32 + 56);
          v55 = *(v32 + 40);

          v38 = v7;
          v39 = specialized __RawDictionaryStorage.find<A>(_:)(v36, v37);
          if (v40)
          {
            v41 = *(v7[7] + 8 * v39);
            if ((v41 & 0x8000000000000000) != 0)
            {
              goto LABEL_48;
            }

            if (HIDWORD(v41))
            {
              goto LABEL_49;
            }

            String.utf8CString.getter();
            v42 = REMeshInstanceDefinitionCreate();

            type metadata accessor for MeshInstanceDefinition();
            *(swift_allocObject() + 16) = v42;

            MEMORY[0x1C68F3650](v43);
            if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v44 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v5 = v60;
            v7 = v38;
            v31 = v49 + 56;
            if (v30 != v29)
            {
              goto LABEL_25;
            }

            goto LABEL_39;
          }
        }

        ++v33;
        v32 += 96;
        if (v30 == v29)
        {
          v5 = v51;
          goto LABEL_39;
        }
      }

      goto LABEL_44;
    }

LABEL_39:

    v45 = v48;
    goto LABEL_41;
  }

  v8 = 0;
  v9 = (v1 + 72);
  while (v8 < *(v1 + 16))
  {
    v11 = *(v9 - 5);
    v10 = *(v9 - 4);
    v13 = *(v9 - 3);
    v12 = *(v9 - 2);
    v14 = *(v9 - 1);
    v15 = *v9;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v10);
    v19 = v7[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_43;
    }

    v22 = v17;
    if (v7[3] >= v21)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v17)
        {
          goto LABEL_9;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        if (v22)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v21, isUniquelyReferenced_nonNull_native);
      v23 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v10);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_50;
      }

      v18 = v23;
      if (v22)
      {
LABEL_9:
        *(v7[7] + 8 * v18) = v8;

        goto LABEL_10;
      }
    }

    v7[(v18 >> 6) + 8] |= 1 << v18;
    v25 = (v7[6] + 16 * v18);
    *v25 = v11;
    v25[1] = v10;
    *(v7[7] + 8 * v18) = v8;

    v26 = v7[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_47;
    }

    v7[2] = v28;
LABEL_10:
    ++v8;
    v9 += 6;
    v1 = v53;
    if (v50 == v8)
    {
      goto LABEL_23;
    }
  }

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
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  v45 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_51:
  result._1._rawValue = v46;
  result._0._rawValue = v45;
  return result;
}

uint64_t MeshResource.replace(with:)(__int128 *a1)
{
  if (!*(v1 + 16))
  {
    lazy protocol witness table accessor for type MeshResourceError and conformance MeshResourceError();
    swift_allocError();
    *v17 = 0;
    v17[1] = 0;
    return swift_willThrow();
  }

  v39 = a1[1];
  v41 = *a1;
  v2 = *(a1 + 4);
  v3 = *(a1 + 5);
  if (!REAssetHandleConvertToMutable())
  {
    lazy protocol witness table accessor for type MeshResourceError and conformance MeshResourceError();
    swift_allocError();
    *v18 = xmmword_1C18B8FE0;
    return swift_willThrow();
  }

  v6 = MeshResource.Contents.makeDefinitions()();
  rawValue = v6._1._rawValue;
  result = v6._0._rawValue;
  if (v7)
  {
    return result;
  }

  if (v6._0._rawValue >> 62)
  {
    v37 = __CocoaSet.count.getter();
    rawValue = v6._1._rawValue;
    v8 = v37;
    result = v6._0._rawValue;
  }

  else
  {
    v8 = *((v6._0._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x1E69E7CC0];
  v38 = result;
  v40 = v2;
  v42 = rawValue;
  if (v8)
  {
    v43 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 & ~(v8 >> 63), 0);
    if (v8 < 0)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v10 = 0;
    v9 = v43;
    v11 = v38;
    do
    {
      if ((v38 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1C68F41F0](v10, v11);
      }

      else
      {
        v13 = *(v11 + 8 * v10 + 32);
      }

      v14 = *(v12 + 16);

      v16 = *(v43 + 16);
      v15 = *(v43 + 24);
      if (v16 >= v15 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v11 = v38;
      }

      ++v10;
      *(v43 + 16) = v16 + 1;
      *(v43 + 8 * v16 + 32) = v14;
    }

    while (v8 != v10);
    rawValue = v42;
  }

  if (rawValue >> 62)
  {
    result = __CocoaSet.count.getter();
    v19 = result;
  }

  else
  {
    v19 = *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = MEMORY[0x1E69E7CC0];
  if (v19)
  {
    v44 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19 & ~(v19 >> 63), 0);
    if (v19 < 0)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v21 = 0;
    v20 = v44;
    v22 = v42;
    do
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1C68F41F0](v21, v22);
      }

      else
      {
        v24 = *(v22 + 8 * v21 + 32);
      }

      v25 = *(v23 + 16);

      v27 = *(v44 + 16);
      v26 = *(v44 + 24);
      if (v27 >= v26 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
        v22 = v42;
      }

      ++v21;
      *(v44 + 16) = v27 + 1;
      *(v44 + 8 * v27 + 32) = v25;
    }

    while (v19 != v21);
    v2 = v40;
  }

  v28 = *(v2 + 16);
  v29 = MEMORY[0x1E69E7CC0];
  if (v28)
  {
    v47 = MEMORY[0x1E69E7CC0];

    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 0);
    if (v28 > *(v2 + 16))
    {
LABEL_52:
      __break(1u);
      return result;
    }

    v29 = v47;
    v30 = (v2 + 40);
    do
    {
      v45 = *(v30 - 1);
      v46 = *v30;
      v31._rawValue = MeshResource.Skeleton.makeSkeletonDef()()._rawValue;
      v33 = *(v47 + 16);
      v32 = *(v47 + 24);
      if (v33 >= v32 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
      }

      *(v47 + 16) = v33 + 1;
      *(v47 + 8 * v33 + 32) = v31;
      v30 = (v30 + 24);
      --v28;
    }

    while (v28);
  }

  if (HIDWORD(*(v9 + 16)))
  {
    __break(1u);
    goto LABEL_48;
  }

  if (HIDWORD(*(v20 + 16)))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (HIDWORD(*(v29 + 16)))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v34 = (v29 + 32);
  REMeshAssetReplaceAllWithSkinnedModels();

  for (i = *(v29 + 16); i; --i)
  {
    v36 = *v34++;
    RERelease();
  }
}

Swift::OpaquePointer __swiftcall MeshResource.Skeleton.makeSkeletonDef()()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v60 = v0[1];
    v61 = *v0;
    v66 = MEMORY[0x1E69E7CC0];
    v5 = v2;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v6 = v66;
    v62 = v5;
    v7 = (v5 + 32);
    for (i = v3 - 1; ; --i)
    {
      v65[0] = *v7;
      v9 = v7[1];
      v10 = v7[2];
      v11 = v7[4];
      v65[3] = v7[3];
      v65[4] = v11;
      v65[1] = v9;
      v65[2] = v10;
      v12 = v7[5];
      v13 = v7[6];
      v14 = v7[8];
      v65[7] = v7[7];
      v65[8] = v14;
      v65[5] = v12;
      v65[6] = v13;
      outlined init with copy of MeshResource.Skeleton.Joint(v65, v64);
      v66 = v6;
      v16 = v6[2];
      v15 = v6[3];
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v6 = v66;
      }

      v17 = v65[0];
      v6[2] = v16 + 1;
      *&v6[2 * v16 + 4] = v17;
      if (!i)
      {
        break;
      }

      v7 += 9;
    }

    v64[0] = v4;
    result._rawValue = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v19 = v64[0];
    v20 = v62;
    v21 = (v62 + 56);
    do
    {
      if (i >= *(v20 + 16))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      if (*v21)
      {
        LODWORD(v22) = -1;
      }

      else
      {
        v22 = *(v21 - 1);
        if ((v22 & 0x8000000000000000) != 0)
        {
          goto LABEL_35;
        }

        if (HIDWORD(v22))
        {
          goto LABEL_36;
        }
      }

      v64[0] = v19;
      v24 = *(v19 + 16);
      v23 = *(v19 + 24);
      if (v24 >= v23 >> 1)
      {
        result._rawValue = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        v20 = v62;
        v19 = v64[0];
      }

      ++i;
      *(v19 + 16) = v24 + 1;
      *(v19 + 4 * v24 + 32) = v22;
      v21 += 144;
    }

    while (v3 != i);
    v64[0] = v4;
    v25 = v20;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v26 = v64[0];
    v27 = *(v64[0] + 16);
    v28 = v27 << 6;
    v29 = (v25 + 112);
    v30 = v3;
    do
    {
      v31 = *(v29 - 3);
      v32 = *(v29 - 2);
      v33 = *(v29 - 1);
      v34 = *v29;
      v64[0] = v26;
      v35 = *(v26 + 24);
      v36 = v27 + 1;
      if (v27 >= v35 >> 1)
      {
        v56 = v34;
        v58 = v33;
        v54 = v32;
        v55 = v31;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v27 + 1, 1);
        v32 = v54;
        v31 = v55;
        v34 = v56;
        v33 = v58;
        v26 = v64[0];
      }

      *(v26 + 16) = v36;
      v37 = (v26 + v28);
      v37[2] = v31;
      v37[3] = v32;
      v28 += 64;
      v29 += 9;
      v27 = v36;
      v37[4] = v33;
      v37[5] = v34;
      --v30;
    }

    while (v30);
    v64[0] = v4;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = v64[0];
    v38 = *(v64[0] + 16);
    v39 = 48 * v38;
    v40 = (v62 + 160);
    do
    {
      v41 = *(v40 - 2);
      v42 = *(v40 - 1);
      v43 = *v40;
      v64[0] = v4;
      v44 = *(v4 + 24);
      v45 = v38 + 1;
      if (v38 >= v44 >> 1)
      {
        v63 = v41;
        v57 = v43;
        v59 = v42;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v38 + 1, 1);
        v43 = v57;
        v42 = v59;
        v41 = v63;
        v4 = v64[0];
      }

      *(v4 + 16) = v45;
      v46 = (v4 + v39);
      v46[2] = v41;
      v46[3] = v42;
      v46[4] = v43;
      v39 += 48;
      v40 += 9;
      v38 = v45;
      --v3;
    }

    while (v3);
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
    v19 = MEMORY[0x1E69E7CC0];
    v6 = MEMORY[0x1E69E7CC0];
  }

  v47 = RESkeletonDefinitionCreate();
  String.utf8CString.getter();
  RESkeletonDefinitionSetName();

  v48 = v6[2];
  if (HIDWORD(v48))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v49 = v6[2];
  RESkeletonDefinitionSetJointCount();
  if (v48)
  {
    v50 = 0;
    v51 = v6 + 5;
    do
    {
      v52 = *(v51 - 1);
      v53 = *v51;
      String.utf8CString.getter();
      RESkeletonDefinitionSetJointName();

      v51 += 2;
      ++v50;
    }

    while (v48 != v50);
  }

  if (HIDWORD(*(v19 + 16)))
  {
    goto LABEL_38;
  }

  result._rawValue = RESkeletonDefinitionSetParentIndices();
  if (HIDWORD(*(v26 + 16)))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  result._rawValue = RESkeletonDefinitionSetInverseBindPoses();
  if (!HIDWORD(*(v4 + 16)))
  {
    RESkeletonDefinitionSetLocalRestPoses();

    return v47;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t MeshResource.replaceAsync(with:)(__int128 *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = a1[1];
  v29 = *a1;
  v30 = v8;
  v31 = a1[2];
  v9 = specialized static __ServiceLocator.shared.getter();
  v10 = *(*(v9 + 168) + 16);
  swift_beginAccess();
  v11 = *(v9 + 24);
  swift_unownedRetainStrong();
  v12 = *(v11 + 32);

  v13 = v10;
  v14 = v12;

  *v7 = v14;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v7, v3);
  if (v14)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v13;
    v18 = v30;
    *(v17 + 24) = v29;
    *(v17 + 40) = v18;
    *(v17 + 56) = v31;
    *(v17 + 72) = v1;
    *(v17 + 80) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA12MeshResourceCGMd, &_s10RealityKit11LoadRequestCyAA12MeshResourceCGMR);
    v19 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit12MeshResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit12MeshResourceCs5Error_pGSgGMR);
    v20 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v20 + 16) = v21;
    *(v20 + 24) = 0;
    *(v20 + 32) = -1;
    *(v19 + 16) = v20;
    v22 = swift_allocObject();
    v22[2] = partial apply for closure #1 in MeshResource.replaceAsync(with:);
    v22[3] = v17;
    v22[4] = v20;
    v22[5] = 0;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit12MeshResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit12MeshResourceCs5Error_pGMR);
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    outlined init with copy of MeshResource.Contents(&v29, v28);

    v26 = Future.init(_:)();

    *(v19 + 24) = v26;
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in MeshResource.replaceAsync(with:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, void *a6)
{
  v28 = a3;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v11 - 8);
  v12 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v15 = *(v26 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v20 = swift_allocObject();
  v21 = a4[1];
  *(v20 + 16) = *a4;
  *(v20 + 32) = v21;
  *(v20 + 48) = a4[2];
  *(v20 + 64) = a5;
  *(v20 + 72) = a6;
  *(v20 + 80) = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply;
  *(v20 + 88) = v19;
  aBlock[4] = partial apply for closure #1 in closure #1 in MeshResource.replaceAsync(with:);
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_212_0;
  v22 = _Block_copy(aBlock);

  outlined init with copy of MeshResource.Contents(a4, v29);

  v23 = a6;
  static DispatchQoS.unspecified.getter();
  v29[0] = MEMORY[0x1E69E7CC0];
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v18, v14, v22);
  _Block_release(v22);
  (*(v27 + 8))(v14, v11);
  (*(v15 + 8))(v18, v26);
}

uint64_t closure #1 in closure #1 in MeshResource.replaceAsync(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = a2;
  v48 = a5;
  v46 = a4;
  v52 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v17 = MeshResource.Contents.makeDefinitions()();
  result = v17._0._rawValue;
  v50 = v11;
  v51 = v9;
  if (v16)
  {
    v18 = 0;
    *(v14 + 16) = v16;
    *(v14 + 24) = 1;
    v19 = v47;
LABEL_30:
    v36 = MEMORY[0x1E69E7CC0];
    v37 = swift_allocObject();
    v37[2] = v18;
    v37[3] = v19;
    v38 = v46;
    v37[4] = v14;
    v37[5] = v38;
    v37[6] = v48;
    aBlock[4] = partial apply for specialized closure #3 in closure #1 in closure #1 in MeshResource.replaceAsync(with:);
    aBlock[5] = v37;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_221;
    v39 = _Block_copy(aBlock);

    v40 = v49;
    static DispatchQoS.unspecified.getter();
    v53 = v36;
    _sSo10CFErrorRefaABs5Error10FoundationWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v41 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1C68F3CA0](0, v40, v41, v39);
    _Block_release(v39);
    (*(v6 + 8))(v41, v5);
    (*(v50 + 8))(v40, v10);
  }

  v42 = v14;
  if (v17._0._rawValue >> 62)
  {
    result = __CocoaSet.count.getter();
    v20 = result;
  }

  else
  {
    v20 = *((v17._0._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = MEMORY[0x1E69E7CC0];
  v44 = v6;
  v45 = v5;
  v43 = v10;
  if (v20)
  {
    aBlock[0] = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20 & ~(v20 >> 63), 0);
    if (v20 < 0)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v22 = 0;
    v21 = aBlock[0];
    do
    {
      if ((v17._0._rawValue & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1C68F41F0](v22, v17._0._rawValue);
      }

      else
      {
        v24 = *(v17._0._rawValue + v22 + 4);
      }

      v25 = *(v23 + 16);

      aBlock[0] = v21;
      v27 = *(v21 + 16);
      v26 = *(v21 + 24);
      if (v27 >= v26 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
        v21 = aBlock[0];
      }

      ++v22;
      *(v21 + 16) = v27 + 1;
      *(v21 + 8 * v27 + 32) = v25;
    }

    while (v20 != v22);
    v6 = v44;
    v5 = v45;
    v10 = v43;
  }

  if (v17._1._rawValue >> 62)
  {
    result = __CocoaSet.count.getter();
    v28 = result;
  }

  else
  {
    v28 = *((v17._1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = MEMORY[0x1E69E7CC0];
  if (!v28)
  {
LABEL_27:
    if (HIDWORD(*(v21 + 16)))
    {
      __break(1u);
    }

    else if (!HIDWORD(*(v29 + 16)))
    {
      v18 = REMeshResourceDefinitionCreate();

      v14 = v42;
      v19 = v47;
      *(v42 + 16) = v47;
      *(v14 + 24) = 0;

      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_35;
  }

  aBlock[0] = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28 & ~(v28 >> 63), 0);
  if ((v28 & 0x8000000000000000) == 0)
  {
    v30 = 0;
    v29 = aBlock[0];
    do
    {
      if ((v17._1._rawValue & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x1C68F41F0](v30, v17._1._rawValue);
      }

      else
      {
        v32 = *(v17._1._rawValue + v30 + 4);
      }

      v33 = *(v31 + 16);

      aBlock[0] = v29;
      v35 = *(v29 + 16);
      v34 = *(v29 + 24);
      if (v35 >= v34 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1);
        v29 = aBlock[0];
      }

      ++v30;
      *(v29 + 16) = v35 + 1;
      *(v29 + 8 * v35 + 32) = v33;
    }

    while (v28 != v30);
    v6 = v44;
    v5 = v45;
    v10 = v43;
    goto LABEL_27;
  }

LABEL_36:
  __break(1u);
  return result;
}

void specialized closure #3 in closure #1 in closure #1 in MeshResource.replaceAsync(with:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t))
{
  if (a1)
  {
    if (*(a2 + 16))
    {
      v6 = *(a2 + 16);
      if (REAssetHandleConvertToMutable())
      {
        REMeshAssetReplaceAllWithResource();
LABEL_8:
        RERelease();
        goto LABEL_9;
      }

      lazy protocol witness table accessor for type MeshResourceError and conformance MeshResourceError();
      v7 = swift_allocError();
      *v9 = xmmword_1C18B8FE0;
    }

    else
    {
      lazy protocol witness table accessor for type MeshResourceError and conformance MeshResourceError();
      v7 = swift_allocError();
      *v8 = 0;
      v8[1] = 0;
    }

    swift_willThrow();
    swift_beginAccess();
    v10 = *(a3 + 16);
    v11 = *(a3 + 24);
    *(a3 + 16) = v7;
    *(a3 + 24) = 1;
    outlined consume of Result<MeshResource, Error>(v10, v11);
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  v12 = *(a3 + 16);
  v13 = *(a3 + 24);
  outlined copy of Result<ModelEntity, Error>(v12, v13);
  a4(v12, v13);
  outlined consume of Result<MeshResource, Error>(v12, v13);
}

uint64_t static MeshResource.generate(from:)(__int128 *a1)
{
  v11 = a1[1];
  v12 = *a1;
  v10 = a1[2];
  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 120, &v13);
  v3 = *(&v14 + 1);
  v4 = v15;
  __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
  (*(v4 + 32))(v3, v4);
  Mutable = REAssetServiceMeshAssetCreateMutable();
  if (REAssetGetSwiftObject())
  {
    type metadata accessor for MeshResource();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      goto LABEL_5;
    }

    swift_unknownObjectRelease();
  }

  type metadata accessor for MeshResource();
  v6 = swift_allocObject();
  *(v6 + 16) = Mutable;
  RERetain();
  REAssetSetSwiftObject();
LABEL_5:
  RERelease();
  __swift_destroy_boxed_opaque_existential_1(&v13);
  v13 = v12;
  v14 = v11;
  v15 = v10;
  MeshResource.replace(with:)(&v13);
  if (v1)
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1887600;
    v8 = type metadata accessor for MeshResource();
    *(inited + 32) = v6;
    *(inited + 56) = v8;
    *(inited + 64) = &protocol witness table for MeshResource;

    specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 32));
  }

  return v6;
}

uint64_t MeshResource.init(from:)(uint64_t a1)
{
  *(v2 + 792) = v1;
  *(v2 + 840) = *a1;
  v3 = *(a1 + 24);
  *(v2 + 888) = *(a1 + 8);
  *(v2 + 904) = v3;
  *(v2 + 920) = *(a1 + 40);
  return MEMORY[0x1EEE6DFA0](MeshResource.init(from:), 0, 0);
}

{
  v2 = v1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v52 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    if (!*(a1 + 16))
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v5 = 0;
    v6 = v52;
    v53 = v4 - 1;
    v7 = 32;
    while (1)
    {
      v8 = *(a1 + v7 + 48);
      v9 = *(a1 + v7 + 80);
      v49 = *(a1 + v7 + 64);
      v50 = v9;
      v10 = *(a1 + v7 + 16);
      v45 = *(a1 + v7);
      v46 = v10;
      v11 = *(a1 + v7 + 48);
      v13 = *(a1 + v7);
      v12 = *(a1 + v7 + 16);
      v47 = *(a1 + v7 + 32);
      v48 = v11;
      v14 = *(a1 + v7 + 80);
      v39 = v49;
      v40 = v14;
      v35 = v13;
      v36 = v12;
      v51 = *(a1 + v7 + 96);
      v41 = *(a1 + v7 + 96);
      v37 = v47;
      v38 = v8;
      outlined init with copy of MeshDescriptor(&v45, v34);
      MeshDescriptor.makeGeomMesh()(v42);
      v15 = v42[0];
      if (v44)
      {
        v18 = v42[1];
        v19 = v43;

        *&v35 = v15;
        *(&v35 + 1) = v18;
        LOWORD(v36) = v19;
        lazy protocol witness table accessor for type GeomMeshError and conformance GeomMeshError();
        swift_willThrowTypedImpl();
        v20 = v35;
        v21 = v36;
        swift_allocError();
        *v22 = v20;
        *(v22 + 16) = v21;
        outlined destroy of MeshDescriptor(&v45);
        goto LABEL_19;
      }

      outlined destroy of MeshDescriptor(&v45);
      v52 = v6;
      v17 = *(v6 + 16);
      v16 = *(v6 + 24);
      if (v17 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
        v6 = v52;
      }

      *(v6 + 16) = v17 + 1;
      *(v6 + 8 * v17 + 32) = v15;
      if (v53 == v5)
      {
        break;
      }

      v7 += 104;
      if (++v5 >= *(a1 + 16))
      {
        goto LABEL_23;
      }
    }

    v2 = v1;
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  REMeshCompileOptionsCreate();
  v23 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v23 + 120, &v45);
  v24 = *(&v46 + 1);
  v25 = v47;
  __swift_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
  (*(v25 + 32))(v24, v25);
  v26 = *(v6 + 16);
  v27 = (v6 + 32);
  v28 = REAssetManagerMeshAssetCreateFromModelsWithOptionsNullable();
  __swift_destroy_boxed_opaque_existential_1(&v45);
  for (i = *(v6 + 16); i; --i)
  {
    v30 = *v27++;
    RERelease();
  }

  if (!v28)
  {
    lazy protocol witness table accessor for type MeshResourceError and conformance MeshResourceError();
    swift_allocError();
    *v32 = xmmword_1C18A4F10;
    swift_willThrow();
    RERelease();
    return v6;
  }

  if (!REAssetGetSwiftObject())
  {
    v6 = (*(v2 + 120))(v28);
    *&v45 = v6;
    RequestLoadable.enforceResourceSharingBeforeECSCommits()();
    if (v31)
    {
      RERelease();
      RERelease();
LABEL_19:
    }

    else
    {
      RERelease();
      RERelease();
    }

    return v6;
  }

LABEL_24:
  result = swift_unknownObjectRelease();
  __break(1u);
  return result;
}

{
  *(v2 + 320) = a1;
  *(v2 + 328) = v1;
  return MEMORY[0x1EEE6DFA0](MeshResource.init(from:), 0, 0);
}

{
  v2[11] = a1;
  v2[12] = v1;
  type metadata accessor for MainActor();
  v2[13] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[14] = v4;
  v2[15] = v3;

  return MEMORY[0x1EEE6DFA0](MeshResource.init(from:), v4, v3);
}

{
  v2 = v1;
  v4 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v4 + 120, v12);
  v5 = v13;
  v6 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  (*(v6 + 32))(v5, v6);
  v7 = *(a1 + 16);
  MeshAssetWithDirectMesh = REAssetManagerCreateMeshAssetWithDirectMesh();
  __swift_destroy_boxed_opaque_existential_1(v12);
  v9 = (*(v2 + 120))(MeshAssetWithDirectMesh);
  RERelease();
  v12[0] = v9;
  RequestLoadable.enforceResourceSharingBeforeECSCommits()();
  if (v10)
  {
  }

  return v9;
}

uint64_t MeshResource.init(from:)()
{
  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEB8](v0 + 16, v0 + 696, MeshResource.init(from:), v0 + 656);
}

{
  return MEMORY[0x1EEE6DFA0](MeshResource.init(from:), 0, 0);
}

{
  v0[116] = (*(v0[99] + 120))(v0[87]);

  return MEMORY[0x1EEE6DEB8](v0 + 2, v0 + 87, MeshResource.init(from:), v0 + 88);
}

{
  return MEMORY[0x1EEE6DFA0](MeshResource.init(from:), 0, 0);
}

{
  v1 = *(v0 + 696);
  RERelease();
  type metadata accessor for MainActor();
  *(v0 + 936) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](MeshResource.init(from:), v3, v2);
}

{
  v21 = v0;
  v1 = *(v0 + 936);
  v2 = *(v0 + 928);
  v3 = *(v0 + 920);
  v4 = *(v0 + 840);
  v15 = *(v0 + 904);
  v16 = *(v0 + 888);

  v17 = v4;
  v18 = v16;
  v19 = v15;
  v20 = v3;
  MeshResource.replace(with:)(&v17);
  *(v0 + 944) = 0;
  v5 = *(v0 + 928);
  v6 = *(v0 + 920);
  v7 = *(v0 + 912);
  v8 = *(v0 + 904);
  v9 = *(v0 + 896);
  v10 = *(v0 + 888);
  v11 = *(v0 + 840);

  *(v0 + 744) = v5;
  v12 = swift_task_alloc();
  *(v0 + 952) = v12;
  *v12 = v0;
  v12[1] = MeshResource.init(from:);
  v13 = *(v0 + 792);

  return RequestLoadable.awaitForResourceSharing()(v13, &protocol witness table for MeshResource);
}

{
  v2 = *v1;
  v3 = *(*v1 + 952);
  v5 = *v1;
  *(*v1 + 960) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](MeshResource.init(from:), 0, 0);
  }

  else
  {

    return MEMORY[0x1EEE6DEB0](v2 + 16, v2 + 696, MeshResource.init(from:), v2 + 848);
  }
}

{
  return MEMORY[0x1EEE6DFA0](MeshResource.init(from:), 0, 0);
}

{
  v1 = v0[118];
  v2 = v0[116];

  v3 = v0[1];

  return v3();
}

{
  return MEMORY[0x1EEE6DFA0](MeshResource.init(from:), 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 928));
}

{
  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 696, MeshResource.init(from:), v0 + 800);
}

{
  return MEMORY[0x1EEE6DFA0](MeshResource.init(from:), 0, 0);
}

{
  v1 = v0[120];
  v2 = v0[116];

  v3 = v0[1];

  return v3();
}

{
  v45 = v0;
  v1 = *(v0 + 320);
  v2 = *(v1 + 16);
  if (!v2)
  {
    v20 = *(v0 + 320);

    v7 = MEMORY[0x1E69E7CC0];
LABEL_15:
    *(v0 + 336) = v7;
    *(v0 + 344) = REMeshCompileOptionsCreate();
    type metadata accessor for MainActor();
    *(v0 + 352) = static MainActor.shared.getter();
    v31 = dispatch thunk of Actor.unownedExecutor.getter();
    v33 = v32;
    v3 = MeshResource.init(from:);
    v4 = v31;
    v5 = v33;

    return MEMORY[0x1EEE6DFA0](v3, v4, v5);
  }

  v34 = MEMORY[0x1E69E7CC0];
  v3 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  if (!*(v1 + 16))
  {
LABEL_18:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v3, v4, v5);
  }

  v6 = 0;
  v7 = v34;
  v8 = (v1 + 32);
  while (1)
  {
    v9 = *v8;
    v10 = v8[2];
    *(v0 + 32) = v8[1];
    *(v0 + 48) = v10;
    *(v0 + 16) = v9;
    v11 = v8[3];
    v12 = v8[4];
    v13 = v8[5];
    *(v0 + 112) = *(v8 + 12);
    *(v0 + 80) = v12;
    *(v0 + 96) = v13;
    *(v0 + 64) = v11;
    v14 = v8[5];
    v42 = v8[4];
    v43 = v14;
    v44 = *(v8 + 12);
    v15 = v8[1];
    v38 = *v8;
    v39 = v15;
    v16 = v8[3];
    v40 = v8[2];
    v41 = v16;
    outlined init with copy of MeshDescriptor(v0 + 16, v0 + 120);
    MeshDescriptor.makeGeomMesh()(v35);
    v17 = v35[0];
    if (v37)
    {
      break;
    }

    v3 = outlined destroy of MeshDescriptor(v0 + 16);
    v19 = *(v34 + 16);
    v18 = *(v34 + 24);
    if (v19 >= v18 >> 1)
    {
      v3 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
    }

    *(v34 + 16) = v19 + 1;
    *(v34 + 8 * v19 + 32) = v17;
    if (v2 - 1 == v6)
    {
      v30 = *(v0 + 320);

      goto LABEL_15;
    }

    v8 = (v8 + 104);
    if (++v6 >= *(v1 + 16))
    {
      goto LABEL_18;
    }
  }

  v21 = v35[1];
  v22 = v36;
  v23 = *(v0 + 320);

  *(v0 + 288) = v17;
  *(v0 + 296) = v21;
  *(v0 + 304) = v22;
  lazy protocol witness table accessor for type GeomMeshError and conformance GeomMeshError();
  swift_willThrowTypedImpl();
  v24 = *(v0 + 288);
  v25 = *(v0 + 296);
  v26 = *(v0 + 304);
  swift_allocError();
  *v27 = v24;
  *(v27 + 8) = v25;
  *(v27 + 16) = v26;
  outlined destroy of MeshDescriptor(v0 + 16);

  v28 = *(v0 + 8);

  return v28();
}

{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];

  v4 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v4 + 120, (v0 + 28));
  v5 = v0[31];
  v6 = v0[32];
  __swift_project_boxed_opaque_existential_1(v0 + 28, v5);
  (*(v6 + 32))(v5, v6);
  v7 = *(v3 + 16);
  v0[45] = REAssetManagerMeshAssetCreateFromModelsWithOptionsNullable();
  __swift_destroy_boxed_opaque_existential_1(v0 + 28);

  return MEMORY[0x1EEE6DFA0](MeshResource.init(from:), 0, 0);
}

{
  if (v0[45])
  {
    v1 = (*(v0[41] + 120))();
    v0[46] = v1;
    v0[39] = v1;
    v2 = swift_task_alloc();
    v0[47] = v2;
    *v2 = v0;
    v2[1] = MeshResource.init(from:);
    v3 = v0[41];

    return RequestLoadable.awaitForResourceSharing()(v3, &protocol witness table for MeshResource);
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, logger);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C1358000, v6, v7, "Could not create MeshResources with descriptors.", v8, 2u);
      MEMORY[0x1C6902A30](v8, -1, -1);
    }

    v10 = v0[42];
    v9 = v0[43];

    lazy protocol witness table accessor for type MeshResourceError and conformance MeshResourceError();
    swift_allocError();
    *v11 = xmmword_1C18A4F10;
    swift_willThrow();
    RERelease();
    v12 = *(v10 + 16);
    if (v12)
    {
      v13 = 32;
      do
      {
        v14 = *(v0[42] + v13);
        RERelease();
        v13 += 8;
        --v12;
      }

      while (v12);
    }

    v15 = v0[42];

    v16 = v0[1];

    return v16();
  }
}

{
  v2 = *(*v1 + 376);
  v5 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = MeshResource.init(from:);
  }

  else
  {
    v3 = MeshResource.init(from:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[45];
  v2 = v0[42];
  v3 = v0[43];
  RERelease();
  RERelease();
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = 32;
    do
    {
      v6 = *(v0[42] + v5);
      RERelease();
      v5 += 8;
      --v4;
    }

    while (v4);
  }

  v7 = v0[42];

  v8 = v0[1];
  v9 = v0[46];

  return v8(v9);
}

{
  v1 = v0[45];
  v2 = v0[42];
  v3 = v0[43];
  RERelease();
  RERelease();
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = 32;
    do
    {
      v6 = *(v0[42] + v5);
      RERelease();
      v5 += 8;
      --v4;
    }

    while (v4);
  }

  v7 = v0[46];
  v8 = v0[42];

  v9 = v0[48];
  v10 = v0[1];

  return v10();
}

{
  v2 = v0[11];
  v1 = v0[12];
  v3 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v3 + 120, (v0 + 2));
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  (*(v5 + 32))(v4, v5);
  v6 = *(v2 + 16);
  MeshAssetWithDirectMesh = REAssetManagerCreateMeshAssetWithDirectMesh();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v8 = (*(v1 + 120))(MeshAssetWithDirectMesh);
  v0[16] = v8;
  RERelease();
  v0[10] = v8;
  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = MeshResource.init(from:);
  v10 = v0[12];

  return RequestLoadable.awaitForResourceSharing()(v10, &protocol witness table for MeshResource);
}

{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v8 = *v1;
  *(*v1 + 144) = v0;

  v4 = *(v2 + 112);
  v5 = *(v2 + 120);
  if (v0)
  {
    v6 = MeshResource.init(from:);
  }

  else
  {
    v6 = MeshResource.init(from:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

{
  v1 = v0[13];
  v2 = v0[11];

  v3 = v0[1];
  v4 = v0[16];

  return v3(v4);
}

{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[11];

  v4 = v0[1];
  v5 = v0[18];

  return v4();
}

uint64_t implicit closure #1 in MeshResource.init(from:)()
{
  type metadata accessor for MainActor();
  *(v0 + 88) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](implicit closure #1 in MeshResource.init(from:), v2, v1);
}

{
  v2 = v0[10];
  v1 = v0[11];

  v3 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v3 + 120, (v0 + 2));
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  (*(v5 + 32))(v4, v5);
  Mutable = REAssetServiceMeshAssetCreateMutable();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  *v2 = Mutable;
  v7 = v0[1];

  return v7();
}

uint64_t static MeshResource.generate(from:)(_OWORD *a1)
{
  v2 = a1[1];
  v1[5] = *a1;
  v1[6] = v2;
  v1[7] = a1[2];
  return MEMORY[0x1EEE6DFA0](static MeshResource.generate(from:), 0, 0);
}

uint64_t static MeshResource.generateAsync(from:)(__int128 *a1)
{
  v8 = a1[1];
  v9 = *a1;
  v7 = a1[2];
  v1 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v1 + 120, &v10);
  v2 = *(&v11 + 1);
  v3 = v12;
  __swift_project_boxed_opaque_existential_1(&v10, *(&v11 + 1));
  (*(v3 + 32))(v2, v3);
  Mutable = REAssetServiceMeshAssetCreateMutable();
  if (!REAssetGetSwiftObject())
  {
    goto LABEL_4;
  }

  type metadata accessor for MeshResource();
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
LABEL_4:
    type metadata accessor for MeshResource();
    *(swift_allocObject() + 16) = Mutable;
    RERetain();
    REAssetSetSwiftObject();
  }

  RERelease();
  __swift_destroy_boxed_opaque_existential_1(&v10);
  v10 = v9;
  v11 = v8;
  v12 = v7;
  v5 = MeshResource.replaceAsync(with:)(&v10);

  return v5;
}

uint64_t static MeshResource.generate(from:)(uint64_t a1)
{
  *(v1 + 312) = a1;
  return MEMORY[0x1EEE6DFA0](static MeshResource.generate(from:), 0, 0);
}

{
  v1[2] = type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  type metadata accessor for MeshResource();

  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = static MeshResource.generate(from:);

  return MeshResource.init(from:)(a1);
}

{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *v2;
  v5[5] = v1;

  v8 = v5[3];
  v9 = v5[2];
  if (v3)
  {
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
    v13 = static MeshResource.generate(from:);
  }

  else
  {
    v5[6] = a1;
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v14;
    v13 = static MeshResource.generate(from:);
  }

  return MEMORY[0x1EEE6DFA0](v13, v10, v12);
}

uint64_t static MeshResource.generateAsync(from:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = specialized static __ServiceLocator.shared.getter();
  v8 = *(*(v7 + 168) + 16);
  swift_beginAccess();
  v9 = *(v7 + 24);
  swift_unownedRetainStrong();
  v10 = *(v9 + 32);

  v11 = v8;
  v12 = v10;

  *v6 = v12;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v6, v2);
  if (v12)
  {
    v15 = swift_allocObject();
    v15[2] = v11;
    v15[3] = a1;
    v15[4] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA12MeshResourceCGMd, &_s10RealityKit11LoadRequestCyAA12MeshResourceCGMR);
    v16 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit12MeshResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit12MeshResourceCs5Error_pGSgGMR);
    v17 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v17 + 16) = v18;
    *(v17 + 24) = 0;
    *(v17 + 32) = -1;
    *(v16 + 16) = v17;
    v19 = swift_allocObject();
    v19[2] = partial apply for closure #1 in static MeshResource.generateAsync(from:);
    v19[3] = v15;
    v19[4] = v17;
    v19[5] = 0;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit12MeshResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit12MeshResourceCs5Error_pGMR);
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();

    v23 = Future.init(_:)();

    *(v16 + 24) = v23;
    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in static MeshResource.generateAsync(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v25 = a3;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v14 = *(v24 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<TextureResource, Error>) -> ();
  v19[4] = v18;
  v19[5] = a5;
  aBlock[4] = partial apply for closure #1 in closure #1 in static MeshResource.generateAsync(from:);
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_27;
  v20 = _Block_copy(aBlock);

  v21 = a5;
  static DispatchQoS.unspecified.getter();
  v26 = MEMORY[0x1E69E7CC0];
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v17, v13, v20);
  _Block_release(v20);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v24);
}

uint64_t closure #1 in closure #1 in static MeshResource.generateAsync(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v51 = v15;
    v52 = v14;
    v53 = a4;
    v54 = v8;
    v55 = v7;
    v56 = a3;
    v77 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
    v19 = v77;
    v20 = (a1 + 32);
    for (i = v18 - 1; ; --i)
    {
      v22 = v20[3];
      v23 = v20[5];
      v74 = v20[4];
      v75 = v23;
      v24 = v20[1];
      aBlock = *v20;
      v71 = v24;
      v25 = v20[3];
      v27 = *v20;
      v26 = v20[1];
      v72 = v20[2];
      v73 = v25;
      v28 = v20[5];
      v64 = v74;
      v65 = v28;
      v60 = v27;
      v61 = v26;
      v76 = *(v20 + 12);
      v66 = *(v20 + 12);
      v62 = v72;
      v63 = v22;
      outlined init with copy of MeshDescriptor(&aBlock, v59);
      MeshDescriptor.makeGeomMesh()(&v67);
      if (v69)
      {
        v60 = v67;
        LOWORD(v61) = v68;
        lazy protocol witness table accessor for type GeomMeshError and conformance GeomMeshError();
        swift_willThrowTypedImpl();
        v31 = v60;
        v32 = v61;
        v33 = swift_allocError();
        *v34 = v31;
        *(v34 + 16) = v32;
        outlined destroy of MeshDescriptor(&aBlock);

        v35 = swift_allocObject();
        v36 = v56;
        v35[2] = v57;
        v35[3] = v36;
        v35[4] = v33;
        *&v62 = partial apply for closure #2 in doGenerateAsync #1 @Sendable () in closure #1 in closure #1 in TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:);
        *(&v62 + 1) = v35;
        *&v60 = MEMORY[0x1E69E9820];
        *(&v60 + 1) = 1107296256;
        *&v61 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        *(&v61 + 1) = &block_descriptor_196;
        v37 = _Block_copy(&v60);

        v38 = v33;
        static DispatchQoS.unspecified.getter();
        v59[0] = MEMORY[0x1E69E7CC0];
        _sSo10CFErrorRefaABs5Error10FoundationWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        v39 = v55;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x1C68F3CA0](0, v17, v11, v37);
        _Block_release(v37);

        (*(v54 + 8))(v11, v39);
        (*(v51 + 8))(v17, v52);
      }

      v58 = v67;
      outlined destroy of MeshDescriptor(&aBlock);
      v77 = v19;
      v30 = v19[2];
      v29 = v19[3];
      if (v30 >= v29 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
        v19 = v77;
      }

      v19[2] = v30 + 1;
      v19[v30 + 4] = v58;
      if (!i)
      {
        break;
      }

      v20 = (v20 + 104);
    }

    a3 = v56;
  }

  REMeshCompileOptionsCreate();
  v41 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v41 + 120, &v60);
  v42 = *(&v61 + 1);
  v43 = v62;
  __swift_project_boxed_opaque_existential_1(&v60, *(&v61 + 1));
  (*(v43 + 32))(v42, v43);
  v44 = v19[2];
  v45 = swift_allocObject();
  *(v45 + 16) = v57;
  *(v45 + 24) = a3;
  *&v72 = partial apply for closure #2 in closure #1 in closure #1 in static MeshResource.generateAsync(from:);
  *(&v72 + 1) = v45;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v71 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer?, @guaranteed CFErrorRef?) -> ();
  *(&v71 + 1) = &block_descriptor_202;
  v46 = _Block_copy(&aBlock);

  v47 = v19 + 4;
  REAssetManagerMeshAssetCreateFromModelsWithOptionsAsyncWithError();
  _Block_release(v46);
  __swift_destroy_boxed_opaque_existential_1(&v60);
  for (j = v19[2]; j; --j)
  {
    v49 = *v47++;
    RERelease();
  }

  return RERelease();
}

void closure #2 in closure #1 in closure #1 in static MeshResource.generateAsync(from:)(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t))
{
  if (a1)
  {
    if (REAssetGetSwiftObject())
    {
      type metadata accessor for MeshResource();
      v5 = swift_dynamicCastClass();
      if (v5)
      {
LABEL_6:
        a3(v5, 0);

        return;
      }

      swift_unknownObjectRelease();
    }

    type metadata accessor for MeshResource();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    RERetain();
    REAssetSetSwiftObject();
    goto LABEL_6;
  }

  if (a2)
  {
    type metadata accessor for CFErrorRef(0);
    _sSo10CFErrorRefaABs5Error10FoundationWlTm_4(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
    v7 = swift_allocError();
    *v8 = a2;
  }

  else
  {
    lazy protocol witness table accessor for type MeshResourceError and conformance MeshResourceError();
    v7 = swift_allocError();
    *v9 = xmmword_1C18A4F10;
  }

  v10 = a2;
  a3(v7, 1);
}

uint64_t MeshResource.Skeleton.Joint.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MeshResource.Skeleton.Joint.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MeshResource.Skeleton.Joint.parentIndex.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t MeshResource.Skeleton.Joint.parentIndex.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

__n128 MeshResource.Skeleton.Joint.inverseBindPoseMatrix.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 48);
  v3 = *(v0 + 64);
  v4 = *(v0 + 80);
  return result;
}

void MeshResource.Skeleton.Joint.inverseBindPoseMatrix.setter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

__n128 MeshResource.Skeleton.Joint.restPoseTransform.getter()
{
  result = *(v0 + 96);
  v2 = *(v0 + 112);
  v3 = *(v0 + 128);
  return result;
}

void MeshResource.Skeleton.Joint.restPoseTransform.setter(__n128 a1, __n128 a2, __n128 a3)
{
  v3[6] = a1;
  v3[7] = a2;
  v3[8] = a3;
}

unint64_t MeshResource.Skeleton.Joint.init(name:parentIndex:inverseBindPoseMatrix:restPoseTransform:)@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, __n128 *a5@<X8>, __n128 a6@<Q0>, __n128 a7@<Q1>, __n128 a8@<Q2>, __n128 a9@<Q3>, __n128 a10@<Q4>, __n128 a11@<Q5>, __n128 a12@<Q6>)
{
  a5->n128_u64[0] = result;
  a5->n128_u64[1] = a2;
  a5[1].n128_u64[0] = a3;
  a5[1].n128_u8[8] = a4 & 1;
  a5[2] = a6;
  a5[3] = a7;
  a5[4] = a8;
  a5[5] = a9;
  a5[6] = a10;
  a5[7] = a11;
  a5[8] = a12;
  return result;
}

uint64_t MeshResource.Skeleton.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MeshResource.Skeleton.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MeshResource.Skeleton.joints.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t MeshResource.Skeleton.init(id:joints:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void MeshResource.Skeleton.init(id:jointNames:inverseBindPoseMatrices:restPoseTransforms:parentIndices:)(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if (a6)
  {
    v19 = a1;
    v20 = a2;
    v18 = a3;
    v9 = a4;
    v10 = a5;
    v11 = *(a6 + 16);
    if (v11)
    {
      v21 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
      v12 = v21;
      v13 = *(v21 + 16);
      v14 = (a6 + 40);
      do
      {
        if (*v14)
        {
          v15 = -1;
        }

        else
        {
          v15 = *(v14 - 1);
        }

        v21 = v12;
        v16 = *(v12 + 24);
        if (v13 >= v16 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v13 + 1, 1);
          v12 = v21;
        }

        *(v12 + 16) = v13 + 1;
        *(v12 + 8 * v13 + 32) = v15;
        v14 += 16;
        ++v13;
        --v11;
      }

      while (v11);
    }

    else
    {

      v12 = MEMORY[0x1E69E7CC0];
    }

    a5 = v10;
    a4 = v9;
    a3 = v18;
    a1 = v19;
    a2 = v20;
  }

  else
  {
    v12 = 0;
  }

  MeshResource.Skeleton.init(id:jointNames:inverseBindPose:localRestPose:parentIndices:)(a1, a2, a3, a4, a5, v12, &v21);
  v17 = v22;
  *a7 = v21;
  *(a7 + 8) = v17;
}

uint64_t closure #1 in MeshResource.Skeleton.init(id:jointNames:inverseBindPose:localRestPose:parentIndices:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    result = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(result + 16) = v4;
    v6 = (result + 16);
    if (HIDWORD(v4))
    {
      goto LABEL_28;
    }

    v7 = result;
    v8 = result + 32;
    RESkeletonDefinitionGetParentIndices();
    *(v7 + 16) = v4;
    type metadata accessor for RESRT(0);
    v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v9 + 16) = v4;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
    v8 = MEMORY[0x1E69E7CC0] + 32;
    RESkeletonDefinitionGetParentIndices();
    *(v9 + 16) = 0;
    v6 = (v9 + 16);
  }

  result = RESkeletonDefinitionGetLocalRestPoses();
  *(v9 + 16) = v4;
  v10 = *(a3 + 16);
  v11 = *(v10 + 16);
  if (v11)
  {
    if (v11 > v4 || v11 > *v6)
    {
      goto LABEL_29;
    }

    v13 = 0;
    v14 = 0;
    v15 = (v9 + 64);
    while (1)
    {
      v16 = *(v8 + 4 * v14);
      if (v16 == -1)
      {
        v17 = 0;
      }

      else
      {
        v17 = v16;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      *(a3 + 16) = v10;
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
        v10 = result;
        *(a3 + 16) = result;
      }

      if (v14 >= *(v10 + 16))
      {
        break;
      }

      v18 = v10 + v13;
      *(v18 + 48) = v17;
      *(v18 + 56) = v16 == -1;
      v22 = *(v15 - 1);
      v23 = *(v15 - 2);
      v21 = *v15;
      if (one-time initialization token for identity != -1)
      {
        swift_once();
      }

      v19 = *(a3 + 16);
      result = swift_isUniquelyReferenced_nonNull_native();
      *(a3 + 16) = v19;
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
        v19 = result;
        *(a3 + 16) = result;
      }

      if (v14 >= *(v19 + 16))
      {
        goto LABEL_27;
      }

      ++v14;
      v20 = (v19 + v13);
      v20[8] = v23;
      v20[9] = v22;
      v20[10] = v21;
      v10 = *(a3 + 16);
      v13 += 144;
      v15 += 3;
      if (v11 == v14)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return result;
  }

LABEL_23:
}

uint64_t (*MeshResource.Part.skeletonID.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return MeshResource.Part.skeletonID.modify;
}

uint64_t MeshResource.Part.skeletonID.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  if (a2)
  {
    v6 = a1[1];

    *(v5 + 24) = v3;
    *(v5 + 32) = v2;
  }

  else
  {
    v8 = a1[3];

    *(v5 + 24) = v3;
    *(v5 + 32) = v2;
  }

  return result;
}

uint64_t MeshResource.Part.jointInfluences.setter(_OWORD *a1)
{
  v2 = a1[9];
  v60 = a1[8];
  v61[0] = v2;
  *(v61 + 9) = *(a1 + 153);
  v3 = a1[5];
  v56 = a1[4];
  v57 = v3;
  v4 = a1[7];
  v58 = a1[6];
  v59 = v4;
  v5 = a1[1];
  v52 = *a1;
  v53 = v5;
  v6 = a1[3];
  v54 = a1[2];
  v55 = v6;
  if (one-time initialization token for jointInfluences != -1)
  {
    v35 = a1;
    swift_once();
    a1 = v35;
  }

  v7 = static MeshBuffers.jointInfluences;
  v8 = unk_1EBEAD140;
  v9 = word_1EBEAD148;
  v10 = HIBYTE(word_1EBEAD148);
  v11 = a1[9];
  v70 = a1[8];
  v71[0] = v11;
  *(v71 + 9) = *(a1 + 153);
  v12 = a1[5];
  v66 = a1[4];
  v67 = v12;
  v13 = a1[7];
  v68 = a1[6];
  v69 = v13;
  v14 = a1[1];
  v62 = *a1;
  v63 = v14;
  v15 = a1[3];
  v64 = a1[2];
  v65 = v15;
  if (_s17RealityFoundation19ShaderGraphMaterialVSgWOg(&v62) == 1)
  {
    *&v40 = 0;
    v38 = 0u;
    v39 = 0u;
    if (v10)
    {
      v16 = 256;
    }

    else
    {
      v16 = 0;
    }

    specialized Dictionary.subscript.setter(&v38, v7, v8, v16 | v9);
    if (one-time initialization token for jointInfluenceEndIndices != -1)
    {
      swift_once();
    }

    v17 = static MeshBuffers.jointInfluenceEndIndices;
    v18 = *algn_1EBEAD158;
    v19 = word_1EBEAD160;
    *&v40 = 0;
    v38 = 0u;
    v39 = 0u;
    if (HIBYTE(word_1EBEAD160))
    {
      v20 = 256;
    }

    else
    {
      v20 = 0;
    }

    result = specialized Dictionary.subscript.setter(&v38, v17, v18, v20 | v19);
LABEL_29:
    *(v1 + 40) = 0;
    *(v1 + 44) = 1;
    return result;
  }

  v50[2] = v64;
  v50[3] = v65;
  v50[4] = v66;
  v51 = v67;
  v50[0] = v62;
  v50[1] = v63;
  v36[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_AA0C14JointInfluenceVGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_AA0C14JointInfluenceVGMR);
  v36[4] = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
  v22 = swift_allocObject();
  v36[0] = v22;

  outlined init with copy of [String : String](&v62, v48, &_s17RealityFoundation10MeshBufferVyAA0C14JointInfluenceVGMd, &_s17RealityFoundation10MeshBufferVyAA0C14JointInfluenceVGMR);

  outlined init with copy of [String : String](&v62, v48, &_s17RealityFoundation10MeshBufferVyAA0C14JointInfluenceVGMd, &_s17RealityFoundation10MeshBufferVyAA0C14JointInfluenceVGMR);
  if (v10)
  {
    v23 = 256;
  }

  else
  {
    v23 = 0;
  }

  _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCAA0C14JointInfluenceV_AA0C7BuffersO0P0Vy_APGTt2B5Tm(v7, v8, v23 | v9, v50, v22 + 16);
  specialized Dictionary.subscript.setter(v36, v7, v8, v23 | v9);
  outlined destroy of BodyTrackingComponent?(&v62, &_s17RealityFoundation10MeshBufferVyAA0C14JointInfluenceVGMd, &_s17RealityFoundation10MeshBufferVyAA0C14JointInfluenceVGMR);
  v46 = v60;
  *v47 = v61[0];
  *&v47[9] = *(v61 + 9);
  v42 = v56;
  v43 = v57;
  v44 = v58;
  v45 = v59;
  v38 = v52;
  v39 = v53;
  v40 = v54;
  v41 = v55;
  outlined init with copy of MeshResource.JointInfluences.InfluenceRate(&v43 + 8, v48);
  outlined destroy of BodyTrackingComponent?(&v52, &_s10RealityKit12MeshResourceC0A10FoundationE15JointInfluencesVSgMd, &_s10RealityKit12MeshResourceC0A10FoundationE15JointInfluencesVSgMR);
  v24 = DWORD2(v43);
  if ((v47[24] & 0x80000000) != 0)
  {
    *&v48[1] = v44;
    *&v48[3] = v45;
    *&v48[5] = v46;
    *&v48[7] = *v47;
    v48[0] = *(&v43 + 1);
    v48[9] = *&v47[16];
    v49 = v47[24] & 0x7F;
    if (one-time initialization token for jointInfluenceEndIndices != -1)
    {
      swift_once();
    }

    v29 = static MeshBuffers.jointInfluenceEndIndices;
    v30 = *algn_1EBEAD158;
    v31 = word_1EBEAD160;
    v32 = HIBYTE(word_1EBEAD160);
    v37[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5Int32VGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5Int32VGMR);
    v37[4] = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
    v33 = swift_allocObject();
    v37[0] = v33;

    outlined init with copy of MeshResource.JointInfluences.InfluenceRate(&v43 + 8, v36);
    if (v32)
    {
      v34 = 256;
    }

    else
    {
      v34 = 0;
    }

    _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCAA0C14JointInfluenceV_AA0C7BuffersO0P0Vy_APGTt2B5Tm(v29, v30, v34 | v31, v48, v33 + 16);
    specialized Dictionary.subscript.setter(v37, v29, v30, v34 | v31);
    result = outlined destroy of MeshResource.JointInfluences.InfluenceRate(&v43 + 8);
    goto LABEL_29;
  }

  if (one-time initialization token for jointInfluenceEndIndices != -1)
  {
    swift_once();
  }

  v25 = static MeshBuffers.jointInfluenceEndIndices;
  v26 = *algn_1EBEAD158;
  v27 = word_1EBEAD160;
  memset(v48, 0, 40);
  if (HIBYTE(word_1EBEAD160))
  {
    v28 = 256;
  }

  else
  {
    v28 = 0;
  }

  result = specialized Dictionary.subscript.setter(v48, v25, v26, v28 | v27);
  *(v1 + 40) = v24;
  *(v1 + 44) = 0;
  return result;
}

void (*MeshResource.Part.jointInfluences.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x2C8uLL);
  }

  *a1 = v3;
  *(v3 + 704) = v1;
  v6 = *v1;
  v7 = v1[1];
  *v8 = v1[2];
  *&v8[9] = *(v1 + 41);
  MeshResource.Part.jointInfluences.getter(v4, v3);
  return MeshResource.Part.jointInfluences.modify;
}

void MeshResource.Part.jointInfluences.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[7];
    v5 = v2[8];
    v4 = v2[9];
    v2[30] = v5;
    v2[31] = v4;
    *(v2 + 505) = *(v2 + 153);
    v6 = v2[3];
    v8 = v2[4];
    v7 = v2[5];
    v2[26] = v8;
    v2[27] = v7;
    v9 = v2[5];
    v11 = v2[6];
    v10 = v2[7];
    v2[28] = v11;
    v2[29] = v10;
    v12 = v2[1];
    v2[22] = *v2;
    v2[23] = v12;
    v13 = v2[3];
    v15 = *v2;
    v14 = v2[1];
    v16 = v2[2];
    v2[24] = v16;
    v2[25] = v13;
    v17 = v2[9];
    v38 = v5;
    v39[0] = v17;
    *(v39 + 9) = *(v2 + 153);
    v34 = v8;
    v35 = v9;
    v36 = v11;
    v37 = v3;
    v30 = v15;
    v31 = v14;
    v18 = *(v2 + 88);
    v32 = v16;
    v33 = v6;
    outlined init with copy of [String : String]((v2 + 22), (v2 + 33), &_s10RealityKit12MeshResourceC0A10FoundationE15JointInfluencesVSgMd, &_s10RealityKit12MeshResourceC0A10FoundationE15JointInfluencesVSgMR);
    MeshResource.Part.jointInfluences.setter(&v30);
    v19 = v2[9];
    v2[19] = v2[8];
    v2[20] = v19;
    *(v2 + 329) = *(v2 + 153);
    v20 = v2[5];
    v2[15] = v2[4];
    v2[16] = v20;
    v21 = v2[7];
    v2[17] = v2[6];
    v2[18] = v21;
    v22 = v2[1];
    v2[11] = *v2;
    v2[12] = v22;
    v23 = v2[3];
    v2[13] = v2[2];
    v2[14] = v23;
    outlined destroy of BodyTrackingComponent?((v2 + 11), &_s10RealityKit12MeshResourceC0A10FoundationE15JointInfluencesVSgMd, &_s10RealityKit12MeshResourceC0A10FoundationE15JointInfluencesVSgMR);
  }

  else
  {
    v24 = *(v2 + 88);
    v25 = v2[9];
    v38 = v2[8];
    v39[0] = v25;
    *(v39 + 9) = *(v2 + 153);
    v26 = v2[5];
    v34 = v2[4];
    v35 = v26;
    v27 = v2[7];
    v36 = v2[6];
    v37 = v27;
    v28 = v2[1];
    v30 = *v2;
    v31 = v28;
    v29 = v2[3];
    v32 = v2[2];
    v33 = v29;
    MeshResource.Part.jointInfluences.setter(&v30);
  }

  free(v2);
}

uint64_t MeshResource.JointInfluences.influences.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v4 = *(v1 + 64);
  v10 = *(v1 + 48);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 80);
  v6 = *(v1 + 16);
  v9[0] = *v1;
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return outlined init with copy of [String : String](v9, v8, &_s17RealityFoundation10MeshBufferVyAA0C14JointInfluenceVGMd, &_s17RealityFoundation10MeshBufferVyAA0C14JointInfluenceVGMR);
}

__int128 *MeshResource.JointInfluences.init(influences:influencesPerVertex:)@<X0>(__int128 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 == a2 && (a2 - 256) >= 0xFFFFFF01)
  {
    LOBYTE(v7) = *(result + 80);
    v6 = result[3];
    v3 = result[4];
    v4 = *result;
    v5 = result[1];
    *(a3 + 32) = result[2];
    *(a3 + 48) = v6;
    *(a3 + 64) = v3;
    *a3 = v4;
    *(a3 + 16) = v5;
    *(a3 + 80) = v7;
    *(a3 + 88) = a2;
    *(a3 + 152) = 0;
    *(a3 + 168) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 MeshResource.JointInfluences.init(influences:influencesPerVertex:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[3];
  v22 = a1[2];
  v23 = v4;
  v24 = a1[4];
  LOBYTE(v25) = *(a1 + 80);
  v5 = a1[1];
  v20 = *a1;
  v21 = v5;
  v6 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCs5Int32V_Tt1g50134_s10RealityKit12MeshResourceC0A10FoundationE15JointInfluencesV10influences0H9PerVertexAfD0C6BufferVyAD0cF9InfluenceVG_SaySiGtcfcySrys5F13VGz_SiztXEfU_SaySiGSiTf1nc_nTf4ngn_n(*(a2 + 16), a2, *(a2 + 16));

  _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5Int32V_AA05ArrayD0VyAIGTt1g5(v6, v16);
  v7 = v18;
  v8 = v17 & 0x10F;
  v9 = v19 & 3 | 0x80;
  result = v16[0];
  v11 = v16[1];
  v12 = v16[2];
  v13 = v16[3];
  v14 = v23;
  *(a3 + 32) = v22;
  *(a3 + 48) = v14;
  *(a3 + 64) = v24;
  *(a3 + 80) = v25;
  v15 = v21;
  *a3 = v20;
  *(a3 + 16) = v15;
  *(a3 + 88) = result;
  *(a3 + 104) = v11;
  *(a3 + 120) = v12;
  *(a3 + 136) = v13;
  *(a3 + 152) = v8;
  *(a3 + 160) = v7;
  *(a3 + 168) = v9;
  return result;
}

uint64_t key path setter for MeshResource.Contents.skeletons : MeshResource.Contents(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);

  *(a2 + 32) = v3;
  *(a2 + 40) = v4;
  return result;
}

uint64_t (*MeshResource.Contents.skeletons.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  *a1 = v3;
  a1[1] = v4;

  return MeshResource.Contents.skeletons.modify;
}

uint64_t MeshResource.Contents.skeletons.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  v6 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (a2)
  {
    v7 = *a1;

    *(v3 + 32) = v4;
    *(v3 + 40) = v2;
  }

  else
  {
    v9 = *(v3 + 32);

    *(v3 + 32) = v4;
    *(v3 + 40) = v2;
  }

  return result;
}

uint64_t static MeshResource.generate(from:skeletons:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v74 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = v74;
    v6 = (a1 + 32);
    for (i = v3 - 1; ; --i)
    {
      v8 = v6[3];
      v9 = v6[5];
      v71 = v6[4];
      v72 = v9;
      v10 = v6[1];
      v67 = *v6;
      v68 = v10;
      v11 = v6[3];
      v13 = *v6;
      v12 = v6[1];
      v69 = v6[2];
      v70 = v11;
      v14 = v6[5];
      v61 = v71;
      v62 = v14;
      v57 = v13;
      v58 = v12;
      v73 = *(v6 + 12);
      v63 = *(v6 + 12);
      v59 = v69;
      v60 = v8;
      outlined init with copy of MeshDescriptor(&v67, v56);
      MeshDescriptor.makeGeomMesh()(&v64);
      if (v66)
      {
        break;
      }

      v54 = v64;
      outlined destroy of MeshDescriptor(&v67);
      v74 = v4;
      v16 = *(v4 + 16);
      v15 = *(v4 + 24);
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v4 = v74;
      }

      *(v4 + 16) = v16 + 1;
      *(v4 + 8 * v16 + 32) = v54;
      if (!i)
      {
        goto LABEL_8;
      }

      v6 = (v6 + 104);
    }

    v57 = v64;
    LOWORD(v58) = v65;
    lazy protocol witness table accessor for type GeomMeshError and conformance GeomMeshError();
    swift_willThrowTypedImpl();
    v47 = *(&v57 + 1);
    v37 = v57;
    v48 = v58;
    swift_allocError();
    *v49 = v37;
    *(v49 + 8) = v47;
    *(v49 + 16) = v48;
    outlined destroy of MeshDescriptor(&v67);

    return v37;
  }

LABEL_8:
  v51 = v4;
  v17 = *(a2 + 16);
  v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0, MEMORY[0x1E69E7CC0]);
  v53 = v17;
  if (!v17)
  {
LABEL_20:
    REMeshCompileOptionsCreate();
    v34 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v34 + 120, &v67);
    v35 = *(&v68 + 1);
    v36 = v69;
    __swift_project_boxed_opaque_existential_1(&v67, *(&v68 + 1));
    (*(v36 + 32))(v35, v36);
    v37 = v51;
    v38 = *(v51 + 16);
    v39 = *(v75 + 2);
    v40 = (v51 + 32);
    v41 = v75 + 32;
    v42 = REAssetManagerMeshAssetCreateFromModelsAndSkeletonsWithOptionsNullable();
    __swift_destroy_boxed_opaque_existential_1(&v67);
    for (j = *(v51 + 16); j; --j)
    {
      v44 = *v40++;
      RERelease();
    }

    for (k = *(v75 + 2); k; --k)
    {
      v46 = *v41;
      v41 += 8;
      RERelease();
    }

    if (!v42)
    {
      lazy protocol witness table accessor for type MeshResourceError and conformance MeshResourceError();
      swift_allocError();
      *v50 = xmmword_1C18A4F10;
      swift_willThrow();
      RERelease();
      return v37;
    }

    REAssetHandleLoadNow();
    if (REAssetGetSwiftObject())
    {
      type metadata accessor for MeshResource();
      v37 = swift_dynamicCastClass();
      if (v37)
      {
LABEL_29:
        RERelease();
        RERelease();
        return v37;
      }

      swift_unknownObjectRelease();
    }

    type metadata accessor for MeshResource();
    v37 = swift_allocObject();
    *(v37 + 16) = v42;
    RERetain();
    REAssetSetSwiftObject();
    goto LABEL_29;
  }

  v18 = 0;
  v52 = a2 + 32;
  while (1)
  {
    v20 = (v52 + 32 * v18);
    v21 = v20[2];
    v22 = v20[3];
    v23 = *v20;
    v24 = v20[1];

    RESkeletonDefinitionCreate();
    String.utf8CString.getter();
    RESkeletonDefinitionSetName();

    v26 = *(v22 + 16);
    if (HIDWORD(v26))
    {
      break;
    }

    v55 = v18;
    result = RESkeletonDefinitionSetJointCount();
    if (v26)
    {
      v27 = 0;
      v28 = (v22 + 40);
      do
      {
        v29 = *(v28 - 1);
        v30 = *v28;
        String.utf8CString.getter();
        RESkeletonDefinitionSetJointName();

        v28 += 2;
        ++v27;
      }

      while (v26 != v27);
    }

    if (HIDWORD(*(v21 + 16)))
    {
      goto LABEL_34;
    }

    RESkeletonDefinitionSetInverseBindPoses();
    GeomSkeletonV2 = RESkeletonDefinitionCreateGeomSkeletonV2();
    RERelease();

    if (GeomSkeletonV2)
    {
      v33 = *(v75 + 2);
      v32 = *(v75 + 3);
      if (v33 >= v32 >> 1)
      {
        v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v75);
      }

      v19 = v75;
      *(v75 + 2) = v33 + 1;
      *&v19[8 * v33 + 32] = GeomSkeletonV2;
    }

    v18 = v55 + 1;
    if (v55 + 1 == v53)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t MeshResource.Level_v1.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MeshResource.Level_v1.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MeshResource.Level_v1.levelAssembly.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);

  *(v1 + 16) = v2;
  return result;
}

void MeshResource.Level_v1.levelStrategy.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 28);
  *a1 = *(v1 + 24);
  *(a1 + 4) = v2;
}

uint64_t MeshResource.Level_v1.levelStrategy.setter(uint64_t result)
{
  v2 = *(result + 4);
  *(v1 + 24) = *result;
  *(v1 + 28) = v2;
  return result;
}

uint64_t MeshResource.Level_v1.init(id:levelAssembly:levelStrategy:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, int *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a3;
  v6 = *a4;
  v7 = *(a4 + 4);
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = v5;
  *(a5 + 24) = v6;
  *(a5 + 28) = v7;
  return result;
}

double MeshResource.Model.init(id:parts:levels:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  MeshPartCollection.init(_:)(a3, &v8);
  *(a5 + 16) = v8;
  MeshLevelCollection_v1.init(_:)(a4, &v8);
  result = *&v8;
  *(a5 + 32) = v8;
  return result;
}

uint64_t MeshResource.Part.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v24[-v8];
  v10 = v0[1];
  v28 = *v0;
  v29 = v10;
  v12 = *v0;
  v11 = v0[1];
  *v30 = v0[2];
  *&v30[9] = *(v0 + 41);
  v25 = v12;
  v26 = v11;
  v27[0] = v0[2];
  *(v27 + 9) = *(v0 + 41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C189FFC0;
  *(v13 + 32) = 25705;
  *(v13 + 40) = 0xE200000000000000;
  v14 = v29;
  v15 = MEMORY[0x1E69E6158];
  *(v13 + 48) = *(&v28 + 1);
  *(v13 + 56) = v14;
  *(v13 + 72) = v15;
  strcpy((v13 + 80), "materialIndex");
  v16 = *&v30[16];
  v17 = MEMORY[0x1E69E6530];
  *(v13 + 94) = -4864;
  *(v13 + 96) = v16;
  *(v13 + 120) = v17;
  *(v13 + 128) = 0x6E6F74656C656B73;
  *(v13 + 136) = 0xEA00000000004449;
  v19 = *(&v29 + 1);
  v18 = *v30;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  *(v13 + 144) = v19;
  *(v13 + 152) = v18;
  *(v13 + 168) = v20;
  *(v13 + 176) = 0x73726566667562;
  *(v13 + 184) = 0xE700000000000000;
  v21 = MeshBufferDictionary.entries.getter(v28);
  *(v13 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD6ValuesVy17RealityFoundation11MeshBuffersO10IdentifierVAC03AnyD6BufferV_GMd, &_sSD6ValuesVy17RealityFoundation11MeshBuffersO10IdentifierVAC03AnyD6BufferV_GMR);
  *(v13 + 192) = v21;
  v22 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
  (*(v2 + 104))(v5, *MEMORY[0x1E69E75D8], v1);
  outlined init with copy of MeshResource.Part(&v28, v24);

  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t MeshResource.replace(with:)(_OWORD *a1)
{
  *(v2 + 16) = v1;
  v3 = a1[1];
  *(v2 + 24) = *a1;
  *(v2 + 40) = v3;
  *(v2 + 56) = a1[2];
  return MEMORY[0x1EEE6DFA0](MeshResource.replace(with:), 0, 0);
}

uint64_t MeshResource.replace(with:)()
{
  v27 = *(v0 + 24);
  v30 = *(v0 + 40);
  v31 = *(v0 + 56);
  v3 = MeshResource.Contents.makeDefinitions()();
  rawValue = v3._0._rawValue;
  *(v0 + 72) = v3;
  if (!v4)
  {
    if (v3._0._rawValue >> 62)
    {
      rawValue = __CocoaSet.count.getter();
      v7 = rawValue;
    }

    else
    {
      v7 = *((v3._0._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = MEMORY[0x1E69E7CC0];
    if (v7)
    {
      v28 = MEMORY[0x1E69E7CC0];
      rawValue = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 & ~(v7 >> 63), 0);
      if (v7 < 0)
      {
        goto LABEL_36;
      }

      v10 = 0;
      v8 = v28;
      do
      {
        if ((v3._0._rawValue & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1C68F41F0](v10, v3._0._rawValue);
        }

        else
        {
          v12 = *(v3._0._rawValue + v10 + 4);
        }

        v13 = *(v11 + 16);

        v15 = *(v28 + 16);
        v14 = *(v28 + 24);
        if (v15 >= v14 >> 1)
        {
          rawValue = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        }

        ++v10;
        *(v28 + 16) = v15 + 1;
        *(v28 + 8 * v15 + 32) = v13;
      }

      while (v7 != v10);
    }

    if (v3._1._rawValue >> 62)
    {
      rawValue = __CocoaSet.count.getter();
      v16 = rawValue;
    }

    else
    {
      v16 = *((v3._1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = MEMORY[0x1E69E7CC0];
    if (v16)
    {
      v29 = MEMORY[0x1E69E7CC0];
      rawValue = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16 & ~(v16 >> 63), 0);
      if (v16 < 0)
      {
LABEL_37:
        __break(1u);
        return MEMORY[0x1EEE6DFA0](rawValue, v9, v2);
      }

      v18 = 0;
      v17 = v29;
      do
      {
        if ((v3._1._rawValue & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x1C68F41F0](v18, v3._1._rawValue);
        }

        else
        {
          v20 = *(v3._1._rawValue + v18 + 4);
        }

        v21 = *(v19 + 16);

        v23 = *(v29 + 16);
        v22 = *(v29 + 24);
        if (v23 >= v22 >> 1)
        {
          rawValue = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
        }

        ++v18;
        *(v29 + 16) = v23 + 1;
        *(v29 + 8 * v23 + 32) = v21;
      }

      while (v16 != v18);
    }

    v9 = *(v8 + 16);
    if (HIDWORD(v9))
    {
      __break(1u);
    }

    else if (!HIDWORD(*(v17 + 16)))
    {
      *(v0 + 88) = REMeshResourceDefinitionCreate();

      type metadata accessor for MainActor();
      *(v0 + 96) = static MainActor.shared.getter();
      v24 = dispatch thunk of Actor.unownedExecutor.getter();
      v26 = v25;
      rawValue = MeshResource.replace(with:);
      v9 = v24;
      v2 = v26;

      return MEMORY[0x1EEE6DFA0](rawValue, v9, v2);
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v5 = *(v0 + 8);

  return v5();
}

{
  v1 = v0[12];
  v2 = v0[2];

  if (*(v2 + 16))
  {
    if (REAssetHandleConvertToMutable())
    {
      v3 = v0[11];
      REMeshAssetReplaceAllWithResource();
      v4 = MeshResource.replace(with:);
      goto LABEL_7;
    }

    lazy protocol witness table accessor for type MeshResourceError and conformance MeshResourceError();
    v5 = swift_allocError();
    *v7 = xmmword_1C18B8FE0;
  }

  else
  {
    lazy protocol witness table accessor for type MeshResourceError and conformance MeshResourceError();
    v5 = swift_allocError();
    *v6 = 0;
    v6[1] = 0;
  }

  v0[13] = v5;
  swift_willThrow();
  v4 = MeshResource.replace(with:);
LABEL_7:

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  RERelease();

  v4 = v0[1];

  return v4();
}

{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  RERelease();

  v4 = v0[13];
  v5 = v0[1];

  return v5();
}

uint64_t specialized static MeshResource.Skeleton.Joint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v7 = *(a1 + 64);
  v6 = *(a1 + 80);
  v8 = *(a1 + 96);
  v9 = *(a1 + 112);
  v10 = *(a1 + 128);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 48);
  v15 = *(a2 + 64);
  v16 = *(a2 + 80);
  v17 = *(a2 + 96);
  v18 = *(a2 + 112);
  v19 = *(a2 + 128);
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    v35 = *(a1 + 112);
    v36 = *(a1 + 96);
    v33 = *(a1 + 64);
    v34 = *(a1 + 128);
    v32 = *(a1 + 80);
    v30 = *(a2 + 112);
    v31 = *(a2 + 96);
    v28 = *(a1 + 32);
    v29 = *(a2 + 128);
    v26 = *(a2 + 64);
    v27 = *(a1 + 48);
    v24 = *(a2 + 32);
    v25 = *(a2 + 80);
    v23 = *(a2 + 48);
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v14 = v23;
    v13 = v24;
    v16 = v25;
    v15 = v26;
    v5 = v27;
    v4 = v28;
    v19 = v29;
    v18 = v30;
    v17 = v31;
    v6 = v32;
    v7 = v33;
    v10 = v34;
    v9 = v35;
    v8 = v36;
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v11)
    {
      v21 = v12;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v5, v14), vceqq_f32(v4, v13)), vandq_s8(vceqq_f32(v7, v15), vceqq_f32(v6, v16)))) & 0x80000000) == 0)
  {
    return 0;
  }

  return specialized static Transform.== infix(_:_:)(v8, v9, v10, v17, v18, v19);
}

uint64_t specialized MeshResource.Part.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 48);
  v14[2] = *(v9 + 32);
  v14[3] = v10;
  v14[4] = *(v9 + 64);
  v15 = *(v9 + 80);
  v11 = *(v9 + 16);
  v14[0] = *v9;
  v14[1] = v11;
  (*(v12 + 16))(v8);
  return MeshBufferDictionary.subscript.setter(v14, v8, a3, a4);
}

double _s10RealityKit12MeshResourceC0A10FoundationE15JointInfluencesVSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 153) = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t _s17RealityFoundation29OrderedIdentifiableCollectionV17dictionaryLiteralACyxq_Gx_q_td_tcfCSS_0A3Kit12MeshResourceCAAE5ModelVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v4 = *(a1 + 16);
  if (!v4)
  {
    return v2;
  }

  v5 = (a1 + 32);
  for (i = v4 - 1; ; --i)
  {
    v6 = v5[3];
    v53 = v5[2];
    v54 = v6;
    v7 = v5[1];
    v33 = v5;
    v52[0] = *v5;
    v52[1] = v7;
    v8 = *(&v53 + 1);
    v9 = v6;
    v10 = v52[0];
    v55[0] = v52[0];
    v39 = v7;
    v55[1] = v7;
    v36 = v53;
    v37 = *(&v7 + 1);
    v55[2] = v53;
    v55[3] = v6;
    v35 = v2;
    v11 = *(v2 + 2);
    outlined init with copy of [String : String](v52, &v48, &_sSS_10RealityKit12MeshResourceC0A10FoundationE5ModelVtMd, &_sSS_10RealityKit12MeshResourceC0A10FoundationE5ModelVtMR);
    outlined init with copy of [String : String](v55, &v48, &_sSS_10RealityKit12MeshResourceC0A10FoundationE5ModelVtMd, &_sSS_10RealityKit12MeshResourceC0A10FoundationE5ModelVtMR);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v3;
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v10, *(&v10 + 1));
    v15 = v3[2];
    v16 = (v13 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      break;
    }

    v18 = v13;
    if (v3[3] >= v17)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v13)
        {
          goto LABEL_10;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        if (v18)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, isUniquelyReferenced_nonNull_native);
      v19 = specialized __RawDictionaryStorage.find<A>(_:)(v10, *(&v10 + 1));
      if ((v18 & 1) != (v20 & 1))
      {
        goto LABEL_23;
      }

      v14 = v19;
      if (v18)
      {
LABEL_10:

        v3 = v47;
        *(v47[7] + 8 * v14) = v11;
        goto LABEL_14;
      }
    }

    v3 = v47;
    v47[(v14 >> 6) + 8] |= 1 << v14;
    *(v3[6] + 16 * v14) = v10;
    *(v3[7] + 8 * v14) = v11;
    v21 = v3[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_22;
    }

    v3[2] = v23;
LABEL_14:

    v48 = v10;
    v49 = v39;
    *&v50 = v37;
    *(&v50 + 1) = v36;
    *v51 = v8;
    *&v51[8] = v9;
    outlined init with copy of [String : String](&v48, &v41, &_sSS_10RealityKit12MeshResourceC0A10FoundationE5ModelVtMd, &_sSS_10RealityKit12MeshResourceC0A10FoundationE5ModelVtMR);
    v24 = v35;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 2) + 1, 1, v35);
    }

    v26 = *(v24 + 2);
    v25 = *(v24 + 3);
    v27 = v24;
    v28 = v26 + 1;
    if (v26 >= v25 >> 1)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v27);
    }

    v29 = v49;
    v30 = *&v51[16];
    v41 = v10;
    v42 = v39;
    v43 = v37;
    v44 = v36;
    v45 = v8;
    v46 = v9;
    v31 = &v27[48 * v26];
    v2 = v27;
    v38 = *v51;
    v40 = v50;
    outlined destroy of BodyTrackingComponent?(&v41, &_sSS_10RealityKit12MeshResourceC0A10FoundationE5ModelVtMd, &_sSS_10RealityKit12MeshResourceC0A10FoundationE5ModelVtMR);
    *(v2 + 2) = v28;
    *(v31 + 4) = v29;
    *(v31 + 40) = v40;
    *(v31 + 56) = v38;
    *(v31 + 9) = v30;

    if (!i)
    {
      return v2;
    }

    v5 = v33 + 4;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation29OrderedIdentifiableCollectionV17dictionaryLiteralACyxq_Gx_q_td_tcfCSS_0A3Kit12MeshResourceCAAE4PartVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v4 = *(a1 + 16);
  if (!v4)
  {
    return v2;
  }

  v33 = v4 - 1;
  for (i = (a1 + 48); ; i += 5)
  {
    v6 = *i;
    v49[0] = *(i - 1);
    v49[1] = v6;
    v7 = *i;
    v8 = i[2];
    v50 = i[1];
    v51[0] = v8;
    *(v51 + 9) = *(i + 41);
    v9 = v49[0];
    v10 = i[1];
    v46 = *i;
    v47 = v10;
    v48[0] = i[2];
    *(v48 + 9) = *(i + 41);
    v52[0] = v49[0];
    v52[1] = v7;
    v52[2] = v50;
    v53[0] = i[2];
    v11 = v53[0];
    *(v53 + 9) = *(i + 41);
    v43 = v7;
    v44 = v50;
    v45[0] = v11;
    *(v45 + 9) = *(v53 + 9);
    v12 = *(v2 + 2);
    outlined init with copy of [String : String](v49, &v39, &_sSS_10RealityKit12MeshResourceC0A10FoundationE4PartVtMd, &_sSS_10RealityKit12MeshResourceC0A10FoundationE4PartVtMR);
    outlined init with copy of [String : String](v52, &v39, &_sSS_10RealityKit12MeshResourceC0A10FoundationE4PartVtMd, &_sSS_10RealityKit12MeshResourceC0A10FoundationE4PartVtMR);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v3;
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v9, *(&v9 + 1));
    v16 = v3[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      break;
    }

    v20 = v15;
    if (v3[3] < v19)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, isUniquelyReferenced_nonNull_native);
      v14 = specialized __RawDictionaryStorage.find<A>(_:)(v9, *(&v9 + 1));
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_22;
      }

LABEL_8:
      if (v20)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    v23 = v14;
    specialized _NativeDictionary.copy()();
    v14 = v23;
    if (v20)
    {
LABEL_9:
      v22 = v14;

      v3 = v38;
      *(v38[7] + 8 * v22) = v12;
      goto LABEL_13;
    }

LABEL_11:
    v3 = v38;
    v38[(v14 >> 6) + 8] |= 1 << v14;
    *(v3[6] + 16 * v14) = v9;
    *(v3[7] + 8 * v14) = v12;
    v24 = v3[2];
    v18 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v18)
    {
      goto LABEL_21;
    }

    v3[2] = v25;
LABEL_13:
    v36[0] = v43;
    v36[1] = v44;
    v37[0] = v45[0];
    *(v37 + 9) = *(v45 + 9);
    outlined destroy of MeshResource.Part(v36);
    v39 = v9;
    v40 = v46;
    v41 = v47;
    v42[0] = v48[0];
    *(v42 + 9) = *(v48 + 9);
    outlined init with copy of [String : String](&v39, v34, &_sSS_10RealityKit12MeshResourceC0A10FoundationE4PartVtMd, &_sSS_10RealityKit12MeshResourceC0A10FoundationE4PartVtMR);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    }

    v27 = *(v2 + 2);
    v26 = *(v2 + 3);
    if (v27 >= v26 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v2);
    }

    v34[0] = v9;
    v34[1] = v46;
    v34[2] = v47;
    v35[0] = v48[0];
    *(v35 + 9) = *(v48 + 9);
    outlined destroy of BodyTrackingComponent?(v34, &_sSS_10RealityKit12MeshResourceC0A10FoundationE4PartVtMd, &_sSS_10RealityKit12MeshResourceC0A10FoundationE4PartVtMR);
    *(v2 + 2) = v27 + 1;
    v28 = &v2[64 * v27];
    v30 = v41;
    v29 = v42[0];
    v31 = v40;
    *(v28 + 73) = *(v42 + 9);
    *(v28 + 3) = v30;
    *(v28 + 4) = v29;
    *(v28 + 2) = v31;

    if (!v33)
    {
      return v2;
    }

    --v33;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation29OrderedIdentifiableCollectionV17dictionaryLiteralACyxq_Gx_q_td_tcfCSS_0A3Kit12MeshResourceCAAE8Level_v1VTt0g5Tf4g_n(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v4 = *(a1 + 16);
  if (!v4)
  {
    return v2;
  }

  for (i = (a1 + 76); ; i += 48)
  {
    v32 = v4;
    v6 = *(i - 44);
    v7 = *(i - 36);
    v31 = *(i - 28);
    v8 = *(i - 20);
    v9 = *(i - 12);
    v29 = *i;
    v30 = *(i - 1);
    v10 = *(v2 + 2);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
    v14 = v3[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      break;
    }

    v18 = v13;
    if (v3[3] < v17)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, isUniquelyReferenced_nonNull_native);
      v12 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_21;
      }

LABEL_8:
      if (v18)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    v21 = v12;
    specialized _NativeDictionary.copy()();
    v12 = v21;
    if (v18)
    {
LABEL_9:
      v20 = v12;

      *(v3[7] + 8 * v20) = v10;
      goto LABEL_13;
    }

LABEL_11:
    v3[(v12 >> 6) + 8] |= 1 << v12;
    v22 = (v3[6] + 16 * v12);
    *v22 = v6;
    v22[1] = v7;
    *(v3[7] + 8 * v12) = v10;
    v23 = v3[2];
    v16 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v16)
    {
      goto LABEL_20;
    }

    v3[2] = v24;
LABEL_13:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    }

    v26 = *(v2 + 2);
    v25 = *(v2 + 3);
    if (v26 >= v25 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v2);
    }

    *(v2 + 2) = v26 + 1;
    v27 = &v2[32 * v26];
    *(v27 + 4) = v31;
    *(v27 + 5) = v8;
    *(v27 + 6) = v9;
    *(v27 + 14) = v30;
    v27[60] = v29;

    v4 = v32 - 1;
    if (v32 == 1)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation29OrderedIdentifiableCollectionV17dictionaryLiteralACyxq_Gx_q_td_tcfCSS_0A3Kit12MeshResourceCAAE8InstanceVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v4 = *(a1 + 16);
  if (!v4)
  {
    return v2;
  }

  v41 = v4 - 1;
  v5 = (a1 + 48);
  v6 = &_sSS_10RealityKit12MeshResourceC0A10FoundationE8InstanceVtMd;
  while (1)
  {
    v7 = v5[2];
    v8 = v5[4];
    v67 = v5[3];
    v68 = v8;
    v9 = v5[4];
    v69 = v5[5];
    v10 = *v5;
    v64[0] = *(v5 - 1);
    v64[1] = v10;
    v11 = *v5;
    v12 = v5[2];
    v65 = v5[1];
    v66 = v12;
    v13 = v64[0];
    v14 = v5[3];
    v60 = v5[2];
    v61 = v14;
    v15 = v5[5];
    v62 = v5[4];
    v63 = v15;
    v16 = v5[1];
    v58 = *v5;
    v59 = v16;
    v70[0] = v64[0];
    v70[3] = v7;
    v70[4] = v67;
    v17 = v5[5];
    v70[5] = v9;
    v70[6] = v17;
    v70[1] = v11;
    v70[2] = v65;
    v52 = v11;
    v53 = v65;
    v54 = v7;
    v55 = v67;
    v56 = v9;
    v57 = v17;
    v18 = *(v2 + 2);
    outlined init with copy of [String : String](v64, &v45, v6, &_sSS_10RealityKit12MeshResourceC0A10FoundationE8InstanceVtMR);
    v19 = v6;
    outlined init with copy of [String : String](v70, &v45, v6, &_sSS_10RealityKit12MeshResourceC0A10FoundationE8InstanceVtMR);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v3;
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(v13, *(&v13 + 1));
    v23 = v3[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      break;
    }

    v27 = v22;
    if (v3[3] >= v26)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = v21;
        specialized _NativeDictionary.copy()();
        v21 = v39;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, isUniquelyReferenced_nonNull_native);
      v21 = specialized __RawDictionaryStorage.find<A>(_:)(v13, *(&v13 + 1));
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_22;
      }
    }

    v6 = v19;
    if (v27)
    {
      v29 = v21;

      v3 = v44;
      *(v44[7] + 8 * v29) = v18;
    }

    else
    {
      v3 = v44;
      v44[(v21 >> 6) + 8] |= 1 << v21;
      *(v3[6] + 16 * v21) = v13;
      *(v3[7] + 8 * v21) = v18;
      v30 = v3[2];
      v25 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v25)
      {
        goto LABEL_21;
      }

      v3[2] = v31;
    }

    v43[2] = v54;
    v43[3] = v55;
    v43[4] = v56;
    v43[5] = v57;
    v43[0] = v52;
    v43[1] = v53;
    outlined destroy of MeshResource.Instance(v43);
    v45 = v13;
    v48 = v60;
    v49 = v61;
    v50 = v62;
    v51 = v63;
    v46 = v58;
    v47 = v59;
    outlined init with copy of [String : String](&v45, v42, v19, &_sSS_10RealityKit12MeshResourceC0A10FoundationE8InstanceVtMR);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    }

    v33 = *(v2 + 2);
    v32 = *(v2 + 3);
    if (v33 >= v32 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v2);
    }

    v42[0] = v13;
    v42[3] = v60;
    v42[4] = v61;
    v42[5] = v62;
    v42[6] = v63;
    v42[1] = v58;
    v42[2] = v59;
    outlined destroy of BodyTrackingComponent?(v42, v19, &_sSS_10RealityKit12MeshResourceC0A10FoundationE8InstanceVtMR);
    *(v2 + 2) = v33 + 1;
    v34 = &v2[96 * v33];
    v35 = v47;
    *(v34 + 2) = v46;
    *(v34 + 3) = v35;
    v36 = v51;
    v38 = v48;
    v37 = v49;
    *(v34 + 6) = v50;
    *(v34 + 7) = v36;
    *(v34 + 4) = v38;
    *(v34 + 5) = v37;

    if (!v41)
    {
      return v2;
    }

    --v41;
    v5 += 7;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation29OrderedIdentifiableCollectionV17dictionaryLiteralACyxq_Gx_q_td_tcfCSS_0A3Kit12MeshResourceCAAE8SkeletonVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v4 = *(a1 + 16);
  if (!v4)
  {
    return v2;
  }

  for (i = (a1 + 64); ; i += 5)
  {
    v30 = v4;
    v7 = *(i - 4);
    v6 = *(i - 3);
    v8 = *(i - 1);
    v29 = *(i - 2);
    v9 = *i;
    v10 = *(v2 + 2);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
    v14 = v3[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      break;
    }

    v18 = v13;
    if (v3[3] < v17)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, isUniquelyReferenced_nonNull_native);
      v12 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_21;
      }

LABEL_8:
      if (v18)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    v21 = v12;
    specialized _NativeDictionary.copy()();
    v12 = v21;
    if (v18)
    {
LABEL_9:
      v20 = v12;

      *(v3[7] + 8 * v20) = v10;
      goto LABEL_13;
    }

LABEL_11:
    v3[(v12 >> 6) + 8] |= 1 << v12;
    v22 = (v3[6] + 16 * v12);
    *v22 = v7;
    v22[1] = v6;
    *(v3[7] + 8 * v12) = v10;
    v23 = v3[2];
    v16 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v16)
    {
      goto LABEL_20;
    }

    v3[2] = v24;
LABEL_13:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    }

    v26 = *(v2 + 2);
    v25 = *(v2 + 3);
    if (v26 >= v25 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v2);
    }

    *(v2 + 2) = v26 + 1;
    v27 = &v2[24 * v26];
    *(v27 + 4) = v29;
    *(v27 + 5) = v8;
    *(v27 + 6) = v9;

    v4 = v30 - 1;
    if (v30 == 1)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCs5Int32V_Tt1g50134_s10RealityKit12MeshResourceC0A10FoundationE15JointInfluencesV10influences0H9PerVertexAfD0C6BufferVyAD0cF9InfluenceVG_SaySiGtcfcySrys5F13VGz_SiztXEfU_SaySiGSiTf1nc_nTf4ngn_n(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = result;
  if (!result)
  {
    result = MEMORY[0x1E69E7CC0];
    v6 = *(a2 + 16);
    if (!v6)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  result = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(result + 16) = v5;
  v6 = *(a2 + 16);
  if (v6)
  {
LABEL_6:
    v7 = 0;
    v8 = (result + 32);
    v9 = (a2 + 32);
    while (1)
    {
      v11 = *v9++;
      v10 = v11;
      if (v11 != v11 || v10 < 0)
      {
        break;
      }

      v12 = __OFADD__(v7, v10);
      v7 += v10;
      if (v12)
      {
        goto LABEL_14;
      }

      *v8++ = v7;
      if (!--v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_11:
  if (v5 >= a3)
  {
    *(result + 16) = a3;
    return result;
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type MeshModelCollection.Iterator and conformance MeshModelCollection.Iterator()
{
  result = lazy protocol witness table cache variable for type MeshModelCollection.Iterator and conformance MeshModelCollection.Iterator;
  if (!lazy protocol witness table cache variable for type MeshModelCollection.Iterator and conformance MeshModelCollection.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshModelCollection.Iterator and conformance MeshModelCollection.Iterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MeshModelCollection and conformance MeshModelCollection()
{
  result = lazy protocol witness table cache variable for type MeshModelCollection and conformance MeshModelCollection;
  if (!lazy protocol witness table cache variable for type MeshModelCollection and conformance MeshModelCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshModelCollection and conformance MeshModelCollection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MeshPartCollection.Iterator and conformance MeshPartCollection.Iterator()
{
  result = lazy protocol witness table cache variable for type MeshPartCollection.Iterator and conformance MeshPartCollection.Iterator;
  if (!lazy protocol witness table cache variable for type MeshPartCollection.Iterator and conformance MeshPartCollection.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshPartCollection.Iterator and conformance MeshPartCollection.Iterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MeshPartCollection and conformance MeshPartCollection()
{
  result = lazy protocol witness table cache variable for type MeshPartCollection and conformance MeshPartCollection;
  if (!lazy protocol witness table cache variable for type MeshPartCollection and conformance MeshPartCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshPartCollection and conformance MeshPartCollection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MeshLevelCollection_v1.Iterator and conformance MeshLevelCollection_v1.Iterator()
{
  result = lazy protocol witness table cache variable for type MeshLevelCollection_v1.Iterator and conformance MeshLevelCollection_v1.Iterator;
  if (!lazy protocol witness table cache variable for type MeshLevelCollection_v1.Iterator and conformance MeshLevelCollection_v1.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshLevelCollection_v1.Iterator and conformance MeshLevelCollection_v1.Iterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MeshLevelCollection_v1 and conformance MeshLevelCollection_v1()
{
  result = lazy protocol witness table cache variable for type MeshLevelCollection_v1 and conformance MeshLevelCollection_v1;
  if (!lazy protocol witness table cache variable for type MeshLevelCollection_v1 and conformance MeshLevelCollection_v1)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshLevelCollection_v1 and conformance MeshLevelCollection_v1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MeshInstanceCollection.Iterator and conformance MeshInstanceCollection.Iterator()
{
  result = lazy protocol witness table cache variable for type MeshInstanceCollection.Iterator and conformance MeshInstanceCollection.Iterator;
  if (!lazy protocol witness table cache variable for type MeshInstanceCollection.Iterator and conformance MeshInstanceCollection.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshInstanceCollection.Iterator and conformance MeshInstanceCollection.Iterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MeshInstanceCollection and conformance MeshInstanceCollection()
{
  result = lazy protocol witness table cache variable for type MeshInstanceCollection and conformance MeshInstanceCollection;
  if (!lazy protocol witness table cache variable for type MeshInstanceCollection and conformance MeshInstanceCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshInstanceCollection and conformance MeshInstanceCollection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MeshSkeletonCollection.Iterator and conformance MeshSkeletonCollection.Iterator()
{
  result = lazy protocol witness table cache variable for type MeshSkeletonCollection.Iterator and conformance MeshSkeletonCollection.Iterator;
  if (!lazy protocol witness table cache variable for type MeshSkeletonCollection.Iterator and conformance MeshSkeletonCollection.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshSkeletonCollection.Iterator and conformance MeshSkeletonCollection.Iterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MeshSkeletonCollection and conformance MeshSkeletonCollection()
{
  result = lazy protocol witness table cache variable for type MeshSkeletonCollection and conformance MeshSkeletonCollection;
  if (!lazy protocol witness table cache variable for type MeshSkeletonCollection and conformance MeshSkeletonCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshSkeletonCollection and conformance MeshSkeletonCollection);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MeshResource.Instance(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t storeEnumTagSinglePayload for MeshResource.Instance(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy144_16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for MeshResource.Skeleton.Joint(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t storeEnumTagSinglePayload for MeshResource.Skeleton.Joint(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy169_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MeshResource.JointInfluences(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 169))
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

uint64_t storeEnumTagSinglePayload for MeshResource.JointInfluences(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 169) = 1;
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

    *(result + 169) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MeshResource.Level_v1(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MeshResource.Level_v1(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for MeshResource.LevelStrategy_v1(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MeshResource.LevelStrategy_v1(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MeshResource.JointInfluences.InfluenceRate(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 64) >> 5) & 0xFFFFFFF0 | (*(a1 + 64) >> 4);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for MeshResource.JointInfluences.InfluenceRate(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 80) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 81) = 1;
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
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 64) = (32 * -a2) & 0x1FFFFFFE00 | (16 * (-a2 & 0xFLL));
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      return result;
    }

    *(a1 + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for MeshResource.JointInfluences.InfluenceRate(uint64_t result, char a2)
{
  v2 = *(result + 80) & 3 | (a2 << 7);
  *(result + 64) &= 0x10FuLL;
  *(result + 80) = v2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_17RealityFoundation17MeshResourceErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for MeshResourceError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MeshResourceError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _sSo10CFErrorRefaABs5Error10FoundationWlTm_4(unint64_t *a1, void (*a2)(uint64_t))
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

void outlined consume of Result<MeshResource, Error>(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

double MaterialParameterTypes.BlendMode.getCustomMaterialBlending()@<D0>(uint64_t a1@<X8>)
{
  v2 = 0x100000000;
  if (!*v1)
  {
    v2 = 0;
  }

  *&result = 1065353216;
  *a1 = xmmword_1C1887630;
  *(a1 + 16) = v2;
  *(a1 + 20) = BYTE4(v2);
  return result;
}

void MaterialParameterTypes.TextureCoordinateTransform.init(offset:transform:)(uint64_t a1@<X8>, double a2@<D0>, float32x4_t a3@<Q1>)
{
  v5 = vmulq_f32(a3, a3);
  v6 = vextq_s8(v5, v5, 4uLL).u64[0];
  v5.i32[1] = vextq_s8(v5, v5, 8uLL).i32[1];
  v7 = vsqrt_f32(vadd_f32(v6, *v5.i8));
  v8 = atan2f(a3.f32[1], a3.f32[0]);
  *a1 = a2;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
}

Swift::Int MaterialParameterTypes.FaceCulling.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

void MaterialParameterTypes.TextureCoordinateTransform.init(offset:scale:rotation:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, float a4@<S2>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
}

unint64_t lazy protocol witness table accessor for type MaterialParameterTypes.FaceCulling and conformance MaterialParameterTypes.FaceCulling()
{
  result = lazy protocol witness table cache variable for type MaterialParameterTypes.FaceCulling and conformance MaterialParameterTypes.FaceCulling;
  if (!lazy protocol witness table cache variable for type MaterialParameterTypes.FaceCulling and conformance MaterialParameterTypes.FaceCulling)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialParameterTypes.FaceCulling and conformance MaterialParameterTypes.FaceCulling);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MaterialParameterTypes.TriangleFillMode and conformance MaterialParameterTypes.TriangleFillMode()
{
  result = lazy protocol witness table cache variable for type MaterialParameterTypes.TriangleFillMode and conformance MaterialParameterTypes.TriangleFillMode;
  if (!lazy protocol witness table cache variable for type MaterialParameterTypes.TriangleFillMode and conformance MaterialParameterTypes.TriangleFillMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialParameterTypes.TriangleFillMode and conformance MaterialParameterTypes.TriangleFillMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MaterialParameterTypes.BlendMode and conformance MaterialParameterTypes.BlendMode()
{
  result = lazy protocol witness table cache variable for type MaterialParameterTypes.BlendMode and conformance MaterialParameterTypes.BlendMode;
  if (!lazy protocol witness table cache variable for type MaterialParameterTypes.BlendMode and conformance MaterialParameterTypes.BlendMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialParameterTypes.BlendMode and conformance MaterialParameterTypes.BlendMode);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MaterialParameterTypes.TextureCoordinateTransform(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MaterialParameterTypes.TextureCoordinateTransform(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 20) = v3;
  return result;
}

uint64_t specialized Entity.ChildCollection.filter(recursive:_:)(char a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = MEMORY[0x1E69E7CC0];
  v44 = MEMORY[0x1E69E7CC0];

  v5 = *(v3 + 16);
  if (REEntityGetChildCount() < 1)
  {
LABEL_52:

    return v4;
  }

  v6 = 0;
  v41 = v3;
  v40 = a1;
  while (1)
  {
    v8 = *(v3 + 16);
    result = REEntityGetChildCount();
    if (v6 >= result)
    {
      break;
    }

    v10 = *(v3 + 16);
    result = REEntityGetChild();
    if (!result)
    {
      goto LABEL_60;
    }

    v11 = result;
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v12 = swift_dynamicCastClassUnconditional();
LABEL_9:
      v13 = v12;
      goto LABEL_13;
    }

    result = REEntityIsBeingDestroyed();
    if (result)
    {
      goto LABEL_56;
    }

    v14 = specialized static Entity.entityInfoType(_:)();
    if (!v14)
    {
      v12 = makeEntity(for:)(v11);
      goto LABEL_9;
    }

    v13 = (*(v14 + 232))();
    v15 = *(v13 + 16);

    MEMORY[0x1C68F9740](v15, 0);
    *(v13 + 16) = v11;
    MEMORY[0x1C68F9740](v11, v13);

LABEL_13:
    v16 = *(v3 + 16);
    result = REEntityGetChildCount();
    if (v6 >= result)
    {
      goto LABEL_54;
    }

    MEMORY[0x1C68F3650](v17);
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v38 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v4 = v44;
    if ((a1 & 1) == 0)
    {

      goto LABEL_4;
    }

    v43[0] = v13;

    v18 = specialized Entity.ChildCollection.filter(recursive:_:)(1, v43);

    v19 = v18 >> 62;
    if (v18 >> 62)
    {
      v20 = __CocoaSet.count.getter();
    }

    else
    {
      v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v21 = v4 >> 62;
    if (v4 >> 62)
    {
      v39 = __CocoaSet.count.getter();
      v23 = v39 + v20;
      if (__OFADD__(v39, v20))
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }
    }

    else
    {
      v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v23 = v22 + v20;
      if (__OFADD__(v22, v20))
      {
        goto LABEL_51;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v21)
      {
LABEL_29:
        __CocoaSet.count.getter();
      }

      else
      {
        v24 = v4 & 0xFFFFFFFFFFFFFF8;
LABEL_27:
        v25 = *(v24 + 16);
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v42 = result;
      v24 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_31;
    }

    if (v21)
    {
      goto LABEL_29;
    }

    v24 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v23 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_27;
    }

    v42 = v4;
LABEL_31:
    v26 = *(v24 + 16);
    v27 = *(v24 + 24);
    if (v19)
    {
      result = __CocoaSet.count.getter();
      v28 = result;
    }

    else
    {
      v28 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v28)
    {
      if (((v27 >> 1) - v26) < v20)
      {
        goto LABEL_57;
      }

      v29 = v24 + 8 * v26 + 32;
      if (v19)
      {
        if (v28 < 1)
        {
          goto LABEL_59;
        }

        lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [Entity] and conformance [A], &_sSay10RealityKit6EntityCGMd, &_sSay10RealityKit6EntityCGMR);
        for (i = 0; i != v28; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit6EntityCGMd, &_sSay10RealityKit6EntityCGMR);
          v32 = specialized protocol witness for Collection.subscript.read in conformance [A](v43, i, v18);
          v34 = *v33;

          (v32)(v43, 0);
          *(v29 + 8 * i) = v34;
        }

        v3 = v41;
        a1 = v40;
        v30 = v20;
      }

      else
      {
        type metadata accessor for Entity();
        v30 = v20;
        swift_arrayInitWithCopy();
      }

      v4 = v42;
      if (v30 >= 1)
      {
        v35 = *(v24 + 16);
        v36 = __OFADD__(v35, v30);
        v37 = v35 + v30;
        if (v36)
        {
          goto LABEL_58;
        }

        *(v24 + 16) = v37;
      }
    }

    else
    {

      v4 = v42;
      if (v20 > 0)
      {
        goto LABEL_55;
      }
    }

    v44 = v4;
LABEL_4:
    ++v6;
    v7 = *(v3 + 16);
    if (v6 >= REEntityGetChildCount())
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t Entity.ChildCollection.subscript.getter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v2 = result;
  v3 = *v1;
  v4 = *(v3 + 16);
  result = REEntityGetChildCount();
  if (result <= v2)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = *(v3 + 16);
  result = REEntityGetChild();
  if (!result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v6 = result;
  type metadata accessor for Entity();
  if (REEntityGetSwiftObject())
  {

    return swift_dynamicCastClassUnconditional();
  }

  result = REEntityIsBeingDestroyed();
  if (result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = static Entity.entityInfoType(_:)(v6);
  if (v7)
  {
    v8 = (*(v7 + 232))();
    v9 = *(v8 + 16);

    MEMORY[0x1C68F9740](v9, 0);
    *(v8 + 16) = v6;
    MEMORY[0x1C68F9740](v6, v8);

    return v8;
  }

  else
  {

    return makeEntity(for:)(v6);
  }
}

Swift::Int __swiftcall Entity.ChildCollection.index(after:)(Swift::Int after)
{
  if (after < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = after;
    v3 = *(*v1 + 16);
    after = REEntityGetChildCount();
    if (after > v2)
    {
      return v2 + 1;
    }
  }

  __break(1u);
  return after;
}

uint64_t specialized Entity.ChildCollection.insert<A>(contentsOf:beforeIndex:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[2];

  Parent = REEntityGetParent();
  if (!Parent)
  {
    goto LABEL_9;
  }

  ChildCount = Parent;
  if (!REEntityGetSwiftObject())
  {
    result = REEntityIsBeingDestroyed();
    if ((result & 1) == 0)
    {
      v12 = specialized static Entity.entityInfoType(_:)();
      if (!v12)
      {
        goto LABEL_22;
      }

      v10 = (*(v12 + 232))();
      v13 = *(v10 + 16);

      MEMORY[0x1C68F9740](v13, 0);
      *(v10 + 16) = ChildCount;
      MEMORY[0x1C68F9740](ChildCount, v10);

      goto LABEL_8;
    }

    goto LABEL_25;
  }

  type metadata accessor for Entity();
  for (i = swift_dynamicCastClassUnconditional(); ; i = makeEntity(for:)(ChildCount))
  {
    v10 = i;
LABEL_8:
    v14 = *(v10 + 16);

    v15 = *(a3 + 16);

    if (v14 == v15)
    {
      break;
    }

LABEL_9:
    v16 = *(a3 + 16);
    ChildCount = REEntityGetChildCount();
    Entity.ChildCollection.doAppend(_:preservingWorldTransform:)(a1, 0);
    if ((ChildCount & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  result = specialized Collection<>.firstIndex(of:)(a1, a3);
  if (v22)
  {
    goto LABEL_26;
  }

  ChildCount = result;
  if (result < 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  v17 = *(a3 + 16);
  result = REEntityGetChildCount();
  if (a2 < 0 || ChildCount >= result)
  {
    __break(1u);
  }

  else
  {
    v18 = *(a3 + 16);
    result = REEntityGetChildCount();
    if (result >= a2)
    {
      if (ChildCount != a2 && ChildCount + 1 != a2)
      {
        v19 = Entity.ChildCollection.subscript.getter(ChildCount);
        v20 = *(a3 + 16);
        v21 = *(v19 + 16);
        REEntityInsertChild();
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

uint64_t Entity.ChildCollection.insert<A>(contentsOf:beforeIndex:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  v12 = *(v55 + 64);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v53 - v14;
  v16 = *v3;
  (*(v7 + 16))(v10, a1, a3, v13);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  v17 = v58;
  if (!v58)
  {
    return (*(v55 + 8))(v15, AssociatedTypeWitness);
  }

  v18 = swift_getAssociatedTypeWitness();
  v56 = v15;
  while (1)
  {
    v23 = HasHierarchy.parent.getter();
    if (v23 && (v24 = *(v23 + 16), , , v25 = *(v16 + 16), , v24 == v25))
    {

      ChildCount = specialized Collection<>.firstIndex(of:)(v38, v16);
      v40 = v39;

      if (v40)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v26 = *(v16 + 16);
      ChildCount = REEntityGetChildCount();
      v28 = v17[2];
      v29 = *(v16 + 16);

      REEntitySetParent();
      v30 = *v17;
      if (swift_conformsToProtocol2())
      {
        swift_beginAccess();
        v31 = static RealityFusionSession.sharedSession;
        if (static RealityFusionSession.sharedSession)
        {
          swift_beginAccess();
          if (v31[2])
          {

            v32 = RFServiceManagerGetAnchorManagementService();
            if (v32)
            {
              v33 = v32;
              v34 = *(v16 + 16);
              SceneNullable = REEntityGetSceneNullable();
              if (SceneNullable)
              {
                v54 = SceneNullable;
                v36 = RESceneGetSwiftObject();
                type metadata accessor for Scene();
                if (v36)
                {
                  v37 = swift_dynamicCastClassUnconditional();
                }

                else
                {
                  swift_allocObject();
                  v37 = Scene.init(coreScene:)(v54);
                }

                v42 = *(v37 + 16);

                RFAnchorManagementUpdateAnchoringInScene();
              }
            }
          }
        }
      }

      type metadata accessor for Entity();
      static Entity.updateInteractions(root:)(v17);
      Entity.updateSceneGravityIfNeeded()();
    }

    if (ChildCount < 0)
    {
      break;
    }

    v43 = *(v16 + 16);
    result = REEntityGetChildCount();
    if (a2 < 0 || ChildCount >= result)
    {
      goto LABEL_40;
    }

    v44 = *(v16 + 16);
    result = REEntityGetChildCount();
    if (result < a2)
    {
      goto LABEL_41;
    }

    if (a2 != ChildCount && a2 != ChildCount + 1)
    {
      v45 = *(v16 + 16);
      result = REEntityGetChildCount();
      if (ChildCount >= result)
      {
        goto LABEL_42;
      }

      v46 = *(v16 + 16);
      result = REEntityGetChild();
      if (!result)
      {
        goto LABEL_44;
      }

      v47 = result;
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v19 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
          goto LABEL_43;
        }

        v48 = specialized static Entity.entityInfoType(_:)();
        if (v48)
        {
          v20 = (*(v48 + 232))();
          v49 = AssociatedTypeWitness;
          v50 = v18;
          v51 = *(v20 + 16);

          v52 = v51;
          v18 = v50;
          AssociatedTypeWitness = v49;
          v15 = v56;
          MEMORY[0x1C68F9740](v52, 0);
          *(v20 + 16) = v47;
          MEMORY[0x1C68F9740](v47, v20);

          goto LABEL_5;
        }

        v19 = makeEntity(for:)(v47);
      }

      v20 = v19;
LABEL_5:
      v21 = *(v16 + 16);
      v22 = *(v20 + 16);
      REEntityInsertChild();
    }

    if (ChildCount >= a2)
    {
      ++a2;
    }

    dispatch thunk of IteratorProtocol.next()();
    v17 = v58;
    if (!v58)
    {
      return (*(v55 + 8))(v15, AssociatedTypeWitness);
    }
  }

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
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t Entity.ChildCollection.remove(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(a1 + 16);

  Parent = REEntityGetParent();
  if (Parent)
  {
    v6 = Parent;
    type metadata accessor for Entity();
    if (REEntityGetSwiftObject())
    {
      v7 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
        __break(1u);
        return result;
      }

      v9 = specialized static Entity.entityInfoType(_:)();
      if (v9)
      {
        v10 = (*(v9 + 232))();
        v11 = *(v10 + 16);

        MEMORY[0x1C68F9740](v11, 0);
        *(v10 + 16) = v6;
        MEMORY[0x1C68F9740](v6, v10);

        v7 = v10;
      }

      else
      {
        v7 = makeEntity(for:)(v6);
      }
    }

    v12 = *(v7 + 16);

    v13 = *(v3 + 16);

    if (v12 == v13)
    {
      v14 = *(a1 + 16);
      REEntitySetParent();
      return static Entity.updateInteractions(root:)(a1);
    }
  }

  else
  {
  }

  return result;
}

Swift::Void __swiftcall Entity.ChildCollection.remove(at:)(Swift::Int at)
{
  v2 = *v1;
  v3 = Entity.ChildCollection.subscript.getter(at);

  v4 = specialized HasHierarchy.parent.getter();
  if (v4)
  {
    v5 = *(v4 + 16);

    v6 = *(v2 + 16);

    if (v5 == v6)
    {
      v7 = *(v3 + 16);
      REEntitySetParent();
      type metadata accessor for Entity();
      static Entity.updateInteractions(root:)(v3);
    }
  }

  else
  {
  }
}

uint64_t protocol witness for EntityCollection.append(_:) in conformance RealityRenderer.EntityCollection()
{
  v3 = *v0;

  Entity.ChildCollection.doAppend(_:preservingWorldTransform:)(v1, 0);
}

uint64_t EntityCollection.append(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a1;
  v5 = *(a3 + 24);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneVy10RealityKit6EntityCGMd, &_ss15CollectionOfOneVy10RealityKit6EntityCGMR);
  v7 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type CollectionOfOne<Entity> and conformance CollectionOfOne<A>, &_ss15CollectionOfOneVy10RealityKit6EntityCGMd, &_ss15CollectionOfOneVy10RealityKit6EntityCGMR);
  return v5(&v9, v6, v7, a2, a3);
}

uint64_t protocol witness for EntityCollection.insert(_:beforeIndex:) in conformance RealityRenderer.EntityCollection(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;

  specialized Entity.ChildCollection.insert<A>(contentsOf:beforeIndex:)(a1, a2, v5);
}

uint64_t EntityCollection.insert(_:beforeIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v7 = *(a4 + 40);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneVy10RealityKit6EntityCGMd, &_ss15CollectionOfOneVy10RealityKit6EntityCGMR);
  v9 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type CollectionOfOne<Entity> and conformance CollectionOfOne<A>, &_ss15CollectionOfOneVy10RealityKit6EntityCGMd, &_ss15CollectionOfOneVy10RealityKit6EntityCGMR);
  return v7(&v11, a2, v8, v9, a3, a4);
}

uint64_t specialized EntityCollection.removeAll(where:)(uint64_t (*a1)(uint64_t))
{
  v3 = v2;
  v4 = *v1;
  v5 = *(*v1 + 16);
  result = REEntityGetChildCount();
  if (result < 0)
  {
    goto LABEL_68;
  }

  v7 = result;
  if (result)
  {
    v8 = result;
    while (1)
    {
      if (v7 < v8)
      {
        __break(1u);
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
        return result;
      }

      --v8;
      v9 = *(v4 + 16);

      result = REEntityGetChildCount();
      if (v8 >= result)
      {
        goto LABEL_63;
      }

      v10 = *(v4 + 16);
      result = REEntityGetChild();
      if (!result)
      {
        goto LABEL_69;
      }

      v11 = result;
      if (REEntityGetSwiftObject())
      {

        type metadata accessor for Entity();
        v12 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
          goto LABEL_65;
        }

        if (one-time initialization token for customComponentTypeObjectIdToHandles != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v13 = static SceneManager.customComponentTypeObjectIdToHandles;
        if (*(static SceneManager.customComponentTypeObjectIdToHandles + 16) && (v14 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent), (v15 & 1) != 0))
        {
          v16 = *(*(v13 + 56) + 8 * v14);
        }

        else
        {
          swift_endAccess();
          v17 = specialized static SceneManager.customComponentTypeHelper(_:typeName:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent, 0, 0);
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v54 = static SceneManager.customComponentTypeObjectIdToHandles;
          static SceneManager.customComponentTypeObjectIdToHandles = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, &type metadata for __EntityInfoComponent, isUniquelyReferenced_nonNull_native);
          static SceneManager.customComponentTypeObjectIdToHandles = v54;
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

        v20 = *Object;
        if (*(Object + 8) || !v20)
        {
          v26 = *(Object + 8);
        }

        else
        {
          v21 = *v20;
          v22 = String.init(utf8String:)();
          if (v23)
          {
            v24 = v22;
          }

          else
          {
            v24 = 0;
          }

          if (v23)
          {
            v25 = v23;
          }

          else
          {
            v25 = 0xE000000000000000;
          }

          v20 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v21 == 42, v24, v25);

          type metadata accessor for IntrospectionDataCleanupHelper();
          result = swift_allocObject();
          *(result + 16) = v20;
        }

        if (!v20)
        {
          goto LABEL_71;
        }

        v27 = String.init(utf8String:)();
        if (v28)
        {
          v29 = v28;
        }

        else
        {
          v27 = 0;
          v29 = 0xE000000000000000;
        }

        v30 = MEMORY[0x1C68F3280](v27, v29);

        v31 = NSClassFromString(v30);

        if (!v31)
        {
          goto LABEL_38;
        }

        swift_getObjCClassMetadata();
        type metadata accessor for Entity();
        v32 = swift_dynamicCastMetatype();
        if (v32)
        {
          v12 = (*(v32 + 232))();
          v33 = *(v12 + 16);

          MEMORY[0x1C68F9740](v33, 0);
          *(v12 + 16) = v11;
          MEMORY[0x1C68F9740](v11, v12);
        }

        else
        {
LABEL_38:
          v12 = makeEntity(for:)(v11);
        }
      }

      v34 = a1(v12);

      if (v3)
      {
        return result;
      }

      if (v34)
      {
        break;
      }

LABEL_6:
      if (!v8)
      {
        return result;
      }
    }

    v35 = *(v4 + 16);

    result = REEntityGetChildCount();
    if (v8 >= result)
    {
      goto LABEL_64;
    }

    v36 = *(v4 + 16);
    result = REEntityGetChild();
    if (!result)
    {
      goto LABEL_70;
    }

    v37 = result;
    type metadata accessor for Entity();
    if (REEntityGetSwiftObject())
    {
      v38 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
        goto LABEL_66;
      }

      v40 = specialized static Entity.entityInfoType(_:)();
      if (v40)
      {
        v39 = (*(v40 + 232))();
        v41 = *(v39 + 16);

        MEMORY[0x1C68F9740](v41, 0);
        *(v39 + 16) = v37;
        MEMORY[0x1C68F9740](v37, v39);

LABEL_50:
        v42 = *(v39 + 16);

        Parent = REEntityGetParent();
        if (!Parent)
        {

          goto LABEL_5;
        }

        v44 = Parent;
        if (REEntityGetSwiftObject())
        {
          v45 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
            goto LABEL_67;
          }

          v48 = specialized static Entity.entityInfoType(_:)();
          if (v48)
          {
            v49 = (*(v48 + 232))();
            MEMORY[0x1C68F9740](*(v49 + 16), 0);
            *(v49 + 16) = v44;
            MEMORY[0x1C68F9740](v44, v49);
            v50 = *(v49 + 16);

            v51 = *(v4 + 16);

            if (v50 == v51)
            {
LABEL_58:
              v52 = *(v39 + 16);
              REEntitySetParent();
              static Entity.updateInteractions(root:)(v39);
            }

LABEL_5:

            goto LABEL_6;
          }

          v45 = makeEntity(for:)(v44);
        }

        v46 = *(v45 + 16);

        v47 = *(v4 + 16);

        if (v46 == v47)
        {
          goto LABEL_58;
        }

        goto LABEL_5;
      }

      v38 = makeEntity(for:)(v37);
    }

    v39 = v38;
    goto LABEL_50;
  }

  return result;
}

{
  v3 = v2;
  v4 = *v1;
  v5 = *(*v1 + 16);
  result = REEntityGetChildCount();
  if (result < 0)
  {
    goto LABEL_68;
  }

  v7 = result;
  if (result)
  {
    v8 = result;
    do
    {
      if (v7 < v8)
      {
        __break(1u);
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
        return result;
      }

      --v8;
      v9 = *(v4 + 16);
      result = REEntityGetChildCount();
      if (v8 >= result)
      {
        goto LABEL_63;
      }

      v10 = *(v4 + 16);
      result = REEntityGetChild();
      if (!result)
      {
        goto LABEL_69;
      }

      v11 = result;
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v12 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
          goto LABEL_65;
        }

        if (one-time initialization token for customComponentTypeObjectIdToHandles != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v13 = static SceneManager.customComponentTypeObjectIdToHandles;
        if (*(static SceneManager.customComponentTypeObjectIdToHandles + 16) && (v14 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent), (v15 & 1) != 0))
        {
          v16 = *(*(v13 + 56) + 8 * v14);
        }

        else
        {
          swift_endAccess();
          v17 = specialized static SceneManager.customComponentTypeHelper(_:typeName:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent, 0, 0);
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v55 = static SceneManager.customComponentTypeObjectIdToHandles;
          static SceneManager.customComponentTypeObjectIdToHandles = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, &type metadata for __EntityInfoComponent, isUniquelyReferenced_nonNull_native);
          static SceneManager.customComponentTypeObjectIdToHandles = v55;
        }

        swift_endAccess();
        if (REEntityGetCustomComponent())
        {
          Object = RECustomComponentGetObject();
          if (Object)
          {
            v20 = *Object;
            if (*(Object + 8) || !v20)
            {
              v26 = *(Object + 8);
            }

            else
            {
              v21 = *v20;
              v22 = String.init(utf8String:)();
              if (v23)
              {
                v24 = v22;
              }

              else
              {
                v24 = 0;
              }

              if (v23)
              {
                v25 = v23;
              }

              else
              {
                v25 = 0xE000000000000000;
              }

              v20 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v21 == 42, v24, v25);

              type metadata accessor for IntrospectionDataCleanupHelper();
              result = swift_allocObject();
              *(result + 16) = v20;
            }

            if (!v20)
            {
              goto LABEL_71;
            }

            v27 = String.init(utf8String:)();
            if (v28)
            {
              v29 = v28;
            }

            else
            {
              v27 = 0;
              v29 = 0xE000000000000000;
            }

            v30 = MEMORY[0x1C68F3280](v27, v29);

            v31 = NSClassFromString(v30);

            if (v31)
            {
              swift_getObjCClassMetadata();
              type metadata accessor for Entity();
              v32 = swift_dynamicCastMetatype();
              if (v32)
              {
                v33 = (*(v32 + 232))();
                v34 = *(v33 + 16);

                MEMORY[0x1C68F9740](v34, 0);
                *(v33 + 16) = v11;
                MEMORY[0x1C68F9740](v11, v33);

                goto LABEL_40;
              }
            }
          }
        }

        v12 = makeEntity(for:)(v11);
      }

      v33 = v12;
LABEL_40:
      v35 = a1(v33);

      if (v3)
      {
        return result;
      }

      if (v35)
      {
        v36 = *(v4 + 16);
        result = REEntityGetChildCount();
        if (v8 >= result)
        {
          goto LABEL_64;
        }

        v37 = *(v4 + 16);

        result = REEntityGetChild();
        if (!result)
        {
          goto LABEL_70;
        }

        v38 = result;
        type metadata accessor for Entity();
        if (REEntityGetSwiftObject())
        {
          v39 = swift_dynamicCastClassUnconditional();
          goto LABEL_46;
        }

        result = REEntityIsBeingDestroyed();
        if (result)
        {
          goto LABEL_66;
        }

        v41 = specialized static Entity.entityInfoType(_:)();
        if (v41)
        {
          v40 = (*(v41 + 232))();
          v42 = *(v40 + 16);

          MEMORY[0x1C68F9740](v42, 0);
          *(v40 + 16) = v38;
          MEMORY[0x1C68F9740](v38, v40);
        }

        else
        {
          v39 = makeEntity(for:)(v38);
LABEL_46:
          v40 = v39;
        }

        v43 = *(v40 + 16);
        Parent = REEntityGetParent();
        if (Parent)
        {
          v45 = Parent;
          if (REEntityGetSwiftObject())
          {
            v46 = swift_dynamicCastClassUnconditional();
            goto LABEL_53;
          }

          result = REEntityIsBeingDestroyed();
          if (result)
          {
            goto LABEL_67;
          }

          v49 = specialized static Entity.entityInfoType(_:)();
          if (v49)
          {
            v50 = (*(v49 + 232))();
            MEMORY[0x1C68F9740](*(v50 + 16), 0);
            *(v50 + 16) = v45;
            MEMORY[0x1C68F9740](v45, v50);
            v51 = *(v50 + 16);

            v52 = *(v4 + 16);

            if (v51 == v52)
            {
              goto LABEL_58;
            }
          }

          else
          {
            v46 = makeEntity(for:)(v45);
LABEL_53:
            v47 = *(v46 + 16);

            v48 = *(v4 + 16);

            if (v47 == v48)
            {
LABEL_58:
              v53 = *(v40 + 16);
              REEntitySetParent();
              static Entity.updateInteractions(root:)(v40);
            }
          }
        }

        else
        {
        }
      }
    }

    while (v8);
  }

  return result;
}

uint64_t EntityCollection.removeAll(where:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(a4 + 8);
  dispatch thunk of Collection.startIndex.getter();
  v9 = v17[0];
  result = dispatch thunk of Collection.endIndex.getter();
  v11 = v18;
  if (v18 < v17[0])
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (v18 != v17[0])
  {
    while (v9 < v11)
    {
      v18 = --v11;
      v12 = dispatch thunk of Collection.subscript.read();
      v14 = *v13;

      v12(v17, 0);
      v15 = a1(v14);

      if (!v5)
      {
        if (v15)
        {
          result = (*(a4 + 56))(v11, a3, a4);
        }

        if (v9 != v11)
        {
          continue;
        }
      }

      return result;
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

{
  return EntityCollection.removeAll(where:)(a1, a2, a3, a4);
}

uint64_t Entity.ChildCollection.IndexingIterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v21[-v9];
  v11 = *(v2 + 36);
  dispatch thunk of Collection.endIndex.getter();
  swift_getAssociatedConformanceWitness();
  LOBYTE(v2) = dispatch thunk of static Comparable.>= infix(_:_:)();
  (*(v7 + 8))(v10, AssociatedTypeWitness);
  if (v2)
  {
    v12 = *(v5 + 8);
    v13 = swift_getAssociatedTypeWitness();
    return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }

  else
  {
    v15 = dispatch thunk of Collection.subscript.read();
    v17 = v16;
    v18 = *(v5 + 8);
    v19 = swift_getAssociatedTypeWitness();
    v20 = *(v19 - 8);
    (*(v20 + 16))(a2, v17, v19);
    v15(v21, 0);
    dispatch thunk of Collection.formIndex(after:)();
    return (*(v20 + 56))(a2, 0, 1, v19);
  }
}

uint64_t Entity.ChildCollection.IndexingIterator.init(_elements:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = *(a2 - 8);
  (*(v9 + 16))(a3, a1, a2);
  v6 = a3 + *(type metadata accessor for Entity.ChildCollection.IndexingIterator() + 36);
  dispatch thunk of Collection.startIndex.getter();
  v7 = *(v9 + 8);

  return v7(a1, a2);
}

void Entity.ChildCollection.doAppend(_:preservingWorldTransform:)(uint64_t *a1, char a2)
{
  v4 = *v2;
  if ((a2 & 1) == 0)
  {
    goto LABEL_6;
  }

  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v21 = static simd_quatf.identity;
  _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(a1, v4);
  specialized simd_float4x4.init(translation:rotation:scale:)(0.0, v21, 1.0);
  REMakeSRTFromMatrix();
  v22[0] = v5;
  v22[1] = v6;
  v22[2] = v7;
  v23 = 0;

  _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA9TransformV_Tt0g5(v22);
  v8 = a1[2];

  if (v8 != a1[2])
  {
    __break(1u);
LABEL_6:
    v9 = a1[2];
  }

  v10 = *(v4 + 16);
  REEntitySetParent();
  v11 = *a1;
  if (swift_conformsToProtocol2())
  {
    swift_beginAccess();
    v12 = static RealityFusionSession.sharedSession;
    if (static RealityFusionSession.sharedSession)
    {
      swift_beginAccess();
      if (v12[2])
      {

        v13 = RFServiceManagerGetAnchorManagementService();
        if (v13)
        {
          v14 = v13;
          v15 = *(v4 + 16);
          SceneNullable = REEntityGetSceneNullable();
          if (SceneNullable)
          {
            v17 = SceneNullable;
            v18 = RESceneGetSwiftObject();
            type metadata accessor for Scene();
            if (v18)
            {
              v19 = swift_dynamicCastClassUnconditional();
            }

            else
            {
              swift_allocObject();
              v19 = Scene.init(coreScene:)(v17);
            }

            v20 = *(v19 + 16);

            RFAnchorManagementUpdateAnchoringInScene();
          }
        }
      }
    }
  }

  type metadata accessor for Entity();
  static Entity.updateInteractions(root:)(a1);
  Entity.updateSceneGravityIfNeeded()();
}

uint64_t Entity.ChildCollection.doRemove(_:preservingWorldTransform:)(uint64_t a1, char a2)
{
  v5 = *v2;
  v6 = *(a1 + 16);

  Parent = REEntityGetParent();
  if (Parent)
  {
    v8 = Parent;
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v9 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
        __break(1u);
        return result;
      }

      v11 = specialized static Entity.entityInfoType(_:)();
      if (v11)
      {
        v12 = (*(v11 + 232))();
        v13 = *(v12 + 16);

        MEMORY[0x1C68F9740](v13, 0);
        *(v12 + 16) = v8;
        MEMORY[0x1C68F9740](v8, v12);

        v9 = v12;
      }

      else
      {
        v9 = makeEntity(for:)(v8);
      }
    }

    v14 = *(v9 + 16);

    v15 = *(v5 + 16);

    if (v14 == v15)
    {
      if (a2)
      {
        *v16.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(a1, 0);
        v24 = v17;
        v25 = v16;
        v22 = v19;
        v23 = v18;
        v20 = *(a1 + 16);
        REEntitySetParent();
        specialized HasTransform.setTransformMatrix(_:relativeTo:)(0, v25, v24, v23, v22);
      }

      else
      {
        v21 = *(a1 + 16);
        REEntitySetParent();
      }

      type metadata accessor for Entity();
      return static Entity.updateInteractions(root:)(a1);
    }
  }

  else
  {
  }

  return result;
}

uint64_t Entity.ChildCollection.doSetEntityAt(_:to:preservingWorldTransform:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *v3;
  v8 = Entity.ChildCollection.subscript.getter(a1);
  if (*(v8 + 16) != *(a2 + 16))
  {
    v9 = specialized HasHierarchy.parent.getter();
    if (!v9 || (v10 = *(v9 + 16), , , v11 = *(v7 + 16), , v10 != v11))
    {
      v12 = 1;
      if (a3)
      {
LABEL_5:
        *v13.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(a2, 0);
        v28 = v13;
        v29 = v14;
        v30 = v15;
        v31 = v16;
LABEL_20:
        v25 = *(v8 + 16);
        REEntitySetParent();
        v26 = *(v7 + 16);
        v27 = *(a2 + 16);
        REEntityInsertChild();
        if (a3)
        {
          specialized HasTransform.setTransformMatrix(_:relativeTo:)(0, v28, v29, v30, v31);
        }

        if (v12)
        {
          type metadata accessor for Entity();
          static Entity.updateInteractions(root:)(a2);
        }

        goto LABEL_24;
      }

LABEL_19:
      v31 = *&zmmword_1C1887630[48];
      v30 = *&zmmword_1C1887630[32];
      v29 = *&zmmword_1C1887630[16];
      v28 = *zmmword_1C1887630;
      goto LABEL_20;
    }

    specialized Collection<>.firstIndex(of:)(a2, v7);
    v18 = v17;
    result = RELinkedOnOrAfterFall2024OSVersions();
    if (result)
    {
      v20 = *(v7 + 16);
      result = REEntityGetChildCount();
      if (result < 0)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v21 = result;
      if (result)
      {
        v22 = 0;
        while (1)
        {
          v23 = *(v7 + 16);
          result = REEntityGetChildCount();
          if (v22 >= result)
          {
            break;
          }

          if (v21 == ++v22)
          {
            v24 = v21 - 1;
            goto LABEL_16;
          }
        }

        __break(1u);
        goto LABEL_28;
      }

      v24 = -1;
LABEL_16:
      if (v24 == a1 && (v18 & 1) != 0)
      {
        goto LABEL_30;
      }
    }

    else if (v18)
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return result;
    }

    v12 = 0;
    if (a3)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_24:
}

uint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (!REEntityGetChildCount())
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    v6 = *(a2 + 16);
    result = REEntityGetChildCount();
    if (v5 >= result)
    {
      break;
    }

    v8 = *(a2 + 16);
    result = REEntityGetChild();
    if (!result)
    {
      goto LABEL_43;
    }

    v9 = result;
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v10 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
        goto LABEL_42;
      }

      if (one-time initialization token for customComponentTypeObjectIdToHandles != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v11 = static SceneManager.customComponentTypeObjectIdToHandles;
      if (*(static SceneManager.customComponentTypeObjectIdToHandles + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent), (v13 & 1) != 0))
      {
        v14 = *(*(v11 + 56) + 8 * v12);
      }

      else
      {
        swift_endAccess();
        v15 = specialized static SceneManager.customComponentTypeHelper(_:typeName:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent, 0, 0);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = static SceneManager.customComponentTypeObjectIdToHandles;
        static SceneManager.customComponentTypeObjectIdToHandles = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, &type metadata for __EntityInfoComponent, isUniquelyReferenced_nonNull_native);
        static SceneManager.customComponentTypeObjectIdToHandles = v36;
      }

      swift_endAccess();
      if (REEntityGetCustomComponent())
      {
        Object = RECustomComponentGetObject();
        if (Object)
        {
          v18 = *Object;
          if (*(Object + 8) || !v18)
          {
            v24 = *(Object + 8);
          }

          else
          {
            v19 = *v18;
            v20 = String.init(utf8String:)();
            if (v21)
            {
              v22 = v20;
            }

            else
            {
              v22 = 0;
            }

            if (v21)
            {
              v23 = v21;
            }

            else
            {
              v23 = 0xE000000000000000;
            }

            v18 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v19 == 42, v22, v23);

            type metadata accessor for IntrospectionDataCleanupHelper();
            result = swift_allocObject();
            *(result + 16) = v18;
          }

          if (!v18)
          {
            goto LABEL_44;
          }

          v25 = String.init(utf8String:)();
          if (v26)
          {
            v27 = v26;
          }

          else
          {
            v25 = 0;
            v27 = 0xE000000000000000;
          }

          v28 = MEMORY[0x1C68F3280](v25, v27);

          v29 = NSClassFromString(v28);

          if (v29)
          {
            swift_getObjCClassMetadata();
            type metadata accessor for Entity();
            v30 = swift_dynamicCastMetatype();
            if (v30)
            {
              v31 = (*(v30 + 232))();
              MEMORY[0x1C68F9740](*(v31 + 16), 0);
              *(v31 + 16) = v9;
              MEMORY[0x1C68F9740](v9, v31);
              v32 = *(v31 + 16);

              if (v32 == *(a1 + 16))
              {
                return v5;
              }

              goto LABEL_36;
            }
          }
        }
      }

      v10 = makeEntity(for:)(v9);
    }

    v33 = *(v10 + 16);

    if (v33 == *(a1 + 16))
    {
      return v5;
    }

LABEL_36:
    v34 = *(a2 + 16);
    result = REEntityGetChildCount();
    if (v5 >= result)
    {
      goto LABEL_41;
    }

    ++v5;
    v35 = *(a2 + 16);
    if (v5 == REEntityGetChildCount())
    {
      return 0;
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
  return result;
}

uint64_t *key path setter for Entity.ChildCollection.subscript(_:) : Entity.ChildCollection(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  if (*a3 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = *result;
  v6 = *(*a2 + 16);

  result = REEntityGetChildCount();
  if (v3 >= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v7 = *a2;

  Entity.ChildCollection.doSetEntityAt(_:to:preservingWorldTransform:)(v3, v5, 0);
}

uint64_t Entity.ChildCollection.subscript.setter(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  v5 = *(*v2 + 16);
  result = REEntityGetChildCount();
  if (result <= a2)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = *v2;

  Entity.ChildCollection.doSetEntityAt(_:to:preservingWorldTransform:)(a2, v4, 0);
}

uint64_t *(*Entity.ChildCollection.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t *result, char a2)
{
  a1[1] = a2;
  a1[2] = v2;
  a1[3] = *v2;
  *a1 = Entity.ChildCollection.subscript.getter(a2);
  return Entity.ChildCollection.subscript.modify;
}

uint64_t *Entity.ChildCollection.subscript.modify(uint64_t *result, char a2)
{
  v2 = result;
  v3 = *result;
  v4 = result[1];
  if ((a2 & 1) == 0)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v7 = *(result[3] + 16);
      result = REEntityGetChildCount();
      if (result > v4)
      {
        v9 = *v2[2];

        Entity.ChildCollection.doSetEntityAt(_:to:preservingWorldTransform:)(v4, v3, 0);

        goto LABEL_8;
      }

LABEL_14:
      __break(1u);
      return result;
    }

    goto LABEL_12;
  }

  if (v4 < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = *(result[3] + 16);
  v6 = *result;

  result = REEntityGetChildCount();
  if (result <= v4)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = *v2[2];

  Entity.ChildCollection.doSetEntityAt(_:to:preservingWorldTransform:)(v4, v3, 0);

LABEL_8:
}

Swift::Void __swiftcall Entity.ChildCollection.append(contentsOf:preservingWorldTransforms:)(Swift::OpaquePointer contentsOf, Swift::Bool preservingWorldTransforms)
{
  v5 = *v2;
  if (contentsOf._rawValue >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((contentsOf._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v7 = 0;
    while ((contentsOf._rawValue & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1C68F41F0](v7, contentsOf._rawValue);
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      Entity.ChildCollection.doAppend(_:preservingWorldTransform:)(v8, preservingWorldTransforms);

      ++v7;
      if (v9 == i)
      {
        return;
      }
    }

    if (v7 >= *((contentsOf._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v8 = *(contentsOf._rawValue + v7 + 4);

    v9 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t Entity.ChildCollection.append(contentsOf:preservingWorldTransforms:)(uint64_t *a1, char a2)
{
  v4 = *v2;
  v6 = *a1;

  specialized Entity.ChildCollection.forEach(recursive:using:)(0, &v6, v4, a2);
}

uint64_t Entity.ChildCollection.remove(_:preservingWorldTransform:)(uint64_t a1, char a2)
{
  v5 = *v2;
  v6 = *(a1 + 16);

  Parent = REEntityGetParent();
  if (Parent)
  {
    v8 = Parent;
    type metadata accessor for Entity();
    if (REEntityGetSwiftObject())
    {
      v9 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
        __break(1u);
        return result;
      }

      v11 = specialized static Entity.entityInfoType(_:)();
      if (v11)
      {
        v12 = (*(v11 + 232))();
        v13 = *(v12 + 16);

        MEMORY[0x1C68F9740](v13, 0);
        *(v12 + 16) = v8;
        MEMORY[0x1C68F9740](v8, v12);

        v9 = v12;
      }

      else
      {
        v9 = makeEntity(for:)(v8);
      }
    }

    v14 = *(v9 + 16);

    v15 = *(v5 + 16);

    if (v14 == v15)
    {
      if (a2)
      {
        *v16.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(a1, 0);
        v24 = v17;
        v25 = v16;
        v22 = v19;
        v23 = v18;
        v20 = *(a1 + 16);
        REEntitySetParent();
        specialized HasTransform.setTransformMatrix(_:relativeTo:)(0, v25, v24, v23, v22);
      }

      else
      {
        v21 = *(a1 + 16);
        REEntitySetParent();
      }

      return static Entity.updateInteractions(root:)(a1);
    }
  }

  else
  {
  }

  return result;
}

Swift::Void __swiftcall Entity.ChildCollection.remove(at:preservingWorldTransform:)(Swift::Int at, Swift::Bool preservingWorldTransform)
{
  v4 = *v2;
  v5 = Entity.ChildCollection.subscript.getter(at);
  Entity.ChildCollection.doRemove(_:preservingWorldTransform:)(v5, preservingWorldTransform);
}

Swift::Void __swiftcall Entity.ChildCollection.removeAll(keepCapacity:preservingWorldTransforms:)(Swift::Bool keepCapacity, Swift::Bool preservingWorldTransforms)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  ChildCount = REEntityGetChildCount();
  if ((ChildCount & 0x8000000000000000) == 0)
  {
    v7 = ChildCount;
    while (1)
    {
      if (!v7)
      {
        return;
      }

      for (i = 0; i != v7; ++i)
      {
        v10 = *(v4 + 16);
        if (i >= REEntityGetChildCount())
        {
          __break(1u);
          goto LABEL_33;
        }
      }

      v11 = *(v4 + 16);
      if (REEntityGetChildCount() < 1)
      {
        goto LABEL_34;
      }

      v12 = *(v4 + 16);
      Child = REEntityGetChild();
      if (!Child)
      {
        goto LABEL_37;
      }

      v14 = Child;
      type metadata accessor for Entity();
      if (REEntityGetSwiftObject())
      {
        break;
      }

      if (REEntityIsBeingDestroyed())
      {
        goto LABEL_35;
      }

      v17 = specialized static Entity.entityInfoType(_:)();
      if (!v17)
      {
        v15 = makeEntity(for:)(v14);
        goto LABEL_13;
      }

      v16 = (*(v17 + 232))();
      v18 = *(v16 + 16);

      MEMORY[0x1C68F9740](v18, 0);
      *(v16 + 16) = v14;
      MEMORY[0x1C68F9740](v14, v16);

LABEL_17:
      v19 = *(v16 + 16);

      Parent = REEntityGetParent();
      if (!Parent)
      {

        goto LABEL_4;
      }

      v21 = Parent;
      if (REEntityGetSwiftObject())
      {
        v22 = swift_dynamicCastClassUnconditional();
        goto LABEL_20;
      }

      if (REEntityIsBeingDestroyed())
      {
        goto LABEL_36;
      }

      v25 = specialized static Entity.entityInfoType(_:)();
      if (!v25)
      {
        v22 = makeEntity(for:)(v21);
LABEL_20:
        v23 = *(v22 + 16);

        v24 = *(v4 + 16);

        if (v23 == v24)
        {
          goto LABEL_25;
        }

        goto LABEL_4;
      }

      v26 = (*(v25 + 232))();
      MEMORY[0x1C68F9740](*(v26 + 16), 0);
      *(v26 + 16) = v21;
      MEMORY[0x1C68F9740](v21, v26);
      v27 = *(v26 + 16);

      v28 = *(v4 + 16);

      if (v27 == v28)
      {
LABEL_25:
        if (preservingWorldTransforms)
        {
          *v29.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v16, 0);
          v37 = v30;
          v38 = v29;
          v35 = v32;
          v36 = v31;
          v33 = *(v16 + 16);
          REEntitySetParent();
          specialized HasTransform.setTransformMatrix(_:relativeTo:)(0, v38, v37, v36, v35);
        }

        else
        {
          v34 = *(v16 + 16);
          REEntitySetParent();
        }

        static Entity.updateInteractions(root:)(v16);
      }

LABEL_4:

      v8 = *(v4 + 16);
      v7 = REEntityGetChildCount();
      if (v7 < 0)
      {
        goto LABEL_33;
      }
    }

    v15 = swift_dynamicCastClassUnconditional();
LABEL_13:
    v16 = v15;
    goto LABEL_17;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

Swift::Void __swiftcall Entity.ChildCollection.removeAll(preservingWorldTransforms:)(Swift::Bool preservingWorldTransforms)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  ChildCount = REEntityGetChildCount();
  if ((ChildCount & 0x8000000000000000) == 0)
  {
    v6 = ChildCount;
    while (1)
    {
      if (!v6)
      {
        return;
      }

      for (i = 0; i != v6; ++i)
      {
        v9 = *(v3 + 16);
        if (i >= REEntityGetChildCount())
        {
          __break(1u);
          goto LABEL_33;
        }
      }

      v10 = *(v3 + 16);
      if (REEntityGetChildCount() < 1)
      {
        goto LABEL_34;
      }

      v11 = *(v3 + 16);
      Child = REEntityGetChild();
      if (!Child)
      {
        goto LABEL_37;
      }

      v13 = Child;
      type metadata accessor for Entity();
      if (REEntityGetSwiftObject())
      {
        break;
      }

      if (REEntityIsBeingDestroyed())
      {
        goto LABEL_35;
      }

      v16 = specialized static Entity.entityInfoType(_:)();
      if (!v16)
      {
        v14 = makeEntity(for:)(v13);
        goto LABEL_13;
      }

      v15 = (*(v16 + 232))();
      v17 = *(v15 + 16);

      MEMORY[0x1C68F9740](v17, 0);
      *(v15 + 16) = v13;
      MEMORY[0x1C68F9740](v13, v15);

LABEL_17:
      v18 = *(v15 + 16);

      Parent = REEntityGetParent();
      if (!Parent)
      {

        goto LABEL_4;
      }

      v20 = Parent;
      if (REEntityGetSwiftObject())
      {
        v21 = swift_dynamicCastClassUnconditional();
        goto LABEL_20;
      }

      if (REEntityIsBeingDestroyed())
      {
        goto LABEL_36;
      }

      v24 = specialized static Entity.entityInfoType(_:)();
      if (!v24)
      {
        v21 = makeEntity(for:)(v20);
LABEL_20:
        v22 = *(v21 + 16);

        v23 = *(v3 + 16);

        if (v22 == v23)
        {
          goto LABEL_25;
        }

        goto LABEL_4;
      }

      v25 = (*(v24 + 232))();
      MEMORY[0x1C68F9740](*(v25 + 16), 0);
      *(v25 + 16) = v20;
      MEMORY[0x1C68F9740](v20, v25);
      v26 = *(v25 + 16);

      v27 = *(v3 + 16);

      if (v26 == v27)
      {
LABEL_25:
        if (preservingWorldTransforms)
        {
          *v28.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v15, 0);
          v36 = v29;
          v37 = v28;
          v34 = v31;
          v35 = v30;
          v32 = *(v15 + 16);
          REEntitySetParent();
          specialized HasTransform.setTransformMatrix(_:relativeTo:)(0, v37, v36, v35, v34);
        }

        else
        {
          v33 = *(v15 + 16);
          REEntitySetParent();
        }

        static Entity.updateInteractions(root:)(v15);
      }

LABEL_4:

      v7 = *(v3 + 16);
      v6 = REEntityGetChildCount();
      if (v6 < 0)
      {
        goto LABEL_33;
      }
    }

    v14 = swift_dynamicCastClassUnconditional();
LABEL_13:
    v15 = v14;
    goto LABEL_17;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

Swift::Void __swiftcall Entity.ChildCollection.replaceAll(_:preservingWorldTransforms:)(Swift::OpaquePointer _, Swift::Bool preservingWorldTransforms)
{
  v5 = *v2;
  v6 = *(*v2 + 16);
  ChildCount = REEntityGetChildCount();
  if (ChildCount < 0)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v8 = ChildCount;
  while (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v11 = *(v5 + 16);
      if (i >= REEntityGetChildCount())
      {
        __break(1u);
        goto LABEL_40;
      }
    }

    v12 = *(v5 + 16);
    if (REEntityGetChildCount() < 1)
    {
      goto LABEL_41;
    }

    v13 = *(v5 + 16);
    Child = REEntityGetChild();
    if (!Child)
    {
      goto LABEL_47;
    }

    v15 = Child;
    type metadata accessor for Entity();
    if (REEntityGetSwiftObject())
    {
      v16 = swift_dynamicCastClassUnconditional();
LABEL_13:
      v17 = v16;
      goto LABEL_17;
    }

    if (REEntityIsBeingDestroyed())
    {
      goto LABEL_42;
    }

    v18 = specialized static Entity.entityInfoType(_:)();
    if (!v18)
    {
      v16 = makeEntity(for:)(v15);
      goto LABEL_13;
    }

    v17 = (*(v18 + 232))();
    v19 = *(v17 + 16);

    MEMORY[0x1C68F9740](v19, 0);
    *(v17 + 16) = v15;
    MEMORY[0x1C68F9740](v15, v17);

LABEL_17:
    v20 = *(v17 + 16);

    Parent = REEntityGetParent();
    if (!Parent)
    {

      goto LABEL_4;
    }

    v22 = Parent;
    if (REEntityGetSwiftObject())
    {
      v23 = swift_dynamicCastClassUnconditional();
      goto LABEL_20;
    }

    if (REEntityIsBeingDestroyed())
    {
      goto LABEL_43;
    }

    v26 = specialized static Entity.entityInfoType(_:)();
    if (!v26)
    {
      v23 = makeEntity(for:)(v22);
LABEL_20:
      v24 = *(v23 + 16);

      v25 = *(v5 + 16);

      if (v24 == v25)
      {
        goto LABEL_25;
      }

      goto LABEL_4;
    }

    v27 = (*(v26 + 232))();
    MEMORY[0x1C68F9740](*(v27 + 16), 0);
    *(v27 + 16) = v22;
    MEMORY[0x1C68F9740](v22, v27);
    v28 = *(v27 + 16);

    v29 = *(v5 + 16);

    if (v28 == v29)
    {
LABEL_25:
      if (preservingWorldTransforms)
      {
        *v30.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v17, 0);
        v41 = v31;
        v42 = v30;
        v39 = v33;
        v40 = v32;
        v34 = *(v17 + 16);
        REEntitySetParent();
        specialized HasTransform.setTransformMatrix(_:relativeTo:)(0, v42, v41, v40, v39);
      }

      else
      {
        v35 = *(v17 + 16);
        REEntitySetParent();
      }

      static Entity.updateInteractions(root:)(v17);
    }

LABEL_4:

    v9 = *(v5 + 16);
    v8 = REEntityGetChildCount();
    if (v8 < 0)
    {
      goto LABEL_40;
    }
  }

  if (_._rawValue >> 62)
  {
LABEL_44:
    v36 = __CocoaSet.count.getter();
    if (v36)
    {
      goto LABEL_33;
    }

    return;
  }

  v36 = *((_._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v36)
  {
LABEL_33:
    if (v36 < 1)
    {
      __break(1u);
LABEL_47:
      __break(1u);
    }

    else
    {
      for (j = 0; j != v36; ++j)
      {
        if ((_._rawValue & 0xC000000000000001) != 0)
        {
          v38 = MEMORY[0x1C68F41F0](j, _._rawValue);
        }

        else
        {
          v38 = *(_._rawValue + j + 4);
        }

        Entity.ChildCollection.doAppend(_:preservingWorldTransform:)(v38, preservingWorldTransforms);
      }
    }
  }
}

uint64_t Entity.ChildCollection.replaceAll<A>(_:preservingWorldTransforms:)(uint64_t a1, int a2, uint64_t a3)
{
  v21 = a2;
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v20 - v14;
  v20 = *v3;
  v16._rawValue = MEMORY[0x1E69E7CC0];
  v23 = MEMORY[0x1E69E7CC0];
  (*(v6 + 16))(v9, a1, a3, v13);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (!v22)
    {
      break;
    }

    MEMORY[0x1C68F3650](v17);
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v18 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v16._rawValue = v23;
  }

  (*(v11 + 8))(v15, AssociatedTypeWitness);
  v22 = v20;
  Entity.ChildCollection.replaceAll(_:preservingWorldTransforms:)(v16, v21 & 1);
}

uint64_t (*protocol witness for Collection.subscript.read in conformance Entity.ChildCollection(uint64_t *a1, uint64_t *a2))(uint64_t a1)
{
  v3 = Entity.ChildCollection.subscript.getter(*a2);
  *a1 = v3;
  a1[1] = v3;
  return protocol witness for Collection.subscript.read in conformance RealityRenderer.EntityCollection;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance Entity.ChildCollection()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

uint64_t Entity.ChildCollection.description.getter()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);
  v2 = type metadata accessor for Entity();
  v3 = MEMORY[0x1C68F36A0](v1, v2);

  return v3;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Entity.ChildCollection()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);
  v2 = type metadata accessor for Entity();
  v3 = MEMORY[0x1C68F36A0](v1, v2);

  return v3;
}

uint64_t Entity.ChildCollection.IndexingIterator.init(_elements:_position:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = *(type metadata accessor for Entity.ChildCollection.IndexingIterator() + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 32);

  return v8(a4 + v6, a2, AssociatedTypeWitness);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance Entity.ChildCollection.IndexingIterator<A>(uint64_t a1)
{
  v3 = specialized Sequence._copyToContiguousArray()();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t EntityCollection.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return EntityCollection.append<A>(contentsOf:)(a1, a4, a2, a5, a3);
}

{
  v10 = *(a4 + 8);
  dispatch thunk of Collection.endIndex.getter();
  return (*(a4 + 40))(a1, v12, a3, a5, a2, a4);
}

uint64_t EntityCollection.remove(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  lazy protocol witness table accessor for type Entity and conformance Entity();
  result = Collection<>.firstIndex(of:)();
  if ((v8 & 1) == 0)
  {
    return (*(a3 + 56))(v7, a2, a3);
  }

  return result;
}

uint64_t EntityCollection.replaceAll<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return EntityCollection.replaceAll<A>(_:)(a1, a4, a2, a5, a3);
}

{
  (*(a4 + 64))(a2, a4);
  v10 = *(a4 + 40);

  return v10(a1, 0, a3, a5, a2, a4);
}

uint64_t protocol witness for EntityCollection.append(_:) in conformance Entity.ChildCollection()
{
  v3 = *v0;

  Entity.ChildCollection.doAppend(_:preservingWorldTransform:)(v1, 0);
}

uint64_t protocol witness for EntityCollection.remove(at:) in conformance Entity.ChildCollection(uint64_t a1)
{
  v2 = *v1;
  v3 = Entity.ChildCollection.subscript.getter(a1);
  Entity.ChildCollection.doRemove(_:preservingWorldTransform:)(v3, 0);
}

uint64_t specialized Entity.ChildCollection.forEach(recursive:using:)(char a1, uint64_t *a2, uint64_t *a3, char a4)
{
  v7 = *a2;

  result = specialized _copyCollectionToContiguousArray<A>(_:)(v7);
  v9 = result;
  if (result < 0 || (result & 0x4000000000000000) != 0)
  {
    result = __CocoaSet.count.getter();
    v10 = result;
    if (!result)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v10 = *(result + 16);
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v10; ++i)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1C68F41F0](i, v9);
    }

    else
    {
      v12 = *(v9 + 8 * i + 32);
    }

    v13 = a3;
    Entity.ChildCollection.doAppend(_:preservingWorldTransform:)(v12, a4 & 1);
    if (a1)
    {
      v13 = v12;

      specialized Entity.ChildCollection.forEach(recursive:using:)(1, &v13, a3, a4 & 1);
    }
  }

LABEL_13:
}

unint64_t lazy protocol witness table accessor for type Entity.ChildCollection and conformance Entity.ChildCollection()
{
  result = lazy protocol witness table cache variable for type Entity.ChildCollection and conformance Entity.ChildCollection;
  if (!lazy protocol witness table cache variable for type Entity.ChildCollection and conformance Entity.ChildCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.ChildCollection and conformance Entity.ChildCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Entity.ChildCollection and conformance Entity.ChildCollection;
  if (!lazy protocol witness table cache variable for type Entity.ChildCollection and conformance Entity.ChildCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.ChildCollection and conformance Entity.ChildCollection);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Entity.ChildCollection(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Entity.ChildCollection and conformance Entity.ChildCollection();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for Entity.ChildCollection.IndexingIterator(uint64_t a1)
{
  v2 = *(a1 + 16);
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return AssociatedTypeWitness;
}