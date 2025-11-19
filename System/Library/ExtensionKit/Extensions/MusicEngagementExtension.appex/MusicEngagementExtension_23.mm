uint64_t static PlaylistCovers.recipeColors(catalogID:isMusicVideo:existingArtwork:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v5[18] = a1;
  v5[19] = a2;
  v5[20] = a3;
  v5[21] = a4;

  return _swift_task_switch(static PlaylistCovers.recipeColors(catalogID:isMusicVideo:existingArtwork:), 0, 0);
}

{
  v5 = *v4;
  v5[28] = a1;
  v5[29] = a2;
  v5[30] = a3;
  v5[31] = a4;

  return _swift_task_switch(static PlaylistCovers.recipeColors(catalogID:isMusicVideo:existingArtwork:), 0, 0);
}

uint64_t static PlaylistCovers.artworkWithMediaAPIColors(for:isMusicVideo:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 288) = a4;
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  *(v4 + 48) = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA4SongVGMd);
  *(v4 + 72) = v5;
  *(v4 + 80) = *(v5 - 8);
  *(v4 + 88) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit4SongVSgMd);
  *(v4 + 96) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23CatalogResourceResponseVyAA4SongVGMd);
  *(v4 + 104) = v6;
  *(v4 + 112) = *(v6 - 8);
  *(v4 + 120) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A22CatalogResourceRequestVyAA4SongVGMd);
  *(v4 + 128) = v7;
  *(v4 + 136) = *(v7 - 8);
  *(v4 + 144) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA0A5VideoVGMd);
  *(v4 + 152) = v8;
  *(v4 + 160) = *(v8 - 8);
  *(v4 + 168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A5VideoVSgMd);
  *(v4 + 176) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23CatalogResourceResponseVyAA0A5VideoVGMd);
  *(v4 + 184) = v9;
  *(v4 + 192) = *(v9 - 8);
  *(v4 + 200) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A22CatalogResourceRequestVyAA0A5VideoVGMd);
  *(v4 + 208) = v10;
  *(v4 + 216) = *(v10 - 8);
  *(v4 + 224) = swift_task_alloc();

  return _swift_task_switch(static PlaylistCovers.artworkWithMediaAPIColors(for:isMusicVideo:), 0, 0);
}

uint64_t static PlaylistCovers.artworkWithMediaAPIColors(for:isMusicVideo:)()
{
  v20 = v0;
  if (one-time initialization token for playlistCovers != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 232) = __swift_project_value_buffer(v1, static Logger.playlistCovers);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 288);
    v5 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v5 = 136315394;
    if (v4)
    {
      v6 = 0x697620636973756DLL;
    }

    else
    {
      v6 = 1735290739;
    }

    if (v4)
    {
      v7 = 0xEB000000006F6564;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    v8 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v6, v7, &v19);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2082;
    v9 = MusicItemID.description.getter();
    v11 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v9, v10, &v19);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Performing Media API request for %s with catalogID=%{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v13 = *(v0 + 56);
  v12 = *(v0 + 64);
  if (*(v0 + 288) == 1)
  {
    swift_getKeyPath();
    *(v0 + 32) = v13;
    *(v0 + 40) = v12;
    *(v0 + 240) = type metadata accessor for MusicVideo();
    lazy protocol witness table accessor for type Song and conformance Song(&lazy protocol witness table cache variable for type MusicVideo and conformance MusicVideo, &type metadata accessor for MusicVideo);

    MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
    v14 = swift_task_alloc();
    *(v0 + 248) = v14;
    *v14 = v0;
    v14[1] = static PlaylistCovers.artworkWithMediaAPIColors(for:isMusicVideo:);
    v15 = *(v0 + 200);
    v16 = *(v0 + 208);
  }

  else
  {
    swift_getKeyPath();
    *(v0 + 16) = v13;
    *(v0 + 24) = v12;
    *(v0 + 264) = type metadata accessor for Song();
    lazy protocol witness table accessor for type Song and conformance Song(&lazy protocol witness table cache variable for type Song and conformance Song, &type metadata accessor for Song);

    MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
    v17 = swift_task_alloc();
    *(v0 + 272) = v17;
    *v17 = v0;
    v17[1] = static PlaylistCovers.artworkWithMediaAPIColors(for:isMusicVideo:);
    v15 = *(v0 + 120);
    v16 = *(v0 + 128);
  }

  return MusicCatalogResourceRequest.response()(v15, v16);
}

{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = static PlaylistCovers.artworkWithMediaAPIColors(for:isMusicVideo:);
  }

  else
  {
    v2 = static PlaylistCovers.artworkWithMediaAPIColors(for:isMusicVideo:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[30];
  v2 = v0[22];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  MusicCatalogResourceResponse.items.getter();
  specialized Collection.first.getter(v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v8 = v0[27];
    v7 = v0[28];
    v9 = v0[26];
    v10 = v0[22];
    v11 = v0[6];
    (*(v0[24] + 8))(v0[25], v0[23]);
    (*(v8 + 8))(v7, v9);
    outlined destroy of TaskPriority?(v10, &_s8MusicKit0A5VideoVSgMd);
    v12 = type metadata accessor for Artwork();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  }

  else
  {
    v13 = v0[30];
    v15 = v0[27];
    v14 = v0[28];
    v17 = v0[25];
    v16 = v0[26];
    v18 = v0[23];
    v19 = v0[24];
    v20 = v0[22];
    MusicVideo.artwork.getter();
    (*(v19 + 8))(v17, v18);
    (*(v15 + 8))(v14, v16);
    (*(v6 + 8))(v20, v13);
  }

  v21 = v0[1];

  return v21();
}

{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = static PlaylistCovers.artworkWithMediaAPIColors(for:isMusicVideo:);
  }

  else
  {
    v2 = static PlaylistCovers.artworkWithMediaAPIColors(for:isMusicVideo:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[33];
  v2 = v0[12];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  MusicCatalogResourceResponse.items.getter();
  specialized Collection.first.getter(v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v8 = v0[17];
    v7 = v0[18];
    v9 = v0[16];
    v10 = v0[12];
    v11 = v0[6];
    (*(v0[14] + 8))(v0[15], v0[13]);
    (*(v8 + 8))(v7, v9);
    outlined destroy of TaskPriority?(v10, &_s8MusicKit4SongVSgMd);
    v12 = type metadata accessor for Artwork();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  }

  else
  {
    v13 = v0[33];
    v15 = v0[17];
    v14 = v0[18];
    v17 = v0[15];
    v16 = v0[16];
    v18 = v0[13];
    v19 = v0[14];
    v20 = v0[12];
    Song.artwork.getter();
    (*(v19 + 8))(v17, v18);
    (*(v15 + 8))(v14, v16);
    (*(v6 + 8))(v20, v13);
  }

  v21 = v0[1];

  return v21();
}

{
  v21 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[26];
  if (v3)
  {
    v19 = v0[28];
    v18 = v0[26];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v7 = 136446466;
    v10 = MusicItemID.description.getter();
    v12 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v10, v11, &v20);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to fetch music video from Media API with catalogID=%{public}s: %@", v7, 0x16u);
    outlined destroy of TaskPriority?(v8, &_sSo8NSObjectCSgMd_0);

    __swift_destroy_boxed_opaque_existential_0Tm(v9);

    (*(v5 + 8))(v19, v18);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  v14 = v0[6];
  v15 = type metadata accessor for Artwork();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);

  v16 = v0[1];

  return v16();
}

{
  v21 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[16];
  if (v3)
  {
    v19 = v0[18];
    v18 = v0[16];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v7 = 136446466;
    v10 = MusicItemID.description.getter();
    v12 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v10, v11, &v20);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to fetch song from Media API with catalogID=%{public}s: %@", v7, 0x16u);
    outlined destroy of TaskPriority?(v8, &_sSo8NSObjectCSgMd_0);

    __swift_destroy_boxed_opaque_existential_0Tm(v9);

    (*(v5 + 8))(v19, v18);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  v14 = v0[6];
  v15 = type metadata accessor for Artwork();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);

  v16 = v0[1];

  return v16();
}

uint64_t one-time initialization function for playlistCovers()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.playlistCovers);
  __swift_project_value_buffer(v0, static Logger.playlistCovers);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.playlistCovers.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for playlistCovers != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.playlistCovers);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreGraphics7CGFloatV3hue_AC10saturationAC10brightnessAC5alphatMd);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = (v2 / 2);
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25MRGroupSessionParticipant_pMd);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_SS5valuetMd);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = (v2 / 2);
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 32 * a3;
    v6 = result - a3;
LABEL_5:
    v7 = v4 + 32 * a3;
    v8 = *(v7 + 8);
    v9 = *(v7 + 16);
    v10 = v6;
    v11 = v5;
    while (1)
    {
      v12 = *(v11 - 24);
      v13 = *(v11 - 16) < v9;
      if (v8 != v12)
      {
        v13 = v8 < v12;
      }

      if (!v13)
      {
LABEL_4:
        ++a3;
        v5 += 32;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v14 = *v11;
      v15 = *(v11 + 24);
      v16 = *(v11 - 16);
      *v11 = *(v11 - 32);
      *(v11 + 16) = v16;
      *(v11 - 24) = v8;
      *(v11 - 16) = v9;
      *(v11 - 8) = v15;
      *(v11 - 32) = v14;
      v11 -= 32;
      if (__CFADD__(v10++, 1))
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
    v28 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
    v6 = &stru_1005F2000;
LABEL_6:
    v26 = v4;
    v27 = a3;
    v7 = *(v28 + 8 * a3);
    v25 = v5;
    while (1)
    {
      v8 = *v4;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v9 = [v7 v6[158].attr];
      if (v9 && (v10 = v9, v11 = [v9 displayName], v10, v11))
      {
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;
      }

      else
      {
        v12 = 0;
        v14 = 0xE000000000000000;
      }

      v15 = [v8 v6[158].attr];
      if (v15 && (v16 = v15, v17 = [v15 displayName], v16, v17))
      {
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        if (v12 != v18)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v20 = 0xE000000000000000;
        if (v12)
        {
          goto LABEL_17;
        }
      }

      if (v14 == v20)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v6 = &stru_1005F2000;
LABEL_5:
        a3 = v27 + 1;
        v4 = v26 + 8;
        v5 = v25 - 1;
        if (v27 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

LABEL_17:
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v6 = &stru_1005F2000;
      if ((v21 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v28)
      {
        __break(1u);
        return result;
      }

      v22 = *v4;
      v7 = *(v4 + 8);
      *v4 = v7;
      *(v4 + 8) = v22;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 32 * v4);
    v10 = *v9;
    v11 = v9[1];
    v12 = v8;
    v13 = v7;
    while (1)
    {
      result = *v13;
      v14 = *v13 == v10 && *(v13 + 8) == v11;
      if (v14 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
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

      v10 = *(v13 + 32);
      v11 = *(v13 + 40);
      v15 = *(v13 + 48);
      v16 = *(v13 + 56);
      v17 = *(v13 + 16);
      *(v13 + 32) = *v13;
      *(v13 + 48) = v17;
      *v13 = v10;
      *(v13 + 8) = v11;
      *(v13 + 16) = v15;
      *(v13 + 24) = v16;
      v13 -= 32;
      if (__CFADD__(v12++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v4[2] < v6[2])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v5 -= 4;
    do
    {
      v18 = v5 + 4;
      if (*(v6 - 2) < *(v14 - 2))
      {
        v21 = v6 - 4;
        if (v18 != v6)
        {
          v22 = *(v6 - 1);
          *v5 = *v21;
          *(v5 + 1) = v22;
        }

        if (v14 <= v4 || (v6 -= 4, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v19 = v14 - 4;
      if (v18 != v14)
      {
        v20 = *(v14 - 1);
        *v5 = *v19;
        *(v5 + 1) = v20;
      }

      v5 -= 4;
      v14 -= 4;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v23 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v23 & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v6, v4, 32 * (v23 >> 5));
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v18 = v6[1];
      v19 = v4[1];
      v20 = v4[2] < v6[2];
      if (v18 != v19)
      {
        v20 = v18 < v19;
      }

      if (v20)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_26:
    v5 -= 4;
    do
    {
      v21 = v5 + 4;
      v22 = *(v14 - 3);
      v23 = *(v6 - 3);
      v24 = *(v6 - 2) < *(v14 - 2);
      if (v22 != v23)
      {
        v24 = v22 < v23;
      }

      if (v24)
      {
        v27 = v6 - 4;
        if (v21 != v6)
        {
          v28 = *(v6 - 1);
          *v5 = *v27;
          *(v5 + 1) = v28;
        }

        if (v14 <= v4 || (v6 -= 4, v27 <= v7))
        {
          v6 = v27;
          goto LABEL_39;
        }

        goto LABEL_26;
      }

      v25 = v14 - 4;
      if (v21 != v14)
      {
        v26 = *(v14 - 1);
        *v5 = *v25;
        *(v5 + 1) = v26;
      }

      v5 -= 4;
      v14 -= 4;
    }

    while (v25 > v4);
    v14 = v25;
  }

LABEL_39:
  v29 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v29 & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v6, v4, 32 * (v29 >> 5));
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t specialized static PlaylistCovers.hexRepresentation(for:)()
{
  v0 = UIColor.rgba.getter();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004F2EB0;
  v6 = lround(v0 * 255.0);
  *(v5 + 56) = &type metadata for Int;
  *(v5 + 64) = &protocol witness table for Int;
  *(v5 + 32) = v6;
  v7 = lround(v2 * 255.0);
  *(v5 + 96) = &type metadata for Int;
  *(v5 + 104) = &protocol witness table for Int;
  *(v5 + 72) = v7;
  v8 = lround(v4 * 255.0);
  *(v5 + 136) = &type metadata for Int;
  *(v5 + 144) = &protocol witness table for Int;
  *(v5 + 112) = v8;

  return String.init(format:_:)(0x323025586C323025, 0xEF586C323025586CLL, v5);
}

uint64_t specialized static PlaylistCovers.Source.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA5TrackOGMd);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = type metadata accessor for PlaylistCovers.Source();
  v9 = __chkstk_darwin(v8);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore14PlaylistCoversO6SourceO_AEtMd);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of PlaylistCovers.Source(a1, &v23 - v16);
  outlined init with copy of PlaylistCovers.Source(a2, &v17[v18]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of PlaylistCovers.Source(v17, v11);
    v19 = *v11;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ8MusicKit8PlaylistV5EntryV_Tt1g5(v19, *&v17[v18]);

LABEL_9:
      outlined destroy of PlaylistCovers.Source(v17);
      return v20 & 1;
    }
  }

  else
  {
    outlined init with copy of PlaylistCovers.Source(v17, v13);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v5 + 32))(v7, &v17[v18], v4);
      type metadata accessor for Track();
      lazy protocol witness table accessor for type Song and conformance Song(&lazy protocol witness table cache variable for type Track and conformance Track, &type metadata accessor for Track);
      v20 = static MusicItemCollection<>.== infix(_:_:)();
      v21 = *(v5 + 8);
      v21(v7, v4);
      v21(v13, v4);
      goto LABEL_9;
    }

    (*(v5 + 8))(v13, v4);
  }

  outlined destroy of TaskPriority?(v17, &_s9MusicCore14PlaylistCoversO6SourceO_AEtMd);
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static PlaylistCovers.color(from:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for NSScanner.NumberRepresentation();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(NSScanner);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 initWithString:v9];

  (*(v5 + 104))(v7, enum case for NSScanner.NumberRepresentation.hexadecimal(_:), v4);
  v11 = NSScanner.scanUInt64(representation:)();
  v13 = v12;
  result = (*(v5 + 8))(v7, v4);
  if (v13)
  {
    if (one-time initialization token for playlistCovers != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.playlistCovers);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22 = v19;
      *v18 = 136446210;
      *(v18 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(a1, a2, &v22);
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to decode hexadecimal string representation=%{public}s as UInt64.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
    }

    return 0;
  }

  else if (v11 < 0)
  {
    __break(1u);
  }

  else
  {
    v20 = [objc_allocWithZone(UIColor) initWithRed:BYTE2(v11) / 255.0 green:BYTE1(v11) / 255.0 blue:v11 / 255.0 alpha:1.0];

    return v20;
  }

  return result;
}

uint64_t type metadata accessor for PlaylistCovers.Source()
{
  result = type metadata singleton initialization cache for PlaylistCovers.Source;
  if (!type metadata singleton initialization cache for PlaylistCovers.Source)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of PlaylistCovers.Source(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistCovers.Source();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type MusicItemCollection<Track> and conformance MusicItemCollection<A>()
{
  result = lazy protocol witness table cache variable for type MusicItemCollection<Track> and conformance MusicItemCollection<A>;
  if (!lazy protocol witness table cache variable for type MusicItemCollection<Track> and conformance MusicItemCollection<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8MusicKit0A14ItemCollectionVyAA5TrackOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MusicItemCollection<Track> and conformance MusicItemCollection<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlaylistCovers.RecipeColors and conformance PlaylistCovers.RecipeColors()
{
  result = lazy protocol witness table cache variable for type PlaylistCovers.RecipeColors and conformance PlaylistCovers.RecipeColors;
  if (!lazy protocol witness table cache variable for type PlaylistCovers.RecipeColors and conformance PlaylistCovers.RecipeColors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaylistCovers.RecipeColors and conformance PlaylistCovers.RecipeColors);
  }

  return result;
}

void type metadata completion function for PlaylistCovers.Source()
{
  type metadata accessor for MusicItemCollection<Track>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [Playlist.Entry]();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for MusicItemCollection<Track>()
{
  if (!lazy cache variable for type metadata for MusicItemCollection<Track>)
  {
    type metadata accessor for Track();
    v0 = type metadata accessor for MusicItemCollection();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for MusicItemCollection<Track>);
    }
  }
}

void type metadata accessor for [Playlist.Entry]()
{
  if (!lazy cache variable for type metadata for [Playlist.Entry])
  {
    type metadata accessor for Playlist.Entry();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [Playlist.Entry]);
    }
  }
}

uint64_t outlined init with copy of Artwork?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized static PlaylistCovers.reorderBySaturationAndBrightness(colors:)(id *a1)
{
  v42 = a1;

  specialized MutableCollection<>.sort(by:)(&v42);
  v1 = v42;
  v2 = *(v42 + 16);
  if (v2)
  {
    v3 = (v42 + 48);
    v4 = _swiftEmptyArrayStorage;
    do
    {
      if (*v3 < 0.5)
      {
        v40 = *v3;
        v38 = *(v3 - 1);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v4;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1);
          v4 = v42;
        }

        v6 = v4[2];
        v5 = v4[3];
        v7 = v40;
        if (v6 >= v5 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
          v7 = v40;
          v4 = v42;
        }

        v4[2] = (v6 + 1);
        v8 = &v4[4 * v6];
        *(v8 + 2) = v38;
        *(v8 + 3) = v7;
      }

      v3 += 4;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v42 = v4;

  specialized MutableCollection<>.sort(by:)(&v42);

  v10 = v42;
  v11 = *(v1 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = *(v42 + 16);
    v14 = _swiftEmptyArrayStorage;
    while (v12 < *(v1 + 16))
    {
      v20 = (v1 + 32 + 32 * v12);
      v21 = *v20;
      v22 = v20[1];
      if (v13)
      {
        v23 = v10[2];
        v24 = (v10 + 4);
        v25 = v13;
        while (v23)
        {
          if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v21, *v24), vceqq_f64(v22, v24[1])))))
          {
            goto LABEL_16;
          }

          --v23;
          v24 += 2;
          if (!--v25)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
        break;
      }

LABEL_23:
      v39 = v22;
      v41 = v21;
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v42 = v14;
      if ((v26 & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14[2] + 1, 1);
        v14 = v42;
      }

      v16 = v14[2];
      v15 = v14[3];
      v18 = v39;
      v17 = v41;
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v18 = v39;
        v17 = v41;
        v14 = v42;
      }

      v14[2] = (v16 + 1);
      v19 = &v14[4 * v16];
      *(v19 + 2) = v17;
      *(v19 + 3) = v18;
LABEL_16:
      if (++v12 == v11)
      {

        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

  v14 = _swiftEmptyArrayStorage;
LABEL_27:
  v42 = v14;
  specialized Array.append<A>(contentsOf:)(v10);
  v27 = v42;
  v28 = *(v42 + 16);
  if (!v28)
  {

    v30 = _swiftEmptyArrayStorage;
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) == 0)
    {
      goto LABEL_31;
    }

LABEL_38:
    v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_36;
  }

  v42 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v29 = (v27 + 56);
  do
  {
    [objc_allocWithZone(UIColor) initWithHue:*(v29 - 3) saturation:*(v29 - 2) brightness:*(v29 - 1) alpha:*v29];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v29 += 4;
    --v28;
  }

  while (v28);

  v30 = v42;
  if ((v42 & 0xC000000000000001) != 0)
  {
    goto LABEL_38;
  }

LABEL_31:
  v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v31)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v31 == 1)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v31 < 3)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v31 != 3)
  {
    v32 = *(v30 + 40);
    v33 = *(v30 + 48);
    v34 = *(v30 + 56);
    v35 = *(v30 + 32);
    v32;
    v33;
    v36 = v34;
LABEL_36:

    return v35;
  }

LABEL_44:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t specialized static PlaylistCovers.recipeColors(backgroundColor:primaryColor:secondaryColor:tertiaryColor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(specialized static PlaylistCovers.recipeColors(backgroundColor:primaryColor:secondaryColor:tertiaryColor:), 0, 0);
}

uint64_t specialized static PlaylistCovers.recipeColors(backgroundColor:primaryColor:secondaryColor:tertiaryColor:)()
{
  v122 = v0;
  v1 = v0;
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = [objc_allocWithZone(UIColor) initWithCGColor:v0[2]];
  v115 = UIColor.hsba.getter();
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [objc_allocWithZone(UIColor) initWithCGColor:v4];
  v117 = UIColor.hsba.getter();
  v14 = v13;
  v16 = v15;

  v17 = [objc_allocWithZone(UIColor) initWithCGColor:v3];
  v116 = UIColor.hsba.getter();
  v19 = v18;
  v21 = v20;

  v22 = [objc_allocWithZone(UIColor) initWithCGColor:v2];
  v112 = UIColor.hsba.getter();
  v113 = v23;
  v25 = v24;

  v118 = v7;
  if (v7 > 0.05 && v9 > 0.2)
  {
    if (v16 < 0.3)
    {
      if (v21 >= 0.3)
      {
        goto LABEL_17;
      }

      goto LABEL_38;
    }

    if (v16 <= 0.3)
    {
LABEL_53:
      v58 = v14 + 0.2;
      v59 = v16 + 0.1;
      v60 = 1.0;
      if (v58 > 1.0)
      {
LABEL_54:
        if (v59 <= v60)
        {
          v61 = v19 + 0.1;
          v58 = 1.0;
          if (v61 <= 1.0)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        }

LABEL_59:
        v61 = v19 + 0.1;
        v59 = 1.0;
        v58 = v60;
        if (v61 <= 1.0)
        {
LABEL_64:
          v60 = v21 + 0.2;
          if (v21 + 0.2 > 1.0)
          {
            v60 = 1.0;
          }

          goto LABEL_66;
        }

LABEL_63:
        v61 = 1.0;
        goto LABEL_64;
      }

      if (v59 > 1.0)
      {
        v60 = v58;
        goto LABEL_59;
      }

      v61 = v19 + 0.1;
LABEL_62:
      if (v61 <= v60)
      {
        v66 = v21 + 0.2;
        if (v66 <= v60)
        {
          v65 = v25 + 0.2;
          v62 = 1.0;
          v63 = v9;
          if (v65 <= 1.0)
          {
            v64 = v113 + 0.6;
            if (v113 + 0.6 <= 1.0)
            {
              goto LABEL_70;
            }

            goto LABEL_69;
          }

          v60 = v66;
LABEL_68:
          v64 = v113 + 0.6;
          v65 = v62;
          v66 = v60;
          if (v113 + 0.6 <= 1.0)
          {
LABEL_70:
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatV3hue_AE10saturationAE10brightnessAE5alphatGMd);
            v67 = swift_allocObject();
            *(v67 + 16) = xmmword_1004F2EE0;
            *(v67 + 32) = v115;
            *(v67 + 40) = v118;
            *(v67 + 48) = v63;
            *(v67 + 56) = v11;
            *(v67 + 64) = v117;
            *(v67 + 72) = v58;
            *(v67 + 80) = v59;
            *(v67 + 88) = 0x3FF0000000000000;
            *(v67 + 96) = v116;
            *(v67 + 104) = v61;
            *(v67 + 112) = v66;
            *(v67 + 120) = 0x3FF0000000000000;
            *(v67 + 128) = v112;
            *(v67 + 136) = v65;
            *(v67 + 144) = v64;
            *(v67 + 152) = 0x3FF0000000000000;
            v68 = specialized static PlaylistCovers.reorderBySaturationAndBrightness(colors:)(v67);
            v70 = v69;
            v72 = v71;
            v74 = v73;

            if (one-time initialization token for playlistCovers != -1)
            {
              swift_once();
            }

            v75 = type metadata accessor for Logger();
            __swift_project_value_buffer(v75, static Logger.playlistCovers);
            v38 = v68;
            v39 = v70;
            v40 = v72;
            v41 = v74;
            v42 = Logger.logObject.getter();
            v76 = static os_log_type_t.default.getter();

            if (!os_log_type_enabled(v42, v76))
            {
              goto LABEL_97;
            }

            v44 = swift_slowAlloc();
            v119 = v76;
            v45 = swift_slowAlloc();
            v121 = v45;
            *v44 = 136446210;
            v77 = PlaylistCovers.RecipeColors.description.getter(v38, v39, v40, v41);
            v79 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v77, v78, &v121);

            *(v44 + 4) = v79;
            v49 = "Using recipe 3 colors=%{public}s";
            goto LABEL_74;
          }

LABEL_69:
          v64 = 1.0;
          goto LABEL_70;
        }

LABEL_66:
        v62 = v25 + 0.2;
        v63 = v9;
        if (v62 > 1.0)
        {
          v62 = 1.0;
        }

        goto LABEL_68;
      }

      goto LABEL_63;
    }

LABEL_21:
    if (v21 > 0.3)
    {
      goto LABEL_22;
    }

    goto LABEL_53;
  }

  if (v14 > 0.05 && v16 > 0.2)
  {
    if (v16 >= 0.3)
    {
LABEL_17:
      if (v16 <= 0.3 || v21 <= 0.3)
      {
        goto LABEL_53;
      }

LABEL_22:
      v26 = v19 + 0.4;
      if (v14 + 0.1 <= 1.0)
      {
        v27 = v14 + 0.1;
      }

      else
      {
        v27 = 1.0;
      }

      if (v26 > 1.0)
      {
        v26 = 1.0;
      }

      if (v25 + -0.2 < 0.0)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = v25 + -0.2;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatV3hue_AE10saturationAE10brightnessAE5alphatGMd);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1004F2EE0;
      *(v29 + 32) = v115;
      *(v29 + 40) = v7;
      *(v29 + 48) = v9;
      *(v29 + 56) = v11;
      *(v29 + 64) = v117;
      *(v29 + 72) = v27;
      *(v29 + 80) = v16;
      *(v29 + 88) = 0x3FF0000000000000;
      *(v29 + 96) = v116;
      *(v29 + 104) = v26;
      *(v29 + 112) = v21;
      *(v29 + 120) = 0x3FF0000000000000;
      *(v29 + 128) = v112;
      *(v29 + 136) = v28;
      *(v29 + 144) = v113;
      *(v29 + 152) = 0x3FF0000000000000;
      v30 = specialized static PlaylistCovers.reorderBySaturationAndBrightness(colors:)(v29);
      v32 = v31;
      v34 = v33;
      v36 = v35;

      if (one-time initialization token for playlistCovers != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      __swift_project_value_buffer(v37, static Logger.playlistCovers);
      v38 = v30;
      v39 = v32;
      v40 = v34;
      v41 = v36;
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v42, v43))
      {
        goto LABEL_97;
      }

      v44 = swift_slowAlloc();
      v119 = v43;
      v45 = swift_slowAlloc();
      v121 = v45;
      *v44 = 136446210;
      v46 = PlaylistCovers.RecipeColors.description.getter(v38, v39, v40, v41);
      v48 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v46, v47, &v121);

      *(v44 + 4) = v48;
      v49 = "Using recipe 2 colors=%{public}s";
LABEL_74:
      _os_log_impl(&_mh_execute_header, v42, v119, v49, v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v45);
LABEL_96:

LABEL_97:

      goto LABEL_98;
    }

    if (v21 < 0.3)
    {
LABEL_38:
      v114 = v9;
      v50 = v14 + 0.3;
      v51 = v16 + 0.2;
      v52 = 1.0;
      if (v14 + 0.3 <= 1.0)
      {
        v53 = v116;
        if (v51 <= 1.0)
        {
          v54 = v118 + 0.5;
          v55 = v114 + 0.2;
          v56 = 1.0;
          v111 = v11;
          if (v118 + 0.5 <= 1.0)
          {
            if (v55 <= 1.0)
            {
              v57 = v115;
              v91 = -0.5;
              if (v116 >= 0.5)
              {
                goto LABEL_89;
              }

              goto LABEL_88;
            }

            v57 = v115;
            goto LABEL_87;
          }

          v57 = v115;
          v54 = 1.0;
          if (v55 > 1.0)
          {
            goto LABEL_87;
          }

LABEL_86:
          v56 = v55;
          goto LABEL_87;
        }
      }

      else
      {
        v50 = 1.0;
        v53 = v116;
        if (v51 <= 1.0)
        {
          v52 = v16 + 0.2;
        }
      }

      v54 = v118 + 0.5;
      v55 = v114 + 0.2;
      v56 = 1.0;
      v111 = v11;
      if (v118 + 0.5 <= 1.0)
      {
        if (v55 <= 1.0)
        {
          v57 = v115;
          v91 = -0.5;
          v51 = v52;
          if (v53 >= 0.5)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        }

        v57 = v115;
        v51 = v52;
        goto LABEL_87;
      }

      v57 = v115;
      v51 = v52;
      v54 = 1.0;
      if (v55 > 1.0)
      {
LABEL_87:
        v91 = -0.5;
        v55 = v56;
        if (v53 >= 0.5)
        {
LABEL_89:
          v92 = v53 + v91;
          if (v21 + 0.8 <= 1.0)
          {
            v93 = v21 + 0.8;
          }

          else
          {
            v93 = 1.0;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatV3hue_AE10saturationAE10brightnessAE5alphatGMd);
          v94 = swift_allocObject();
          *(v94 + 16) = xmmword_1004F2EE0;
          *(v94 + 32) = v57;
          *(v94 + 40) = v118;
          *(v94 + 48) = v114;
          *(v94 + 56) = v111;
          *(v94 + 64) = v117;
          *(v94 + 72) = v50;
          *(v94 + 80) = v51;
          *(v94 + 88) = 0x3FF0000000000000;
          *(v94 + 96) = v57;
          *(v94 + 104) = v54;
          *(v94 + 112) = v55;
          *(v94 + 120) = 0x3FF0000000000000;
          *(v94 + 128) = v92;
          *(v94 + 136) = v19;
          *(v94 + 144) = v93;
          *(v94 + 152) = 0x3FF0000000000000;
          v95 = specialized static PlaylistCovers.reorderBySaturationAndBrightness(colors:)(v94);
          v97 = v96;
          v99 = v98;
          v101 = v100;

          if (one-time initialization token for playlistCovers != -1)
          {
            swift_once();
          }

          v102 = type metadata accessor for Logger();
          __swift_project_value_buffer(v102, static Logger.playlistCovers);
          v38 = v95;
          v39 = v97;
          v40 = v99;
          v41 = v101;
          v42 = Logger.logObject.getter();
          v103 = static os_log_type_t.default.getter();

          if (!os_log_type_enabled(v42, v103))
          {
            goto LABEL_97;
          }

          v104 = swift_slowAlloc();
          v120 = v1;
          v121 = swift_slowAlloc();
          v105 = v121;
          *v104 = 136446210;
          v106 = PlaylistCovers.RecipeColors.description.getter(v38, v39, v40, v41);
          v108 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v106, v107, &v121);

          *(v104 + 4) = v108;
          _os_log_impl(&_mh_execute_header, v42, v103, "Using recipe 1 colors=%{public}s", v104, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v105);
          v1 = v120;
          goto LABEL_96;
        }

LABEL_88:
        v91 = 0.5;
        goto LABEL_89;
      }

      goto LABEL_86;
    }

    if (v16 > 0.3)
    {
LABEL_48:
      if (v21 > 0.3)
      {
        goto LABEL_22;
      }
    }

LABEL_49:
    v58 = v14 + 0.2;
    v59 = v16 + 0.1;
    v60 = 1.0;
    if (v58 > 1.0)
    {
      goto LABEL_54;
    }

    v61 = v19 + 0.1;
    if (v59 > 1.0)
    {
      v59 = 1.0;
      if (v61 <= 1.0)
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    goto LABEL_62;
  }

  if (v19 > 0.05 && v21 > 0.2)
  {
    if (v16 >= 0.3)
    {
      if (v16 > 0.3)
      {
        goto LABEL_21;
      }

      goto LABEL_49;
    }

LABEL_37:
    if (v21 < 0.3)
    {
      goto LABEL_38;
    }

LABEL_47:
    if (v16 <= 0.3)
    {
      goto LABEL_53;
    }

    goto LABEL_48;
  }

  if (v25 > 0.05 && v113 > 0.2)
  {
    if (v16 >= 0.3)
    {
      goto LABEL_47;
    }

    goto LABEL_37;
  }

  if (one-time initialization token for playlistCovers != -1)
  {
    swift_once();
  }

  v80 = type metadata accessor for Logger();
  __swift_project_value_buffer(v80, static Logger.playlistCovers);
  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v121 = v84;
    *v83 = 136446210;
    if (one-time initialization token for blackAndWhiteColors != -1)
    {
      swift_once();
    }

    v85 = PlaylistCovers.RecipeColors.description.getter(static PlaylistCovers.Specs.blackAndWhiteColors, *algn_10063D708, qword_10063D710, qword_10063D718);
    v87 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v85, v86, &v121);

    *(v83 + 4) = v87;
    _os_log_impl(&_mh_execute_header, v81, v82, "Using black and white colors=%{public}s", v83, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v84);
  }

  if (one-time initialization token for blackAndWhiteColors != -1)
  {
    swift_once();
  }

  v88 = *algn_10063D708;
  v90 = qword_10063D710;
  v89 = qword_10063D718;
  v38 = static PlaylistCovers.Specs.blackAndWhiteColors;
  v39 = v88;
  v40 = v90;
  v41 = v89;
LABEL_98:
  v109 = v1[1];

  return v109(v38, v39, v40, v41);
}

uint64_t outlined destroy of PlaylistCovers.Source(uint64_t a1)
{
  v2 = type metadata accessor for PlaylistCovers.Source();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type Song and conformance Song(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Void __swiftcall PresentationSource.present(_:)(MusicCore::Alert *a1)
{
  v2 = v1;
  v4 = specialized static UIAlertController.alertController(with:overrideStyle:)(a1, 0, 1);
  style = a1->style;
  v6 = *(v2 + 80);
  v18 = v4;
  if (v6)
  {
    v7 = one-time initialization token for logger;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static PresentationSource.logger);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Deferring presentation…", v11, 2u);
    }

    v12 = objc_allocWithZone(MSVBlockGuard);
    aBlock[4] = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
    aBlock[3] = &block_descriptor_36;
    v13 = _Block_copy(aBlock);
    v14 = [v12 initWithTimeout:v13 interruptionHandler:10.0];
    _Block_release(v13);

    outlined init with copy of PresentationSource(v2, aBlock);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    outlined init with take of PresentationSource(aBlock, v15 + 24);
    *(v15 + 120) = v18;
    *(v15 + 128) = style;
    *(v15 + 129) = 1;
    *(v15 + 136) = 0;
    *(v15 + 144) = 0;
    v16 = v14;
    v17 = v18;
    v6(v2, v17, _s9MusicCore18PresentationSourceV7present_019wantsAutomaticModalC5Style8animated10completionySo16UIViewControllerC_S2byycSgtFyycfU0_TA_0, v15);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v6);
  }

  else
  {
    PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v4, style, 1, 0, 0);
  }
}

uint64_t PresentationSource.present(_:internalOnly:)(uint64_t a1, char a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    UIViewController.noticePresenting.getter(v8);

    v6 = v9;
    if (v9)
    {
      v7 = v10;
      __swift_project_boxed_opaque_existential_0Tm(v8, v9);
      (*(v7 + 8))(a1, a2 & 1, v6, v7);
      return __swift_destroy_boxed_opaque_existential_0Tm(v8);
    }

    else
    {
      return outlined destroy of TaskPriority?(v8, &_s9MusicCore16NoticePresenting_pSgMd);
    }
  }

  return result;
}

void PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(void *a1, char a2, char a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v11 = *(v5 + 80);
  if (v11)
  {
    v12 = one-time initialization token for logger;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static PresentationSource.logger);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Deferring presentation…", v16, 2u);
    }

    v17 = objc_allocWithZone(MSVBlockGuard);
    aBlock[4] = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
    aBlock[3] = &block_descriptor_3_2;
    v18 = _Block_copy(aBlock);
    v19 = [v17 initWithTimeout:v18 interruptionHandler:10.0];
    _Block_release(v18);

    outlined init with copy of PresentationSource(v6, aBlock);
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    outlined init with take of PresentationSource(aBlock, v20 + 24);
    *(v20 + 120) = a1;
    *(v20 + 128) = a2 & 1;
    *(v20 + 129) = a3 & 1;
    *(v20 + 136) = a4;
    *(v20 + 144) = a5;
    v21 = v19;
    v22 = a1;
    outlined copy of (@escaping @callee_guaranteed () -> ())?(a4);
    v11(v6, v22, closure #2 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)partial apply, v20);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v11);
  }

  else
  {
    v23 = (a2 & 1);
    v24 = (a3 & 1);

    PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(a1, v23, v24, a4, a5);
  }
}

__n128 PresentationSource.Position.init(source:permittedArrowDirections:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  result = *a1;
  v6 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v6;
  *(a3 + 32) = v3;
  *(a3 + 40) = v4;
  *(a3 + 48) = a2;
  return result;
}

Swift::Void __swiftcall PresentationSource.Position.configure(_:)(UIViewController a1)
{
  v2 = [(objc_class *)a1.super.super.isa popoverPresentationController];
  if (v2)
  {
    v3 = *v1;
    v8 = v2;
    if (*(v1 + 40))
    {
      if (*(v1 + 40) == 1)
      {
        [v2 setBarButtonItem:v3];
      }

      else
      {
        [v2 setSourceItem:v3];
      }
    }

    else
    {
      v5 = *(v1 + 24);
      v4 = *(v1 + 32);
      v7 = *(v1 + 8);
      v6 = *(v1 + 16);
      [v2 setSourceView:v3];
      [v8 setSourceRect:{v7, v6, v5, v4}];
      outlined destroy of PresentationSource.Position(v1);
    }

    [v8 setPermittedArrowDirections:*(v1 + 48)];
  }
}

__n128 PresentationSource.init(viewController:position:configurationHandler:presentationDeferral:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  v14 = *(a2 + 16);
  *(a7 + 8) = *a2;
  *(a7 + 24) = v14;
  result = *(a2 + 32);
  *(a7 + 40) = result;
  *(a7 + 56) = *(a2 + 48);
  *(a7 + 64) = a3;
  *(a7 + 72) = a4;
  *(a7 + 80) = a5;
  *(a7 + 88) = a6;
  return result;
}

void PresentationSource.viewController.setter(void *a1)
{
  swift_unknownObjectWeakAssign();
}

void (*PresentationSource.viewController.modify(uint64_t *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return PresentationSource.viewController.modify;
}

void PresentationSource.viewController.modify(id *a1)
{
  v1 = *a1;
  swift_unknownObjectWeakAssign();
}

void PresentationSource.windowScene.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong view];

    if (v2)
    {
      v3 = [v2 window];

      [v3 windowScene];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t PresentationSource.configurationHandler.getter()
{
  v1 = *(v0 + 64);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v1);
  return v1;
}

uint64_t PresentationSource.configurationHandler.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v2 + 64));
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t PresentationSource.presentationDeferral.getter()
{
  v1 = *(v0 + 80);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v1);
  return v1;
}

uint64_t PresentationSource.presentationDeferral.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v2 + 80));
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

double static PresentationSource.topmost(in:)@<D0>(uint64_t a1@<X8>)
{
  v2 = UIWindowScene.rootViewController.getter();
  if (v2)
  {
    v3 = v2;
    v4 = [v3 presentedViewController];
    v5 = v3;
    if (v4)
    {
      v6 = v3;
      while (1)
      {
        v5 = v4;
        if (([v4 canPresentViewControllers] & 1) == 0)
        {
          break;
        }

        v4 = [v5 presentedViewController];
        v6 = v5;
        if (!v4)
        {
          goto LABEL_9;
        }
      }

      v5 = v6;
    }

LABEL_9:

    swift_unknownObjectWeakInit();
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    swift_unknownObjectWeakAssign();

    *(a1 + 40) = 0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *&result = 255;
    *(a1 + 48) = xmmword_1004F2ED0;
  }

  else
  {
    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 64) = 1;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  return result;
}

void *static PresentationSource.topmostPresentedViewController(in:options:)(uint64_t a1, char a2)
{
  v3 = UIWindowScene.rootViewController.getter();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [v4 presentedViewController];
  if (v5)
  {
    v6 = v4;
    do
    {
      v7 = v5;
      if ((a2 & 1) != 0 && ![v5 canPresentViewControllers])
      {

        v4 = v7;
        goto LABEL_11;
      }

      v5 = [v7 presentedViewController];
      v6 = v7;
    }

    while (v5);
    v6 = v7;
  }

  else
  {
    v6 = v4;
  }

LABEL_11:

  return v6;
}

__n128 PresentationSource.init(viewController:position:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_unknownObjectWeakInit();
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  swift_unknownObjectWeakAssign();

  v6 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v6;
  result = *(a2 + 32);
  *(a3 + 40) = result;
  *(a3 + 56) = *(a2 + 48);
  return result;
}

id static PresentationSource.topmostPresentedViewController(from:options:)(void *a1, char a2)
{
  v3 = a1;
  v4 = [v3 presentedViewController];
  if (v4)
  {
    while (1)
    {
      v5 = v4;
      if ((a2 & 1) != 0 && ([v4 canPresentViewControllers] & 1) == 0)
      {
        break;
      }

      v4 = [v5 presentedViewController];
      v3 = v5;
      if (!v4)
      {
        return v5;
      }
    }
  }

  return v3;
}

double PresentationSource.init(windowScene:position:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = UIWindowScene.rootViewController.getter();

  if (v6)
  {
    swift_unknownObjectWeakInit();
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    swift_unknownObjectWeakAssign();

    v7 = *(a2 + 16);
    *(a3 + 8) = *a2;
    *(a3 + 24) = v7;
    v8 = *(a2 + 32);
    *(a3 + 40) = v8;
    *(a3 + 56) = *(a2 + 48);
  }

  else
  {
    outlined destroy of TaskPriority?(a2, &_s9MusicCore18PresentationSourceV8PositionVSgMd);
    *&v8 = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 1;
    *(a3 + 72) = 0;
    *(a3 + 80) = 0;
    *(a3 + 88) = 0;
  }

  return *&v8;
}

void PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(void *a1, void *a2, id a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v213 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v15 = static OS_dispatch_queue.main.getter();
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v16 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_103;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v230 = v6;
    LODWORD(v228) = a2;
    v229 = a3;
    a3 = Strong;
    v18 = [a3 presentedViewController];
    a2 = a3;
    if (v18)
    {
      v19 = a3;
      do
      {
        a2 = v18;

        v18 = [a2 presentedViewController];
        v19 = a2;
      }

      while (v18);
    }

    v20 = [a2 transitionCoordinator];
    if (v20)
    {
      v6 = v20;
      if (one-time initialization token for logger == -1)
      {
LABEL_8:
        v21 = type metadata accessor for Logger();
        __swift_project_value_buffer(v21, static PresentationSource.logger);
        v22 = a1;
        swift_unknownObjectRetain();
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.default.getter();
        swift_unknownObjectRelease();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v225 = v23;
          v26 = v25;
          v226 = swift_slowAlloc();
          *&v238 = v226;
          *v26 = 136446466;
          v27 = v22;
          v227 = v22;
          v28 = v27;
          v29 = [v27 description];
          v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          LODWORD(v224) = v24;
          v31 = a3;
          v32 = a5;
          v33 = v30;
          v34 = a4;
          v36 = v35;

          v37 = v33;
          a5 = v32;
          a3 = v31;
          v38 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v37, v36, &v238);
          a4 = v34;

          *(v26 + 4) = v38;
          *(v26 + 12) = 2082;
          *&aBlock = v6;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo37UIViewControllerTransitionCoordinator_pMd);
          v39 = String.init<A>(describing:)();
          v41 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v39, v40, &v238);
          v22 = v227;

          *(v26 + 14) = v41;
          v42 = v225;
          _os_log_impl(&_mh_execute_header, v225, v224, "Attempted to present %{public}s, but needs to wait for the ongoing transition %{public}s to complete first", v26, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        outlined init with copy of PresentationSource(v230, &v238);
        v75 = swift_allocObject();
        *(v75 + 16) = v6;
        *(v75 + 24) = v22;
        outlined init with take of PresentationSource(&v238, v75 + 32);
        *(v75 + 128) = v228 & 1;
        *(v75 + 129) = v229 & 1;
        *(v75 + 136) = a4;
        *(v75 + 144) = a5;
        *&v233 = partial apply for closure #1 in PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
        *(&v233 + 1) = v75;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v232 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
        *(&v232 + 1) = &block_descriptor_33_0;
        v76 = _Block_copy(&aBlock);
        v77 = v22;
        swift_unknownObjectRetain();
        outlined copy of (@escaping @callee_guaranteed () -> ())?(a4);

        [v6 animateAlongsideTransition:0 completion:v76];
        _Block_release(v76);

        swift_unknownObjectRelease();
        return;
      }

LABEL_103:
      swift_once();
      goto LABEL_8;
    }

    if ([a2 canPresentViewControllers])
    {
      v56 = a2;
      [a1 setPlayActivityFeatureNameSourceViewController:v56];
      v57 = type metadata accessor for UIViewController.WeakViewControllerReference();
      v58 = objc_allocWithZone(v57);
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      v237.receiver = v58;
      v237.super_class = v57;
      v59 = objc_msgSendSuper2(&v237, "init");
      if (one-time initialization token for playActivityRecommendationDataSourceViewController != -1)
      {
        swift_once();
      }

      v227 = a4;
      objc_setAssociatedObject(a1, static AssociatedKeys.playActivityRecommendationDataSourceViewController, v59, 1);
      v226 = v56;

      v60 = v230;
      v61 = v230[8];
      if (v61)
      {
        v61(a1);
      }

      v222 = a5;
      v217 = [a1 modalPresentationStyle];
      objc_opt_self();
      v221 = swift_dynamicCastObjCClass();
      v62 = a1;
      v64 = v60[1];
      v63 = v60[2];
      v66 = v60[3];
      v65 = v60[4];
      v68 = v60[5];
      v67 = v60[6];
      v69 = v60[7];
      objc_opt_self();
      v70 = v62;
      v71 = swift_dynamicCastObjCClass();
      v224 = v64;
      v223 = v66;
      v230 = v65;
      v72 = v65;
      v73 = v68;
      v225 = v69;
      outlined copy of PresentationSource.Position?(v64, v63, v66, v72, v68, v67);
      if (v71)
      {
        v74 = [v71 preferredStyle] == 0;
      }

      else
      {
        v74 = 0;
      }

      v104 = v67;
      v105 = v226;
      v220 = v70;
      v106 = v63;
      if (v67 == 0xFF && !v221)
      {
        v107 = v220;
        if ([v220 modalPresentationStyle] == 7)
        {
          v108 = [v107 popoverPresentationController];
          if (v108)
          {
            v109 = v108;
            v218 = a3;
            if (one-time initialization token for logger != -1)
            {
              swift_once();
            }

            v110 = type metadata accessor for Logger();
            __swift_project_value_buffer(v110, static PresentationSource.logger);
            v111 = Logger.logObject.getter();
            v112 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v111, v112))
            {
              v113 = swift_slowAlloc();
              *v113 = 0;
            }

            v114 = [v109 sourceItem];
            if (v114)
            {
              v115 = v114;
              swift_unknownObjectRetain();
              v116 = Logger.logObject.getter();
              v117 = static os_log_type_t.default.getter();
              swift_unknownObjectRelease();
              if (os_log_type_enabled(v116, v117))
              {
                v118 = swift_slowAlloc();
                v219 = COERCE_DOUBLE(swift_slowAlloc());
                *&v238 = v219;
                *v118 = 136446210;
                *&aBlock = v115;
                swift_unknownObjectRetain();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo41UIPopoverPresentationControllerSourceItem_pMd);
                v119 = String.init<A>(describing:)();
                v221 = v106;
                v121 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v119, v120, &v238);
                v216 = v109;
                v122 = v117;
                v123 = v121;

                *(v118 + 4) = v123;
                _os_log_impl(&_mh_execute_header, v116, v122, "Using sourceItem=%{public}s as the position", v118, 0xCu);
                __swift_destroy_boxed_opaque_existential_0Tm(*&v219);

                outlined consume of PresentationSource.Position?(v224, v221, v223, v230, v73, v104);
              }

              else
              {
                outlined consume of PresentationSource.Position?(v224, v106, v223, v230, v73, v104);
              }

              v106 = 0;
              v223 = 0;
              v230 = 0;
              v73 = 0;
              v225 = 15;
              v104 = 2;
              v224 = v115;
              a3 = v218;
            }

            else
            {
              v124 = [v109 sourceView];
              a3 = v218;
              if (v124)
              {
                v125 = v124;
                v221 = v106;
                v126 = v124;
                v127 = Logger.logObject.getter();
                v128 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v127, v128))
                {
                  v129 = swift_slowAlloc();
                  v216 = v129;
                  v219 = COERCE_DOUBLE(swift_slowAlloc());
                  *&v238 = v219;
                  *v129 = 136446210;
                  v130 = v126;
                  v131 = [v130 description];
                  v132 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v215 = v127;
                  v133 = v132;
                  v214 = v128;
                  v135 = v134;

                  a3 = v218;
                  v136 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v133, v135, &v238);

                  v137 = v216;
                  *(v216 + 4) = v136;
                  v138 = v215;
                  _os_log_impl(&_mh_execute_header, v215, v214, "Using sourceView=%{public}s as the position", v137, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0Tm(*&v219);
                }

                else
                {
                }

                [v109 sourceRect];
                v143 = v142;
                v145 = v144;
                v147 = v146;
                v149 = v148;
                outlined consume of PresentationSource.Position?(v224, v221, v223, v230, v73, v104);

                v104 = 0;
                v106 = v143;
                v223 = v145;
                v230 = v147;
                v73 = v149;
                v225 = 15;
                v224 = v125;
              }

              else
              {
                v139 = Logger.logObject.getter();
                v140 = static os_log_type_t.fault.getter();
                if (os_log_type_enabled(v139, v140))
                {
                  v141 = swift_slowAlloc();
                  v221 = v106;
                  *v141 = 0;
                  v106 = v221;
                }
              }
            }
          }
        }
      }

      v150 = [v105 view];
      if (!v150)
      {
        __break(1u);
        return;
      }

      v151 = v150;
      v152 = [v150 window];

      v221 = v106;
      v219 = *&v73;
      v153 = v220;
      if (v152 && (v154 = [v152 traitCollection], v152, v155 = objc_msgSend(v154, "horizontalSizeClass"), v154, v155 == 2) && (v228 & 1) != 0)
      {
        if (v104 == 0xFF)
        {
          LOBYTE(v156) = [v153 modalPresentationStyle] == 7;
          goto LABEL_71;
        }

        v156 = 1;
      }

      else
      {
        v156 = 0;
        if (v104 == 0xFF)
        {
          goto LABEL_71;
        }
      }

      *&v238 = v224;
      *(&v238 + 1) = v106;
      *&v239 = v223;
      *(&v239 + 1) = v230;
      *&v240 = v73;
      BYTE8(v240) = v104;
      v241 = v225;
      if (PresentationSource.Position.canPresent(from:)(v105))
      {
        if ((v156 | v74))
        {
          v218 = a3;
          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v157 = type metadata accessor for Logger();
          v158 = __swift_project_value_buffer(v157, static PresentationSource.logger);
          v159 = v153;
          v228 = v158;
          v160 = Logger.logObject.getter();
          v161 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v160, v161))
          {
            v162 = swift_slowAlloc();
            v217 = swift_slowAlloc();
            *&aBlock = v217;
            *v162 = 136446210;
            v163 = v159;
            v164 = [v163 description];
            v165 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v167 = v166;

            v168 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v165, v167, &aBlock);

            *(v162 + 4) = v168;
            v106 = v221;
            __swift_destroy_boxed_opaque_existential_0Tm(v217);
          }

          v169 = v227;
          v170 = v218;
          v171 = v223;
          v172 = v224;
          [v159 setModalPresentationStyle:7];
          v173 = [v159 popoverPresentationController];
          if (v173)
          {
            v217 = v159;

            v174 = v172;
            v175 = v172;
            v176 = v230;
            v177 = *&v219;
            outlined copy of PresentationSource.Position?(v174, v106, v171, v230, *&v219, v104);
            outlined copy of PresentationSource.Position.Source(v175, v106, v171, v176, v177, v104);
            v178 = Logger.logObject.getter();
            v179 = static os_log_type_t.default.getter();
            v228 = v104;
            v180 = v178;
            v181 = v179;
            outlined consume of PresentationSource.Position?(v175, v106, v171, v176, v177, v104);
            if (os_log_type_enabled(v180, v181))
            {
              v182 = swift_slowAlloc();
              v183 = swift_slowAlloc();
              v236 = v183;
              *v182 = 136446210;
              aBlock = v238;
              v232 = v239;
              v233 = v240;
              v234 = v241;
              LOBYTE(v104) = v228;
              outlined copy of PresentationSource.Position.Source(v175, v106, v223, v176, v177, v228);
              v184 = String.init<A>(describing:)();
              v186 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v184, v185, &v236);
              v106 = v221;

              *(v182 + 4) = v186;
              _os_log_impl(&_mh_execute_header, v180, v181, "Configuring viewController with popover position=%{public}s", v182, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v183);
              v171 = v223;
              v169 = v227;

              v170 = v218;
            }

            else
            {

              LOBYTE(v104) = v228;
            }

            v201 = v217;
            v235 = &OBJC_PROTOCOL___UIAdaptivePresentationControllerDelegate;
            v202 = swift_dynamicCastObjCProtocolConditional();
            v172 = v224;
            v153 = v220;
            if (v202)
            {
              v203 = v202;
              v204 = v201;
              v205 = [v204 presentationController];
              if (v205)
              {
                v206 = v205;
                [v205 setDelegate:v203];

                v106 = v221;
              }
            }

            v207 = [v201 popoverPresentationController];
            if (v207)
            {
              v208 = v207;
              v209 = v230;
              if (v104)
              {
                if (v104 == 1)
                {
                  [v207 setBarButtonItem:v172];
                }

                else
                {
                  [v207 setSourceItem:v172];
                }
              }

              else
              {
                v210 = *&v219;
                v211 = v219;
                [v207 setSourceView:v224];
                [v208 setSourceRect:{*&v106, *&v171, *&v209, v211}];
                v212 = v210;
                v172 = v224;
                outlined consume of PresentationSource.Position?(v224, v106, v171, v209, v212, v104);
              }

              [v208 setPermittedArrowDirections:v225];

              outlined consume of PresentationSource.Position?(v172, v106, v171, v230, *&v219, v104);
            }

            else
            {
              outlined consume of PresentationSource.Position?(v172, v106, v171, v230, *&v219, v104);
            }
          }

          goto LABEL_84;
        }

        LOBYTE(v156) = 0;
      }

LABEL_71:
      objc_opt_self();
      v187 = swift_dynamicCastObjCClass();
      if (v187)
      {
        [v187 setAllowsCustomPresentationStyle:1];
        v188 = 2;
      }

      else
      {
        v188 = v217;
        if (v217 == -2)
        {
          v189 = [v105 traitCollection];
          [v189 horizontalSizeClass];
        }

        else if (((v217 == 7) & v156) == 1)
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v188 = 3;
          }

          else
          {
            v188 = 7;
          }
        }
      }

      v190 = a3;
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v191 = type metadata accessor for Logger();
      __swift_project_value_buffer(v191, static PresentationSource.logger);
      v192 = Logger.logObject.getter();
      v193 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v192, v193))
      {
        v194 = swift_slowAlloc();
        v195 = swift_slowAlloc();
        *&aBlock = v195;
        *v194 = 136446210;
        v236 = v188;
        type metadata accessor for UIModalPresentationStyle(0);
        v196 = String.init<A>(describing:)();
        v198 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v196, v197, &aBlock);

        *(v194 + 4) = v198;
        _os_log_impl(&_mh_execute_header, v192, v193, "Presenting viewController with style=%{public}s", v194, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v195);
        v106 = v221;
      }

      v169 = v227;
      v170 = v190;
      v171 = v223;
      [v153 setModalPresentationStyle:v188];
      v172 = v224;
LABEL_84:
      if (v169)
      {
        *&v233 = v169;
        *(&v233 + 1) = v222;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v232 = thunk for @escaping @callee_guaranteed () -> ();
        *(&v232 + 1) = &block_descriptor_27;
        v199 = _Block_copy(&aBlock);
        v106 = v221;
      }

      else
      {
        v199 = 0;
      }

      v200 = v226;
      [v226 presentViewController:v153 animated:v229 & 1 completion:v199];

      _Block_release(v199);
      outlined consume of PresentationSource.Position?(v172, v106, v171, v230, *&v219, v104);
      return;
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    __swift_project_value_buffer(v78, static PresentationSource.logger);
    v79 = a1;
    v80 = a2;
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v218 = a3;
      v84 = v83;
      *&v238 = swift_slowAlloc();
      *v84 = 136446466;
      v85 = v79;
      v86 = [v85 description];
      v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v227 = a4;
      v88 = v87;
      v222 = a5;
      v90 = v89;

      v91 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v88, v90, &v238);

      *(v84 + 4) = v91;
      *(v84 + 12) = 2082;
      v92 = v80;
      v93 = [v92 description];
      v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v96 = v95;

      v97 = v94;
      a4 = v227;
      v98 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v97, v96, &v238);
      a5 = v222;

      *(v84 + 14) = v98;
      _os_log_impl(&_mh_execute_header, v81, v82, "Attempted to present %{public}s, but need to dismiss %{public}s first", v84, 0x16u);
      swift_arrayDestroy();

      a3 = v218;
    }

    outlined init with copy of PresentationSource(v230, &v238);
    v99 = swift_allocObject();
    *(v99 + 16) = v80;
    *(v99 + 24) = v79;
    outlined init with take of PresentationSource(&v238, v99 + 32);
    *(v99 + 128) = v228 & 1;
    v100 = v229 & 1;
    *(v99 + 129) = v100;
    *(v99 + 136) = a4;
    *(v99 + 144) = a5;
    *&v233 = partial apply for closure #2 in PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
    *(&v233 + 1) = v99;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v232 = thunk for @escaping @callee_guaranteed () -> ();
    *(&v232 + 1) = &block_descriptor_24_1;
    v101 = _Block_copy(&aBlock);
    v102 = v79;
    outlined copy of (@escaping @callee_guaranteed () -> ())?(a4);
    v103 = v80;

    [v103 dismissViewControllerAnimated:v100 completion:v101];
    _Block_release(v101);
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static PresentationSource.logger);
    v44 = a1;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v238 = v48;
      *v47 = 136446210;
      v49 = v44;
      v50 = [v49 description];
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = a4;
      v54 = v53;

      v55 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v51, v54, &v238);
      a4 = v52;

      *(v47 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v45, v46, "Attempted to present viewController=%{public}s but there is no viewController to present onto.", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v48);
    }

    if (a4)
    {
      a4();
    }
  }
}

void closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static PresentationSource.logger);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
  }
}

void closure #2 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(void *a1, uint64_t a2, void *a3, char a4, char a5, void (*a6)(void), uint64_t a7)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static PresentationSource.logger);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Presenting after deferral…", v16, 2u);
  }

  [a1 disarm];
  PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(a3, (a4 & 1), (a5 & 1), a6, a7);
}

void closure #1 in PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static PresentationSource.logger);
  swift_unknownObjectRetain();
  v13 = a3;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  swift_unknownObjectRelease();
  v40 = v13;
  if (os_log_type_enabled(v14, v15))
  {
    v39 = a7;
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136446466;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo37UIViewControllerTransitionCoordinator_pMd);
    v17 = String.init<A>(describing:)();
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v18, aBlock);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2082;
    v20 = v13;
    v21 = [v20 description];
    v22 = a8;
    v23 = a4;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = v24;
    a4 = v23;
    a8 = v22;
    v28 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v27, v26, aBlock);

    *(v16 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v14, v15, "TransitionCoordinator %{public}s completed ongoing animations. Now attemptying to re-present %{public}s", v16, 0x16u);
    swift_arrayDestroy();

    a7 = v39;
  }

  v29 = *(a4 + 80);
  if (v29)
  {

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Deferring presentation…", v32, 2u);
    }

    v33 = objc_allocWithZone(MSVBlockGuard);
    aBlock[4] = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
    aBlock[3] = &block_descriptor_36_1;
    v34 = _Block_copy(aBlock);
    v35 = [v33 initWithTimeout:v34 interruptionHandler:10.0];
    _Block_release(v34);

    outlined init with copy of PresentationSource(a4, aBlock);
    v36 = swift_allocObject();
    *(v36 + 16) = v35;
    outlined init with take of PresentationSource(aBlock, v36 + 24);
    *(v36 + 120) = v40;
    *(v36 + 128) = a5 & 1;
    *(v36 + 129) = a6 & 1;
    *(v36 + 136) = a7;
    *(v36 + 144) = a8;
    v37 = v40;
    v38 = v35;
    outlined copy of (@escaping @callee_guaranteed () -> ())?(a7);
    v29(a4, v37, closure #2 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)partial apply, v36);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v29);
  }

  else
  {
    PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v40, a5 & 1, a6 & 1, a7, a8);
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

void closure #2 in PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(void *a1, void *a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static PresentationSource.logger);
  v12 = a1;
  v13 = a2;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v41 = a6;
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136446466;
    v17 = v12;
    v18 = [v17 description];
    v40 = a3;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v19, v21, aBlock);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2082;
    v23 = v13;
    v24 = [v23 description];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = v25;
    a3 = v40;
    v29 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v28, v27, aBlock);

    *(v16 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v14, v15, "Dismissed %{public}s, now attempting to re-present %{public}s", v16, 0x16u);
    swift_arrayDestroy();

    a6 = v41;
  }

  v30 = *(a3 + 80);
  if (v30)
  {

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Deferring presentation…", v33, 2u);
    }

    v34 = objc_allocWithZone(MSVBlockGuard);
    aBlock[4] = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
    aBlock[3] = &block_descriptor_43_1;
    v35 = _Block_copy(aBlock);
    v36 = [v34 initWithTimeout:v35 interruptionHandler:10.0];
    _Block_release(v35);

    outlined init with copy of PresentationSource(a3, aBlock);
    v37 = swift_allocObject();
    *(v37 + 16) = v36;
    outlined init with take of PresentationSource(aBlock, v37 + 24);
    *(v37 + 120) = v13;
    *(v37 + 128) = a4 & 1;
    *(v37 + 129) = a5 & 1;
    *(v37 + 136) = a6;
    *(v37 + 144) = a7;
    v38 = v13;
    v39 = v36;
    outlined copy of (@escaping @callee_guaranteed () -> ())?(a6);
    v30(a3, v38, closure #2 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)partial apply, v37);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v30);
  }

  else
  {
    PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v13, a4 & 1, a5 & 1, a6, a7);
  }
}

Swift::Bool __swiftcall PresentationSource.Position.canPresent(from:)(UIViewController from)
{
  if (!*(v1 + 40))
  {
    v6 = [*v1 window];
    if (!v6)
    {
      return v6;
    }

    goto LABEL_15;
  }

  if (*(v1 + 40) != 1)
  {
    swift_unknownObjectRetain();
    v6 = [(objc_class *)from.super.super.isa view];
    if (v6)
    {
      v8 = v6;
      swift_getObjectType();
      UIPopoverPresentationControllerSourceItem.frame(in:)();

      if ((v21 & 1) != 0 || (v23.origin.x = 0.0, v23.origin.y = 0.0, v23.size.width = 0.0, v23.size.height = 0.0, CGRectEqualToRect(v20, v23)))
      {
        outlined destroy of PresentationSource.Position(v1);
LABEL_14:
        LOBYTE(v6) = 0;
        return v6;
      }

      v6 = [(objc_class *)from.super.super.isa view];
      if (v6)
      {
        v10 = v6;
        [v6 bounds];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;

        v22.origin.x = v12;
        v22.origin.y = v14;
        v22.size.width = v16;
        v22.size.height = v18;
        LOBYTE(v10) = CGRectIntersectsRect(v22, v20);
        outlined destroy of PresentationSource.Position(v1);
        LOBYTE(v6) = v10;
        return v6;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return v6;
  }

  v2 = *v1;
  v3 = [v2 customView];
  if (!v3 || (v4 = v3, v5 = [v3 window], v4, !v5))
  {
    v9 = [v2 customView];
    outlined destroy of PresentationSource.Position(v1);
    if (v9)
    {

      goto LABEL_14;
    }

LABEL_15:
    LOBYTE(v6) = 1;
    return v6;
  }

  outlined destroy of PresentationSource.Position(v1);
  LOBYTE(v6) = 1;
  return v6;
}

void *PresentationSource.Position.init(view:rect:permittedArrowDirections:)@<X0>(void *result@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = 0uLL;
  if (result)
  {
    if (a2[2])
    {
      v5 = a4;

      v4 = 0uLL;
      a4 = v5;
      result = 0;
      a3 = 0;
      v6 = 255;
      v7 = 0uLL;
    }

    else
    {
      v6 = 0;
      v4 = *a2;
      v7 = a2[1];
    }
  }

  else
  {
    a3 = 0;
    v6 = 255;
    v7 = 0uLL;
  }

  *a4 = result;
  *(a4 + 8) = v4;
  *(a4 + 24) = v7;
  *(a4 + 40) = v6;
  *(a4 + 48) = a3;
  return result;
}

uint64_t PresentationSource.Position.init(sourceItem:permittedArrowDirections:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 2;
  if (!result)
  {
    v3 = 255;
  }

  *a3 = result;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  if (result)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  *(a3 + 40) = v3;
  *(a3 + 48) = v4;
  return result;
}

void UIWindowScene.presentationSource.getter(uint64_t a1@<X8>)
{
  v2 = UIWindowScene.rootViewController.getter();
  if (v2)
  {
    v3 = v2;
    swift_unknownObjectWeakInit();
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    swift_unknownObjectWeakAssign();

    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 40) = 0;
    *(a1 + 48) = 255;
  }

  else
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    *(a1 + 64) = 1;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  *(a1 + 56) = 0;
}

uint64_t protocol witness for AlertPresenting.present(_:) in conformance PresentationSource(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(protocol witness for AlertPresenting.present(_:) in conformance PresentationSource, v4, v3);
}

uint64_t protocol witness for AlertPresenting.present(_:) in conformance PresentationSource()
{
  v1 = *(v0 + 16);

  v2 = specialized static UIAlertController.alertController(with:overrideStyle:)(v1, 0, 1);
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v2, *(v1 + 32), 1, 0, 0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined init with copy of PresentationSource.Position?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore18PresentationSourceV8PositionVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of PresentationSource.Position?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore18PresentationSourceV8PositionVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type PresentationSource.PresentingViewControllerOptions and conformance PresentationSource.PresentingViewControllerOptions()
{
  result = lazy protocol witness table cache variable for type PresentationSource.PresentingViewControllerOptions and conformance PresentationSource.PresentingViewControllerOptions;
  if (!lazy protocol witness table cache variable for type PresentationSource.PresentingViewControllerOptions and conformance PresentationSource.PresentingViewControllerOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationSource.PresentingViewControllerOptions and conformance PresentationSource.PresentingViewControllerOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationSource.PresentingViewControllerOptions and conformance PresentationSource.PresentingViewControllerOptions;
  if (!lazy protocol witness table cache variable for type PresentationSource.PresentingViewControllerOptions and conformance PresentationSource.PresentingViewControllerOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationSource.PresentingViewControllerOptions and conformance PresentationSource.PresentingViewControllerOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationSource.PresentingViewControllerOptions and conformance PresentationSource.PresentingViewControllerOptions;
  if (!lazy protocol witness table cache variable for type PresentationSource.PresentingViewControllerOptions and conformance PresentationSource.PresentingViewControllerOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationSource.PresentingViewControllerOptions and conformance PresentationSource.PresentingViewControllerOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationSource.PresentingViewControllerOptions and conformance PresentationSource.PresentingViewControllerOptions;
  if (!lazy protocol witness table cache variable for type PresentationSource.PresentingViewControllerOptions and conformance PresentationSource.PresentingViewControllerOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationSource.PresentingViewControllerOptions and conformance PresentationSource.PresentingViewControllerOptions);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PresentationSource(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
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

uint64_t storeEnumTagSinglePayload for PresentationSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PresentationSource.Position(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 56))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
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

uint64_t storeEnumTagSinglePayload for PresentationSource.Position(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PresentationSource.Position.Source(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
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

uint64_t storeEnumTagSinglePayload for PresentationSource.Position.Source(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_100236D40()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

id outlined copy of PresentationSource.Position?(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 != 0xFF)
  {
    return outlined copy of PresentationSource.Position.Source(result, a2, a3, a4, a5, a6);
  }

  return result;
}

id outlined copy of PresentationSource.Position.Source(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 == 2)
  {
    return swift_unknownObjectRetain();
  }

  if (a6 <= 1u)
  {
    return result;
  }

  return result;
}

void outlined consume of PresentationSource.Position?(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 != 0xFF)
  {
    outlined consume of PresentationSource.Position.Source(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t sub_100236E38()
{
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

uint64_t View.viewPresenting<A, B>(_:modifier:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v9[0] = a2;
  v9[1] = a3;
  v4 = type metadata accessor for ModifiedContent();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  View.modifier<A>(_:)();
  type metadata accessor for PresentedViewState();
  v9[2] = a1;
  v9[3] = v9[0];
  swift_getWitnessTable();
  swift_getWitnessTable();
  View.environmentObject<A>(_:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t PresentedViewState.isPresented.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t PresentedViewState.isPresented.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path getter for PresentedViewState.isPresented : <A>PresentedViewState<A>@<X0>(_BYTE *a1@<X8>)
{
  result = PresentedViewState.isPresented.getter();
  *a1 = result & 1;
  return result;
}

void (*PresentedViewState.isPresented.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  __chkstk_darwin(v2);
  KeyPath = swift_getKeyPath();
  v3[4] = KeyPath;
  __chkstk_darwin(KeyPath);
  v3[5] = swift_getKeyPath();
  v3[6] = static Published.subscript.modify();
  return OptionalObservableObject.output.modify;
}

uint64_t PresentedViewState.$isPresented.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t PresentedViewState.$isPresented.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*PresentedViewState.$isPresented.modify(void *a1))(uint64_t a1, char a2)
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
  *v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v8 = malloc(v7);
  }

  v4[4] = v8;
  PresentedViewState.$isPresented.getter();
  return PresentedViewState.$isPresented.modify;
}

void PresentedViewState.$isPresented.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    PresentedViewState.$isPresented.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    PresentedViewState.$isPresented.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t PresentedViewState.data.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 96);
  swift_beginAccess();
  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t PresentedViewState.__allocating_init()()
{
  v0 = swift_allocObject();
  PresentedViewState.init()();
  return v0;
}

uint64_t *PresentedViewState.init()()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9[-v4];
  v6 = direct field offset for PresentedViewState._isPresented;
  v7 = *(v1 + 80);
  v9[15] = 0;
  Published.init(initialValue:)();
  (*(v3 + 32))(v0 + v6, v5, v2);
  (*(*(v7 - 8) + 56))(v0 + *(*v0 + 96), 1, 1, v7);
  return v0;
}

uint64_t PresentedViewState.present(_:animated:)(uint64_t a1, char a2)
{
  v5 = *(*v2 + 80);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - v8;
  v10 = *(v5 - 8);
  (*(v10 + 16))(&v13 - v8, a1, v5);
  (*(v10 + 56))(v9, 0, 1, v5);
  v11 = *(*v2 + 96);
  swift_beginAccess();
  (*(v7 + 40))(v2 + v11, v9, v6);
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return PresentedViewState.isPresented.setter();
  }

  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t PresentedViewState.deinit()
{
  v1 = direct field offset for PresentedViewState._isPresented;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 96);
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t PresentedViewState.__deallocating_deinit()
{
  PresentedViewState.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_100237C14@<X0>(_BYTE *a1@<X8>)
{
  result = PresentedViewState.isPresented.getter();
  *a1 = result & 1;
  return result;
}

void type metadata completion function for PresentedViewState()
{
  type metadata accessor for Published<Bool>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Optional();
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_100237D80()
{
  type metadata accessor for ModifiedContent();
  type metadata accessor for PresentedViewState();
  type metadata accessor for Optional();
  type metadata accessor for _EnvironmentKeyWritingModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t NoticePresenting.present(_:internalOnly:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Notice(0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  static Notice.variant(_:)(a1, v10);
  (*(a4 + 8))(v10, a2, a3, a4);
  return outlined destroy of Notice(v10);
}

void UIViewController.noticePresenting.getter(uint64_t a1@<X8>)
{
  if (![v1 isViewLoaded])
  {
    v7 = [v1 parentViewController];
    if (v7)
    {
      v8 = v7;
      UIViewController.noticePresenting.getter();
      goto LABEL_8;
    }

LABEL_12:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    return;
  }

  v8 = v3;
  v4 = [v3 window];
  if (!v4 || (v5 = v4, v6 = [v4 windowScene], v5, !v6))
  {

    goto LABEL_12;
  }

  UIWindowScene.noticePresenting.getter(a1);

LABEL_8:
}

uint64_t PresentedViewState<A>.present(_:)(__int128 *a1)
{
  v3 = *a1;
  *(v2 + 104) = a1[1];
  v4 = a1[3];
  *(v2 + 120) = a1[2];
  *(v2 + 136) = v4;
  *(v2 + 256) = a1;
  *(v2 + 264) = v1;
  *(v2 + 152) = *(a1 + 8);
  *(v2 + 88) = v3;
  type metadata accessor for MainActor();
  *(v2 + 272) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(PresentedViewState<A>.present(_:), v6, v5);
}

uint64_t PresentedViewState<A>.present(_:)()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 256);

  v3 = v1 + *(*v1 + 96);
  swift_beginAccess();
  *(v0 + 16) = *v3;
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  v6 = *(v3 + 48);
  *(v0 + 80) = *(v3 + 64);
  *(v0 + 48) = v5;
  *(v0 + 64) = v6;
  *(v0 + 32) = v4;
  outlined init with copy of Alert(v2, v0 + 160);
  *v3 = *(v0 + 88);
  v7 = *(v0 + 120);
  v8 = *(v0 + 136);
  v9 = *(v0 + 104);
  *(v3 + 64) = *(v0 + 152);
  *(v3 + 32) = v7;
  *(v3 + 48) = v8;
  *(v3 + 16) = v9;
  outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore5AlertVSgMd);
  *swift_task_alloc() = &type metadata for Alert;
  swift_getKeyPath();

  *swift_task_alloc() = &type metadata for Alert;
  swift_getKeyPath();

  *(v0 + 160) = 1;

  static Published.subscript.setter();
  v10 = *(v0 + 8);

  return v10();
}

{
  v1 = v0[5];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v2);
  v7 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = PresentedViewState<A>.present(_:);
  v5 = v0[8];

  return v7(v5, v2, v3);
}

{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(PresentedViewState<A>.present(_:), v3, v2);
}

{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of URL?(v0[8]);
  }

  else
  {
    v5 = v0[10];
    v4 = v0[11];
    v6 = v0[9];
    v7 = v0[6];
    v8 = v0[7];
    (*(v5 + 32))(v4, v0[8], v6);
    (*(v5 + 16))(v8, v4, v6);
    (*(v5 + 56))(v8, 0, 1, v6);
    v9 = *(*v7 + 96);
    swift_beginAccess();
    outlined assign with take of URL?(v8, v7 + v9);
    swift_endAccess();
    static Animation.default.getter();
    withAnimation<A>(_:_:)();

    (*(v5 + 8))(v4, v6);
  }

  v10 = v0[1];

  return v10();
}

uint64_t protocol witness for AlertPresenting.present(_:) in conformance <A> PresentedViewState<A>(__int128 *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return PresentedViewState<A>.present(_:)(a1);
}

uint64_t one-time initialization function for noticePresenting()
{
  result = swift_slowAlloc();
  static UIWindowScene.AssociatedObjectKeys.noticePresenting = result;
  return result;
}

double UIWindowScene.noticePresenting.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for noticePresenting != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v1, static UIWindowScene.AssociatedObjectKeys.noticePresenting))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (!*(&v5 + 1))
  {
    outlined destroy of TaskPriority?(v6, &_sypSgMd_0);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore16NoticePresenting_pMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t UIWindowScene.noticePresenting.setter(uint64_t a1)
{
  if (one-time initialization token for noticePresenting != -1)
  {
    swift_once();
  }

  v3 = static UIWindowScene.AssociatedObjectKeys.noticePresenting;
  outlined init with copy of NoticePresenting?(a1, v12);
  v4 = v13;
  if (v13)
  {
    v5 = __swift_project_boxed_opaque_existential_0Tm(v12, v13);
    v6 = *(v4 - 8);
    __chkstk_darwin(v5);
    v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v8, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
  }

  else
  {
    v9 = 0;
  }

  objc_setAssociatedObject(v1, v3, v9, 1);
  swift_unknownObjectRelease();
  return outlined destroy of TaskPriority?(a1, &_s9MusicCore16NoticePresenting_pSgMd);
}

uint64_t outlined init with copy of NoticePresenting?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore16NoticePresenting_pSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void (*UIWindowScene.noticePresenting.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  UIWindowScene.noticePresenting.getter(v3);
  return UIWindowScene.noticePresenting.modify;
}

void UIWindowScene.noticePresenting.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    outlined init with copy of NoticePresenting?(*a1, v2 + 40);
    UIWindowScene.noticePresenting.setter(v2 + 40);
    outlined destroy of TaskPriority?(v2, &_s9MusicCore16NoticePresenting_pSgMd);
  }

  else
  {
    UIWindowScene.noticePresenting.setter(*a1);
  }

  free(v2);
}

uint64_t outlined destroy of Notice(uint64_t a1)
{
  v2 = type metadata accessor for Notice(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized closure #1 in PresentedViewState.present(_:animated:)()
{
  type metadata accessor for URL();
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t PresentedViewState<A>.present(_:)(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[12] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[13] = v5;
  v2[14] = v4;

  return _swift_task_switch(PresentedViewState<A>.present(_:), v5, v4);
}

uint64_t protocol witness for ShareSheetPresenting.present(_:) in conformance <A> PresentedViewState<A>(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return PresentedViewState<A>.present(_:)(a1);
}

uint64_t ShareSheetModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a2;
  v30 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE13sharingPicker11isPresented4item7subject7messageQrAA7BindingVySbG_10Foundation3URLVAA4TextVSgAUtFQOyAA01_f9Modifier_D0Vy9MusicCore010ShareSheetR033_15E615D7DD341E3A8402696E43DF6D6CLLVG_Qo_A0__GMd);
  __chkstk_darwin(v31);
  v29 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE13sharingPicker11isPresented4item7subject7messageQrAA7BindingVySbG_10Foundation3URLVAA4TextVSgAQtFQOyAA01_C16Modifier_ContentVy9MusicCore010ShareSheetO033_15E615D7DD341E3A8402696E43DF6D6CLLVG_Qo_Md);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  __chkstk_darwin(v11 - 8);
  v13 = &v26 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(*a3 + 96);
  swift_beginAccess();
  outlined init with copy of URL?(a3 + v18, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of URL?(v13);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy9MusicCore010ShareSheetD033_15E615D7DD341E3A8402696E43DF6D6CLLVGMd);
    (*(*(v19 - 8) + 16))(v29, v30, v19);
    swift_storeEnumTagMultiPayload();
    v20 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ShareSheetModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy9MusicCore010ShareSheetD033_15E615D7DD341E3A8402696E43DF6D6CLLVGMd);
    v32 = v19;
    v33 = v20;
    swift_getOpaqueTypeConformance2();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore18PresentedViewStateCy10Foundation3URLVGMd);
    v27 = v7;
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type PresentedViewState<URL> and conformance PresentedViewState<A>, &_s9MusicCore18PresentedViewStateCy10Foundation3URLVGMd);
    ObservedObject.projectedValue.getter();
    swift_getKeyPath();
    ObservedObject.Wrapper.subscript.getter();

    v26 = a4;
    v28 = v14;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy9MusicCore010ShareSheetD033_15E615D7DD341E3A8402696E43DF6D6CLLVGMd);
    v25 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ShareSheetModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy9MusicCore010ShareSheetD033_15E615D7DD341E3A8402696E43DF6D6CLLVGMd);
    v22 = v17;
    View.sharingPicker(isPresented:item:subject:message:)();

    v23 = v27;
    (*(v8 + 16))(v29, v10, v27);
    swift_storeEnumTagMultiPayload();
    v32 = v24;
    v33 = v25;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    (*(v8 + 8))(v10, v23);
    return (*(v15 + 8))(v22, v28);
  }
}

uint64_t key path getter for PresentedViewState.isPresented : PresentedViewState<URL>@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for URL();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for PresentedViewState.isPresented : PresentedViewState<URL>()
{
  type metadata accessor for URL();
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t View.shareSheetPresenting(_:)()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore18PresentedViewStateCy10Foundation3URLVGMd);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type PresentedViewState<URL> and conformance PresentedViewState<A>, &_s9MusicCore18PresentedViewStateCy10Foundation3URLVGMd);
  ObservedObject.init(wrappedValue:)();
  View.modifier<A>(_:)();
}

uint64_t sub_10023958C()
{
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type ShareSheetModifier and conformance ShareSheetModifier();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type ShareSheetModifier and conformance ShareSheetModifier()
{
  result = lazy protocol witness table cache variable for type ShareSheetModifier and conformance ShareSheetModifier;
  if (!lazy protocol witness table cache variable for type ShareSheetModifier and conformance ShareSheetModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShareSheetModifier and conformance ShareSheetModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.sharingPicker(isPresented:item:subject:message:)>>.0, _ViewModifier_Content<ShareSheetModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.sharingPicker(isPresented:item:subject:message:)>>.0, _ViewModifier_Content<ShareSheetModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.sharingPicker(isPresented:item:subject:message:)>>.0, _ViewModifier_Content<ShareSheetModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE13sharingPicker11isPresented4item7subject7messageQrAA7BindingVySbG_10Foundation3URLVAA4TextVSgAStFQOyAA01_e9Modifier_D0Vy9MusicCore010ShareSheetQ033_15E615D7DD341E3A8402696E43DF6D6CLLVG_Qo_AZGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy9MusicCore010ShareSheetD033_15E615D7DD341E3A8402696E43DF6D6CLLVGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ShareSheetModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy9MusicCore010ShareSheetD033_15E615D7DD341E3A8402696E43DF6D6CLLVGMd);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.sharingPicker(isPresented:item:subject:message:)>>.0, _ViewModifier_Content<ShareSheetModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t static LibraryModelRequest.label.getter()
{
  _StringGuts.grow(_:)(27);

  swift_getMetatypeMetadata();
  v0._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 8236;
  v1._object = 0xE200000000000000;
  String.append(_:)(v1);
  swift_getMetatypeMetadata();
  v2._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 62;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return 0xD000000000000014;
}

uint64_t LibraryModelRequest.section.getter()
{
  v1 = *(v0 + 8);
  outlined copy of LibraryContentConfiguration<A>?<A, B>(v1, *(v0 + 16));
  return v1;
}

uint64_t outlined copy of LibraryContentConfiguration<A>?<A, B>(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;

    v4 = v3;
    v5 = a2;
  }

  return result;
}

uint64_t LibraryModelRequest.section.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = outlined consume of LibraryContentConfiguration<A>?<A, B>(*(v4 + 8), *(v4 + 16));
  *(v4 + 8) = a1;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  return result;
}

uint64_t outlined consume of LibraryContentConfiguration<A>?<A, B>(uint64_t result, void *a2)
{
  if (a2)
  {
    v2 = result;
  }

  return result;
}

void *LibraryModelRequest.item.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = v1;
  v4 = v2;

  return v1;
}

uint64_t LibraryModelRequest.item.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  *(v4 + 40) = a1;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *(v4 + 64) = a4;
  return result;
}

uint64_t LibraryModelRequest.filter.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t LibraryModelRequest.filter.setter(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{

  *(v4 + 80) = a1;
  *(v4 + 88) = a2 & 1;
  *(v4 + 96) = a3;
  *(v4 + 104) = a4;
  return result;
}

uint64_t LibraryModelRequest.itemRange.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 112) = result;
  *(v3 + 120) = a2;
  *(v3 + 128) = a3 & 1;
  return result;
}

uint64_t LibraryModelRequest.label.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

uint64_t LibraryModelRequest.label.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  return result;
}

double LibraryModelRequest.init(library:section:item:scopedContainers:filter:itemRange:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, char a12, __int128 a13, __int128 a14, char a15)
{
  v23[160] = a12 & 1;
  v23[152] = a15 & 1;
  *&v24 = a1;
  *(&v24 + 1) = a2;
  *&v25 = a3;
  *(&v25 + 1) = a4;
  *&v26 = a5;
  *(&v26 + 1) = a6;
  *&v27 = a7;
  *(&v27 + 1) = a8;
  v28 = a10;
  *&v29 = a11;
  BYTE8(v29) = a12 & 1;
  v30 = a13;
  v31 = a14;
  LOBYTE(v32) = a15 & 1;
  *(&v32 + 1) = 0;
  v33 = 0;
  v34[0] = a1;
  v34[1] = a2;
  v34[2] = a3;
  v34[3] = a4;
  v34[4] = a5;
  v34[5] = a6;
  v34[6] = a7;
  v34[7] = a8;
  v35 = a10;
  v36 = a11;
  v37 = a12 & 1;
  v38 = a13;
  v39 = a14;
  v40 = a15 & 1;
  v41 = 0;
  v42 = 0;
  v16 = type metadata accessor for LibraryModelRequest();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v23, &v24, v16);
  (*(v17 + 8))(v34, v16);
  v18 = v31;
  *(a9 + 96) = v30;
  *(a9 + 112) = v18;
  *(a9 + 128) = v32;
  *(a9 + 144) = v33;
  v19 = v27;
  *(a9 + 32) = v26;
  *(a9 + 48) = v19;
  v20 = v29;
  *(a9 + 64) = v28;
  *(a9 + 80) = v20;
  result = *&v24;
  v22 = v25;
  *a9 = v24;
  *(a9 + 16) = v22;
  return result;
}

void LibraryModelRequest.mediaPlayerRequest()(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21MPModelLibraryRequestCMd);
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = v1[6];
  v21 = v1[7];
  v22 = v1[8];
  v23 = *(v1 + 18);
  v16 = v1[2];
  v17 = v1[3];
  v18 = v1[4];
  v19 = v1[5];
  v14 = *v1;
  v15 = v1[1];
  v5 = v4;
  WitnessTable = swift_getWitnessTable();
  ModelRequest.configure(_:)(v5, a1, WitnessTable);
  [v5 setMediaLibrary:{*v1, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23}];
  isa = 0;
  if (*(v2 + 2) && *(v2 + 4))
  {
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPIdentifierSet);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v5 setAllowedSectionIdentifiers:isa];

  v8 = *(v2 + 8);
  if (v8)
  {
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPIdentifierSet);
    v8 = Array._bridgeToObjectiveC()().super.isa;
  }

  [v5 setAllowedItemIdentifiers:v8];

  v9 = *(v2 + 9);
  if (v9)
  {
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPModelObject);
    v9 = Array._bridgeToObjectiveC()().super.isa;
  }

  [v5 setScopedContainers:v9];

  v10 = *(v2 + 13);
  if (*(v2 + 88))
  {
    v11 = MPMediaLibraryFilteringOptions.none.unsafeMutableAddressor();
  }

  else
  {
    v11 = v2 + 5;
  }

  [v5 setFilteringOptions:*v11];
  if (v10)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  [v5 setFilterText:v12];

  if ((v2[8] & 1) == 0)
  {
    if (__OFSUB__(*(v2 + 15), *(v2 + 14)))
    {
      __break(1u);
      return;
    }

    [v5 setContentRange:?];
  }

  if (*(v2 + 18))
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  [v5 setLabel:v13];
}

uint64_t UIView.Border.thickness.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t static LibraryModelRequest.Filter.__derived_struct_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if ((a6 & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    if (a4)
    {
      if (a8)
      {
        if (a3 == a7 && a4 == a8)
        {
          return 1;
        }

        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          return 1;
        }
      }
    }

    else if (!a8)
    {
      return 1;
    }

    return 0;
  }

  result = 0;
  if ((a6 & 1) == 0 && a1 == a5)
  {
    goto LABEL_6;
  }

  return result;
}

BOOL static LibraryModelRequest.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSObject);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v11 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (!v5)
  {
    if (!v9)
    {
      goto LABEL_8;
    }

LABEL_7:
    outlined copy of LibraryContentConfiguration<A>?<A, B>(*(a2 + 8), *(a2 + 16));
    outlined copy of LibraryContentConfiguration<A>?<A, B>(v4, v5);
    outlined consume of LibraryContentConfiguration<A>?<A, B>(v4, v5);
    outlined consume of LibraryContentConfiguration<A>?<A, B>(v8, v9);
    return 0;
  }

  if (!v9)
  {
    goto LABEL_7;
  }

  outlined copy of LibraryContentConfiguration<A>?<A, B>(*(a2 + 8), *(a2 + 16));
  outlined copy of LibraryContentConfiguration<A>?<A, B>(v4, v5);
  v18 = static LibraryContentConfiguration.__derived_struct_equals(_:_:)(v4, v5, v6, v7, v8, v9, v11, v10);

  outlined consume of LibraryContentConfiguration<A>?<A, B>(v4, v5);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  if ((static LibraryContentConfiguration.__derived_struct_equals(_:_:)(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a2 + 40), *(a2 + 48), *(a2 + 56), *(a2 + 64)) & 1) == 0)
  {
    return 0;
  }

  v12 = *(a1 + 72);
  v13 = *(a2 + 72);
  if (v12)
  {
    if (!v13)
    {
      return 0;
    }

    v14 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo13MPModelObjectC_Tt1g5(v12, v13);

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  if ((static LibraryModelRequest.Filter.__derived_struct_equals(_:_:)(*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a2 + 80), *(a2 + 88), *(a2 + 96), *(a2 + 104)) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 128))
  {
    if (!*(a2 + 128))
    {
      return 0;
    }

    goto LABEL_21;
  }

  result = 0;
  if ((*(a2 + 128) & 1) == 0 && *(a1 + 112) == *(a2 + 112) && *(a1 + 120) == *(a2 + 120))
  {
LABEL_21:
    v16 = *(a1 + 144);
    v17 = *(a2 + 144);
    if (v16)
    {
      return v17 && (*(a1 + 136) == *(a2 + 136) && v16 == v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
    }

    return !v17;
  }

  return result;
}

uint64_t static LibraryContentConfiguration.__derived_struct_equals(_:_:)(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (!a5)
    {
      return 0;
    }

    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPModelKind);
    v14 = a5;
    v15 = a1;
    v16 = static NSObject.== infix(_:_:)();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a5)
  {
    return 0;
  }

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSObject);
  if (static NSObject.== infix(_:_:)())
  {
    if (a3)
    {
      if (!a7)
      {
        return 0;
      }

      v17 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo16NSSortDescriptorC_Tt1g5(a3, a7);

      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }

    else if (a7)
    {
      return 0;
    }

    if (a4)
    {
      if (a8)
      {

        v18 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo15MPIdentifierSetC_Tt1g5(a4, a8);

        if (v18)
        {
          return 1;
        }
      }
    }

    else if (!a8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t protocol witness for ModelRequest.section.getter in conformance LibraryModelRequest<A, B>@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return outlined copy of LibraryContentConfiguration<A>?<A, B>(v2, v3);
}

uint64_t protocol witness for ModelRequest.item.getter in conformance LibraryModelRequest<A, B>@<X0>(void *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v5 = v1[7];
  v4 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v4;

  v6 = v2;
  v7 = v3;
}

uint64_t LibraryContentConfiguration<>.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004F2400;
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [objc_opt_self() propertySetWithProperties:isa];

  return 0;
}

uint64_t instantiation function for generic protocol witness table for LibraryModelRequest<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for LibraryContentConfiguration<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata instantiation function for LibraryModelRequest()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore27LibraryContentConfigurationVyxGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LibraryModelRequest(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t storeEnumTagSinglePayload for LibraryModelRequest(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for LibraryModelRequest.Filter()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for LibraryModelRequest.Filter(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for LibraryModelRequest.Filter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for LibraryContentConfiguration()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void ModelRequest.configure(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v61 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = *(AssociatedTypeWitness - 8);
  v6 = __chkstk_darwin(AssociatedTypeWitness);
  v55 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v54 = &v48 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v52 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v48 - v15;
  __chkstk_darwin(v14);
  v18 = &v48 - v17;
  v19 = *(a3 + 56);
  v57 = v3;
  v60 = a2;
  v50 = v19;
  v19(a2, a3);
  v20 = *(v9 - 8);
  v59 = *(v20 + 48);
  v21 = v59(v18, 1, v9);
  v53 = v10;
  v51 = v11;
  if (v21 == 1)
  {
    (*(v11 + 8))(v18, v10);
    v22 = 0;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v22 = (*(AssociatedConformanceWitness + 24))(v9, AssociatedConformanceWitness);
    (*(v20 + 8))(v18, v9);
  }

  [v61 setSectionKind:v22];

  v24 = v50;
  v50(v60, a3);
  v25 = v59(v16, 1, v9);
  v26 = v52;
  if (v25 == 1)
  {
    v27 = 0;
    v28 = v51;
    v29 = v53;
  }

  else
  {
    v30 = swift_getAssociatedConformanceWitness();
    v27 = (*(v30 + 32))(v9, v30);
    v28 = v20;
    v29 = v9;
  }

  (*(v28 + 8))(v16, v29);
  [v61 setSectionProperties:v27];

  v24(v60, a3);
  if (v59(v26, 1, v9) == 1)
  {
    (*(v51 + 8))(v26, v53);
  }

  else
  {
    v31 = swift_getAssociatedConformanceWitness();
    v32 = (*(v31 + 56))(v9, v31);
    (*(v20 + 8))(v26, v9);
    if (v32)
    {
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSSortDescriptor);
      v33.super.isa = Array._bridgeToObjectiveC()().super.isa;

      goto LABEL_12;
    }
  }

  v33.super.isa = 0;
LABEL_12:
  [v61 setSectionSortDescriptors:v33.super.isa];

  v59 = *(a3 + 64);
  v34 = v54;
  v35 = v60;
  (v59)(v60, a3);
  v36 = AssociatedTypeWitness;
  v37 = swift_getAssociatedConformanceWitness();
  v38 = v37[3](v36, v37);
  v49 = a3;
  v56 = *(v56 + 8);
  (v56)(v34, v36);
  v39 = v61;
  [v61 setItemKind:v38];

  v40 = a3;
  v41 = v59;
  (v59)(v35, v40);
  v42 = v37[4](v36, v37);
  v43 = v34;
  v44 = v56;
  (v56)(v43, v36);
  [v39 setItemProperties:v42];

  v45 = v55;
  v41(v35, v49);
  v46 = v37[7](v36, v37);
  v44(v45, v36);
  if (v46)
  {
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSSortDescriptor);
    v47.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v47.super.isa = 0;
  }

  [v61 setItemSortDescriptors:v47.super.isa];
}

uint64_t protocol witness for Request.perform(_:_:) in conformance LibraryModelRequest<A, B>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = *(a3 + 16);
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  WitnessTable = swift_getWitnessTable();
  ModelRequest.perform(_:_:)(partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MPModelLibraryResponse<A, B>, Error>, @guaranteed RequestResponseInvalidatable?) -> (), v8, a3, WitnessTable, a4);
}

void ModelRequest.perform(_:_:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  v10[5] = a2;
  v11 = *(a4 + 72);

  v12 = v11(a3, a4);
  v16[4] = partial apply for closure #1 in ModelRequest.perform(_:_:);
  v16[5] = v10;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed ICURLResponse?, @guaranteed Error?) -> ();
  v16[3] = &block_descriptor_37;
  v13 = _Block_copy(v16);
  v14 = v12;

  v15 = [v14 newOperationWithResponseHandler:v13];
  _Block_release(v13);

  if (one-time initialization token for ModelRequestQueue != -1)
  {
    swift_once();
  }

  [(objc_class *)ModelRequestQueue.super.isa addOperation:v15];
  a5[3] = type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSOperation);
  a5[4] = &protocol witness table for NSOperation;

  *a5 = v15;
}

id static MPPropertySet.sectionTitle.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004F2400;
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [objc_opt_self() propertySetWithProperties:isa];

  return v3;
}

id one-time initialization function for ModelRequestQueue()
{
  v0 = [objc_allocWithZone(NSOperationQueue) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setName:v1];

  [v0 setMaxConcurrentOperationCount:4];
  result = [v0 setQualityOfService:33];
  ModelRequestQueue.super.isa = v0;
  return result;
}

NSOperationQueue *ModelRequestQueue.unsafeMutableAddressor()
{
  if (one-time initialization token for ModelRequestQueue != -1)
  {
    swift_once();
  }

  return &ModelRequestQueue;
}

uint64_t closure #1 in ModelRequest.perform(_:_:)(void *a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t, unint64_t))
{
  v4 = a2;
  if (!a1)
  {
    if (!a2)
    {
      lazy protocol witness table accessor for type ModelRequestFailure and conformance ModelRequestFailure();
      v7 = swift_allocError();
      *v16 = 0;
      *(v16 + 8) = 0;
      *(v16 + 16) = 2;
      swift_errorRetain();
LABEL_8:
      v14 = 0;
      v15 = 1;
      goto LABEL_9;
    }

LABEL_7:
    lazy protocol witness table accessor for type ModelRequestFailure and conformance ModelRequestFailure();
    v7 = swift_allocError();
    *v17 = v4;
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
    swift_errorRetain();
    swift_errorRetain();
    v4 = 0;
    goto LABEL_8;
  }

  swift_getAssociatedTypeWitness();
  v6 = swift_dynamicCastUnknownClass();
  if (!v6)
  {
    if (!v4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15MPModelResponseCMd);
      swift_getWitnessTable();
      v19 = specialized String.init<A>(describing:)();
      v21 = v20;
      lazy protocol witness table accessor for type ModelRequestFailure and conformance ModelRequestFailure();
      v7 = swift_allocError();
      *v22 = v19;
      *(v22 + 8) = v21;
      v15 = 1;
      *(v22 + 16) = 1;
      swift_errorRetain();
      v4 = 0;
      v14 = 0;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14MusicUtilities14BindingTrigger_pGMd);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1004F2400;
  v9 = MPModelResponseDidInvalidateNotification;
  v10.location = MPModelResponseDidInvalidateNotification;
  v10.length = v7;
  v11 = CFRange.init(_:)(v10);
  *(v8 + 56) = &type metadata for NotificationTrigger;
  *(v8 + 64) = &protocol witness table for NotificationTrigger;
  *(v8 + 32) = v11;
  type metadata accessor for BindingRequestResponseInvalidation();
  swift_allocObject();
  v12 = a1;
  v13 = v9;
  v4 = BindingRequestResponseInvalidation.init(triggers:)(v8);
  v14 = lazy protocol witness table accessor for type BindingRequestResponseInvalidation and conformance BindingRequestResponseInvalidation();
  v15 = 0;
LABEL_9:
  a3(v7, v15, v4, v14);
  outlined consume of Result<A.ResultContent, Error><A>(v7, v15);
  outlined consume of Result<A.ResultContent, Error><A>(v7, v15);
  return swift_unknownObjectRelease();
}

uint64_t sub_10023B6FC()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MPModelLibraryResponse<A, B>, Error>, @guaranteed RequestResponseInvalidatable?) -> ()(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v7 = a1;
  v8 = a2 & 1;
  return v5(&v7, a3, a4);
}

unint64_t lazy protocol witness table accessor for type ModelRequestFailure and conformance ModelRequestFailure()
{
  result = lazy protocol witness table cache variable for type ModelRequestFailure and conformance ModelRequestFailure;
  if (!lazy protocol witness table cache variable for type ModelRequestFailure and conformance ModelRequestFailure)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelRequestFailure and conformance ModelRequestFailure);
  }

  return result;
}

void outlined consume of Result<A.ResultContent, Error><A>(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t lazy protocol witness table accessor for type BindingRequestResponseInvalidation and conformance BindingRequestResponseInvalidation()
{
  result = lazy protocol witness table cache variable for type BindingRequestResponseInvalidation and conformance BindingRequestResponseInvalidation;
  if (!lazy protocol witness table cache variable for type BindingRequestResponseInvalidation and conformance BindingRequestResponseInvalidation)
  {
    type metadata accessor for BindingRequestResponseInvalidation();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BindingRequestResponseInvalidation and conformance BindingRequestResponseInvalidation);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore19ModelRequestFailure33_8A1376CE9C4D710355983652056232D0LLO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t static Request.label.getter()
{
  swift_getMetatypeMetadata();

  return _typeName(_:qualified:)();
}

uint64_t Request.performThenCompleteOnMain(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a2;
  v10[5] = a3;
  v11 = *(a5 + 32);

  v11(a1, partial apply for closure #1 in Request.performThenCompleteOnMain(_:_:), v10, a4, a5);
}

uint64_t closure #1 in Request.performThenCompleteOnMain(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a4;
  v33 = a5;
  v34 = a2;
  v35 = a3;
  v36 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v36 - 8);
  __chkstk_darwin(v36);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v37 = *(v12 - 8);
  v38 = v12;
  __chkstk_darwin(v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a6;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd);
  v16 = type metadata accessor for Result();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v30 - v19;
  type metadata accessor for OS_dispatch_queue();
  v31 = static OS_dispatch_queue.main.getter();
  (*(v17 + 16))(v20, a1, v16);
  v21 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = v15;
  *(v22 + 3) = a7;
  v23 = v33;
  *(v22 + 4) = v32;
  *(v22 + 5) = v23;
  (*(v17 + 32))(&v22[v21], v20, v16);
  v24 = &v22[(v18 + v21 + 7) & 0xFFFFFFFFFFFFFFF8];
  v25 = v35;
  *v24 = v34;
  *(v24 + 1) = v25;
  aBlock[4] = partial apply for closure #1 in closure #1 in Request.performThenCompleteOnMain(_:_:);
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_38;
  v26 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v27 = v36;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v28 = v31;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  (*(v39 + 8))(v11, v27);
  return (*(v37 + 8))(v14, v38);
}

uint64_t sub_10023BD54()
{

  return swift_deallocObject();
}

uint64_t Request.response(previousRevision:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd);
  v5[7] = type metadata accessor for Result();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9MusicCore28RequestResponseInvalidatable_pSgMd);
  v5[8] = swift_getTupleTypeMetadata2();
  v5[9] = swift_task_alloc();

  return _swift_task_switch(Request.response(previousRevision:), 0, 0);
}

uint64_t Request.response(previousRevision:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = Request.response(previousRevision:);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);

  return withCheckedContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD00000000000001BLL, 0x80000001004CDBD0, partial apply for closure #1 in Request.response(previousRevision:), v3, v6);
}

{

  return _swift_task_switch(Request.response(previousRevision:), 0, 0);
}

{
  v1 = (v0[9] + *(v0[8] + 48));
  v2 = *v1;
  v3 = v1[1];
  (*(*(v0[7] - 8) + 32))(v0[2], v0[9]);

  v4 = v0[1];

  return v4(v2, v3);
}

uint64_t closure #1 in Request.response(previousRevision:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd);
  type metadata accessor for Result();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9MusicCore28RequestResponseInvalidatable_pSgMd);
  swift_getTupleTypeMetadata2();
  v9 = type metadata accessor for CheckedContinuation();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17[-1] - v11;
  (*(v10 + 16))(&v17[-1] - v11, a1, v9);
  v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  (*(v10 + 32))(v14 + v13, v12, v9);
  (*(a5 + 32))(v17, a3, partial apply for closure #1 in closure #1 in Request.response(previousRevision:), v14, a4, a5);

  return outlined destroy of RequestCancellableTask?(v17);
}

uint64_t closure #1 in closure #1 in Request.response(previousRevision:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd);
  v6 = type metadata accessor for Result();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9MusicCore28RequestResponseInvalidatable_pSgMd);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = __chkstk_darwin(TupleTypeMetadata2);
  v10 = (&v12 + *(v8 + 48) - v9);
  (*(*(v6 - 8) + 16))(&v12 - v9, a1, v6);
  *v10 = a2;
  v10[1] = a3;
  type metadata accessor for CheckedContinuation();
  swift_unknownObjectRetain();
  return CheckedContinuation.resume(returning:)();
}

uint64_t Array<A>.cancel()()
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  return Sequence.forEach(_:)();
}

uint64_t sub_10023C63C()
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd);
  type metadata accessor for Result();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9MusicCore28RequestResponseInvalidatable_pSgMd);
  swift_getTupleTypeMetadata2();
  v1 = type metadata accessor for CheckedContinuation();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in Request.response(previousRevision:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd);
  type metadata accessor for Result();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9MusicCore28RequestResponseInvalidatable_pSgMd);
  swift_getTupleTypeMetadata2();
  type metadata accessor for CheckedContinuation();

  return closure #1 in closure #1 in Request.response(previousRevision:)(a1, a2, a3);
}

uint64_t outlined destroy of RequestCancellableTask?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22RequestCancellableTask_pSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10023C8F4()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd);
  v2 = *(type metadata accessor for Result() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v3, AssociatedTypeWitness);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in Request.performThenCompleteOnMain(_:_:)()
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd);
  v1 = *(type metadata accessor for Result() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  return (*(v0 + 32))(v0 + v2, *v3, v3[1]);
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _ss6ResultOsRi_zRi0_zrlE3getxyq_YKF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(*(a1 + 16) - 8) + 32))(a3, v3);
  }

  (*(*(*(a1 + 24) - 8) + 32))(a2, v3, *(a1 + 24));
  return swift_willThrowTypedImpl();
}

uint64_t *RequestResponse.Controller.__allocating_init(request:)(uint64_t a1)
{
  v2 = v1;
  swift_allocObject();
  v4 = specialized RequestResponse.Controller.init(request:)(a1);
  (*(*(*(v2 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t *RequestResponse.Controller.init(request:)(uint64_t a1)
{
  v3 = *v1;
  v4 = specialized RequestResponse.Controller.init(request:)(a1);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t RequestResponse.Revision.invalidate()()
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  RequestResponseInvalidatable.invalidate()();

  return swift_unknownObjectRelease();
}

uint64_t property wrapper backing initializer of RequestResponse.Controller.revision(uint64_t *a1)
{
  v1 = *a1;
  v3 = a1;
  return Published.init(wrappedValue:)(&v3, v1);
}

uint64_t RequestResponse.Controller.revision.setter()
{
  specialized RequestResponse.Controller.revision.setter();
}

uint64_t RequestResponse.Controller.request.didset(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v21 - v9;
  v11 = *(v3 + 96);
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, v1 + v11, v4);
  v21[1] = *(*(v3 + 88) + 8);
  v13 = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = *(v5 + 8);
  result = v14(v10, v4);
  if ((v13 & 1) == 0)
  {
    v21[0] = v8;
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.invalidate()();

    v16 = *(*v2 + 176);
    swift_beginAccess();
    v17 = *(v2 + v16);
    if (v17)
    {
      v12(v10, (v17 + *(*v17 + 96)), v4);
      v18 = v2 + v11;
      v19 = v21[0];
      v12(v21[0], v18, v4);

      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      v14(v19, v4);
      v14(v10, v4);
      if ((v20 & 1) == 0)
      {
        RequestResponse.Revision.invalidate()();
      }
    }

    return RequestResponse.Controller.setNeedsAutomaticReload()();
  }

  return result;
}

uint64_t RequestResponse.Controller.revision.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t RequestResponse.Controller.setNeedsAutomaticReload()()
{
  v1 = *(*v0 + 144);
  result = swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    return RequestResponse.Controller.setNeedsReload(_:)(0, 0);
  }

  return result;
}

uint64_t RequestResponse.Controller.request.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t RequestResponse.Controller.request.setter(uint64_t a1)
{
  v3 = *v1;
  specialized RequestResponse.Controller.request.setter(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*RequestResponse.Controller.request.modify(void *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[3] = v1;
  v5 = *(*v1 + 80);
  v3[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v3[5] = v6;
  v8 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v3[6] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v3[6] = malloc(*(v6 + 64));
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[7] = v9;
  v11 = *(*v1 + 96);
  swift_beginAccess();
  v12 = *(v7 + 16);
  v4[8] = v12;
  v4[9] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v10, v1 + v11, v5);
  return RequestResponse.Controller.request.modify;
}

void RequestResponse.Controller.request.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), *(v2 + 32));
    specialized RequestResponse.Controller.request.setter(v4);
    v7 = *(v6 + 8);
    v7(v4, v5);
    v7(v3, v5);
  }

  else
  {
    specialized RequestResponse.Controller.request.setter(*(v2 + 56));
    (*(v6 + 8))(v3, v5);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t key path getter for RequestResponse.Controller.revision : <A>RequestResponse.Controller<A>@<X0>(uint64_t *a1@<X8>)
{
  result = RequestResponse.Controller.revision.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for RequestResponse.Controller.revision : <A>RequestResponse.Controller<A>()
{

  specialized RequestResponse.Controller.revision.setter();
}

uint64_t RequestResponse.Controller.revision.didset(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = RequestResponse.Controller.revision.getter();
  v6 = *(v5 + *(*v5 + 112));

  v8 = *(a1 + *(*a1 + 112));
  if (v6 != v8)
  {
    v9 = RequestResponse.Controller.revision.getter();
    v10 = *(v9 + *(*v9 + 112));

    if (v8 >= v10)
    {
      if (one-time initialization token for rrc != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Logger.rrc);
      swift_retain_n();

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 134349312;
        v30 = RequestResponse.Controller.revision.getter();
        v31 = *(v30 + *(*v30 + 112));

        *(v29 + 4) = v31;

        *(v29 + 12) = 2050;
        *(v29 + 14) = v8;

        _os_log_impl(&_mh_execute_header, v27, v28, "Attempted to apply a revision which ID (%{public}ld) is older than the previous revision's (%{public}ld).", v29, 0x16u);
      }

      else
      {
      }

      specialized RequestResponse.Controller.revision.setter(v32);
    }

    else
    {
      v11 = *(*v2 + 184);
      v12 = *(v2 + v11);
      if (v12)
      {
        v13 = *(v12 + *(*v12 + 112));

        v14 = RequestResponse.Controller.revision.getter();

        v15 = *(v14 + *(*v14 + 112));

        if (v15 >= v13)
        {
          *(v2 + v11) = 0;
        }
      }

      v16 = *(*v2 + 176);
      swift_beginAccess();
      v17 = *(v2 + v16);
      if (v17)
      {
        v18 = *(v17 + *(*v17 + 112));

        v19 = RequestResponse.Controller.revision.getter();

        v20 = *(v19 + *(*v19 + 112));

        if (v20 >= v18)
        {
          *(v2 + v16) = 0;
        }
      }

      v21 = RequestResponse.Controller.revision.getter();
      RequestResponse.Controller.didApplyRevision(_:)(v21);
      v22 = *(*v21 + 112);
      swift_beginAccess();
      v24 = *(v4 + 80);
      v23 = *(v4 + 88);
      type metadata accessor for RequestResponse.Revision();
      swift_getFunctionTypeMetadata2();
      type metadata accessor for Array();
      Dictionary.subscript.getter();
      if (v60)
      {
        v25 = swift_endAccess();
        v61[0] = v60;
        __chkstk_darwin(v25);
        swift_getWitnessTable();
        Sequence.forEach(_:)();
      }

      else
      {
        swift_endAccess();
      }

      swift_beginAccess();
      type metadata accessor for Dictionary();
      Dictionary.subscript.setter();
      swift_endAccess();
      v33 = RequestResponse.Controller.revision.getter();
      v34 = *(v33 + *(*v33 + 120) + 8);
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      v36 = (*(v34 + 40))(ObjectType, v34);
      swift_unknownObjectRelease();
      if (v36)
      {
        if (one-time initialization token for rrc != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        __swift_project_value_buffer(v37, static Logger.rrc);
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v59 = v22;
          v41 = swift_slowAlloc();
          v61[0] = v41;
          *v40 = 136446210;
          v42 = (*(v23 + 24))(v24, v23);
          v44 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v42, v43, v61);

          *(v40 + 4) = v44;
          _os_log_impl(&_mh_execute_header, v38, v39, "╭ %{public}s", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v41);
          v22 = v59;
        }

        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&_mh_execute_header, v45, v46, "╞ 🔄 Invalid", v47, 2u);
        }

        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 134349056;
          *(v50 + 4) = *(v21 + v22);

          _os_log_impl(&_mh_execute_header, v48, v49, "╰ RevisionID=%{public}ld", v50, 0xCu);
        }

        else
        {
        }

        RequestResponse.Controller.setNeedsAutomaticReload()();
      }

      else
      {
        v51 = RequestResponse.Controller.revision.getter();
        v52 = *(v51 + *(*v51 + 112));

        v53 = RequestResponse.Controller.revision.getter();
        v54 = *(v53 + *(*v53 + 120) + 8);
        swift_unknownObjectRetain();

        v55 = swift_getObjectType();
        v56 = swift_allocObject();
        swift_weakInit();
        v57 = swift_allocObject();
        v57[2] = v24;
        v57[3] = v23;
        v57[4] = v56;
        v57[5] = v52;
        v58 = *(v54 + 24);

        v58(partial apply for closure #2 in RequestResponse.Controller.revision.didset, v57, v55, v54);
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t RequestResponse.Controller.didApplyRevision(_:)(uint64_t a1)
{
  v3 = (v1 + *(*v1 + 128));
  result = swift_beginAccess();
  v5 = *v3;
  if (*v3)
  {

    v5(v1, a1);
    return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v5);
  }

  return result;
}

uint64_t closure #2 in RequestResponse.Controller.revision.didset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = RequestResponse.Controller.revision.getter();
    v12 = *(v11 + *(*v11 + 112));

    if (v12 == a4)
    {
      if (one-time initialization token for rrc != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static Logger.rrc);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v37[0] = v17;
        *v16 = 136446210;
        v18 = (*(a6 + 24))(a5, a6);
        v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, v37);

        *(v16 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v14, v15, "╭ %{public}s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v17);
      }

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "╞ 🔄 Invalidated", v23, 2u);
      }

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 134349056;
        *(v26 + 4) = a4;
        _os_log_impl(&_mh_execute_header, v24, v25, "╞ RevisionID=%{public}ld", v26, 0xCu);
      }

      swift_unknownObjectRetain();
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v37[0] = v30;
        *v29 = 136446210;
        swift_getObjectType();
        v31 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
        v33 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v31, v32, v37);

        *(v29 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v27, v28, "╰ Invalidator=%{public}s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v30);
      }

      v34 = (v10 + *(*v10 + 136));
      swift_beginAccess();
      v35 = *v34;
      if (*v34)
      {

        v36 = RequestResponse.Controller.revision.getter();
        v35(v10, v36);
        outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v35);
      }

      RequestResponse.Controller.setNeedsAutomaticReload()();
    }
  }

  return result;
}

uint64_t RequestResponse.Controller.$revision.getter()
{
  swift_beginAccess();
  type metadata accessor for RequestResponse.Revision();
  type metadata accessor for Published();
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t RequestResponse.Controller.willReloadRequest.getter()
{
  v1 = (v0 + *(*v0 + 112));
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(*v1);
  return v2;
}

uint64_t RequestResponse.Controller.willReloadRequest.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 112));
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v6);
}

uint64_t RequestResponse.Controller.willApplyRevision.getter()
{
  v1 = (v0 + *(*v0 + 120));
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(*v1);
  return v2;
}

uint64_t RequestResponse.Controller.willApplyRevision.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 120));
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v6);
}

uint64_t RequestResponse.Controller.didApplyRevision.getter()
{
  v1 = (v0 + *(*v0 + 128));
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(*v1);
  return v2;
}

uint64_t RequestResponse.Controller.didApplyRevision.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 128));
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v6);
}

uint64_t RequestResponse.Controller.revisionDidInvalidate.getter()
{
  v1 = (v0 + *(*v0 + 136));
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(*v1);
  return v2;
}

uint64_t RequestResponse.Controller.revisionDidInvalidate.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 136));
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v6);
}

uint64_t RequestResponse.Controller.isAutomaticReloadingEnabled.didset(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = *(*v2 + 144);
  result = swift_beginAccess();
  if (*(v2 + v4) != v3)
  {
    v6 = RequestResponse.Controller.revision.getter();
    v7 = *(v6 + *(*v6 + 120) + 8);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v9 = (*(v7 + 40))(ObjectType, v7);
    result = swift_unknownObjectRelease();
    if (v9)
    {
      v10 = *(*v2 + 176);
      swift_beginAccess();
      if (!*(v2 + v10))
      {
        return RequestResponse.Controller.setNeedsAutomaticReload()();
      }

      v11 = RequestResponse.Revision.isValid.getter();

      if (!v11)
      {
        return RequestResponse.Controller.setNeedsAutomaticReload()();
      }
    }
  }

  return result;
}

BOOL RequestResponse.Revision.isValid.getter()
{
  v1 = *(v0 + *(*v0 + 120) + 8);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 40);
  swift_unknownObjectRetain();
  LOBYTE(v1) = v3(ObjectType, v1);
  swift_unknownObjectRelease();
  return (v1 & 1) == 0;
}

uint64_t RequestResponse.Controller.isAutomaticReloadingEnabled.getter()
{
  v1 = *(*v0 + 144);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RequestResponse.Controller.isAutomaticReloadingEnabled.setter(char a1)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return RequestResponse.Controller.isAutomaticReloadingEnabled.didset(v4);
}

void (*RequestResponse.Controller.isAutomaticReloadingEnabled.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  *(v3 + 24) = v1;
  v5 = *(*v1 + 144);
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return RequestResponse.Controller.isAutomaticReloadingEnabled.modify;
}

uint64_t RequestResponse.Controller.isPaused.didset(char a1)
{
  v3 = *(*v1 + 152);
  result = swift_beginAccess();
  if (*(v1 + v3) & 1) == 0 && (a1)
  {
    v5 = *(v1 + *(*v1 + 184));
    if (v5)
    {
      v6 = *(*v5 + 112);
      v7 = *(v5 + v6);

      v8 = RequestResponse.Controller.revision.getter();
      v9 = *(v8 + *(*v8 + 112));

      if (v9 < v7)
      {
        if (one-time initialization token for rrc != -1)
        {
          swift_once();
        }

        v10 = type metadata accessor for Logger();
        __swift_project_value_buffer(v10, static Logger.rrc);
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v11, v12, "╭ ⏰ RRC resumed, applying pending revision", v13, 2u);
        }

        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 134349056;
          *(v16 + 4) = *(v5 + v6);

          _os_log_impl(&_mh_execute_header, v14, v15, "╞ RevisionID=%{public}ld", v16, 0xCu);
        }

        else
        {
        }

        RequestResponse.Controller.apply(_:)(v5);
      }
    }
  }

  return result;
}

void RequestResponse.Controller.apply(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(MSVBlockGuard);
  v16[4] = closure #1 in RequestResponse.Controller.apply(_:);
  v16[5] = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
  v16[3] = &block_descriptor_24_2;
  v5 = _Block_copy(v16);
  v6 = [v4 initWithTimeout:v5 interruptionHandler:10.0];
  _Block_release(v5);

  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v2;
  v7[4] = a1;
  v8 = (v2 + *(*v2 + 120));
  swift_beginAccess();
  v9 = *v8;
  if (*v8)
  {

    v10 = v6;
    outlined copy of (@escaping @callee_guaranteed () -> ())?(v9);
    if (one-time initialization token for rrc != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.rrc);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "╞ 🫸 calling willApplyRevision; Waiting for client to accept it.", v14, 2u);
    }

    v9(v2, a1, partial apply for closure #2 in RequestResponse.Controller.apply(_:), v7);

    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v9);
  }

  else
  {

    v15 = v6;
    closure #2 in RequestResponse.Controller.apply(_:)(v15);
  }
}

uint64_t RequestResponse.Controller.isPaused.getter()
{
  v1 = *(*v0 + 152);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RequestResponse.Controller.isPaused.setter(char a1)
{
  v3 = *(*v1 + 152);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return RequestResponse.Controller.isPaused.didset(v4);
}

void (*RequestResponse.Controller.isPaused.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  *(v3 + 24) = v1;
  v5 = *(*v1 + 152);
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return RequestResponse.Controller.isPaused.modify;
}

void RequestResponse.Controller.isAutomaticReloadingEnabled.modify(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *a1;
  a3(*(*a1 + 32));

  free(v3);
}

uint64_t RequestResponse.Controller.setNeedsReload(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = *v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v8 - 8);
  __chkstk_darwin(v8);
  v46 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DispatchQoS();
  v45 = *(v47 - 8);
  v10 = __chkstk_darwin(v47);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v6 + 80);
  v14 = *(v13 - 8);
  result = __chkstk_darwin(v10);
  v17 = &v43 - v16;
  if (a1)
  {
    v18 = swift_allocObject();
    v18[2] = v13;
    v18[3] = *(v7 + 88);
    v18[4] = a1;
    v18[5] = a2;
    aBlock[6] = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed RequestResponse.Controller<A>, @guaranteed RequestResponse.Revision<A>) -> ();
    aBlock[7] = v18;
    swift_beginAccess();
    type metadata accessor for RequestResponse.Revision();
    swift_getFunctionTypeMetadata2();
    type metadata accessor for Array();

    Array.append(_:)();
    result = swift_endAccess();
    v6 = *v3;
  }

  v19 = *(v6 + 192);
  if ((*(v3 + v19) & 1) == 0)
  {
    *(v3 + v19) = 1;
    v20 = *(*v3 + 176);
    swift_beginAccess();
    v21 = *(v3 + v20);
    if (v21)
    {
      v44 = v8;
      v22 = *(*v3 + 96);
      swift_beginAccess();
      (*(v14 + 16))(v17, v3 + v22, v13);
      v23 = *(*v21 + 96);
      v24 = *(v7 + 88);
      v25 = *(v24 + 40);

      LOBYTE(v23) = v25(v21 + v23, v13, v24);
      (*(v14 + 8))(v17, v13);
      if (v23)
      {
        if (one-time initialization token for rrc != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        __swift_project_value_buffer(v26, static Logger.rrc);
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          aBlock[0] = v43;
          *v29 = 136446210;
          v30 = (*(v24 + 24))(v13, v24);
          v32 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v30, v31, aBlock);

          *(v29 + 4) = v32;
          _os_log_impl(&_mh_execute_header, v27, v28, "╭ %{public}s", v29, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v43);
        }

        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&_mh_execute_header, v33, v34, "╞ 🛑 Cancelled", v35, 2u);
        }

        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 134349056;
          *(v38 + 4) = *(v21 + *(*v21 + 112));

          _os_log_impl(&_mh_execute_header, v36, v37, "╰ RevisionID=%{public}ld", v38, 0xCu);
        }

        else
        {
        }

        v39 = *(v21 + *(*v21 + 112));
        swift_beginAccess();
        specialized Set._Variant.insert(_:)(&v49, v39);
        swift_endAccess();
        RequestResponse.Revision.invalidate()();
      }

      v8 = v44;
    }

    type metadata accessor for OS_dispatch_queue();
    v40 = static OS_dispatch_queue.main.getter();
    aBlock[4] = partial apply for closure #1 in RequestResponse.Controller.setNeedsReload(_:);
    aBlock[5] = v3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_39;
    v41 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v42 = v46;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v41);

    (*(v48 + 8))(v42, v8);
    return (*(v45 + 8))(v12, v47);
  }

  return result;
}

uint64_t RequestResponse.Controller.reloadIfNeeded()(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v6);
  v11 = v60 - v10;
  v13 = *(v12 + 192);
  if (*(v1 + v13) != 1)
  {
    return result;
  }

  *(v1 + v13) = 0;
  v14 = *(*v1 + 176);
  swift_beginAccess();
  v63 = v14;
  v15 = *(v2 + v14);
  if (v15 || (v15 = *(v2 + *(*v2 + 184))) != 0)
  {
    v16 = *(v15 + *(*v15 + 112));
    v17 = v16 + 1;
    if (!__OFADD__(v16, 1))
    {
      goto LABEL_5;
    }
  }

  else
  {
    v58 = RequestResponse.Controller.revision.getter();
    v59 = *(v58 + *(*v58 + 112));

    v17 = v59 + 1;
    if (!__OFADD__(v59, 1))
    {
LABEL_5:
      v61 = v8;
      v18 = *(*v2 + 96);
      swift_beginAccess();
      v62 = v5;
      v60[0] = v5[2];
      v60[1] = v5 + 2;
      (v60[0])(v11, v2 + v18, v4);
      v19 = *(*v2 + 160);
      swift_beginAccess();
      v71[0] = *(v2 + v19);
      v67 = v11;
      v68 = v17;
      *&v69 = v17;
      swift_beginAccess();
      v64 = *(v3 + 88);
      v65 = v4;
      type metadata accessor for RequestResponse.Revision();
      swift_getFunctionTypeMetadata2();
      type metadata accessor for Array();
      type metadata accessor for Dictionary();

      v8 = v67;
      Dictionary.subscript.setter();
      swift_endAccess();
      *(v2 + v19) = static Array._allocateUninitialized(_:)();

      v20 = (v2 + *(*v2 + 112));
      swift_beginAccess();
      v21 = *v20;
      if (*v20)
      {

        v21(v2, v8);
        outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v21);
      }

      swift_checkMetadataState();
      swift_allocObject();
      v5 = specialized RequestResponse.Revision.init(id:request:)(v68, v8);
      *(v2 + v63) = v5;

      if (one-time initialization token for rrc == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_27:
  swift_once();
LABEL_8:
  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.rrc);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v66 = v5;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v72[0] = v27;
    *v26 = 136446210;
    v28 = (*(v64 + 24))();
    v30 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v28, v29, v72);

    *(v26 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v23, v24, "╭ %{public}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);

    v8 = v67;
  }

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "╞ 🕺Performing", v33, 2u);
  }

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 134349056;
    *(v36 + 4) = v68;
    _os_log_impl(&_mh_execute_header, v34, v35, "╞ RevisionID=%{public}ld", v36, 0xCu);
  }

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v72[0] = v40;
    *v39 = 136446210;
    swift_beginAccess();
    (v60[0])(v61, v8, v65);
    v41 = String.init<A>(describing:)();
    v43 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v41, v42, v72);

    *(v39 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v37, v38, "╰ Request=%{public}s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v40);
  }

  v44 = v68;
  swift_beginAccess();
  v45 = RequestResponse.Controller.revision.getter();
  v46 = swift_allocObject();
  swift_weakInit();
  v47 = swift_allocObject();
  v47[2] = v66;
  v47[3] = v46;
  v47[4] = v44;
  v48 = v64;
  v49 = v8;
  v50 = *(v64 + 32);

  v51 = v65;
  v50(v72, v45, partial apply for closure #1 in RequestResponse.Controller.reloadIfNeeded(), v47, v65, v48);

  outlined init with copy of RequestCancellableTask?(v72, &v69);
  if (v70)
  {
    outlined init with take of ActionPerforming(&v69, v71);
    v52 = v63;
    swift_beginAccess();
    v53 = *(v2 + v52);
    v54 = v62;
    if (v53)
    {
      swift_endAccess();
      v55 = v67;
      if (*(v53 + *(*v53 + 112)) == v68)
      {
        type metadata accessor for RequestResponse.Controller.TaskInvalidator();
        outlined init with copy of ActionPerforming(v71, &v69);
        v56 = swift_allocObject();
        *(v56 + 56) = 0;
        *(v56 + 64) = 0;
        *(v56 + 72) = 0;
        outlined init with take of ActionPerforming(&v69, v56 + 16);
        WitnessTable = swift_getWitnessTable();

        specialized RequestResponse.Revision.invalidation.setter(v56, WitnessTable);
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v71);
      outlined destroy of RequestCancellableTask?(v72);
      return (v54[1])(v55, v51);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v71);
      outlined destroy of RequestCancellableTask?(v72);
      swift_endAccess();

      return (v54[1])(v67, v51);
    }
  }

  else
  {
    outlined destroy of RequestCancellableTask?(v72);

    outlined destroy of RequestCancellableTask?(&v69);
    return (v62[1])(v49, v51);
  }
}

uint64_t RequestResponse.Controller.TaskInvalidator.__allocating_init(task:)(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  outlined init with take of ActionPerforming(a1, v2 + 16);
  return v2;
}

uint64_t RequestResponse.Controller.TaskInvalidator.isInvalid.didset(uint64_t result)
{
  if (*(v1 + 56) == 1 && (result & 1) == 0)
  {
    v2 = *(v1 + 40);
    v3 = *(v1 + 48);
    __swift_project_boxed_opaque_existential_0Tm((v1 + 16), v2);
    return (*(v3 + 8))(v2, v3);
  }

  return result;
}

uint64_t RequestResponse.Controller.TaskInvalidator.isInvalid.setter(char a1)
{
  v2 = *(v1 + 56);
  *(v1 + 56) = a1;
  return RequestResponse.Controller.TaskInvalidator.isInvalid.didset(v2);
}

uint64_t RequestResponse.Controller.TaskInvalidator.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for RequestResponseInvalidatable.onInvalidation.getter in conformance RequestResponse.Controller<A>.TaskInvalidator()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v1);
  return v1;
}

uint64_t protocol witness for RequestResponseInvalidatable.onInvalidation.setter in conformance RequestResponse.Controller<A>.TaskInvalidator(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 64);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v5);
}

uint64_t (*protocol witness for RequestResponseInvalidatable.isInvalid.modify in conformance RequestResponse.Controller<A>.TaskInvalidator(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 56);
  return protocol witness for RequestResponseInvalidatable.isInvalid.modify in conformance RequestResponse.Controller<A>.TaskInvalidator;
}

uint64_t closure #1 in RequestResponse.Controller.reloadIfNeeded()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(*a4 + 104);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd);
  v13 = type metadata accessor for Result();
  (*(*(v13 - 8) + 24))(a4 + v12, a1, v13);
  swift_endAccess();
  if (a2)
  {
    v14 = a2;
  }

  else
  {
    type metadata accessor for GenericRequestResponseInvalidation();
    v14 = swift_allocObject();
    *(v14 + 32) = 0;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 16) = 0x636972656E6547;
    *(v14 + 24) = 0xE700000000000000;
    a3 = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type GenericRequestResponseInvalidation and conformance GenericRequestResponseInvalidation, type metadata accessor for GenericRequestResponseInvalidation);
  }

  swift_unknownObjectRetain();
  specialized RequestResponse.Revision.invalidation.setter(v14, a3);
  swift_unknownObjectRelease();
  type metadata accessor for OS_dispatch_queue();
  v15 = swift_allocObject();
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = a4;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(partial apply for closure #1 in closure #1 in RequestResponse.Controller.reloadIfNeeded(), v15);
}

void closure #1 in closure #1 in RequestResponse.Controller.reloadIfNeeded()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (one-time initialization token for rrc != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.rrc);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v34[0] = v12;
      *v11 = 136446210;
      v13 = (*(*(v5 + 88) + 24))(*(v5 + 80));
      v15 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v13, v14, v34);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "╭ %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
    }

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "╞ ✅ Finished Loading", v18, 2u);
    }

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134349056;
      *(v21 + 4) = a2;
      _os_log_impl(&_mh_execute_header, v19, v20, "╞ RevisionID=%{public}ld", v21, 0xCu);
    }

    v22 = *(a3 + *(*a3 + 112));
    swift_beginAccess();
    specialized Set._Variant.remove(_:)(v22);
    v24 = v23;
    swift_endAccess();
    if (v24)
    {
      v25 = *(*v7 + 152);
      swift_beginAccess();
      if (*(v7 + v25) != 1)
      {
        v32 = RequestResponse.Controller.revision.getter();
        v33 = *(v32 + *(*v32 + 112));

        if (v33 < v22)
        {
          RequestResponse.Controller.apply(_:)(a3);
        }

        goto LABEL_24;
      }

      v26 = *(*v7 + 184);
      v27 = *(v7 + v26);
      if (v27)
      {
        if (*(v27 + *(*v27 + 112)) >= a2)
        {
          goto LABEL_24;
        }
      }

      else if (a2 <= 0)
      {
LABEL_24:

        return;
      }

      *(v7 + v26) = a3;

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        v31 = "╰ 💤 Set as Pending; RRC is Paused";
        goto LABEL_22;
      }
    }

    else
    {
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        v31 = "╰ ⏭ Skipping revision; Cancelled";
LABEL_22:
        _os_log_impl(&_mh_execute_header, v28, v29, v31, v30, 2u);
      }
    }
  }
}

void closure #1 in RequestResponse.Controller.apply(_:)()
{
  if (one-time initialization token for rrc != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.rrc);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
  }
}

void closure #2 in RequestResponse.Controller.apply(_:)(void *a1)
{
  [a1 disarm];

  specialized RequestResponse.Controller.revision.setter();

  if (one-time initialization token for rrc != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.rrc);
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v2, "╰ 👌 Applied", v3, 2u);
  }
}

uint64_t RequestResponse.Controller.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96), *(*v0 + 80));
  v1 = *(*v0 + 104);
  type metadata accessor for RequestResponse.Revision();
  v2 = type metadata accessor for Published();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + *(*v0 + 112)));
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + *(*v0 + 120)));
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + *(*v0 + 128)));
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + *(*v0 + 136)));

  return v0;
}

uint64_t RequestResponse.Revision.result.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 104);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd);
  v4 = type metadata accessor for Result();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t RequestResponse.Revision.content.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd);
  v5 = type metadata accessor for Result();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  v9 = *(v3 + 104);
  swift_beginAccess();
  (*(v6 + 16))(v8, &v1[v9], v5);
  _ss6ResultOsRi_zRi0_zrlE3getxyq_YKF(v5, &v12, a1);
  return (*(*(AssociatedTypeWitness - 8) + 56))(a1, 0, 1, AssociatedTypeWitness);
}

uint64_t RequestResponse.Revision.invalidation.didset(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  result = (*(a2 + 40))(ObjectType, a2);
  if (result)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    RequestResponseInvalidatable.invalidate()();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t RequestResponse.Revision.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96), *(*v0 + 80));
  v1 = *(*v0 + 104);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd);
  v2 = type metadata accessor for Result();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t RequestResponse.Controller.__deallocating_deinit(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t one-time initialization function for rrc()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.rrc);
  __swift_project_value_buffer(v0, static Logger.rrc);
  return Logger.init(subsystem:category:)();
}

uint64_t *specialized RequestResponse.Revision.init(id:request:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 80);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd);
  v7 = type metadata accessor for Result();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v15 - v9);
  *(v2 + *(v5 + 112)) = a1;
  (*(*(v6 - 8) + 16))(v2 + *(*v2 + 96), a2, v6);
  type metadata accessor for RequestResponse.Revision.InitialResponseLoadingError();
  swift_getWitnessTable();
  *v10 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  (*(v8 + 32))(v2 + *(*v2 + 104), v10, v7);
  type metadata accessor for GenericRequestResponseInvalidation();
  v11 = swift_allocObject();
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  *(v11 + 48) = 0;
  *(v11 + 16) = 0x636972656E6547;
  *(v11 + 24) = 0xE700000000000000;
  v12 = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type GenericRequestResponseInvalidation and conformance GenericRequestResponseInvalidation, type metadata accessor for GenericRequestResponseInvalidation);
  v13 = (v2 + *(*v2 + 120));
  *v13 = v11;
  v13[1] = v12;
  return v2;
}

uint64_t *specialized RequestResponse.Controller.init(request:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = (v2 + *(*v2 + 112));
  *v5 = 0;
  v5[1] = 0;
  v6 = (v2 + *(*v2 + 120));
  *v6 = 0;
  v6[1] = 0;
  v7 = (v2 + *(*v2 + 128));
  *v7 = 0;
  v7[1] = 0;
  v8 = (v2 + *(*v2 + 136));
  *v8 = 0;
  v8[1] = 0;
  *(v2 + *(*v2 + 144)) = 0;
  *(v2 + *(*v2 + 152)) = 0;
  v9 = *(*v2 + 160);
  v10 = *(v4 + 80);
  type metadata accessor for RequestResponse.Revision();
  swift_getFunctionTypeMetadata2();
  *(v2 + v9) = static Array._allocateUninitialized(_:)();
  v11 = *(*v2 + 168);
  v12 = type metadata accessor for Array();
  swift_getTupleTypeMetadata2();
  v13 = static Array._allocateUninitialized(_:)();
  v14 = specialized Dictionary.init(dictionaryLiteral:)(v13, &type metadata for Int, v12, &protocol witness table for Int);

  *(v2 + v11) = v14;
  *(v2 + *(*v2 + 176)) = 0;
  *(v2 + *(*v2 + 184)) = 0;
  *(v2 + *(*v2 + 192)) = 0;
  *(v2 + *(*v2 + 200)) = &_swiftEmptySetSingleton;
  (*(*(v10 - 8) + 16))(v2 + *(*v2 + 96), a1, v10);
  swift_checkMetadataState();
  swift_allocObject();
  v15 = specialized RequestResponse.Revision.init(id:request:)(0, a1);
  RequestResponse.Revision.invalidate()();
  swift_beginAccess();
  v16 = *v15;
  v18 = v15;
  Published.init(wrappedValue:)(&v18, v16);
  swift_endAccess();
  return v2;
}

uint64_t sub_100241D7C@<X0>(uint64_t *a1@<X8>)
{
  result = RequestResponse.Controller.revision.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100241DA8()
{

  specialized RequestResponse.Controller.revision.setter();
}

__n128 sub_100241DF8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t specialized RequestResponse.Controller.revision.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  RequestResponse.Controller.revision.didset(v1);
}

uint64_t specialized RequestResponse.Controller.request.setter(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v10[-v5];
  v8 = *(v7 + 96);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v8, v3);
  swift_beginAccess();
  (*(v4 + 24))(v1 + v8, a1, v3);
  swift_endAccess();
  RequestResponse.Controller.request.didset(v6);
  return (*(v4 + 8))(v6, v3);
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002420C4()
{

  return swift_deallocObject();
}

uint64_t type metadata completion function for RequestResponse.Controller()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for RequestResponse.Revision();
    result = type metadata accessor for Published();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t type metadata completion function for RequestResponse.Revision()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd);
    v0 = type metadata accessor for Result();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return v0;
}

uint64_t instantiation function for generic protocol witness table for RequestResponse.Controller<A>.TaskInvalidator(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized RequestResponse.Controller.TaskInvalidator.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  v2._countAndFlagsBits = (*(a2 + 24))();
  String.append(_:)(v2);

  return 0x3A664F6B736154;
}

uint64_t specialized RequestResponse.Controller.$revision.setter(uint64_t a1)
{
  type metadata accessor for RequestResponse.Revision();
  v2 = type metadata accessor for Published.Publisher();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - v3, a1);
  swift_beginAccess();
  type metadata accessor for Published();
  Published.projectedValue.setter();
  return swift_endAccess();
}

uint64_t sub_100242670()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1002426A8()
{

  return swift_deallocObject();
}

uint64_t outlined init with copy of RequestCancellableTask?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22RequestCancellableTask_pSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized RequestResponse.Revision.invalidation.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(*v2 + 120));
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  swift_unknownObjectRetain();
  RequestResponse.Revision.invalidation.didset(v4, v5);

  return swift_unknownObjectRelease();
}

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100242814()
{

  return swift_deallocObject();
}

uint64_t sub_100242860()
{

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in RequestResponse.Controller.revision.didset(uint64_t (**a1)(uint64_t *, uint64_t *))
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v5 = *(v1 + 24);
  v6 = v2;
  return v3(&v6, &v5);
}

uint64_t sub_1002428FC()
{

  return swift_deallocObject();
}

uint64_t BindingRequestResponseInvalidation.__allocating_init(triggers:)(uint64_t a1)
{
  v2 = swift_allocObject();
  BindingRequestResponseInvalidation.init(triggers:)(a1);
  return v2;
}

uint64_t GenericRequestResponseInvalidation.__allocating_init(label:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

Swift::Void __swiftcall RequestResponseInvalidatable.invalidate()()
{
  v3 = v1;
  v4 = v0;
  if (((*(v1 + 40))() & 1) == 0)
  {
    (*(v3 + 48))(1, v4, v3);
    v5 = (*(v3 + 16))(v4, v3);
    if (v5)
    {
      v6 = v5;
      v5(v2, v3);

      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v6);
    }
  }
}

uint64_t GenericRequestResponseInvalidation.init(label:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t GenericRequestResponseInvalidation.onInvalidation.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v1);
  return v1;
}

uint64_t GenericRequestResponseInvalidation.onInvalidation.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v5);
}

uint64_t GenericRequestResponseInvalidation.isInvalid.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

uint64_t GenericRequestResponseInvalidation.deinit()
{

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + 32));
  return v0;
}

uint64_t GenericRequestResponseInvalidation.__deallocating_deinit()
{

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GenericRequestResponseInvalidation()
{
  v1 = *(*v0 + 16);

  return v1;
}

void *CompoundRequestResponseInvalidation.__allocating_init(responseInvalidations:)(uint64_t a1)
{
  swift_allocObject();
  v2 = specialized CompoundRequestResponseInvalidation.init(responseInvalidations:)(a1);

  return v2;
}

void *CompoundRequestResponseInvalidation.init(responseInvalidations:)(uint64_t a1)
{
  v1 = specialized CompoundRequestResponseInvalidation.init(responseInvalidations:)(a1);

  return v1;
}

uint64_t CompoundRequestResponseInvalidation.append(_:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = v2;
    v5 = result;
    ObjectType = swift_getObjectType();
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = *(a2 + 24);
    swift_unknownObjectRetain();

    v8(partial apply for closure #1 in CompoundRequestResponseInvalidation.append(_:), v7, ObjectType, a2);

    swift_beginAccess();
    v9 = *(v2 + 40);
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 40) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
      *(v3 + 40) = v9;
    }

    v12 = v9[2];
    v11 = v9[3];
    if (v12 >= v11 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v9);
    }

    v9[2] = v12 + 1;
    v13 = &v9[2 * v12];
    v13[4] = v5;
    v13[5] = a2;
    *(v3 + 40) = v9;
    swift_endAccess();
    if (((*(a2 + 40))(ObjectType, a2) & 1) != 0 && (swift_beginAccess(), *(v3 + 32) != 1) && (*(v3 + 32) = 1, swift_beginAccess(), (v14 = *(v3 + 16)) != 0))
    {

      v14(v5, a2);
      swift_unknownObjectRelease();
      return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v14);
    }

    else
    {
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t closure #1 in CompoundRequestResponseInvalidation.append(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    if (*(v5 + 32) == 1)
    {
    }

    *(v5 + 32) = 1;
    swift_beginAccess();
    v6 = *(v5 + 16);
    if (!v6)
    {
    }

    else
    {

      v6(a1, a2);

      return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v6);
    }
  }

  return result;
}

Swift::Void __swiftcall CompoundRequestResponseInvalidation.append(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = *(a1._rawValue + 2);
  swift_beginAccess();
  swift_beginAccess();
  if (v4)
  {
    v5 = (a1._rawValue + 32);
    do
    {
      v15 = *v5;
      v6 = *v5;
      ObjectType = swift_getObjectType();
      v8 = swift_allocObject();
      swift_weakInit();
      v9 = *(*(&v15 + 1) + 24);
      swift_unknownObjectRetain_n();

      v9(closure #1 in CompoundRequestResponseInvalidation.append(_:)partial apply, v8, ObjectType, *(&v15 + 1));

      swift_beginAccess();
      v10 = *(v2 + 40);
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 40) = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10[2] + 1, 1, v10);
        *(v2 + 40) = v10;
      }

      v13 = v10[2];
      v12 = v10[3];
      if (v13 >= v12 >> 1)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
      }

      v10[2] = v13 + 1;
      *&v10[2 * v13 + 4] = v15;
      *(v2 + 40) = v10;
      swift_endAccess();
      if (((*(*(&v15 + 1) + 40))(ObjectType, *(&v15 + 1)) & 1) != 0 && (*(v2 + 32) & 1) == 0 && (*(v2 + 32) = 1, (v14 = *(v2 + 16)) != 0))
      {

        v14(v6, *(&v15 + 1));
        swift_unknownObjectRelease_n();
        outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v14);
      }

      else
      {
        swift_unknownObjectRelease_n();
      }

      ++v5;
      --v4;
    }

    while (v4);
  }
}

uint64_t CompoundRequestResponseInvalidation.debugDescription.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);

  if (v2)
  {
    v4 = 0;
    v5 = v1 + 40;
    while (v4 < *(v1 + 16))
    {
      ++v4;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v6 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
      v8 = v7;

      v9._countAndFlagsBits = v6;
      v9._object = v8;
      String.append(_:)(v9);

      v10._countAndFlagsBits = 124;
      v10._object = 0xE100000000000000;
      String.append(_:)(v10);
      swift_unknownObjectRelease();

      v5 += 16;
      if (v2 == v4)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    v11._countAndFlagsBits = 93;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);

    return 0x646E756F706D6F43;
  }

  return result;
}

uint64_t CompoundRequestResponseInvalidation.isInvalid.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t CompoundRequestResponseInvalidation.deinit()
{
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + 16));

  return v0;
}

uint64_t CompoundRequestResponseInvalidation.__deallocating_deinit()
{
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t BindingRequestResponseInvalidation.__allocating_init(trigger:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14MusicUtilities14BindingTrigger_pGMd);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004F2400;
  outlined init with copy of ActionPerforming(a1, v2 + 32);
  v3 = swift_allocObject();
  BindingRequestResponseInvalidation.init(triggers:)(v2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v3;
}

uint64_t BindingRequestResponseInvalidation.init(triggers:)(uint64_t a1)
{
  v2 = v1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 40) = 0;
  *(v2 + 32) = 0;
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  type metadata accessor for Whitetail.Binding();
  swift_allocObject();

  *(v2 + 16) = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(v6, 0, partial apply for closure #1 in BindingRequestResponseInvalidation.init(triggers:), v5);

  return v2;
}

uint64_t closure #1 in BindingRequestResponseInvalidation.init(triggers:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    if (*(v1 + 40) == 1)
    {
    }

    *(v1 + 40) = 1;
    swift_beginAccess();
    v2 = *(v1 + 24);
    if (!v2)
    {
    }

    else
    {
      v3 = lazy protocol witness table accessor for type GenericRequestResponseInvalidation and conformance GenericRequestResponseInvalidation(&lazy protocol witness table cache variable for type BindingRequestResponseInvalidation and conformance BindingRequestResponseInvalidation, type metadata accessor for BindingRequestResponseInvalidation);

      v2(v1, v3);

      return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v2);
    }
  }

  return result;
}

uint64_t BindingRequestResponseInvalidation.debugDescription.getter()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14MusicUtilities9WhitetailO7BindingCSgMd);
  v0._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v0);

  return 0x3D676E69646E6942;
}

uint64_t BindingRequestResponseInvalidation.isInvalid.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

uint64_t BindingRequestResponseInvalidation.deinit()
{

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + 24));
  return v0;
}

uint64_t BindingRequestResponseInvalidation.__deallocating_deinit()
{

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance BindingRequestResponseInvalidation()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14MusicUtilities9WhitetailO7BindingCSgMd);
  v0._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v0);

  return 0x3D676E69646E6942;
}

void *specialized CompoundRequestResponseInvalidation.init(responseInvalidations:)(uint64_t a1)
{
  v2 = v1;
  v20 = v2;
  v2[2] = 0;
  v2 += 2;
  *(v2 + 16) = 0;
  v2[3] = _swiftEmptyArrayStorage;
  v4 = v2 + 3;
  v2[1] = 0;
  v5 = *(a1 + 16);
  v19 = v2 + 2;
  swift_beginAccess();
  v18 = v2;
  swift_beginAccess();
  if (v5)
  {
    v6 = (a1 + 32);
    do
    {
      v21 = v5;
      v22 = *v6;
      v7 = *v6;
      ObjectType = swift_getObjectType();
      v9 = swift_allocObject();
      swift_weakInit();
      v10 = v4;
      v11 = *(*(&v22 + 1) + 24);
      swift_unknownObjectRetain_n();

      v11(closure #1 in CompoundRequestResponseInvalidation.append(_:)partial apply, v9, ObjectType, *(&v22 + 1));
      v4 = v10;

      swift_beginAccess();
      v12 = v20[5];
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20[5] = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
        *v10 = v12;
      }

      v15 = v12[2];
      v14 = v12[3];
      if (v15 >= v14 >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v12);
      }

      v12[2] = v15 + 1;
      *&v12[2 * v15 + 4] = v22;
      *v10 = v12;
      swift_endAccess();
      if (((*(*(&v22 + 1) + 40))(ObjectType, *(&v22 + 1)) & 1) != 0 && (*v19 & 1) == 0 && (*v19 = 1, (v16 = *v18) != 0))
      {

        v16(v7, *(&v22 + 1));
        swift_unknownObjectRelease_n();
        outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v16);
      }

      else
      {
        swift_unknownObjectRelease_n();
      }

      ++v6;
      v5 = v21 - 1;
    }

    while (v21 != 1);
  }

  return v20;
}

uint64_t sub_100243D08()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100243D48()
{

  return swift_deallocObject();
}

uint64_t instantiation function for generic protocol witness table for GenericRequestResponseInvalidation(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GenericRequestResponseInvalidation and conformance GenericRequestResponseInvalidation(&lazy protocol witness table cache variable for type GenericRequestResponseInvalidation and conformance GenericRequestResponseInvalidation, type metadata accessor for GenericRequestResponseInvalidation);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for CompoundRequestResponseInvalidation(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GenericRequestResponseInvalidation and conformance GenericRequestResponseInvalidation(&lazy protocol witness table cache variable for type CompoundRequestResponseInvalidation and conformance CompoundRequestResponseInvalidation, type metadata accessor for CompoundRequestResponseInvalidation);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for BindingRequestResponseInvalidation(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GenericRequestResponseInvalidation and conformance GenericRequestResponseInvalidation(&lazy protocol witness table cache variable for type BindingRequestResponseInvalidation and conformance BindingRequestResponseInvalidation, type metadata accessor for BindingRequestResponseInvalidation);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type GenericRequestResponseInvalidation and conformance GenericRequestResponseInvalidation(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Logger.sharePlayTogether.unsafeMutableAddressor()
{
  if (one-time initialization token for sharePlayTogether != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.sharePlayTogether);
}

uint64_t SharePlayTogetherSession.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of TaskPriority?(a1, v6, &_sypSgMd_0);
  if (!v7)
  {
    outlined destroy of TaskPriority?(v6, &_sypSgMd_0);
    goto LABEL_9;
  }

  type metadata accessor for SharePlayTogetherSession(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v3 = 0;
    return v3 & 1;
  }

  if (*&v5[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_identifier] == *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_identifier) && *&v5[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_identifier + 8] == *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_identifier + 8))
  {

    v3 = 1;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v3 & 1;
}

uint64_t SharePlayTogetherSession.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_identifier);

  return v1;
}

SEL *SharePlayTogetherSession.isPlaceholder.getter(SEL *result)
{
  if (*(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session))
  {
    return [*(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session) *result];
  }

  __break(1u);
  return result;
}

void *SharePlayTogetherSession.title.getter()
{
  result = *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (result)
  {
    v2 = [result localizedSessionName];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id SharePlayTogetherSession.joinToken.getter()
{
  result = *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (result)
  {
    v2 = [result joinToken];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SharePlayTogetherSession.routeType.getter()
{
  v1 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_routeType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SharePlayTogetherSession.routeType.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_routeType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SharePlayTogetherSession.routeSymbolName.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for SharePlayTogetherSession.routeSymbolName : SharePlayTogetherSession@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t key path setter for SharePlayTogetherSession.routeSymbolName : SharePlayTogetherSession(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t SharePlayTogetherSession.routeSymbolName.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t (*SharePlayTogetherSession.routeSymbolName.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MPCPlayerResponse.VideoContext.isReadyForDisplay.modify;
}

uint64_t SharePlayTogetherSession.$routeSymbolName.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SharePlayTogetherSession.$routeSymbolName.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__routeSymbolName;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return MPCPlayerResponse.VideoContext.$isReadyForDisplay.modify;
}

uint64_t SharePlayTogetherSession.participants.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for SharePlayTogetherSession.participants : SharePlayTogetherSession@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for SharePlayTogetherSession.participants : SharePlayTogetherSession(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t SharePlayTogetherSession.participants.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t (*SharePlayTogetherSession.participants.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MPCPlayerResponse.VideoContext.videoBounds.modify;
}

uint64_t SharePlayTogetherSession.$participants.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay9MusicCore24SharePlayTogetherSessionC11ParticipantVG_GMd);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay9MusicCore24SharePlayTogetherSessionC11ParticipantVGGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SharePlayTogetherSession.$participants.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay9MusicCore24SharePlayTogetherSessionC11ParticipantVG_GMd);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__participants;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay9MusicCore24SharePlayTogetherSessionC11ParticipantVGGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return MPCPlayerResponse.VideoContext.$videoBounds.modify;
}

uint64_t SharePlayTogetherSession.connectedParticipantsCount.setter()
{
  return SharePlayTogetherSession.connectedParticipantsCount.setter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t (*SharePlayTogetherSession.connectedParticipantsCount.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MPCPlayerResponse.VideoContext.isReadyForDisplay.modify;
}

uint64_t SharePlayTogetherSession.$connectedParticipantsCount.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SharePlayTogetherSession.$connectedParticipantsCount.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__connectedParticipantsCount;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return MPCPlayerResponse.VideoContext.$isReadyForDisplay.modify;
}

uint64_t key path getter for SharePlayTogetherSession.pendingParticipantsCount : SharePlayTogetherSession@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for SharePlayTogetherSession.pendingParticipantsCount : SharePlayTogetherSession(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t (*SharePlayTogetherSession.pendingParticipantsCount.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MPCPlayerResponse.VideoContext.isReadyForDisplay.modify;
}

uint64_t SharePlayTogetherSession.$pendingParticipantsCount.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SharePlayTogetherSession.$pendingParticipantsCount.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__pendingParticipantsCount;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return MPCPlayerResponse.VideoContext.$isReadyForDisplay.modify;
}

uint64_t property wrapper backing initializer of SharePlayTogetherSession.host(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMd);
  v3 = __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  outlined init with copy of TaskPriority?(a1, &v9 - v6, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMd);
  outlined init with copy of TaskPriority?(v7, v5, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMd);
  Published.init(initialValue:)();
  outlined destroy of TaskPriority?(a1, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMd);
  return outlined destroy of TaskPriority?(v7, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMd);
}

uint64_t SharePlayTogetherSession.host.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t key path getter for SharePlayTogetherSession.host : SharePlayTogetherSession()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t key path setter for SharePlayTogetherSession.host : SharePlayTogetherSession(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMd);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  outlined init with copy of TaskPriority?(a1, &v13 - v8, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMd);
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of TaskPriority?(v9, v7, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMd);
  v11 = v10;
  static Published.subscript.setter();
  return outlined destroy of TaskPriority?(v9, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMd);
}

uint64_t SharePlayTogetherSession.host.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMd);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of TaskPriority?(a1, v5, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMd);
  v6 = v1;
  static Published.subscript.setter();
  return outlined destroy of TaskPriority?(a1, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMd);
}

uint64_t (*SharePlayTogetherSession.host.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MPCPlayerResponse.VideoContext.isReadyForDisplay.modify;
}

uint64_t SharePlayTogetherSession.$host.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9MusicCore24SharePlayTogetherSessionC11ParticipantVSg_GMd);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MusicCore24SharePlayTogetherSessionC11ParticipantVSgGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SharePlayTogetherSession.$host.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9MusicCore24SharePlayTogetherSessionC11ParticipantVSg_GMd);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__host;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MusicCore24SharePlayTogetherSessionC11ParticipantVSgGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return MPCPlayerResponse.VideoContext.$isReadyForDisplay.modify;
}

void SharePlayTogetherSession.qrCode.getter(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for String.Encoding();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode);
  v10 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode);
  v9 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode + 8);
  v11 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode + 16);
  v12 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode + 24);
  v13 = v10;
  v14 = v9;
  v15 = v11;
  v16 = v12;
  v17 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode + 32);
  if (v12)
  {
LABEL_8:
    outlined copy of QRCode?(v10, v9, v11, v12);
    *a1 = v13;
    a1[1] = v14;
    a1[2] = v15;
    a1[3] = v16;
    a1[4] = v17;
    return;
  }

  v18 = v5;
  v34 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode + 32);
  v35 = 0;
  v32 = v9;
  v33 = v11;
  v31 = v10;
  v19 = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (v19)
  {
    v20 = [v19 joinToken];
    if (v20 && (v21 = v20, v22 = [v20 joinURLString], v21, static String._unconditionallyBridgeFromObjectiveC(_:)(), v22, static String.Encoding.utf8.getter(), v23 = String.data(using:allowLossyConversion:)(), v25 = v24, , (*(v4 + 8))(v7, v18), v25 >> 60 != 15))
    {
      specialized QRCode.init(data:errorCorrectionLevel:)(v23, v25, 76, v36);
      v26 = *v8;
      v27 = v8[1];
      v28 = v8[2];
      v29 = v8[3];
      v30 = v36[1];
      *v8 = v36[0];
      *(v8 + 1) = v30;
      v8[4] = v37;
      outlined consume of QRCode?(v26, v27, v28, v29);
      v13 = *v8;
      v14 = v8[1];
      v15 = v8[2];
      v16 = v8[3];
      v17 = v8[4];
      outlined copy of QRCode?(*v8, v14, v15, v16);
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
    }

    v10 = v31;
    v9 = v32;
    v11 = v33;
    v12 = v35;
    goto LABEL_8;
  }

  __break(1u);
}

void *SharePlayTogetherSession.joinURL.getter@<X0>(uint64_t a1@<X8>)
{
  result = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (result)
  {
    v4 = [result joinToken];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 joinURLString];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      URL.init(string:)();
    }

    else
    {
      v7 = type metadata accessor for URL();
      v8 = *(*(v7 - 8) + 56);

      return v8(a1, 1, 1, v7);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SharePlayTogetherSession.isActive.getter()
{
  result = *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (result)
  {
    if ([result isPlaceholder])
    {
      return 0;
    }

    else if (*(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isHost) == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      return v2 > 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SharePlayTogetherSession.isPersistent.getter()
{
  v1 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isPersistent;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SharePlayTogetherSession.isPersistent.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isPersistent;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void SharePlayTogetherSession.init(info:endpoint:)(void *a1, void *a2)
{
  v80 = a1;
  v81 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MusicCore24SharePlayTogetherSessionC11ParticipantVSgGMd);
  v78 = *(v3 - 8);
  v79 = v3;
  __chkstk_darwin(v3);
  v77 = &v75 - v4;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMd);
  v5 = __chkstk_darwin(v76);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v75 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v75 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay9MusicCore24SharePlayTogetherSessionC11ParticipantVGGMd);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v75 - v16;
  *&v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session] = 0;
  v18 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__participants;
  v85 = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MusicCore24SharePlayTogetherSessionC11ParticipantVGMd);
  Published.init(initialValue:)();
  (*(v15 + 32))(&v2[v18], v17, v14);
  v19 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__connectedParticipantsCount;
  v85 = 0;
  Published.init(initialValue:)();
  v20 = *(v11 + 32);
  v20(&v2[v19], v13, v10);
  v21 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__pendingParticipantsCount;
  v85 = 0;
  Published.init(initialValue:)();
  v20(&v2[v21], v13, v10);
  v22 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__host;
  v23 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
  outlined init with copy of TaskPriority?(v9, v7, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMd);
  v24 = v77;
  Published.init(initialValue:)();
  v25 = v9;
  v26 = v80;
  outlined destroy of TaskPriority?(v25, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMd);
  (*(v78 + 32))(&v2[v22], v24, v79);
  v27 = &v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__qrCode];
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 4) = 0;
  v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isConnected] = 0;
  v28 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_participantProfileMap;
  *&v2[v28] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_16MusicKitInternal13SocialProfileVTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  *&v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionConnectionObservers] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedObservers] = _swiftEmptyArrayStorage;
  v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedManually] = 0;
  *&v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_endpointNotificationObserver] = 0;
  v29 = [v26 identifier];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v33 = &v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_identifier];
  *v33 = v30;
  v33[1] = v32;
  v34 = [v26 isHosted];
  v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isHost] = v34;
  v35 = v81;
  *&v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_endpoint] = v81;
  v36 = v35;
  v37 = [v26 hostInfo];
  LOBYTE(v32) = [v37 routeType];

  v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_routeType] = v32;
  v38 = [v36 groupLeader];
  v39 = [v38 transportType];

  v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isPersistent] = v39 != 6;
  v40 = [v26 hostInfo];
  LODWORD(v39) = [v40 routeType];

  if (v39 == 1 || (v41 = [v26 hostInfo], v42 = objc_msgSend(v41, "routeType"), v41, v42 == 2))
  {
    swift_beginAccess();
    v83 = 0x6C6C69662E726163;
    v84 = 0xE800000000000000;
    Published.init(initialValue:)();
    swift_endAccess();
    v43 = 1;
  }

  else
  {
    v44 = [v36 outputDevices];
    if (v44)
    {
      v45 = v44;
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MRAVOutputDevice);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v46 = objc_opt_self();
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MRAVOutputDevice);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v48 = [v46 symbolNameForOutputDevices:isa];

    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    swift_beginAccess();
    v83 = v49;
    v84 = v51;
    Published.init(initialValue:)();
    swift_endAccess();
    v43 = 0;
  }

  v52 = type metadata accessor for SharePlayTogetherSession(0);
  v82.receiver = v2;
  v82.super_class = v52;
  v53 = objc_msgSendSuper2(&v82, "init");
  v54 = [v26 identifier];
  if (!v54)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = String._bridgeToObjectiveC()();
  }

  v55 = objc_opt_self();
  v56 = v53;
  v57 = [v55 remoteControlGroupSessionWithIdentifier:v54 delegate:v56];

  v58 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session;
  *&v56[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session] = v57;
  swift_unknownObjectRelease();
  v59 = MRAVEndpointOutputDevicesDidChangeNotification;
  v60 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v61 = swift_allocObject();
  *(v61 + 16) = v43;
  *(v61 + 24) = v60;
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v62 = v36;
  *&v56[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_endpointNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v59, v36, 1, 1, partial apply for closure #1 in SharePlayTogetherSession.init(info:endpoint:), v61);

  if (one-time initialization token for sharePlayTogether != -1)
  {
    swift_once();
  }

  v63 = type metadata accessor for Logger();
  __swift_project_value_buffer(v63, static Logger.sharePlayTogether);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v64, v65))
  {

    goto LABEL_15;
  }

  v66 = swift_slowAlloc();
  v67 = swift_slowAlloc();
  v85 = v67;
  *v66 = 136446210;
  v68 = *&v56[v58];
  if (v68)
  {
    v69 = v67;
    swift_unknownObjectRetain();

    v70 = [v68 description];
    swift_unknownObjectRelease();
    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;

    v74 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v71, v73, &v85);

    *(v66 + 4) = v74;
    _os_log_impl(&_mh_execute_header, v64, v65, "Initialized SharePlayTogetherSession object with MR session %{public}s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v69);

LABEL_15:
    return;
  }

  __break(1u);
}

void closure #1 in SharePlayTogetherSession.init(info:endpoint:)(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v3 = Strong;
        v4 = *(Strong + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_endpoint);

        v5 = [v4 outputDevices];
        if (v5)
        {
          type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MRAVOutputDevice);
          static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }
      }

      v6 = objc_opt_self();
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MRAVOutputDevice);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v8 = [v6 symbolNameForOutputDevices:isa];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.setter();
    }
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void SharePlayTogetherSession.approve(participant:)(uint64_t a1, SEL *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session;
  v7 = *(v5 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (!v7)
  {
    __break(1u);
    goto LABEL_7;
  }

  swift_unknownObjectRetain();
  v12 = String._bridgeToObjectiveC()();
  v13 = [v7 *a2];

  swift_unknownObjectRelease();
  if (!v13)
  {
    return;
  }

  if (!*(v5 + v6))
  {
LABEL_7:
    __break(1u);
    return;
  }

  v15[4] = a3;
  v15[5] = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error) -> ();
  v15[3] = a4;
  v14 = _Block_copy(v15);
  [swift_unknownObjectRetain() *a5];
  _Block_release(v14);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}