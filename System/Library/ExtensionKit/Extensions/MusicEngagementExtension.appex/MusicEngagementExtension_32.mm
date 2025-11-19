uint64_t specialized static ArtworkImage.Placeholder.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Playlist.Variant();
  v31 = *(v4 - 8);
  v32 = v4;
  __chkstk_darwin(v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg_AGtMd_0);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  v13 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO_AFtMd);
  __chkstk_darwin(v16 - 8);
  v18 = &v31 - v17;
  v20 = *(v19 + 56);
  outlined init with copy of ArtworkImage.Placeholder(a1, &v31 - v17, type metadata accessor for ArtworkImage.Placeholder);
  outlined init with copy of ArtworkImage.Placeholder(a2, &v18[v20], type metadata accessor for ArtworkImage.Placeholder);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg4type_tMd);
  v22 = *(*(v21 - 8) + 48);
  v23 = v22(v18, 11, v21);
  if (v23 <= 5)
  {
    if (v23 > 2)
    {
      if (v23 == 3)
      {
        if (v22(&v18[v20], 11, v21) != 3)
        {
          goto LABEL_36;
        }
      }

      else if (v23 == 4)
      {
        if (v22(&v18[v20], 11, v21) != 4)
        {
          goto LABEL_36;
        }
      }

      else if (v22(&v18[v20], 11, v21) != 5)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    if (v23)
    {
      if (v23 == 1)
      {
        if (v22(&v18[v20], 11, v21) != 1)
        {
          goto LABEL_36;
        }
      }

      else if (v22(&v18[v20], 11, v21) != 2)
      {
        goto LABEL_36;
      }

LABEL_35:
      outlined destroy of ArtworkImage.ViewModel(v18, type metadata accessor for ArtworkImage.Placeholder);
      return 1;
    }

    outlined init with copy of ArtworkImage.Placeholder(v18, v15, type metadata accessor for ArtworkImage.Placeholder);
    if (v22(&v18[v20], 11, v21))
    {
      outlined destroy of TaskPriority?(v15, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0);
      goto LABEL_36;
    }

    v25 = *(v10 + 48);
    outlined init with take of URL?(v15, v12, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0);
    outlined init with take of URL?(&v18[v20], &v12[v25], &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0);
    v27 = v31;
    v26 = v32;
    v28 = *(v31 + 48);
    if (v28(v12, 1, v32) == 1)
    {
      if (v28(&v12[v25], 1, v26) == 1)
      {
        outlined destroy of TaskPriority?(v12, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0);
        goto LABEL_35;
      }
    }

    else
    {
      outlined init with copy of TaskPriority?(v12, v9, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0);
      if (v28(&v12[v25], 1, v26) != 1)
      {
        (*(v27 + 32))(v6, &v12[v25], v26);
        lazy protocol witness table accessor for type Playlist.Variant and conformance Playlist.Variant(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOAFSQADWL_0, &type metadata accessor for Playlist.Variant);
        v29 = dispatch thunk of static Equatable.== infix(_:_:)();
        v30 = *(v27 + 8);
        v30(v6, v26);
        v30(v9, v26);
        outlined destroy of TaskPriority?(v12, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0);
        if (v29)
        {
          goto LABEL_35;
        }

LABEL_44:
        outlined destroy of ArtworkImage.ViewModel(v18, type metadata accessor for ArtworkImage.Placeholder);
        return 0;
      }

      (*(v27 + 8))(v9, v26);
    }

    outlined destroy of TaskPriority?(v12, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg_AGtMd_0);
    goto LABEL_44;
  }

  if (v23 <= 8)
  {
    if (v23 == 6)
    {
      if (v22(&v18[v20], 11, v21) != 6)
      {
        goto LABEL_36;
      }
    }

    else if (v23 == 7)
    {
      if (v22(&v18[v20], 11, v21) != 7)
      {
        goto LABEL_36;
      }
    }

    else if (v22(&v18[v20], 11, v21) != 8)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v23 == 9)
  {
    if (v22(&v18[v20], 11, v21) != 9)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v23 == 10)
  {
    if (v22(&v18[v20], 11, v21) != 10)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v22(&v18[v20], 11, v21) == 11)
  {
    goto LABEL_35;
  }

LABEL_36:
  outlined destroy of TaskPriority?(v18, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO_AFtMd);
  return 0;
}

BOOL specialized static ArtworkImage.ViewModel.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork.CropStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSg_AGtMd);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  if ((static Artwork.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v22 = v7;
  v14 = *(type metadata accessor for ArtworkImage.ViewModel(0) + 20);
  v15 = *(v11 + 48);
  outlined init with copy of TaskPriority?(a1 + v14, v13, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
  outlined init with copy of TaskPriority?(a2 + v14, &v13[v15], &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      outlined destroy of TaskPriority?(v13, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
      return 1;
    }

    goto LABEL_7;
  }

  outlined init with copy of TaskPriority?(v13, v10, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    outlined destroy of TaskPriority?(v13, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSg_AGtMd);
    return 0;
  }

  v18 = v22;
  (*(v5 + 32))(v22, &v13[v15], v4);
  lazy protocol witness table accessor for type Playlist.Variant and conformance Playlist.Variant(&lazy protocol witness table cache variable for type Artwork.CropStyle and conformance Artwork.CropStyle, &type metadata accessor for Artwork.CropStyle);
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v20 = *(v5 + 8);
  v20(v18, v4);
  v20(v10, v4);
  outlined destroy of TaskPriority?(v13, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
  return (v19 & 1) != 0;
}

uint64_t sub_100314278()
{

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in static ArtworkImage.socialArtworkImage(_:displayName:size:reusePolicy:)@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

unint64_t lazy protocol witness table accessor for type EnvironmentValues.PlaceholderStyleKey and conformance EnvironmentValues.PlaceholderStyleKey()
{
  result = lazy protocol witness table cache variable for type EnvironmentValues.PlaceholderStyleKey and conformance EnvironmentValues.PlaceholderStyleKey;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.PlaceholderStyleKey and conformance EnvironmentValues.PlaceholderStyleKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.PlaceholderStyleKey and conformance EnvironmentValues.PlaceholderStyleKey);
  }

  return result;
}

uint64_t outlined destroy of ArtworkImage.ViewModel(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of ArtworkImage.Placeholder(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ArtworkImage.Placeholder.CodingKeys and conformance ArtworkImage.Placeholder.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ArtworkImage.Placeholder.CodingKeys and conformance ArtworkImage.Placeholder.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArtworkImage.Placeholder.CodingKeys and conformance ArtworkImage.Placeholder.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkImage.Placeholder.CodingKeys and conformance ArtworkImage.Placeholder.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArtworkImage.Placeholder.CodingKeys and conformance ArtworkImage.Placeholder.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArtworkImage.Placeholder.CodingKeys and conformance ArtworkImage.Placeholder.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkImage.Placeholder.CodingKeys and conformance ArtworkImage.Placeholder.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArtworkImage.Placeholder.CodingKeys and conformance ArtworkImage.Placeholder.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArtworkImage.Placeholder.CodingKeys and conformance ArtworkImage.Placeholder.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkImage.Placeholder.CodingKeys and conformance ArtworkImage.Placeholder.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArtworkImage.Placeholder.CodingKeys and conformance ArtworkImage.Placeholder.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArtworkImage.Placeholder.CodingKeys and conformance ArtworkImage.Placeholder.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkImage.Placeholder.CodingKeys and conformance ArtworkImage.Placeholder.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ArtworkImage.Placeholder.ComposerCodingKeys and conformance ArtworkImage.Placeholder.ComposerCodingKeys()
{
  result = lazy protocol witness table cache variable for type ArtworkImage.Placeholder.ComposerCodingKeys and conformance ArtworkImage.Placeholder.ComposerCodingKeys;
  if (!lazy protocol witness table cache variable for type ArtworkImage.Placeholder.ComposerCodingKeys and conformance ArtworkImage.Placeholder.ComposerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkImage.Placeholder.ComposerCodingKeys and conformance ArtworkImage.Placeholder.ComposerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArtworkImage.Placeholder.ComposerCodingKeys and conformance ArtworkImage.Placeholder.ComposerCodingKeys;
  if (!lazy protocol witness table cache variable for type ArtworkImage.Placeholder.ComposerCodingKeys and conformance ArtworkImage.Placeholder.ComposerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkImage.Placeholder.ComposerCodingKeys and conformance ArtworkImage.Placeholder.ComposerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArtworkImage.Placeholder.ComposerCodingKeys and conformance ArtworkImage.Placeholder.ComposerCodingKeys;
  if (!lazy protocol witness table cache variable for type ArtworkImage.Placeholder.ComposerCodingKeys and conformance ArtworkImage.Placeholder.ComposerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkImage.Placeholder.ComposerCodingKeys and conformance ArtworkImage.Placeholder.ComposerCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ArtworkImage.Placeholder.GenreCodingKeys and conformance ArtworkImage.Placeholder.GenreCodingKeys()
{
  result = lazy protocol witness table cache variable for type ArtworkImage.Placeholder.GenreCodingKeys and conformance ArtworkImage.Placeholder.GenreCodingKeys;
  if (!lazy protocol witness table cache variable for type ArtworkImage.Placeholder.GenreCodingKeys and conformance ArtworkImage.Placeholder.GenreCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkImage.Placeholder.GenreCodingKeys and conformance ArtworkImage.Placeholder.GenreCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArtworkImage.Placeholder.GenreCodingKeys and conformance ArtworkImage.Placeholder.GenreCodingKeys;
  if (!lazy protocol witness table cache variable for type ArtworkImage.Placeholder.GenreCodingKeys and conformance ArtworkImage.Placeholder.GenreCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkImage.Placeholder.GenreCodingKeys and conformance ArtworkImage.Placeholder.GenreCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArtworkImage.Placeholder.GenreCodingKeys and conformance ArtworkImage.Placeholder.GenreCodingKeys;
  if (!lazy protocol witness table cache variable for type ArtworkImage.Placeholder.GenreCodingKeys and conformance ArtworkImage.Placeholder.GenreCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkImage.Placeholder.GenreCodingKeys and conformance ArtworkImage.Placeholder.GenreCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ArtworkImage.Placeholder.RadioCodingKeys and conformance ArtworkImage.Placeholder.RadioCodingKeys()
{
  result = lazy protocol witness table cache variable for type ArtworkImage.Placeholder.RadioCodingKeys and conformance ArtworkImage.Placeholder.RadioCodingKeys;
  if (!lazy protocol witness table cache variable for type ArtworkImage.Placeholder.RadioCodingKeys and conformance ArtworkImage.Placeholder.RadioCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkImage.Placeholder.RadioCodingKeys and conformance ArtworkImage.Placeholder.RadioCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArtworkImage.Placeholder.RadioCodingKeys and conformance ArtworkImage.Placeholder.RadioCodingKeys;
  if (!lazy protocol witness table cache variable for type ArtworkImage.Placeholder.RadioCodingKeys and conformance ArtworkImage.Placeholder.RadioCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkImage.Placeholder.RadioCodingKeys and conformance ArtworkImage.Placeholder.RadioCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArtworkImage.Placeholder.RadioCodingKeys and conformance ArtworkImage.Placeholder.RadioCodingKeys;
  if (!lazy protocol witness table cache variable for type ArtworkImage.Placeholder.RadioCodingKeys and conformance ArtworkImage.Placeholder.RadioCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkImage.Placeholder.RadioCodingKeys and conformance ArtworkImage.Placeholder.RadioCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ArtworkImage.Placeholder.PersonCodingKeys and conformance ArtworkImage.Placeholder.PersonCodingKeys()
{
  result = lazy protocol witness table cache variable for type ArtworkImage.Placeholder.PersonCodingKeys and conformance ArtworkImage.Placeholder.PersonCodingKeys;
  if (!lazy protocol witness table cache variable for type ArtworkImage.Placeholder.PersonCodingKeys and conformance ArtworkImage.Placeholder.PersonCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkImage.Placeholder.PersonCodingKeys and conformance ArtworkImage.Placeholder.PersonCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArtworkImage.Placeholder.PersonCodingKeys and conformance ArtworkImage.Placeholder.PersonCodingKeys;
  if (!lazy protocol witness table cache variable for type ArtworkImage.Placeholder.PersonCodingKeys and conformance ArtworkImage.Placeholder.PersonCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkImage.Placeholder.PersonCodingKeys and conformance ArtworkImage.Placeholder.PersonCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArtworkImage.Placeholder.PersonCodingKeys and conformance ArtworkImage.Placeholder.PersonCodingKeys;
  if (!lazy protocol witness table cache variable for type ArtworkImage.Placeholder.PersonCodingKeys and conformance ArtworkImage.Placeholder.PersonCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkImage.Placeholder.PersonCodingKeys and conformance ArtworkImage.Placeholder.PersonCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ArtworkImage.Placeholder.MicrophoneCodingKeys and conformance ArtworkImage.Placeholder.MicrophoneCodingKeys()
{
  result = lazy protocol witness table cache variable for type ArtworkImage.Placeholder.MicrophoneCodingKeys and conformance ArtworkImage.Placeholder.MicrophoneCodingKeys;
  if (!lazy protocol witness table cache variable for type ArtworkImage.Placeholder.MicrophoneCodingKeys and conformance ArtworkImage.Placeholder.MicrophoneCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkImage.Placeholder.MicrophoneCodingKeys and conformance ArtworkImage.Placeholder.MicrophoneCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArtworkImage.Placeholder.MicrophoneCodingKeys and conformance ArtworkImage.Placeholder.MicrophoneCodingKeys;
  if (!lazy protocol witness table cache variable for type ArtworkImage.Placeholder.MicrophoneCodingKeys and conformance ArtworkImage.Placeholder.MicrophoneCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkImage.Placeholder.MicrophoneCodingKeys and conformance ArtworkImage.Placeholder.MicrophoneCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArtworkImage.Placeholder.MicrophoneCodingKeys and conformance ArtworkImage.Placeholder.MicrophoneCodingKeys;
  if (!lazy protocol witness table cache variable for type ArtworkImage.Placeholder.MicrophoneCodingKeys and conformance ArtworkImage.Placeholder.MicrophoneCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkImage.Placeholder.MicrophoneCodingKeys and conformance ArtworkImage.Placeholder.MicrophoneCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ArtworkImage.Placeholder.TvCodingKeys and conformance ArtworkImage.Placeholder.TvCodingKeys()
{
  result = lazy protocol witness table cache variable for type ArtworkImage.Placeholder.TvCodingKeys and conformance ArtworkImage.Placeholder.TvCodingKeys;
  if (!lazy protocol witness table cache variable for type ArtworkImage.Placeholder.TvCodingKeys and conformance ArtworkImage.Placeholder.TvCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkImage.Placeholder.TvCodingKeys and conformance ArtworkImage.Placeholder.TvCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArtworkImage.Placeholder.TvCodingKeys and conformance ArtworkImage.Placeholder.TvCodingKeys;
  if (!lazy protocol witness table cache variable for type ArtworkImage.Placeholder.TvCodingKeys and conformance ArtworkImage.Placeholder.TvCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkImage.Placeholder.TvCodingKeys and conformance ArtworkImage.Placeholder.TvCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArtworkImage.Placeholder.TvCodingKeys and conformance ArtworkImage.Placeholder.TvCodingKeys;
  if (!lazy protocol witness table cache variable for type ArtworkImage.Placeholder.TvCodingKeys and conformance ArtworkImage.Placeholder.TvCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkImage.Placeholder.TvCodingKeys and conformance ArtworkImage.Placeholder.TvCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ArtworkImage.Placeholder.MusicVideoCodingKeys and conformance ArtworkImage.Placeholder.MusicVideoCodingKeys()
{
  result = lazy protocol witness table cache variable for type ArtworkImage.Placeholder.MusicVideoCodingKeys and conformance ArtworkImage.Placeholder.MusicVideoCodingKeys;
  if (!lazy protocol witness table cache variable for type ArtworkImage.Placeholder.MusicVideoCodingKeys and conformance ArtworkImage.Placeholder.MusicVideoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkImage.Placeholder.MusicVideoCodingKeys and conformance ArtworkImage.Placeholder.MusicVideoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArtworkImage.Placeholder.MusicVideoCodingKeys and conformance ArtworkImage.Placeholder.MusicVideoCodingKeys;
  if (!lazy protocol witness table cache variable for type ArtworkImage.Placeholder.MusicVideoCodingKeys and conformance ArtworkImage.Placeholder.MusicVideoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkImage.Placeholder.MusicVideoCodingKeys and conformance ArtworkImage.Placeholder.MusicVideoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArtworkImage.Placeholder.MusicVideoCodingKeys and conformance ArtworkImage.Placeholder.MusicVideoCodingKeys;
  if (!lazy protocol witness table cache variable for type ArtworkImage.Placeholder.MusicVideoCodingKeys and conformance ArtworkImage.Placeholder.MusicVideoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkImage.Placeholder.MusicVideoCodingKeys and conformance ArtworkImage.Placeholder.MusicVideoCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ArtworkImage.Placeholder.PlaylistCodingKeys and conformance ArtworkImage.Placeholder.PlaylistCodingKeys()
{
  result = lazy protocol witness table cache variable for type ArtworkImage.Placeholder.PlaylistCodingKeys and conformance ArtworkImage.Placeholder.PlaylistCodingKeys;
  if (!lazy protocol witness table cache variable for type ArtworkImage.Placeholder.PlaylistCodingKeys and conformance ArtworkImage.Placeholder.PlaylistCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkImage.Placeholder.PlaylistCodingKeys and conformance ArtworkImage.Placeholder.PlaylistCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArtworkImage.Placeholder.PlaylistCodingKeys and conformance ArtworkImage.Placeholder.PlaylistCodingKeys;
  if (!lazy protocol witness table cache variable for type ArtworkImage.Placeholder.PlaylistCodingKeys and conformance ArtworkImage.Placeholder.PlaylistCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkImage.Placeholder.PlaylistCodingKeys and conformance ArtworkImage.Placeholder.PlaylistCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArtworkImage.Placeholder.PlaylistCodingKeys and conformance ArtworkImage.Placeholder.PlaylistCodingKeys;
  if (!lazy protocol witness table cache variable for type ArtworkImage.Placeholder.PlaylistCodingKeys and conformance ArtworkImage.Placeholder.PlaylistCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkImage.Placeholder.PlaylistCodingKeys and conformance ArtworkImage.Placeholder.PlaylistCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArtworkImage.Placeholder.PlaylistCodingKeys and conformance ArtworkImage.Placeholder.PlaylistCodingKeys;
  if (!lazy protocol witness table cache variable for type ArtworkImage.Placeholder.PlaylistCodingKeys and conformance ArtworkImage.Placeholder.PlaylistCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkImage.Placeholder.PlaylistCodingKeys and conformance ArtworkImage.Placeholder.PlaylistCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ArtworkImage.Placeholder.NewPlaylistCodingKeys and conformance ArtworkImage.Placeholder.NewPlaylistCodingKeys()
{
  result = lazy protocol witness table cache variable for type ArtworkImage.Placeholder.NewPlaylistCodingKeys and conformance ArtworkImage.Placeholder.NewPlaylistCodingKeys;
  if (!lazy protocol witness table cache variable for type ArtworkImage.Placeholder.NewPlaylistCodingKeys and conformance ArtworkImage.Placeholder.NewPlaylistCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkImage.Placeholder.NewPlaylistCodingKeys and conformance ArtworkImage.Placeholder.NewPlaylistCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArtworkImage.Placeholder.NewPlaylistCodingKeys and conformance ArtworkImage.Placeholder.NewPlaylistCodingKeys;
  if (!lazy protocol witness table cache variable for type ArtworkImage.Placeholder.NewPlaylistCodingKeys and conformance ArtworkImage.Placeholder.NewPlaylistCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkImage.Placeholder.NewPlaylistCodingKeys and conformance ArtworkImage.Placeholder.NewPlaylistCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArtworkImage.Placeholder.NewPlaylistCodingKeys and conformance ArtworkImage.Placeholder.NewPlaylistCodingKeys;
  if (!lazy protocol witness table cache variable for type ArtworkImage.Placeholder.NewPlaylistCodingKeys and conformance ArtworkImage.Placeholder.NewPlaylistCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkImage.Placeholder.NewPlaylistCodingKeys and conformance ArtworkImage.Placeholder.NewPlaylistCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ArtworkImage.Placeholder.NewFolderCodingKeys and conformance ArtworkImage.Placeholder.NewFolderCodingKeys()
{
  result = lazy protocol witness table cache variable for type ArtworkImage.Placeholder.NewFolderCodingKeys and conformance ArtworkImage.Placeholder.NewFolderCodingKeys;
  if (!lazy protocol witness table cache variable for type ArtworkImage.Placeholder.NewFolderCodingKeys and conformance ArtworkImage.Placeholder.NewFolderCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkImage.Placeholder.NewFolderCodingKeys and conformance ArtworkImage.Placeholder.NewFolderCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArtworkImage.Placeholder.NewFolderCodingKeys and conformance ArtworkImage.Placeholder.NewFolderCodingKeys;
  if (!lazy protocol witness table cache variable for type ArtworkImage.Placeholder.NewFolderCodingKeys and conformance ArtworkImage.Placeholder.NewFolderCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkImage.Placeholder.NewFolderCodingKeys and conformance ArtworkImage.Placeholder.NewFolderCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArtworkImage.Placeholder.NewFolderCodingKeys and conformance ArtworkImage.Placeholder.NewFolderCodingKeys;
  if (!lazy protocol witness table cache variable for type ArtworkImage.Placeholder.NewFolderCodingKeys and conformance ArtworkImage.Placeholder.NewFolderCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkImage.Placeholder.NewFolderCodingKeys and conformance ArtworkImage.Placeholder.NewFolderCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ArtworkImage.Placeholder.NowPlayingCodingKeys and conformance ArtworkImage.Placeholder.NowPlayingCodingKeys()
{
  result = lazy protocol witness table cache variable for type ArtworkImage.Placeholder.NowPlayingCodingKeys and conformance ArtworkImage.Placeholder.NowPlayingCodingKeys;
  if (!lazy protocol witness table cache variable for type ArtworkImage.Placeholder.NowPlayingCodingKeys and conformance ArtworkImage.Placeholder.NowPlayingCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkImage.Placeholder.NowPlayingCodingKeys and conformance ArtworkImage.Placeholder.NowPlayingCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArtworkImage.Placeholder.NowPlayingCodingKeys and conformance ArtworkImage.Placeholder.NowPlayingCodingKeys;
  if (!lazy protocol witness table cache variable for type ArtworkImage.Placeholder.NowPlayingCodingKeys and conformance ArtworkImage.Placeholder.NowPlayingCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkImage.Placeholder.NowPlayingCodingKeys and conformance ArtworkImage.Placeholder.NowPlayingCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArtworkImage.Placeholder.NowPlayingCodingKeys and conformance ArtworkImage.Placeholder.NowPlayingCodingKeys;
  if (!lazy protocol witness table cache variable for type ArtworkImage.Placeholder.NowPlayingCodingKeys and conformance ArtworkImage.Placeholder.NowPlayingCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkImage.Placeholder.NowPlayingCodingKeys and conformance ArtworkImage.Placeholder.NowPlayingCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ArtworkImage.Placeholder.MusicCodingKeys and conformance ArtworkImage.Placeholder.MusicCodingKeys()
{
  result = lazy protocol witness table cache variable for type ArtworkImage.Placeholder.MusicCodingKeys and conformance ArtworkImage.Placeholder.MusicCodingKeys;
  if (!lazy protocol witness table cache variable for type ArtworkImage.Placeholder.MusicCodingKeys and conformance ArtworkImage.Placeholder.MusicCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkImage.Placeholder.MusicCodingKeys and conformance ArtworkImage.Placeholder.MusicCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArtworkImage.Placeholder.MusicCodingKeys and conformance ArtworkImage.Placeholder.MusicCodingKeys;
  if (!lazy protocol witness table cache variable for type ArtworkImage.Placeholder.MusicCodingKeys and conformance ArtworkImage.Placeholder.MusicCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkImage.Placeholder.MusicCodingKeys and conformance ArtworkImage.Placeholder.MusicCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArtworkImage.Placeholder.MusicCodingKeys and conformance ArtworkImage.Placeholder.MusicCodingKeys;
  if (!lazy protocol witness table cache variable for type ArtworkImage.Placeholder.MusicCodingKeys and conformance ArtworkImage.Placeholder.MusicCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkImage.Placeholder.MusicCodingKeys and conformance ArtworkImage.Placeholder.MusicCodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Playlist.Variant and conformance Playlist.Variant(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with take of ArtworkImage.Placeholder(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_11Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMd) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + v2;
  v4 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
  {
    if (*(v3 + 24))
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + v2);
    }

    if (*(v3 + 64))
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v3 + 40);
    }

    v5 = *(v4 + 24);
    v6 = type metadata accessor for BlendMode();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v3 + v5, 1, v6))
    {
      (*(v7 + 8))(v3 + v5, v6);
    }
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in PlaceholderStyleModifier.init(_:)(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMd) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in PlaceholderStyleModifier.init(_:)(a1, v4);
}

uint64_t sub_100314C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Artwork();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100314D60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Artwork();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void type metadata completion function for ArtworkImage.ViewModel()
{
  type metadata accessor for Artwork();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Artwork.CropStyle?(319, &lazy cache variable for type metadata for Artwork.CropStyle?, &type metadata accessor for Artwork.CropStyle, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100314F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for ArtworkImage.Placeholder(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 41);
  if (v14 <= 2)
  {
    v15 = 2;
  }

  else
  {
    v15 = *(a1 + *(a3 + 28) + 41);
  }

  v16 = v15 - 2;
  if (v14 >= 2)
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100315068(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for ArtworkImage.Placeholder(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 41) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void type metadata completion function for ArtworkImage.Info()
{
  type metadata accessor for Artwork.CropStyle?(319, &lazy cache variable for type metadata for ArtworkImage.ViewModel?, type metadata accessor for ArtworkImage.ViewModel, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ArtworkImage.Placeholder(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGFloat?();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Artwork.CropStyle?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for CGFloat?()
{
  if (!lazy cache variable for type metadata for CGFloat?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CGFloat?);
    }
  }
}

uint64_t getEnumTagSinglePayload for ArtworkImage.Size(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 42))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 41);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 41);
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for ArtworkImage.Size(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1003153E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg4type_tMd);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 0xC)
  {
    return v5 - 11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10031546C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 11);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg4type_tMd);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t type metadata completion function for ArtworkImage.Placeholder()
{
  type metadata accessor for (type: Playlist.Variant?)();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void type metadata accessor for (type: Playlist.Variant?)()
{
  if (!lazy cache variable for type metadata for (type: Playlist.Variant?))
  {
    type metadata accessor for Artwork.CropStyle?(0, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgML_0, &type metadata accessor for Playlist.Variant, &type metadata accessor for Optional);
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (type: Playlist.Variant?));
    }
  }
}

uint64_t sub_1003155E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVy010_MusicKit_aB012ArtworkImageV0d4CoreB0E11PlaceholderO4ViewV5StyleVSgGMd);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA19ColorSchemeContrastOGMd);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100315730(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVy010_MusicKit_aB012ArtworkImageV0d4CoreB0E11PlaceholderO4ViewV5StyleVSgGMd);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA19ColorSchemeContrastOGMd);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void type metadata completion function for ArtworkImage.Placeholder.View()
{
  _sSo6CGSizeVMa_0(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<ArtworkImage.Placeholder.View.Style?>(319, &lazy cache variable for type metadata for Environment<ArtworkImage.Placeholder.View.Style?>, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMR, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Artwork.CropStyle?(319, &lazy cache variable for type metadata for Environment<ColorSchemeContrast>, &type metadata accessor for ColorSchemeContrast, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100315998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9BlendModeOSgMd);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_100315A74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9BlendModeOSgMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for ArtworkImage.Placeholder.View.Style()
{
  type metadata accessor for Environment<ArtworkImage.Placeholder.View.Style?>(319, &lazy cache variable for type metadata for ShapeStyle?, &_s7SwiftUI10ShapeStyle_pMd, &_s7SwiftUI10ShapeStyle_pMR, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Artwork.CropStyle?(319, &lazy cache variable for type metadata for BlendMode?, &type metadata accessor for BlendMode, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Environment<ArtworkImage.Placeholder.View.Style?>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_100315C7C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVy010_MusicKit_aB012ArtworkImageV0d4CoreB0E11PlaceholderO4ViewV5StyleVSgGMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100315D4C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVy010_MusicKit_aB012ArtworkImageV0d4CoreB0E11PlaceholderO4ViewV5StyleVSgGMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for PlaceholderStyleModifier()
{
  _syycMa_0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<ArtworkImage.Placeholder.View.Style?>(319, &lazy cache variable for type metadata for Environment<ArtworkImage.Placeholder.View.Style?>, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMR, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t _syycMa_0()
{
  result = _syycML_0;
  if (!_syycML_0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &_syycML_0);
  }

  return result;
}

uint64_t sub_100315EFC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy010_MusicKit_aB012ArtworkImageV0f4CoreB0E11PlaceholderO4ViewVAA26_PreferenceWritingModifierVyAI016RadiosityEnabledM3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyAVGGMd);
  lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>>, _FrameLayout>, GeometryReader<ModifiedContent<ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>>, _FrameLayout>>> and conformance <> _ConditionalContent<A, B>();
  return swift_getOpaqueTypeConformance2();
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>>, _FrameLayout>, GeometryReader<ModifiedContent<ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>>, _FrameLayout>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>>, _FrameLayout>, GeometryReader<ModifiedContent<ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>>, _FrameLayout>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>>, _FrameLayout>, GeometryReader<ModifiedContent<ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>>, _FrameLayout>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy010_MusicKit_aB012ArtworkImageV0f4CoreB0E11PlaceholderO4ViewVAA26_PreferenceWritingModifierVyAI016RadiosityEnabledM3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyAVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type GeometryReader<ModifiedContent<ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>>, _FrameLayout>> and conformance GeometryReader<A>, &_s7SwiftUI14GeometryReaderVyAA15ModifiedContentVyAEy010_MusicKit_aB012ArtworkImageV0g4CoreB0E11PlaceholderO4ViewVAA26_PreferenceWritingModifierVyAI016RadiosityEnabledN3KeyVGGAA12_FrameLayoutVGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>>, _FrameLayout>, GeometryReader<ModifiedContent<ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>>, _FrameLayout>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV0e4CoreB0E11PlaceholderO4ViewVAA26_PreferenceWritingModifierVyAG016RadiosityEnabledL3KeyVGGAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy010_MusicKit_aB012ArtworkImageV0e4CoreB0E11PlaceholderO4ViewVAA26_PreferenceWritingModifierVyAG016RadiosityEnabledL3KeyVGGMd);
    lazy protocol witness table accessor for type Playlist.Variant and conformance Playlist.Variant(&lazy protocol witness table cache variable for type ArtworkImage.Placeholder.View and conformance ArtworkImage.Placeholder.View, type metadata accessor for ArtworkImage.Placeholder.View);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _PreferenceWritingModifier<RadiosityEnabledPreferenceKey> and conformance _PreferenceWritingModifier<A>, &_s7SwiftUI26_PreferenceWritingModifierVy09MusicCoreB0016RadiosityEnabledC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CNSwiftUIAvatarView and conformance CNSwiftUIAvatarView()
{
  result = lazy protocol witness table cache variable for type CNSwiftUIAvatarView and conformance CNSwiftUIAvatarView;
  if (!lazy protocol witness table cache variable for type CNSwiftUIAvatarView and conformance CNSwiftUIAvatarView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CNSwiftUIAvatarView and conformance CNSwiftUIAvatarView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CNSwiftUIAvatarView and conformance CNSwiftUIAvatarView;
  if (!lazy protocol witness table cache variable for type CNSwiftUIAvatarView and conformance CNSwiftUIAvatarView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CNSwiftUIAvatarView and conformance CNSwiftUIAvatarView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Color, _BackgroundStyleModifier<AnyShapeStyle>>, _OverlayModifier<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, AccessibilityAttachmentModifier>, _BlendModeEffect>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Color, _BackgroundStyleModifier<AnyShapeStyle>>, _OverlayModifier<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, AccessibilityAttachmentModifier>, _BlendModeEffect>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Color, _BackgroundStyleModifier<AnyShapeStyle>>, _OverlayModifier<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, AccessibilityAttachmentModifier>, _BlendModeEffect>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA24_BackgroundStyleModifierVyAA08AnyShapeG0VGGAA08_OverlayH0VyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0N0VSgFQOyACyACyAA5ImageVAA011_ForegroundgH0VyAIGGAA022_EnvironmentKeyWritingH0VyARSgGG_Qo_AA023AccessibilityAttachmentH0VGAA16_BlendModeEffectVGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Color, _BackgroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _OverlayModifier<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, AccessibilityAttachmentModifier>, _BlendModeEffect>> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAEyAA4ViewPAAE10fontWeightyQrAA4FontV0I0VSgFQOyAEyAEyAA5ImageVAA016_ForegroundStyleD0VyAA08AnyShapeM0VGGAA022_EnvironmentKeyWritingD0VyAJSgGG_Qo_AA023AccessibilityAttachmentD0VGAA16_BlendModeEffectVGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Color, _BackgroundStyleModifier<AnyShapeStyle>>, _OverlayModifier<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, AccessibilityAttachmentModifier>, _BlendModeEffect>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Color, _BackgroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Color, _BackgroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Color, _BackgroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ColorVAA24_BackgroundStyleModifierVyAA08AnyShapeG0VGGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<AnyShapeStyle> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA08AnyShapeD0VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Color, _BackgroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<PlaceholderStyleModifier>, _EnvironmentKeyWritingModifier<ArtworkImage.Placeholder.View.Style?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<PlaceholderStyleModifier>, _EnvironmentKeyWritingModifier<ArtworkImage.Placeholder.View.Style?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<PlaceholderStyleModifier>, _EnvironmentKeyWritingModifier<ArtworkImage.Placeholder.View.Style?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB0016PlaceholderStyleF0VGAA022_EnvironmentKeyWritingF0Vy01_g4Kit_aB012ArtworkImageVAFE0I0O0E0V0J0VSgGGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<PlaceholderStyleModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB0016PlaceholderStyleD0VGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ArtworkImage.Placeholder.View.Style?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy010_MusicKit_aB012ArtworkImageV0g4CoreB0E11PlaceholderO4ViewV5StyleVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<PlaceholderStyleModifier>, _EnvironmentKeyWritingModifier<ArtworkImage.Placeholder.View.Style?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_1003164D0()
{
  type metadata accessor for PlaceholderStyleModifier(255);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type Playlist.Variant and conformance Playlist.Variant(&lazy protocol witness table cache variable for type PlaceholderStyleModifier and conformance PlaceholderStyleModifier, type metadata accessor for PlaceholderStyleModifier);
  return swift_getWitnessTable();
}

uint64_t getEnumTagSinglePayload for ArtworkImage.Placeholder.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArtworkImage.Placeholder.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized ArtworkImage.Placeholder.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636973756DLL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6979616C50776F6ELL && a2 == 0xEA0000000000676ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65646C6F4677656ELL && a2 == 0xE900000000000072 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C79616C5077656ELL && a2 == 0xEB00000000747369 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7473696C79616C70 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x646956636973756DLL && a2 == 0xEA00000000006F65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 30324 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F68706F7263696DLL && a2 == 0xEA0000000000656ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E6F73726570 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F69646172 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x65726E6567 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7265736F706D6F63 && a2 == 0xE800000000000000)
  {

    return 11;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA08AnyShapeG0VGGAA022_EnvironmentKeyWritingH0VyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA24_ForegroundStyleModifierVyAA08AnyShapeG0VGGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<AnyShapeStyle> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA08AnyShapeD0VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_100317668(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA5ImageVAA24_ForegroundStyleModifierVyAA08AnyShapeK0VGGAA022_EnvironmentKeyWritingL0VyAHSgGG_Qo_AA023AccessibilityAttachmentL0VGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_14()
{
  v1 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg4type_tMd);
  if (!(*(*(v3 - 8) + 48))(v0 + v2, 11, v3))
  {
    v4 = type metadata accessor for Playlist.Variant();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v0 + v2, 1, v4))
    {
      (*(v5 + 8))(v0 + v2, v4);
    }
  }

  return swift_deallocObject();
}

double partial apply for closure #1 in ArtworkImage.Placeholder.view(availableSize:)@<D0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ArtworkImage.Placeholder(0);

  return closure #1 in ArtworkImage.Placeholder.view(availableSize:)(a1);
}

double BadgedPunchOut.path(in:)@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  specialized BadgedPunchOut.path(in:)(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void (*protocol witness for Animatable.animatableData.modify in conformance BadgedPunchOut(uint64_t *a1))(void *a1)
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

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance BadgedPunchOut(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type BadgedPunchOut and conformance BadgedPunchOut();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance BadgedPunchOut(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type BadgedPunchOut and conformance BadgedPunchOut();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t protocol witness for View.body.getter in conformance BadgedPunchOut(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BadgedPunchOut and conformance BadgedPunchOut();

  return Shape.body.getter(a1, v2);
}

uint64_t TextBadge.init(immersive:)(char a1)
{
  if (a1)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

uint64_t TextBadge.view.getter(char a1)
{
  v2 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleLargeTitle];
  [v2 scaledValueForValue:10.0];
  v4 = v3;

  v5 = [objc_opt_self() configurationWithPointSize:7 weight:v4];
  v10[3] = type metadata accessor for TintShapeStyle();
  v10[4] = &protocol witness table for TintShapeStyle;
  __swift_allocate_boxed_opaque_existential_1(v10);
  TintShapeStyle.init()();
  v9 = v5;
  TextBadge.view(favoriteBadgeConfiguration:)(&v9, a1);
  v7 = v6;
  outlined destroy of FavoriteBadgeConfiguration(&v9);
  return v7;
}

void TextBadge.view(favoriteBadgeConfiguration:)(void *a1, char a2)
{
  if (a2 != 2)
  {
    if (a2 == 3)
    {
      outlined init with copy of ActionPerforming((a1 + 1), v46);
      __swift_project_boxed_opaque_existential_0Tm(v46, v46[3]);
      String.nonBreakingSpace.unsafeMutableAddressor();

      v18 = String._bridgeToObjectiveC()();
      v19 = [objc_opt_self() systemImageNamed:v18];

      if (v19)
      {
        v20 = [v19 imageWithConfiguration:*a1];

        v21 = [v20 imageWithRenderingMode:2];
        Image.init(uiImage:)();
        v22 = Text.init(_:)();
        v24 = v23;
        v26 = v25;
        v27 = static Text.+ infix(_:_:)();
        v29 = v28;
        v31 = v30;
        outlined consume of Text.Storage(v22, v24, v26 & 1);

        v32 = Text.foregroundStyle<A>(_:)();
        v34 = v33;
        v36 = v35;
        outlined consume of Text.Storage(v27, v29, v31 & 1);

        AccessibilityString.favoriteBadgeLabel.unsafeMutableAddressor();

        Text.accessibilityLabel(_:)();

        outlined consume of Text.Storage(v32, v34, v36 & 1);

        __swift_destroy_boxed_opaque_existential_0Tm(v46);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      if (a2 == 4)
      {
        String.nonBreakingSpace.unsafeMutableAddressor();

        Image.init(_internalSystemName:)();
        v2 = Text.init(_:)();
        v4 = v3;
        v6 = v5;
        v7 = static Text.+ infix(_:_:)();
        v9 = v8;
        v11 = v10;
        outlined consume of Text.Storage(v2, v4, v6 & 1);

        LODWORD(v46[0]) = static HierarchicalShapeStyle.secondary.getter();
        v12 = Text.foregroundStyle<A>(_:)();
        v14 = v13;
        v16 = v15;
        outlined consume of Text.Storage(v7, v9, v11 & 1);

        AccessibilityString.immersiveBadgeLabel.unsafeMutableAddressor();

        Text.accessibilityLabel(_:)();

        outlined consume of Text.Storage(v12, v14, v16 & 1);
      }

      else
      {
        v38 = String.nonBreakingSpace.unsafeMutableAddressor();
        v40 = *v38;
        v39 = v38[1];
        v45[0] = v40;
        v45[1] = v39;

        v41 = (*ExplicitRestrictionsController.shared.unsafeMutableAddressor() + OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_symbol);
        swift_beginAccess();
        v43 = *v41;
        v42 = v41[1];

        v44._countAndFlagsBits = v43;
        v44._object = v42;
        String.append(_:)(v44);

        LODWORD(v45[0]) = static HierarchicalShapeStyle.secondary.getter();
        Text.playableForegroundStyle<A>(_:isPlayable:)(v45, a2 & 1);
      }
    }
  }
}

uint64_t static FavoriteBadgeConfiguration.default.getter@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleLargeTitle];
  [v2 scaledValueForValue:10.0];
  v4 = v3;

  v5 = [objc_opt_self() configurationWithPointSize:7 weight:v4];
  a1[4] = type metadata accessor for TintShapeStyle();
  a1[5] = &protocol witness table for TintShapeStyle;
  __swift_allocate_boxed_opaque_existential_1(a1 + 1);
  result = TintShapeStyle.init()();
  *a1 = v5;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TextBadge.CodingKeys()
{
  v1 = 0x7974706D65;
  v2 = 0x657469726F766166;
  if (*v0 != 2)
  {
    v2 = 0x76697372656D6D69;
  }

  if (*v0)
  {
    v1 = 0x746963696C707865;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TextBadge.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized TextBadge.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TextBadge.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TextBadge.CodingKeys and conformance TextBadge.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TextBadge.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TextBadge.CodingKeys and conformance TextBadge.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TextBadge.EmptyCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TextBadge.EmptyCodingKeys and conformance TextBadge.EmptyCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TextBadge.EmptyCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TextBadge.EmptyCodingKeys and conformance TextBadge.EmptyCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TextBadge.ExplicitCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x626179616C507369 && a2 == 0xEA0000000000656CLL)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TextBadge.ExplicitCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TextBadge.ExplicitCodingKeys and conformance TextBadge.ExplicitCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TextBadge.ExplicitCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TextBadge.ExplicitCodingKeys and conformance TextBadge.ExplicitCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TextBadge.FavoriteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TextBadge.FavoriteCodingKeys and conformance TextBadge.FavoriteCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TextBadge.FavoriteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TextBadge.FavoriteCodingKeys and conformance TextBadge.FavoriteCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TextBadge.ImmersiveCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TextBadge.ImmersiveCodingKeys and conformance TextBadge.ImmersiveCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TextBadge.ImmersiveCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TextBadge.ImmersiveCodingKeys and conformance TextBadge.ImmersiveCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TextBadge.encode(to:)(void *a1, int a2)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11MusicCoreUI9TextBadgeO19ImmersiveCodingKeys33_2DD6E1DB7D9FCFCB56C509DF658D8A5ALLOGMd);
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin(v3);
  v28 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11MusicCoreUI9TextBadgeO18FavoriteCodingKeys33_2DD6E1DB7D9FCFCB56C509DF658D8A5ALLOGMd);
  v26 = *(v5 - 8);
  v27 = v5;
  __chkstk_darwin(v5);
  v24 = &v22 - v6;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11MusicCoreUI9TextBadgeO18ExplicitCodingKeys33_2DD6E1DB7D9FCFCB56C509DF658D8A5ALLOGMd);
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11MusicCoreUI9TextBadgeO15EmptyCodingKeys33_2DD6E1DB7D9FCFCB56C509DF658D8A5ALLOGMd);
  v22 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11MusicCoreUI9TextBadgeO10CodingKeys33_2DD6E1DB7D9FCFCB56C509DF658D8A5ALLOGMd);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - v14;
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  lazy protocol witness table accessor for type TextBadge.CodingKeys and conformance TextBadge.CodingKeys();
  v16 = v31;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v16)
  {
    case 2:
      v32 = 0;
      lazy protocol witness table accessor for type TextBadge.EmptyCodingKeys and conformance TextBadge.EmptyCodingKeys();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v22 + 8))(v11, v9);
      return (*(v13 + 8))(v15, v12);
    case 3:
      v34 = 2;
      lazy protocol witness table accessor for type TextBadge.FavoriteCodingKeys and conformance TextBadge.FavoriteCodingKeys();
      v17 = v24;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v19 = v26;
      v18 = v27;
      goto LABEL_6;
    case 4:
      v35 = 3;
      lazy protocol witness table accessor for type TextBadge.ImmersiveCodingKeys and conformance TextBadge.ImmersiveCodingKeys();
      v17 = v28;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v19 = v29;
      v18 = v30;
LABEL_6:
      (*(v19 + 8))(v17, v18);
      return (*(v13 + 8))(v15, v12);
  }

  v33 = 1;
  lazy protocol witness table accessor for type TextBadge.ExplicitCodingKeys and conformance TextBadge.ExplicitCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v21 = v25;
  KeyedEncodingContainer.encode(_:forKey:)();
  (*(v23 + 8))(v8, v21);
  return (*(v13 + 8))(v15, v12);
}

uint64_t protocol witness for Decodable.init(from:) in conformance TextBadge@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized TextBadge.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t GenericMusicItem.favoriteBadge.getter()
{
  v1 = v0;
  v60 = type metadata accessor for Logger();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v59 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Artist();
  v70 = *(v3 - 8);
  v71 = v3;
  __chkstk_darwin(v3);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Playlist();
  v65 = *(v6 - 8);
  v66 = v6;
  __chkstk_darwin(v6);
  v64 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Song();
  v62 = *(v8 - 8);
  v63 = v8;
  __chkstk_darwin(v8);
  v61 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MusicVideo();
  isa = v10[-1].isa;
  v69 = v10;
  __chkstk_darwin(v10);
  v67 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal0A14FavoriteStatusOSgMd);
  __chkstk_darwin(v12 - 8);
  v14 = &v55 - v13;
  v15 = type metadata accessor for Album();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for GenericMusicItem();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v56 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v22);
  v25 = &v55 - v24;
  v26 = *(v20 + 16);
  v57 = v1;
  v27 = v1;
  v28 = v26;
  (v26)(&v55 - v24, v27, v19, v23);
  v29 = (*(v20 + 88))(v25, v19);
  if (v29 != enum case for GenericMusicItem.album(_:))
  {
    if (v29 == enum case for GenericMusicItem.artist(_:))
    {
      (*(v20 + 96))(v25, v19);
      v33 = v70;
      v32 = v71;
      (*(v70 + 32))(v5, v25, v71);
      Artist.favoriteStatus.getter();
      v34 = type metadata accessor for MusicFavoriteStatus();
      (*(*(v34 - 8) + 56))(v14, 0, 1, v34);
      v31 = specialized TextBadge.init(for:)(v14);
      (*(v33 + 8))(v5, v32);
      return v31;
    }

    if (v29 == enum case for GenericMusicItem.composer(_:) || v29 == enum case for GenericMusicItem.creditArtist(_:) || v29 == enum case for GenericMusicItem.curator(_:) || v29 == enum case for GenericMusicItem.editorialItem(_:) || v29 == enum case for GenericMusicItem.genre(_:) || v29 == enum case for GenericMusicItem.musicMovie(_:))
    {
      goto LABEL_32;
    }

    if (v29 == enum case for GenericMusicItem.musicVideo(_:))
    {
      (*(v20 + 96))(v25, v19);
      v35 = v67;
      v36 = isa;
      v37 = v69;
      (*(isa + 4))(v67, v25, v69);
      MusicVideo.favoriteStatus.getter();
LABEL_15:
      v38 = type metadata accessor for MusicFavoriteStatus();
      (*(*(v38 - 8) + 56))(v14, 0, 1, v38);
      v31 = specialized TextBadge.init(for:)(v14);
      (*(v36 + 1))(v35, v37);
      return v31;
    }

    if (v29 == enum case for GenericMusicItem.playlist(_:))
    {
      (*(v20 + 96))(v25, v19);
      v35 = v64;
      v36 = v65;
      v37 = v66;
      v65[4](v64, v25, v66);
      Playlist.favoriteStatus.getter();
      goto LABEL_15;
    }

    if (v29 == enum case for GenericMusicItem.playlistFolder(_:) || v29 == enum case for GenericMusicItem.radioShow(_:) || v29 == enum case for GenericMusicItem.recordLabel(_:) || v29 == enum case for GenericMusicItem.socialProfile(_:))
    {
      goto LABEL_32;
    }

    if (v29 == enum case for GenericMusicItem.song(_:))
    {
      (*(v20 + 96))(v25, v19);
      v35 = v61;
      v36 = v62;
      v37 = v63;
      v62[4](v61, v25, v63);
      Song.favoriteStatus.getter();
      goto LABEL_15;
    }

    if (v29 == enum case for GenericMusicItem.station(_:) || v29 == enum case for GenericMusicItem.tvEpisode(_:) || v29 == enum case for GenericMusicItem.tvSeason(_:) || v29 == enum case for GenericMusicItem.tvShow(_:) || v29 == enum case for GenericMusicItem.uploadedAudio(_:) || v29 == enum case for GenericMusicItem.uploadedVideo(_:) || v29 == enum case for GenericMusicItem.other(_:))
    {
LABEL_32:
      (*(v20 + 8))(v25, v19);
    }

    else
    {
      v39 = Logger.badging.unsafeMutableAddressor();
      v41 = v58;
      v40 = v59;
      v42 = v60;
      (*(v58 + 16))(v59, v39, v60);
      v43 = v56;
      v28(v56, v57, v19);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        LODWORD(v70) = v45;
        v47 = v46;
        v71 = swift_slowAlloc();
        v72 = v71;
        *v47 = 136315394;
        *(v47 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(0xD000000000000010, 0x80000001004D09C0, &v72);
        *(v47 + 12) = 2080;
        lazy protocol witness table accessor for type GenericMusicItem and conformance GenericMusicItem(&_s16MusicKitInternal07GenericA4ItemOACs23CustomStringConvertibleAAWL_0, &type metadata accessor for GenericMusicItem);
        v48 = dispatch thunk of CustomStringConvertible.description.getter();
        v50 = v49;
        v51 = *(v20 + 8);
        v69 = v44;
        v51(v43, v19);
        v52 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v48, v50, &v72);

        *(v47 + 14) = v52;
        v53 = v69;
        _os_log_impl(&_mh_execute_header, v69, v70, "Unhandled case for favorite badge with item: %s, %s", v47, 0x16u);
        swift_arrayDestroy();

        (*(v41 + 8))(v59, v60);
      }

      else
      {

        v51 = *(v20 + 8);
        v51(v43, v19);
        (*(v41 + 8))(v40, v42);
      }

      v51(v25, v19);
    }

    return 2;
  }

  (*(v20 + 96))(v25, v19);
  (*(v16 + 32))(v18, v25, v15);
  Album.favoriteStatus.getter();
  v30 = type metadata accessor for MusicFavoriteStatus();
  (*(*(v30 - 8) + 56))(v14, 0, 1, v30);
  v31 = specialized TextBadge.init(for:)(v14);
  (*(v16 + 8))(v18, v15);
  return v31;
}

uint64_t GenericMusicItem.explicitBadge(_:)(int a1)
{
  LODWORD(v99) = a1;
  v71 = type metadata accessor for Logger();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v65 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for TVSeason();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v78 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for MusicMovie();
  v96 = *(v3 - 8);
  v97 = v3;
  __chkstk_darwin(v3);
  v95 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for TVShow();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal18VideoContentRatingVSgMd);
  __chkstk_darwin(v6 - 8);
  v98 = &v65 - v7;
  v8 = type metadata accessor for TVEpisode();
  v82 = *(v8 - 8);
  v83 = v8;
  __chkstk_darwin(v8);
  v81 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for UploadedVideo();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v66 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for UploadedAudio();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v72 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Playlist();
  v91 = *(v12 - 8);
  v92 = v12;
  __chkstk_darwin(v12);
  v90 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Station();
  v85 = *(v14 - 8);
  v86 = v14;
  __chkstk_darwin(v14);
  v84 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Song();
  v88 = *(v16 - 8);
  v89 = v16;
  __chkstk_darwin(v16);
  v87 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for MusicVideo();
  v93 = *(v18 - 8);
  v94 = v18;
  __chkstk_darwin(v18);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit13ContentRatingOSgMd_0);
  __chkstk_darwin(v21 - 8);
  v23 = &v65 - v22;
  v24 = type metadata accessor for Album();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for GenericMusicItem();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v65 = &v65 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v31);
  v34 = &v65 - v33;
  v35 = *(v29 + 16);
  v35(&v65 - v33, v100, v28, v32);
  v36 = (*(v29 + 88))(v34, v28);
  if (v36 != enum case for GenericMusicItem.album(_:))
  {
    v38 = v99;
    if (v36 == enum case for GenericMusicItem.artist(_:) || v36 == enum case for GenericMusicItem.composer(_:) || v36 == enum case for GenericMusicItem.creditArtist(_:) || v36 == enum case for GenericMusicItem.curator(_:) || v36 == enum case for GenericMusicItem.editorialItem(_:) || v36 == enum case for GenericMusicItem.genre(_:))
    {
      goto LABEL_37;
    }

    if (v36 == enum case for GenericMusicItem.musicMovie(_:))
    {
      (*(v29 + 96))(v34, v28);
      v39 = v95;
      v40 = v96;
      v41 = v97;
      (*(v96 + 32))(v95, v34, v97);
      v42 = v98;
      MusicMovie.contentRating.getter();
LABEL_11:
      v37 = specialized TextBadge.init(for:isPlayable:)(v42, v38 & 1);
      (*(v40 + 8))(v39, v41);
      return v37;
    }

    if (v36 == enum case for GenericMusicItem.musicVideo(_:))
    {
      (*(v29 + 96))(v34, v28);
      v44 = v93;
      v43 = v94;
      (*(v93 + 32))(v20, v34, v94);
      MusicVideo.contentRating.getter();
      v37 = specialized TextBadge.init(for:isPlayable:)(v23, v38 & 1);
      (*(v44 + 8))(v20, v43);
      return v37;
    }

    if (v36 == enum case for GenericMusicItem.playlist(_:))
    {
      (*(v29 + 96))(v34, v28);
      v45 = v90;
      v46 = v91;
      v47 = v92;
      (*(v91 + 32))(v90, v34, v92);
      Playlist.contentRating.getter();
LABEL_16:
      v37 = specialized TextBadge.init(for:isPlayable:)(v23, v38 & 1);
      (*(v46 + 8))(v45, v47);
      return v37;
    }

    if (v36 == enum case for GenericMusicItem.playlistFolder(_:) || v36 == enum case for GenericMusicItem.radioShow(_:) || v36 == enum case for GenericMusicItem.recordLabel(_:) || v36 == enum case for GenericMusicItem.socialProfile(_:))
    {
      goto LABEL_37;
    }

    if (v36 == enum case for GenericMusicItem.song(_:))
    {
      (*(v29 + 96))(v34, v28);
      v45 = v87;
      v46 = v88;
      v47 = v89;
      (*(v88 + 32))(v87, v34, v89);
      Song.contentRating.getter();
      goto LABEL_16;
    }

    if (v36 == enum case for GenericMusicItem.station(_:))
    {
      (*(v29 + 96))(v34, v28);
      v48 = v84;
      v49 = v85;
      v50 = v86;
      (*(v85 + 32))(v84, v34, v86);
      Station.contentRating.getter();
LABEL_25:
      v37 = specialized TextBadge.init(for:isPlayable:)(v23, v38 & 1);
      (*(v49 + 8))(v48, v50);
      return v37;
    }

    if (v36 == enum case for GenericMusicItem.tvEpisode(_:))
    {
      (*(v29 + 96))(v34, v28);
      v39 = v81;
      v40 = v82;
      v41 = v83;
      (*(v82 + 32))(v81, v34, v83);
      v42 = v98;
      TVEpisode.contentRating.getter();
      goto LABEL_11;
    }

    if (v36 == enum case for GenericMusicItem.tvSeason(_:))
    {
      (*(v29 + 96))(v34, v28);
      v51 = v79;
      v52 = v78;
      v53 = v80;
      (*(v79 + 32))(v78, v34, v80);
      v54 = v98;
      TVSeason.contentRating.getter();
      v37 = specialized TextBadge.init(for:isPlayable:)(v54, v38 & 1);
      (*(v51 + 8))(v52, v53);
      return v37;
    }

    if (v36 == enum case for GenericMusicItem.tvShow(_:))
    {
      (*(v29 + 96))(v34, v28);
      v40 = v76;
      v39 = v75;
      v41 = v77;
      (*(v76 + 32))(v75, v34, v77);
      v42 = v98;
      TVShow.contentRating.getter();
      goto LABEL_11;
    }

    if (v36 == enum case for GenericMusicItem.uploadedAudio(_:))
    {
      (*(v29 + 96))(v34, v28);
      v49 = v73;
      v48 = v72;
      v50 = v74;
      (*(v73 + 32))(v72, v34, v74);
      UploadedAudio.contentRating.getter();
      goto LABEL_25;
    }

    if (v36 == enum case for GenericMusicItem.uploadedVideo(_:))
    {
      (*(v29 + 96))(v34, v28);
      v49 = v67;
      v48 = v66;
      v50 = v68;
      (*(v67 + 32))(v66, v34, v68);
      UploadedVideo.contentRating.getter();
      goto LABEL_25;
    }

    if (v36 == enum case for GenericMusicItem.other(_:))
    {
LABEL_37:
      (*(v29 + 8))(v34, v28);
    }

    else
    {
      v56 = Logger.badging.unsafeMutableAddressor();
      (*(v70 + 16))(v69, v56, v71);
      (v35)(v65, v100, v28);
      v57 = Logger.logObject.getter();
      LODWORD(v100) = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v57, v100))
      {
        v58 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v101 = v99;
        *v58 = 136315394;
        *(v58 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(0xD000000000000010, 0x80000001004D09C0, &v101);
        *(v58 + 12) = 2080;
        lazy protocol witness table accessor for type GenericMusicItem and conformance GenericMusicItem(&_s16MusicKitInternal07GenericA4ItemOACs23CustomStringConvertibleAAWL_0, &type metadata accessor for GenericMusicItem);
        v59 = v65;
        v60 = dispatch thunk of CustomStringConvertible.description.getter();
        v62 = v61;
        v63 = *(v29 + 8);
        v63(v59, v28);
        v64 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v60, v62, &v101);

        *(v58 + 14) = v64;
        _os_log_impl(&_mh_execute_header, v57, v100, "Unhandled case for explicit badge with item: %s, %s", v58, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v63 = *(v29 + 8);
        v63(v65, v28);
      }

      (*(v70 + 8))(v69, v71);
      v63(v34, v28);
    }

    return 2;
  }

  (*(v29 + 96))(v34, v28);
  (*(v25 + 32))(v27, v34, v24);
  Album.contentRating.getter();
  v37 = specialized TextBadge.init(for:isPlayable:)(v23, v99 & 1);
  (*(v25 + 8))(v27, v24);
  return v37;
}

double specialized BadgedPunchOut.path(in:)@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  Path.init()();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetHeight(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetHeight(v15);
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  CGRectGetWidth(v16);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  CGRectGetMinX(v17);
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  CGRectGetMaxY(v18);
  Path.move(to:)();
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  CGRectGetMinX(v19);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  CGRectGetMinY(v20);
  Path.addLine(to:)();
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetMaxX(v21);
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  CGRectGetMinY(v22);
  Path.addLine(to:)();
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  CGRectGetMaxX(v23);
  Path.addLine(to:)();
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  CGRectGetMaxY(v24);
  Path.addArc(tangent1End:tangent2End:radius:transform:)();
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  CGRectGetMinX(v25);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  CGRectGetMaxY(v26);
  Path.addLine(to:)();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

uint64_t specialized TextBadge.init(for:isPlayable:)(uint64_t a1, int a2)
{
  v24 = a2;
  v3 = type metadata accessor for ContentRating();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit13ContentRatingOSg_ADtMd_0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v23[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit13ContentRatingOSgMd_0);
  __chkstk_darwin(v11 - 8);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v14);
  v17 = &v23[-v16];
  (*(v4 + 104))(&v23[-v16], enum case for ContentRating.explicit(_:), v3, v15);
  (*(v4 + 56))(v17, 0, 1, v3);
  v18 = *(v8 + 56);
  outlined init with copy of TaskPriority?(a1, v10, &_s8MusicKit13ContentRatingOSgMd_0);
  outlined init with copy of TaskPriority?(v17, &v10[v18], &_s8MusicKit13ContentRatingOSgMd_0);
  v19 = *(v4 + 48);
  if (v19(v10, 1, v3) != 1)
  {
    outlined init with copy of TaskPriority?(v10, v13, &_s8MusicKit13ContentRatingOSgMd_0);
    if (v19(&v10[v18], 1, v3) != 1)
    {
      (*(v4 + 32))(v6, &v10[v18], v3);
      lazy protocol witness table accessor for type GenericMusicItem and conformance GenericMusicItem(&_s8MusicKit13ContentRatingOACSQAAWL_0, &type metadata accessor for ContentRating);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of TaskPriority?(a1, &_s8MusicKit13ContentRatingOSgMd_0);
      v22 = *(v4 + 8);
      v22(v6, v3);
      outlined destroy of TaskPriority?(v17, &_s8MusicKit13ContentRatingOSgMd_0);
      v22(v13, v3);
      outlined destroy of TaskPriority?(v10, &_s8MusicKit13ContentRatingOSgMd_0);
      if (v21)
      {
        return v24 & 1;
      }

      return 2;
    }

    outlined destroy of TaskPriority?(a1, &_s8MusicKit13ContentRatingOSgMd_0);
    outlined destroy of TaskPriority?(v17, &_s8MusicKit13ContentRatingOSgMd_0);
    (*(v4 + 8))(v13, v3);
LABEL_6:
    outlined destroy of TaskPriority?(v10, &_s8MusicKit13ContentRatingOSg_ADtMd_0);
    return 2;
  }

  outlined destroy of TaskPriority?(a1, &_s8MusicKit13ContentRatingOSgMd_0);
  outlined destroy of TaskPriority?(v17, &_s8MusicKit13ContentRatingOSgMd_0);
  if (v19(&v10[v18], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of TaskPriority?(v10, &_s8MusicKit13ContentRatingOSgMd_0);
  return v24 & 1;
}

uint64_t specialized TextBadge.init(for:isPlayable:)(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal18VideoContentRatingVSgMd);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for VideoContentRating();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TaskPriority?(a1, v6, &_s16MusicKitInternal18VideoContentRatingVSgMd);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of TaskPriority?(a1, &_s16MusicKitInternal18VideoContentRatingVSgMd);
    outlined destroy of TaskPriority?(v6, &_s16MusicKitInternal18VideoContentRatingVSgMd);
    return 2;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v12 = VideoContentRating.isExplicit.getter();
    outlined destroy of TaskPriority?(a1, &_s16MusicKitInternal18VideoContentRatingVSgMd);
    (*(v8 + 8))(v10, v7);
    result = 2;
    if (v12 != 2)
    {
      if (v12)
      {
        return a2 & 1;
      }

      else
      {
        return 2;
      }
    }
  }

  return result;
}

uint64_t specialized TextBadge.init(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal0A14FavoriteStatusOSgMd);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v13 - v6;
  outlined init with copy of TaskPriority?(a1, &v13 - v6, &_s16MusicKitInternal0A14FavoriteStatusOSgMd);
  v8 = type metadata accessor for MusicFavoriteStatus();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    outlined init with copy of TaskPriority?(v7, v4, &_s16MusicKitInternal0A14FavoriteStatusOSgMd);
    v10 = (*(v9 + 88))(v4, v8);
    if (v10 != enum case for MusicFavoriteStatus.neutral(_:))
    {
      if (v10 == enum case for MusicFavoriteStatus.favorited(_:))
      {
        v11 = 3;
        goto LABEL_4;
      }

      if (v10 != enum case for MusicFavoriteStatus.disliked(_:))
      {
        (*(v9 + 8))(v4, v8);
      }
    }
  }

  v11 = 2;
LABEL_4:
  outlined destroy of TaskPriority?(v7, &_s16MusicKitInternal0A14FavoriteStatusOSgMd);
  outlined destroy of TaskPriority?(a1, &_s16MusicKitInternal0A14FavoriteStatusOSgMd);
  return v11;
}

unint64_t lazy protocol witness table accessor for type TextBadge.CodingKeys and conformance TextBadge.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TextBadge.CodingKeys and conformance TextBadge.CodingKeys;
  if (!lazy protocol witness table cache variable for type TextBadge.CodingKeys and conformance TextBadge.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextBadge.CodingKeys and conformance TextBadge.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextBadge.CodingKeys and conformance TextBadge.CodingKeys;
  if (!lazy protocol witness table cache variable for type TextBadge.CodingKeys and conformance TextBadge.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextBadge.CodingKeys and conformance TextBadge.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextBadge.CodingKeys and conformance TextBadge.CodingKeys;
  if (!lazy protocol witness table cache variable for type TextBadge.CodingKeys and conformance TextBadge.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextBadge.CodingKeys and conformance TextBadge.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextBadge.CodingKeys and conformance TextBadge.CodingKeys;
  if (!lazy protocol witness table cache variable for type TextBadge.CodingKeys and conformance TextBadge.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextBadge.CodingKeys and conformance TextBadge.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextBadge.ImmersiveCodingKeys and conformance TextBadge.ImmersiveCodingKeys()
{
  result = lazy protocol witness table cache variable for type TextBadge.ImmersiveCodingKeys and conformance TextBadge.ImmersiveCodingKeys;
  if (!lazy protocol witness table cache variable for type TextBadge.ImmersiveCodingKeys and conformance TextBadge.ImmersiveCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextBadge.ImmersiveCodingKeys and conformance TextBadge.ImmersiveCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextBadge.ImmersiveCodingKeys and conformance TextBadge.ImmersiveCodingKeys;
  if (!lazy protocol witness table cache variable for type TextBadge.ImmersiveCodingKeys and conformance TextBadge.ImmersiveCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextBadge.ImmersiveCodingKeys and conformance TextBadge.ImmersiveCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextBadge.ImmersiveCodingKeys and conformance TextBadge.ImmersiveCodingKeys;
  if (!lazy protocol witness table cache variable for type TextBadge.ImmersiveCodingKeys and conformance TextBadge.ImmersiveCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextBadge.ImmersiveCodingKeys and conformance TextBadge.ImmersiveCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextBadge.FavoriteCodingKeys and conformance TextBadge.FavoriteCodingKeys()
{
  result = lazy protocol witness table cache variable for type TextBadge.FavoriteCodingKeys and conformance TextBadge.FavoriteCodingKeys;
  if (!lazy protocol witness table cache variable for type TextBadge.FavoriteCodingKeys and conformance TextBadge.FavoriteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextBadge.FavoriteCodingKeys and conformance TextBadge.FavoriteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextBadge.FavoriteCodingKeys and conformance TextBadge.FavoriteCodingKeys;
  if (!lazy protocol witness table cache variable for type TextBadge.FavoriteCodingKeys and conformance TextBadge.FavoriteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextBadge.FavoriteCodingKeys and conformance TextBadge.FavoriteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextBadge.FavoriteCodingKeys and conformance TextBadge.FavoriteCodingKeys;
  if (!lazy protocol witness table cache variable for type TextBadge.FavoriteCodingKeys and conformance TextBadge.FavoriteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextBadge.FavoriteCodingKeys and conformance TextBadge.FavoriteCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextBadge.ExplicitCodingKeys and conformance TextBadge.ExplicitCodingKeys()
{
  result = lazy protocol witness table cache variable for type TextBadge.ExplicitCodingKeys and conformance TextBadge.ExplicitCodingKeys;
  if (!lazy protocol witness table cache variable for type TextBadge.ExplicitCodingKeys and conformance TextBadge.ExplicitCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextBadge.ExplicitCodingKeys and conformance TextBadge.ExplicitCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextBadge.ExplicitCodingKeys and conformance TextBadge.ExplicitCodingKeys;
  if (!lazy protocol witness table cache variable for type TextBadge.ExplicitCodingKeys and conformance TextBadge.ExplicitCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextBadge.ExplicitCodingKeys and conformance TextBadge.ExplicitCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextBadge.ExplicitCodingKeys and conformance TextBadge.ExplicitCodingKeys;
  if (!lazy protocol witness table cache variable for type TextBadge.ExplicitCodingKeys and conformance TextBadge.ExplicitCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextBadge.ExplicitCodingKeys and conformance TextBadge.ExplicitCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextBadge.ExplicitCodingKeys and conformance TextBadge.ExplicitCodingKeys;
  if (!lazy protocol witness table cache variable for type TextBadge.ExplicitCodingKeys and conformance TextBadge.ExplicitCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextBadge.ExplicitCodingKeys and conformance TextBadge.ExplicitCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextBadge.EmptyCodingKeys and conformance TextBadge.EmptyCodingKeys()
{
  result = lazy protocol witness table cache variable for type TextBadge.EmptyCodingKeys and conformance TextBadge.EmptyCodingKeys;
  if (!lazy protocol witness table cache variable for type TextBadge.EmptyCodingKeys and conformance TextBadge.EmptyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextBadge.EmptyCodingKeys and conformance TextBadge.EmptyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextBadge.EmptyCodingKeys and conformance TextBadge.EmptyCodingKeys;
  if (!lazy protocol witness table cache variable for type TextBadge.EmptyCodingKeys and conformance TextBadge.EmptyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextBadge.EmptyCodingKeys and conformance TextBadge.EmptyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextBadge.EmptyCodingKeys and conformance TextBadge.EmptyCodingKeys;
  if (!lazy protocol witness table cache variable for type TextBadge.EmptyCodingKeys and conformance TextBadge.EmptyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextBadge.EmptyCodingKeys and conformance TextBadge.EmptyCodingKeys);
  }

  return result;
}

uint64_t specialized TextBadge.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974706D65 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746963696C707865 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657469726F766166 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x76697372656D6D69 && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t specialized TextBadge.init(from:)(void *a1)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11MusicCoreUI9TextBadgeO19ImmersiveCodingKeys33_2DD6E1DB7D9FCFCB56C509DF658D8A5ALLOGMd);
  v43 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = &v32 - v2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11MusicCoreUI9TextBadgeO18FavoriteCodingKeys33_2DD6E1DB7D9FCFCB56C509DF658D8A5ALLOGMd);
  v40 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = &v32 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11MusicCoreUI9TextBadgeO18ExplicitCodingKeys33_2DD6E1DB7D9FCFCB56C509DF658D8A5ALLOGMd);
  v5 = *(v4 - 8);
  v36 = v4;
  v37 = v5;
  __chkstk_darwin(v4);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11MusicCoreUI9TextBadgeO15EmptyCodingKeys33_2DD6E1DB7D9FCFCB56C509DF658D8A5ALLOGMd);
  v35 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11MusicCoreUI9TextBadgeO10CodingKeys33_2DD6E1DB7D9FCFCB56C509DF658D8A5ALLOGMd);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - v13;
  v15 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_0Tm(a1, v15);
  lazy protocol witness table accessor for type TextBadge.CodingKeys and conformance TextBadge.CodingKeys();
  v16 = v44;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v16)
  {
    v17 = v10;
    v33 = v8;
    v34 = v7;
    v19 = v41;
    v18 = v42;
    v20 = v43;
    v44 = v12;
    v21 = KeyedDecodingContainer.allKeys.getter();
    v22 = (2 * *(v21 + 16)) | 1;
    v46 = v21;
    v47 = v21 + 32;
    v48 = 0;
    v49 = v22;
    v23 = specialized Collection<>.popFirst()();
    if (v23 == 4 || v48 != v49 >> 1)
    {
      v12 = type metadata accessor for DecodingError();
      swift_allocError();
      v24 = v11;
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v26 = &type metadata for TextBadge;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v12 - 8) + 104))(v26, enum case for DecodingError.typeMismatch(_:), v12);
      swift_willThrow();
      (*(v44 + 8))(v14, v24);
      swift_unknownObjectRelease();
    }

    else if (v23 > 1u)
    {
      v28 = v44;
      if (v23 == 2)
      {
        v50 = 2;
        lazy protocol witness table accessor for type TextBadge.FavoriteCodingKeys and conformance TextBadge.FavoriteCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v40 + 8))(v19, v38);
        (*(v28 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v12 = 3;
      }

      else
      {
        v50 = 3;
        lazy protocol witness table accessor for type TextBadge.ImmersiveCodingKeys and conformance TextBadge.ImmersiveCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v20 + 8))(v18, v39);
        (*(v28 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v12 = 4;
      }
    }

    else if (v23)
    {
      v50 = 1;
      lazy protocol witness table accessor for type TextBadge.ExplicitCodingKeys and conformance TextBadge.ExplicitCodingKeys();
      v29 = v34;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v30 = v36;
      v31 = KeyedDecodingContainer.decode(_:forKey:)();
      (*(v37 + 8))(v29, v30);
      (*(v44 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v12 = v31 & 1;
    }

    else
    {
      v50 = 0;
      lazy protocol witness table accessor for type TextBadge.EmptyCodingKeys and conformance TextBadge.EmptyCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v35 + 8))(v17, v33);
      (*(v44 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v12 = 2;
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v45);
  return v12;
}

unint64_t lazy protocol witness table accessor for type BadgedPunchOut and conformance BadgedPunchOut()
{
  result = lazy protocol witness table cache variable for type BadgedPunchOut and conformance BadgedPunchOut;
  if (!lazy protocol witness table cache variable for type BadgedPunchOut and conformance BadgedPunchOut)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BadgedPunchOut and conformance BadgedPunchOut);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BadgedPunchOut and conformance BadgedPunchOut;
  if (!lazy protocol witness table cache variable for type BadgedPunchOut and conformance BadgedPunchOut)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BadgedPunchOut and conformance BadgedPunchOut);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BadgedPunchOut and conformance BadgedPunchOut;
  if (!lazy protocol witness table cache variable for type BadgedPunchOut and conformance BadgedPunchOut)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BadgedPunchOut and conformance BadgedPunchOut);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ShapeView<BadgedPunchOut, ForegroundStyle> and conformance _ShapeView<A, B>()
{
  result = lazy protocol witness table cache variable for type _ShapeView<BadgedPunchOut, ForegroundStyle> and conformance _ShapeView<A, B>;
  if (!lazy protocol witness table cache variable for type _ShapeView<BadgedPunchOut, ForegroundStyle> and conformance _ShapeView<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI10_ShapeViewVy09MusicCoreB014BadgedPunchOutVAA15ForegroundStyleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeView<BadgedPunchOut, ForegroundStyle> and conformance _ShapeView<A, B>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextBadge(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_19;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_19:
  v7 = *a1;
  if (v7 < 2)
  {
    return 0;
  }

  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  result = v8 - 2;
  if (v8 <= 2)
  {
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for TextBadge(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type GenericMusicItem and conformance GenericMusicItem(unint64_t *a1, void (*a2)(uint64_t))
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

id CNSwiftUIAvatarView.makeUIView(context:)(uint64_t a1, uint64_t a2, NSString a3)
{
  v4 = [objc_opt_self() defaultSettings];
  v5 = [objc_allocWithZone(CNAvatarView) initWithSettings:v4];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1004F2F10;
  if (a3)
  {
    a3 = String._bridgeToObjectiveC()();
  }

  v7 = [objc_opt_self() contactWithDisplayName:a3 handleStrings:0];

  *(v6 + 32) = v7;
  type metadata accessor for CNContact();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 setContacts:isa];

  return v5;
}

void CNSwiftUIAvatarView.updateUIView(_:context:)(void *a1, uint64_t a2, uint64_t a3, NSString a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1004F2F10;
  if (a4)
  {
    a4 = String._bridgeToObjectiveC()();
  }

  v7 = [objc_opt_self() contactWithDisplayName:a4 handleStrings:0];

  *(v6 + 32) = v7;
  type metadata accessor for CNContact();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setContacts:isa];
}

unint64_t type metadata accessor for CNContact()
{
  result = lazy cache variable for type metadata for CNContact;
  if (!lazy cache variable for type metadata for CNContact)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CNContact);
  }

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance CNSwiftUIAvatarView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type CNSwiftUIAvatarView and conformance CNSwiftUIAvatarView();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance CNSwiftUIAvatarView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type CNSwiftUIAvatarView and conformance CNSwiftUIAvatarView();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance CNSwiftUIAvatarView()
{
  lazy protocol witness table accessor for type CNSwiftUIAvatarView and conformance CNSwiftUIAvatarView();
  UIViewRepresentable.body.getter();
  __break(1u);
}

id Card.ViewController.init(content:)(uint64_t a1)
{
  v2 = v1;
  v4 = *((swift_isaMask & *v1) + 0x50);
  type metadata accessor for Card.ViewController.RootViewController();
  v5 = specialized Card.ViewController.RootViewController.__allocating_init(content:)(a1);
  *&v2[direct field offset for Card.ViewController.rootViewController] = v5;
  v17.receiver = v2;
  v17.super_class = type metadata accessor for Card.ViewController();
  v6 = v5;
  v7 = objc_msgSendSuper2(&v17, "initWithRootViewController:", v6);
  [v7 setModalPresentationStyle:{2, v17.receiver, v17.super_class}];
  v8 = [v7 sheetPresentationController];

  if (v8)
  {
    v9 = [objc_opt_self() systemBackgroundColor];
    [v8 _setNonLargeBackground:v9];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1004F2F10;
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UISheetPresentationControllerDetent);
    v11 = swift_allocObject();
    *(v11 + 16) = v6;
    *(v11 + 24) = v7;
    v12 = v6;
    v13 = v7;
    v14 = static UISheetPresentationControllerDetent.custom(identifier:resolver:)();

    *(v10 + 32) = v14;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v8 setDetents:isa];

    [v8 setWidthFollowsPreferredContentSizeWhenEdgeAttached:1];
    (*(*(v4 - 8) + 8))(a1, v4);
  }

  else
  {
    (*(*(v4 - 8) + 8))(a1, v4);
  }

  return v7;
}

id closure #1 in Card.ViewController.init(content:)(uint64_t a1, uint64_t a2, void *a3)
{
  Card.ViewController.RootViewController.preferredContentSize(forWidth:)(0, 1);
  v5 = v4;
  result = [a3 view];
  if (*&result == 0.0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    [result safeAreaInsets];
    v9 = v8;

    *&result = v5 - v9;
  }

  return result;
}

Swift::Void __swiftcall Card.ViewController.viewDidLoad()()
{
  ObjectType = swift_getObjectType();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for Card.ViewController();
  objc_msgSendSuper2(&v3, "viewDidLoad");
  Card.ViewController.RootViewController.preferredContentSize(forWidth:)(0, 1);
  [v0 setPreferredContentSize:?];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd_0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004F2400;
  *(v2 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v2 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(swift_allocObject() + 16) = ObjectType;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();
}

void @objc Card.ViewController.viewDidLoad()(void *a1)
{
  v1 = a1;
  Card.ViewController.viewDidLoad()();
}

id Card.ViewController.viewWillTransition(to:with:)(uint64_t a1, double a2, double a3)
{
  Card.ViewController.RootViewController.preferredContentSize(forWidth:)(*&a2, 0);
  [v3 setPreferredContentSize:?];
  v8.receiver = v3;
  v8.super_class = type metadata accessor for Card.ViewController();
  return objc_msgSendSuper2(&v8, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
}

void @objc Card.ViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  Card.ViewController.viewWillTransition(to:with:)(a5, a2, a3);
  swift_unknownObjectRelease();
}

void Card.ViewController.RootViewController.viewDidLoad()()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for Card.ViewController.RootViewController();
  objc_msgSendSuper2(&v9, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = Card.ViewController.RootViewController.scrollView.getter();
    [v2 addSubview:v3];

    v4 = *&v0[direct field offset for Card.ViewController.RootViewController.$__lazy_storage_$_scrollView];
    v5 = *&v0[direct field offset for Card.ViewController.RootViewController.hostingController];
    v6 = v4;
    v7 = [v5 view];
    if (v7)
    {
      v8 = v7;
      [v6 addSubview:v7];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void @objc Card.ViewController.RootViewController.viewDidLoad()(void *a1)
{
  v1 = a1;
  Card.ViewController.RootViewController.viewDidLoad()();
}

id Card.ViewController.RootViewController.viewDidLayoutSubviews()()
{
  v1 = v0;
  v48.receiver = v0;
  v48.super_class = type metadata accessor for Card.ViewController.RootViewController();
  objc_msgSendSuper2(&v48, "viewDidLayoutSubviews");
  Card.ViewController.RootViewController.contentInsets.getter();
  v2 = *&v0[direct field offset for Card.ViewController.RootViewController.hostingController];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  [result bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v49.origin.x = v6;
  v49.origin.y = v8;
  v49.size.width = v10;
  v49.size.height = v12;
  CGRectGetWidth(v49);
  Card.ViewController.RootViewController.contentInsets.getter();
  NSDirectionalEdgeInsets.horizontal.getter();
  dispatch thunk of UIHostingController.sizeThatFits(in:)();
  v14 = v13;

  result = [v1 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v15 = result;
  [result bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v50.origin.x = v17;
  v50.origin.y = v19;
  v50.size.width = v21;
  v50.size.height = v23;
  Height = CGRectGetHeight(v50);
  Card.ViewController.RootViewController.additionalTopContentInsets(exceedingBounds:)(Height < v14);
  v25 = Card.ViewController.RootViewController.scrollView.getter();
  result = [v1 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v26 = result;
  [result bounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v51.origin.x = v28;
  v51.origin.y = v30;
  v51.size.width = v32;
  v51.size.height = v34;
  Width = CGRectGetWidth(v51);
  NSDirectionalEdgeInsets.vertical.getter();
  [v25 setContentSize:{Width, v14 + v36}];

  result = [*&v1[direct field offset for Card.ViewController.RootViewController.hostingController] view];
  if (result)
  {
    v37 = result;
    v38 = direct field offset for Card.ViewController.RootViewController.$__lazy_storage_$_scrollView;
    v39 = *&v1[direct field offset for Card.ViewController.RootViewController.$__lazy_storage_$_scrollView];
    CGRect.centeringAlong(axes:in:)();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;

    [v37 setFrame:{v41, v43, v45, v47}];
    return [*&v1[v38] _setPocketsEnabled:Height < v14];
  }

LABEL_9:
  __break(1u);
  return result;
}

void @objc Card.ViewController.RootViewController.viewDidLayoutSubviews()(void *a1)
{
  v1 = a1;
  Card.ViewController.RootViewController.viewDidLayoutSubviews()();
}

id Card.ViewController.RootViewController.scrollView.getter()
{
  v1 = direct field offset for Card.ViewController.RootViewController.$__lazy_storage_$_scrollView;
  v2 = *&v0[direct field offset for Card.ViewController.RootViewController.$__lazy_storage_$_scrollView];
  if (v2)
  {
    v3 = *&v0[direct field offset for Card.ViewController.RootViewController.$__lazy_storage_$_scrollView];
  }

  else
  {
    v4 = closure #1 in Card.ViewController.RootViewController.scrollView.getter(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in Card.ViewController.RootViewController.scrollView.getter(void *a1)
{
  result = [a1 view];
  if (result)
  {
    v2 = result;
    [result bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = [objc_allocWithZone(UIScrollView) initWithFrame:{v4, v6, v8, v10}];
    [v11 setShowsVerticalScrollIndicator:0];
    [v11 setShowsHorizontalScrollIndicator:0];
    v12 = objc_opt_self();
    v13 = v11;
    v14 = [v12 clearColor];
    [v13 setBackgroundColor:v14];

    [v13 setAutoresizingMask:18];
    [v13 setContentInsetAdjustmentBehavior:2];
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void Card.ViewController.RootViewController.additionalTopContentInsets(exceedingBounds:)(char a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 6 || (v5 = 0.0, (a1 & 1) != 0))
  {
    v6 = [v1 view];
    if (v6)
    {
      v7 = v6;
      [v6 safeAreaInsets];

      Card.ViewController.RootViewController.contentInsets.getter();
    }

    else
    {
      __break(1u);
    }
  }
}

void Card.ViewController.RootViewController.contentInsets.getter()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (v2 != 6)
  {
    v3 = [v0 traitCollection];
    v4 = [v3 horizontalSizeClass];

    if (v4 == 1)
    {
      v5 = [v0 presentationController];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 containerView];

        if (v7)
        {
          v8 = [v7 superview];

          if (v8)
          {
            [v8 _cornerRadius];
            v10 = v9;

            if (v10 > 0.0)
            {
              v11 = [v0 view];
              UIRoundToViewScale();
            }
          }
        }
      }
    }
  }

  v12 = [v0 traitCollection];
  [v12 userInterfaceIdiom];
}

void Card.ViewController.RootViewController.preferredContentSize(forWidth:)(uint64_t a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    v4 = [v2 presentationController];
    if (!v4 || (v5 = v4, v6 = [v4 containerView], v5, !v6))
    {
      v7 = [v3 view];
      if (!v7)
      {
        goto LABEL_16;
      }

      v6 = v7;
    }

    [v6 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v39.origin.x = v9;
    v39.origin.y = v11;
    v39.size.width = v13;
    v39.size.height = v15;
    CGRectGetWidth(v39);
  }

  v16 = [v3 presentingViewController];
  if (v16 && (v17 = v16, v18 = [v16 traitCollection], v17, v18) || (v19 = objc_msgSend(v3, "presentationController")) != 0 && (v20 = v19, v18 = objc_msgSend(v19, "traitCollection"), v20, v18))
  {
    v21 = v18;
    [v21 horizontalSizeClass];
  }

  else
  {
    v21 = 0;
  }

  v22 = *&v3[direct field offset for Card.ViewController.RootViewController.hostingController];
  Card.ViewController.RootViewController.contentInsets.getter();
  NSDirectionalEdgeInsets.horizontal.getter();
  dispatch thunk of UIHostingController.sizeThatFits(in:)();
  v24 = v23;

  Card.ViewController.RootViewController.contentInsets.getter();
  NSDirectionalEdgeInsets.vertical.getter();
  v26 = v25;
  v27 = [v3 view];
  if (v27)
  {
    v28 = v27;
    v29 = v24 + v26;
    [v27 bounds];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v40.origin.x = v31;
    v40.origin.y = v33;
    v40.size.width = v35;
    v40.size.height = v37;
    v38 = CGRectGetHeight(v40) < v29;
    Card.ViewController.RootViewController.additionalTopContentInsets(exceedingBounds:)(v38);

    return;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void @objc Card.ViewController.RootViewController.__ivar_destroyer(uint64_t a1)
{
  v2 = *(a1 + direct field offset for Card.ViewController.RootViewController.hostingController);
}

id Card.ViewController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id Card.ViewController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController:a1];

  return v3;
}

void @objc Card.ViewController.init(rootViewController:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  specialized Card.ViewController.init(rootViewController:)();
}

id SyncedLyricsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t @objc Card.ViewController.RootViewController.init(nibName:bundle:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v5 = *((swift_isaMask & *a1) + 0x50);
  v6 = *((swift_isaMask & *a1) + 0x58);
  v7 = a4;

  return a5(v5, v6);
}

id Card.ViewController.RootViewController.__deallocating_deinit(uint64_t (*a1)(void, void, void))
{
  v2 = a1(0, *((swift_isaMask & *v1) + 0x50), *((swift_isaMask & *v1) + 0x58));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, "dealloc");
}

char *specialized Card.ViewController.RootViewController.init(content:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = swift_isaMask;
  v6 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v6 - 8);
  v7 = *((v5 & v4) + 0x50);
  v8 = *(v7 - 8);
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  *(v2 + direct field offset for Card.ViewController.RootViewController.$__lazy_storage_$_scrollView) = 0;
  *(v2 + direct field offset for Card.ViewController.RootViewController.maxRegularWidth) = 0x4079E00000000000;
  v12 = *((v5 & v4) + 0x58);
  type metadata accessor for UIHostingController();
  (*(v8 + 16))(v11, a1, v7);
  v13 = UIHostingController.__allocating_init(rootView:)();
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  UIHostingController.safeAreaRegions.setter();
  result = [v13 view];
  if (result)
  {
    v15 = result;
    v16 = objc_opt_self();
    v17 = [v16 clearColor];
    [v15 setBackgroundColor:v17];

    *(v2 + direct field offset for Card.ViewController.RootViewController.hostingController) = v13;
    v18 = type metadata accessor for Card.ViewController.RootViewController();
    v27.receiver = v2;
    v27.super_class = v18;
    v19 = v13;
    v20 = objc_msgSendSuper2(&v27, "initWithNibName:bundle:", 0, 0);
    result = [v20 view];
    if (result)
    {
      v21 = result;
      v22 = [v16 clearColor];
      [v21 setBackgroundColor:v22];

      [v20 addChildViewController:*&v20[direct field offset for Card.ViewController.RootViewController.hostingController]];
      v23 = [v20 navigationItem];
      type metadata accessor for UIAction(0, &_sSo15UIBarButtonItemCML_0);
      type metadata accessor for UIAction(0, &_sSo8UIActionCML_0);
      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v25 = swift_allocObject();
      v25[2] = v7;
      v25[3] = v12;
      v25[4] = v24;
      v28.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v28.is_nil = 0;
      isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemClose, v28, v29).super.super.isa;
      [v23 setLeftBarButtonItem:isa];

      return v20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10031E000()
{

  return swift_deallocObject();
}

id specialized closure #1 in Card.ViewController.viewDidLoad()(void *a1)
{
  Card.ViewController.RootViewController.preferredContentSize(forWidth:)(0, 1);

  return [a1 setPreferredContentSize:?];
}

void specialized Card.ViewController.RootViewController.init(coder:)()
{
  *(v0 + direct field offset for Card.ViewController.RootViewController.$__lazy_storage_$_scrollView) = 0;
  *(v0 + direct field offset for Card.ViewController.RootViewController.maxRegularWidth) = 0x4079E00000000000;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10031E2B8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10031E2F0()
{

  return swift_deallocObject();
}

uint64_t CarouselView.items.getter()
{
  type metadata accessor for Array();
  type metadata accessor for Binding();
  Binding.wrappedValue.getter();
  return v1;
}

uint64_t CarouselView.$items.getter()
{
  type metadata accessor for Array();
  type metadata accessor for Binding();
  Binding.projectedValue.getter();
  return v1;
}

double CarouselView.itemSize.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo6CGSizeVGMd);
  Binding.wrappedValue.getter();
  return v1;
}

uint64_t CarouselView.init(items:scrollPosition:itemSize:horizontalSpacing:carouselToPageIndicatorSpacing:content:didSelect:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  v48 = a7;
  v49 = a8;
  v46 = a5;
  v47 = a6;
  v45 = a15;
  v44[0] = a17;
  v44[1] = a18;
  v28 = type metadata accessor for Optional();
  __chkstk_darwin(v28 - 8);
  v30 = v44 - v29;
  v50 = a16;
  v51 = a17;
  v52 = a18;
  v53 = a19;
  v31 = type metadata accessor for CarouselView();
  (*(*(a16 - 8) + 56))(v30, 1, 1, a16);
  property wrapper backing initializer of CarouselView.previousItem(v30);
  v32 = (a9 + v31[24]);
  v54 = 0;
  State.init(wrappedValue:)();
  v33 = v51;
  *v32 = v50;
  v32[1] = v33;
  v34 = [objc_opt_self() currentTraitCollection];
  v35 = [v34 userInterfaceIdiom];

  v36 = 8.0;
  if (v35 == 6)
  {
    v36 = 10.0;
  }

  v37 = (a9 + v31[22]);
  *(a9 + v31[25]) = v36;
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  result = outlined init with take of Binding<ScrollPosition>(a4, a9 + v31[17]);
  v39 = a9 + v31[18];
  v40 = v47;
  *v39 = v46;
  *(v39 + 1) = v40;
  *(v39 + 2) = a10;
  *(v39 + 3) = a11;
  *(a9 + v31[20]) = a12;
  *(a9 + v31[21]) = a13;
  v41 = (a9 + v31[19]);
  v42 = v49;
  *v41 = v48;
  v41[1] = v42;
  v43 = v45;
  *v37 = a14;
  v37[1] = v43;
  return result;
}

uint64_t property wrapper backing initializer of CarouselView.previousItem(uint64_t a1)
{
  v2 = type metadata accessor for Optional();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  State.init(wrappedValue:)();
  return (*(v3 + 8))(a1, v2);
}

uint64_t CarouselView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v97 = type metadata accessor for ScrollPosition();
  v89 = *(v97 - 8);
  __chkstk_darwin(v97);
  v88 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = *(a1 - 1);
  v96 = *(v86 + 64);
  __chkstk_darwin(v4);
  v95 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[2];
  v7 = type metadata accessor for Array();
  v93 = a1[6];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v85 = a1;
  v9 = a1[7];
  v114 = a1[3];
  *&v115 = v9;
  v10 = v114;
  v99 = v114;
  v11 = v9;
  v94 = v9;
  swift_getOpaqueTypeMetadata2();
  v12 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v14 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v114 = v7;
  *&v115 = AssociatedTypeWitness;
  *(&v115 + 1) = v12;
  v116 = WitnessTable;
  v117 = AssociatedConformanceWitness;
  type metadata accessor for ForEach();
  v114 = v10;
  *&v115 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v113 = &protocol witness table for _FrameLayout;
  v111 = swift_getWitnessTable();
  swift_getWitnessTable();
  v16 = type metadata accessor for LazyHStack();
  v17 = swift_getWitnessTable();
  v114 = v16;
  *&v115 = v17;
  swift_getOpaqueTypeMetadata2();
  v114 = v16;
  *&v115 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = type metadata accessor for ScrollView();
  v19 = swift_getWitnessTable();
  v114 = v18;
  *&v115 = v19;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for SafeAreaPaddingModifier();
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI23_GeometryActionModifierVySo6CGSizeVAESQ12CoreGraphicsyHCg_GMd);
  v20 = type metadata accessor for ModifiedContent();
  v21 = type metadata accessor for ViewAlignedScrollTargetBehavior();
  v114 = v18;
  *&v115 = v19;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = lazy protocol witness table accessor for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier(&lazy protocol witness table cache variable for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier, &type metadata accessor for SafeAreaPaddingModifier);
  v109 = v22;
  v110 = v23;
  v24 = swift_getWitnessTable();
  v25 = lazy protocol witness table accessor for type _GeometryActionModifier<CGSize> and conformance _GeometryActionModifier<A>();
  v107 = v24;
  v108 = v25;
  v26 = swift_getWitnessTable();
  v114 = v20;
  *&v115 = v21;
  *(&v115 + 1) = v26;
  v116 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v114 = v20;
  *&v115 = v21;
  *(&v115 + 1) = v26;
  v116 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v28 = swift_getOpaqueTypeConformance2();
  v114 = OpaqueTypeMetadata2;
  *&v115 = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  v114 = OpaqueTypeMetadata2;
  *&v115 = v28;
  v30 = swift_getOpaqueTypeConformance2();
  v114 = v29;
  *&v115 = v30;
  v31 = swift_getOpaqueTypeMetadata2();
  v114 = v29;
  *&v115 = v30;
  v32 = swift_getOpaqueTypeConformance2();
  v114 = v31;
  *&v115 = v32;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  v92 = v14;
  v114 = v14;
  v33 = v93;
  v116 = v93;
  *&v34 = v14;
  *(&v34 + 1) = v99;
  v76 = v34;
  v35 = v85;
  v98 = *(v85 + 2);
  v115 = v98;
  type metadata accessor for PageControl();
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v36 = type metadata accessor for VStack();
  v80 = *(v36 - 8);
  __chkstk_darwin(v36);
  v71 = &v70 - v37;
  v74 = v36;
  v38 = type metadata accessor for ModifiedContent();
  v79 = v38;
  v84 = *(v38 - 8);
  __chkstk_darwin(v38);
  v91 = &v70 - v39;
  v72 = swift_getWitnessTable();
  v105 = v72;
  v106 = &protocol witness table for _AppearanceActionModifier;
  v40 = swift_getWitnessTable();
  v78 = v40;
  v77 = lazy protocol witness table accessor for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier(&lazy protocol witness table cache variable for type ScrollPosition and conformance ScrollPosition, &type metadata accessor for ScrollPosition);
  v114 = v38;
  *&v115 = v97;
  *(&v115 + 1) = v40;
  v116 = v77;
  v81 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v82 = swift_getOpaqueTypeMetadata2();
  v83 = *(v82 - 8);
  __chkstk_darwin(v82);
  v73 = &v70 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v75 = &v70 - v43;
  v44 = v87;
  v100 = v76;
  v101 = v98;
  v45 = v94;
  v102 = v33;
  v103 = v94;
  v104 = v87;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  v46 = v86;
  *&v76 = *(v86 + 16);
  v47 = v95;
  (v76)(v95, v44, v35);
  v48 = (*(v46 + 80) + 64) & ~*(v46 + 80);
  v49 = swift_allocObject();
  v50 = v99;
  *(v49 + 16) = v92;
  *(v49 + 24) = v50;
  *(v49 + 32) = v98;
  *(v49 + 48) = v33;
  *(v49 + 56) = v45;
  v51 = *(v46 + 32);
  v51(v49 + v48, v47, v35);
  v52 = v74;
  v53 = v71;
  View.onAppear(perform:)();

  (*(v80 + 8))(v53, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14ScrollPositionVGMd);
  v54 = v88;
  Binding.wrappedValue.getter();
  v55 = v95;
  (v76)(v95, v44, v35);
  v56 = swift_allocObject();
  v57 = v99;
  *(v56 + 16) = v92;
  *(v56 + 24) = v57;
  *(v56 + 32) = v98;
  v58 = v94;
  *(v56 + 48) = v93;
  *(v56 + 56) = v58;
  v51(v56 + v48, v55, v35);
  v59 = v73;
  v60 = v79;
  v61 = v97;
  v62 = v78;
  v63 = v77;
  v64 = v91;
  View.onChange<A>(of:initial:_:)();

  (*(v89 + 8))(v54, v61);
  (*(v84 + 8))(v64, v60);
  v114 = v60;
  *&v115 = v61;
  *(&v115 + 1) = v62;
  v116 = v63;
  v65 = swift_getOpaqueTypeConformance2();
  v66 = v75;
  v67 = v82;
  _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0(v59, v82, v65);
  v68 = *(v83 + 8);
  v68(v59, v67);
  _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0(v66, v67, v65);
  return (v68)(v66, v67);
}

uint64_t closure #1 in CarouselView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v209 = a1;
  v197 = a8;
  v228 = a2;
  v229 = a4;
  v199 = a4;
  v200 = a5;
  v230 = a5;
  v231 = a6;
  v14 = type metadata accessor for PageControl();
  v148 = *(v14 - 8);
  __chkstk_darwin(v14);
  v146 = (&v145 - v15);
  v208 = v16;
  v17 = type metadata accessor for ModifiedContent();
  v191 = *(v17 - 8);
  __chkstk_darwin(v17);
  v149 = &v145 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v147 = &v145 - v20;
  v195 = v21;
  *&v196 = COERCE_DOUBLE(type metadata accessor for Optional());
  v192 = *(v196 - 8);
  __chkstk_darwin(v196);
  v194 = &v145 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v193 = &v145 - v24;
  v25 = type metadata accessor for ScrollIndicatorVisibility();
  v189 = *(v25 - 8);
  v190 = v25;
  __chkstk_darwin(v25);
  v184 = &v145 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ViewAlignedScrollTargetBehavior.LimitBehavior();
  __chkstk_darwin(v27 - 8);
  v186 = &v145 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = type metadata accessor for ViewAlignedScrollTargetBehavior();
  v187 = *(v202 - 8);
  __chkstk_darwin(v202);
  v185 = &v145 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = a2;
  v229 = a3;
  v201 = a3;
  v230 = a4;
  v231 = a5;
  v232 = a6;
  v233 = a7;
  v207 = type metadata accessor for CarouselView();
  v182 = *(v207 - 8);
  v183 = *(v182 + 64);
  __chkstk_darwin(v207);
  v181 = &v145 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14ScrollPositionVGMd);
  __chkstk_darwin(v31 - 8);
  v198 = &v145 - v32;
  v33 = type metadata accessor for Array();
  v210 = a6;
  v212 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v228 = a3;
  v229 = a7;
  v204 = a7;
  swift_getOpaqueTypeMetadata2();
  v35 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v228 = v33;
  v229 = AssociatedTypeWitness;
  v230 = v35;
  v231 = WitnessTable;
  v232 = AssociatedConformanceWitness;
  type metadata accessor for ForEach();
  v38 = v201;
  v228 = v201;
  v229 = a7;
  *&v227[16] = swift_getOpaqueTypeConformance2();
  *&v227[17] = &protocol witness table for _FrameLayout;
  *&v227[15] = swift_getWitnessTable();
  swift_getWitnessTable();
  v39 = type metadata accessor for LazyHStack();
  v40 = swift_getWitnessTable();
  v228 = v39;
  v229 = v40;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v228 = v39;
  v229 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = type metadata accessor for ScrollView();
  v162 = *(v41 - 8);
  __chkstk_darwin(v41);
  v43 = &v145 - v42;
  v44 = swift_getWitnessTable();
  v228 = v41;
  v229 = v44;
  v45 = v44;
  v150 = v44;
  v160 = swift_getOpaqueTypeMetadata2();
  v163 = *(v160 - 8);
  __chkstk_darwin(v160);
  v153 = &v145 - v46;
  type metadata accessor for SafeAreaPaddingModifier();
  v47 = type metadata accessor for ModifiedContent();
  v165 = *(v47 - 8);
  __chkstk_darwin(v47);
  v203 = &v145 - v48;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI23_GeometryActionModifierVySo6CGSizeVAESQ12CoreGraphicsyHCg_GMd);
  v159 = v47;
  v49 = type metadata accessor for ModifiedContent();
  v164 = *(v49 - 8);
  __chkstk_darwin(v49);
  v161 = &v145 - v50;
  v228 = v41;
  v229 = v45;
  v51 = swift_getOpaqueTypeConformance2();
  v152 = v51;
  v52 = lazy protocol witness table accessor for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier(&lazy protocol witness table cache variable for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier, &type metadata accessor for SafeAreaPaddingModifier);
  *&v227[13] = v51;
  *&v227[14] = v52;
  v53 = swift_getWitnessTable();
  v156 = v53;
  v54 = lazy protocol witness table accessor for type _GeometryActionModifier<CGSize> and conformance _GeometryActionModifier<A>();
  *&v227[11] = v53;
  *&v227[12] = v54;
  v55 = swift_getWitnessTable();
  v56 = v49;
  v154 = v49;
  v57 = v202;
  v228 = v49;
  v229 = v202;
  v230 = v55;
  v231 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v58 = v55;
  v155 = v55;
  v59 = swift_getOpaqueTypeMetadata2();
  v179 = *(v59 - 8);
  __chkstk_darwin(v59);
  v151 = &v145 - v60;
  v228 = v56;
  v229 = v57;
  v230 = v58;
  v231 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v61 = swift_getOpaqueTypeConformance2();
  v228 = v59;
  v229 = v61;
  v62 = swift_getOpaqueTypeMetadata2();
  v176 = *(v62 - 8);
  __chkstk_darwin(v62);
  v171 = &v145 - v63;
  v180 = v59;
  v228 = v59;
  v229 = v61;
  v173 = v61;
  v64 = swift_getOpaqueTypeConformance2();
  v228 = v62;
  v229 = v64;
  v65 = swift_getOpaqueTypeMetadata2();
  v172 = *(v65 - 8);
  __chkstk_darwin(v65);
  v166 = v64;
  v167 = &v145 - v66;
  v177 = v62;
  v228 = v62;
  v229 = v64;
  v67 = swift_getOpaqueTypeConformance2();
  v178 = v65;
  v228 = v65;
  v229 = v67;
  v169 = v67;
  v68 = swift_getOpaqueTypeMetadata2();
  v174 = *(v68 - 8);
  __chkstk_darwin(v68);
  v168 = &v145 - v69;
  v175 = v70;
  *&v71 = COERCE_DOUBLE(type metadata accessor for ModifiedContent());
  v205 = *(v71 - 8);
  v206 = *&v71;
  __chkstk_darwin(v71);
  v188 = &v145 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v73);
  v170 = &v145 - v74;
  __chkstk_darwin(v75);
  v211 = &v145 - v76;
  static Axis.Set.horizontal.getter();
  v213 = v212;
  v214 = v38;
  v78 = v199;
  v77 = v200;
  v215 = v199;
  v216 = v200;
  v217 = v210;
  v218 = v204;
  v79 = v209;
  v219 = v209;
  ScrollView.init(_:showsIndicators:content:)();
  v80 = v207;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14ScrollPositionVGMd);
  v81 = v198;
  Binding.projectedValue.getter();
  static UnitPoint.center.getter();
  v82 = v153;
  View.scrollPosition(_:anchor:)();
  outlined destroy of Binding<ScrollPosition>(v81);
  (*(v162 + 8))(v43, v41);
  v83 = static Edge.Set.horizontal.getter();
  v84 = v80;
  v85 = (v79 + *(v80 + 96));
  v86 = *v85;
  v87 = v85[1];
  v228 = v86;
  v229 = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMd_0);
  State.wrappedValue.getter();
  v88 = v160;
  View.safeAreaPadding(_:_:)(v83, COERCE__INT64(round(v227[0])), 0);
  (*(v163 + 8))(v82, v88);
  _sSo6CGSizeVMa_0(0);
  v89 = v181;
  v90 = v182;
  (*(v182 + 16))(v181, v79, v84);
  v91 = (*(v90 + 80) + 64) & ~*(v90 + 80);
  v92 = swift_allocObject();
  v93 = v201;
  v92[2] = v212;
  v92[3] = v93;
  v92[4] = v78;
  v92[5] = v77;
  v94 = v151;
  v95 = v204;
  v92[6] = v210;
  v92[7] = v95;
  v96 = v92 + v91;
  v97 = v184;
  (*(v90 + 32))(v96, v89, v84);
  lazy protocol witness table accessor for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier(&lazy protocol witness table cache variable for type CGSize and conformance CGSize, _sSo6CGSizeVMa_0);
  v98 = v161;
  v99 = v159;
  v100 = v203;
  View.onGeometryChange<A>(for:of:action:)();

  (*(v165 + 8))(v100, v99);
  static ViewAlignedScrollTargetBehavior.LimitBehavior.automatic.getter();
  v101 = v185;
  ViewAlignedScrollTargetBehavior.init(limitBehavior:)();
  v102 = v154;
  v103 = v202;
  View.scrollTargetBehavior<A>(_:)();
  (*(v187 + 8))(v101, v103);
  (*(v164 + 8))(v98, v102);
  static ScrollIndicatorVisibility.hidden.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4AxisO3SetVGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2EF0;
  LOBYTE(v101) = static Axis.Set.vertical.getter();
  *(inited + 32) = v101;
  v105 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v105;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v101)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v105)
  {
    Axis.Set.init(rawValue:)();
  }

  v106 = v171;
  v107 = v180;
  View.scrollIndicators(_:axes:)();
  (*(v189 + 8))(v97, v190);
  (*(v179 + 8))(v94, v107);
  v108 = v167;
  v109 = v177;
  View.scrollClipDisabled(_:)();
  (*(v176 + 8))(v106, v109);
  CarouselView.items.getter();
  Array.count.getter();

  v111 = v168;
  v110 = v169;
  v112 = v178;
  View.scrollDisabled(_:)();
  (*(v172 + 8))(v108, v112);
  CarouselView.itemSize.getter();
  static Alignment.center.getter();
  v228 = v112;
  v229 = v110;
  v113 = swift_getOpaqueTypeConformance2();
  v114 = v170;
  v115 = v175;
  View.frame(width:height:alignment:)();
  (*(v174 + 8))(v111, v115);
  *&v227[4] = v113;
  *&v227[5] = &protocol witness table for _FrameLayout;
  v116 = v206;
  v202 = swift_getWitnessTable();
  _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0(v114, *&v116, v202);
  v117 = v114;
  v118 = v212;
  v203 = *(v205 + 8);
  v204 = v205 + 8;
  (v203)(v117, *&v116);
  CarouselView.items.getter();
  v119 = Array.count.getter();

  if (v119 < 2)
  {
    v136 = v194;
    (*(v191 + 56))(v194, 1, 1, v195);
    *&v227[2] = swift_getWitnessTable();
    *&v227[3] = &protocol witness table for _FrameLayout;
    swift_getWitnessTable();
  }

  else
  {
    v120 = CarouselView.$items.getter();
    v122 = v121;
    v124 = v123;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14ScrollPositionVGMd);
    v125 = v198;
    Binding.projectedValue.getter();
    v126 = v146;
    *v146 = v120;
    v126[1] = v122;
    v126[2] = v124;
    v228 = v118;
    v229 = v199;
    v230 = v200;
    v231 = v210;
    v127 = type metadata accessor for PageControl();
    outlined init with take of Binding<ScrollPosition>(v125, v126 + *(v127 + 52));
    static Alignment.center.getter();
    v128 = v208;
    v129 = swift_getWitnessTable();
    v130 = v149;
    View.frame(width:height:alignment:)();
    (*(v148 + 8))(v126, v128);
    v220 = v129;
    v221 = &protocol witness table for _FrameLayout;
    v131 = v195;
    v132 = swift_getWitnessTable();
    v133 = v147;
    _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0(v130, v131, v132);
    v134 = v191;
    v135 = *(v191 + 8);
    v135(v130, v131);
    _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0(v133, v131, v132);
    v135(v133, v131);
    v136 = v194;
    (*(v134 + 32))(v194, v130, v131);
    (*(v134 + 56))(v136, 0, 1, v131);
  }

  v137 = v193;
  static ViewBuilder.buildIf<A>(_:)(v136, v193);
  v138 = v192;
  v139 = *(v192 + 8);
  v140 = *&v196;
  v139(v136, v196);
  v141 = v206;
  v142 = v188;
  (*(v205 + 16))(v188, v211, COERCE_DOUBLE(*&v206));
  v228 = v142;
  (*(v138 + 16))(v136, v137, COERCE_DOUBLE(*&v140));
  v229 = v136;
  v227[0] = v141;
  v227[1] = v140;
  v225 = v202;
  v223 = swift_getWitnessTable();
  v224 = &protocol witness table for _FrameLayout;
  v222 = swift_getWitnessTable();
  v226 = swift_getWitnessTable();
  _s7SwiftUI11ViewBuilderV10buildBlockyAA05TupleC0VyxxQp_tGxxQpRvzAA0C0RzlFZ_0(&v228, 2uLL, v227);
  v139(v137, *&v140);
  v143 = v203;
  (v203)(v211, *&v141);
  v139(v136, *&v140);
  return v143(v142, *&v141);
}

uint64_t closure #1 in closure #1 in CarouselView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v48 = a5;
  v46 = a4;
  v49 = a1;
  v50 = a8;
  v12 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v12 - 8);
  v47 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Array();
  v45 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v58 = a3;
  v59 = a7;
  swift_getOpaqueTypeMetadata2();
  v16 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v58 = v14;
  v59 = AssociatedTypeWitness;
  v60 = v16;
  v61 = WitnessTable;
  v62 = AssociatedConformanceWitness;
  v41 = type metadata accessor for ForEach();
  v58 = a3;
  v59 = a7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v66 = &protocol witness table for _FrameLayout;
  v64 = swift_getWitnessTable();
  v40 = swift_getWitnessTable();
  v19 = type metadata accessor for LazyHStack();
  v44 = *(v19 - 8);
  __chkstk_darwin(v19);
  v38 = v37 - v20;
  v39 = swift_getWitnessTable();
  v58 = v19;
  v59 = v39;
  v42 = &opaque type descriptor for <<opaque return type of View.scrollTargetLayout(isEnabled:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v43 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v23 = v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = v37 - v25;
  v37[2] = static VerticalAlignment.center.getter();
  v27 = a2;
  v58 = a2;
  v59 = a3;
  v28 = a3;
  v29 = v46;
  v30 = v48;
  v60 = v46;
  v61 = v48;
  v31 = v45;
  v62 = v45;
  v63 = a7;
  v37[1] = *(v49 + *(type metadata accessor for CarouselView() + 80));
  v51 = v27;
  v52 = v28;
  v53 = v29;
  v54 = v30;
  v55 = v31;
  v56 = a7;
  v57 = v49;
  default argument 2 of LazyHStack.init(alignment:spacing:pinnedViews:content:)();
  v32 = v38;
  LazyHStack.init(alignment:spacing:pinnedViews:content:)();
  v33 = v39;
  View.scrollTargetLayout(isEnabled:)();
  (*(v44 + 8))(v32, v19);
  v58 = v19;
  v59 = v33;
  v34 = swift_getOpaqueTypeConformance2();
  _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0(v23, OpaqueTypeMetadata2, v34);
  v35 = *(v43 + 8);
  v35(v23, OpaqueTypeMetadata2);
  _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0(v26, OpaqueTypeMetadata2, v34);
  return (v35)(v26, OpaqueTypeMetadata2);
}

uint64_t closure #1 in closure #1 in closure #1 in CarouselView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v50 = a4;
  v51 = a5;
  v49 = a1;
  v52 = a8;
  v57 = a2;
  v58 = a3;
  v41 = a3;
  v59 = a4;
  v60 = a5;
  v61 = a6;
  v62 = a7;
  v43 = a7;
  v12 = type metadata accessor for CarouselView();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v42 = v39 - v14;
  v15 = type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = AssociatedTypeWitness;
  v57 = a3;
  v58 = a7;
  v44 = &opaque type descriptor for <<opaque return type of View.onTapGesture(count:perform:)>>;
  swift_getOpaqueTypeMetadata2();
  v17 = type metadata accessor for ModifiedContent();
  v39[1] = v17;
  v47 = v15;
  WitnessTable = swift_getWitnessTable();
  v45 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v57 = v15;
  v58 = AssociatedTypeWitness;
  v59 = v17;
  v60 = WitnessTable;
  v61 = AssociatedConformanceWitness;
  v20 = type metadata accessor for ForEach();
  v48 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v40 = v39 - v24;
  v25 = v12;
  v26 = v49;
  v56 = CarouselView.items.getter();
  v27 = v42;
  (*(v13 + 16))(v42, v26, v25);
  v28 = (*(v13 + 80) + 64) & ~*(v13 + 80);
  v29 = swift_allocObject();
  *(v29 + 2) = a2;
  v30 = v41;
  v32 = v50;
  v31 = v51;
  *(v29 + 3) = v41;
  *(v29 + 4) = v32;
  *(v29 + 5) = v31;
  *(v29 + 6) = a6;
  v33 = v43;
  *(v29 + 7) = v43;
  (*(v13 + 32))(&v29[v28], v27, v25);
  v57 = v30;
  v58 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = &protocol witness table for _FrameLayout;
  v34 = swift_getWitnessTable();
  ForEach<>.init(_:content:)();
  v53 = v34;
  v35 = swift_getWitnessTable();
  v36 = v40;
  _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0(v22, v20, v35);
  v37 = *(v48 + 8);
  v37(v22, v20);
  _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0(v36, v20, v35);
  return (v37)(v36, v20);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in CarouselView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v66 = a5;
  v67 = a6;
  v65 = a4;
  v72 = a7;
  v58 = a3;
  v60 = *(a3 - 8);
  v64 = *(v60 + 64);
  __chkstk_darwin(a1);
  v59 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v10;
  v76 = v11;
  v12 = v11;
  v77 = v13;
  v78 = v14;
  v79 = v15;
  v80 = v16;
  v17 = v16;
  v56 = v16;
  v18 = type metadata accessor for CarouselView();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v52 - v21;
  v68 = *(v12 - 8);
  __chkstk_darwin(v23);
  v53 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v12;
  v76 = v17;
  v69 = &opaque type descriptor for <<opaque return type of View.onTapGesture(count:perform:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v70 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v55 = &v52 - v25;
  v61 = type metadata accessor for ModifiedContent();
  v71 = *(v61 - 8);
  __chkstk_darwin(v61);
  v57 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v27);
  v63 = &v52 - v29;
  v30 = v18;
  v52 = v18;
  v31 = *(v18 + 76);
  v54 = a2;
  (*(a2 + v31))(a1, v28);
  v32 = v22;
  (*(v19 + 16))(v22, a2, v30);
  v33 = v60;
  v34 = v59;
  v35 = v58;
  (*(v60 + 16))(v59, a1, v58);
  v36 = (*(v19 + 80) + 64) & ~*(v19 + 80);
  v37 = (v20 + *(v33 + 80) + v36) & ~*(v33 + 80);
  v38 = swift_allocObject();
  *(v38 + 2) = v35;
  *(v38 + 3) = v12;
  v39 = v12;
  v40 = v66;
  *(v38 + 4) = v65;
  *(v38 + 5) = v40;
  v41 = v56;
  *(v38 + 6) = v67;
  *(v38 + 7) = v41;
  (*(v19 + 32))(&v38[v36], v32, v52);
  (*(v33 + 32))(&v38[v37], v34, v35);
  v42 = v55;
  v43 = v53;
  View.onTapGesture(count:perform:)();

  (*(v68 + 8))(v43, v39);
  CarouselView.itemSize.getter();
  CarouselView.itemSize.getter();
  static Alignment.center.getter();
  v75 = v39;
  v76 = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v57;
  v46 = OpaqueTypeMetadata2;
  View.frame(width:height:alignment:)();
  (*(v70 + 8))(v42, v46);
  v73 = OpaqueTypeConformance2;
  v74 = &protocol witness table for _FrameLayout;
  v47 = v61;
  WitnessTable = swift_getWitnessTable();
  v49 = v63;
  _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0(v45, v47, WitnessTable);
  v50 = *(v71 + 8);
  v50(v45, v47);
  _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0(v49, v47, WitnessTable);
  return (v50)(v49, v47);
}

uint64_t CarouselView.setCurrentItem(_:animated:)(uint64_t a1, char a2)
{
  v2 = 0;
  if (a2)
  {
    v2 = static Animation.default.getter();
  }

  __chkstk_darwin(v2);
  withAnimation<A>(_:_:)();
}

uint64_t default argument 2 of LazyHStack.init(alignment:spacing:pinnedViews:content:)()
{
  type metadata accessor for PinnedScrollableViews();
  lazy protocol witness table accessor for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier(&lazy protocol witness table cache variable for type PinnedScrollableViews and conformance PinnedScrollableViews, &type metadata accessor for PinnedScrollableViews);
  return dispatch thunk of OptionSet.init(rawValue:)();
}

uint64_t View.safeAreaPadding(_:_:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = type metadata accessor for SafeAreaPaddingModifier();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0uLL;
  v9 = 0uLL;
  if ((a3 & 1) == 0)
  {
    EdgeInsets.init(_all:)();
    *(&v8 + 1) = v10;
    *(&v9 + 1) = v11;
  }

  v13[0] = v8;
  v13[1] = v9;
  v14 = a3 & 1;
  SafeAreaPaddingModifier.init(edges:insets:)();
  View.modifier<A>(_:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t closure #2 in closure #1 in CarouselView.body.getter@<X0>(void *a1@<X8>)
{
  result = GeometryProxy.size.getter();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t closure #3 in closure #1 in CarouselView.body.getter(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a8;
  v15 = type metadata accessor for Optional();
  v30 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v29 - v16;
  v18 = *(a3 - 8);
  __chkstk_darwin(v19);
  v29 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = a7;
  v38 = v31;
  v22 = type metadata accessor for CarouselView();
  v23 = (v21 - CarouselView.itemSize.getter()) * 0.5;
  v24 = (a2 + *(v22 + 96));
  v25 = *v24;
  v26 = v24[1];
  v33 = *v24;
  v34 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMd_0);
  State.wrappedValue.getter();
  if (v32 != v23)
  {
    v32 = v23;
    v33 = v25;
    v34 = v26;
    State.wrappedValue.setter();
  }

  type metadata accessor for State();
  State.wrappedValue.getter();
  if ((*(v18 + 48))(v17, 1, a3) == 1)
  {
    return (*(v30 + 8))(v17, v15);
  }

  v28 = v29;
  (*(v18 + 32))(v29, v17, a3);
  CarouselView.setCurrentItem(_:animated:)(v28, 0);
  return (*(v18 + 8))(v28, a3);
}

uint64_t View.onGeometryChange<A>(for:of:action:)()
{

  _GeometryActionModifier.init(value:action:)();
  type metadata accessor for _GeometryActionModifier();
  View.modifier<A>(_:)();
}

uint64_t closure #2 in CarouselView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a5;
  v36 = a7;
  v34 = a4;
  v37 = a1;
  v10 = type metadata accessor for Optional();
  v30 = *(v10 - 8);
  v31 = v10;
  __chkstk_darwin(v10);
  v33 = &v28 - v11;
  v32 = *(a2 - 8);
  __chkstk_darwin(v12);
  v29 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ScrollPosition();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = type metadata accessor for Optional();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v28 - v21;
  v38 = a2;
  v39 = a3;
  v40 = v34;
  v41 = v35;
  v42 = a6;
  v43 = v36;
  v36 = type metadata accessor for CarouselView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14ScrollPositionVGMd);
  Binding.wrappedValue.getter();
  swift_getAssociatedConformanceWitness();
  ScrollPosition.viewID<A>(type:)();
  (*(v15 + 8))(v17, v14);
  if ((*(*(AssociatedTypeWitness - 8) + 48))(v22, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v20 + 8))(v22, v19);
  }

  v23 = v19;
  v38 = CarouselView.items.getter();
  type metadata accessor for Array();
  swift_getWitnessTable();
  v24 = v33;
  Collection.first.getter();
  v25 = v32;
  if ((*(v32 + 48))(v24, 1, a2) == 1)
  {
    (*(v20 + 8))(v22, v23);
    (*(v30 + 8))(v24, v31);
  }

  else
  {
    v27 = v29;
    (*(v25 + 32))(v29, v24, a2);

    CarouselView.setCurrentItem(_:animated:)(v27, 0);
    (*(v25 + 8))(v27, a2);
    return (*(v20 + 8))(v22, v23);
  }
}

uint64_t closure #3 in CarouselView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v54 = a6;
  v55 = a7;
  v53 = a5;
  v57 = a3;
  v11 = type metadata accessor for Optional();
  v51 = *(v11 - 8);
  v52 = v11;
  __chkstk_darwin(v11);
  v49 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v48 = &v43 - v14;
  v50 = *(a4 - 8);
  __chkstk_darwin(v15);
  v56 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = type metadata accessor for Optional();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v43 - v20;
  v22 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v23);
  v25 = &v43 - v24;
  swift_getAssociatedConformanceWitness();
  ScrollPosition.viewID<A>(type:)();
  if ((*(v22 + 48))(v21, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v19 + 8))(v21, v18);
  }

  (*(v22 + 32))(v25, v21, AssociatedTypeWitness);
  v27 = a8;
  v28 = v53;
  v59 = a4;
  v60 = v53;
  v46 = v22;
  v47 = v25;
  v30 = v54;
  v29 = v55;
  v61 = v54;
  v62 = v55;
  v63 = v27;
  v64 = a9;
  v44 = type metadata accessor for CarouselView();
  v31 = CarouselView.items.getter();
  v45 = &v43;
  v58 = v31;
  __chkstk_darwin(v31);
  *(&v43 - 8) = a4;
  *(&v43 - 7) = v28;
  *(&v43 - 6) = v30;
  *(&v43 - 5) = v29;
  v32 = v47;
  *(&v43 - 4) = v27;
  *(&v43 - 3) = a9;
  *(&v43 - 2) = v32;
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.firstIndex(where:)();

  if (v60 == 1)
  {
    return (*(v46 + 8))(v32, AssociatedTypeWitness);
  }

  v33 = v59;
  v34 = v44;
  v35 = v57;
  CarouselView.items.getter();
  v36 = v56;
  v55 = v33;
  Array.subscript.getter();

  v37 = v50;
  v38 = v48;
  (*(v50 + 16))(v48, v36, a4);
  (*(v37 + 56))(v38, 0, 1, a4);
  v40 = v51;
  v39 = v52;
  (*(v51 + 16))(v49, v38, v52);
  type metadata accessor for State();
  State.wrappedValue.setter();
  (*(v40 + 8))(v38, v39);
  v41 = (v35 + *(v34 + 88));
  v42 = v56;
  if (*v41)
  {
    (*v41)(v55, v56);
  }

  (*(v37 + 8))(v42, a4);
  return (*(v46 + 8))(v47, AssociatedTypeWitness);
}

uint64_t closure #1 in closure #3 in CarouselView.body.getter()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v3 = &v6 - v2;
  dispatch thunk of Identifiable.id.getter();
  swift_getAssociatedConformanceWitness();
  v4 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v1 + 8))(v3, AssociatedTypeWitness);
  return v4 & 1;
}

uint64_t closure #1 in CarouselView.setCurrentItem(_:animated:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = a6;
  v21 = a8;
  v12 = type metadata accessor for ScrollPosition();
  __chkstk_darwin(v12 - 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v15 = v19 - v14;
  dispatch thunk of Identifiable.id.getter();
  static UnitPoint.center.getter();
  v19[1] = v17;
  v19[2] = v16;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = v20;
  v27 = a7;
  v28 = v21;
  type metadata accessor for CarouselView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14ScrollPositionVGMd);
  Binding.wrappedValue.getter();
  swift_getAssociatedConformanceWitness();
  ScrollPosition.scrollTo<A>(id:anchor:)();
  (*(v22 + 8))(v15, AssociatedTypeWitness);
  return Binding.wrappedValue.setter();
}

void *PageControl.makeCoordinator()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14ScrollPositionVGMd);
  __chkstk_darwin(v2 - 8);
  v4 = v13 - v3;
  v5 = *(a1 + 32);
  v13[0] = *(a1 + 16);
  v13[1] = v5;
  type metadata accessor for PageControl.Coordinator();
  v6 = CarouselView.$items.getter();
  v8 = v7;
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14ScrollPositionVGMd);
  Binding.projectedValue.getter();
  v11 = swift_allocObject();
  v11[2] = v6;
  v11[3] = v8;
  v11[4] = v10;
  outlined init with take of Binding<ScrollPosition>(v4, v11 + direct field offset for PageControl.Coordinator.scrollPosition);
  return v11;
}

void *PageControl.Coordinator.__allocating_init(items:scrollPosition:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  outlined init with take of Binding<ScrollPosition>(a4, v8 + direct field offset for PageControl.Coordinator.scrollPosition);
  return v8;
}

uint64_t PageControl.updateUIView(_:context:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for ScrollPosition();
  v58 = *(v7 - 8);
  v59 = v7;
  __chkstk_darwin(v7);
  v57 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v60 = *(a3 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v51 = type metadata accessor for Optional();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v56 = &v49 - v11;
  v63 = AssociatedTypeWitness;
  v62 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v12);
  v52 = &v49 - v13;
  v54 = *(v9 - 8);
  __chkstk_darwin(v14);
  v69 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v66 = type metadata accessor for Optional();
  v53 = *(v66 - 8);
  __chkstk_darwin(v66);
  v65 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v49 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14ScrollPositionVGMd);
  __chkstk_darwin(v20 - 8);
  v22 = &v49 - v21;
  swift_getWitnessTable();
  type metadata accessor for UIViewRepresentableContext();
  UIViewRepresentableContext.coordinator.getter();
  v23 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14ScrollPositionVGMd);
  Binding.projectedValue.getter();
  v24 = direct field offset for PageControl.Coordinator.scrollPosition;
  swift_beginAccess();
  v55 = v23;
  outlined assign with take of Binding<ScrollPosition>(v22, v23 + v24);
  swift_endAccess();
  v25 = [a1 numberOfPages];
  CarouselView.items.getter();
  v26 = Array.count.getter();

  if (v25 != v26)
  {
    CarouselView.items.getter();
    v27 = Array.count.getter();

    [a1 setNumberOfPages:v27];
  }

  v64 = a1;
  v68 = a3;
  v61 = v4;
  v72 = CarouselView.items.getter();
  v28 = v9;
  v29 = type metadata accessor for Array();
  swift_getWitnessTable();
  Sequence.enumerated()();

  v70 = v71;
  type metadata accessor for EnumeratedSequence();
  EnumeratedSequence.makeIterator()();
  v49 = v29;
  type metadata accessor for EnumeratedSequence.Iterator();
  v30 = (v53 + 32);
  v31 = TupleTypeMetadata2;
  v32 = (v54 + 32);
  v33 = (v54 + 8);
  while (1)
  {
    v34 = v65;
    EnumeratedSequence.Iterator.next()();
    (*v30)(v19, v34, v66);
    if ((*(*(v31 - 8) + 48))(v19, 1, v31) == 1)
    {
      break;
    }

    v35 = *v19;
    (*v32)(v69, &v19[*(v31 + 48)], v28);
    v36 = (*(*(v68 + 24) + 8))(v28);
    if (v36)
    {
      v37 = v36;
      [v64 setIndicatorImage:v36 forPage:v35];
    }

    (*v33)(v69, v28);
    v31 = TupleTypeMetadata2;
  }

  v38 = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14ScrollPositionVGMd);
  v39 = v57;
  Binding.wrappedValue.getter();
  v40 = v60;
  v41 = v28;
  v42 = v63;
  swift_getAssociatedConformanceWitness();
  v43 = v56;
  ScrollPosition.viewID<A>(type:)();
  (*(v58 + 8))(v39, v59);
  v44 = v62;
  if ((*(v62 + 48))(v43, 1, v42) == 1)
  {

    return (*(v50 + 8))(v43, v51);
  }

  else
  {
    v46 = v52;
    (*(v44 + 32))(v52, v43, v42);
    v71 = CarouselView.items.getter();
    __chkstk_darwin(v71);
    *(&v49 - 6) = v41;
    *(&v49 - 5) = *(v38 + 24);
    *(&v49 - 3) = v40;
    *(&v49 - 2) = v46;
    swift_getWitnessTable();
    Collection.firstIndex(where:)();

    if (v73 != 1)
    {
      v47 = v72;
      v48 = v64;
      if ([v64 currentPage] != v47)
      {
        [v48 setCurrentPage:v47];
      }
    }

    return (*(v44 + 8))(v46, v42);
  }
}

uint64_t closure #1 in PageControl.updateUIView(_:context:)()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v3 = &v6 - v2;
  dispatch thunk of Identifiable.id.getter();
  swift_getAssociatedConformanceWitness();
  v4 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v1 + 8))(v3, AssociatedTypeWitness);
  return v4 & 1;
}

uint64_t PageControl.Coordinator.updateCurrentPage(_:)(void *a1)
{
  v2 = v1;
  v59 = *(*v2 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v64 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v51 = &v45 - v5;
  v6 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v49 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin(TupleTypeMetadata2);
  v54 = &v45 - v8;
  v9 = type metadata accessor for ScrollPosition();
  v52 = *(v9 - 8);
  v53 = v9;
  __chkstk_darwin(v9);
  v58 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14ScrollPositionVGMd);
  __chkstk_darwin(v57);
  v56 = &v45 - v11;
  v63 = *(v6 - 8);
  __chkstk_darwin(v12);
  v50 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v45 - v15;
  __chkstk_darwin(v17);
  v61 = &v45 - v18;
  v62 = type metadata accessor for Binding();
  v55 = *(v62 - 8);
  *&v19 = __chkstk_darwin(v62).n128_u64[0];
  v60 = &v45 - v20;
  v21 = [a1 currentPage];
  v67 = *(v2 + 16);
  v68 = *(v2 + 24);
  type metadata accessor for Array();
  type metadata accessor for Binding();
  swift_getWitnessTable();
  result = Binding<A>.indices.getter();
  if (v21 >= v65 && v21 < v66)
  {
    v67 = *(v2 + 16);
    v68 = *(v2 + 24);
    v65 = v21;
    v48 = TupleTypeMetadata2;
    Binding<A>.subscript.getter();
    v23 = direct field offset for PageControl.Coordinator.scrollPosition;
    swift_beginAccess();
    v46 = v23;
    v24 = v2 + v23;
    v25 = v56;
    outlined init with copy of Binding<ScrollPosition>(v24, v56);
    v26 = v58;
    Binding.wrappedValue.getter();
    outlined destroy of Binding<ScrollPosition>(v25);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    ScrollPosition.viewID<A>(type:)();
    (*(v52 + 8))(v26, v53);
    Binding<A>.id.getter();
    v27 = v64;
    (*(v64 + 56))(v16, 0, 1, AssociatedTypeWitness);
    v28 = *(v48 + 48);
    v29 = v63;
    v30 = *(v63 + 16);
    v31 = v54;
    v30();
    v53 = v28;
    (v30)(&v31[v28], v16, v6);
    v32 = *(v27 + 48);
    if (v32(v31, 1, AssociatedTypeWitness) == 1)
    {
      v33 = *(v29 + 8);
      v33(v16, v6);
      if (v32(&v31[v53], 1, AssociatedTypeWitness) == 1)
      {
        v33(v31, v6);
LABEL_11:
        v33(v61, v6);
        return (*(v55 + 8))(v60, v62);
      }
    }

    else
    {
      v34 = v50;
      (v30)(v50, v31, v6);
      v35 = v53;
      if (v32(&v31[v53], 1, AssociatedTypeWitness) != 1)
      {
        v40 = v64;
        v41 = &v31[v35];
        v42 = v51;
        (*(v64 + 32))(v51, v41, AssociatedTypeWitness);
        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v44 = *(v40 + 8);
        v44(v42, AssociatedTypeWitness);
        v33 = *(v63 + 8);
        v33(v16, v6);
        v44(v50, AssociatedTypeWitness);
        v33(v31, v6);
        if (v43)
        {
          goto LABEL_11;
        }

LABEL_9:
        v36 = v56;
        outlined init with copy of Binding<ScrollPosition>(v2 + v46, v56);
        v37 = v51;
        v38 = v62;
        v39 = v60;
        Binding<A>.id.getter();
        Binding.wrappedValue.getter();
        ScrollPosition.scrollTo<A>(id:anchor:)();
        (*(v64 + 8))(v37, AssociatedTypeWitness);
        Binding.wrappedValue.setter();
        outlined destroy of Binding<ScrollPosition>(v36);
        v33(v61, v6);
        return (*(v55 + 8))(v39, v38);
      }

      v33 = *(v63 + 8);
      v33(v16, v6);
      (*(v64 + 8))(v34, AssociatedTypeWitness);
    }

    (*(v49 + 8))(v31, v48);
    goto LABEL_9;
  }

  return result;
}

uint64_t @objc PageControl.Coordinator.updateCurrentPage(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  PageControl.Coordinator.updateCurrentPage(_:)(v3);
}

uint64_t PageControl.Coordinator.deinit()
{

  outlined destroy of Binding<ScrollPosition>(v0 + direct field offset for PageControl.Coordinator.scrollPosition);
  return v0;
}

uint64_t PageControl.Coordinator.__deallocating_deinit()
{
  PageControl.Coordinator.deinit();

  return swift_deallocClassInstance();
}

void *protocol witness for UIViewRepresentable.makeCoordinator() in conformance PageControl<A>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = PageControl.makeCoordinator()(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance PageControl<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance PageControl<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable);
}

void protocol witness for View.body.getter in conformance PageControl<A>()
{
  swift_getWitnessTable();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t outlined init with take of Binding<ScrollPosition>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14ScrollPositionVGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type _GeometryActionModifier<CGSize> and conformance _GeometryActionModifier<A>()
{
  result = lazy protocol witness table cache variable for type _GeometryActionModifier<CGSize> and conformance _GeometryActionModifier<A>;
  if (!lazy protocol witness table cache variable for type _GeometryActionModifier<CGSize> and conformance _GeometryActionModifier<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI23_GeometryActionModifierVySo6CGSizeVAESQ12CoreGraphicsyHCg_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _GeometryActionModifier<CGSize> and conformance _GeometryActionModifier<A>);
  }

  return result;
}

uint64_t partial apply for closure #2 in CarouselView.body.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = *(type metadata accessor for CarouselView() - 8);
  v8 = v0 + ((*(v7 + 80) + 64) & ~*(v7 + 80));

  return closure #2 in CarouselView.body.getter(v8, v1, v2, v3, v4, v5, v6);
}

uint64_t partial apply for closure #3 in CarouselView.body.getter(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = *(type metadata accessor for CarouselView() - 8);
  return closure #3 in CarouselView.body.getter(a1, a2, v2 + ((*(v11 + 80) + 64) & ~*(v11 + 80)), v5, v6, v7, v8, v9, v10);
}

void type metadata completion function for CarouselView()
{
  type metadata accessor for Array();
  type metadata accessor for Binding();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Binding<ScrollPosition>(319, &lazy cache variable for type metadata for Binding<ScrollPosition>, &type metadata accessor for ScrollPosition);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Binding<ScrollPosition>(319, &lazy cache variable for type metadata for Binding<CGSize>, _sSo6CGSizeVMa_0);
      if (v2 <= 0x3F)
      {
        _syycMa_0();
        if (v3 <= 0x3F)
        {
          _syycSgMa_0();
          if (v4 <= 0x3F)
          {
            type metadata accessor for Optional();
            type metadata accessor for State();
            if (v5 <= 0x3F)
            {
              type metadata accessor for State<CGFloat>();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for CarouselView(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = type metadata accessor for ScrollPosition();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  if (v8 >= 0)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(*(a3 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v7 + 80);
  v14 = v12 - 1;
  if (!v12)
  {
    v14 = 0;
  }

  if (v14 <= v10)
  {
    v14 = v10;
  }

  if (v12)
  {
    v15 = 7;
  }

  else
  {
    v15 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = v13 | 7;
  v17 = ((v13 + 16) & ~v13) + *(*(v6 - 8) + 64) + 7;
  v18 = *(v11 + 80) & 0xF8;
  v19 = ~v18 & 0xFFFFFFFFFFFFFFF8;
  v20 = v18 + 23;
  if (v14 >= a2)
  {
    goto LABEL_37;
  }

  v21 = ((((v15 + *(v11 + 64)) & 0xFFFFFFFFFFFFFFF8) + ((v20 + ((((((((((v17 + ((v13 + 24) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v19) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  v22 = v21 & 0xFFFFFFF8;
  if ((v21 & 0xFFFFFFF8) != 0)
  {
    v23 = 2;
  }

  else
  {
    v23 = a2 - v14 + 1;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v26 = *(a1 + v21);
      if (!v26)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v26 = *(a1 + v21);
      if (!v26)
      {
        goto LABEL_37;
      }
    }

LABEL_34:
    v28 = v26 - 1;
    if (v22)
    {
      v28 = 0;
      v29 = *a1;
    }

    else
    {
      v29 = 0;
    }

    return v14 + (v29 | v28) + 1;
  }

  if (v25)
  {
    v26 = *(a1 + v21);
    if (v26)
    {
      goto LABEL_34;
    }
  }

LABEL_37:
  if (v14 == 0x7FFFFFFF)
  {
    v30 = *(a1 + 1);
    if (v30 >= 0xFFFFFFFF)
    {
      LODWORD(v30) = -1;
    }

    return (v30 + 1);
  }

  else
  {
    v31 = (a1 + v16 + 24) & ~v16;
    if (v14 == v9)
    {
      v32 = *(v7 + 48);

      return v32((v13 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13);
    }

    else
    {
      v33 = (*(v11 + 48))((v20 + ((((((((((v17 + v31) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v19, v12);
      if (v33 >= 2)
      {
        return v33 - 1;
      }

      else
      {
        return 0;
      }
    }
  }
}

void storeEnumTagSinglePayload for CarouselView(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = type metadata accessor for ScrollPosition();
  v9 = 0;
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  if (v11 >= 0)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(*(a4 + 16) - 8);
  v15 = *(v14 + 84);
  v16 = *(v10 + 80);
  v17 = *(v14 + 80);
  v18 = v15 - 1;
  if (!v15)
  {
    v18 = 0;
  }

  if (v18 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  else
  {
    v19 = v18;
  }

  if (v19 <= v13)
  {
    v20 = v13;
  }

  else
  {
    v20 = v19;
  }

  v21 = ((v16 + 16) & ~v16) + *(*(v8 - 8) + 64) + 7;
  v22 = ~(v17 & 0xF8) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v17 & 0xF8) + 23;
  if (v15)
  {
    v24 = *(v14 + 64);
  }

  else
  {
    v24 = *(v14 + 64) + 1;
  }

  v25 = ((((v24 + 7) & 0xFFFFFFFFFFFFFFF8) + ((v23 + ((((((((((v21 + ((v16 + 24) & ~(v16 | 7))) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v22) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v20 < a3)
  {
    if (((((v24 + 7) & 0xFFFFFFF8) + ((v23 + ((((((((((v21 + ((v16 + 24) & ~(v16 | 7))) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & v22) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v26 = a3 - v20 + 1;
    }

    else
    {
      v26 = 2;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v9 = v27;
    }

    else
    {
      v9 = 0;
    }
  }

  if (a2 > v20)
  {
    if (((((v24 + 7) & 0xFFFFFFF8) + ((v23 + ((((((((((v21 + ((v16 + 24) & ~(v16 | 7))) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & v22) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v28 = a2 - v20;
    }

    else
    {
      v28 = 1;
    }

    if (((((v24 + 7) & 0xFFFFFFF8) + ((v23 + ((((((((((v21 + ((v16 + 24) & ~(v16 | 7))) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & v22) + 31) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v29 = ~v20 + a2;
      bzero(a1, v25);
      *a1 = v29;
    }

    if (v9 > 1)
    {
      if (v9 == 2)
      {
        *(a1 + v25) = v28;
      }

      else
      {
        *(a1 + v25) = v28;
      }
    }

    else if (v9)
    {
      *(a1 + v25) = v28;
    }

    return;
  }

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *(a1 + v25) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_48;
    }

    *(a1 + v25) = 0;
LABEL_47:
    if (!a2)
    {
      return;
    }

    goto LABEL_48;
  }

  if (!v9)
  {
    goto LABEL_47;
  }

  *(a1 + v25) = 0;
  if (!a2)
  {
    return;
  }

LABEL_48:
  if (v20 == 0x7FFFFFFF)
  {
    if ((a2 & 0x80000000) != 0)
    {
      a1[1] = 0;
      a1[2] = 0;
      *a1 = a2 & 0x7FFFFFFF;
    }

    else
    {
      a1[1] = (a2 - 1);
    }
  }

  else
  {
    v30 = (a1 + (v16 | 7) + 24) & ~(v16 | 7);
    if (v12 == v20)
    {
      v31 = *(v10 + 56);

      v31((v16 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v16, a2, v11, v8);
    }

    else
    {
      v32 = v23 + ((((((((((v21 + v30) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      v33 = (v32 & v22);
      if (v19 >= a2)
      {
        if (v18 >= a2)
        {
          v39 = *(v14 + 56);

          v39(v32 & v22, (a2 + 1));
        }

        else
        {
          if (v24 <= 3)
          {
            v36 = ~(-1 << (8 * v24));
          }

          else
          {
            v36 = -1;
          }

          if (v24)
          {
            v37 = v36 & (~v18 + a2);
            if (v24 <= 3)
            {
              v38 = v24;
            }

            else
            {
              v38 = 4;
            }

            bzero(v33, v24);
            if (v38 > 2)
            {
              if (v38 == 3)
              {
                *v33 = v37;
                v33[2] = BYTE2(v37);
              }

              else
              {
                *v33 = v37;
              }
            }

            else if (v38 == 1)
            {
              *v33 = v37;
            }

            else
            {
              *v33 = v37;
            }
          }
        }
      }

      else
      {
        v34 = (v24 + 7) & 0xFFFFFFF8;
        if (v34 != -8)
        {
          v35 = ~v19 + a2;
          bzero(v33, (v34 + 8));
          *v33 = v35;
        }
      }
    }
  }
}

void type metadata accessor for Binding<ScrollPosition>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Binding();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _syycSgMa_0()
{
  if (!_syycSgML_0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd_0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &_syycSgML_0);
    }
  }
}

void type metadata accessor for State<CGFloat>()
{
  if (!lazy cache variable for type metadata for State<CGFloat>)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for State<CGFloat>);
    }
  }
}

void type metadata completion function for PageControl.Coordinator()
{
  type metadata accessor for Binding<ScrollPosition>(319, &lazy cache variable for type metadata for Binding<ScrollPosition>, &type metadata accessor for ScrollPosition);
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_100325088()
{
  type metadata accessor for Array();
  swift_getAssociatedTypeWitness();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for LazyHStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for SafeAreaPaddingModifier();
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI23_GeometryActionModifierVySo6CGSizeVAESQ12CoreGraphicsyHCg_GMd);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ViewAlignedScrollTargetBehavior();
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier(&lazy protocol witness table cache variable for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier, &type metadata accessor for SafeAreaPaddingModifier);
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _GeometryActionModifier<CGSize> and conformance _GeometryActionModifier<A>();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  type metadata accessor for PageControl();
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ScrollPosition();
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier(&lazy protocol witness table cache variable for type ScrollPosition and conformance ScrollPosition, &type metadata accessor for ScrollPosition);
  return swift_getOpaqueTypeConformance2();
}

void type metadata completion function for PageControl()
{
  type metadata accessor for Array();
  type metadata accessor for Binding();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Binding<ScrollPosition>(319, &lazy cache variable for type metadata for Binding<ScrollPosition>, &type metadata accessor for ScrollPosition);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100325700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14ScrollPositionVGMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1003257D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14ScrollPositionVGMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t outlined assign with take of Binding<ScrollPosition>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14ScrollPositionVGMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id specialized PageControl.makeUIView(context:)(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(UIPageControl) init];
  type metadata accessor for PageControl();
  swift_getWitnessTable();
  type metadata accessor for UIViewRepresentableContext();
  UIViewRepresentableContext.coordinator.getter();
  [v3 addTarget:a2 action:"updateCurrentPage:" forControlEvents:4096];

  v4 = objc_opt_self();
  v5 = [v4 systemFillColor];
  [v3 setPageIndicatorTintColor:v5];

  v6 = [v4 labelColor];
  [v3 setCurrentPageIndicatorTintColor:v6];

  return v3;
}

uint64_t outlined init with copy of Binding<ScrollPosition>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14ScrollPositionVGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Binding<ScrollPosition>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14ScrollPositionVGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #3 in closure #1 in CarouselView.body.getter(double *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = *(type metadata accessor for CarouselView() - 8);
  v10 = v1 + ((*(v9 + 80) + 64) & ~*(v9 + 80));

  return closure #3 in closure #1 in CarouselView.body.getter(a1, v10, v3, v4, v5, v6, v7, v8);
}

uint64_t lazy protocol witness table accessor for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_15()
{
  v9 = *(v0 + 16);
  v1 = type metadata accessor for CarouselView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 64) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[17];

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14ScrollPositionVGMd) + 32);
  v5 = type metadata accessor for ScrollPosition();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);

  if (*(v2 + v1[22]))
  {
  }

  v6 = v2 + v1[23];
  v7 = *(v9 - 8);
  if (!(*(v7 + 48))(v6, 1, v9))
  {
    (*(v7 + 8))(v6, v9);
  }

  type metadata accessor for Optional();
  type metadata accessor for State();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in CarouselView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = *(type metadata accessor for CarouselView() - 8);
  v10 = v2 + ((*(v9 + 80) + 64) & ~*(v9 + 80));

  return closure #1 in closure #1 in closure #1 in closure #1 in CarouselView.body.getter(a1, v10, v5, v6, v7, v8, a2);
}

uint64_t sub_10032602C()
{
  v11 = *(v0 + 16);
  v1 = type metadata accessor for CarouselView();
  v10 = *(*(v1 - 1) + 64);
  v2 = (*(*(v1 - 1) + 80) + 64) & ~*(*(v1 - 1) + 80);
  v3 = *(v11 - 8);
  v4 = *(v3 + 80);

  v5 = v0 + v2 + v1[17];

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14ScrollPositionVGMd) + 32);
  v7 = type metadata accessor for ScrollPosition();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  if (*(v0 + v2 + v1[22]))
  {
  }

  v8 = v0 + v2 + v1[23];
  if (!(*(v3 + 48))(v8, 1, v11))
  {
    (*(v3 + 8))(v8, v11);
  }

  type metadata accessor for Optional();
  type metadata accessor for State();

  (*(v3 + 8))(v0 + ((v2 + v10 + v4) & ~v4), v11);
  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in CarouselView.body.getter()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for CarouselView() - 8);
  v3 = (((*(v2 + 80) + 64) & ~*(v2 + 80)) + *(v2 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80);
  type metadata accessor for CarouselView();
  return CarouselView.setCurrentItem(_:animated:)(v0 + v3, 1);
}

void CircularProgressView.setState(_:animated:)(uint64_t a1, int a2, char a3)
{
  v5 = &v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state];
  if ((a2 & 0x10000) != 0)
  {
    if (v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10])
    {
      return;
    }

    *v5 = *&a1;
    *(v5 + 4) = a2;
    v5[10] = 1;
    if (a3)
    {
      v6 = *&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
      goto LABEL_13;
    }
  }

  else
  {
    if ((v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10] & 1) == 0)
    {
      v16 = *v5;
      v17 = *(v5 + 4);
      if ((a2 & 0x100) != 0)
      {
        if (a1 | a2)
        {
          if ((*(v5 + 4) & 0x100) != 0 && *&v16 | *(v5 + 4))
          {
            return;
          }
        }

        else if ((*(v5 + 4) & 0x100) != 0 && !(*&v16 | *(v5 + 4)))
        {
          return;
        }
      }

      else if ((*(v5 + 4) & 0x100) == 0)
      {
        if (a2)
        {
          if (v17)
          {
            return;
          }
        }

        else if ((v17 & 1) == 0 && *&a1 == v16)
        {
          return;
        }
      }
    }

    *v5 = *&a1;
    *(v5 + 4) = a2;
    v5[10] = 0;
    if (a3)
    {
      v6 = *&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
      LOBYTE(v7) = a2;
      if ((a2 & 0x100) == 0)
      {
        goto LABEL_5;
      }

LABEL_23:
      if (a1 | v7)
      {
        [v6 setOpacity:0.0];
        if (a3)
        {
          return;
        }
      }

      else if (*&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator])
      {
        v20 = swift_allocObject();
        *(v20 + 16) = v3;
        *(v20 + 24) = v6;
        v21 = v3;
        v22 = v6;

        CircularProgressView.SpinAnimator.stop(to:progressValueProvider:)(partial apply for closure #2 in CircularProgressView.setState(_:animated:), v20, 1.0);

        if (a3)
        {
          return;
        }
      }

      else
      {
        [v6 setStrokeEnd:1.0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_1004F2F10;
        type metadata accessor for UIAction(0, &_sSo8NSNumberCML_0);
        *(v23 + 32) = NSNumber.init(integerLiteral:)(4);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v6 setLineDashPattern:isa];

        if (a3)
        {
          return;
        }
      }

      goto LABEL_46;
    }
  }

  v13 = objc_opt_self();
  [v13 begin];
  [v13 setDisableActions:1];
  v6 = *&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
  if (v5[10])
  {
LABEL_13:
    [v6 setLineDashPattern:0];
    if (*&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator])
    {
      v14 = swift_allocObject();
      *(v14 + 16) = v3;
      v15 = v3;

      CircularProgressView.SpinAnimator.stop(to:progressValueProvider:)(partial apply for closure #3 in CircularProgressView.setState(_:animated:), v14, 0.0);

      goto LABEL_15;
    }

LABEL_40:
    if (a3)
    {
      return;
    }

    goto LABEL_46;
  }

  a1 = *v5;
  v7 = *(v5 + 4);
  if ((v7 & 0x100) != 0)
  {
    goto LABEL_23;
  }

LABEL_5:
  v8 = *&a1;
  [v6 setLineDashPattern:0];
  LODWORD(v9) = 1.0;
  [v6 setOpacity:v9];
  if ((v7 & 1) == 0)
  {
    if (*&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator])
    {
      v18 = swift_allocObject();
      *(v18 + 16) = v3;

      v19 = v3;
      CircularProgressView.SpinAnimator.stop(to:progressValueProvider:)(partial apply for closure #1 in CircularProgressView.setState(_:animated:), v18, v8);

      if (a3)
      {
        return;
      }

      goto LABEL_46;
    }

    [v6 setStrokeEnd:v8];
    goto LABEL_40;
  }

  v10 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator;
  v11 = *&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator];
  if (!v11)
  {
    type metadata accessor for CircularProgressView.SpinAnimator();
    v11 = swift_allocObject();
    *(v11 + 40) = 0;
    *(v11 + 16) = 0xD000000000000010;
    *(v11 + 24) = 0x80000001004D1810;
    *(v11 + 32) = v6;
    v12 = v6;
  }

  *&v3[v10] = v11;

  CircularProgressView.SpinAnimator.start()();
LABEL_15:

  if (a3)
  {
    return;
  }

LABEL_46:
  v25 = objc_opt_self();

  [v25 commit];
}

uint64_t static CircularProgressView.State.__derived_enum_equals(_:_:)(uint64_t a1, __int16 a2, uint64_t a3, __int16 a4)
{
  if ((a2 & 0x100) != 0)
  {
    v5 = (a3 | a4) == 0;
    if ((a4 & 0x100) == 0)
    {
      v5 = 0;
    }

    v6 = (a3 | a4) != 0;
    if ((a4 & 0x100) == 0)
    {
      v6 = 0;
    }

    if (a1 | a2)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    if ((a4 & 0x100) == 0)
    {
      if (a2)
      {
        if (a4)
        {
          return 1;
        }
      }

      else if ((a4 & 1) == 0 && *&a1 == *&a3)
      {
        return 1;
      }
    }

    return 0;
  }
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance CircularProgressView.State(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 9) == 1)
  {
    if (*&v2 | v3)
    {
      if (*(a2 + 9))
      {
        return (*&v4 | v5) != 0;
      }
    }

    else if (*(a2 + 9))
    {
      return (*&v4 | v5) == 0;
    }

    return 0;
  }

  if ((*(a2 + 9) & 1) == 0)
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else if ((v5 & 1) == 0 && v2 == v4)
    {
      return 1;
    }
  }

  return 0;
}

char *CircularProgressView.init(size:)(double a1, double a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state];
  *v6 = 0;
  *(v6 + 4) = 0;
  v6[10] = 1;
  *&v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image] = 0;
  *&v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView] = 0;
  *&v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale] = 0x3FE0000000000000;
  *&v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator] = 0;
  v7 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer;
  *&v2[v7] = [objc_allocWithZone(CAShapeLayer) init];
  v8 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer;
  *&v2[v8] = [objc_allocWithZone(CAShapeLayer) init];
  v9 = &v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_preferredSize];
  *v9 = a1;
  v9[1] = a2;
  v25.receiver = v2;
  v25.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v25, "initWithFrame:", 0.0, 0.0, a1, a2);
  v11 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer;
  v12 = *&v10[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer];
  v13 = objc_opt_self();
  v14 = v10;
  v15 = v12;
  v16 = [v13 clearColor];
  v17 = [v16 CGColor];

  [v15 setFillColor:v17];
  [*&v10[v11] setLineWidth:2.5];
  v18 = [v14 layer];
  [v18 addSublayer:*&v10[v11]];

  v19 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer;
  [*&v14[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer] setLineCap:kCALineCapRound];
  [*&v14[v19] setStrokeEnd:0.0];
  v20 = *&v14[v19];
  v21 = [v13 clearColor];
  v22 = [v21 CGColor];

  [v20 setFillColor:v22];
  [*&v14[v19] setLineWidth:2.5];
  [*&v14[v19] setLineDashPhase:6.0];
  v23 = [v14 layer];

  [v23 addSublayer:*&v14[v19]];
  CircularProgressView.updateColors()();

  return v14;
}

void CircularProgressView.updateColors()()
{
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer];
  v2 = [objc_opt_self() tertiarySystemFillColor];
  v3 = [v2 CGColor];

  [v1 setStrokeColor:v3];
  v4 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
  v5 = [v0 tintColor];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 CGColor];

    [v4 setStrokeColor:v7];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall CircularProgressView.tintColorDidChange()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, "tintColorDidChange");
  CircularProgressView.updateColors()();
}

Swift::Void __swiftcall CircularProgressView.layoutSubviews()()
{
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, "layoutSubviews");
  [v0 bounds];
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  v5 = CGRectGetWidth(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v6 = CGRectGetHeight(v26);
  if (v6 >= v5)
  {
    v6 = v5;
  }

  v7 = (v6 + -2.5) * 0.5;
  CGRect.center.getter();
  v10 = [objc_opt_self() bezierPathWithArcCenter:1 radius:v8 startAngle:v9 endAngle:v7 clockwise:{-1.57079633, 4.71238898}];
  v11 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer];
  v12 = [v10 CGPath];
  [v11 setPath:v12];

  v13 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
  v14 = [v10 CGPath];
  [v13 setPath:v14];

  [v13 setBounds:{x, y, width, height}];
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v15 = CGRectGetWidth(v27) * 0.5;
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  [v13 setPosition:{v15, CGRectGetHeight(v28) * 0.5}];
  v16 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView;
  v17 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView];
  if (v17)
  {
    [v17 setFrame:{x, y, width, height}];
    v18 = *&v0[v16];
    if (v18)
    {
      v19 = v18;
      [v19 frame];
      v20 = CGRectGetWidth(v29);
      [v19 frame];
      v21 = CGRectGetHeight(v30);
      if (v21 < v20)
      {
        v20 = v21;
      }

      v22 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
      swift_beginAccess();
      v23 = [objc_opt_self() configurationWithPointSize:v20 * *&v0[v22]];
      [v19 setPreferredSymbolConfiguration:v23];
    }
  }
}

double CircularProgressView.sizeThatFits(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_preferredSize;
  swift_beginAccess();
  return *v1;
}

id CircularProgressView.preferredSize.setter(double a1, double a2)
{
  v5 = &v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_preferredSize];
  result = swift_beginAccess();
  v7 = *v5;
  v8 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  if (v7 != a1 || v8 != a2)
  {
    return [v2 invalidateIntrinsicContentSize];
  }

  return result;
}

void (*CircularProgressView.preferredSize.modify(uint64_t *a1))(id **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_preferredSize;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return CircularProgressView.preferredSize.modify;
}

void CircularProgressView.preferredSize.modify(id **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 3);
  v3 = ((*a1)[6] + (*a1)[5]);
  v4 = *(*a1 + 4);
  v5 = *v3;
  v6 = v3[1];
  *v3 = v2;
  v3[1] = v4;
  if (v2 != v5 || v4 != v6)
  {
    [v1[5] invalidateIntrinsicContentSize];
  }

  free(v1);
}

void (*CircularProgressView.state.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 8);
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10);
  *a1 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state);
  *(a1 + 8) = v2;
  *(a1 + 10) = v3;
  return CircularProgressView.state.modify;
}

double closure #2 in CircularProgressView.setState(_:animated:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator);
  if (v6)
  {
    v7 = v6 == a1;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    *(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator) = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1004F2F10;
  type metadata accessor for UIAction(0, &_sSo8NSNumberCML_0);
  *(v8 + 32) = NSNumber.init(integerLiteral:)(4);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a3 setLineDashPattern:isa];

  v10 = a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state;
  result = 0.0;
  if ((*(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10) & 1) == 0)
  {
    v12 = *v10;
    v13 = *(v10 + 8);
    if ((v13 & 0x100) != 0)
    {
      if (!(*&v12 | v13))
      {
        return 1.0;
      }
    }

    else
    {
      result = v12;
      if (v13)
      {
        return 0.6;
      }
    }
  }

  return result;
}

double closure #1 in CircularProgressView.setState(_:animated:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator);
  if (v4)
  {
    v5 = v4 == a1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    *(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator) = 0;
  }

  v6 = a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state;
  result = 0.0;
  if ((*(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10) & 1) == 0)
  {
    v8 = *v6;
    v9 = *(v6 + 8);
    if ((v9 & 0x100) != 0)
    {
      if (!(*&v8 | v9))
      {
        return 1.0;
      }
    }

    else
    {
      result = v8;
      if (v9)
      {
        return 0.6;
      }
    }
  }

  return result;
}

uint64_t sub_100327640()
{

  return swift_deallocObject();
}

void CircularProgressView.image.didset()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView;
    v4 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView);
    if (v4)
    {
      v5 = v2;
      v6 = v4;
    }

    else
    {
      v8 = objc_allocWithZone(UIImageView);
      v9 = v2;
      v6 = [v8 init];
    }

    v10 = v4;
    [v6 setImage:v2];
    v11 = *(v0 + v3);
    if (v11)
    {
      v12 = v11;
      [v12 frame];
      Width = CGRectGetWidth(v18);
      [v12 frame];
      Height = CGRectGetHeight(v19);
      if (Height < Width)
      {
        Width = Height;
      }

      v15 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
      swift_beginAccess();
      v16 = [objc_opt_self() configurationWithPointSize:Width * *(v0 + v15)];
      [v12 setPreferredSymbolConfiguration:v16];

      v7 = *(v0 + v3);
    }

    else
    {
      v7 = 0;
    }

    *(v0 + v3) = v6;
    v17 = v6;
    CircularProgressView.imageView.didset(v7);
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView);
    *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView) = 0;
    CircularProgressView.imageView.didset(v7);
  }
}

void *CircularProgressView.image.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CircularProgressView.image.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  CircularProgressView.image.didset();
}

void (*CircularProgressView.image.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CircularProgressView.image.modify;
}

void CircularProgressView.image.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    CircularProgressView.image.didset();
  }
}

void CircularProgressView.imageView.didset(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView;
  v5 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView];
  if (v5)
  {
    if (!a1)
    {
LABEL_10:
      v13 = v5;
      [v13 setContentMode:4];
      [v2 addSubview:v13];

      return;
    }

    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIImageView);
    v6 = v5;
    v3 = v3;
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v8 = v3;
  v9 = [v8 superview];
  if (v9)
  {
    v10 = v9;
    type metadata accessor for UIAction(0, &_sSo6UIViewCML_0);
    v11 = v2;
    v12 = static NSObject.== infix(_:_:)();

    if (v12)
    {
      [v8 removeFromSuperview];
    }
  }

  v5 = *&v2[v4];
  if (v5)
  {
    goto LABEL_10;
  }
}

double CircularProgressView.imageScale.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
  swift_beginAccess();
  return *(v0 + v1);
}

void CircularProgressView.imageScale.setter(double a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4 != a1)
  {
    v5 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView);
    if (v5)
    {
      v6 = v5;
      [v6 frame];
      Width = CGRectGetWidth(v10);
      [v6 frame];
      Height = CGRectGetHeight(v11);
      if (Height >= Width)
      {
        Height = Width;
      }

      v9 = [objc_opt_self() configurationWithPointSize:*(v1 + v3) * Height];
      [v6 setPreferredSymbolConfiguration:v9];
    }
  }
}

void (*CircularProgressView.imageScale.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return CircularProgressView.imageScale.modify;
}

void CircularProgressView.imageScale.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {
    CircularProgressView.imageScale.setter(v3);
  }

  else
  {
    v5 = v2[4];
    v4 = v2[5];
    v6 = *(v5 + v4);
    *(v5 + v4) = v3;
    if (v3 != v6)
    {
      v7 = v2[4];
      v8 = *(v7 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView);
      if (v8)
      {
        v9 = v2[5];
        v10 = v8;
        [v10 frame];
        Width = CGRectGetWidth(v15);
        [v10 frame];
        Height = CGRectGetHeight(v16);
        if (Height >= Width)
        {
          Height = Width;
        }

        v13 = [objc_opt_self() configurationWithPointSize:*(v7 + v9) * Height];
        [v10 setPreferredSymbolConfiguration:v13];
      }
    }
  }

  free(v2);
}

void CircularProgressView.SpinAnimator.start()()
{
  *(v0 + 40) = 0;
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = String._bridgeToObjectiveC()();
  [v1 removeAnimationForKey:v4];

  *&v21[0] = v3;
  *(&v21[0] + 1) = v2;

  v5._countAndFlagsBits = 0x676E69646E65;
  v5._object = 0xE600000000000000;
  String.append(_:)(v5);
  v6 = String._bridgeToObjectiveC()();

  [v1 removeAnimationForKey:v6];

  [v1 setStrokeEnd:0.6];
  v7 = String._bridgeToObjectiveC()();
  v8 = [objc_opt_self() animationWithKeyPath:v7];

  v9 = [v1 presentationLayer];
  if (!v9)
  {
    v9 = v1;
  }

  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 valueForKeyPath:v10];

  if (v11)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21[0] = v19;
  v21[1] = v20;
  if (*(&v20 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    _sypSgWOh_0(v21);
  }

  isa = Double._bridgeToObjectiveC()().super.super.isa;
  [v8 setFromValue:isa];

  v13 = Double._bridgeToObjectiveC()().super.super.isa;
  [v8 setToValue:v13];

  v14 = v8;
  [v14 setRemovedOnCompletion:1];
  [v14 setFillMode:kCAFillModeBoth];
  [v14 setDuration:1.0];
  LODWORD(v15) = 2139095040;
  [v14 setRepeatCount:v15];
  v16 = CACurrentMediaTime();
  [v14 duration];
  [v14 setBeginTime:{(v16 - fmod(v16, v17))}];

  v18 = String._bridgeToObjectiveC()();
  [v1 addAnimation:v14 forKey:v18];
}

void CircularProgressView.SpinAnimator.stop(to:progressValueProvider:)(uint64_t a1, uint64_t a2, double a3)
{
  if ((*(v3 + 40) & 1) == 0)
  {
    *(v3 + 40) = 1;
    v7 = *(v3 + 32);
    v8 = [v7 presentationLayer];
    if (!v8)
    {
      v8 = v7;
    }

    v9 = String._bridgeToObjectiveC()();
    v10 = [v8 valueForKeyPath:v9];

    if (v10)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = 0u;
      v41 = 0u;
    }

    v11 = fmin(a3, 0.1);
    v42[0] = v40;
    v42[1] = v41;
    if (*(&v41 + 1))
    {
      swift_dynamicCast();
    }

    else
    {
      _sypSgWOh_0(v42);
    }

    v12 = String._bridgeToObjectiveC()();
    v13 = objc_opt_self();
    v14 = [v13 animationWithKeyPath:v12];

    isa = Double._bridgeToObjectiveC()().super.super.isa;
    [v14 setFromValue:isa];

    v16 = Double._bridgeToObjectiveC()().super.super.isa;
    [v14 setToValue:v16];

    v17 = String._bridgeToObjectiveC()();
    v18 = [v13 animationWithKeyPath:v17];

    v19 = CGFloat._bridgeToObjectiveC()().super.super.isa;
    [v18 setToValue:v19];

    v20 = [objc_allocWithZone(CAAnimationGroup) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1004F2FF0;
    *(v21 + 32) = v14;
    *(v21 + 40) = v18;
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for CAAnimation);
    v22 = v14;
    v23 = v18;
    v24 = Array._bridgeToObjectiveC()().super.isa;

    [v20 setAnimations:v24];

    v25 = v20;
    [v25 setDuration:((1.0 - (0.6 - v11)) * 6.28318531 + -6.28318531 + 6.28318531) * 0.159154943];
    [v25 setFillMode:kCAFillModeForwards];
    [v25 setRemovedOnCompletion:0];
    v26 = type metadata accessor for CircularProgressView.SpinAnimator.Delegate();
    v27 = objc_allocWithZone(v26);
    v28 = &v27[OBJC_IVAR____TtCCC11MusicCoreUI20CircularProgressViewP33_2327D9925563EEC9FF3A63D4DED4721D12SpinAnimator8Delegate_onAnimationDidStop];
    *v28 = 0;
    *(v28 + 1) = 0;
    v39.receiver = v27;
    v39.super_class = v26;
    v29 = objc_msgSendSuper2(&v39, "init");
    [v25 setDelegate:v29];

    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = v3;
    *(v30 + 32) = v11;
    *(v30 + 40) = a1;
    *(v30 + 48) = a2;
    *(v30 + 56) = a3;
    v31 = &v29[OBJC_IVAR____TtCCC11MusicCoreUI20CircularProgressViewP33_2327D9925563EEC9FF3A63D4DED4721D12SpinAnimator8Delegate_onAnimationDidStop];
    v32 = *&v29[OBJC_IVAR____TtCCC11MusicCoreUI20CircularProgressViewP33_2327D9925563EEC9FF3A63D4DED4721D12SpinAnimator8Delegate_onAnimationDidStop];
    *v31 = partial apply for closure #1 in CircularProgressView.SpinAnimator.stop(to:progressValueProvider:);
    v31[1] = v30;
    v33 = v29;

    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v32);
    v35 = *(v3 + 16);
    v34 = *(v3 + 24);
    v36 = String._bridgeToObjectiveC()();
    [v7 removeAnimationForKey:v36];

    *&v42[0] = v35;
    *(&v42[0] + 1) = v34;

    v37._countAndFlagsBits = 0x676E69646E65;
    v37._object = 0xE600000000000000;
    String.append(_:)(v37);
    v38 = String._bridgeToObjectiveC()();

    [v7 addAnimation:v25 forKey:v38];
  }
}

uint64_t sub_1003285D0()
{

  return swift_deallocObject();
}

void closure #1 in CircularProgressView.SpinAnimator.stop(to:progressValueProvider:)(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  if (*(a5 + 40) == 1)
  {
    v11 = objc_opt_self();
    [v11 begin];
    [v11 setDisableActions:1];
    v12 = *(a5 + 32);
    v17 = *(a5 + 16);
    v18 = *(a5 + 24);

    v13._countAndFlagsBits = 0x676E69646E65;
    v13._object = 0xE600000000000000;
    String.append(_:)(v13);
    v14 = String._bridgeToObjectiveC()();

    [v12 removeAnimationForKey:{v14, v17, v18}];

    [v12 setStrokeStart:0.0];
    [v12 setStrokeEnd:a1];
    [v11 commit];
    v15 = COERCE_DOUBLE(a6(a5));
    if (v16)
    {
      v15 = a2;
    }

    [v12 setStrokeEnd:v15];
  }
}

id CircularProgressView.SpinAnimator.Delegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CircularProgressView.SpinAnimator.Delegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t CircularProgressView.SpinAnimator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void specialized CircularProgressView.init(coder:)()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 10) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale) = 0x3FE0000000000000;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator) = 0;
  v2 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer;
  *(v0 + v2) = [objc_allocWithZone(CAShapeLayer) init];
  v3 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer;
  *(v0 + v3) = [objc_allocWithZone(CAShapeLayer) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t __swift_memcpy10_8_0(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CircularProgressView.State(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CircularProgressView.State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 10) = v3;
  return result;
}

uint64_t getEnumTag for CircularProgressView.State(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for CircularProgressView.State(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

uint64_t sub_100328C18()
{

  return swift_deallocObject();
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ17_MusicKit_SwiftUI12ArtworkImageV0b4CoreE0E11GridPreviewO4ItemV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork.CropStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
  __chkstk_darwin(v8 - 8);
  v10 = &v53 - v9;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSg_AGtMd);
  __chkstk_darwin(v64);
  v69 = &v53 - v11;
  v71 = type metadata accessor for ArtworkImage.ViewModel(0);
  v12 = *(v71 - 8);
  __chkstk_darwin(v71);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  __chkstk_darwin(v15 - 8);
  v66 = &v53 - v16;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSg_AGtMd);
  __chkstk_darwin(v67);
  v73 = &v53 - v17;
  v72 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  __chkstk_darwin(v72);
  v19 = (&v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v68 = &v53 - v22;
  v23 = *(a1 + 16);
  if (v23 == *(a2 + 16))
  {
    if (v23 && a1 != a2)
    {
      v56 = v10;
      v24 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v25 = a1 + v24;
      v26 = a2 + v24;
      v65 = (v12 + 48);
      v59 = (v5 + 48);
      v60 = v4;
      v53 = (v5 + 32);
      v54 = v7;
      v55 = (v5 + 8);
      v63 = *(v21 + 72);
      v27 = v66;
      v28 = v68;
      v61 = v14;
      v58 = v19;
      while (1)
      {
        outlined init with copy of Collaboration.Management.View(v25, v28, type metadata accessor for ArtworkImage.GridPreview.Item);
        v70 = v25;
        outlined init with copy of Collaboration.Management.View(v26, v19, type metadata accessor for ArtworkImage.GridPreview.Item);
        v29 = *v28 == *v19 && v28[1] == v19[1];
        if (!v29 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
LABEL_32:
          outlined destroy of ArtworkImage.Placeholder(v19, type metadata accessor for ArtworkImage.GridPreview.Item);
          outlined destroy of ArtworkImage.Placeholder(v28, type metadata accessor for ArtworkImage.GridPreview.Item);
          goto LABEL_33;
        }

        v30 = v73;
        v31 = *(v72 + 20);
        v32 = *(v67 + 48);
        outlined init with copy of TaskPriority?(v28 + v31, v73, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
        outlined init with copy of TaskPriority?(v19 + v31, v30 + v32, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
        v33 = *v65;
        v34 = v30;
        v35 = v71;
        if ((*v65)(v34, 1, v71) == 1)
        {
          break;
        }

        v62 = v23;
        v37 = v73;
        outlined init with copy of TaskPriority?(v73, v27, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
        if (v33(v37 + v32, 1, v35) == 1)
        {
          outlined destroy of ArtworkImage.Placeholder(v27, type metadata accessor for ArtworkImage.ViewModel);
          v28 = v68;
LABEL_26:
          v51 = &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSg_AGtMd;
          goto LABEL_31;
        }

        v38 = v61;
        outlined init with take of Collaboration.Management.View(v73 + v32, v61, type metadata accessor for ArtworkImage.ViewModel);
        if ((static Artwork.== infix(_:_:)() & 1) == 0)
        {
          outlined destroy of ArtworkImage.Placeholder(v38, type metadata accessor for ArtworkImage.ViewModel);
          goto LABEL_30;
        }

        v39 = *(v71 + 20);
        v40 = *(v64 + 48);
        v41 = v69;
        outlined init with copy of TaskPriority?(v27 + v39, v69, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
        outlined init with copy of TaskPriority?(v38 + v39, v41 + v40, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
        v42 = *v59;
        v43 = v41;
        v44 = v60;
        if ((*v59)(v43, 1, v60) == 1)
        {
          outlined destroy of ArtworkImage.Placeholder(v38, type metadata accessor for ArtworkImage.ViewModel);
          v45 = v42(v69 + v40, 1, v44);
          v19 = v58;
          if (v45 != 1)
          {
            goto LABEL_29;
          }

          outlined destroy of TaskPriority?(v69, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
          v27 = v66;
          outlined destroy of ArtworkImage.Placeholder(v66, type metadata accessor for ArtworkImage.ViewModel);
          v28 = v68;
          v23 = v62;
          goto LABEL_18;
        }

        v46 = v69;
        v47 = v56;
        outlined init with copy of TaskPriority?(v69, v56, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
        if (v42(v46 + v40, 1, v44) == 1)
        {
          outlined destroy of ArtworkImage.Placeholder(v61, type metadata accessor for ArtworkImage.ViewModel);
          (*v55)(v47, v44);
          v19 = v58;
LABEL_29:
          outlined destroy of TaskPriority?(v69, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSg_AGtMd);
          v27 = v66;
LABEL_30:
          v28 = v68;
          outlined destroy of ArtworkImage.Placeholder(v27, type metadata accessor for ArtworkImage.ViewModel);
          v51 = &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd;
LABEL_31:
          outlined destroy of TaskPriority?(v73, v51);
          goto LABEL_32;
        }

        v48 = v54;
        (*v53)(v54, v46 + v40, v44);
        lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Artwork.CropStyle and conformance Artwork.CropStyle, &type metadata accessor for Artwork.CropStyle);
        v57 = dispatch thunk of static Equatable.== infix(_:_:)();
        v49 = *v55;
        (*v55)(v48, v44);
        outlined destroy of ArtworkImage.Placeholder(v61, type metadata accessor for ArtworkImage.ViewModel);
        v49(v47, v44);
        outlined destroy of TaskPriority?(v46, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
        v27 = v66;
        outlined destroy of ArtworkImage.Placeholder(v66, type metadata accessor for ArtworkImage.ViewModel);
        outlined destroy of TaskPriority?(v73, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
        v19 = v58;
        v28 = v68;
        v23 = v62;
        if ((v57 & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_21:
        v50 = specialized static ArtworkImage.Placeholder.__derived_enum_equals(_:_:)(v28 + *(v72 + 24), v19 + *(v72 + 24));
        outlined destroy of ArtworkImage.Placeholder(v19, type metadata accessor for ArtworkImage.GridPreview.Item);
        outlined destroy of ArtworkImage.Placeholder(v28, type metadata accessor for ArtworkImage.GridPreview.Item);
        if (v50)
        {
          v26 += v63;
          v25 = v70 + v63;
          if (--v23)
          {
            continue;
          }
        }

        return v50 & 1;
      }

      v36 = v33(v73 + v32, 1, v35);
      v28 = v68;
      if (v36 != 1)
      {
        goto LABEL_26;
      }

LABEL_18:
      outlined destroy of TaskPriority?(v73, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
      goto LABEL_21;
    }

    v50 = 1;
  }

  else
  {
LABEL_33:
    v50 = 0;
  }

  return v50 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ12CoreGraphics7CGFloatV_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11MusicCoreUI16PlaylistCuratorsO7CuratorV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v48 = type metadata accessor for Artwork();
  v4 = *(v48 - 8);
  __chkstk_darwin(v48);
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0);
  __chkstk_darwin(v6 - 8);
  v46 = &v36 - v7;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSg_ADtMd);
  __chkstk_darwin(v45);
  v9 = &v36 - v8;
  v44 = type metadata accessor for PlaylistCurators.Curator(0);
  __chkstk_darwin(v44);
  v49 = (&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v47 = (&v36 - v13);
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16))
  {
    if (!v14 || a1 == a2)
    {
      return 1;
    }

    v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v16 = a1 + v15;
    v17 = a2 + v15;
    v18 = (v4 + 48);
    v37 = (v4 + 32);
    v38 = (v4 + 48);
    v39 = (v4 + 8);
    v43 = *(v12 + 72);
    v19 = v46;
    v20 = v47;
    while (1)
    {
      outlined init with copy of Collaboration.Management.View(v16, v20, type metadata accessor for PlaylistCurators.Curator);
      v21 = v49;
      outlined init with copy of Collaboration.Management.View(v17, v49, type metadata accessor for PlaylistCurators.Curator);
      v22 = *v20 == *v21 && v20[1] == v21[1];
      if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v23 = v20;
      v24 = v18;
      v25 = *(v44 + 20);
      v26 = *(v45 + 48);
      outlined init with copy of TaskPriority?(v23 + v25, v9, &_s8MusicKit7ArtworkVSgMd_0);
      outlined init with copy of TaskPriority?(v49 + v25, &v9[v26], &_s8MusicKit7ArtworkVSgMd_0);
      v27 = *v24;
      if ((*v24)(v9, 1, v48) == 1)
      {
        if (v27(&v9[v26], 1, v48) != 1)
        {
          goto LABEL_19;
        }

        v18 = v24;
        outlined destroy of TaskPriority?(v9, &_s8MusicKit7ArtworkVSgMd_0);
        outlined destroy of ArtworkImage.Placeholder(v49, type metadata accessor for PlaylistCurators.Curator);
        v20 = v47;
        outlined destroy of ArtworkImage.Placeholder(v47, type metadata accessor for PlaylistCurators.Curator);
      }

      else
      {
        v42 = v16;
        v28 = v9;
        outlined init with copy of TaskPriority?(v9, v19, &_s8MusicKit7ArtworkVSgMd_0);
        if (v27(&v9[v26], 1, v48) == 1)
        {
          (*v39)(v19, v48);
LABEL_19:
          outlined destroy of TaskPriority?(v9, &_s8MusicKit7ArtworkVSg_ADtMd);
          v20 = v47;
          break;
        }

        v29 = &v9[v26];
        v30 = v40;
        v31 = v48;
        (*v37)(v40, v29, v48);
        lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Artwork and conformance Artwork, &type metadata accessor for Artwork);
        v41 = dispatch thunk of static Equatable.== infix(_:_:)();
        v32 = *v39;
        v33 = v30;
        v34 = v46;
        (*v39)(v33, v31);
        v19 = v34;
        v32(v34, v31);
        outlined destroy of TaskPriority?(v28, &_s8MusicKit7ArtworkVSgMd_0);
        outlined destroy of ArtworkImage.Placeholder(v49, type metadata accessor for PlaylistCurators.Curator);
        v20 = v47;
        v18 = v38;
        outlined destroy of ArtworkImage.Placeholder(v47, type metadata accessor for PlaylistCurators.Curator);
        v9 = v28;
        v16 = v42;
        if ((v41 & 1) == 0)
        {
          return 0;
        }
      }

      v17 += v43;
      v16 += v43;
      if (!--v14)
      {
        return 1;
      }
    }

    outlined destroy of ArtworkImage.Placeholder(v49, type metadata accessor for PlaylistCurators.Curator);
    outlined destroy of ArtworkImage.Placeholder(v20, type metadata accessor for PlaylistCurators.Curator);
  }

  return 0;
}

uint64_t Collaboration.Management.Model.__allocating_init(manager:playlist:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = specialized Collaboration.Management.Model.init(manager:playlist:)(a1, a2);

  return v4;
}

uint64_t Collaboration.Management.Model.init(manager:playlist:)(uint64_t a1, uint64_t a2)
{
  v2 = specialized Collaboration.Management.Model.init(manager:playlist:)(a1, a2);

  return v2;
}

uint64_t property wrapper backing initializer of Collaboration.Management.Model.playlist(char *a1)
{
  v2 = type metadata accessor for Playlist();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v13 - v8;
  v10 = *(v3 + 16);
  (v10)(&v13 - v8, a1, v2, v7);
  v10(v5, v9, v2);
  Published.init(initialValue:)();
  v11 = *(v3 + 8);
  v11(a1, v2);
  return v11(v9, v2);
}

uint64_t closure #1 in Collaboration.Management.Model.init(manager:playlist:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    static ApplicationCapabilities.shared.getter(v1);
    outlined destroy of ApplicationCapabilities(v1);
    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t closure #2 in Collaboration.Management.Model.init(manager:playlist:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd_0);
  v5[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy8MusicKit0D24LibrarySectionedResponseVyAF8PlaylistVAJ0dE8InternalE12CollaboratorVGSg_GMd);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy8MusicKit0G24LibrarySectionedResponseVyAJ8PlaylistVAN0gH8InternalE12CollaboratorVGSg_GSo17OS_dispatch_queueCGMd);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23LibrarySectionedRequestVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGMd);
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();

  return _swift_task_switch(closure #2 in Collaboration.Management.Model.init(manager:playlist:), 0, 0);
}

uint64_t closure #2 in Collaboration.Management.Model.init(manager:playlist:)()
{
  type metadata accessor for Playlist();
  type metadata accessor for Playlist.Collaborator();
  lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Playlist.Collaborator and conformance Playlist.Collaborator, &type metadata accessor for Playlist.Collaborator);
  MusicLibrarySectionedRequest.init()();
  swift_getKeyPath();
  v0[2] = Playlist.id.getter();
  v0[3] = v1;
  MusicLibrarySectionedRequest.filterSections<A>(matching:equalTo:)();

  type metadata accessor for MainActor();
  v0[17] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in Collaboration.Management.Model.init(manager:playlist:), v3, v2);
}

{

  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type MusicLibrarySectionedRequest<Playlist, Playlist.Collaborator> and conformance MusicLibrarySectionedRequest<A, B>, &_s8MusicKit0A23LibrarySectionedRequestVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGMd);
  *(v0 + 144) = MusicAutoupdatableRequest.autoupdatingResponse.getter();

  return _swift_task_switch(closure #2 in Collaboration.Management.Model.init(manager:playlist:), 0, 0);
}

{
  v1 = v0[13];
  v15 = v0[14];
  v16 = v0[16];
  v13 = v0[12];
  v14 = v0[15];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v11 = v0[8];
  v12 = v0[11];
  v5 = v0[6];
  *(v5 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponse) = v0[18];

  dispatch thunk of MusicAutoupdatingResponse.$response.getter();

  type metadata accessor for UIAction(0, &_sSo17OS_dispatch_queueCML_0);
  v6 = static OS_dispatch_queue.main.getter();
  v0[4] = v6;
  v7 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Published<MusicLibrarySectionedResponse<Playlist, Playlist.Collaborator>?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy8MusicKit0D24LibrarySectionedResponseVyAF8PlaylistVAJ0dE8InternalE12CollaboratorVGSg_GMd);
  _sSo17OS_dispatch_queueCAB7Combine9Scheduler8DispatchWl_0();
  Publisher.receive<A>(on:options:)();
  outlined destroy of TaskPriority?(v4, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd_0);

  (*(v3 + 8))(v2, v11);
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Published<MusicLibrarySectionedResponse<Playlist, Playlist.Collaborator>?>.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy8MusicKit0G24LibrarySectionedResponseVyAJ8PlaylistVAN0gH8InternalE12CollaboratorVGSg_GSo17OS_dispatch_queueCGMd);
  v8 = Publisher<>.sink(receiveValue:)();

  (*(v13 + 8))(v1, v12);
  (*(v14 + 8))(v16, v15);
  *(v5 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponseSubscription) = v8;

  v9 = v0[1];

  return v9();
}

uint64_t closure #1 in closure #2 in Collaboration.Management.Model.init(manager:playlist:)(uint64_t a1, uint64_t a2)
{
  v244 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMd);
  __chkstk_darwin(v3 - 8);
  v240 = &v206 - v4;
  v5 = type metadata accessor for Playlist.Collaborator();
  v238 = *(v5 - 8);
  __chkstk_darwin(v5);
  v252 = &v206 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v237 = &v206 - v8;
  __chkstk_darwin(v9);
  v255 = &v206 - v10;
  __chkstk_darwin(v11);
  v247 = &v206 - v12;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA8PlaylistV0aB8InternalE12CollaboratorVGMd_0);
  v229 = *(v249 - 8);
  __chkstk_darwin(v249);
  v228 = &v206 - v13;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC8PlaylistV0cD8InternalE12CollaboratorVGGMd);
  __chkstk_darwin(v227);
  v248 = &v206 - v14;
  v220 = type metadata accessor for Date();
  v218 = *(v220 - 8);
  __chkstk_darwin(v220);
  v213 = &v206 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd);
  __chkstk_darwin(v217);
  v219 = &v206 - v16;
  v226 = type metadata accessor for Playlist();
  v225 = *(v226 - 1);
  __chkstk_darwin(v226);
  v223 = &v206 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v224 = &v206 - v19;
  __chkstk_darwin(v20);
  v216 = &v206 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd_0);
  __chkstk_darwin(v22 - 8);
  v214 = &v206 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v221 = &v206 - v25;
  __chkstk_darwin(v26);
  v222 = &v206 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMd_0);
  __chkstk_darwin(v28 - 8);
  v246 = (&v206 - v29);
  v239 = type metadata accessor for Playlist.Collaborator.Status();
  v234 = *(v239 - 8);
  __chkstk_darwin(v239);
  v232 = &v206 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v233 = &v206 - v32;
  v253 = type metadata accessor for Playlist.Collaboration();
  v254 = *(v253 - 8);
  __chkstk_darwin(v253);
  v235 = &v206 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14LibrarySectionVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGMd);
  v259 = *(v258 - 8);
  __chkstk_darwin(v258);
  v241 = &v206 - v34;
  v256 = type metadata accessor for Logger();
  v250 = *(v256 - 8);
  __chkstk_darwin(v256);
  v242 = (&v206 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v36);
  v231 = &v206 - v37;
  __chkstk_darwin(v38);
  v230 = (&v206 - v39);
  __chkstk_darwin(v40);
  v251 = &v206 - v41;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd_0);
  __chkstk_darwin(v236);
  v215 = &v206 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v245 = &v206 - v44;
  __chkstk_darwin(v45);
  v47 = &v206 - v46;
  __chkstk_darwin(v48);
  v50 = &v206 - v49;
  __chkstk_darwin(v51);
  v260 = &v206 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A24LibrarySectionedResponseVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGSgMd);
  __chkstk_darwin(v53 - 8);
  v55 = &v206 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14LibrarySectionVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGSgMd);
  __chkstk_darwin(v56);
  v243 = (&v206 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v58);
  v60 = &v206 - v59;
  __chkstk_darwin(v61);
  v63 = &v206 - v62;
  __chkstk_darwin(v64);
  v66 = &v206 - v65;
  __chkstk_darwin(v67);
  v261 = &v206 - v68;
  swift_beginAccess();
  v257 = a2;
  result = swift_weakLoadStrong();
  if (result)
  {
    v70 = *(result + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponse);

    if (v70)
    {
      v71 = dispatch thunk of MusicAutoupdatingResponse.isLoaded.getter();

      if (v71)
      {
        v212 = v5;
        outlined init with copy of TaskPriority?(v244, v55, &_s8MusicKit0A24LibrarySectionedResponseVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGSgMd);
        v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A24LibrarySectionedResponseVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGMd);
        v73 = *(v72 - 8);
        if ((*(v73 + 48))(v55, 1, v72) == 1)
        {
          outlined destroy of TaskPriority?(v55, &_s8MusicKit0A24LibrarySectionedResponseVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGSgMd);
        }

        else
        {
          v74 = MusicLibrarySectionedResponse.sections.getter();
          (*(v73 + 8))(v55, v72);
          if (*(v74 + 16))
          {
            v75 = v258;
            (*(v259 + 16))(v261, v74 + ((*(v259 + 80) + 32) & ~*(v259 + 80)), v258);

            v76 = 0;
            v77 = v260;
            goto LABEL_10;
          }
        }

        v76 = 1;
        v77 = v260;
        v75 = v258;
LABEL_10:
        v78 = v259;
        v79 = v261;
        (*(v259 + 56))(v261, v76, 1, v75);
        outlined init with copy of TaskPriority?(v79, v66, &_s8MusicKit0A14LibrarySectionVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGSgMd);
        v80 = *(v78 + 48);
        v209 = v78 + 48;
        v208 = v80;
        if (v80(v66, 1, v75) == 1)
        {
          outlined destroy of TaskPriority?(v66, &_s8MusicKit0A14LibrarySectionVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGSgMd);
          v81 = v254;
          (*(v254 + 56))(v77, 1, 1, v253);
        }

        else
        {
          swift_getKeyPath();
          MusicLibrarySection.subscript.getter();
          v77 = v260;

          (*(v78 + 8))(v66, v75);
          v81 = v254;
        }

        v82 = v251;
        v83 = Logger.collaboration.unsafeMutableAddressor();
        v84 = v250;
        v85 = *(v250 + 16);
        v210 = v83;
        v86 = v256;
        v244 = v250 + 16;
        v211 = v85;
        (v85)(v82);
        outlined init with copy of TaskPriority?(v261, v63, &_s8MusicKit0A14LibrarySectionVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGSgMd);
        outlined init with copy of TaskPriority?(v77, v50, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd_0);
        v87 = Logger.logObject.getter();
        v207 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v87, v207))
        {
          v88 = swift_slowAlloc();
          v206 = swift_slowAlloc();
          v263 = v206;
          *v88 = 136446466;
          outlined init with copy of TaskPriority?(v63, v60, &_s8MusicKit0A14LibrarySectionVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGSgMd);
          v89 = String.init<A>(describing:)();
          v91 = v90;
          outlined destroy of TaskPriority?(v63, &_s8MusicKit0A14LibrarySectionVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGSgMd);
          v92 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v89, v91, &v263);

          *(v88 + 4) = v92;
          *(v88 + 12) = 2082;
          outlined init with copy of TaskPriority?(v50, v47, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd_0);
          v93 = String.init<A>(describing:)();
          v95 = v94;
          outlined destroy of TaskPriority?(v50, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd_0);
          v96 = v93;
          v81 = v254;
          v97 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v96, v95, &v263);

          *(v88 + 14) = v97;
          _os_log_impl(&_mh_execute_header, v87, v207, "    [Management] Did update collaborative playlist with:\n        playlist=%{public}s)\n        collaboration=%{public}s", v88, 0x16u);
          swift_arrayDestroy();

          v86 = v256;

          v98 = *(v84 + 8);
          v98(v251, v86);
        }

        else
        {

          outlined destroy of TaskPriority?(v50, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd_0);
          outlined destroy of TaskPriority?(v63, &_s8MusicKit0A14LibrarySectionVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGSgMd);
          v98 = *(v84 + 8);
          v98(v82, v86);
        }

        v99 = v259;
        v100 = v253;
        v101 = v243;
        outlined init with copy of TaskPriority?(v261, v243, &_s8MusicKit0A14LibrarySectionVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGSgMd);
        v102 = v258;
        v103 = v208(v101, 1, v258);
        v104 = v246;
        v105 = v245;
        if (v103 == 1)
        {
          outlined destroy of TaskPriority?(v101, &_s8MusicKit0A14LibrarySectionVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGSgMd);
LABEL_25:
          v121 = v242;
          v211(v242, v210, v86);
          v122 = Logger.logObject.getter();
          v123 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v122, v123))
          {
            v124 = swift_slowAlloc();
            *v124 = 0;
            _os_log_impl(&_mh_execute_header, v122, v123, "[Management] Dismissing management sheet", v124, 2u);
          }

          v98(v121, v86);
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {
            swift_getKeyPath();
            swift_getKeyPath();
            v264 = 1;
            static Published.subscript.setter();
          }

LABEL_29:
          outlined destroy of TaskPriority?(v260, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd_0);
          return outlined destroy of TaskPriority?(v261, &_s8MusicKit0A14LibrarySectionVyAA8PlaylistVAE0aB8InternalE12CollaboratorVGSgMd);
        }

        v106 = v101;
        v107 = v241;
        (*(v99 + 32))(v241, v106, v102);
        outlined init with copy of TaskPriority?(v260, v105, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd_0);
        v251 = *(v81 + 48);
        if ((v251)(v105, 1, v100) == 1)
        {
          (*(v99 + 8))(v107, v102);
          outlined destroy of TaskPriority?(v105, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd_0);
          v86 = v256;
          goto LABEL_25;
        }

        v236 = v98;
        v108 = v235;
        (*(v81 + 32))(v235, v105, v100);
        Playlist.Collaboration.collaboratorStatus.getter();
        v109 = v234;
        v110 = v239;
        if ((*(v234 + 48))(v104, 1, v239) == 1)
        {
          (*(v81 + 8))(v108, v100);
          (*(v99 + 8))(v241, v258);
          outlined destroy of TaskPriority?(v104, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMd_0);
LABEL_24:
          v86 = v256;
          v98 = v236;
          goto LABEL_25;
        }

        v111 = v233;
        (*(v109 + 32))(v233, v104, v110);
        v112 = v232;
        (*(v109 + 104))(v232, enum case for Playlist.Collaborator.Status.notJoined(_:), v110);
        lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Playlist.Collaborator.Status and conformance Playlist.Collaborator.Status, &type metadata accessor for Playlist.Collaborator.Status);
        v113 = v109;
        v114 = dispatch thunk of static Equatable.== infix(_:_:)();
        v115 = v239;
        v116 = v114;
        v118 = *(v113 + 8);
        v117 = v113 + 8;
        v119 = v112;
        v120 = v118;
        v118(v119, v239);
        if (v116)
        {
          v120(v111, v115);
          (*(v254 + 8))(v235, v100);
          (*(v99 + 8))(v241, v258);
          goto LABEL_24;
        }

        v234 = v117;
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        v126 = v254;
        if (!Strong || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , , v263 != 1))
        {
LABEL_47:
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {
            v144 = v224;
            MusicLibrarySection.item.getter();
            swift_getKeyPath();
            swift_getKeyPath();
            v145 = v225;
            v146 = v226;
            (*(v225 + 16))(v223, v144, v226);
            static Published.subscript.setter();
            (*(v145 + 8))(v144, v146);
          }

          swift_beginAccess();
          v147 = swift_weakLoadStrong();
          v148 = v248;
          if (v147)
          {
            v149 = Playlist.Collaboration.isOpenInvitation.getter();
            swift_getKeyPath();
            swift_getKeyPath();
            LOBYTE(v263) = v149 & 1;
            static Published.subscript.setter();
          }

          v226 = v120;
          v150 = v228;
          MusicLibrarySection.items.getter();
          v151 = v229;
          v152 = v249;
          (*(v229 + 16))(v148, v150, v249);
          v153 = *(v227 + 36);
          v154 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&_s8MusicKit0A14ItemCollectionVyAA8PlaylistV0aB8InternalE12CollaboratorVGACyxGSlAAWL_0, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistV0aB8InternalE12CollaboratorVGMd_0);
          dispatch thunk of Collection.startIndex.getter();
          (*(v151 + 8))(v150, v152);
          swift_beginAccess();
          dispatch thunk of Collection.endIndex.getter();
          if (*&v153[v148] == v263)
          {
            v242 = _swiftEmptyArrayStorage;
            v246 = _swiftEmptyArrayStorage;
          }

          else
          {
            v169 = v238;
            v251 = (v238 + 16);
            v170 = (v238 + 32);
            v243 = (v238 + 8);
            v232 = (v238 + 56);
            v246 = _swiftEmptyArrayStorage;
            v242 = _swiftEmptyArrayStorage;
            v245 = v153;
            do
            {
              v176 = v154;
              v177 = dispatch thunk of Collection.subscript.read();
              v178 = *v251;
              v179 = v247;
              v180 = v212;
              (*v251)(v247);
              v177(&v263, 0);
              v154 = v176;
              dispatch thunk of Collection.formIndex(after:)();
              v181 = *v170;
              v182 = v255;
              (*v170)(v255, v179, v180);
              v183 = Playlist.Collaborator.isPending.getter();
              if (v183 == 2 || (v183 & 1) == 0)
              {
                v178(v252, v182, v180);
                v188 = v246;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v188 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v188 + 16) + 1, 1, v188);
                }

                v190 = *(v188 + 16);
                v189 = *(v188 + 24);
                if (v190 >= v189 >> 1)
                {
                  v188 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v189 > 1, v190 + 1, 1, v188);
                }

                *(v188 + 16) = v190 + 1;
                v191 = (*(v169 + 80) + 32) & ~*(v169 + 80);
                v246 = v188;
                v181(v188 + v191 + *(v169 + 72) * v190, v252, v180);
                if (swift_weakLoadStrong())
                {
                  swift_getKeyPath();
                  swift_getKeyPath();
                  v171 = static Published.subscript.modify();
                  v172 = v240;
                  v173 = v255;
                  specialized Set._Variant.remove(_:)(v255, v240);
                  v174 = v172;
                  v169 = v238;
                  outlined destroy of TaskPriority?(v174, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMd);
                  v171(&v263, 0);
                  v175 = v173;
                  v154 = v176;

                  (*v243)(v175, v212);
                }

                else
                {
                  (*v243)(v255, v180);
                  v192 = v240;
                  (*v232)(v240, 1, 1, v180);
                  outlined destroy of TaskPriority?(v192, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMd);
                }
              }

              else
              {
                v178(v237, v182, v180);
                v184 = v242;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v184 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v184 + 16) + 1, 1, v184);
                }

                v242 = v184;
                v186 = *(v184 + 16);
                v185 = *(v184 + 24);
                if (v186 >= v185 >> 1)
                {
                  v242 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v185 > 1, v186 + 1, 1, v242);
                }

                (*(v169 + 8))(v182, v180);
                v187 = v242;
                v242[2] = (v186 + 1);
                v181(v187 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v186, v237, v180);
              }

              v148 = v248;
              dispatch thunk of Collection.endIndex.getter();
            }

            while (*&v245[v148] != v263);
          }

          outlined destroy of TaskPriority?(v148, &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC8PlaylistV0cD8InternalE12CollaboratorVGGMd);
          swift_beginAccess();
          v155 = swift_weakLoadStrong();
          v156 = v246;
          if (v155)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            v262[1] = v156;

            static Published.subscript.setter();
          }

          swift_beginAccess();
          v157 = swift_weakLoadStrong();
          v158 = v230;
          v159 = v242;
          if (v157)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            v262[0] = v159;

            static Published.subscript.setter();
          }

          v160 = v256;
          v211(v158, v210, v256);

          v161 = Logger.logObject.getter();
          v162 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v161, v162))
          {
            v163 = swift_slowAlloc();
            v164 = swift_slowAlloc();
            v262[0] = v164;
            *v163 = 136315138;
            v165 = Array.description.getter();
            v167 = v166;

            v168 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v165, v167, v262);

            *(v163 + 4) = v168;
            _os_log_impl(&_mh_execute_header, v161, v162, "[Management] pendingCollaborators=%s", v163, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v164);
          }

          else
          {
          }

          v193 = v158;
          v194 = v236;
          v236(v193, v160);
          v195 = v231;
          v211(v231, v210, v160);

          v196 = Logger.logObject.getter();
          v197 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v196, v197))
          {
            v198 = v195;
            v199 = swift_slowAlloc();
            v200 = swift_slowAlloc();
            v262[0] = v200;
            *v199 = 136315138;
            v201 = Array.description.getter();
            v202 = v194;
            v204 = v203;

            v205 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v201, v204, v262);

            *(v199 + 4) = v205;
            _os_log_impl(&_mh_execute_header, v196, v197, "[Management] activeCollaborators=%s", v199, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v200);

            v202(v198, v256);
          }

          else
          {

            v194(v195, v160);
          }

          (v226)(v233, v239);
          (*(v254 + 8))(v235, v253);
          (*(v259 + 8))(v241, v258);
          goto LABEL_29;
        }

        swift_beginAccess();
        v127 = swift_weakLoadStrong();
        v128 = v218;
        v129 = v221;
        if (v127)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v130 = v216;
          static Published.subscript.getter();

          v131 = v215;
          Playlist.collaboration.getter();
          (*(v225 + 8))(v130, v226);
          if ((v251)(v131, 1, v100) != 1)
          {
            v132 = v222;
            Playlist.Collaboration.invitationExpirationDate.getter();
            (*(v126 + 8))(v131, v100);
            v133 = v220;
LABEL_38:
            Playlist.Collaboration.invitationExpirationDate.getter();
            v134 = *(v217 + 48);
            v135 = v219;
            outlined init with copy of TaskPriority?(v132, v219, &_s10Foundation4DateVSgMd_0);
            outlined init with copy of TaskPriority?(v129, v135 + v134, &_s10Foundation4DateVSgMd_0);
            v136 = v128;
            v137 = *(v128 + 48);
            if (v137(v135, 1, v133) == 1)
            {
              outlined destroy of TaskPriority?(v129, &_s10Foundation4DateVSgMd_0);
              outlined destroy of TaskPriority?(v132, &_s10Foundation4DateVSgMd_0);
              if (v137(v135 + v134, 1, v133) == 1)
              {
                outlined destroy of TaskPriority?(v135, &_s10Foundation4DateVSgMd_0);
                goto LABEL_47;
              }
            }

            else
            {
              v138 = v214;
              outlined init with copy of TaskPriority?(v135, v214, &_s10Foundation4DateVSgMd_0);
              if (v137(v135 + v134, 1, v133) != 1)
              {
                v139 = v135 + v134;
                v140 = v213;
                (*(v136 + 32))(v213, v139, v133);
                lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date);
                v141 = v138;
                v142 = dispatch thunk of static Equatable.== infix(_:_:)();
                v143 = *(v136 + 8);
                v143(v140, v133);
                outlined destroy of TaskPriority?(v221, &_s10Foundation4DateVSgMd_0);
                outlined destroy of TaskPriority?(v222, &_s10Foundation4DateVSgMd_0);
                v143(v141, v133);
                outlined destroy of TaskPriority?(v135, &_s10Foundation4DateVSgMd_0);
                if (v142)
                {
                  goto LABEL_47;
                }

LABEL_44:
                swift_beginAccess();
                if (swift_weakLoadStrong())
                {
                  swift_getKeyPath();
                  swift_getKeyPath();
                  LOBYTE(v263) = 0;
                  static Published.subscript.setter();
                }

                goto LABEL_47;
              }

              outlined destroy of TaskPriority?(v221, &_s10Foundation4DateVSgMd_0);
              outlined destroy of TaskPriority?(v222, &_s10Foundation4DateVSgMd_0);
              (*(v136 + 8))(v138, v133);
            }

            outlined destroy of TaskPriority?(v135, &_s10Foundation4DateVSg_ADtMd);
            goto LABEL_44;
          }

          outlined destroy of TaskPriority?(v131, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd_0);
        }

        v132 = v222;
        v133 = v220;
        (*(v128 + 56))(v222, 1, 1, v220);
        goto LABEL_38;
      }
    }
  }

  return result;
}

uint64_t Collaboration.Management.Model.playlist.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t key path getter for Collaboration.Management.Model.playlist : Collaboration.Management.Model()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t key path setter for Collaboration.Management.Model.playlist : Collaboration.Management.Model(uint64_t a1)
{
  v2 = type metadata accessor for Playlist();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  (v10)(v5, v9, v2);

  static Published.subscript.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t Collaboration.Management.Model.isPending.getter()
{
  v0 = type metadata accessor for Playlist.Collaborator.Status();
  v33 = *(v0 - 8);
  __chkstk_darwin(v0);
  v31 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSg_AItMd);
  __chkstk_darwin(v34);
  v3 = &v30 - v2;
  v4 = type metadata accessor for Playlist();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd_0);
  __chkstk_darwin(v8 - 8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMd_0);
  __chkstk_darwin(v11 - 8);
  v32 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v30 - v14;
  __chkstk_darwin(v16);
  v18 = &v30 - v17;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  Playlist.collaboration.getter();
  (*(v5 + 8))(v7, v4);
  v19 = type metadata accessor for Playlist.Collaboration();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v10, 1, v19) == 1)
  {
    outlined destroy of TaskPriority?(v10, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd_0);
    v21 = v33;
    (*(v33 + 56))(v18, 1, 1, v0);
  }

  else
  {
    Playlist.Collaboration.collaboratorStatus.getter();
    (*(v20 + 8))(v10, v19);
    v21 = v33;
  }

  (*(v21 + 104))(v15, enum case for Playlist.Collaborator.Status.pending(_:), v0);
  (*(v21 + 56))(v15, 0, 1, v0);
  v22 = *(v34 + 48);
  outlined init with copy of TaskPriority?(v18, v3, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMd_0);
  outlined init with copy of TaskPriority?(v15, &v3[v22], &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMd_0);
  v23 = *(v21 + 48);
  if (v23(v3, 1, v0) != 1)
  {
    v25 = v32;
    outlined init with copy of TaskPriority?(v3, v32, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMd_0);
    if (v23(&v3[v22], 1, v0) != 1)
    {
      v26 = v31;
      (*(v21 + 32))(v31, &v3[v22], v0);
      lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Playlist.Collaborator.Status and conformance Playlist.Collaborator.Status, &type metadata accessor for Playlist.Collaborator.Status);
      v27 = v25;
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      v28 = *(v21 + 8);
      v28(v26, v0);
      outlined destroy of TaskPriority?(v15, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMd_0);
      outlined destroy of TaskPriority?(v18, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMd_0);
      v28(v27, v0);
      outlined destroy of TaskPriority?(v3, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMd_0);
      return v24 & 1;
    }

    outlined destroy of TaskPriority?(v15, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMd_0);
    outlined destroy of TaskPriority?(v18, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMd_0);
    (*(v21 + 8))(v25, v0);
    goto LABEL_9;
  }

  outlined destroy of TaskPriority?(v15, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMd_0);
  outlined destroy of TaskPriority?(v18, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMd_0);
  if (v23(&v3[v22], 1, v0) != 1)
  {
LABEL_9:
    outlined destroy of TaskPriority?(v3, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSg_AItMd);
    v24 = 0;
    return v24 & 1;
  }

  outlined destroy of TaskPriority?(v3, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorV6StatusOSgMd_0);
  v24 = 1;
  return v24 & 1;
}

uint64_t Collaboration.Management.Model.canShare.getter()
{
  v0 = type metadata accessor for Playlist();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v6[15] == 1 && (Collaboration.Management.Model.isInvitationURLExpired.getter() & 1) == 0)
  {
    v4 = 1;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v4 = Playlist.isOwner.getter();
    (*(v1 + 8))(v3, v0);
  }

  return v4 & 1;
}

uint64_t Collaboration.Management.Model.collaborators.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v1 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    specialized Array.append<A>(contentsOf:)(v1);
  }

  return v1;
}

uint64_t Collaboration.Management.Model.collaboratorsString.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v19 - v6;
  v8 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v8 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v9 = *(v20 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10 = *(v20 + 16);

  if (v10 == 1)
  {
    if (!v9)
    {
      return 0;
    }

    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v11);
    v20 = v9;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v12 = 0xD000000000000012;
    v13 = 0x80000001004D2040;
  }

  else
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
    v20 = v10;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    if (v9)
    {
      v15._countAndFlagsBits = 0x2064656E696F6A20;
      v15._object = 0xAC00000020A280E2;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v15);
      v20 = v9;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v12 = 0x676E69646E657020;
      v13 = 0xE800000000000000;
    }

    else
    {
      v13 = 0x80000001004D2020;
      v12 = 0xD000000000000011;
    }
  }

  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v12);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v2 + 16))(v4, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v17 = static NSBundle.module;
  static Locale.current.getter();
  v16 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v16;
}

uint64_t Collaboration.Management.Model.isInvitationURLExpired.getter()
{
  v0 = type metadata accessor for Playlist();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd_0);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd_0);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v23 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v22 = &v22 - v14;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  Playlist.collaboration.getter();
  (*(v1 + 8))(v3, v0);
  v15 = type metadata accessor for Playlist.Collaboration();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v6, 1, v15) == 1)
  {
    outlined destroy of TaskPriority?(v6, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd_0);
    (*(v11 + 56))(v9, 1, 1, v10);
  }

  else
  {
    Playlist.Collaboration.invitationExpirationDate.getter();
    (*(v16 + 8))(v6, v15);
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      v18 = v22;
      (*(v11 + 32))(v22, v9, v10);
      v19 = v23;
      Date.init()();
      v17 = static Date.> infix(_:_:)();
      v20 = *(v11 + 8);
      v20(v19, v10);
      v20(v18, v10);
      return v17 & 1;
    }
  }

  outlined destroy of TaskPriority?(v9, &_s10Foundation4DateVSgMd_0);
  v17 = 1;
  return v17 & 1;
}

uint64_t Collaboration.Management.Model.invitationExpirationString.getter()
{
  v1 = v0;
  v2 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  v71 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Calendar();
  v80 = *(v4 - 8);
  v81 = v4;
  __chkstk_darwin(v4);
  v79 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DateComponents();
  v83 = *(v6 - 8);
  v84 = v6;
  __chkstk_darwin(v6);
  v82 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v74 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.LocalizationValue();
  v76 = *(v10 - 8);
  v77 = v10;
  __chkstk_darwin(v10);
  v73 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v75 = &v69 - v13;
  v14 = type metadata accessor for Playlist();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v70 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v72 = &v69 - v18;
  __chkstk_darwin(v19);
  v21 = &v69 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd_0);
  __chkstk_darwin(v22 - 8);
  v24 = &v69 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd_0);
  __chkstk_darwin(v25 - 8);
  v27 = &v69 - v26;
  v28 = type metadata accessor for Date();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v78 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v87 = &v69 - v32;
  swift_getKeyPath();
  swift_getKeyPath();
  v86 = v1;
  static Published.subscript.getter();

  Playlist.collaboration.getter();
  v33 = *(v15 + 8);
  v85 = v14;
  v33(v21, v14);
  v34 = type metadata accessor for Playlist.Collaboration();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v24, 1, v34) == 1)
  {
    outlined destroy of TaskPriority?(v24, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd_0);
    (*(v29 + 56))(v27, 1, 1, v28);
LABEL_4:
    outlined destroy of TaskPriority?(v27, &_s10Foundation4DateVSgMd_0);
    return 0;
  }

  Playlist.Collaboration.invitationExpirationDate.getter();
  (*(v35 + 8))(v24, v34);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    goto LABEL_4;
  }

  v37 = *(v29 + 32);
  v69 = v28;
  v37(v87, v27, v28);
  v38 = v29;
  if (Collaboration.Management.Model.isInvitationURLExpired.getter() & 1) != 0 && (swift_getKeyPath(), swift_getKeyPath(), v39 = v72, static Published.subscript.getter(), , , v40 = Playlist.isOwner.getter(), v33(v39, v85), v40 != 2) && (v40)
  {
    v41 = v75;
    String.LocalizationValue.init(stringLiteral:)();
    v43 = v76;
    v42 = v77;
    (*(v76 + 16))(v73, v41, v77);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v44 = static NSBundle.module;
    static Locale.current.getter();
    v45 = String.init(localized:table:bundle:locale:comment:)();
    (*(v43 + 8))(v41, v42);
    (*(v38 + 8))(v87, v69);
  }

  else
  {
    v46 = v79;
    static Calendar.autoupdatingCurrent.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMd);
    v47 = type metadata accessor for Calendar.Component();
    v48 = *(v47 - 8);
    v49 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1004F2400;
    (*(v48 + 104))(v50 + v49, enum case for Calendar.Component.day(_:), v47);
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(v50);
    swift_setDeallocating();
    (*(v48 + 8))(v50 + v49, v47);
    swift_deallocClassInstance();
    v51 = v78;
    Date.init()();
    v52 = v82;
    v53 = v87;
    Calendar.dateComponents(_:from:to:)();

    v54 = *(v38 + 8);
    v55 = v69;
    v54(v51, v69);
    (*(v80 + 8))(v46, v81);
    v56 = DateComponents.day.getter();
    if (v57)
    {
      (*(v83 + 8))(v52, v84);
      v54(v53, v55);
      return 0;
    }

    v58 = v56;
    swift_getKeyPath();
    swift_getKeyPath();
    v59 = v70;
    static Published.subscript.getter();

    v60 = Playlist.isOwner.getter();
    v33(v59, v85);
    if (v60 == 2 || (v60 & 1) == 0)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v64._object = 0x80000001004D1F20;
      v64._countAndFlagsBits = 0xD000000000000010;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v64);
      v88 = v58;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v62 = 0x2E29732879616420;
      v63 = 0xE800000000000000;
    }

    else
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v61._object = 0x80000001004D1F20;
      v61._countAndFlagsBits = 0xD000000000000010;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v61);
      v88 = v58;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v62 = 0xD00000000000006CLL;
      v63 = 0x80000001004D1F40;
    }

    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v62);
    v65 = v75;
    String.LocalizationValue.init(stringInterpolation:)();
    v67 = v76;
    v66 = v77;
    (*(v76 + 16))(v73, v65, v77);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v68 = static NSBundle.module;
    static Locale.current.getter();
    v45 = String.init(localized:table:bundle:locale:comment:)();
    (*(v67 + 8))(v65, v66);
    (*(v83 + 8))(v52, v84);
    v54(v53, v69);
  }

  return v45;
}

uint64_t Collaboration.Management.Model.collaborationURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Playlist();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd_0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  if (Collaboration.Management.Model.isInvitationURLExpired.getter())
  {
    v9 = type metadata accessor for URL();
    v10 = *(*(v9 - 8) + 56);

    return v10(a1, 1, 1, v9);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    Playlist.collaboration.getter();
    (*(v3 + 8))(v5, v2);
    v12 = type metadata accessor for Playlist.Collaboration();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v8, 1, v12) == 1)
    {
      outlined destroy of TaskPriority?(v8, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd_0);
      v14 = type metadata accessor for URL();
      return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
    }

    else
    {
      Playlist.Collaboration.invitationURL.getter();
      return (*(v13 + 8))(v8, v12);
    }
  }
}

uint64_t Collaboration.Management.Model.artworkViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgSgMd);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model____lazy_storage___artworkViewModel;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v1 + v9, v8, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgSgMd);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return outlined init with take of URL?(v8, a1, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  }

  outlined destroy of TaskPriority?(v8, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgSgMd);
  closure #1 in Collaboration.Management.Model.artworkViewModel.getter(a1);
  outlined init with copy of TaskPriority?(a1, v5, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  outlined assign with take of PlaybackIntentDescriptor.IntentType?(v5, v1 + v9, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgSgMd);
  return swift_endAccess();
}

uint64_t closure #1 in Collaboration.Management.Model.artworkViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = type metadata accessor for Playlist();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Artwork();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  Playlist.artwork.getter();
  (*(v5 + 8))(v7, v4);
  if ((*(v9 + 48))(v3, 1, v8) == 1)
  {
    outlined destroy of TaskPriority?(v3, &_s8MusicKit7ArtworkVSgMd_0);
    v12 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v12 - 8) + 56))(v19, 1, 1, v12);
  }

  else
  {
    (*(v9 + 32))(v11, v3, v8);
    v14 = v19;
    (*(v9 + 16))(v19, v11, v8);
    v15 = type metadata accessor for ArtworkImage.ViewModel(0);
    v16 = *(v15 + 20);
    static Artwork.CropStyle.boundedBox.getter();
    (*(v9 + 8))(v11, v8);
    v17 = type metadata accessor for Artwork.CropStyle();
    (*(*(v17 - 8) + 56))(v14 + v16, 0, 1, v17);
    return (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  }
}

uint64_t closure #1 in Collaboration.Management.Model.updateShareOption(isOpen:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 80) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a4;
  v6 = type metadata accessor for Playlist();
  *(v5 + 32) = v6;
  *(v5 + 40) = *(v6 - 8);
  *(v5 + 48) = swift_task_alloc();

  return _swift_task_switch(closure #1 in Collaboration.Management.Model.updateShareOption(isOpen:), 0, 0);
}

uint64_t closure #1 in Collaboration.Management.Model.updateShareOption(isOpen:)()
{
  *(v0 + 56) = *(*(v0 + 24) + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = closure #1 in Collaboration.Management.Model.updateShareOption(isOpen:);
  v2 = *(v0 + 48);
  v3 = *(v0 + 80);

  return Collaboration.Manager.updateShareOption(_:for:)(v3, v2);
}

{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = v2[6];
  v4 = v2[5];
  v5 = v2[4];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = closure #1 in Collaboration.Management.Model.updateShareOption(isOpen:);
  }

  else
  {
    (*(v4 + 8))(v2[6], v2[4]);

    v6 = closure #1 in Collaboration.Management.Model.updateShareOption(isOpen:);
  }

  return _swift_task_switch(v6, 0, 0);
}

{
  **(v0 + 16) = *(v0 + 72) != 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in Collaboration.Management.Model.end()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Playlist();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();

  return _swift_task_switch(closure #1 in Collaboration.Management.Model.end(), 0, 0);
}

uint64_t closure #1 in Collaboration.Management.Model.end()()
{
  v0[7] = *(v0[2] + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = closure #1 in Collaboration.Management.Model.end();
  v3 = v0[5];
  v2 = v0[6];

  return Collaboration.Manager.end(_:)(v2, v3);
}

{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    (*(v2[4] + 8))(v2[5], v2[3]);

    v3 = closure #1 in Collaboration.Management.Model.end();
  }

  else
  {
    v5 = v2[5];
    v4 = v2[6];
    v8 = v2 + 3;
    v6 = v2[3];
    v7 = v8[1];

    v9 = *(v7 + 8);
    v9(v5, v6);
    v9(v4, v6);
    v3 = closure #1 in Collaboration.Management.Model.end();
  }

  return _swift_task_switch(v3, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v0[10] = *(v0[2] + 16);
  type metadata accessor for MainActor();

  v0[11] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in Collaboration.Management.Model.end(), v2, v1);
}

{
  v1 = *(v0 + 72);

  Collaboration.Manager.handleError(_:)(v1);

  return _swift_task_switch(closure #1 in Collaboration.Management.Model.end(), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in Collaboration.Management.Model.resetInvitationURL()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Playlist();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(closure #1 in Collaboration.Management.Model.resetInvitationURL(), 0, 0);
}

uint64_t closure #1 in Collaboration.Management.Model.resetInvitationURL()()
{
  v0[9] = *(v0[2] + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = closure #1 in Collaboration.Management.Model.resetInvitationURL();
  v2 = v0[8];
  v3 = v0[5];

  return Collaboration.Manager.resetInvitationURL(_:)(v2, v3);
}

{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    (*(v2[4] + 8))(v2[5], v2[3]);

    v3 = closure #1 in Collaboration.Management.Model.resetInvitationURL();
  }

  else
  {
    v5 = v2[7];
    v4 = v2[8];
    v7 = v2[5];
    v6 = v2[6];
    v10 = v2 + 3;
    v8 = v2[3];
    v9 = v10[1];

    (*(v9 + 8))(v7, v8);
    (*(v5 + 8))(v4, v6);
    v3 = closure #1 in Collaboration.Management.Model.resetInvitationURL();
  }

  return _swift_task_switch(v3, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 112) = 0;

  static Published.subscript.setter();
  *(v0 + 96) = *(v1 + 16);
  type metadata accessor for MainActor();

  *(v0 + 104) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in Collaboration.Management.Model.resetInvitationURL(), v3, v2);
}

{
  v1 = *(v0 + 88);

  Collaboration.Manager.handleError(_:)(v1);

  return _swift_task_switch(closure #1 in Collaboration.Management.Model.resetInvitationURL(), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}