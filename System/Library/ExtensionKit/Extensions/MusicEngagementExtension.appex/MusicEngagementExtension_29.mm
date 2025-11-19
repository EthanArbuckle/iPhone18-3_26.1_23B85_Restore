uint64_t ArtworkImage.ViewModel.image(for:)(double a1, double a2)
{
  *(v3 + 32) = v2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
  *(v3 + 40) = swift_task_alloc();
  v4 = type metadata accessor for Artwork.CropStyle();
  *(v3 + 48) = v4;
  *(v3 + 56) = *(v4 - 8);
  *(v3 + 64) = swift_task_alloc();
  v5 = type metadata accessor for Artwork();
  *(v3 + 72) = v5;
  *(v3 + 80) = *(v5 - 8);
  *(v3 + 88) = swift_task_alloc();

  return _swift_task_switch(ArtworkImage.ViewModel.image(for:), 0, 0);
}

uint64_t ArtworkImage.ViewModel.image(for:)()
{
  v1 = *(v0 + 6);
  v2 = *(v0 + 7);
  v4 = *(v0 + 4);
  v3 = *(v0 + 5);
  (*(*(v0 + 10) + 16))(*(v0 + 11), v4, *(v0 + 9));
  v5 = type metadata accessor for ArtworkImage.ViewModel(0);
  outlined init with copy of TaskPriority?(v4 + *(v5 + 20), v3, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
  v6 = *(v2 + 48);
  if (v6(v3, 1, v1) == 1)
  {
    if (one-time initialization token for fallback != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 7);
    v7 = *(v0 + 8);
    v10 = *(v0 + 5);
    v9 = *(v0 + 6);
    v11 = __swift_project_value_buffer(v9, static Artwork.CropStyle.fallback);
    (*(v8 + 16))(v7, v11, v9);
    if (v6(v10, 1, v9) != 1)
    {
      outlined destroy of TaskPriority?(*(v0 + 5), &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
    }
  }

  else
  {
    (*(*(v0 + 7) + 32))(*(v0 + 8), *(v0 + 5), *(v0 + 6));
  }

  if (one-time initialization token for fallback != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Artwork.ImageFormat();
  v13 = __swift_project_value_buffer(v12, static Artwork.ImageFormat.fallback);
  v14 = swift_task_alloc();
  *(v0 + 12) = v14;
  *v14 = v0;
  v14[1] = ArtworkImage.ViewModel.image(for:);
  v15 = *(v0 + 8);
  v16 = v0[2];
  v17 = v0[3];

  return Artwork.image(for:cropStyle:format:)(v15, v13, v16, v17);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ArtworkImage.ViewModel.image(for:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[13] = v1;

  v6 = v4[11];
  v7 = v4[10];
  v8 = v4[9];
  v9 = v4[7];
  if (v1)
  {
    (*(v9 + 8))(v4[8], v4[6]);
    (*(v7 + 8))(v6, v8);

    return _swift_task_switch(ArtworkImage.ViewModel.image(for:), 0, 0);
  }

  else
  {
    (*(v9 + 8))();
    (*(v7 + 8))(v6, v8);

    v10 = v5[1];

    return v10(a1);
  }
}

uint64_t Artwork.image(for:cropStyle:format:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v5 + 40) = a2;
  *(v5 + 48) = v4;
  *(v5 + 32) = a1;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkV0aB8InternalE11ImageFormatOSgMd_0);
  *(v5 + 56) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
  *(v5 + 64) = swift_task_alloc();

  return _swift_task_switch(Artwork.image(for:cropStyle:format:), 0, 0);
}

uint64_t Artwork.image(for:cropStyle:format:)()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[4];
  v3 = v0[5];
  v5 = [objc_opt_self() currentTraitCollection];
  [v5 displayScale];
  v7 = v6;

  v8 = type metadata accessor for Artwork.CropStyle();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v2, v4, v8);
  (*(v9 + 56))(v2, 0, 1, v8);
  v10 = type metadata accessor for Artwork.ImageFormat();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v1, v3, v10);
  (*(v11 + 56))(v1, 0, 1, v10);
  v12 = swift_task_alloc();
  v0[9] = v12;
  *v12 = v0;
  v12[1] = Artwork.image(for:cropStyle:format:);
  v14 = v0[7];
  v15 = v0[8];
  v16.n128_u64[0] = v0[2];
  v17.n128_u64[0] = v0[3];

  v13.n128_f64[0] = 1.0 / v7;
  return Artwork.image(width:height:pixelLength:cropStyle:format:cacheOwner:)(v15, v14, 0, 0, v16, v17, v13);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Artwork.image(for:cropStyle:format:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 80) = v1;

  v6 = *(v4 + 64);
  outlined destroy of TaskPriority?(*(v4 + 56), &_s8MusicKit7ArtworkV0aB8InternalE11ImageFormatOSgMd_0);
  outlined destroy of TaskPriority?(v6, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
  if (v1)
  {

    return _swift_task_switch(Artwork.image(for:cropStyle:format:), 0, 0);
  }

  else
  {

    v7 = *(v5 + 8);

    return v7(a1);
  }
}

uint64_t protocol witness for ArtworkImageFetching.image(for:) in conformance ArtworkImage.ViewModel(double a1, double a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = MPCPlayerResponse.perform(_:issuance:options:);

  return ArtworkImage.ViewModel.image(for:)(a1, a2);
}

uint64_t ArtworkImageFetching<>.image(for:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v5 + 40) = a2;
  *(v5 + 48) = v4;
  *(v5 + 32) = a1;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
  *(v5 + 56) = swift_task_alloc();
  v6 = type metadata accessor for Artwork.CropStyle();
  *(v5 + 64) = v6;
  *(v5 + 72) = *(v6 - 8);
  *(v5 + 80) = swift_task_alloc();
  v7 = type metadata accessor for Artwork();
  *(v5 + 88) = v7;
  *(v5 + 96) = *(v7 - 8);
  *(v5 + 104) = swift_task_alloc();

  return _swift_task_switch(ArtworkImageFetching<>.image(for:), 0, 0);
}

uint64_t ArtworkImageFetching<>.image(for:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  v3 = *(v0 + 7);
  v5 = *(v0 + 4);
  v4 = *(v0 + 5);
  (*(v4 + 8))(v5, v4);
  (*(v4 + 16))(v5, v4);
  v6 = *(v2 + 48);
  if (v6(v3, 1, v1) == 1)
  {
    if (one-time initialization token for fallback != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 9);
    v7 = *(v0 + 10);
    v10 = *(v0 + 7);
    v9 = *(v0 + 8);
    v11 = __swift_project_value_buffer(v9, static Artwork.CropStyle.fallback);
    (*(v8 + 16))(v7, v11, v9);
    if (v6(v10, 1, v9) != 1)
    {
      outlined destroy of TaskPriority?(*(v0 + 7), &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
    }
  }

  else
  {
    (*(*(v0 + 9) + 32))(*(v0 + 10), *(v0 + 7), *(v0 + 8));
  }

  if (one-time initialization token for fallback != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Artwork.ImageFormat();
  v13 = __swift_project_value_buffer(v12, static Artwork.ImageFormat.fallback);
  v14 = swift_task_alloc();
  *(v0 + 14) = v14;
  *v14 = v0;
  v14[1] = ArtworkImageFetching<>.image(for:);
  v15 = *(v0 + 10);
  v16 = v0[2];
  v17 = v0[3];

  return Artwork.image(for:cropStyle:format:)(v15, v13, v16, v17);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ArtworkImageFetching<>.image(for:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[15] = v1;

  v6 = v4[13];
  v7 = v4[12];
  v8 = v4[11];
  v9 = v4[9];
  if (v1)
  {
    (*(v9 + 8))(v4[10], v4[8]);
    (*(v7 + 8))(v6, v8);

    return _swift_task_switch(ArtworkImageFetching<>.image(for:), 0, 0);
  }

  else
  {
    (*(v9 + 8))();
    (*(v7 + 8))(v6, v8);

    v10 = v5[1];

    return v10(a1);
  }
}

uint64_t _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU__0(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = _ss11_StringGutsV16_deconstructUTF87scratchyXlSg5owner_xSi6lengthSb11usesScratchSb15allocatedMemorytSwSg_ts8_PointerRzlFSV_Tgq5_1(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t _ss11_StringGutsV16_deconstructUTF87scratchyXlSg5owner_xSi6lengthSb11usesScratchSb15allocatedMemorytSwSg_ts8_PointerRzlFSV_Tgq5_1(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _ss11_StringGutsV23_allocateForDeconstructyXl5owner_SVSi6lengthtyF_1(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

id *_ss11_StringGutsV23_allocateForDeconstructyXl5owner_SVSi6lengthtyF_1(uint64_t a1, unint64_t a2)
{
  v3 = _ss32_copyCollectionToContiguousArrayys0dE0Vy7ElementQzGxSlRzlFSS8UTF8ViewV_Tgq5_1(a1, a2);
  _sSa6append10contentsOfyqd__n_t7ElementQyd__RszSTRd__lFs5UInt8V_SayAFGTgq5_1(&_ss11_StringGutsV23_allocateForDeconstructyXl5owner_SVSi6lengthtyFTv_r_1);
  return v3;
}

id *_ss32_copyCollectionToContiguousArrayys0dE0Vy7ElementQzGxSlRzlFSS8UTF8ViewV_Tgq5_1(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5_1(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5_1(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t _sSa6append10contentsOfyqd__n_t7ElementQyd__RszSTRd__lFs5UInt8V_SayAFGTgq5_1(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_1(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

id *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5_1(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd_1);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

id *_ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_1(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd_1);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * v11 - 64);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(void (*a1)(void))
{
  a1();

  return _typeName(_:qualified:)();
}

unint64_t lazy protocol witness table accessor for type GenericMusicItem and conformance GenericMusicItem()
{
  result = _s16MusicKitInternal07GenericA4ItemOACs23CustomStringConvertibleAAWL_0;
  if (!_s16MusicKitInternal07GenericA4ItemOACs23CustomStringConvertibleAAWL_0)
  {
    type metadata accessor for GenericMusicItem();
    result = swift_getWitnessTable();
    atomic_store(result, &_s16MusicKitInternal07GenericA4ItemOACs23CustomStringConvertibleAAWL_0);
  }

  return result;
}

uint64_t specialized Sequence.first(where:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  while (v8)
  {
    result = (a1)(result);
    if (v3)
    {
      goto LABEL_14;
    }

LABEL_6:
    v8 &= v8 - 1;
    if (result)
    {
      a1 = 0;
      goto LABEL_14;
    }
  }

  do
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v9)
    {
      a1 = 1;
      goto LABEL_14;
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
  }

  while (!v8);
  v11 = v12;
  result = (a1)(result);
  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_14:

  return a1;
}

Swift::Bool __swiftcall Text.StringOption.evaluate(_:)(Swift::String a1)
{
  v1 = HIBYTE(a1._object) & 0xF;
  if ((a1._object & 0x2000000000000000) == 0)
  {
    v1 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  return v1 != 0;
}

BOOL Text.StringOption.evaluate(_:)()
{
  v0 = type metadata accessor for AttributedString.Index();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v14 - v5;
  v7 = type metadata accessor for AttributedString.CharacterView();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AttributedString.characters.getter();
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, &type metadata accessor for AttributedString.CharacterView);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, &type metadata accessor for AttributedString.Index);
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v1 + 8);
  v12(v4, v0);
  v12(v6, v0);
  (*(v8 + 8))(v10, v7);
  return (v11 & 1) == 0;
}

uint64_t Text.init(optional:options:)(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = 0;
    v4 = 1 << *(a3 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a3 + 56);
    v7 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v7 = result & 0xFFFFFFFFFFFFLL;
    }

    v8 = (v4 + 63) >> 6;
    while (v6)
    {
LABEL_7:
      v6 &= v6 - 1;
      if (!v7)
      {

        goto LABEL_14;
      }
    }

    while (1)
    {
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v9 >= v8)
      {

        _sS2SSysWl_0();
        return Text.init<A>(_:)();
      }

      v6 = *(a3 + 56 + 8 * v9);
      ++v3;
      if (v6)
      {
        v3 = v9;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

unint64_t _sS2SSysWl_0()
{
  result = _sS2SSysWL_0;
  if (!_sS2SSysWL_0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &_sS2SSysWL_0);
  }

  return result;
}

uint64_t Text.init(optional:options:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd_0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-v5];
  v7 = type metadata accessor for AttributedString();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v18[-v12];
  outlined init with copy of AttributedString?(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AttributedString?(a1);

    outlined destroy of AttributedString?(v6);
  }

  else
  {
    v14 = (*(v8 + 32))(v13, v6, v7);
    __chkstk_darwin(v14);
    *&v18[-16] = v13;
    v15 = specialized Sequence.first(where:)(partial apply for closure #1 in Text.init(optional:options:), &v18[-32], a2);

    if (v15)
    {
      (*(v8 + 16))(v11, v13, v7);
      v16 = Text.init(_:)();
      outlined destroy of AttributedString?(a1);
      (*(v8 + 8))(v13, v7);
      return v16;
    }

    outlined destroy of AttributedString?(a1);
    (*(v8 + 8))(v13, v7);
  }

  return 0;
}

uint64_t outlined init with copy of AttributedString?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd_0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AttributedString?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd_0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in Text.init(optional:options:)()
{
  v0 = type metadata accessor for AttributedString.Index();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v14 - v5;
  v7 = type metadata accessor for AttributedString.CharacterView();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AttributedString.characters.getter();
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, &type metadata accessor for AttributedString.CharacterView);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, &type metadata accessor for AttributedString.Index);
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v1 + 8);
  v12(v4, v0);
  v12(v6, v0);
  (*(v8 + 8))(v10, v7);
  return v11 & 1;
}

uint64_t static Edge.Set.on(_:)()
{
  v0 = Edge.Set.init(rawValue:)();
  v1 = static Axis.Set.horizontal.getter();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() == v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2EF0;
    v3 = static Edge.Set.leading.getter();
    *(inited + 32) = v3;
    v4 = static Edge.Set.trailing.getter();
    *(inited + 33) = v4;
    v5 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v3)
    {
      v5 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v4)
    {
      v5 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v5)
    {
      v0 = Edge.Set.init(rawValue:)();
    }
  }

  v6 = static Axis.Set.vertical.getter();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() == v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd);
    v7 = swift_initStackObject();
    *(v7 + 16) = xmmword_1004F2EF0;
    v8 = static Edge.Set.top.getter();
    *(v7 + 32) = v8;
    v9 = static Edge.Set.bottom.getter();
    *(v7 + 33) = v9;
    v10 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v8)
    {
      v10 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v9)
    {
      v10 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v10)
    {
      return Edge.Set.init(rawValue:)();
    }
  }

  return v0;
}

double EdgeInsets.init(_:length:)(char a1, double a2)
{
  if (a1)
  {
    static Axis.Set.vertical.getter();
  }

  else
  {
    static Axis.Set.horizontal.getter();
  }

  static Edge.Set.on(_:)();

  return specialized EdgeInsets.init(_:length:)(a2);
}

double EdgeInsets.init(_:length:)(double a1)
{
  static Edge.Set.on(_:)();

  return specialized EdgeInsets.init(_:length:)(a1);
}

void EdgeInsets.affecting(_:)(uint64_t a1)
{
  static Edge.Set.all.getter();
  specialized EdgeInsets.init(_:length:)(0.0);
  v2 = 0;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v7 >= v6)
    {
      return;
    }

    v5 = *(a1 + 56 + 8 * v7);
    ++v2;
    if (v5)
    {
      v2 = v7;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
}

double EdgeInsets.affecting(_:)(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4AxisOGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2400;
  *(inited + 32) = a1 & 1;
  v3 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI4AxisO_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  EdgeInsets.affecting(_:)(v3);
  v5 = v4;

  return v5;
}

double EdgeInsets.value(for:)(char a1, double a2, double a3, double a4, double a5)
{
  result = a2 + a4;
  v6 = a3 + a5;
  if ((a1 & 1) == 0)
  {
    return v6;
  }

  return result;
}

double CGSize.length(for:)(char a1, double a2, double a3)
{
  if (a1)
  {
    return a3;
  }

  return result;
}

uint64_t Axis.isOrthogonal(to:)(char a1, char a2)
{
  if (a2)
  {
    if ((a1 & 1) == 0)
    {
      return 1;
    }
  }

  else if (a1)
  {
    return 1;
  }

  return 0;
}

uint64_t Optional<A>.isOrthogonal(to:)(char a1, char a2)
{
  if (a2 == 2)
  {
    return 1;
  }

  if (a2)
  {
    if ((a1 & 1) == 0)
    {
      return 1;
    }
  }

  else if (a1)
  {
    return 1;
  }

  return 0;
}

uint64_t Axis.Set.init(_:)(char a1)
{
  if (a1)
  {
    return static Axis.Set.vertical.getter();
  }

  else
  {
    return static Axis.Set.horizontal.getter();
  }
}

uint64_t View.always(perform:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  a1();
  v6 = *(*(a2 - 8) + 16);

  return v6(a3, v3, a2);
}

double DynamicTypeSize.scaledValue(_:relativeTo:)(uint64_t a1, double a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15DynamicTypeSizeOSgMd);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:a1];
  v9 = type metadata accessor for DynamicTypeSize();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v7, v2, v9);
  (*(v10 + 56))(v7, 0, 1, v9);
  v11 = UIContentSizeCategory.init(_:)();
  v12 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v11];
  [v8 scaledValueForValue:v12 compatibleWithTraitCollection:a2];
  v14 = v13;

  return v14;
}

uint64_t static Color.random(opacity:)()
{
  v0 = type metadata accessor for Color.RGBColorSpace();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  specialized RandomNumberGenerator.next<A>(upperBound:)(0x20000000000001uLL);
  specialized RandomNumberGenerator.next<A>(upperBound:)(0x20000000000001uLL);
  specialized RandomNumberGenerator.next<A>(upperBound:)(0x20000000000001uLL);
  (*(v1 + 104))(v3, enum case for Color.RGBColorSpace.sRGB(_:), v0);
  return Color.init(_:red:green:blue:opacity:)();
}

uint64_t RoundedRectangle.outset(horizontal:vertical:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v4 = v3;
  v8 = type metadata accessor for LayoutDirection();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v15 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v15 - 8);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of RoundedRectangle(v4, v17, &type metadata accessor for RoundedRectangle);
  v18 = enum case for LayoutDirection.leftToRight(_:);
  v19 = *(v9 + 104);
  v19(v14, enum case for LayoutDirection.leftToRight(_:), v8);
  outlined init with copy of RoundedRectangle(v17, a1, &type metadata accessor for RoundedRectangle);
  v20 = type metadata accessor for RoundedRectangle.OmnidirectionalOutset();
  *(a1 + v20[5]) = a3;
  *(a1 + v20[6]) = a2;
  *(a1 + v20[7]) = a3;
  *(a1 + v20[8]) = a2;
  v19(v12, v18, v8);
  LOBYTE(v18) = static LayoutDirection.== infix(_:_:)();
  v21 = *(v9 + 8);
  v21(v12, v8);
  v21(v14, v8);
  result = outlined destroy of RoundedRectangle(v17);
  *(a1 + v20[9]) = (v18 & 1) == 0;
  return result;
}

uint64_t RoundedRectangle.outset(top:leading:bottom:trailing:layoutDirection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v14 = type metadata accessor for LayoutDirection();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v27 - v19;
  v21 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v21 - 8);
  v23 = &v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of RoundedRectangle(v7, v23, &type metadata accessor for RoundedRectangle);
  (*(v15 + 16))(v20, a1, v14);
  outlined init with copy of RoundedRectangle(v23, a2, &type metadata accessor for RoundedRectangle);
  v24 = type metadata accessor for RoundedRectangle.OmnidirectionalOutset();
  *(a2 + v24[5]) = a3;
  *(a2 + v24[6]) = a4;
  *(a2 + v24[7]) = a5;
  *(a2 + v24[8]) = a6;
  (*(v15 + 104))(v18, enum case for LayoutDirection.leftToRight(_:), v14);
  LOBYTE(v7) = static LayoutDirection.== infix(_:_:)();
  v25 = *(v15 + 8);
  v25(v18, v14);
  v25(v20, v14);
  result = outlined destroy of RoundedRectangle(v23);
  *(a2 + v24[9]) = (v7 & 1) == 0;
  return result;
}

double protocol witness for InsettableShape.inset(by:) in conformance RoundedRectangle.OmnidirectionalOutset@<D0>(int *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = v3;
  outlined init with copy of RoundedRectangle(v5, a2, type metadata accessor for RoundedRectangle.OmnidirectionalOutset);
  v8 = a1[6];
  *(a2 + a1[5]) = *(a2 + a1[5]) - a3;
  *(a2 + v8) = *(a2 + v8) - a3;
  v9 = a1[8];
  *(a2 + a1[7]) = *(a2 + a1[7]) - a3;
  result = *(a2 + v9) - a3;
  *(a2 + v9) = result;
  return result;
}

double protocol witness for Shape.path(in:) in conformance RoundedRectangle.OmnidirectionalOutset@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RoundedCornerStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RoundedRectangle();
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  CGRect.outset(by:for:)();
  outlined init with copy of RoundedRectangle(v2, v11, &type metadata accessor for RoundedRectangle);
  (*(v5 + 32))(v7, &v11[*(v9 + 28)], v4);
  Path.init(roundedRect:cornerSize:style:)();
  result = *&v15;
  v13 = v16;
  *a1 = v15;
  *(a1 + 16) = v13;
  *(a1 + 32) = v17;
  return result;
}

void (*protocol witness for Animatable.animatableData.modify in conformance RoundedRectangle.OmnidirectionalOutset(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return protocol witness for MusicUIContentView.typedConfiguration.modify in conformance Artwork.View;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance RoundedRectangle.OmnidirectionalOutset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type RoundedRectangle.OmnidirectionalOutset and conformance RoundedRectangle.OmnidirectionalOutset, type metadata accessor for RoundedRectangle.OmnidirectionalOutset);

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance RoundedRectangle.OmnidirectionalOutset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type RoundedRectangle.OmnidirectionalOutset and conformance RoundedRectangle.OmnidirectionalOutset, type metadata accessor for RoundedRectangle.OmnidirectionalOutset);

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t protocol witness for View.body.getter in conformance RoundedRectangle.OmnidirectionalOutset(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type RoundedRectangle.OmnidirectionalOutset and conformance RoundedRectangle.OmnidirectionalOutset, type metadata accessor for RoundedRectangle.OmnidirectionalOutset);

  return Shape.body.getter(a1, v2);
}

double specialized EdgeInsets.init(_:length:)(double a1)
{
  v2 = static Edge.Set.top.getter();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() == v2)
  {
    v3 = a1;
  }

  else
  {
    v3 = 0.0;
  }

  static Edge.Set.leading.getter();
  Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  static Edge.Set.bottom.getter();
  Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  static Edge.Set.trailing.getter();
  Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  return v3;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI4AxisO_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7SwiftUI4AxisOGMd);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v10 = *(v6 + v4);
      Hasher.init(_seed:)();
      v11 = Axis.rawValue.getter();
      Hasher._combine(_:)(v11);
      result = Hasher._finalize()();
      v13 = ~(-1 << *(v3 + 32));
      for (i = result & v13; ; i = (i + 1) & v13)
      {
        v15 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v15) == 0)
        {
          break;
        }

        v16 = Axis.rawValue.getter();
        result = Axis.rawValue.getter();
        if (v16 == result)
        {
          goto LABEL_5;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v15;
      *(*(v3 + 48) + i) = v10;
      v7 = *(v3 + 16);
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (!v8)
      {
        *(v3 + 16) = v9;
LABEL_5:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t type metadata accessor for RoundedRectangle.OmnidirectionalOutset()
{
  result = type metadata singleton initialization cache for RoundedRectangle.OmnidirectionalOutset;
  if (!type metadata singleton initialization cache for RoundedRectangle.OmnidirectionalOutset)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined destroy of RoundedRectangle(uint64_t a1)
{
  v2 = type metadata accessor for RoundedRectangle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Text.StringOption and conformance Text.StringOption()
{
  result = lazy protocol witness table cache variable for type Text.StringOption and conformance Text.StringOption;
  if (!lazy protocol witness table cache variable for type Text.StringOption and conformance Text.StringOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.StringOption and conformance Text.StringOption);
  }

  return result;
}

uint64_t sub_1002C5E20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1002C5EA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void type metadata completion function for RoundedRectangle.OmnidirectionalOutset()
{
  type metadata accessor for RoundedRectangle();
  if (v0 <= 0x3F)
  {
    _sSo30UIUserInterfaceLayoutDirectionVMa_0(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ShapeView<RoundedRectangle.OmnidirectionalOutset, ForegroundStyle> and conformance _ShapeView<A, B>()
{
  result = lazy protocol witness table cache variable for type _ShapeView<RoundedRectangle.OmnidirectionalOutset, ForegroundStyle> and conformance _ShapeView<A, B>;
  if (!lazy protocol witness table cache variable for type _ShapeView<RoundedRectangle.OmnidirectionalOutset, ForegroundStyle> and conformance _ShapeView<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleV09MusicCoreB0E21OmnidirectionalOutsetVAA15ForegroundStyleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeView<RoundedRectangle.OmnidirectionalOutset, ForegroundStyle> and conformance _ShapeView<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EmptyAnimatableData and conformance EmptyAnimatableData()
{
  result = lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData;
  if (!lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData);
  }

  return result;
}

uint64_t outlined init with copy of RoundedRectangle(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *_sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation8CalendarV9ComponentOGMd);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component, &type metadata accessor for Calendar.Component);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component, &type metadata accessor for Calendar.Component);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11MusicCoreUI12SymbolButtonC6IntentO_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11MusicCoreUI12SymbolButtonC6IntentOGMd);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t SymbolButton.Configuration.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
  __chkstk_darwin(v2 - 8);
  v218 = &v211 - v3;
  v4 = type metadata accessor for UIView.Corner();
  v219 = *(v4 - 1);
  v220 = v4;
  v5 = __chkstk_darwin(v4);
  v216 = &v211 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v217 = &v211 - v7;
  v229 = 0xD00000000000001CLL;
  v230 = 0x80000001004D09E0;
  v223._countAndFlagsBits = 0;
  v223._object = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v223._countAndFlagsBits = 0xD000000000000017;
  v223._object = 0x80000001004D0A00;
  v8 = type metadata accessor for SymbolButton.Configuration(0);
  v9._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 10;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  String.append(_:)(v223);

  v223._countAndFlagsBits = 0;
  v223._object = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  v223._countAndFlagsBits = 0x6D756D696E696D20;
  v223._object = 0xEF203A20657A6953;
  v11._countAndFlagsBits = CGSize.description.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 10;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  String.append(_:)(v223);

  if ((*(v0 + v8[14] + 16) & 1) == 0)
  {
    v223._countAndFlagsBits = 0;
    v223._object = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v223._countAndFlagsBits = 0xD000000000000014;
    v223._object = 0x80000001004D0DC0;
    v13._countAndFlagsBits = CGSize.description.getter();
    String.append(_:)(v13);

    v14._countAndFlagsBits = 10;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    String.append(_:)(v223);
  }

  v223._countAndFlagsBits = 0;
  v223._object = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v228._countAndFlagsBits = 0xD000000000000011;
  v228._object = 0x80000001004D0A20;
  v15 = v0 + v8[15];
  v16 = *(v15 + 16);
  v223 = *v15;
  v224 = v16;
  type metadata accessor for NSDirectionalEdgeInsets(0);
  v17._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v17);

  v18._countAndFlagsBits = 10;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  String.append(_:)(v228);

  v19 = *(v0 + v8[19]);
  if (v19 == 2)
  {
    v20._countAndFlagsBits = 0xD00000000000001ALL;
    v20._object = 0x80000001004D0A40;
    String.append(_:)(v20);
  }

  else
  {
    v223._countAndFlagsBits = 0;
    v223._object = 0xE000000000000000;
    _StringGuts.grow(_:)(19);

    v223._countAndFlagsBits = 0xD000000000000010;
    v223._object = 0x80000001004D0DA0;
    if (v19)
    {
      v21 = 1702195828;
    }

    else
    {
      v21 = 0x65736C6166;
    }

    if (v19)
    {
      v22 = 0xE400000000000000;
    }

    else
    {
      v22 = 0xE500000000000000;
    }

    v23 = v22;
    String.append(_:)(*&v21);

    v24._countAndFlagsBits = 10;
    v24._object = 0xE100000000000000;
    String.append(_:)(v24);
    String.append(_:)(v223);
  }

  v223._countAndFlagsBits = 0x3A206168706C6120;
  v223._object = 0xE900000000000020;
  v25._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v25);

  v26._countAndFlagsBits = 10;
  v26._object = 0xE100000000000000;
  String.append(_:)(v26);
  String.append(_:)(v223);

  v223._countAndFlagsBits = 0x203A20746E697420;
  v223._object = 0xE800000000000000;
  v228._countAndFlagsBits = *(v0 + v8[18]);
  v27 = v228._countAndFlagsBits;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7UIColorCSgMd);
  v28._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v28);

  v29._countAndFlagsBits = 10;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  String.append(_:)(v223);

  v30 = *(v0 + 8);
  v222 = v8;
  if (v30)
  {
    v31 = *(v0 + 16);
    v32 = *(v0 + 24);
    v33 = *(v0 + 40);
    v34 = *(v0 + 48);
    v213 = *(v0 + 56);
    v211 = *(v0 + 64);
    v214 = *(v0 + 80);
    v35 = *(v0 + 96);
    v212 = *(v0 + 88);
    v215 = *(v0 + 112);
    v36 = *v0;

    v37._countAndFlagsBits = 0x6D7953209480E220;
    v37._object = 0xAE000A7B206C6F62;
    String.append(_:)(v37);
    v223._countAndFlagsBits = 0x656D616E20202020;
    v223._object = 0xEB00000000203A20;
    v38._countAndFlagsBits = v36;
    v38._object = v30;
    String.append(_:)(v38);

    v39._countAndFlagsBits = 10;
    v39._object = 0xE100000000000000;
    String.append(_:)(v39);
    String.append(_:)(v223);

    if (v31)
    {
      v40 = [v31 bundlePath];
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      strcpy(&v223, "    bundle : ");
      HIWORD(v223._object) = -4864;
      v44._countAndFlagsBits = v41;
      v44._object = v43;
      String.append(_:)(v44);

      v45._countAndFlagsBits = 10;
      v45._object = 0xE100000000000000;
      String.append(_:)(v45);
      String.append(_:)(v223);
    }

    strcpy(&v223, "    style : ");
    BYTE5(v223._object) = 0;
    HIWORD(v223._object) = -5120;
    v228._countAndFlagsBits = v32;
    type metadata accessor for UIFontTextStyle(0);
    v46 = v32;
    v47._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v47);

    v48._countAndFlagsBits = 10;
    v48._object = 0xE100000000000000;
    String.append(_:)(v48);
    String.append(_:)(v223);

    if ((v33 & 1) == 0)
    {
      v223._countAndFlagsBits = 0xD000000000000014;
      v223._object = 0x80000001004D0D80;
      v49._countAndFlagsBits = Double.description.getter();
      String.append(_:)(v49);

      v50._countAndFlagsBits = 10;
      v50._object = 0xE100000000000000;
      String.append(_:)(v50);
      String.append(_:)(v223);
    }

    strcpy(&v223, "    weight : ");
    HIWORD(v223._object) = -4864;
    v228._countAndFlagsBits = v34;
    type metadata accessor for UIImageSymbolWeight(0);
    v51._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v51);

    v52._countAndFlagsBits = 10;
    v52._object = 0xE100000000000000;
    String.append(_:)(v52);
    String.append(_:)(v223);

    strcpy(&v223, "    scale : ");
    BYTE5(v223._object) = 0;
    HIWORD(v223._object) = -5120;
    v228._countAndFlagsBits = v213;
    type metadata accessor for UIImageSymbolScale(0);
    v53._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v53);

    v54._countAndFlagsBits = 10;
    v54._object = 0xE100000000000000;
    String.append(_:)(v54);
    String.append(_:)(v223);

    if (v214 != 255)
    {
      strcpy(&v228, "    offset : ");
      HIWORD(v228._object) = -4864;
      v223 = v211;
      LOBYTE(v224) = v214 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14MusicUtilities11DisplayUnitOySo8UIOffsetVGMd);
      v55._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v55);

      v56._countAndFlagsBits = 10;
      v56._object = 0xE100000000000000;
      String.append(_:)(v56);
      String.append(_:)(v228);
    }

    strcpy(&v223, "    alpha : ");
    BYTE5(v223._object) = 0;
    HIWORD(v223._object) = -5120;
    v57._countAndFlagsBits = Double.description.getter();
    String.append(_:)(v57);

    v58._countAndFlagsBits = 10;
    v58._object = 0xE100000000000000;
    String.append(_:)(v58);
    String.append(_:)(v223);

    v223._countAndFlagsBits = 0x746E697420202020;
    v223._object = 0xEB00000000203A20;
    v228._countAndFlagsBits = v215;
    v59 = v215;
    v60._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v60);

    v61._countAndFlagsBits = 10;
    v61._object = 0xE100000000000000;
    String.append(_:)(v61);
    String.append(_:)(v223);

    if (v35)
    {
      v223._countAndFlagsBits = 0xD000000000000018;
      v223._object = 0x80000001004D0D60;

      v62._countAndFlagsBits = v212;
      v62._object = v35;
      String.append(_:)(v62);

      v63._countAndFlagsBits = 10;
      v63._object = 0xE100000000000000;
      String.append(_:)(v63);
      String.append(_:)(v223);
    }

    v64._countAndFlagsBits = 687392;
    v64._object = 0xE300000000000000;
    String.append(_:)(v64);
    v8 = v222;
  }

  else
  {
    v65._object = 0x80000001004D0A60;
    v65._countAndFlagsBits = 0x1000000000000012;
    String.append(_:)(v65);
  }

  v66 = *(v1 + 128);
  if (v66)
  {
    v67 = *(v1 + 160);
    v215 = *(v1 + 152);
    v68 = *(v1 + 184);
    v69 = *(v1 + 176);
    v70 = *(v1 + 144);
    v71 = *(v1 + 136);
    v72 = *(v1 + 120);

    v73._countAndFlagsBits = 0x746954209480E220;
    v73._object = 0xAD00000A7B20656CLL;
    String.append(_:)(v73);
    v223._countAndFlagsBits = 0x7478657420202020;
    v223._object = 0xEB00000000203A20;
    v74._countAndFlagsBits = v72;
    v74._object = v66;
    String.append(_:)(v74);

    v75._countAndFlagsBits = 10;
    v75._object = 0xE100000000000000;
    String.append(_:)(v75);
    String.append(_:)(v223);

    strcpy(&v223, "    style : ");
    BYTE5(v223._object) = 0;
    HIWORD(v223._object) = -5120;
    v228._countAndFlagsBits = v71;
    type metadata accessor for UIFontTextStyle(0);
    v76 = v71;
    v77._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v77);

    v78._countAndFlagsBits = 10;
    v78._object = 0xE100000000000000;
    String.append(_:)(v78);
    String.append(_:)(v223);

    strcpy(&v223, "    weight : ");
    HIWORD(v223._object) = -4864;
    v228._countAndFlagsBits = v70;
    type metadata accessor for UIFontWeight(0);
    v79._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v79);

    v80._countAndFlagsBits = 10;
    v80._object = 0xE100000000000000;
    String.append(_:)(v80);
    String.append(_:)(v223);

    strcpy(&v223, "    alpha : ");
    BYTE5(v223._object) = 0;
    HIWORD(v223._object) = -5120;
    v81._countAndFlagsBits = Double.description.getter();
    String.append(_:)(v81);

    v82._countAndFlagsBits = 10;
    v82._object = 0xE100000000000000;
    String.append(_:)(v82);
    String.append(_:)(v223);

    v223._countAndFlagsBits = 0x746E697420202020;
    v223._object = 0xEB00000000203A20;
    v228._countAndFlagsBits = v69;
    v83 = v69;
    v84._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v84);

    v85._countAndFlagsBits = 10;
    v85._object = 0xE100000000000000;
    String.append(_:)(v85);
    String.append(_:)(v223);

    strcpy(&v223, "    hidden : ");
    HIWORD(v223._object) = -4864;
    if (v68)
    {
      v86 = 1702195828;
    }

    else
    {
      v86 = 0x65736C6166;
    }

    if (v68)
    {
      v87 = 0xE400000000000000;
    }

    else
    {
      v87 = 0xE500000000000000;
    }

    v88 = v87;
    String.append(_:)(*&v86);

    v89._countAndFlagsBits = 10;
    v89._object = 0xE100000000000000;
    String.append(_:)(v89);
    String.append(_:)(v223);

    if (v67)
    {
      v223._countAndFlagsBits = 0xD000000000000018;
      v223._object = 0x80000001004D0D60;

      v90._countAndFlagsBits = v215;
      v90._object = v67;
      String.append(_:)(v90);

      v91._countAndFlagsBits = 10;
      v91._object = 0xE100000000000000;
      String.append(_:)(v91);
      String.append(_:)(v223);
    }

    v92._countAndFlagsBits = 687392;
    v92._object = 0xE300000000000000;
    String.append(_:)(v92);
    v8 = v222;
  }

  else
  {
    v93._countAndFlagsBits = 0x1000000000000011;
    v93._object = 0x80000001004D0A80;
    String.append(_:)(v93);
  }

  v94 = *(v1 + 208);
  if (v94 == 1)
  {
    v95._countAndFlagsBits = 0x1000000000000016;
    v95._object = 0x80000001004D0AA0;
    String.append(_:)(v95);
  }

  else
  {
    v97 = *(v1 + 216);
    v96 = *(v1 + 224);

    v98 = v94;
    v99._object = 0x80000001004D0D40;
    v99._countAndFlagsBits = 0x1000000000000012;
    String.append(_:)(v99);
    strcpy(&v223, "    alpha : ");
    BYTE5(v223._object) = 0;
    HIWORD(v223._object) = -5120;
    v100._countAndFlagsBits = Double.description.getter();
    String.append(_:)(v100);

    v101._countAndFlagsBits = 10;
    v101._object = 0xE100000000000000;
    String.append(_:)(v101);
    String.append(_:)(v223);

    v223._countAndFlagsBits = 0x746E697420202020;
    v223._object = 0xEB00000000203A20;
    v228._countAndFlagsBits = v94;
    v102 = v98;
    v103._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v103);

    v104._countAndFlagsBits = 10;
    v104._object = 0xE100000000000000;
    String.append(_:)(v104);
    String.append(_:)(v223);

    if (v96)
    {
      v223._countAndFlagsBits = 0xD000000000000018;
      v223._object = 0x80000001004D0D60;

      v105._countAndFlagsBits = v97;
      v105._object = v96;
      String.append(_:)(v105);

      v106._countAndFlagsBits = 10;
      v106._object = 0xE100000000000000;
      String.append(_:)(v106);
      String.append(_:)(v223);
    }

    v107._countAndFlagsBits = 687392;
    v107._object = 0xE300000000000000;
    String.append(_:)(v107);

    v8 = v222;
  }

  v108 = *(v1 + 296);
  if (v108)
  {
    v109 = *(v1 + 288);
    v110 = *(v1 + 280);
    v228._countAndFlagsBits = 0x726F42209480E220;
    v228._object = 0xAE00203A20726564;
    v223._countAndFlagsBits = v110;
    LOBYTE(v223._object) = v109 & 1;
    *&v224 = v108;
    v111 = v108;
    v112._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v112);

    v113._countAndFlagsBits = 10;
    v113._object = 0xE100000000000000;
    String.append(_:)(v113);
    String.append(_:)(v228);
  }

  else
  {
    v114._object = 0x80000001004D0AC0;
    v114._countAndFlagsBits = 0x1000000000000012;
    String.append(_:)(v114);
  }

  v115 = v218;
  outlined init with copy of UIView.Corner?(v1 + v8[9], v218);
  v117 = v219;
  v116 = v220;
  if ((v219[6])(v115, 1, v220) == 1)
  {
    outlined destroy of UIView.Corner?(v115);
    v118._object = 0x80000001004D0AE0;
    v118._countAndFlagsBits = 0x1000000000000012;
    String.append(_:)(v118);
  }

  else
  {
    v119 = v217;
    v117[4](v217, v115, v116);
    v223._countAndFlagsBits = 0x726F43209480E220;
    v223._object = 0xAE00203A2072656ELL;
    v117[2](v216, v119, v116);
    v120._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v120);

    v121._countAndFlagsBits = 10;
    v121._object = 0xE100000000000000;
    String.append(_:)(v121);
    String.append(_:)(v223);

    (v117[1])(v119, v116);
  }

  v122 = *(v1 + 232);
  if (v122 == 1)
  {
    v123._countAndFlagsBits = 0x1000000000000014;
    v123._object = 0x80000001004D0B00;
    String.append(_:)(v123);
  }

  else
  {
    v125 = *(v1 + 240);
    v124 = *(v1 + 248);
    v126 = *(v1 + 272);
    v127 = *(v1 + 256);
    v217 = *(v1 + 264);
    v218 = v127;

    v128 = v122;
    v220 = v125;
    v219 = v124;
    v129._countAndFlagsBits = 0x1000000000000010;
    v129._object = 0x80000001004D0CC0;
    String.append(_:)(v129);
    if (v122)
    {
      v223._countAndFlagsBits = 0xD000000000000017;
      v223._object = 0x80000001004D0D20;
      v130 = v128;
      v131 = [v130 description];
      v132 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v134 = v133;

      v135._countAndFlagsBits = v132;
      v135._object = v134;
      String.append(_:)(v135);

      v136._countAndFlagsBits = 10;
      v136._object = 0xE100000000000000;
      String.append(_:)(v136);
      String.append(_:)(v223);

      v8 = v222;
    }

    if (v125)
    {
      v223._countAndFlagsBits = 0xD000000000000017;
      v223._object = 0x80000001004D0D00;
      v137 = v220;
      v138 = [v137 description];
      v139 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v141 = v140;

      v142._countAndFlagsBits = v139;
      v142._object = v141;
      String.append(_:)(v142);

      v143._countAndFlagsBits = 10;
      v143._object = 0xE100000000000000;
      String.append(_:)(v143);
      String.append(_:)(v223);

      v8 = v222;
    }

    v144 = v219;
    if (v124)
    {
      v223._countAndFlagsBits = 0xD000000000000014;
      v223._object = 0x80000001004D0CE0;
      v145 = v219;
      v146 = [v145 description];
      v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v149 = v148;

      v150._countAndFlagsBits = v147;
      v150._object = v149;
      String.append(_:)(v150);

      v151._countAndFlagsBits = 10;
      v151._object = 0xE100000000000000;
      String.append(_:)(v151);
      String.append(_:)(v223);

      v8 = v222;
    }

    if (v218 != 2)
    {
      strcpy(&v223, "    color : ");
      BYTE5(v223._object) = 0;
      HIWORD(v223._object) = -5120;
      LOBYTE(v228._countAndFlagsBits) = v218 & 1;
      v152._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v152);

      v153._countAndFlagsBits = 10;
      v153._object = 0xE100000000000000;
      String.append(_:)(v153);
      String.append(_:)(v223);
    }

    if (v126)
    {
      strcpy(&v223, "    group : ");
      BYTE5(v223._object) = 0;
      HIWORD(v223._object) = -5120;

      v154._countAndFlagsBits = v217;
      v154._object = v126;
      String.append(_:)(v154);

      v155._countAndFlagsBits = 10;
      v155._object = 0xE100000000000000;
      String.append(_:)(v155);
      String.append(_:)(v223);
    }

    v156._countAndFlagsBits = 687392;
    v156._object = 0xE300000000000000;
    String.append(_:)(v156);
  }

  v157 = v1 + v8[10];
  v158 = *v157;
  if (*v157)
  {
    v160 = *(v157 + 40);
    v159 = *(v157 + 48);
    v162 = *(v157 + 24);
    v161 = *(v157 + 32);
    v163 = *(v157 + 8);
    v164 = *(v157 + 16);
    v228._countAndFlagsBits = 0x1000000000000013;
    v228._object = 0x80000001004D0CA0;
    v223._countAndFlagsBits = v158;
    v223._object = v163;
    *&v224 = v164;
    *(&v224 + 1) = v162;
    v225 = v161;
    v226 = v160;
    v227 = v159;
    outlined copy of SymbolButton.CustomView?(v158, v163, v164, v162, v161, v160, v159);
    v165 = v159;
    v166 = v158;
    v167._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v167);

    v168._countAndFlagsBits = 10;
    v168._object = 0xE100000000000000;
    String.append(_:)(v168);
    String.append(_:)(v228);

    v169 = v162;
    v8 = v222;
    outlined consume of SymbolButton.CustomView?(v158, v163, v164, v169, v161, v160, v159);
  }

  else
  {
    v170._countAndFlagsBits = 0x1000000000000017;
    v170._object = 0x80000001004D0B20;
    String.append(_:)(v170);
  }

  v171 = (v1 + v8[11]);
  v172 = v171[2];
  if (v172 == 1)
  {
    v173._countAndFlagsBits = 0x1000000000000011;
    v173._object = 0x80000001004D0B40;
    String.append(_:)(v173);
  }

  else
  {
    v175 = *v171;
    v174 = v171[1];
    v176 = v172;
    v177._countAndFlagsBits = 0x646142209480E220;
    v177._object = 0xAD00000A7B206567;
    String.append(_:)(v177);
    v223._countAndFlagsBits = 0xD000000000000014;
    v223._object = 0x80000001004D0C80;
    v178._countAndFlagsBits = Double.description.getter();
    String.append(_:)(v178);

    v179._countAndFlagsBits = 10;
    v179._object = 0xE100000000000000;
    String.append(_:)(v179);
    String.append(_:)(v223);

    strcpy(&v223, "    alpha : ");
    BYTE5(v223._object) = 0;
    HIWORD(v223._object) = -5120;
    v180._countAndFlagsBits = Double.description.getter();
    String.append(_:)(v180);

    v181._countAndFlagsBits = 10;
    v181._object = 0xE100000000000000;
    String.append(_:)(v181);
    String.append(_:)(v223);

    v223._countAndFlagsBits = 0x746E697420202020;
    v223._object = 0xEB00000000203A20;
    v228._countAndFlagsBits = v172;
    v182 = v176;
    v183._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v183);

    v184._countAndFlagsBits = 10;
    v184._object = 0xE100000000000000;
    String.append(_:)(v184);
    String.append(_:)(v223);

    v185._countAndFlagsBits = 687392;
    v185._object = 0xE300000000000000;
    String.append(_:)(v185);
    outlined consume of SymbolButton.Badge?(v175, v174, v172);
  }

  v186 = (v1 + v8[16]);
  v187 = *v186;
  v188 = *(v186 + 1);
  v189 = *(v186 + 2);
  v190 = v186[24];
  v191._countAndFlagsBits = 0x1000000000000015;
  v191._object = 0x80000001004D0B60;
  String.append(_:)(v191);
  v223._countAndFlagsBits = 0xD00000000000001BLL;
  v223._object = 0x80000001004D0B80;
  if (v187)
  {
    v192 = 1702195828;
  }

  else
  {
    v192 = 0x65736C6166;
  }

  if (v187)
  {
    v193 = 0xE400000000000000;
  }

  else
  {
    v193 = 0xE500000000000000;
  }

  v194 = v193;
  String.append(_:)(*&v192);

  v195._countAndFlagsBits = 10;
  v195._object = 0xE100000000000000;
  String.append(_:)(v195);
  String.append(_:)(v223);

  if (v188)
  {
    v223._countAndFlagsBits = 0xD000000000000021;
    v223._object = 0x80000001004D0C50;
    v228._countAndFlagsBits = v188;
    type metadata accessor for UIContentSizeCategory(0);
    v196 = v188;
    v197._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v197);

    v198._countAndFlagsBits = 10;
    v198._object = 0xE100000000000000;
    String.append(_:)(v198);
    String.append(_:)(v223);

    if (v189)
    {
LABEL_72:
      v223._countAndFlagsBits = 0xD000000000000021;
      v223._object = 0x80000001004D0C20;
      v228._countAndFlagsBits = v189;
      type metadata accessor for UIContentSizeCategory(0);
      v199 = v189;
      v200._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v200);

      v201._countAndFlagsBits = 10;
      v201._object = 0xE100000000000000;
      String.append(_:)(v201);
      String.append(_:)(v223);

      goto LABEL_75;
    }
  }

  else
  {
    v202._countAndFlagsBits = 0xD00000000000002DLL;
    v202._object = 0x80000001004D0BA0;
    String.append(_:)(v202);
    if (v189)
    {
      goto LABEL_72;
    }
  }

  v203._countAndFlagsBits = 0xD00000000000002DLL;
  v203._object = 0x80000001004D0BD0;
  String.append(_:)(v203);
LABEL_75:
  v223._countAndFlagsBits = 0xD00000000000001ELL;
  v223._object = 0x80000001004D0C00;
  if (v190)
  {
    v204 = 1702195828;
  }

  else
  {
    v204 = 0x65736C6166;
  }

  if (v190)
  {
    v205 = 0xE400000000000000;
  }

  else
  {
    v205 = 0xE500000000000000;
  }

  v206 = v205;
  String.append(_:)(*&v204);

  v207._countAndFlagsBits = 10;
  v207._object = 0xE100000000000000;
  String.append(_:)(v207);
  String.append(_:)(v223);

  v208._countAndFlagsBits = 687392;
  v208._object = 0xE300000000000000;
  String.append(_:)(v208);
  v209._countAndFlagsBits = 41;
  v209._object = 0xE100000000000000;
  String.append(_:)(v209);
  return v229;
}

uint64_t outlined init with copy of UIView.Corner?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of UIView.Corner?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void outlined consume of SymbolButton.Badge?(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3 != 1)
  {
  }
}

id outlined copy of SymbolButton.CustomView?(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (result)
  {
    v8 = result;
    v7 = a7;

    return v8;
  }

  return result;
}

uint64_t one-time initialization function for normal(uint64_t a1)
{
  return one-time initialization function for solidSecondarySystemFill(a1, closure #1 in variable initialization expression of static UIColor.MusicTint.normal, &block_descriptor_13_3, &static UIColor.MusicTint.normal);
}

{
  return one-time initialization function for normal(a1, &one-time initialization token for normal, &static UIColor.MusicTint.normal, &static Color.MusicTint.normal);
}

id closure #1 in variable initialization expression of static UIColor.MusicTint.normal(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = [a1 accessibilityContrast];
  if (!v2)
  {
    goto LABEL_6;
  }

  if (v2 == 2)
  {
    v4 = v3;
    type metadata accessor for UIColor();
    v5 = 1.0;
    v6 = 250;
    if (v4 == 1)
    {
      v7 = 88;
      v8 = 106;
    }

    else
    {
      v7 = 45;
      v8 = 72;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  if (v2 == 1)
  {
LABEL_6:
    if (v3 == 1)
    {
      type metadata accessor for UIColor();
      v5 = 1.0;
      v6 = 204;
      v7 = 0;
      v8 = 20;
    }

    else
    {
      type metadata accessor for UIColor();
      v5 = 1.0;
      v6 = 250;
      v7 = 35;
      v8 = 59;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t *UIColor.MusicTint.normal.unsafeMutableAddressor()
{
  if (one-time initialization token for normal != -1)
  {
    swift_once();
  }

  return &static UIColor.MusicTint.normal;
}

uint64_t one-time initialization function for rollover(uint64_t a1)
{
  return one-time initialization function for solidSecondarySystemFill(a1, closure #1 in variable initialization expression of static UIColor.MusicTint.rollover, &block_descriptor_10_1, &static UIColor.MusicTint.rollover);
}

{
  return one-time initialization function for normal(a1, &one-time initialization token for rollover, &static UIColor.MusicTint.rollover, &static Color.MusicTint.rollover);
}

id closure #1 in variable initialization expression of static UIColor.MusicTint.rollover(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = [a1 accessibilityContrast];
  if (!v2)
  {
    goto LABEL_6;
  }

  if (v2 == 2)
  {
    v4 = v3;
    type metadata accessor for UIColor();
    v5 = 1.0;
    v6 = 255;
    if (v4 == 1)
    {
      v7 = 138;
      v8 = 156;
    }

    else
    {
      v7 = 95;
      v8 = 122;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  if (v2 == 1)
  {
LABEL_6:
    if (v3 == 1)
    {
      type metadata accessor for UIColor();
      v5 = 1.0;
      v6 = 162;
      v7 = 0;
      v8 = 0;
    }

    else
    {
      type metadata accessor for UIColor();
      v5 = 1.0;
      v6 = 198;
      v7 = 0;
      v8 = 7;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *UIColor.MusicTint.rollover.unsafeMutableAddressor()
{
  if (one-time initialization token for rollover != -1)
  {
    swift_once();
  }

  return &static UIColor.MusicTint.rollover;
}

uint64_t one-time initialization function for pressed(uint64_t a1)
{
  return one-time initialization function for solidSecondarySystemFill(a1, closure #1 in variable initialization expression of static UIColor.MusicTint.pressed, &block_descriptor_7_0, &static UIColor.MusicTint.pressed);
}

{
  return one-time initialization function for normal(a1, &one-time initialization token for pressed, &static UIColor.MusicTint.pressed, &static Color.MusicTint.pressed);
}

id closure #1 in variable initialization expression of static UIColor.MusicTint.pressed(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = [a1 accessibilityContrast];
  if (!v2)
  {
    goto LABEL_6;
  }

  if (v2 == 2)
  {
    v4 = v3;
    type metadata accessor for UIColor();
    v5 = 1.0;
    v6 = 255;
    if (v4 == 1)
    {
      v7 = 113;
      v8 = 131;
    }

    else
    {
      v7 = 70;
      v8 = 97;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  if (v2 == 1)
  {
LABEL_6:
    if (v3 == 1)
    {
      type metadata accessor for UIColor();
      v5 = 1.0;
      v6 = 187;
      v7 = 0;
      v8 = 0;
    }

    else
    {
      type metadata accessor for UIColor();
      v5 = 1.0;
      v6 = 224;
      v7 = 9;
      v8 = 33;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t *UIColor.MusicTint.pressed.unsafeMutableAddressor()
{
  if (one-time initialization token for pressed != -1)
  {
    swift_once();
  }

  return &static UIColor.MusicTint.pressed;
}

uint64_t one-time initialization function for deepPressed(uint64_t a1)
{
  return one-time initialization function for solidSecondarySystemFill(a1, closure #1 in variable initialization expression of static UIColor.MusicTint.deepPressed, &block_descriptor_4_0, &static UIColor.MusicTint.deepPressed);
}

{
  return one-time initialization function for normal(a1, &one-time initialization token for deepPressed, &static UIColor.MusicTint.deepPressed, &static Color.MusicTint.deepPressed);
}

id closure #1 in variable initialization expression of static UIColor.MusicTint.deepPressed(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = [a1 accessibilityContrast];
  if (!v2)
  {
    goto LABEL_6;
  }

  if (v2 == 2)
  {
    v4 = v3;
    type metadata accessor for UIColor();
    v5 = 1.0;
    v6 = 255;
    if (v4 == 1)
    {
      v7 = 138;
      v8 = 156;
    }

    else
    {
      v7 = 95;
      v8 = 122;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  if (v2 == 1)
  {
LABEL_6:
    if (v3 == 1)
    {
      type metadata accessor for UIColor();
      v5 = 1.0;
      v6 = 162;
      v7 = 0;
      v8 = 0;
    }

    else
    {
      type metadata accessor for UIColor();
      v5 = 1.0;
      v6 = 198;
      v7 = 0;
      v8 = 7;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *UIColor.MusicTint.deepPressed.unsafeMutableAddressor()
{
  if (one-time initialization token for deepPressed != -1)
  {
    swift_once();
  }

  return &static UIColor.MusicTint.deepPressed;
}

uint64_t one-time initialization function for disabled(uint64_t a1)
{
  return one-time initialization function for solidSecondarySystemFill(a1, closure #1 in variable initialization expression of static UIColor.MusicTint.disabled, &block_descriptor_51, &static UIColor.MusicTint.disabled);
}

{
  return one-time initialization function for normal(a1, &one-time initialization token for disabled, &static UIColor.MusicTint.disabled, &static Color.MusicTint.disabled);
}

id closure #1 in variable initialization expression of static UIColor.MusicTint.disabled(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = [a1 accessibilityContrast];
  if (!v2)
  {
    goto LABEL_6;
  }

  if (v2 == 2)
  {
    v4 = v3;
    type metadata accessor for UIColor();
    v5 = 250;
    if (v4 == 1)
    {
      v6 = 88;
      v7 = 106;
    }

    else
    {
      v6 = 45;
      v7 = 72;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v5, v6, v7, 0.35);
  }

  if (v2 == 1)
  {
LABEL_6:
    if (v3 == 1)
    {
      type metadata accessor for UIColor();
      v5 = 214;
      v6 = 0;
      v7 = 23;
    }

    else
    {
      type metadata accessor for UIColor();
      v5 = 250;
      v6 = 35;
      v7 = 59;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v5, v6, v7, 0.35);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *UIColor.MusicTint.disabled.unsafeMutableAddressor()
{
  if (one-time initialization token for disabled != -1)
  {
    swift_once();
  }

  return &static UIColor.MusicTint.disabled;
}

uint64_t *Color.MusicTint.normal.unsafeMutableAddressor()
{
  if (one-time initialization token for normal != -1)
  {
    swift_once();
  }

  return &static Color.MusicTint.normal;
}

uint64_t *Color.MusicTint.rollover.unsafeMutableAddressor()
{
  if (one-time initialization token for rollover != -1)
  {
    swift_once();
  }

  return &static Color.MusicTint.rollover;
}

uint64_t *Color.MusicTint.pressed.unsafeMutableAddressor()
{
  if (one-time initialization token for pressed != -1)
  {
    swift_once();
  }

  return &static Color.MusicTint.pressed;
}

uint64_t *Color.MusicTint.deepPressed.unsafeMutableAddressor()
{
  if (one-time initialization token for deepPressed != -1)
  {
    swift_once();
  }

  return &static Color.MusicTint.deepPressed;
}

uint64_t one-time initialization function for normal(uint64_t a1, void *a2, id *a3, uint64_t *a4)
{
  if (*a2 != -1)
  {
    v7 = a3;
    swift_once();
    a3 = v7;
  }

  v5 = *a3;
  result = Color.init(_:)();
  *a4 = result;
  return result;
}

uint64_t *Color.MusicTint.disabled.unsafeMutableAddressor()
{
  if (one-time initialization token for disabled != -1)
  {
    swift_once();
  }

  return &static Color.MusicTint.disabled;
}

uint64_t static Color.MusicTint.normal.getter(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t block_copy_helper_51(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t type metadata accessor for UIColor()
{
  result = _sSo7UIColorCML_0;
  if (!_sSo7UIColorCML_0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &_sSo7UIColorCML_0);
  }

  return result;
}

UITraitCollection __swiftcall UITraitCollection.init(mediaLibrary:)(MPMediaLibrary_optional mediaLibrary)
{
  isa = mediaLibrary.value.super.isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004F2F10;
  v3 = objc_opt_self();
  v4 = isa;
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 _traitCollectionWithValue:v4 forTraitNamed:v5];

  if (v6)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    *(v2 + 32) = v6;
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UITraitCollection);
    v9 = Array._bridgeToObjectiveC()().super.isa;

    v10 = [ObjCClassFromMetadata traitCollectionWithTraitsFromCollections:v9];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id UITraitCollection.mediaLibrary.getter()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 _valueForTraitNamed:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    type metadata accessor for UIAction(0, &_sSo14MPMediaLibraryCML_0);
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    _sypSgWOh_0(v7);
  }

  result = [objc_opt_self() deviceMediaLibrary];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

UITraitCollection __swiftcall UITraitCollection.init(legacyLibraryFilter:)(__C::MPMediaLibraryFilteringOptions legacyLibraryFilter)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004F2F10;
  v3 = objc_opt_self();
  v4 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:legacyLibraryFilter.rawValue];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 _traitCollectionWithValue:v4 forTraitNamed:v5];

  if (v6)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    *(v2 + 32) = v6;
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UITraitCollection);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = [ObjCClassFromMetadata traitCollectionWithTraitsFromCollections:isa];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__C::MPMediaLibraryFilteringOptions UITraitCollection.legacyLibraryFilter.getter()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 _valueForTraitNamed:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    type metadata accessor for UIAction(0, &_sSo8NSNumberCML_0);
    if (swift_dynamicCast())
    {
      v3.value.super.super.isa = v5;
    }

    else
    {
      v3.value.super.super.isa = 0;
    }
  }

  else
  {
    _sypSgWOh_0(v8);
    v3.value.super.super.isa = 0;
  }

  return MPMediaLibraryFilteringOptions.init(_:)(v3);
}

BOOL UITraitCollection.isMediaPicker.getter()
{
  v0 = UITraitCollection.mediaPickerConfiguration.getter();
  v1 = v0;
  if (v0)
  {
  }

  return v1 != 0;
}

uint64_t UITraitCollection.mediaPickerConfiguration.getter()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 _valueForTraitNamed:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    type metadata accessor for UIAction(0, &_sSo26MPMediaPickerConfigurationCML_0);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    _sypSgWOh_0(v7);
    return 0;
  }
}

uint64_t UITraitCollection.init(mediaPickerConfiguration:)(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 _traitCollectionWithValue:v3 forTraitNamed:v4];

  if (v5)
  {
    v6.rawValue = *MPMediaLibraryFilteringOptions.none.unsafeMutableAddressor();
    if (![v3 showsItemsWithProtectedAssets])
    {
      v6.rawValue |= 0x20;
    }

    if (![v3 showsCloudItems])
    {
      v6.rawValue |= 2;
    }

    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UITraitCollection);
    isa = UITraitCollection.init(mediaPickerLibraryFilter:)(v6).super.isa;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1004F2FF0;
    *(v9 + 32) = v5;
    *(v9 + 40) = isa;
    v10 = v5;
    v11 = isa;
    v12 = Array._bridgeToObjectiveC()().super.isa;

    v13 = [ObjCClassFromMetadata traitCollectionWithTraitsFromCollections:v12];

    return v13;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

UITraitCollection __swiftcall UITraitCollection.init(mediaPickerLibraryFilter:)(__C::MPMediaLibraryFilteringOptions mediaPickerLibraryFilter)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004F2F10;
  v3 = objc_opt_self();
  v4 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:mediaPickerLibraryFilter.rawValue];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 _traitCollectionWithValue:v4 forTraitNamed:v5];

  if (v6)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    *(v2 + 32) = v6;
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UITraitCollection);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = [ObjCClassFromMetadata traitCollectionWithTraitsFromCollections:isa];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__C::MPMediaLibraryFilteringOptions UITraitCollection.mediaPickerLibraryFilter.getter()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 _valueForTraitNamed:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    type metadata accessor for UIAction(0, &_sSo8NSNumberCML_0);
    if (swift_dynamicCast())
    {
      v3.value.super.super.isa = v5;
    }

    else
    {
      v3.value.super.super.isa = 0;
    }
  }

  else
  {
    _sypSgWOh_0(v8);
    v3.value.super.super.isa = 0;
  }

  return MPMediaLibraryFilteringOptions.init(_:)(v3);
}

uint64_t UITraitCollection.configure<A, B>(libraryRequest:)(void *a1)
{
  v2 = [a1 mediaLibrary];
  v3 = UITraitCollection.mediaLibrary.getter();
  v4 = v3;
  if (v2)
  {
    type metadata accessor for UIAction(0, &_sSo14MPMediaLibraryCML_0);
    v5 = static NSObject.== infix(_:_:)();

    if (v5)
    {
      v6 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v7 = UITraitCollection.mediaLibrary.getter();
  [a1 setMediaLibrary:v7];

  v6 = 1;
LABEL_6:
  v8 = [a1 filteringOptions];
  rawValue = UITraitCollection.legacyLibraryFilter.getter().rawValue;
  if (((UITraitCollection.mediaPickerLibraryFilter.getter().rawValue | rawValue) & ~v8) != 0)
  {
    v10 = UITraitCollection.legacyLibraryFilter.getter().rawValue;
    [a1 setFilteringOptions:{UITraitCollection.mediaPickerLibraryFilter.getter().rawValue | v10 | objc_msgSend(a1, "filteringOptions")}];
    return 1;
  }

  return v6;
}

UIMenu static UIMenu.lazy(title:image:options:cached:childrenProvider:)(uint64_t a1, void *a2, void *a3, UIMenuIdentifier_optional a4, char a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_1004F2F10;
  if (a5)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = a6;
    *(v15 + 24) = a7;
    v31 = partial apply for closure #2 in static UIMenu.lazy(title:image:options:cached:childrenProvider:);
    v32 = v15;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
    v30 = &block_descriptor_6_1;
    v16 = _Block_copy(&aBlock);
    v17 = objc_opt_self();

    v18 = [v17 elementWithProvider:v16];
    _Block_release(v16);
  }

  else
  {
    v19 = objc_opt_self();
    v20 = swift_allocObject();
    *(v20 + 16) = a6;
    *(v20 + 24) = a7;
    v31 = partial apply for closure #1 in static UIMenu.lazy(title:image:options:cached:childrenProvider:);
    v32 = v20;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
    v30 = &block_descriptor_52;
    v21 = _Block_copy(&aBlock);

    v18 = [v19 elementWithUncachedProvider:v21];
    _Block_release(v21);
  }

  *(preferredElementSize + 32) = v18;
  if (a2)
  {
    v22 = a2;
  }

  else
  {
    a1 = 0;
    v22 = 0xE000000000000000;
  }

  type metadata accessor for UIAction(0, &_sSo6UIMenuCML_0);
  v23 = a3;

  v24._countAndFlagsBits = a1;
  v24._object = v22;
  v33.value.super.isa = a3;
  v33.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v24, 0, v33, a4, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v26);
}

uint64_t sub_1002C9D38()
{

  return swift_deallocObject();
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ()(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> (), v4);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> ()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UIAction(0, &_sSo13UIMenuElementCML_0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

UIMenu __swiftcall UIMenu.init(representativeOf:title:image:options:)(Swift::OpaquePointer representativeOf, Swift::String_optional title, UIImage_optional image, UIMenuOptions options)
{
  v4.value = *&image.is_nil;
  isa = image.value.super.isa;
  if (title.value._object)
  {
    countAndFlagsBits = title.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
  }

  if (title.value._object)
  {
    object = title.value._object;
  }

  else
  {
    object = 0xE000000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_1004F2F10;
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  v11[2]._rawValue = representativeOf._rawValue;
  v11[3]._rawValue = v4.value;
  aBlock[4] = partial apply for closure #1 in UIMenu.init(representativeOf:title:image:options:);
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
  aBlock[3] = &block_descriptor_12;
  v12 = _Block_copy(aBlock);

  v13 = [v10 elementWithUncachedProvider:v12];
  _Block_release(v12);
  *(preferredElementSize + 32) = v13;
  v14._countAndFlagsBits = countAndFlagsBits;
  v14._object = object;
  v18.value.super.isa = isa;
  v18.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v14, 0, v18, v4, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v16);
}

uint64_t closure #1 in UIMenu.init(representativeOf:title:image:options:)(void (*a1)(id *), uint64_t a2, unint64_t a3, NSString *a4)
{
  v16 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v8 = *(a3 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v15 = v8;
      closure #1 in closure #1 in UIMenu.init(representativeOf:title:image:options:)(&v16, &v15, a4, &v14);

      v11 = v14;
      v16 = v14;
      ++v7;
      if (v10 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v11 = _swiftEmptyArrayStorage;
LABEL_15:
  a1(v11);
}

uint64_t closure #1 in closure #1 in UIMenu.init(representativeOf:title:image:options:)@<X0>(uint64_t *a1@<X0>, id *a2@<X1>, NSString *a3@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  if ([*a2 isHidden])
  {
    *a4 = v6;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  v10 = (v9 + 16);

  v11 = [v7 menuRepresentation];
  if (v11)
  {
    v12 = v11;
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    v14 = v12;
    if (v13)
    {
      v15.value = a3;
      append #1 (menu:) in closure #1 in closure #1 in UIMenu.init(representativeOf:title:image:options:)(v13, v15, v9, v7);
    }

    else
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    goto LABEL_26;
  }

  v16 = [v7 menu];
  if (!v16)
  {
    v19 = [v7 primaryAction];
    if (v19 && (v20 = v19, [v19 copy], v20, _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), type metadata accessor for UIAction(0, &_sSo8UIActionCML_0), (swift_dynamicCast() & 1) != 0))
    {
      v21 = v38;
    }

    else
    {
      v22 = v7;
      v23 = [v22 target];
      v24 = [v22 action];
      if (!v23)
      {

        goto LABEL_26;
      }

      v25 = v24;
      if (!v24)
      {

        swift_unknownObjectRelease();
        goto LABEL_26;
      }

      type metadata accessor for UIAction(0, &_sSo8UIActionCML_0);
      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v27 = swift_allocObject();
      *(v27 + 16) = v26;
      *(v27 + 24) = v25;

      v28 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

      swift_unknownObjectRelease();
      v21 = v28;
      v29 = [v22 title];
      if (v29)
      {
        v30 = v29;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v31 = String._bridgeToObjectiveC()();

      [v21 setTitle:v31];

      v32 = [v22 image];
      [v21 setImage:v32];
    }

    v33 = [v7 title];
    if (v33)
    {
      v34 = v33;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v35 = String._bridgeToObjectiveC()();

    [v21 setTitle:v35];

    v36 = [v7 image];
    [v21 setImage:v36];

    v37 = v21;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    goto LABEL_26;
  }

  v17 = v16;
  v18.value = a3;
  append #1 (menu:) in closure #1 in closure #1 in UIMenu.init(representativeOf:title:image:options:)(v16, v18, v9, v7);

LABEL_26:
  swift_beginAccess();
  *a4 = *(v9 + 16);
}

uint64_t append #1 (menu:) in closure #1 in closure #1 in UIMenu.init(representativeOf:title:image:options:)(id a1, UIMenuIdentifier_optional a2, uint64_t a3, void *a4)
{
  if ((a2.value & 1) == 0)
  {
    v8 = [a1 title];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      goto LABEL_7;
    }

    v13 = [a1 image];
    if (v13)
    {

LABEL_7:
      swift_beginAccess();
      v14 = a1;
      goto LABEL_17;
    }
  }

  v15 = [a1 title];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {

    v20 = [a4 title];
    if (v20)
    {
      v21 = v20;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v22;
    }

    else
    {
      v16 = 0;
      v18 = 0xE000000000000000;
    }
  }

  v23 = [a1 image];
  if (!v23)
  {
    v23 = [a4 image];
  }

  type metadata accessor for UIAction(0, &_sSo6UIMenuCML_0);
  v24 = [a1 children];
  type metadata accessor for UIAction(0, &_sSo13UIMenuElementCML_0);
  preferredElementSize = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v26._countAndFlagsBits = v16;
  v26._object = v18;
  v29.value.super.isa = v23;
  v29.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v26, 0, v29, a2, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v28);
  swift_beginAccess();
LABEL_17:
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

UIAction_optional __swiftcall UIAction.init(barButtonItem:)(UIBarButtonItem barButtonItem)
{
  v2 = [(objc_class *)barButtonItem.super.super.isa target];
  v3 = [(objc_class *)barButtonItem.super.super.isa action];
  if (!v2)
  {

LABEL_7:
    v8 = 0;
    goto LABEL_9;
  }

  v4 = v3;
  if (!v3)
  {

    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;

  v7 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

  swift_unknownObjectRelease();
  v8 = v7;
  v9 = [(objc_class *)barButtonItem.super.super.isa title:0];
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v12 = String._bridgeToObjectiveC()();

  [v8 setTitle:v12];

  v13 = [(objc_class *)barButtonItem.super.super.isa image];
  [v8 setImage:v13];

LABEL_9:
  v14 = v8;
  result.value.super.super.isa = v14;
  result.is_nil = v11;
  return result;
}

id *UINavigationItem.effectiveTrailingBarButtonItems.getter()
{
  v0 = UINavigationItem.allTrailingBarButtonItems.getter();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([v4 isHidden])
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  return _swiftEmptyArrayStorage;
}

unint64_t UINavigationItem.allTrailingBarButtonItems.getter()
{
  v1 = [v0 trailingItemGroups];
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIBarButtonItemGroup);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v44 = _swiftEmptyArrayStorage;
  if (v2 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v38 = v2 & 0xFFFFFFFFFFFFFF8;
    v39 = v2 & 0xC000000000000001;
    v5 = _swiftEmptyArrayStorage;
    v37 = v2 + 32;
    v2 = &_sSaySo15UIBarButtonItemCGMR;
    v35 = i;
    while (1)
    {
      if (v39)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v38 + 16))
        {
          goto LABEL_45;
        }

        v6 = *(v37 + 8 * v4);
      }

      v7 = v6;
      v8 = __OFADD__(v4++, 1);
      if (v8)
      {
        break;
      }

      v9 = [v6 representativeItem];
      if (v9)
      {
        v10 = v9;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v5 = v44;
      }

      v11 = [v7 barButtonItems];
      type metadata accessor for UIAction(0, &_sSo15UIBarButtonItemCML_0);
      v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v13 = v12 >> 62;
      if (v12 >> 62)
      {
        v14 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = v5 >> 62;
      if (v5 >> 62)
      {
        v16 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v42 = v14;
      v8 = __OFADD__(v16, v14);
      v17 = v16 + v14;
      if (v8)
      {
        goto LABEL_46;
      }

      v40 = v7;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_25:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_26;
      }

      if (v15)
      {
        goto LABEL_25;
      }

      v18 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v17 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v41 = v5;
        goto LABEL_27;
      }

LABEL_26:
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v18 = v41 & 0xFFFFFFFFFFFFFF8;
LABEL_27:
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v13)
      {
        v21 = _CocoaArrayWrapper.endIndex.getter();
        if (v21)
        {
LABEL_31:
          if (((v20 >> 1) - v19) < v42)
          {
            goto LABEL_48;
          }

          v22 = v18 + 8 * v19 + 32;
          v36 = v18;
          if (v13)
          {
            if (v21 < 1)
            {
              goto LABEL_50;
            }

            lazy protocol witness table accessor for type [UIBarButtonItem] and conformance [A]();
            for (j = 0; j != v21; ++j)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo15UIBarButtonItemCGMd);
              v25 = specialized protocol witness for Collection.subscript.read in conformance [A](v43, j, v12);
              v27 = *v26;
              (v25)(v43, 0);
              *(v22 + 8 * j) = v27;
            }

            i = v35;
            v23 = v42;
          }

          else
          {
            v23 = v42;
            swift_arrayInitWithCopy();
          }

          v5 = v41;
          if (v23 > 0)
          {
            v28 = *(v36 + 16);
            v8 = __OFADD__(v28, v23);
            v29 = v28 + v23;
            if (v8)
            {
              goto LABEL_49;
            }

            *(v36 + 16) = v29;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v21 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v21)
        {
          goto LABEL_31;
        }
      }

      v5 = v41;
      if (v42 > 0)
      {
        goto LABEL_47;
      }

LABEL_5:
      v44 = v5;
      if (v4 == i)
      {
        goto LABEL_53;
      }
    }

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
    __break(1u);
LABEL_51:
    ;
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_53:

  v43[0] = v5;
  v30 = [v34 rightBarButtonItems];
  if (v30)
  {
    v31 = v30;
    type metadata accessor for UIAction(0, &_sSo15UIBarButtonItemCML_0);
    v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    specialized Array.append<A>(contentsOf:)(v32);
    return v43[0];
  }

  return v5;
}

uint64_t _sSa6append10contentsOfyqd__n_t7ElementQyd__RszSTRd__lF10Foundation3URLVSg_SayAHGTg5_0(uint64_t result)
{
  v2 = *(result + 16);
  IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_0 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_0 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_0 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_0(isUniquelyReferenced_nonNull_native, v12, 1, IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_0);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (*(IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_0 + 24) >> 1) - *(IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_0 + 16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_0;
    return result;
  }

  v9 = *(IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_0 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_0 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t static UIBarButtonItem.PrimaryActionKind.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if ((a4 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a4)
  {
    return 0;
  }

  type metadata accessor for UIAction(0, &_sSo8NSObjectCML_0);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UIBarButtonItem.PrimaryActionKind(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  type metadata accessor for UIAction(0, &_sSo8NSObjectCML_0);
  return static NSObject.== infix(_:_:)() & 1;
}

Class UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, char a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  if (a6)
  {
    image_8 = a3;
    v11 = v8;

    v45 = a1;
    v12 = UIBarButtonItem.init(title:image:target:action:menu:)();
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0);
    preferredElementSize = swift_allocObject();
    *(preferredElementSize + 16) = xmmword_1004F2F10;
    v15 = objc_opt_self();
    v16 = swift_allocObject();
    *(v16 + 16) = closure #1 in UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)partial apply;
    *(v16 + 24) = v13;
    aBlock[4] = partial apply for closure #1 in static UIMenu.lazy(title:image:options:cached:childrenProvider:);
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
    aBlock[3] = &block_descriptor_28;
    v17 = v8;
    v18 = _Block_copy(aBlock);
    children = v11;
    v19 = v12;

    v20 = [v15 elementWithUncachedProvider:v18];
    _Block_release(v18);
    *(preferredElementSize + 32) = v20;
    if (a2)
    {
      v21 = v45;
    }

    else
    {
      v21 = 0;
    }

    if (a2)
    {
      v22 = a2;
    }

    else
    {
      v22 = 0xE000000000000000;
    }

    type metadata accessor for UIAction(0, &_sSo6UIMenuCML_0);
    v23 = image_8;
    v24._countAndFlagsBits = v21;
    v24._object = v22;
    v53.value.super.isa = a3;
    v53.is_nil = 0;
    isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v24, 0, v53, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, children).super.super.isa;

    [(objc_class *)v19 setMenuRepresentation:isa];
  }

  else
  {
    v27 = a5;
    v28 = [v27 title];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v32 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (!v32)
    {
      v33 = v8;

      v34 = String._bridgeToObjectiveC()();

      [v27 setTitle:v34];

      v8 = v33;
    }

    v35 = [v27 image];
    if (v35)
    {
    }

    else
    {
      [v27 setImage:a3];
    }

    v36 = v27;
    v52.value.super.isa = 0;
    v37 = v8;
    v52.is_nil = v8;
    v54.value.super.super.isa = 0;
    v19 = UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v52, v54, v55).super.super.isa;
    v38 = v19;
    if (!a2)
    {
      v39 = [v36 title];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v40 = String._bridgeToObjectiveC()();

    [(objc_class *)v19 setTitle:v40];

    v41 = a3;
    if (!a3)
    {
      v41 = [v36 image];
    }

    v23 = a3;
    [(objc_class *)v19 setImage:v41];

    [(objc_class *)v19 setMenuRepresentation:v36];
    v17 = v37;
  }

  [(objc_class *)v19 setStyle:a4];
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(a7, a8);

  return v19;
}

UIBarButtonItem __swiftcall UIBarButtonItem.init(representativeOf:title:image:style:menuTitle:accessibilityIdentifier:)(Swift::OpaquePointer representativeOf, Swift::String_optional title, UIImage_optional image, UIBarButtonItemStyle style, Swift::String_optional menuTitle, MusicCore::AccessibilityIdentifier_optional *accessibilityIdentifier)
{
  object = menuTitle.value._object;
  countAndFlagsBits = menuTitle.value._countAndFlagsBits;
  v41 = *&image.is_nil;
  isa = image.value.super.isa;
  v39 = title.value._countAndFlagsBits;
  if (menuTitle.value._countAndFlagsBits)
  {
    goto LABEL_4;
  }

  if (title.value._object)
  {
    v9 = title.value._countAndFlagsBits;
    v10 = title.value._object;

    title.value._object = v10;
    style = v9;
    countAndFlagsBits = v10;
LABEL_4:
    v11 = title.value._object;
    goto LABEL_5;
  }

  v11 = 0;
  style = UIBarButtonItemStylePlain;
  countAndFlagsBits = 0xE000000000000000;
LABEL_5:
  type metadata accessor for UIAction(0, &_sSo6UIMenuCML_0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_1004F2F10;
  v38 = objc_opt_self();
  v13 = swift_allocObject();
  v13[2]._rawValue = representativeOf._rawValue;
  v13[3]._rawValue = 1;
  v47 = closure #1 in UIMenu.init(representativeOf:title:image:options:)partial apply;
  v48 = v13;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
  v46 = &block_descriptor_35_0;
  v14 = _Block_copy(&aBlock);

  v15 = [v38 elementWithUncachedProvider:v14];
  _Block_release(v14);
  *(preferredElementSize + 32) = v15;
  v16._countAndFlagsBits = style;
  v16._object = countAndFlagsBits;
  v49.value.super.isa = 0;
  v49.is_nil = 0;
  v17 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v16, 0, v49, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v35).super.super.isa;
  v37 = isa;
  v18 = v17;
  v19 = v11;

  v20 = v18;
  v21 = UIBarButtonItem.init(title:image:target:action:menu:)();
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1004F2F10;
  v24 = swift_allocObject();
  *(v24 + 16) = closure #1 in UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)partial apply;
  *(v24 + 24) = v22;
  v47 = partial apply for closure #1 in static UIMenu.lazy(title:image:options:cached:childrenProvider:);
  v48 = v24;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
  v46 = &block_descriptor_46;
  v25 = _Block_copy(&aBlock);
  v26 = v20;
  v27 = v21;

  v28 = [v38 elementWithUncachedProvider:v25];
  _Block_release(v25);
  *(v23 + 32) = v28;
  if (v19)
  {
    v29 = v39;
  }

  else
  {
    v29 = 0;
  }

  if (v19)
  {
    v30 = v19;
  }

  else
  {
    v30 = 0xE000000000000000;
  }

  v31 = v37;
  v32._countAndFlagsBits = v29;
  v32._object = v30;
  v50.value.super.isa = isa;
  v50.is_nil = 0;
  v33 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v32, 0, v50, 0, 0xFFFFFFFFFFFFFFFFLL, v23, v36.super.super.isa).super.super.isa;

  [v27 setMenuRepresentation:v33];

  [v27 setStyle:v41];
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(object, accessibilityIdentifier);

  return v27;
}

UIBarButtonItem __swiftcall UIBarButtonItem.init(representativeOf:configuredAfter:menuTitle:)(Swift::OpaquePointer representativeOf, UIBarButtonItem configuredAfter, Swift::String_optional menuTitle)
{
  object = menuTitle.value._object;
  countAndFlagsBits = menuTitle.value._countAndFlagsBits;
  v6 = configuredAfter.super.super.isa;
  v7 = [(objc_class *)v6 title];
  if (v7)
  {
    v8 = v7;
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v39 = 0;
    v10 = 0;
  }

  v36 = [(objc_class *)v6 image];

  v37 = [(objc_class *)v6 style];
  v38 = v6;
  if (!object)
  {
    if (v10)
    {

      countAndFlagsBits = v39;
      object = v10;
    }

    else
    {
      countAndFlagsBits = 0;
      object = 0xE000000000000000;
    }
  }

  type metadata accessor for UIAction(0, &_sSo6UIMenuCML_0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_1004F2F10;
  v35 = objc_opt_self();
  v12 = swift_allocObject();
  v12[2]._rawValue = representativeOf._rawValue;
  v12[3]._rawValue = 1;
  v44 = closure #1 in UIMenu.init(representativeOf:title:image:options:)partial apply;
  v45 = v12;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
  v43 = &block_descriptor_53_1;
  v13 = _Block_copy(&aBlock);

  v14 = [v35 elementWithUncachedProvider:v13];
  _Block_release(v13);
  *(preferredElementSize + 32) = v14;
  v15._countAndFlagsBits = countAndFlagsBits;
  v15._object = object;
  v46.value.super.isa = 0;
  v46.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v15, 0, v46, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v32).super.super.isa;

  v17 = isa;
  v34 = v36;
  v18 = v17;
  v19 = UIBarButtonItem.init(title:image:target:action:menu:)();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1004F2F10;
  v22 = swift_allocObject();
  *(v22 + 16) = closure #1 in UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)partial apply;
  *(v22 + 24) = v20;
  v44 = partial apply for closure #1 in static UIMenu.lazy(title:image:options:cached:childrenProvider:);
  v45 = v22;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
  v43 = &block_descriptor_64;
  v23 = _Block_copy(&aBlock);
  v24 = v18;
  v25 = v19;

  v26 = [v35 elementWithUncachedProvider:v23];
  _Block_release(v23);
  *(v21 + 32) = v26;
  if (v10)
  {
    v27 = v39;
  }

  else
  {
    v27 = 0;
  }

  if (!v10)
  {
    v10 = 0xE000000000000000;
  }

  v28 = v34;
  v29._countAndFlagsBits = v27;
  v29._object = v10;
  v47.value.super.isa = v36;
  v47.is_nil = 0;
  v30 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v29, 0, v47, 0, 0xFFFFFFFFFFFFFFFFLL, v21, v33.super.super.isa).super.super.isa;

  [v25 setMenuRepresentation:v30];

  [v25 setStyle:v37];
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(0, 0);

  return v25;
}

id UIBarButtonItem.primaryActionKind.getter()
{
  result = [v0 primaryAction];
  if (!result)
  {
    return [v0 menu];
  }

  return result;
}

void UIBarButtonItem.primaryActionKind.setter(void *a1, char a2)
{
  v3 = v2;
  v6 = [v2 primaryAction];
  if (v6)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v6 = [v2 menu];
    v9 = v6 == 0;
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v6 = 0;
      v7 = 1;
    }

    if (v9)
    {
      v8 = -1;
    }

    else
    {
      v8 = 1;
    }
  }

  if (a2 != -1)
  {
    v71 = v8;
    v70 = v6;
    if (a2)
    {
      v10 = a1;
      [v3 setMenu:v10];
      v11 = [v3 customView];
      if (v11)
      {
        v12 = v11;
        objc_opt_self();
        v13 = swift_dynamicCastObjCClass();
        if (v13)
        {
          [v13 setMenu:v10];
          outlined consume of Artwork.View.PlaceholderKind?(a1, a2);

LABEL_42:
          [v3 setPrimaryAction:0];
          v41 = [v3 title];
          if (v41)
          {
            v42 = v41;
            v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v44 = v43;
          }

          else
          {
            v69 = 0;
            v44 = 0;
          }

          v45 = [v3 image];
          v46 = swift_allocObject();
          *(v46 + 16) = v10;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0);
          preferredElementSize = swift_allocObject();
          *(preferredElementSize + 16) = xmmword_1004F2F10;
          v48 = objc_opt_self();
          v49 = swift_allocObject();
          *(v49 + 16) = partial apply for closure #2 in UIBarButtonItem.primaryActionKind.setter;
          *(v49 + 24) = v46;
          aBlock[4] = partial apply for closure #1 in static UIMenu.lazy(title:image:options:cached:childrenProvider:);
          aBlock[5] = v49;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
          aBlock[3] = &block_descriptor_74_0;
          v50 = _Block_copy(aBlock);
          outlined copy of Artwork.View.PlaceholderKind?(a1, a2);

          v51 = [v48 elementWithUncachedProvider:v50];
          _Block_release(v50);
          *(preferredElementSize + 32) = v51;
          if (v44)
          {
            v52 = v69;
          }

          else
          {
            v52 = 0;
          }

          if (v44)
          {
            v53 = v44;
          }

          else
          {
            v53 = 0xE000000000000000;
          }

          type metadata accessor for UIAction(0, &_sSo6UIMenuCML_0);
          v54._countAndFlagsBits = v52;
          v54._object = v53;
          v75.value.super.isa = v45;
          v75.is_nil = 0;
          isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v54, 0, v75, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v67).super.super.isa;

          [v3 setMenuRepresentation:isa];
          outlined consume of Artwork.View.PlaceholderKind?(v70, v71);
          outlined consume of Artwork.View.PlaceholderKind?(a1, a2);

          goto LABEL_61;
        }
      }

      outlined consume of Artwork.View.PlaceholderKind?(a1, a2);
      v33 = [v3 customView];
      if (v33)
      {
        v34 = v33;
        type metadata accessor for SymbolButton(0);
        v35 = swift_dynamicCastClass();
        if (v35)
        {
          v36 = v35;
          v37 = swift_allocObject();
          *(v37 + 16) = v10;
          v38 = (v36 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_buildMenu);
          swift_beginAccess();
          v39 = *v38;
          *v38 = NowPlaying.TrackMetadata.underlyingItem.getter;
          v38[1] = v37;
          v40 = v10;
          outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v39);
        }
      }

      goto LABEL_42;
    }

    v68 = v7;
    v16 = [v2 title];
    if (v16)
    {
      v17 = v16;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = [v3 image];
    [v3 setPrimaryAction:a1];
    v21 = [a1 title];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v25 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {

      v26 = [a1 title];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else if (!v19)
    {
      v27 = 0;
LABEL_28:
      [v3 setTitle:v27];

      v28 = [a1 image];
      if (!v28)
      {
        v28 = v20;
      }

      [v3 setImage:v28];

      [v3 setMenu:0];
      v29 = [v3 customView];
      if (v29)
      {
        v30 = v29;
        objc_opt_self();
        v31 = swift_dynamicCastObjCClass();
        if (v31)
        {
          [v31 setMenu:0];

          v32 = v71;
          goto LABEL_57;
        }
      }

      v56 = [v3 customView];
      v32 = v71;
      if (v56)
      {
        v57 = v56;
        type metadata accessor for SymbolButton(0);
        v58 = swift_dynamicCastClass();
        if (v58)
        {
          v59 = (v58 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_buildMenu);
          swift_beginAccess();
          v60 = *v59;
          *v59 = 0;
          v59[1] = 0;
          outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v60);
        }
      }

LABEL_57:
      if ((v68 & 1) == 0)
      {
        if ((v32 & 1) == 0)
        {
          v63 = [v3 menuRepresentation];
          if (!v63)
          {

            outlined consume of Artwork.View.PlaceholderKind?(a1, a2);
            v61 = v70;
            v62 = v32;
            goto LABEL_62;
          }

          v64 = v63;
          type metadata accessor for UIAction(0, &_sSo13UIMenuElementCML_0);
          v65 = v70;
          v66 = static NSObject.== infix(_:_:)();

          outlined consume of Artwork.View.PlaceholderKind?(v70, v32);
          if (v66)
          {
            [v3 setMenuRepresentation:a1];

            outlined consume of Artwork.View.PlaceholderKind?(a1, a2);
            outlined consume of Artwork.View.PlaceholderKind?(a1, a2);
            v61 = v70;
            v62 = v32;
            goto LABEL_62;
          }

          outlined consume of Artwork.View.PlaceholderKind?(v70, v32);
LABEL_61:
          v61 = a1;
          v62 = a2;
LABEL_62:
          outlined consume of Artwork.View.PlaceholderKind?(v61, v62);
          return;
        }

        outlined consume of Artwork.View.PlaceholderKind?(v70, v32);
      }

      goto LABEL_61;
    }

    v27 = String._bridgeToObjectiveC()();

    goto LABEL_28;
  }

  v14 = v6;
  [v3 setPrimaryAction:0];
  [v3 setMenuRepresentation:0];
  [v3 setMenu:0];
  v72 = [v3 customView];
  if (v72)
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      [v15 setMenu:0];
      outlined consume of Artwork.View.PlaceholderKind?(v14, v8);

      return;
    }
  }

  outlined consume of Artwork.View.PlaceholderKind?(v14, v8);
}

uint64_t closure #1 in UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(void *a1)
{
  v1 = [a1 children];
  type metadata accessor for UIAction(0, &_sSo13UIMenuElementCML_0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void (*UIBarButtonItem.primaryActionKind.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = [v1 primaryAction];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v3 = [v1 menu];
    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = -1;
    }
  }

  *a1 = v3;
  *(a1 + 8) = v4;
  return UIBarButtonItem.primaryActionKind.modify;
}

void UIBarButtonItem.primaryActionKind.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    outlined copy of Artwork.View.PlaceholderKind?(*a1, v3);
    UIBarButtonItem.primaryActionKind.setter(v2, v3);

    outlined consume of Artwork.View.PlaceholderKind?(v2, v3);
  }

  else
  {
    UIBarButtonItem.primaryActionKind.setter(*a1, v3);
  }
}

id UIBarButtonItem.plastify()()
{
  [v0 _setPrefersNoPlatter:1];

  return v2;
}

id *UIBarButtonItemGroup.split()()
{
  v1 = [v0 barButtonItems];
  type metadata accessor for UIAction(0, &_sSo15UIBarButtonItemCML_0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = _swiftEmptyArrayStorage;
  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v10 = v5;
      closure #1 in UIBarButtonItemGroup.split()(&v11, &v10, v0);

      ++v4;
      if (v7 == i)
      {
        v8 = v11;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_15:

  return v8;
}

void closure #1 in UIBarButtonItemGroup.split()(void *a1, void **a2, void *a3)
{
  v5 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1004F2F10;
  *(v6 + 32) = v5;
  v7 = objc_allocWithZone(UIBarButtonItemGroup);
  type metadata accessor for UIAction(0, &_sSo15UIBarButtonItemCML_0);
  v8 = v5;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 initWithBarButtonItems:isa representativeItem:0];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v10 = v8;
  v11 = [a3 barButtonItems];
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v12 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (v13)
    {
LABEL_5:
      v14 = __OFSUB__(v13, 1);
      v15 = v13 - 1;
      if (v14)
      {
        __break(1u);
      }

      else if ((v12 & 0xC000000000000001) == 0)
      {
        if ((v15 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v15 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v16 = *(v12 + 8 * v15 + 32);
          goto LABEL_10;
        }

        __break(1u);
        return;
      }

      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_10:
      v17 = v16;

      v18 = static NSObject.== infix(_:_:)();

      if (v18)
      {
        return;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_5;
    }
  }

LABEL_14:
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1004F2F10;
  *(v19 + 32) = [objc_opt_self() fixedSpaceItemOfWidth:0.0];
  v20 = objc_allocWithZone(UIBarButtonItemGroup);
  v21 = Array._bridgeToObjectiveC()().super.isa;

  [v20 initWithBarButtonItems:v21 representativeItem:0];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t UIAction.init(target:selector:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v3 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v4 = swift_allocObject();
      *(v4 + 16) = v3;
      *(v4 + 24) = a2;

      v5 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

      swift_unknownObjectRelease();
      return v5;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002CD228()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

id closure #1 in UIAction.init(target:selector:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    [result performSelector:a3];
    return v5;
  }

  return result;
}

Class static UIBarButtonItem.contextBarButtonItem(representativeOf:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;

  v3.value = 1;
  v4 = specialized static UIBarButtonItem.contextBarButtonItem(options:childrenProvider:)(v3, partial apply for closure #1 in static UIBarButtonItem.contextBarButtonItem(representativeOf:), v2);

  return v4;
}

uint64_t closure #1 in static UIBarButtonItem.contextBarButtonItem(representativeOf:)(uint64_t a1)
{
  type metadata accessor for UIAction(0, &_sSo6UIMenuCML_0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_1004F2F10;
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = 1;
  aBlock[4] = closure #1 in UIMenu.init(representativeOf:title:image:options:)partial apply;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
  aBlock[3] = &block_descriptor_132_0;
  v5 = _Block_copy(aBlock);

  v6 = [v3 elementWithUncachedProvider:v5];
  _Block_release(v5);
  *(preferredElementSize + 32) = v6;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v14.value.super.isa = 0;
  v14.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v7, 0, v14, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v12).super.super.isa;
  v9 = [(objc_class *)isa children];

  type metadata accessor for UIAction(0, &_sSo13UIMenuElementCML_0);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v10;
}

id static UIBarButtonItem.loading.getter()
{
  v0 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  [v0 startAnimating];
  v1 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v0];

  return v1;
}

uint64_t UIButton.reconfigure(with:)(void (*a1)(char *))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for UIButton.Configuration();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  UIButton.configuration.getter();
  v12 = *(v9 + 48);
  if (v12(v7, 1, v8) == 1)
  {
    static UIButton.Configuration.plain()();
    if (v12(v7, 1, v8) != 1)
    {
      outlined destroy of TaskPriority?(v7, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
    }
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  a1(v11);
  (*(v9 + 16))(v4, v11, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  UIButton.configuration.setter();
  return (*(v9 + 8))(v11, v8);
}

uint64_t UITraitCollection.isAccessibilitySizeCategory.getter()
{
  v1 = [v0 preferredContentSizeCategory];
  v2 = UIContentSizeCategory.isAccessibilityCategory.getter();

  return v2 & 1;
}

uint64_t UITraitCollection.preferredLargeTitleDisplayMode.getter()
{
  if (![v0 userInterfaceIdiom])
  {
    return 3;
  }

  if ([v0 userInterfaceIdiom] == 1)
  {
    return 3;
  }

  return 1;
}

Swift::Bool __swiftcall UIViewController.scrollToTopIfPossible()()
{
  v1 = [v0 contentScrollView];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 _scrollToTopIfPossible:1];

  return v3;
}

Swift::Bool __swiftcall UIViewController.focusOnSearchBarIfPossible()()
{
  v1 = [v0 navigationItem];
  v2 = [v1 searchController];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 searchBar];
  v4 = [v3 canBecomeFirstResponder];

  if (v4)
  {
    v5 = [v2 searchBar];
    v6 = [v5 becomeFirstResponder];

    v2 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id static UIKeyCommand.findKeyCommand(affecting:)()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v19 - v6;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();

  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v9 = static NSBundle.module;
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  v10 = objc_opt_self();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 keyCommandWithInput:v11 modifierFlags:1572864 action:"music_handleKeyCommand:"];

  v13 = v12;
  v14 = String._bridgeToObjectiveC()();

  [v13 setTitle:v14];

  if (one-time initialization token for Handling != -1)
  {
    swift_once();
  }

  v15 = static UIKeyCommand.KeyCommandAssociatedKeys.Handling;
  v16 = swift_allocObject();
  *(v16 + 16) = partial apply for closure #1 in static UIKeyCommand.findKeyCommand(affecting:);
  *(v16 + 24) = v8;
  v19[1] = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed UIKeyCommand) -> ();
  v19[2] = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySo12UIKeyCommandCcMd);
  v17 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  objc_setAssociatedObject(v13, v15, v17, 3);

  swift_unknownObjectRelease();

  return v13;
}

void closure #1 in static UIKeyCommand.findKeyCommand(affecting:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setActive:1];
    v2 = [v1 searchBar];
    [v2 becomeFirstResponder];

    v3 = UISearchController.searchText.getter();
    if (v4)
    {
      v5 = v3;
      v6 = v4;

      v7 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v7 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (v7)
      {
        v8 = [v1 searchBar];
        v9 = [v8 searchTextField];

        [v9 selectAll:v1];
      }
    }
  }
}

uint64_t UISearchController.searchText.getter()
{
  v1 = type metadata accessor for CharacterSet();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin(v1).n128_u64[0];
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 searchBar];
  v7 = [v6 text];

  if (v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v16[0] = v8;
    v16[1] = v10;
    static CharacterSet.newlines.getter();
    _sS2SSysWl_0();
    v11 = StringProtocol.trimmingCharacters(in:)();
    v13 = v12;
    (*(v2 + 8))(v5, v1);

    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      return v11;
    }
  }

  return 0;
}

id UIKeyCommand.init(title:input:modifierFlags:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = String._bridgeToObjectiveC()();

  v12 = [ObjCClassFromMetadata keyCommandWithInput:v11 modifierFlags:a5 action:"music_handleKeyCommand:"];

  v13 = v12;
  v14 = String._bridgeToObjectiveC()();

  [v13 setTitle:v14];

  v15 = one-time initialization token for Handling;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = static UIKeyCommand.KeyCommandAssociatedKeys.Handling;
  v17 = swift_allocObject();
  *(v17 + 16) = a6;
  *(v17 + 24) = a7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySo12UIKeyCommandCcMd);
  v18 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  objc_setAssociatedObject(v13, v16, v18, 3);

  swift_unknownObjectRelease();

  return v13;
}

uint64_t UIKeyCommand.handler.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for Handling != -1)
  {
    swift_once();
  }

  v6 = static UIKeyCommand.KeyCommandAssociatedKeys.Handling;
  if (a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySo12UIKeyCommandCcMd);
    v8 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  }

  else
  {
    v8 = 0;
  }

  objc_setAssociatedObject(v3, v6, v8, 3);
  swift_unknownObjectRelease();
  return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(a1);
}

uint64_t (*UIKeyCommand.handler.getter())(uint64_t a1)
{
  if (one-time initialization token for Handling != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, static UIKeyCommand.KeyCommandAssociatedKeys.Handling))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySo12UIKeyCommandCcMd);
    if (swift_dynamicCast())
    {
      *(swift_allocObject() + 16) = v2;
      return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed UIKeyCommand) -> (@out ());
    }
  }

  else
  {
    outlined destroy of TaskPriority?(v5, &_sypSgMd_1);
  }

  return 0;
}

void (*UIKeyCommand.handler.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  *v3 = UIKeyCommand.handler.getter();
  v4[1] = v5;
  return UIKeyCommand.handler.modify;
}

void UIKeyCommand.handler.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  if (a2)
  {
    outlined copy of (@escaping @callee_guaranteed () -> ())?(**a1);
    if (one-time initialization token for Handling != -1)
    {
      swift_once();
    }

    v5 = static UIKeyCommand.KeyCommandAssociatedKeys.Handling;
    if (v4)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = v4;
      *(v6 + 24) = v3;
      v2[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIKeyCommand) -> ()partial apply;
      v2[3] = v6;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySo12UIKeyCommandCcMd);
      v7 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    else
    {
      v7 = 0;
    }

    objc_setAssociatedObject(v2[4], v5, v7, 3);
    swift_unknownObjectRelease();
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v4);
    v11 = *v2;
  }

  else
  {
    if (one-time initialization token for Handling != -1)
    {
      swift_once();
    }

    v8 = static UIKeyCommand.KeyCommandAssociatedKeys.Handling;
    if (v4)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = v4;
      *(v9 + 24) = v3;
      v2[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIKeyCommand) -> ()partial apply;
      v2[3] = v9;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySo12UIKeyCommandCcMd);
      v10 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    else
    {
      v10 = 0;
    }

    objc_setAssociatedObject(v2[4], v8, v10, 3);
    swift_unknownObjectRelease();
    v11 = v4;
  }

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v11);

  free(v2);
}

uint64_t one-time initialization function for Handling()
{
  result = swift_slowAlloc();
  static UIKeyCommand.KeyCommandAssociatedKeys.Handling = result;
  return result;
}

id UIKeyCommand.pioritizedOverSystemBehavior(_:)(char a1)
{
  [v1 setWantsPriorityOverSystemBehavior:a1 & 1];

  return v3;
}

void @objc UIKeyCommand.music_handleKeyCommand(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v3 = UIKeyCommand.handler.getter();
  if (v3)
  {
    v4 = v3;
    v3(v5);

    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v4);
  }

  else
  {
  }
}

id UIFont.monospacedDigits()()
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo26UIFontDescriptorFeatureKeya_yptGMd);
  inited = swift_initStackObject();
  v2 = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
  *(inited + 32) = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
  *(inited + 40) = 6;
  *(inited + 16) = xmmword_1004F2EF0;
  v3 = UIFontFeatureSelectorIdentifierKey_ForNewSwiftAPI;
  *(inited + 64) = &type metadata for Int;
  *(inited + 72) = v3;
  *(inited + 104) = &type metadata for Int;
  *(inited + 80) = 0;
  v4 = v2;
  v5 = v3;
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo26UIFontDescriptorFeatureKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26UIFontDescriptorFeatureKeya_yptMd);
  swift_arrayDestroy();
  v7 = [v0 fontDescriptor];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo29UIFontDescriptorAttributeNamea_yptGMd_0);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_1004F2400;
  *(v8 + 32) = UIFontDescriptorFeatureSettingsAttribute;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDySo26UIFontDescriptorFeatureKeyaypGGMd);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1004F2400;
  *(v9 + 32) = v6;
  *(v8 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySo26UIFontDescriptorFeatureKeyaypGGMd);
  *(v8 + 40) = v9;
  v10 = UIFontDescriptorFeatureSettingsAttribute;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo29UIFontDescriptorAttributeNamea_ypTt0g5Tf4g_n_0(v8);
  swift_setDeallocating();
  outlined destroy of TaskPriority?(v8 + 32, &_sSo29UIFontDescriptorAttributeNamea_yptMd_0);
  _sSo29UIFontDescriptorAttributeNameaMa_0(0);
  _sSo29UIFontDescriptorAttributeNameaABSHSCWl_0();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = [v7 fontDescriptorByAddingAttributes:isa];

  v13 = [swift_getObjCClassFromMetadata() fontWithDescriptor:v12 size:0.0];
  return v13;
}

uint64_t (*static UIPointerStyle.capsule(in:)(void *a1))(void *a1, uint64_t a2, uint64_t a3)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return partial apply for closure #1 in static UIPointerStyle.capsule(in:);
}

uint64_t closure #1 in static UIPointerStyle.capsule(in:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit14UIPointerShapeOSgMd);
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - v8;
  v10 = type metadata accessor for UIPointerEffect();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  if (a4)
  {
    v23 = a4;
    v40.origin.x = v16;
    v40.origin.y = v18;
    v40.size.width = v20;
    v40.size.height = v22;
    Width = CGRectGetWidth(v40);
    [v23 frame];
    v26 = Width - v25;
    v41.origin.x = v16;
    v41.origin.y = v18;
    v41.size.width = v20;
    v41.size.height = v22;
    Height = CGRectGetHeight(v41);
    [v23 frame];
    v29 = v28;

    v16 = UIEdgeInsetsInsetRect(v16, v18, v20, v22, (Height - v29) * 0.5, v26 * 0.5);
    v18 = v30;
    v20 = v31;
    v22 = v32;
  }

  (*(v11 + 16))(v14, a2, v10);
  v42.origin.x = v16;
  v42.origin.y = v18;
  v42.size.width = v20;
  v42.size.height = v22;
  v33 = CGRectGetWidth(v42);
  v43.origin.x = v16;
  v43.origin.y = v18;
  v43.size.width = v20;
  v43.size.height = v22;
  v34 = CGRectGetHeight(v43);
  if (v34 < v33)
  {
    v33 = v34;
  }

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIPointerStyle);
  *v9 = v16;
  *(v9 + 1) = v18;
  *(v9 + 2) = v20;
  *(v9 + 3) = v22;
  *(v9 + 4) = v33 * 0.5;
  v35 = enum case for UIPointerShape.roundedRect(_:);
  v36 = type metadata accessor for UIPointerShape();
  v37 = *(v36 - 8);
  (*(v37 + 104))(v9, v35, v36);
  (*(v37 + 56))(v9, 0, 1, v36);
  return UIPointerStyle.init(effect:shape:)();
}

unint64_t lazy protocol witness table accessor for type [UIBarButtonItem] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [UIBarButtonItem] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UIBarButtonItem] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo15UIBarButtonItemCGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UIBarButtonItem] and conformance [A]);
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DataVGMd_0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      outlined copy of Data._Representation(v7, v8);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo26UIFontDescriptorFeatureKeya_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo26UIFontDescriptorFeatureKeyaypGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of TaskPriority?(v4, &v11, &_sSo26UIFontDescriptorFeatureKeya_yptMd);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo29UIFontDescriptorAttributeNamea_ypTt0g5Tf4g_n_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo29UIFontDescriptorAttributeNameaypGMd_0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of TaskPriority?(v4, &v11, &_sSo29UIFontDescriptorAttributeNamea_yptMd_0);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So13MPPropertySetCTt0g5Tf4g_n_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo13MPPropertySetCGMd_0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSbGMd_0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11MusicCoreUI15BouncyBarsAsset33_1239B5B087AAB7692D5EF8FD4F2B07D1LLC15BarAnimationKeyO_So010CAKeyframeS0CTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11MusicCoreUI15BouncyBarsAsset33_1239B5B087AAB7692D5EF8FD4F2B07D1LLC15BarAnimationKeyOSo010CAKeyframeS0CGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

Class specialized static UIBarButtonItem.contextBarButtonItem(options:childrenProvider:)(UIMenuIdentifier_optional a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &aBlock[-1] - v12;
  String.LocalizationValue.init(stringLiteral:)();
  (*(v8 + 16))(v10, v13, v7);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v14 = static NSBundle.module;
  static Locale.current.getter();
  v15 = String.init(localized:table:bundle:locale:comment:)();
  v17 = v16;
  (*(v8 + 8))(v13, v7);
  type metadata accessor for UIAction(0, &_sSo15UIBarButtonItemCML_0);
  v18 = String._bridgeToObjectiveC()();
  v19 = [objc_opt_self() systemImageNamed:v18];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1004F2F10;
  v21 = objc_opt_self();
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  aBlock[4] = partial apply for closure #1 in static UIMenu.lazy(title:image:options:cached:childrenProvider:);
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
  aBlock[3] = &block_descriptor_125;
  v23 = _Block_copy(aBlock);

  v24 = [v21 elementWithUncachedProvider:v23];
  _Block_release(v23);
  *(v20 + 32) = v24;
  type metadata accessor for UIAction(0, &_sSo6UIMenuCML_0);
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v35.value.super.isa = 0;
  v35.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v25, 0, v35, a1, 0xFFFFFFFFFFFFFFFFLL, v20, v32).super.super.isa;
  v27 = AccessibilityIdentifier.contextualMenuButton.unsafeMutableAddressor();
  v28 = *v27;
  v29 = v27[1];

  v30 = UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(v15, v17, v19, 0, isa, 1, v28, v29);
  [(objc_class *)v30 setPreferredMenuElementOrder:2];
  return v30;
}

id specialized static UIKeyCommand.findKeyCommand(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v22 - v10;
  String.LocalizationValue.init(stringLiteral:)();
  (*(v6 + 16))(v8, v11, v5);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v12 = static NSBundle.module;
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  (*(v6 + 8))(v11, v5);
  v13 = objc_opt_self();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 keyCommandWithInput:v14 modifierFlags:1572864 action:"music_handleKeyCommand:"];

  v16 = v15;
  v17 = String._bridgeToObjectiveC()();

  [v16 setTitle:v17];

  if (one-time initialization token for Handling != -1)
  {
    swift_once();
  }

  v18 = static UIKeyCommand.KeyCommandAssociatedKeys.Handling;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v22[1] = thunk for @escaping @callee_guaranteed (@guaranteed UIKeyCommand) -> ()partial apply;
  v22[2] = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySo12UIKeyCommandCcMd);
  v20 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  objc_setAssociatedObject(v16, v18, v20, 3);
  swift_unknownObjectRelease();

  return v16;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed UIKeyCommand) -> (@out ())(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

unint64_t _sSo29UIFontDescriptorAttributeNameaABSHSCWl_0()
{
  result = _sSo29UIFontDescriptorAttributeNameaABSHSCWL_0;
  if (!_sSo29UIFontDescriptorAttributeNameaABSHSCWL_0)
  {
    _sSo29UIFontDescriptorAttributeNameaMa_0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &_sSo29UIFontDescriptorAttributeNameaABSHSCWL_0);
  }

  return result;
}

uint64_t sub_1002CFCDC()
{

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in static UIMenu.lazy(title:image:options:cached:childrenProvider:)(void (*a1)(void))
{
  (*(v1 + 16))();
  a1();
}

uint64_t sub_1002CFD94()
{

  return swift_deallocObject();
}

uint64_t sub_1002CFDCC()
{

  return swift_deallocObject();
}

uint64_t sub_1002CFE04()
{

  return swift_deallocObject();
}

uint64_t sub_1002CFE3C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t *UIView.Border.artwork.unsafeMutableAddressor()
{
  if (one-time initialization token for artwork != -1)
  {
    swift_once();
  }

  return &static UIView.Border.artwork;
}

void one-time initialization function for artwork()
{
  v0 = objc_allocWithZone(UIColor);
  v5[4] = closure #1 in variable initialization expression of static UIView.Border.artwork;
  v5[5] = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
  v5[3] = &block_descriptor_53;
  v1 = _Block_copy(v5);
  [v0 initWithDynamicProvider:v1];
  _Block_release(v1);

  UIView.Border.init(thickness:color:)();
  static UIView.Border.artwork = v2;
  byte_10063EF68 = v3 & 1;
  qword_10063EF70 = v4;
}

id closure #1 in variable initialization expression of static UIView.Border.artwork(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_allocWithZone(UIColor);
  v3 = 0.0;
  if (v1 == 2)
  {
    v3 = 1.0;
  }

  return [v2 initWithWhite:v3 alpha:0.1];
}

uint64_t static UIView.Border.artwork.getter()
{
  if (one-time initialization token for artwork != -1)
  {
    swift_once();
  }

  v0 = static UIView.Border.artwork;
  v1 = qword_10063EF70;
  return v0;
}

void one-time initialization function for isVision()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  static UIView.Corner.isVision = v1 == 6;
}

{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  static Corner.isVision = v1 == 6;
}

{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  static Collaboration.Management.View.Specs.isVision = v1 == 6;
}

{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  static Collaboration.Flow.Specs.isVision = v1 == 6;
}

uint64_t one-time initialization function for extraSmall()
{
  v0 = type metadata accessor for UIView.Corner();
  __swift_allocate_value_buffer(v0, static UIView.Corner.extraSmall);
  __swift_project_value_buffer(v0, static UIView.Corner.extraSmall);
  if (one-time initialization token for isVision != -1)
  {
    swift_once();
  }

  return static UIView.Corner.value(_:continuous:)();
}

{
  if (one-time initialization token for isVision != -1)
  {
    result = swift_once();
  }

  v0 = 0x4008000000000000;
  if (static Corner.isVision)
  {
    v0 = 0x4018000000000000;
  }

  static Corner.extraSmall = v0;
  unk_10063F040 = -1;
  byte_10063F048 = 0;
  return result;
}

uint64_t one-time initialization function for small()
{
  v0 = type metadata accessor for UIView.Corner();
  __swift_allocate_value_buffer(v0, static UIView.Corner.small);
  __swift_project_value_buffer(v0, static UIView.Corner.small);
  if (one-time initialization token for isVision != -1)
  {
    swift_once();
  }

  return static UIView.Corner.value(_:continuous:)();
}

{
  if (one-time initialization token for isVision != -1)
  {
    result = swift_once();
  }

  v0 = 0x4014000000000000;
  if (static Corner.isVision)
  {
    v0 = 0x4020000000000000;
  }

  static Corner.small = v0;
  *algn_10063F058 = -1;
  byte_10063F060 = 0;
  return result;
}

uint64_t one-time initialization function for medium()
{
  v0 = type metadata accessor for UIView.Corner();
  __swift_allocate_value_buffer(v0, static UIView.Corner.medium);
  __swift_project_value_buffer(v0, static UIView.Corner.medium);
  if (one-time initialization token for isVision != -1)
  {
    swift_once();
  }

  return static UIView.Corner.value(_:continuous:)();
}

{
  if (one-time initialization token for isVision != -1)
  {
    result = swift_once();
  }

  v0 = 0x4020000000000000;
  if (static Corner.isVision)
  {
    v0 = 0x4024000000000000;
  }

  static Corner.medium = v0;
  unk_10063F070 = -1;
  byte_10063F078 = 0;
  return result;
}

uint64_t one-time initialization function for large()
{
  v0 = type metadata accessor for UIView.Corner();
  __swift_allocate_value_buffer(v0, static UIView.Corner.large);
  __swift_project_value_buffer(v0, static UIView.Corner.large);
  if (one-time initialization token for isVision != -1)
  {
    swift_once();
  }

  return static UIView.Corner.value(_:continuous:)();
}

{
  if (one-time initialization token for isVision != -1)
  {
    result = swift_once();
  }

  v0 = 0x4024000000000000;
  if (static Corner.isVision)
  {
    v0 = 0x4030000000000000;
  }

  static Corner.large = v0;
  *algn_10063F088 = -1;
  byte_10063F090 = 0;
  return result;
}

uint64_t one-time initialization function for extraLarge()
{
  v0 = type metadata accessor for UIView.Corner();
  __swift_allocate_value_buffer(v0, static UIView.Corner.extraLarge);
  __swift_project_value_buffer(v0, static UIView.Corner.extraLarge);
  if (one-time initialization token for isVision != -1)
  {
    swift_once();
  }

  return static UIView.Corner.value(_:continuous:)();
}

{
  if (one-time initialization token for isVision != -1)
  {
    result = swift_once();
  }

  v0 = 0x402C000000000000;
  if (static Corner.isVision)
  {
    v0 = 0x4038000000000000;
  }

  static Corner.extraLarge = v0;
  unk_10063F0A0 = -1;
  byte_10063F0A8 = 0;
  return result;
}

uint64_t UIView.Corner.medium.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for UIView.Corner();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t static UIView.Corner.extraSmall.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for UIView.Corner();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t block_copy_helper_53(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *HI.Color.prominentTextColor.unsafeMutableAddressor()
{
  if (one-time initialization token for prominentTextColor != -1)
  {
    swift_once();
  }

  return &static HI.Color.prominentTextColor;
}

id closure #1 in variable initialization expression of static HI.Color.prominentTextColor(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1 userInterfaceStyle];
  type metadata accessor for UIColor();
  if (v7 == 2)
  {
    v8 = 250;
    v9 = 45;
    v10 = 72;
  }

  else
  {
    v8 = a2;
    v9 = a3;
    v10 = a4;
  }

  return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v8, v9, v10, 1.0);
}

void *HI.Color.prominentBackgroundColor.unsafeMutableAddressor()
{
  if (one-time initialization token for prominentBackgroundColor != -1)
  {
    swift_once();
  }

  return &static HI.Color.prominentBackgroundColor;
}

uint64_t block_copy_helper_54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance HI.SizeClass@<X0>(double *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized HI.SizeClass.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

double protocol witness for RawRepresentable.rawValue.getter in conformance HI.SizeClass@<D0>(double *a1@<X8>)
{
  result = dbl_10050A8C0[*v1];
  *a1 = result;
  return result;
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_10050A880[a2]);
  return Hasher._finalize()();
}

double HI.SizeClass.columnCount(for:swiping:)(unsigned __int8 a1, char a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
    if (a3 > 1u)
    {
      if (a3 != 2)
      {
        return dbl_10050A840[a1];
      }

      v4 = a1;
      result = 3.0;
      v5 = 4.0;
      if (a1 != 2)
      {
        v5 = 2.0;
      }

      v6 = 1.0;
      if (a2)
      {
        v6 = 3.0;
      }

      if (!a1)
      {
        result = v6;
      }

      goto LABEL_49;
    }

    if (!a3)
    {
      return dbl_10050A820[a1];
    }

    v4 = a1;
    result = 1.0;
    v5 = 3.0;
    v11 = 4.0;
    if ((a2 & 1) == 0)
    {
      v11 = 1.0;
    }

    if (a1 != 2)
    {
      v5 = v11;
    }

    v12 = 2.0;
LABEL_47:
    if (v4)
    {
      result = v12;
    }

LABEL_49:
    if (v4 > 1)
    {
      return v5;
    }

    return result;
  }

  if (a3 <= 5u)
  {
    if (a3 == 4)
    {
      return dbl_10050A860[a1];
    }

    v4 = a1;
    result = 3.0;
    v5 = 7.0;
    v13 = 5.0;
    if (a2)
    {
      v13 = 9.0;
    }

    if (a1 != 2)
    {
      v5 = v13;
    }

    v12 = 6.0;
    goto LABEL_47;
  }

  result = 7.0;
  v7 = 8.0;
  v8 = 6.0;
  if (a2)
  {
    v8 = 28.0;
  }

  if (a1 != 2)
  {
    v7 = v8;
  }

  v9 = 4.0;
  if (a2)
  {
    v9 = 7.0;
  }

  if (a1)
  {
    v9 = 7.0;
  }

  if (a1 <= 1u)
  {
    v7 = v9;
  }

  v10 = 5.0;
  if (a2)
  {
    result = 15.0;
  }

  if (a1 == 2)
  {
    result = 12.0;
  }

  if (a1)
  {
    v10 = 10.0;
  }

  if (a1 <= 1u)
  {
    result = v10;
  }

  if (a3 == 6)
  {
    return v7;
  }

  return result;
}

void HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(unsigned __int8 a1@<W0>, unsigned __int8 a2@<W1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  if (a5 <= 374.0)
  {
    v13 = 0;
    v10 = 10.0;
    v11 = 16.0;
    goto LABEL_19;
  }

  v10 = 12.0;
  v11 = 20.0;
  if (a5 <= 500.0)
  {
    v13 = 1;
    goto LABEL_19;
  }

  if (a5 <= 726.0)
  {
    v13 = 2;
    goto LABEL_19;
  }

  v10 = 20.0;
  if (a5 <= 981.0)
  {
    v13 = 3;
LABEL_18:
    v11 = 34.0;
    goto LABEL_19;
  }

  if (a5 <= 1194.0)
  {
    v13 = 4;
    goto LABEL_18;
  }

  if (a5 <= 2500.0)
  {
    v12 = 6;
  }

  else
  {
    v12 = 7;
  }

  if (a5 > 1500.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 5;
  }

  v11 = 34.0;
LABEL_19:
  v14 = a5 - (v11 + v11);
  if (a3)
  {
    v15 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
    [v15 scaledValueForValue:1.0];
    v17 = v16;

    v18 = round(HI.SizeClass.columnCount(for:swiping:)(a1, a2 & 1, v13) * (1.0 / (v17 * 0.7)));
  }

  else
  {
    v18 = HI.SizeClass.columnCount(for:swiping:)(a1, a2 & 1, v13);
  }

  v19 = 1.0;
  if (v13 <= 4)
  {
    v20 = 3.0;
    if (((a1 == 3) & a2) == 0)
    {
      v20 = 1.0;
    }

    v22 = 2.0;
    if (((a1 == 0) & a2) == 0)
    {
      v22 = 1.0;
    }

    if (v13 == 2)
    {
      v19 = v22;
    }

    v21 = v13 == 1;
    goto LABEL_40;
  }

  if (v13 == 5)
  {
    v23 = ((a1 == 3) & a2) == 0;
  }

  else
  {
    if (v13 != 6)
    {
      v20 = 1.0;
      if (((a1 == 3) & a2) != 0)
      {
        v20 = 2.0;
      }

      v21 = v13 == 7;
LABEL_40:
      if (v21)
      {
        v19 = v20;
      }

      goto LABEL_46;
    }

    if (a1)
    {
      v20 = 5.0;
      if ((a2 & 1) == 0)
      {
        v20 = 1.0;
      }

      v21 = a1 == 3;
      goto LABEL_40;
    }

    v23 = (a2 & 1) == 0;
  }

  if (!v23)
  {
    v19 = 2.0;
  }

LABEL_46:
  v24 = (v14 - v10 * (v18 + -1.0)) / v18 * v19;
  v25 = v19 + -1.0;
  if (v25 > 0.0)
  {
    v24 = v24 + v10 * v25;
  }

  v26 = v18 == 1.0 || v24 > 300.0;
  if ((a3 & 1) == 0)
  {
    v26 = 0;
  }

  *a4 = a5;
  *(a4 + 8) = v10;
  *(a4 + 16) = v11;
  *(a4 + 24) = v13;
  *(a4 + 25) = a1;
  *(a4 + 26) = a2 & 1;
  *(a4 + 32) = v14;
  *(a4 + 40) = v18;
  *(a4 + 48) = v24;
  *(a4 + 56) = v26;
}

void HI.Grid.Metrics.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
  v2 = *(v0 + 8);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  v3 = *(v0 + 16);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  Hasher._combine(_:)(qword_10050A880[*(v0 + 24)]);
  Hasher._combine(_:)(*(v0 + 25));
  Hasher._combine(_:)(*(v0 + 26) & 1);
  v4 = *(v0 + 32);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(*&v4);
  v5 = *(v0 + 40);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  Hasher._combine(_:)(*&v5);
  v6 = *(v0 + 48);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  Hasher._combine(_:)(*&v6);
  Hasher._combine(_:)(*(v0 + 56) & 1);
}

Swift::Int HI.Grid.Metrics.hashValue.getter()
{
  Hasher.init(_seed:)();
  HI.Grid.Metrics.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HI.Grid.Metrics()
{
  Hasher.init(_seed:)();
  HI.Grid.Metrics.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance HI.Grid.Metrics(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return specialized static HI.Grid.Metrics.__derived_struct_equals(_:_:)(v5, v7) & 1;
}

uint64_t *HI.BottomPlayer.Ornament.overlappingHeight.unsafeMutableAddressor()
{
  if (one-time initialization token for overlappingHeight != -1)
  {
    swift_once();
  }

  return &static HI.BottomPlayer.Ornament.overlappingHeight;
}

double one-time initialization function for offset()
{
  if (one-time initialization token for overlappingHeight != -1)
  {
    swift_once();
  }

  result = -*&static HI.BottomPlayer.Ornament.overlappingHeight;
  static HI.BottomPlayer.Ornament.offset = 0;
  *&qword_10063F010 = -*&static HI.BottomPlayer.Ornament.overlappingHeight;
  return result;
}

uint64_t *HI.BottomPlayer.Ornament.offset.unsafeMutableAddressor()
{
  if (one-time initialization token for offset != -1)
  {
    swift_once();
  }

  return &static HI.BottomPlayer.Ornament.offset;
}

double static HI.BottomPlayer.Ornament.offset.getter()
{
  if (one-time initialization token for offset != -1)
  {
    swift_once();
  }

  return *&static HI.BottomPlayer.Ornament.offset;
}

double static HI.BottomPlayer.size(dynamicTypeSize:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15DynamicTypeSizeOSgMd);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for DynamicTypeSize();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v16 - v10;
  outlined init with copy of DynamicTypeSize?(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of DynamicTypeSize?(v4);
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 104))(v8, enum case for DynamicTypeSize.accessibility1(_:), v5);
    lazy protocol witness table accessor for type DynamicTypeSize and conformance DynamicTypeSize();
    v12 = dispatch thunk of static Comparable.< infix(_:_:)();
    v13 = *(v6 + 8);
    v13(v8, v5);
    v13(v11, v5);
    if ((v12 & 1) == 0)
    {
      return 924.0;
    }
  }

  return 784.0;
}

uint64_t *HI.BottomPlayer.buttonSpacing.unsafeMutableAddressor()
{
  if (one-time initialization token for buttonSpacing != -1)
  {
    swift_once();
  }

  return &static HI.BottomPlayer.buttonSpacing;
}

uint64_t *HI.BottomPlayer.contentHorizontalPadding.unsafeMutableAddressor()
{
  if (one-time initialization token for contentHorizontalPadding != -1)
  {
    swift_once();
  }

  return &static HI.BottomPlayer.contentHorizontalPadding;
}

double static HI.BottomPlayer.Ornament.overlappingHeight.getter(void *a1, uint64_t a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t specialized static HI.Grid.Metrics.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  if (v3 > 3)
  {
    if (*(a2 + 24) > 5u)
    {
      if (v3 == 6)
      {
        if (v2 != 6)
        {
          return 0;
        }
      }

      else if (v2 != 7)
      {
        return 0;
      }
    }

    else if (v3 == 4)
    {
      if (v2 != 4)
      {
        return 0;
      }
    }

    else if (v2 != 5)
    {
      return 0;
    }
  }

  else if (*(a2 + 24) > 1u)
  {
    if (v3 == 2)
    {
      if (v2 != 2)
      {
        return 0;
      }
    }

    else if (v2 != 3)
    {
      return 0;
    }
  }

  else if (*(a2 + 24))
  {
    if (v2 != 1)
    {
      return 0;
    }
  }

  else if (*(a1 + 24))
  {
    return 0;
  }

  if (*(a1 + 25) == *(a2 + 25) && ((*(a1 + 26) ^ *(a2 + 26)) & 1) == 0 && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
  {
    return (*(a1 + 56) ^ *(a2 + 56) ^ 1) & 1;
  }

  return 0;
}

uint64_t specialized HI.SizeClass.init(_:)(double a1)
{
  if (a1 <= 374.0)
  {
    return 0;
  }

  if (a1 <= 500.0)
  {
    return 1;
  }

  if (a1 <= 726.0)
  {
    return 2;
  }

  if (a1 <= 981.0)
  {
    return 3;
  }

  if (a1 > 2500.0)
  {
    v1 = 7;
  }

  else
  {
    v1 = 6;
  }

  if (a1 > 1500.0)
  {
    v2 = v1;
  }

  else
  {
    v2 = 5;
  }

  if (a1 > 1194.0)
  {
    return v2;
  }

  else
  {
    return 4;
  }
}

uint64_t specialized HI.SizeClass.init(rawValue:)(double a1)
{
  if (a1 == 374.0)
  {
    return 0;
  }

  if (a1 == 500.0)
  {
    return 1;
  }

  if (a1 == 726.0)
  {
    return 2;
  }

  if (a1 == 981.0)
  {
    return 3;
  }

  if (a1 == 1194.0)
  {
    return 4;
  }

  if (a1 == 2501.0)
  {
    v2 = 7;
  }

  else
  {
    v2 = 8;
  }

  if (a1 == 2500.0)
  {
    v3 = 6;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 1500.0)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t outlined init with copy of DynamicTypeSize?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15DynamicTypeSizeOSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DynamicTypeSize?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15DynamicTypeSizeOSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type DynamicTypeSize and conformance DynamicTypeSize()
{
  result = lazy protocol witness table cache variable for type DynamicTypeSize and conformance DynamicTypeSize;
  if (!lazy protocol witness table cache variable for type DynamicTypeSize and conformance DynamicTypeSize)
  {
    type metadata accessor for DynamicTypeSize();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DynamicTypeSize and conformance DynamicTypeSize);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HI.SizeClass and conformance HI.SizeClass()
{
  result = lazy protocol witness table cache variable for type HI.SizeClass and conformance HI.SizeClass;
  if (!lazy protocol witness table cache variable for type HI.SizeClass and conformance HI.SizeClass)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HI.SizeClass and conformance HI.SizeClass);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HI.Grid.Variant and conformance HI.Grid.Variant()
{
  result = lazy protocol witness table cache variable for type HI.Grid.Variant and conformance HI.Grid.Variant;
  if (!lazy protocol witness table cache variable for type HI.Grid.Variant and conformance HI.Grid.Variant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HI.Grid.Variant and conformance HI.Grid.Variant);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HI.Grid.Metrics and conformance HI.Grid.Metrics()
{
  result = lazy protocol witness table cache variable for type HI.Grid.Metrics and conformance HI.Grid.Metrics;
  if (!lazy protocol witness table cache variable for type HI.Grid.Metrics and conformance HI.Grid.Metrics)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HI.Grid.Metrics and conformance HI.Grid.Metrics);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for HI.Grid.Metrics(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 26);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for HI.Grid.Metrics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 26) = a2 + 1;
    }
  }

  return result;
}

double HI.Modal.ModalType.preferredModalSize(forSceneSize:)(uint64_t a1, uint64_t a2, char a3, unsigned __int8 a4)
{
  v7 = [objc_opt_self() currentTraitCollection];
  v8 = [v7 userInterfaceIdiom];

  if (a4 <= 1u)
  {
    if (a4)
    {
LABEL_9:
      result = 540.0;
      if (v8 == 6)
      {
        return 512.0;
      }

      return result;
    }

    result = 540.0;
    if (v8 == 6)
    {
      return 512.0;
    }
  }

  else
  {
    if (a4 != 2)
    {
      if (a4 == 3)
      {
        return 512.0;
      }

      goto LABEL_9;
    }

    result = 712.0;
    if (a3 & 1 | (*&a1 <= 1194.0))
    {
      return 540.0;
    }
  }

  return result;
}

double static HI.Modal.modalSize(modalType:sceneSize:canExceedSceneSize:verticalInsets:)(unsigned __int8 a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v8 = HI.Modal.ModalType.preferredModalSize(forSceneSize:)(a2, a3, a4 & 1, a1);
  v9 = [objc_opt_self() currentTraitCollection];
  v10 = [v9 userInterfaceIdiom];

  if (v10 == 6 && (a4 & 1) == 0 && (a5 & 1) == 0)
  {
    v11 = *&a2;
    if (one-time initialization token for padding != -1)
    {
      swift_once();
      v11 = *&a2;
    }

    if (v8 + *&static HI.Modal.padding + *&static HI.Modal.padding > v11)
    {
      return v11 - (*&static HI.Modal.padding + *&static HI.Modal.padding);
    }
  }

  return v8;
}

unint64_t lazy protocol witness table accessor for type HI.Modal.ModalType and conformance HI.Modal.ModalType()
{
  result = lazy protocol witness table cache variable for type HI.Modal.ModalType and conformance HI.Modal.ModalType;
  if (!lazy protocol witness table cache variable for type HI.Modal.ModalType and conformance HI.Modal.ModalType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HI.Modal.ModalType and conformance HI.Modal.ModalType);
  }

  return result;
}

uint64_t Song.loggingInfo.getter()
{
  _StringGuts.grow(_:)(42);

  v0._countAndFlagsBits = Song.title.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x64692E676E6F7320;
  v1._object = 0xE90000000000003DLL;
  String.append(_:)(v1);
  Song.id.getter();
  v2 = MusicItemID.description.getter();
  v4 = v3;

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  String.append(_:)(v5);

  v6._object = 0x80000001004D1060;
  v6._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v6);
  Song.catalogID.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A6ItemIDVSgMd);
  v7._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v7);

  return 0x7469742E676E6F73;
}

uint64_t LyricsLoader.loadLyrics(for:)(uint64_t a1)
{
  v2[65] = v1;
  v2[64] = a1;
  v3 = type metadata accessor for URL();
  v2[66] = v3;
  v2[67] = *(v3 - 8);
  v2[68] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[69] = v4;
  v2[70] = *(v4 - 8);
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v5 = type metadata accessor for String.Encoding();
  v2[75] = v5;
  v2[76] = *(v5 - 8);
  v2[77] = swift_task_alloc();
  v6 = type metadata accessor for Song();
  v2[78] = v6;
  v2[79] = *(v6 - 8);
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();
  v2[85] = swift_task_alloc();
  v2[86] = swift_task_alloc();
  v2[87] = swift_task_alloc();
  v2[88] = swift_task_alloc();

  return _swift_task_switch(LyricsLoader.loadLyrics(for:), 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 824) = v1;

  if (v1)
  {
    v5 = LyricsLoader.loadLyrics(for:);
  }

  else
  {
    *(v4 + 832) = a1;
    v5 = LyricsLoader.loadLyrics(for:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit4SongVSgMd_0);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for Song();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(LyricsLoader.loadLyrics(for:), 0, 0);
}

uint64_t LyricsLoader.loadLyrics(for:)()
{
  v40 = v0;
  if (Song.hasLyrics.getter() & 1) != 0 || (Song.hasCustomLyrics.getter())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0);
    v1 = swift_allocObject();
    v0[89] = v1;
    *(v1 + 16) = xmmword_1004F2F10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit07PartialA13AsyncPropertyCyAA4SongVGMd_0);
    *(v1 + 32) = static PartialMusicProperty<A>.customLyrics.getter();
    v2 = swift_task_alloc();
    v0[90] = v2;
    v3 = lazy protocol witness table accessor for type Song and conformance Song();
    *v2 = v0;
    v2[1] = LyricsLoader.loadLyrics(for:);
    v4 = v0[88];
    v5 = v0[78];

    return MusicItem<>.with(_:)(v4, v1, v5, &protocol witness table for Song, &protocol witness table for Song, v3);
  }

  else
  {
    v6 = v0[83];
    v7 = v0[79];
    v8 = v0[78];
    v9 = v0[72];
    v10 = v0[70];
    v11 = v0[69];
    v12 = v0[65];
    v13 = v0[64];
    v14 = Logger.lyrics.unsafeMutableAddressor();
    (*(v10 + 16))(v9, v14, v11);
    (*(v7 + 16))(v6, v13, v8);
    v15 = v12;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[83];
    v20 = v0[79];
    v21 = v0[78];
    v22 = v0[72];
    v23 = v0[70];
    v24 = v0[69];
    if (v18)
    {
      v38 = v0[72];
      v25 = v0[65];
      v37 = v0[69];
      v26 = swift_slowAlloc();
      v39[0] = swift_slowAlloc();
      *v26 = 136446466;
      v0[57] = v25;
      v27 = String.init<A>(describing:)();
      v29 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v27, v28, v39);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2082;
      v30 = Song.loggingInfo.getter();
      v32 = v31;
      (*(v20 + 8))(v19, v21);
      v33 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v30, v32, v39);

      *(v26 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v16, v17, "Loader<%{public}s> loadLyrics(for:completion:) returned without loading lyrics [hasLyrics and hasCustomLyrics were false] %{public}s", v26, 0x16u);
      swift_arrayDestroy();

      (*(v23 + 8))(v38, v37);
    }

    else
    {

      (*(v20 + 8))(v19, v21);
      (*(v23 + 8))(v22, v24);
    }

    lazy protocol witness table accessor for type LyricsLoader.LyricsError and conformance LyricsLoader.LyricsError();
    swift_allocError();
    *v34 = 1;
    swift_willThrow();

    v35 = v0[1];

    return v35();
  }
}

{
  *(*v1 + 728) = v0;

  if (v0)
  {
    v2 = LyricsLoader.loadLyrics(for:);
  }

  else
  {

    v2 = LyricsLoader.loadLyrics(for:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v139 = v0;
  v1 = Song.customLyrics.getter();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v5 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v6 = [objc_opt_self() standardUserDefaults];
      v7 = String._bridgeToObjectiveC()();
      v8 = [v6 BOOLForKey:v7];

      if (v8 && *DeviceCapabilities.isInternalInstall.unsafeMutableAddressor() == 1 && (String.trim()(), v9 = specialized Sequence<>.starts<A>(with:)(), , (v9 & 1) != 0) && (v10 = *(v0 + 616), v11 = *(v0 + 608), v12 = *(v0 + 600), static String.Encoding.utf8.getter(), v13 = String.data(using:allowLossyConversion:)(), v15 = v14, *(v0 + 736) = v13, *(v0 + 744) = v14, (*(v11 + 8))(v10, v12), v15 >> 60 != 15))
      {

        v115 = objc_allocWithZone(MSVLyricsTTMLParser);
        outlined copy of Data._Representation(v13, v15);
        isa = Data._bridgeToObjectiveC()().super.isa;
        v117 = [v115 initWithTTMLData:isa];
        *(v0 + 752) = v117;

        outlined consume of Data?(v13, v15);
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 488;
        *(v0 + 24) = LyricsLoader.loadLyrics(for:);
        v118 = swift_continuation_init();
        *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo17MSVLyricsSongInfoCs5Error_pGMd);
        *(v0 + 336) = _NSConcreteStackBlock;
        *(v0 + 344) = 1107296256;
        *(v0 + 352) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned MSVLyricsSongInfo?, @unowned NSError?) -> () with result type MSVLyricsSongInfo;
        *(v0 + 360) = &block_descriptor_55;
        *(v0 + 368) = v118;
        [v117 parseWithCompletion:v0 + 336];

        return _swift_continuation_await(v0 + 16);
      }

      else
      {
        (*(*(v0 + 632) + 8))(*(v0 + 704), *(v0 + 624));

        v16 = *(v0 + 8);

        return v16(v3, v4, 0);
      }
    }
  }

  if ((Song.hasLyrics.getter() & 1) == 0)
  {
    v53 = *(v0 + 704);
    v54 = *(v0 + 696);
    v55 = *(v0 + 688);
    v56 = *(v0 + 632);
    v57 = *(v0 + 624);
    v58 = *(v0 + 592);
    v59 = *(v0 + 560);
    v60 = *(v0 + 552);
    v132 = *(v0 + 680);
    v136 = *(v0 + 520);
    v61 = *(v0 + 512);
    v62 = Logger.lyrics.unsafeMutableAddressor();
    (*(v59 + 16))(v58, v62, v60);
    v63 = *(v56 + 16);
    v63(v54, v61, v57);
    v63(v55, v53, v57);
    v63(v132, v61, v57);
    v64 = v136;
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();

    v67 = os_log_type_enabled(v65, v66);
    v68 = *(v0 + 696);
    v69 = *(v0 + 688);
    v137 = *(v0 + 680);
    v70 = *(v0 + 632);
    v71 = *(v0 + 624);
    v72 = *(v0 + 592);
    v73 = *(v0 + 560);
    v74 = *(v0 + 552);
    if (v67)
    {
      v133 = *(v0 + 592);
      v75 = *(v0 + 520);
      v131 = *(v0 + 552);
      v76 = swift_slowAlloc();
      v138[0] = swift_slowAlloc();
      *v76 = 136446978;
      *(v0 + 464) = v75;
      v77 = String.init<A>(describing:)();
      v127 = v66;
      v79 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v77, v78, v138);

      *(v76 + 4) = v79;
      *(v76 + 12) = 2082;
      v80 = Song.hasCustomLyrics.getter();
      if (v80)
      {
        v81 = 1702195828;
      }

      else
      {
        v81 = 0x65736C6166;
      }

      if (v80)
      {
        v82 = 0xE400000000000000;
      }

      else
      {
        v82 = 0xE500000000000000;
      }

      loga = v65;
      v83 = *(v70 + 8);
      v83(v68, v71);
      v84 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v81, v82, v138);

      *(v76 + 14) = v84;
      *(v76 + 22) = 2082;
      *(v0 + 424) = Song.customLyrics.getter();
      *(v0 + 432) = v85;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd_0);
      v86 = String.init<A>(describing:)();
      v88 = v87;
      v83(v69, v71);
      v89 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v86, v88, v138);

      *(v76 + 24) = v89;
      *(v76 + 32) = 2082;
      v90 = Song.loggingInfo.getter();
      v92 = v91;
      v83(v137, v71);
      v93 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v90, v92, v138);

      *(v76 + 34) = v93;
      _os_log_impl(&_mh_execute_header, loga, v127, "Loader<%{public}s> loadLyrics(for:completion:) didn't load lyrics [no lyrics found] song.hasLyrics=false song.hasCustomLyrics=%{public}s song.customLyrics=%{public}s %{public}s", v76, 0x2Au);
      swift_arrayDestroy();

      (*(v73 + 8))(v133, v131);
    }

    else
    {

      v83 = *(v70 + 8);
      v83(v137, v71);
      v83(v69, v71);
      v83(v68, v71);
      (*(v73 + 8))(v72, v74);
    }

    v108 = *(v0 + 704);
    v109 = *(v0 + 624);
    lazy protocol witness table accessor for type LyricsLoader.LyricsError and conformance LyricsLoader.LyricsError();
    swift_allocError();
    *v110 = 1;
    swift_willThrow();
    v83(v108, v109);
    goto LABEL_36;
  }

  static ApplicationCapabilities.shared.getter((v0 + 208));
  outlined destroy of ApplicationCapabilities(v0 + 208);
  if ((*(v0 + 218) & 1) == 0)
  {
    v18 = *(v0 + 672);
    v19 = *(v0 + 632);
    v20 = *(v0 + 624);
    v21 = *(v0 + 584);
    v22 = *(v0 + 560);
    v23 = *(v0 + 552);
    v134 = *(v0 + 520);
    v24 = *(v0 + 512);
    v25 = [objc_opt_self() sharedController];
    v26 = [v25 musicSubscriptionStatus];

    static ApplicationCapabilities.shared.getter((v0 + 80));
    outlined destroy of ApplicationCapabilities(v0 + 80);
    v130 = *(v0 + 88);
    v27 = Logger.lyrics.unsafeMutableAddressor();
    (*(v22 + 16))(v21, v27, v23);
    (*(v19 + 16))(v18, v24, v20);
    v28 = v134;
    v29 = v26;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 672);
    v34 = *(v0 + 632);
    v35 = *(v0 + 624);
    v36 = *(v0 + 584);
    v37 = *(v0 + 560);
    v38 = *(v0 + 552);
    if (v32)
    {
      v129 = v31;
      v39 = *(v0 + 520);
      log = *(v0 + 624);
      v40 = swift_slowAlloc();
      v138[0] = swift_slowAlloc();
      *v40 = 136446978;
      *(v0 + 472) = v39;
      v41 = String.init<A>(describing:)();
      v135 = v36;
      v128 = v38;
      v43 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v41, v42, v138);

      *(v40 + 4) = v43;
      *(v40 + 12) = 2082;
      *(v0 + 480) = v29;
      v44 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25ICMusicSubscriptionStatusCSgMd_0);
      v45 = String.init<A>(describing:)();
      v47 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v45, v46, v138);

      *(v40 + 14) = v47;
      *(v40 + 22) = 1026;
      *(v40 + 24) = WORD1(v130) & 1;
      *(v40 + 28) = 2082;
      v48 = Song.loggingInfo.getter();
      v50 = v49;
      v51 = *(v34 + 8);
      v51(v33, log);
      v52 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v48, v50, v138);

      *(v40 + 30) = v52;
      _os_log_impl(&_mh_execute_header, v30, v129, "Loader<%{public}s> loadLyrics(for:completion:) didn't load store lyrics [not supported by subscription] subscriptionStatus=%{public}s subscriptionStatus.capabilities.contains(.catalogLyricsViewing)=%{BOOL,public}d %{public}s", v40, 0x26u);
      swift_arrayDestroy();

      (*(v37 + 8))(v135, v128);
    }

    else
    {

      v51 = *(v34 + 8);
      v51(v33, v35);
      (*(v37 + 8))(v36, v38);
    }

    v111 = *(v0 + 704);
    v112 = *(v0 + 624);
    lazy protocol witness table accessor for type LyricsLoader.LyricsError and conformance LyricsLoader.LyricsError();
    swift_allocError();
    *v113 = 2;
    swift_willThrow();

    v51(v111, v112);
LABEL_36:

    v114 = *(v0 + 8);

    return v114();
  }

  if (*DeviceCapabilities.isInternalInstall.unsafeMutableAddressor() != 1)
  {
    goto LABEL_29;
  }

  v94 = Song.catalogID.getter();
  *(v0 + 768) = v95;
  if (!v95)
  {
    goto LABEL_29;
  }

  v96 = v94;
  v97 = v95;
  v98 = *(v0 + 728);
  _StringGuts.grow(_:)(30);

  v138[0] = 0xD000000000000017;
  v138[1] = 0x80000001004D0F80;
  v99._countAndFlagsBits = v96;
  v99._object = v97;
  String.append(_:)(v99);
  v100._countAndFlagsBits = 0x6C6D74742ELL;
  v100._object = 0xE500000000000000;
  String.append(_:)(v100);
  URL.init(fileURLWithPath:)();

  v101 = Data.init(contentsOf:options:)();
  *(v0 + 776) = v101;
  *(v0 + 784) = v102;
  if (v98)
  {
    v103 = *(v0 + 544);
    v104 = *(v0 + 536);
    v105 = *(v0 + 528);

    (*(v104 + 8))(v103, v105);
LABEL_29:
    v106 = swift_task_alloc();
    *(v0 + 816) = v106;
    *v106 = v0;
    v106[1] = LyricsLoader.loadLyrics(for:);
    v107 = *(v0 + 512);

    return LyricsLoader.fetchStoreLyrics(for:)(v107);
  }

  v119 = v101;
  v120 = v102;
  (*(*(v0 + 536) + 8))(*(v0 + 544), *(v0 + 528));
  v121 = *LyricsOptionsManager.shared.unsafeMutableAddressor();

  BagProvider.shared.unsafeMutableAddressor();

  v122 = BagProvider.bag.getter();

  (*(*v121 + 120))(v122);

  v123 = swift_task_alloc();
  *(v0 + 792) = v123;
  v123[2] = v119;
  v123[3] = v120;
  v123[4] = v96;
  v123[5] = v97;
  v124 = swift_task_alloc();
  *(v0 + 800) = v124;
  *v124 = v0;
  v124[1] = LyricsLoader.loadLyrics(for:);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 400, 0, 0, 0xD000000000000010, 0x80000001004D0FA0, partial apply for closure #1 in LyricsLoader.loadLyrics(for:), v123, &type metadata for LyricsLoader.Result);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 760) = v1;
  if (v1)
  {
    v2 = LyricsLoader.loadLyrics(for:);
  }

  else
  {
    v2 = LyricsLoader.loadLyrics(for:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[94];
  v2 = v0[93];
  v3 = v0[92];
  v4 = v0[88];
  v5 = v0[79];
  v6 = v0[78];
  v7 = v0[61];
  type metadata accessor for Lyrics(0);
  swift_allocObject();
  v10 = Lyrics.init(identifier:songInfo:)(0, 0, v7);

  outlined consume of Data?(v3, v2);
  (*(v5 + 8))(v4, v6);

  v8 = v0[1];

  return v8(v10, 0, 1);
}

{
  *(*v1 + 808) = v0;

  if (v0)
  {
    v2 = LyricsLoader.loadLyrics(for:);
  }

  else
  {
    v2 = LyricsLoader.loadLyrics(for:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = *(v0 + 704);
  v2 = *(v0 + 632);
  v3 = *(v0 + 624);
  outlined consume of Data._Representation(*(v0 + 776), *(v0 + 784));
  (*(v2 + 8))(v1, v3);
  v7 = *(v0 + 408);
  v8 = *(v0 + 400);
  v6 = *(v0 + 416);

  v4 = *(v0 + 8);

  return v4(v8, v7, v6);
}

{
  v3 = v0[104];
  (*(v0[79] + 8))(v0[88], v0[78]);

  v1 = v0[1];

  return v1(v3, 0, 1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v66 = v0;
  v1 = v0[82];
  v58 = v0[81];
  v60 = v0[88];
  v2 = v0[79];
  v3 = v0[78];
  v4 = v0[71];
  v5 = v0[70];
  v6 = v0[69];
  v62 = v0[80];
  v64 = v0[65];
  v7 = v0[64];
  swift_willThrow();
  v8 = Logger.lyrics.unsafeMutableAddressor();
  (*(v5 + 16))(v4, v8, v6);
  v9 = *(v2 + 16);
  v9(v1, v7, v3);
  v9(v58, v60, v3);
  v9(v62, v7, v3);
  v10 = v64;
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[95];
    v14 = v0[82];
    v56 = v0[81];
    v57 = v0[80];
    v15 = v0[79];
    v16 = v0[78];
    v59 = v0[70];
    v61 = v0[69];
    v63 = v0[71];
    v17 = v0[65];
    v18 = swift_slowAlloc();
    v65[0] = swift_slowAlloc();
    *v18 = 136447234;
    v0[62] = v17;
    v19 = String.init<A>(describing:)();
    v21 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v19, v20, v65);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2082;
    v0[63] = v13;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd_0);
    v22 = String.init<A>(describing:)();
    v24 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v22, v23, v65);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2082;
    v25 = Song.hasCustomLyrics.getter();
    if (v25)
    {
      v26 = 1702195828;
    }

    else
    {
      v26 = 0x65736C6166;
    }

    if (v25)
    {
      v27 = 0xE400000000000000;
    }

    else
    {
      v27 = 0xE500000000000000;
    }

    v28 = *(v15 + 8);
    v28(v14, v16);
    v29 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v26, v27, v65);

    *(v18 + 24) = v29;
    *(v18 + 32) = 2082;
    v0[55] = Song.customLyrics.getter();
    v0[56] = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd_0);
    v31 = String.init<A>(describing:)();
    v33 = v32;
    v28(v56, v16);
    v34 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v31, v33, v65);

    *(v18 + 34) = v34;
    *(v18 + 42) = 2082;
    v35 = Song.loggingInfo.getter();
    v37 = v36;
    v28(v57, v16);
    v38 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v35, v37, v65);

    *(v18 + 44) = v38;
    _os_log_impl(&_mh_execute_header, v11, v12, "Loader<%{public}s> loadLyrics(for:completion:) didn't parse TTML custom lyrics with error=%{public}s song.hasCustomLyrics=%{public}s song.customLyrics=%{public}s %{public}s", v18, 0x34u);
    swift_arrayDestroy();

    (*(v59 + 8))(v63, v61);
  }

  else
  {
    v39 = v0[82];
    v40 = v0[81];
    v41 = v0[80];
    v42 = v0[79];
    v43 = v0[78];
    v44 = v0[71];
    v45 = v11;
    v46 = v0[70];
    v47 = v0[69];

    v28 = *(v42 + 8);
    v28(v41, v43);
    v28(v40, v43);
    v28(v39, v43);
    (*(v46 + 8))(v44, v47);
  }

  v48 = v0[94];
  v49 = v0[93];
  v50 = v0[92];
  v51 = v0[88];
  v52 = v0[78];
  lazy protocol witness table accessor for type LyricsLoader.LyricsError and conformance LyricsLoader.LyricsError();
  swift_allocError();
  *v53 = 0;
  swift_willThrow();

  outlined consume of Data?(v50, v49);
  v28(v51, v52);

  v54 = v0[1];

  return v54();
}

{
  v1 = v0[88];
  v2 = v0[79];
  v3 = v0[78];
  outlined consume of Data._Representation(v0[97], v0[98]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

{
  (*(v0[79] + 8))(v0[88], v0[78]);

  v1 = v0[1];

  return v1();
}

{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  dispatch thunk of LegacyModelObjectConvertible.init(_:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 32), &_s8MusicKit4SongVSgMd_0);
    lazy protocol witness table accessor for type LyricsLoader.LyricsError and conformance LyricsLoader.LyricsError();
    swift_allocError();
    *v5 = 4;
    swift_willThrow();

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    (*(*(v0 + 48) + 32))(*(v0 + 56), *(v0 + 32), *(v0 + 40));
    v8 = swift_task_alloc();
    *(v0 + 64) = v8;
    *v8 = v0;
    v8[1] = LyricsLoader.loadLyrics(for:);
    v9 = *(v0 + 56);

    return LyricsLoader.loadLyrics(for:)(v9);
  }
}

{
  v1 = *(v0 + 96);
  (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));

  v2 = *(v0 + 8);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);

  return v2(v3, v4, v1 & 1);
}

{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t specialized Sequence<>.starts<A>(with:)()
{

  v0 = String.Iterator.next()();
  if (v0.value._object)
  {
    countAndFlagsBits = v0.value._countAndFlagsBits;
    object = v0.value._object;
    do
    {
      v5 = String.Iterator.next()();
      if (!v5.value._object)
      {

        return 1;
      }

      if (countAndFlagsBits == v5.value._countAndFlagsBits && object == v5.value._object)
      {
      }

      else
      {
        v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v3 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v4 = String.Iterator.next()();
      countAndFlagsBits = v4.value._countAndFlagsBits;
      object = v4.value._object;
    }

    while (v4.value._object);
  }

  v6 = String.Iterator.next()().value._object;

  if (!v6)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

void *@objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned MSVLyricsSongInfo?, @unowned NSError?) -> () with result type MSVLyricsSongInfo(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd_0);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else if (a2)
  {
    **(*(*result + 64) + 40) = a2;
    v8 = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in LyricsLoader.loadLyrics(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11MusicCoreUI12LyricsLoaderC6ResultOs5Error_pGMd);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - v11;
  v13 = objc_allocWithZone(MSVLyricsTTMLParser);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v15 = [v13 initWithTTMLData:isa];

  (*(v9 + 16))(v12, a1, v8);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  (*(v9 + 32))(v17 + v16, v12, v8);
  v18 = (v17 + ((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = a4;
  v18[1] = a5;
  aBlock[4] = partial apply for closure #1 in closure #1 in LyricsLoader.loadLyrics(for:);
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed ICURLResponse?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_17_2;
  v19 = _Block_copy(aBlock);

  [v15 parseWithCompletion:v19];
  _Block_release(v19);
}

void closure #1 in closure #1 in LyricsLoader.loadLyrics(for:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    type metadata accessor for Lyrics(0);
    swift_allocObject();
    v8 = a1;

    Lyrics.init(identifier:songInfo:)(a4, a5, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11MusicCoreUI12LyricsLoaderC6ResultOs5Error_pGMd);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (!a2)
    {
      lazy protocol witness table accessor for type LyricsLoader.LyricsError and conformance LyricsLoader.LyricsError();
      swift_allocError();
      *v9 = 3;
    }

    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11MusicCoreUI12LyricsLoaderC6ResultOs5Error_pGMd);
    CheckedContinuation.resume(throwing:)();
  }
}

uint64_t LyricsLoader.loadLyrics(for:)(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  *(*v4 + 72) = v3;

  if (v3)
  {
    v9 = LyricsLoader.loadLyrics(for:);
  }

  else
  {
    *(v8 + 96) = a3;
    *(v8 + 80) = a2;
    *(v8 + 88) = a1;
    v9 = LyricsLoader.loadLyrics(for:);
  }

  return _swift_task_switch(v9, 0, 0);
}

id static LyricsLoader.requiredProperties()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd_0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004F2EE0;
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v1;
  *(v0 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 56) = v2;
  *(v0 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 72) = v3;
  *(v0 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 88) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So13MPPropertySetCtGMd_0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2EB0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1004F2400;
  *(v7 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v7 + 40) = v8;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = objc_opt_self();
  v11 = [v10 propertySetWithProperties:isa];

  *(inited + 48) = v11;
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1004F2EE0;
  *(v13 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v13 + 40) = v14;
  *(v13 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v13 + 56) = v15;
  *(v13 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v13 + 72) = v16;
  *(v13 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v13 + 88) = v17;
  v18 = Array._bridgeToObjectiveC()().super.isa;

  v19 = [v10 propertySetWithProperties:v18];

  *(inited + 72) = v19;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1004F2400;
  *(v21 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v21 + 40) = v22;
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1004F2400;
  *(v23 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v23 + 40) = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1004F2400;
  *(v25 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v25 + 40) = v26;
  v27 = Array._bridgeToObjectiveC()().super.isa;

  v28 = [v10 propertySetWithProperties:v27];

  *(v23 + 48) = v28;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So13MPPropertySetCTt0g5Tf4g_n_0(v23);
  swift_setDeallocating();
  outlined destroy of TaskPriority?(v23 + 32, &_sSS_So13MPPropertySetCtMd_0);
  v29 = objc_allocWithZone(MPPropertySet);
  v30 = Array._bridgeToObjectiveC()().super.isa;

  _sSo13MPPropertySetCMa_0();
  v31 = Dictionary._bridgeToObjectiveC()().super.isa;

  v32 = [v29 initWithProperties:v30 relationships:v31];

  *(inited + 96) = v32;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So13MPPropertySetCTt0g5Tf4g_n_0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So13MPPropertySetCtMd_0);
  swift_arrayDestroy();
  v33 = objc_allocWithZone(MPPropertySet);
  v34 = Array._bridgeToObjectiveC()().super.isa;

  v35 = Dictionary._bridgeToObjectiveC()().super.isa;

  v36 = [v33 initWithProperties:v34 relationships:v35];

  return v36;
}

uint64_t LyricsLoader.fetchStoreLyrics(for:)(uint64_t a1)
{
  v2[79] = v1;
  v2[78] = a1;
  v3 = type metadata accessor for String.Encoding();
  v2[80] = v3;
  v2[81] = *(v3 - 8);
  v2[82] = swift_task_alloc();
  v4 = type metadata accessor for Song();
  v2[83] = v4;
  v2[84] = *(v4 - 8);
  v2[85] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[86] = v5;
  v2[87] = *(v5 - 8);
  v2[88] = swift_task_alloc();
  v2[89] = swift_task_alloc();
  v2[90] = swift_task_alloc();
  v2[91] = swift_task_alloc();
  v2[92] = swift_task_alloc();
  v2[93] = swift_task_alloc();
  v2[94] = swift_task_alloc();
  v2[95] = swift_task_alloc();
  v6 = type metadata accessor for MusicDataResponse();
  v2[96] = v6;
  v2[97] = *(v6 - 8);
  v2[98] = swift_task_alloc();
  v7 = type metadata accessor for MusicDataRequest();
  v2[99] = v7;
  v2[100] = *(v7 - 8);
  v2[101] = swift_task_alloc();
  v8 = type metadata accessor for URLRequest();
  v2[102] = v8;
  v2[103] = *(v8 - 8);
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  v9 = type metadata accessor for URLQueryItem();
  v2[106] = v9;
  v2[107] = *(v9 - 8);
  v2[108] = swift_task_alloc();
  v2[109] = swift_task_alloc();
  v2[110] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV6ScriptVSgMd);
  v2[111] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV6RegionVSgMd);
  v2[112] = swift_task_alloc();
  v10 = type metadata accessor for Locale.Language();
  v2[113] = v10;
  v2[114] = *(v10 - 8);
  v2[115] = swift_task_alloc();
  v2[116] = swift_task_alloc();
  v2[117] = swift_task_alloc();
  v2[118] = swift_task_alloc();
  v2[119] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd);
  v2[120] = swift_task_alloc();
  v2[121] = swift_task_alloc();
  v2[122] = swift_task_alloc();
  v11 = type metadata accessor for Locale();
  v2[123] = v11;
  v2[124] = *(v11 - 8);
  v2[125] = swift_task_alloc();
  v2[126] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd_0);
  v2[127] = swift_task_alloc();
  v2[128] = swift_task_alloc();
  v2[129] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_0);
  v2[130] = swift_task_alloc();
  v12 = type metadata accessor for URL();
  v2[131] = v12;
  v2[132] = *(v12 - 8);
  v2[133] = swift_task_alloc();
  v2[134] = swift_task_alloc();

  return _swift_task_switch(LyricsLoader.fetchStoreLyrics(for:), 0, 0);
}

uint64_t LyricsLoader.fetchStoreLyrics(for:)()
{
  v264 = v0;
  v1 = v0;
  Song.catalogID.getter();
  v261 = v0;
  if (!v2)
  {
    v51 = v0[90];
    v52 = v0[87];
    v53 = v0[86];
    v54 = Logger.lyrics.unsafeMutableAddressor();
    (*(v52 + 16))(v51, v54, v53);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "fetchStoreLyrics: song has no storeID", v57, 2u);
    }

    v58 = v1[90];
    v59 = v1[87];
    v60 = v1[86];

    (*(v59 + 8))(v58, v60);
    lazy protocol witness table accessor for type LyricsLoader.LyricsError and conformance LyricsLoader.LyricsError();
    swift_allocError();
    v62 = 2;
    goto LABEL_21;
  }

  BagProvider.shared.unsafeMutableAddressor();

  v3 = BagProvider.bag.getter();
  v0[135] = v3;

  if (!v3)
  {
    v63 = v0[91];
    v64 = v0[87];
    v65 = v0[86];

    v66 = Logger.lyrics.unsafeMutableAddressor();
    (*(v64 + 16))(v63, v66, v65);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&_mh_execute_header, v67, v68, "fetchStoreLyrics: Bag is nil", v69, 2u);
    }

    v70 = v1[91];
    v71 = v1[87];
    v72 = v1[86];

    (*(v71 + 8))(v70, v72);
    lazy protocol witness table accessor for type LyricsLoader.LyricsError and conformance LyricsLoader.LyricsError();
    swift_allocError();
    v62 = 3;
LABEL_21:
    *v61 = v62;
    swift_willThrow();
LABEL_27:

    v84 = v261[1];

    return v84();
  }

  v4 = LyricsOptionsManager.shared.unsafeMutableAddressor();
  v5 = *(**v4 + 120);

  v6 = v3;
  v5(v3);

  v7 = [v6 stringForBagKey:ICURLBagKeyCountryCode];
  if (!v7)
  {
LABEL_23:

LABEL_24:
    v73 = v1[92];
    v74 = v1[87];
    v75 = v1[86];
    v76 = Logger.lyrics.unsafeMutableAddressor();
    (*(v74 + 16))(v73, v76, v75);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&_mh_execute_header, v77, v78, "fetchStoreLyrics: Unable to get the domain from the bag", v79, 2u);
    }

    v80 = v1[92];
    v81 = v1[87];
    v82 = v1[86];

    (*(v81 + 8))(v80, v82);
    lazy protocol witness table accessor for type LyricsLoader.LyricsError and conformance LyricsLoader.LyricsError();
    swift_allocError();
    *v83 = 3;
    swift_willThrow();

    goto LABEL_27;
  }

  v8 = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = [v6 dictionaryForBagKey:ICURLBagKeyMusicCommon];
  if (!v12 || (v13 = v12, v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v13, v15 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v14), , !v15))
  {
LABEL_22:

    goto LABEL_23;
  }

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v15 + 16))
  {

    goto LABEL_31;
  }

  v18 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
LABEL_31:

    v1 = v261;
    goto LABEL_24;
  }

  v1 = v261;
  v21 = v261 + 75;
  outlined init with copy of AnyHashable(*(v15 + 56) + 40 * v18, (v261 + 23));

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSs11AnyHashableVGMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v22 = *v21;
  if (!*(*v21 + 16) || (v23 = specialized __RawDictionaryStorage.find<A>(_:)(0x746C7561666564, 0xE700000000000000), (v24 & 1) == 0))
  {

    goto LABEL_23;
  }

  outlined init with copy of AnyHashable(*(v22 + 56) + 40 * v23, (v261 + 18));

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v256 = v261[132];
  v258 = v261[131];
  v254 = v261[130];
  v25 = v261[62];
  v26 = v261[63];
  _StringGuts.grow(_:)(49);

  v262 = 0x2F2F3A7370747468;
  v263 = 0xE800000000000000;
  v27._countAndFlagsBits = v25;
  v27._object = v26;
  String.append(_:)(v27);

  v28._countAndFlagsBits = 0x617461632F31762FLL;
  v28._object = 0xEC0000002F676F6CLL;
  String.append(_:)(v28);
  v29._countAndFlagsBits = v9;
  v29._object = v11;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0x2F73676E6F732FLL;
  v30._object = 0xE700000000000000;
  String.append(_:)(v30);
  v31 = MusicItemID.description.getter();
  v33 = v32;

  v34._countAndFlagsBits = v31;
  v34._object = v33;
  String.append(_:)(v34);

  v35._object = 0x80000001004D1020;
  v35._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v35);
  URL.init(string:)();
  if ((*(v256 + 48))(v254, 1, v258) == 1)
  {
    v36 = v261[130];
    v37 = v261[93];
    v38 = v261[87];
    v39 = v261[86];

    outlined destroy of TaskPriority?(v36, &_s10Foundation3URLVSgMd_0);
    v40 = Logger.lyrics.unsafeMutableAddressor();
    (*(v38 + 16))(v37, v40, v39);

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    v43 = os_log_type_enabled(v41, v42);
    v44 = v261[93];
    v45 = v261[87];
    v46 = v261[86];
    if (v43)
    {
      v47 = v261[93];
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v262 = v49;
      *v48 = 136446210;
      v50 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(0x2F2F3A7370747468, 0xE800000000000000, &v262);

      *(v48 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v41, v42, "fetchStoreLyrics: Couldn't build URL: %{public}s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v49);

      (*(v45 + 8))(v47, v46);
    }

    else
    {

      (*(v45 + 8))(v44, v46);
    }

    lazy protocol witness table accessor for type LyricsLoader.LyricsError and conformance LyricsLoader.LyricsError();
    swift_allocError();
    *v182 = 3;
    swift_willThrow();

    goto LABEL_27;
  }

  v86 = v261[134];
  v87 = v261[132];
  v88 = v261[131];
  v89 = v261[130];
  v90 = v261[129];
  v91 = v261[124];
  v259 = v261[123];

  (*(v87 + 32))(v86, v89, v88);
  v245 = *(v91 + 56);
  v245(v90, 1, 1, v259);
  v92 = static Locale.preferredLanguages.getter();
  v93 = v92;
  v94 = *(v92 + 16);
  if (!v94)
  {
    v239 = 0;
    v240 = _swiftEmptyArrayStorage;
    New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0 = _swiftEmptyArrayStorage;
    goto LABEL_84;
  }

  v239 = 0;
  v95 = 0;
  v96 = v261[124];
  v249 = (v96 + 48);
  v244 = (v96 + 16);
  v97 = (v261[114] + 8);
  v98 = (v96 + 8);
  v99 = v92 + 40;
  v247 = -v94;
  v248 = v98;
  v240 = _swiftEmptyArrayStorage;
  New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0 = _swiftEmptyArrayStorage;
  v250 = v92;
  v238 = v92 + 40;
  do
  {
    v100 = v99 + 16 * v95;
    v101 = v95 + 1;
    while (1)
    {
      v260 = v101;
      if ((v101 - 1) >= *(v93 + 16))
      {
        __break(1u);
      }

      v104 = v97;
      v105 = v1[129];
      v106 = v1[128];
      v107 = v1[123];
      v257 = v100;

      Locale.init(identifier:)();
      outlined init with copy of Locale?(v105, v106);
      if ((*v249)(v106, 1, v107) == 1)
      {
        v108 = v1[129];
        v109 = v1[128];
        v110 = v1[126];
        v111 = v1[123];
        outlined destroy of TaskPriority?(v108, &_s10Foundation6LocaleVSgMd_0);
        outlined destroy of TaskPriority?(v109, &_s10Foundation6LocaleVSgMd_0);
        (*v244)(v108, v110, v111);
        v245(v108, 0, 1, v111);
      }

      else
      {
        outlined destroy of TaskPriority?(v1[128], &_s10Foundation6LocaleVSgMd_0);
      }

      v112 = v1[122];
      v113 = v1[119];
      v114 = v1[113];
      Locale.language.getter();
      Locale.Language.languageCode.getter();
      v255 = *v97;
      (*v97)(v113, v114);
      v115 = type metadata accessor for Locale.LanguageCode();
      v116 = *(v115 - 8);
      v252 = *(v116 + 48);
      v251 = v116;
      if (v252(v112, 1, v115) == 1)
      {
        outlined destroy of TaskPriority?(v1[122], &_s10Foundation6LocaleV12LanguageCodeVSgMd);
      }

      else
      {
        v117 = v1[122];
        v118 = Locale.LanguageCode.identifier.getter();
        v119 = v116;
        v120 = v118;
        v122 = v121;
        (*(v119 + 8))(v117, v115);
        v1[64] = Locale.identifier.getter();
        v1[65] = v123;
        v1[56] = 45;
        v1[57] = 0xE100000000000000;
        _sS2SSysWl_0();
        LOBYTE(v117) = StringProtocol.contains<A>(_:)();

        if (v117)
        {

          v124 = Locale.identifier.getter();
          v126 = v125;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0(0, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0[2] + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0);
          }

          v128 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0[2];
          v127 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0[3];
          if (v128 >= v127 >> 1)
          {
            New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0((v127 > 1), v128 + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0);
          }

          New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0[2] = (v128 + 1);
          v129 = &New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0[2 * v128];
          v129[4] = v124;
          v129[5] = v126;
        }

        else
        {
          v130 = v1[112];
          v262 = v120;
          v263 = v122;
          v131._countAndFlagsBits = 45;
          v131._object = 0xE100000000000000;
          String.append(_:)(v131);
          Locale.region.getter();
          v132 = type metadata accessor for Locale.Region();
          v133 = v1;
          v134 = *(v132 - 8);
          v135 = (*(v134 + 48))(v130, 1, v132);
          v136 = v133[112];
          if (v135 == 1)
          {
            outlined destroy of TaskPriority?(v136, &_s10Foundation6LocaleV6RegionVSgMd);
            v138 = String.uppercased()();
            countAndFlagsBits = v138._countAndFlagsBits;
            object = v138._object;
          }

          else
          {
            v140 = Locale.Region.identifier.getter();
            object = v141;
            (*(v134 + 8))(v136, v132);
            countAndFlagsBits = v140;
          }

          v142 = object;
          String.append(_:)(*&countAndFlagsBits);

          v143 = v262;
          v144 = v263;
          v1 = v261;
          v97 = v104;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0(0, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0[2] + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0);
          }

          v146 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0[2];
          v145 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0[3];
          if (v146 >= v145 >> 1)
          {
            New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0((v145 > 1), v146 + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0);
          }

          New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0[2] = (v146 + 1);
          v147 = &New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0[2 * v146];
          v147[4] = v143;
          v147[5] = v144;
        }
      }

      *(v1 + 1194) = 6;
      v148 = _s14MusicUtilities7FeatureO0A0OAE0C5Flags0cD3KeyAAWl_0();
      if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v148) & 1) == 0)
      {
        (*v248)(v1[126], v1[123]);
LABEL_63:
        v93 = v250;
LABEL_64:
        v103 = v260;
        goto LABEL_37;
      }

      v246 = v115;
      v149 = v1[118];
      v150 = v1[113];
      v151 = v1[111];
      Locale.language.getter();
      Locale.Language.script.getter();
      v255(v149, v150);
      v152 = type metadata accessor for Locale.Script();
      v153 = v97;
      v154 = *(v152 - 8);
      if ((*(v154 + 48))(v151, 1, v152) != 1)
      {
        break;
      }

      v102 = v1[111];
      (*v248)(v1[126], v1[123]);
      outlined destroy of TaskPriority?(v102, &_s10Foundation6LocaleV6ScriptVSgMd);
      v93 = v250;
      v103 = v260;
      v97 = v153;
LABEL_37:
      v100 = v257 + 16;
      v101 = v103 + 1;
      if (v247 + v101 == 1)
      {
        goto LABEL_84;
      }
    }

    v155 = v1[121];
    v156 = v1;
    v157 = v1[117];
    v242 = v156[113];
    v158 = v156[111];
    v241 = Locale.Script.identifier.getter();
    v243 = v159;
    (*(v154 + 8))(v158, v152);
    Locale.language.getter();
    Locale.Language.languageCode.getter();
    v255(v157, v242);
    v97 = v153;
    if (v252(v155, 1, v246) == 1)
    {
      v160 = v156[121];
      (*v248)(v156[126], v156[123]);

      outlined destroy of TaskPriority?(v160, &_s10Foundation6LocaleV12LanguageCodeVSgMd);
      v1 = v156;
      goto LABEL_63;
    }

    v161 = v156[121];
    v162 = Locale.LanguageCode.identifier.getter();
    v164 = v163;
    (*(v251 + 8))(v161, v246);
    v165 = Lyrics.scriptMap.unsafeMutableAddressor();
    v166 = *v165;
    v1 = v156;
    if (*(*v165 + 16))
    {

      v167 = v243;
      v168 = specialized __RawDictionaryStorage.find<A>(_:)(v241, v243);
      if (v169)
      {
        v170 = (*(v166 + 56) + 16 * v168);
        v171 = v170[1];
        v241 = *v170;

        v167 = v171;
      }
    }

    else
    {
      v167 = v243;
    }

    v262 = v162;
    v263 = v164;
    v172._countAndFlagsBits = 45;
    v172._object = 0xE100000000000000;
    String.append(_:)(v172);
    v173._countAndFlagsBits = v241;
    v173._object = v167;
    String.append(_:)(v173);
    v174 = v164;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v240 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0(0, v240[2] + 1, 1, v240);
    }

    v176 = v240[2];
    v175 = v240[3];
    if (v176 >= v175 >> 1)
    {
      v240 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0((v175 > 1), v176 + 1, 1, v240);
    }

    v240[2] = (v176 + 1);
    v177 = &v240[2 * v176];
    v177[4] = v162;
    v177[5] = v174;
    v178 = Lyrics.defaultScript.unsafeMutableAddressor();
    v179 = v1[126];
    v180 = v1[123];
    if (v241 != *v178 || v167 != *(v178 + 1))
    {
      v181 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v248)(v179, v180);
      v93 = v250;
      if (v181)
      {
        goto LABEL_79;
      }

      goto LABEL_64;
    }

    (*v248)(v179, v180);
    v93 = v250;
LABEL_79:
    v239 = 1;
    v95 = v260;
    v99 = v238;
  }

  while (v247 + v260);
LABEL_84:
  v183 = v1[129];
  v184 = v1[127];
  v185 = v1[124];
  v186 = v1[123];

  outlined init with copy of Locale?(v183, v184);
  if ((*(v185 + 48))(v184, 1, v186) == 1)
  {
    outlined destroy of TaskPriority?(v1[127], &_s10Foundation6LocaleVSgMd_0);
  }

  else
  {
    (*(v1[124] + 32))(v1[125], v1[127], v1[123]);
    if ((v239 & 1) != 0 || (v187 = v1[116], v188 = v1[114], v189 = v1[113], v190 = *v4, , Locale.language.getter(), v191 = (*(*v190 + 256))(v187), , v192 = *(v188 + 8), v192(v187, v189), (v191 & 1) == 0))
    {
      (*(v1[124] + 8))(v1[125], v1[123]);
    }

    else
    {
      v193 = v1[120];
      v194 = v1[115];
      v195 = v1[113];
      Locale.language.getter();
      Locale.Language.languageCode.getter();
      v192(v194, v195);
      v196 = type metadata accessor for Locale.LanguageCode();
      v197 = *(v196 - 8);
      if ((*(v197 + 48))(v193, 1, v196) == 1)
      {
        v198 = v1[120];
        (*(v1[124] + 8))(v1[125], v1[123]);
        outlined destroy of TaskPriority?(v198, &_s10Foundation6LocaleV12LanguageCodeVSgMd);
      }

      else
      {
        v224 = v1[120];
        v225 = Locale.LanguageCode.identifier.getter();
        v227 = v226;
        (*(v197 + 8))(v224, v196);
        v262 = v225;
        v263 = v227;
        v228._countAndFlagsBits = 45;
        v228._object = 0xE100000000000000;
        String.append(_:)(v228);
        v229 = Lyrics.defaultScript.unsafeMutableAddressor();
        v231 = *v229;
        v230 = v229[1];

        v232._countAndFlagsBits = v231;
        v232._object = v230;
        String.append(_:)(v232);

        v234 = v262;
        v233 = v227;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v240 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0(0, v240[2] + 1, 1, v240);
        }

        v236 = v240[2];
        v235 = v240[3];
        if (v236 >= v235 >> 1)
        {
          v240 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0((v235 > 1), v236 + 1, 1, v240);
        }

        v1 = v261;
        (*(v261[124] + 8))(v261[125], v261[123]);
        v240[2] = (v236 + 1);
        v237 = &v240[2 * v236];
        v237[4] = v234;
        v237[5] = v233;
      }
    }
  }

  v1[72] = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd_0);
  _sSaySSGSayxGSKsWl_0();
  BidirectionalCollection<>.joined(separator:)();

  URLQueryItem.init(name:value:)();

  IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0(0, 1, 1, _swiftEmptyArrayStorage);
  v201 = *(IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0 + 16);
  v200 = *(IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0 + 24);
  if (v201 >= v200 >> 1)
  {
    IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0(v200 > 1, v201 + 1, 1, IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0);
  }

  v202 = v1[110];
  v203 = v1[107];
  v204 = v1[106];
  *(IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0 + 16) = v201 + 1;
  v206 = *(v203 + 32);
  v203 += 32;
  v205 = v206;
  v207 = (*(v203 + 48) + 32) & ~*(v203 + 48);
  v208 = *(v203 + 40);
  v206(IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0 + v207 + v208 * v201, v202, v204);
  *(v1 + 1193) = 6;
  v209 = _s14MusicUtilities7FeatureO0A0OAE0C5Flags0cD3KeyAAWl_0();
  v1[136] = v209;
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v209))
  {
    v1[76] = v240;
    BidirectionalCollection<>.joined(separator:)();

    URLQueryItem.init(name:value:)();

    v211 = *(IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0 + 16);
    v210 = *(IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0 + 24);
    if (v211 >= v210 >> 1)
    {
      IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0(v210 > 1, v211 + 1, 1, IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0);
    }

    v212 = v1[109];
    v213 = v1[106];
    *(IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0 + 16) = v211 + 1;
    v205(IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0 + v207 + v211 * v208, v212, v213);
    URLQueryItem.init(name:value:)();
    v215 = *(IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0 + 16);
    v214 = *(IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0 + 24);
    if (v215 >= v214 >> 1)
    {
      IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0(v214 > 1, v215 + 1, 1, IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0);
    }

    v216 = v1[108];
    v217 = v1[106];
    *(IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0 + 16) = v215 + 1;
    v205(IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0 + v207 + v215 * v208, v216, v217);
  }

  else
  {
  }

  v218 = v1[105];
  v219 = v1[104];
  v220 = v1[103];
  v221 = v1[102];
  URL.appending(queryItems:)();

  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  (*(v220 + 16))(v219, v218, v221);
  MusicDataRequest.init(urlRequest:)();
  v222 = swift_task_alloc();
  v1[137] = v222;
  *v222 = v1;
  v222[1] = LyricsLoader.fetchStoreLyrics(for:);
  v223 = v1[98];

  return MusicDataRequest.response()(v223);
}

{
  *(*v1 + 1104) = v0;

  if (v0)
  {
    v2 = LyricsLoader.fetchStoreLyrics(for:);
  }

  else
  {
    v2 = LyricsLoader.fetchStoreLyrics(for:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v123 = v0;
  v1 = *(v0 + 760);
  v2 = *(v0 + 696);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);
  v5 = *(v0 + 664);
  v6 = *(v0 + 632);
  v7 = *(v0 + 624);
  v121 = 0x3C726564616F4CLL;
  v122 = 0xE700000000000000;
  *(v0 + 560) = v6;
  v8._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 62;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  v10 = v122;
  v109 = v121;
  v11 = Logger.lyrics.unsafeMutableAddressor();
  *(v0 + 1112) = v11;
  v12 = *(v2 + 16);
  *(v0 + 1120) = v12;
  *(v0 + 1128) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v114 = v11;
  v112 = v12;
  v12(v1);
  (*(v4 + 16))(v3, v7, v5);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 760);
  v17 = *(v0 + 696);
  v117 = *(v0 + 688);
  v18 = *(v0 + 680);
  v19 = *(v0 + 672);
  v20 = *(v0 + 664);
  if (v15)
  {
    v107 = *(v0 + 760);
    v21 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    *v21 = 136446466;
    v22 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v109, v10, &v121);

    *(v21 + 4) = v22;
    *(v21 + 12) = 2082;
    v23 = Song.loggingInfo.getter();
    v25 = v24;
    (*(v19 + 8))(v18, v20);
    v26 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v23, v25, &v121);

    *(v21 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s loadLyrics(for:completion:) completed for %{public}s", v21, 0x16u);
    swift_arrayDestroy();

    v27 = *(v17 + 8);
    v27(v107, v117);
  }

  else
  {

    (*(v19 + 8))(v18, v20);
    v27 = *(v17 + 8);
    v27(v16, v117);
  }

  *(v0 + 1136) = v27;
  v28 = *(v0 + 1088);
  *(v0 + 1192) = 6;
  v29 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v28);
  if (v29)
  {
    v30 = 0xD000000000000011;
  }

  else
  {
    v30 = 1819112564;
  }

  if (v29)
  {
    v31 = 0x80000001004D1040;
  }

  else
  {
    v31 = 0xE400000000000000;
  }

  v32 = objc_opt_self();
  v33 = MusicDataResponse.data.getter();
  v35 = v34;
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v33, v35);
  *(v0 + 536) = 0;
  v37 = [v32 JSONObjectWithData:isa options:0 error:v0 + 536];

  v38 = *(v0 + 536);
  if (!v37)
  {
    v57 = *(v0 + 784);
    v58 = *(v0 + 776);
    v59 = *(v0 + 768);
    v60 = v38;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v58 + 8))(v57, v59);
LABEL_37:
    v75 = *(v0 + 712);
    v76 = *(v0 + 696);
    v77 = *(v0 + 688);
    v78 = Logger.lyrics.unsafeMutableAddressor();
    (*(v76 + 16))(v75, v78, v77);
    swift_errorRetain();
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v81 = 138543362;
      swift_errorRetain();
      v83 = _swift_stdlib_bridgeErrorToNSError();
      *(v81 + 4) = v83;
      *v82 = v83;
      _os_log_impl(&_mh_execute_header, v79, v80, "Data request error: %{public}@", v81, 0xCu);
      outlined destroy of TaskPriority?(v82, &_sSo8NSObjectCSgMd_1);
    }

    v108 = *(v0 + 1080);
    v84 = *(v0 + 1056);
    v116 = *(v0 + 1048);
    v120 = *(v0 + 1072);
    v113 = *(v0 + 840);
    v115 = *(v0 + 1032);
    v85 = *(v0 + 824);
    v111 = *(v0 + 816);
    v86 = *(v0 + 808);
    v87 = *(v0 + 800);
    v88 = *(v0 + 792);
    v89 = v79;
    v90 = *(v0 + 712);
    v91 = *(v0 + 696);
    v92 = *(v0 + 688);

    (*(v91 + 8))(v90, v92);
    swift_willThrow();

    (*(v87 + 8))(v86, v88);
    (*(v85 + 8))(v113, v111);
    outlined destroy of TaskPriority?(v115, &_s10Foundation6LocaleVSgMd_0);
    (*(v84 + 8))(v120, v116);

    v93 = *(v0 + 8);

    return v93();
  }

  v39 = v38;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd_1);
  if (swift_dynamicCast())
  {
    v40 = *(v0 + 528);
  }

  else
  {
    v40 = 0;
  }

  if (!v40 || !*(v40 + 16))
  {
    goto LABEL_32;
  }

  v41 = specialized __RawDictionaryStorage.find<A>(_:)(1635017060, 0xE400000000000000);
  if ((v42 & 1) == 0)
  {
    goto LABEL_31;
  }

  v43 = v0 + 616;
  outlined init with copy of Any(*(v40 + 56) + 32 * v41, v0 + 384);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd_0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  if (!*(*v43 + 16))
  {
LABEL_31:

LABEL_32:

    goto LABEL_33;
  }

  outlined init with copy of Any(*v43 + 32, v0 + 224);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  v44 = *(v0 + 552);
  if (!*(v44 + 16))
  {
    goto LABEL_44;
  }

  v45 = specialized __RawDictionaryStorage.find<A>(_:)(0x7475626972747461, 0xEA00000000007365);
  if ((v46 & 1) == 0)
  {
    goto LABEL_44;
  }

  v47 = (v0 + 568);
  outlined init with copy of Any(*(v44 + 56) + 32 * v45, v0 + 352);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  v48 = *v47;
  if (!*(*v47 + 16))
  {
LABEL_44:

    goto LABEL_32;
  }

  v49 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v31);
  v51 = v50;

  if ((v51 & 1) == 0)
  {
    goto LABEL_32;
  }

  outlined init with copy of Any(*(v48 + 56) + 32 * v49, v0 + 320);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  v118 = v27;
  v52 = *(v0 + 656);
  v53 = *(v0 + 648);
  v110 = *(v0 + 640);
  static String.Encoding.utf8.getter();
  v54 = String.data(using:allowLossyConversion:)();
  v56 = v55;

  *(v0 + 1144) = v54;
  *(v0 + 1152) = v56;
  (*(v53 + 8))(v52, v110);
  if (v56 >> 60 == 15)
  {
LABEL_27:

LABEL_28:
    v27 = v118;
LABEL_33:
    v112(*(v0 + 752), v114, *(v0 + 688));

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();

    v63 = os_log_type_enabled(v61, v62);
    v64 = *(v0 + 752);
    v65 = *(v0 + 688);
    if (v63)
    {
      v66 = swift_slowAlloc();
      v119 = v27;
      v67 = swift_slowAlloc();
      v121 = v67;
      *v66 = 136446210;
      *(v0 + 544) = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGSgMd);
      v68 = String.init<A>(describing:)();
      v70 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v68, v69, &v121);

      *(v66 + 4) = v70;
      _os_log_impl(&_mh_execute_header, v61, v62, "Invalid response: %{public}s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v67);

      v119(v64, v65);
    }

    else
    {

      v27(v64, v65);
    }

    v71 = *(v0 + 784);
    v72 = *(v0 + 776);
    v73 = *(v0 + 768);
    lazy protocol witness table accessor for type LyricsLoader.LyricsError and conformance LyricsLoader.LyricsError();
    swift_allocError();
    *v74 = 1;
    swift_willThrow();
    (*(v72 + 8))(v71, v73);
    goto LABEL_37;
  }

  v27 = v118;
  if (!*(v48 + 16) || (v95 = specialized __RawDictionaryStorage.find<A>(_:)(0x6172615079616C70, 0xEA0000000000736DLL), (v96 & 1) == 0))
  {
    outlined consume of Data?(v54, v56);
    goto LABEL_32;
  }

  v97 = v56;
  v98 = (v0 + 584);
  outlined init with copy of Any(*(v48 + 56) + 32 * v95, v0 + 288);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_56;
  }

  v99 = *v98;
  if (!*(*v98 + 16) || (v100 = specialized __RawDictionaryStorage.find<A>(_:)(25705, 0xE200000000000000), (v101 & 1) == 0))
  {
    outlined consume of Data?(v54, v97);
    goto LABEL_27;
  }

  outlined init with copy of Any(*(v99 + 56) + 32 * v100, v0 + 256);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_56:
    outlined consume of Data?(v54, v97);
    goto LABEL_28;
  }

  v102 = *(v0 + 488);
  *(v0 + 1160) = *(v0 + 480);
  *(v0 + 1168) = v102;
  v103 = objc_allocWithZone(MSVLyricsTTMLParser);
  outlined copy of Data._Representation(v54, v97);
  v104 = Data._bridgeToObjectiveC()().super.isa;
  v105 = [v103 initWithTTMLData:v104];
  *(v0 + 1176) = v105;

  outlined consume of Data?(v54, v97);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 592;
  *(v0 + 24) = LyricsLoader.fetchStoreLyrics(for:);
  v106 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo17MSVLyricsSongInfoCs5Error_pGMd);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned MSVLyricsSongInfo?, @unowned NSError?) -> () with result type MSVLyricsSongInfo;
  *(v0 + 104) = &block_descriptor_21;
  *(v0 + 112) = v106;
  [v105 parseWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 1184) = v1;
  if (v1)
  {

    v2 = LyricsLoader.fetchStoreLyrics(for:);
  }

  else
  {
    v2 = LyricsLoader.fetchStoreLyrics(for:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v14 = v0[146];
  v1 = v0[145];
  v18 = v0[147];
  v19 = v0[144];
  v17 = v0[143];
  v23 = v0[134];
  v2 = v0[132];
  v22 = v0[131];
  v20 = v0[135];
  v21 = v0[129];
  v16 = v0[105];
  v3 = v0[103];
  v15 = v0[102];
  v13 = v0[101];
  v4 = v0[100];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[97];
  v8 = v0[96];
  v9 = v0[74];
  type metadata accessor for Lyrics(0);
  swift_allocObject();
  v10 = Lyrics.init(identifier:songInfo:)(v1, v14, v9);

  outlined consume of Data?(v17, v19);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v13, v5);
  (*(v3 + 8))(v16, v15);
  outlined destroy of TaskPriority?(v21, &_s10Foundation6LocaleVSgMd_0);
  (*(v2 + 8))(v23, v22);

  v11 = v0[1];

  return v11(v10);
}

{
  v1 = v0[89];
  v2 = v0[87];
  v3 = v0[86];
  v4 = Logger.lyrics.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Data request error: %{public}@", v7, 0xCu);
    outlined destroy of TaskPriority?(v8, &_sSo8NSObjectCSgMd_1);
  }

  v10 = v0[135];
  v11 = v0[132];
  v25 = v0[131];
  v26 = v0[134];
  v23 = v0[105];
  v24 = v0[129];
  v12 = v5;
  v13 = v0[103];
  v22 = v0[102];
  v14 = v0[101];
  v15 = v0[100];
  v16 = v0[99];
  v17 = v0[89];
  v18 = v0[87];
  v19 = v0[86];

  (*(v18 + 8))(v17, v19);
  swift_willThrow();

  (*(v15 + 8))(v14, v16);
  (*(v13 + 8))(v23, v22);
  outlined destroy of TaskPriority?(v24, &_s10Foundation6LocaleVSgMd_0);
  (*(v11 + 8))(v26, v25);

  v20 = v0[1];

  return v20();
}

{
  v1 = v0[140];
  v2 = v0[139];
  v3 = v0[88];
  v4 = v0[86];
  swift_willThrow();
  v1(v3, v2, v4);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Parsing error: %{public}@", v7, 0xCu);
    outlined destroy of TaskPriority?(v8, &_sSo8NSObjectCSgMd_1);
  }

  v10 = v0[147];
  v11 = v0[144];
  v12 = v0[143];
  v13 = v0[142];
  v14 = v0[97];
  v42 = v0[96];
  v44 = v0[98];
  v15 = v0[88];
  v16 = v0[86];

  v13(v15, v16);
  swift_willThrow();

  outlined consume of Data?(v12, v11);
  (*(v14 + 8))(v44, v42);
  v17 = v0[89];
  v18 = v0[87];
  v19 = v0[86];
  v20 = Logger.lyrics.unsafeMutableAddressor();
  (*(v18 + 16))(v17, v20, v19);
  swift_errorRetain();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138543362;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 4) = v25;
    *v24 = v25;
    _os_log_impl(&_mh_execute_header, v21, v22, "Data request error: %{public}@", v23, 0xCu);
    outlined destroy of TaskPriority?(v24, &_sSo8NSObjectCSgMd_1);
  }

  v26 = v0[135];
  v27 = v0[132];
  v41 = v0[131];
  v43 = v0[134];
  v39 = v0[105];
  v40 = v0[129];
  v28 = v21;
  v29 = v0[103];
  v38 = v0[102];
  v30 = v0[101];
  v31 = v0[100];
  v32 = v0[99];
  v33 = v0[89];
  v34 = v0[87];
  v35 = v0[86];

  (*(v34 + 8))(v33, v35);
  swift_willThrow();

  (*(v31 + 8))(v30, v32);
  (*(v29 + 8))(v39, v38);
  outlined destroy of TaskPriority?(v40, &_s10Foundation6LocaleVSgMd_0);
  (*(v27 + 8))(v43, v41);

  v36 = v0[1];

  return v36();
}