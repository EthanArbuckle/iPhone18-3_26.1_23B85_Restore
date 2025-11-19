uint64_t Actions.SortPlaylist.Context.menuItemTitle.getter()
{
  v1 = *v0;
  v2 = &v0[*(type metadata accessor for Actions.SortPlaylist.Context() + 24)];

  return Actions.SortPlaylist.TrackListSort.Option.localizedName(playlistVariant:)(v2, v1);
}

uint64_t Actions.SortPlaylist.TrackListSort.Option.localizedName(playlistVariant:)(uint64_t a1, unsigned __int8 a2)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.LocalizationValue();
  v36 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v35 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v34 = &v33 - v9;
  v10 = type metadata accessor for Playlist.Variant();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg_AGtMd);
  __chkstk_darwin(v14);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v33 - v21;
  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      v24 = v35;
      v23 = v36;
      v25 = v34;
      String.LocalizationValue.init(stringLiteral:)();
      (*(v23 + 16))(v24, v25, v6);
      goto LABEL_17;
    }

    v25 = v34;
    goto LABEL_10;
  }

  if (!a2)
  {
    v33 = v6;
    (*(v11 + 104))(&v33 - v21, enum case for Playlist.Variant.favoriteSongs(_:), v10);
    (*(v11 + 56))(v22, 0, 1, v10);
    v26 = *(v14 + 48);
    outlined init with copy of Playlist.Variant?(a1, v16);
    outlined init with copy of Playlist.Variant?(v22, &v16[v26]);
    v27 = *(v11 + 48);
    if (v27(v16, 1, v10) == 1)
    {
      outlined destroy of TaskPriority?(v22, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd);
      v28 = v27(&v16[v26], 1, v10);
      v6 = v33;
      v25 = v34;
      if (v28 == 1)
      {
        outlined destroy of TaskPriority?(v16, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd);
        v23 = v36;
LABEL_15:
        String.LocalizationValue.init(stringLiteral:)();
        goto LABEL_16;
      }
    }

    else
    {
      outlined init with copy of Playlist.Variant?(v16, v20);
      if (v27(&v16[v26], 1, v10) != 1)
      {
        (*(v11 + 32))(v13, &v16[v26], v10);
        lazy protocol witness table accessor for type Playlist.Variant and conformance Playlist.Variant();
        dispatch thunk of static Equatable.== infix(_:_:)();
        v29 = *(v11 + 8);
        v29(v13, v10);
        outlined destroy of TaskPriority?(v22, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd);
        v29(v20, v10);
        outlined destroy of TaskPriority?(v16, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd);
        v6 = v33;
        v25 = v34;
        v23 = v36;
        goto LABEL_15;
      }

      outlined destroy of TaskPriority?(v22, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd);
      (*(v11 + 8))(v20, v10);
      v6 = v33;
      v25 = v34;
    }

    outlined destroy of TaskPriority?(v16, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg_AGtMd);
    v23 = v36;
    goto LABEL_15;
  }

  v25 = v34;
LABEL_10:
  String.LocalizationValue.init(stringLiteral:)();
  v23 = v36;
LABEL_16:
  (*(v23 + 16))(v35, v25, v6);
LABEL_17:
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v30 = static NSBundle.module;
  static Locale.current.getter();
  v31 = String.init(localized:table:bundle:locale:comment:)();
  (*(v23 + 8))(v25, v6);
  return v31;
}

uint64_t Actions.SortPlaylist.Context.menuItemSubtitle.getter()
{
  v1 = 0xED0000726564724FLL;
  v2 = 0x7473696C79616C70;
  v3 = v0[1];
  v4 = *v0;
  v5 = 0xE600000000000000;
  v6 = 0x747369747261;
  v7 = 0xE500000000000000;
  v8 = 0x6D75626C61;
  if (v3 != 3)
  {
    v8 = 0x44657361656C6572;
    v7 = 0xEB00000000657461;
  }

  if (v3 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x656C746974;
  if (!v0[1])
  {
    v10 = 0x7473696C79616C70;
    v9 = 0xED0000726564724FLL;
  }

  if (v0[1] <= 1u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v0[1] <= 1u)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  v13 = 0xE600000000000000;
  v14 = 0x747369747261;
  v15 = 0xE500000000000000;
  v16 = 0x6D75626C61;
  if (v4 != 3)
  {
    v16 = 0x44657361656C6572;
    v15 = 0xEB00000000657461;
  }

  if (v4 != 2)
  {
    v14 = v16;
    v13 = v15;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
    v1 = 0xE500000000000000;
  }

  if (*v0 <= 1u)
  {
    v17 = v2;
  }

  else
  {
    v17 = v14;
  }

  if (*v0 <= 1u)
  {
    v18 = v1;
  }

  else
  {
    v18 = v13;
  }

  if (v11 == v17 && v12 == v18)
  {

LABEL_29:
    v20 = type metadata accessor for Actions.SortPlaylist.Context();
    return Actions.SortPlaylist.TrackListSort.Option.localizedSubtitle(playlistVariant:ascending:)(&v0[*(v20 + 24)], v0[2], v4);
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
    goto LABEL_29;
  }

  return 0;
}

uint64_t Actions.SortPlaylist.TrackListSort.Option.localizedSubtitle(playlistVariant:ascending:)(uint64_t a1, int a2, unsigned __int8 a3)
{
  v41 = a1;
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v43 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for String.LocalizationValue();
  v7 = *(v45 - 8);
  v8 = __chkstk_darwin(v45);
  v42 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v44 = v39 - v10;
  v11 = type metadata accessor for Playlist.Variant();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg_AGtMd);
  __chkstk_darwin(v15);
  v17 = v39 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = v39 - v22;
  v24 = a3;
  if (a3 - 1 < 3)
  {
    v25 = (v7 + 16);
    v26 = v44;
LABEL_12:
    String.LocalizationValue.init(stringLiteral:)();
    v32 = v45;
    (*v25)(v42, v26, v45);
    goto LABEL_16;
  }

  v27 = v41;
  v39[1] = a2;
  v40 = v7;
  if (v24)
  {
    v7 = v40;
    v25 = (v40 + 16);
    v26 = v44;
    goto LABEL_12;
  }

  (*(v12 + 104))(v39 - v22, enum case for Playlist.Variant.favoriteSongs(_:), v11);
  (*(v12 + 56))(v23, 0, 1, v11);
  v28 = *(v15 + 48);
  outlined init with copy of Playlist.Variant?(v27, v17);
  outlined init with copy of Playlist.Variant?(v23, &v17[v28]);
  v29 = *(v12 + 48);
  if (v29(v17, 1, v11) == 1)
  {
    outlined destroy of TaskPriority?(v23, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd);
    v30 = v29(&v17[v28], 1, v11);
    v31 = v42;
    if (v30 == 1)
    {
      outlined destroy of TaskPriority?(v17, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd);
      v26 = v44;
      v32 = v45;
      v7 = v40;
LABEL_14:
      v33 = (v7 + 16);
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  outlined init with copy of Playlist.Variant?(v17, v21);
  if (v29(&v17[v28], 1, v11) == 1)
  {
    outlined destroy of TaskPriority?(v23, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd);
    (*(v12 + 8))(v21, v11);
    v31 = v42;
LABEL_10:
    outlined destroy of TaskPriority?(v17, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg_AGtMd);
    v26 = v44;
    v32 = v45;
    v7 = v40;
    goto LABEL_11;
  }

  (*(v12 + 32))(v14, &v17[v28], v11);
  lazy protocol witness table accessor for type Playlist.Variant and conformance Playlist.Variant();
  v34 = dispatch thunk of static Equatable.== infix(_:_:)();
  v35 = *(v12 + 8);
  v35(v14, v11);
  outlined destroy of TaskPriority?(v23, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd);
  v35(v21, v11);
  outlined destroy of TaskPriority?(v17, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd);
  v26 = v44;
  v32 = v45;
  v7 = v40;
  v31 = v42;
  if (v34)
  {
    goto LABEL_14;
  }

LABEL_11:
  v33 = (v7 + 16);
LABEL_15:
  String.LocalizationValue.init(stringLiteral:)();
  (*v33)(v31, v26, v32);
LABEL_16:
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v36 = static NSBundle.module;
  static Locale.current.getter();
  v37 = String.init(localized:table:bundle:locale:comment:)();
  (*(v7 + 8))(v26, v32);
  return v37;
}

uint64_t Actions.SortPlaylist.Context.menuItemState.getter()
{
  v1 = 0xED0000726564724FLL;
  v2 = 0x7473696C79616C70;
  v3 = v0[1];
  v4 = *v0;
  v5 = 0xE600000000000000;
  v6 = 0x747369747261;
  v7 = 0xE500000000000000;
  v8 = 0x6D75626C61;
  if (v3 != 3)
  {
    v8 = 0x44657361656C6572;
    v7 = 0xEB00000000657461;
  }

  if (v3 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x656C746974;
  if (!v0[1])
  {
    v10 = 0x7473696C79616C70;
    v9 = 0xED0000726564724FLL;
  }

  if (v0[1] <= 1u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v0[1] <= 1u)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  v13 = 0xE600000000000000;
  v14 = 0x747369747261;
  v15 = 0xE500000000000000;
  v16 = 0x6D75626C61;
  if (v4 != 3)
  {
    v16 = 0x44657361656C6572;
    v15 = 0xEB00000000657461;
  }

  if (v4 != 2)
  {
    v14 = v16;
    v13 = v15;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
    v1 = 0xE500000000000000;
  }

  if (*v0 <= 1u)
  {
    v17 = v2;
  }

  else
  {
    v17 = v14;
  }

  if (*v0 <= 1u)
  {
    v18 = v1;
  }

  else
  {
    v18 = v13;
  }

  if (v11 == v17 && v12 == v18)
  {

    return 1;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v20 & 1;
  }
}

uint64_t protocol witness for ActionMenuItemConfiguring.menuItemSubtitle.getter in conformance Actions.SortPlaylist.Context(uint64_t a1)
{
  v3 = *v1;
  if (specialized == infix<A>(_:_:)(v1[1], *v1))
  {
    return Actions.SortPlaylist.TrackListSort.Option.localizedSubtitle(playlistVariant:ascending:)(&v1[*(a1 + 24)], v1[2], v3);
  }

  else
  {
    return 0;
  }
}

uint64_t Actions.SortPlaylist.TrackListSort.Option.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x7473696C79616C70;
  v2 = 0x747369747261;
  v3 = 0x6D75626C61;
  if (a1 != 3)
  {
    v3 = 0x44657361656C6572;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x656C746974;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Actions.SortPlaylist.TrackListSort.Option()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Actions.SortPlaylist.TrackListSort.Option()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Actions.SortPlaylist.TrackListSort.Option()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Actions.SortPlaylist.TrackListSort.Option@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Actions.SortPlaylist.TrackListSort.Option.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Actions.SortPlaylist.TrackListSort.Option(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000726564724FLL;
  v4 = 0x7473696C79616C70;
  v5 = 0xE600000000000000;
  v6 = 0x747369747261;
  v7 = 0xE500000000000000;
  v8 = 0x6D75626C61;
  if (v2 != 3)
  {
    v8 = 0x44657361656C6572;
    v7 = 0xEB00000000657461;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656C746974;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Actions.SortPlaylist.TrackListSort.CodingKeys()
{
  if (*v0)
  {
    return 0x646E656373417369;
  }

  else
  {
    return 0x6E6F6974706FLL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Actions.SortPlaylist.TrackListSort.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6974706FLL && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646E656373417369 && a2 == 0xEB00000000676E69)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Actions.SortPlaylist.TrackListSort.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Actions.SortPlaylist.TrackListSort.CodingKeys and conformance Actions.SortPlaylist.TrackListSort.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Actions.SortPlaylist.TrackListSort.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Actions.SortPlaylist.TrackListSort.CodingKeys and conformance Actions.SortPlaylist.TrackListSort.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static Actions.SortPlaylist.TrackListSort.__derived_struct_equals(_:_:)(__int16 a1, __int16 a2)
{
  v3 = 0xED0000726564724FLL;
  v4 = 0x7473696C79616C70;
  v5 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0x656C746974;
    }

    else
    {
      v6 = 0x7473696C79616C70;
    }

    if (v5)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xED0000726564724FLL;
    }
  }

  else if (a1 == 2)
  {
    v7 = 0xE600000000000000;
    v6 = 0x747369747261;
  }

  else
  {
    if (a1 == 3)
    {
      v6 = 0x6D75626C61;
    }

    else
    {
      v6 = 0x44657361656C6572;
    }

    if (v5 == 3)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xEB00000000657461;
    }
  }

  v9 = 0xE600000000000000;
  v10 = 0x747369747261;
  v11 = 0xE500000000000000;
  v12 = 0x6D75626C61;
  if (a2 != 3)
  {
    v12 = 0x44657361656C6572;
    v11 = 0xEB00000000657461;
  }

  if (a2 != 2)
  {
    v10 = v12;
    v9 = v11;
  }

  if (a2)
  {
    v4 = 0x656C746974;
    v3 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v13 = v4;
  }

  else
  {
    v13 = v10;
  }

  if (a2 <= 1u)
  {
    v14 = v3;
  }

  else
  {
    v14 = v9;
  }

  if (v6 == v13 && v7 == v14)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 0;
    if ((v15 & 1) == 0)
    {
      return result;
    }
  }

  return ((a2 & 0x100) == 0) ^ ((a1 & 0x100) >> 8);
}

uint64_t Actions.SortPlaylist.TrackListSort.encode(to:)(void *a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MusicCore7ActionsO12SortPlaylistO09TrackListG0V10CodingKeys33_5F493F74260370880275B9E8F2589127LLOGMd);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  lazy protocol witness table accessor for type Actions.SortPlaylist.TrackListSort.CodingKeys and conformance Actions.SortPlaylist.TrackListSort.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = a2;
  v10[14] = 0;
  lazy protocol witness table accessor for type Actions.SortPlaylist.TrackListSort.Option and conformance Actions.SortPlaylist.TrackListSort.Option();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10[13] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void Actions.SortPlaylist.TrackListSort.hash(into:)(uint64_t a1, __int16 a2)
{
  v2 = HIBYTE(a2);
  String.hash(into:)();

  Hasher._combine(_:)(v2 & 1);
}

Swift::Int Actions.SortPlaylist.TrackListSort.hashValue.getter(__int16 a1)
{
  v1 = HIBYTE(a1);
  Hasher.init(_seed:)();
  String.hash(into:)();

  Hasher._combine(_:)(v1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Actions.SortPlaylist.TrackListSort()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return Actions.SortPlaylist.TrackListSort.hashValue.getter(v1 | *v0);
}

void protocol witness for Hashable.hash(into:) in conformance Actions.SortPlaylist.TrackListSort()
{
  v1 = *(v0 + 1);
  String.hash(into:)();

  Hasher._combine(_:)(v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Actions.SortPlaylist.TrackListSort()
{
  v1 = *(v0 + 1);
  Hasher.init(_seed:)();
  String.hash(into:)();

  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Decodable.init(from:) in conformance Actions.SortPlaylist.TrackListSort@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Actions.SortPlaylist.TrackListSort.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = BYTE1(result) & 1;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Actions.SortPlaylist.TrackListSort(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return specialized == infix<A>(_:_:)(*a1, *a2) & ~(v2 ^ v3) & 1;
}

unint64_t specialized Actions.SortPlaylist.TrackListSort.Option.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Actions.SortPlaylist.TrackListSort.Option.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type Actions.SortPlaylist.TrackListSort.CodingKeys and conformance Actions.SortPlaylist.TrackListSort.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.CodingKeys and conformance Actions.SortPlaylist.TrackListSort.CodingKeys;
  if (!lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.CodingKeys and conformance Actions.SortPlaylist.TrackListSort.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.CodingKeys and conformance Actions.SortPlaylist.TrackListSort.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.CodingKeys and conformance Actions.SortPlaylist.TrackListSort.CodingKeys;
  if (!lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.CodingKeys and conformance Actions.SortPlaylist.TrackListSort.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.CodingKeys and conformance Actions.SortPlaylist.TrackListSort.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.CodingKeys and conformance Actions.SortPlaylist.TrackListSort.CodingKeys;
  if (!lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.CodingKeys and conformance Actions.SortPlaylist.TrackListSort.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.CodingKeys and conformance Actions.SortPlaylist.TrackListSort.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.CodingKeys and conformance Actions.SortPlaylist.TrackListSort.CodingKeys;
  if (!lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.CodingKeys and conformance Actions.SortPlaylist.TrackListSort.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.CodingKeys and conformance Actions.SortPlaylist.TrackListSort.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Actions.SortPlaylist.TrackListSort.Option and conformance Actions.SortPlaylist.TrackListSort.Option()
{
  result = lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.Option and conformance Actions.SortPlaylist.TrackListSort.Option;
  if (!lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.Option and conformance Actions.SortPlaylist.TrackListSort.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.Option and conformance Actions.SortPlaylist.TrackListSort.Option);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.Option and conformance Actions.SortPlaylist.TrackListSort.Option;
  if (!lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.Option and conformance Actions.SortPlaylist.TrackListSort.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.Option and conformance Actions.SortPlaylist.TrackListSort.Option);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.Option and conformance Actions.SortPlaylist.TrackListSort.Option;
  if (!lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.Option and conformance Actions.SortPlaylist.TrackListSort.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.Option and conformance Actions.SortPlaylist.TrackListSort.Option);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.Option and conformance Actions.SortPlaylist.TrackListSort.Option;
  if (!lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.Option and conformance Actions.SortPlaylist.TrackListSort.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.Option and conformance Actions.SortPlaylist.TrackListSort.Option);
  }

  return result;
}

uint64_t specialized Actions.SortPlaylist.TrackListSort.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MusicCore7ActionsO12SortPlaylistO09TrackListG0V10CodingKeys33_5F493F74260370880275B9E8F2589127LLOGMd);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-v5];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  lazy protocol witness table accessor for type Actions.SortPlaylist.TrackListSort.CodingKeys and conformance Actions.SortPlaylist.TrackListSort.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v11[14] = 0;
  lazy protocol witness table accessor for type Actions.SortPlaylist.TrackListSort.Option and conformance Actions.SortPlaylist.TrackListSort.Option();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v7 = v11[15];
  v11[13] = 1;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  if (v8)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  return v10 | v7;
}

unint64_t lazy protocol witness table accessor for type [Actions.SortPlaylist.TrackListSort.Option] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Actions.SortPlaylist.TrackListSort.Option] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Actions.SortPlaylist.TrackListSort.Option] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9MusicCore7ActionsO12SortPlaylistO09TrackListD0V6OptionOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Actions.SortPlaylist.TrackListSort.Option] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Actions.SortPlaylist.TrackListSort and conformance Actions.SortPlaylist.TrackListSort()
{
  result = lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort and conformance Actions.SortPlaylist.TrackListSort;
  if (!lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort and conformance Actions.SortPlaylist.TrackListSort)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort and conformance Actions.SortPlaylist.TrackListSort);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort and conformance Actions.SortPlaylist.TrackListSort;
  if (!lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort and conformance Actions.SortPlaylist.TrackListSort)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort and conformance Actions.SortPlaylist.TrackListSort);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort and conformance Actions.SortPlaylist.TrackListSort;
  if (!lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort and conformance Actions.SortPlaylist.TrackListSort)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort and conformance Actions.SortPlaylist.TrackListSort);
  }

  return result;
}

uint64_t sub_100080A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100080B60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

void type metadata completion function for Actions.SortPlaylist.Context()
{
  type metadata accessor for Playlist.Variant?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ()();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Playlist.Variant?()
{
  if (!lazy cache variable for type metadata for Playlist.Variant?)
  {
    type metadata accessor for Playlist.Variant();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Playlist.Variant?);
    }
  }
}

uint64_t getEnumTagSinglePayload for Actions.SortPlaylist.TrackListSort(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Actions.SortPlaylist.TrackListSort(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Actions.SortPlaylist.TrackListSort.Option(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Actions.SortPlaylist.TrackListSort.Option(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Playlist.Variant and conformance Playlist.Variant()
{
  result = lazy protocol witness table cache variable for type Playlist.Variant and conformance Playlist.Variant;
  if (!lazy protocol witness table cache variable for type Playlist.Variant and conformance Playlist.Variant)
  {
    type metadata accessor for Playlist.Variant();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Playlist.Variant and conformance Playlist.Variant);
  }

  return result;
}

uint64_t closure #2 in static Actions.GoToAlbum.action(context:)(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 32) + **(a2 + 32));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return v5();
}

uint64_t closure #3 in static Actions.GoToAlbum.action(context:)(uint64_t a1)
{
  v4 = (*(a1 + 48) + **(a1 + 48));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return v4();
}

uint64_t closure #1 in Actions.GoToAlbum.Context.init<A>(item:subtitle:canGoToAlbum:goToAlbum:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = type metadata accessor for MetricsEvent.Click(0);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v4[30] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[31] = v5;
  v4[32] = *(v5 - 8);
  v4[33] = swift_task_alloc();

  return _swift_task_switch(closure #1 in Actions.GoToAlbum.Context.init<A>(item:subtitle:canGoToAlbum:goToAlbum:metricsReportingContext:), 0, 0);
}

uint64_t closure #1 in Actions.GoToAlbum.Context.init<A>(item:subtitle:canGoToAlbum:goToAlbum:metricsReportingContext:)()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  outlined init with copy of TaskPriority?(*(v0 + 96), v3, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 240), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 232);
    v7 = *(v0 + 112);
    outlined init with take of Actions.GoToPlaylistFolderItem.Context(*(v0 + 240), *(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 272) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 280) = v8;
    v9 = type metadata accessor for URL();
    *(v0 + 288) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 296) = v11;
    *(v0 + 304) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2EF0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    *(inited + 64) = 0;
    *(inited + 72) = 3;
    *(v0 + 312) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
    *(v0 + 320) = v14;
    *(v0 + 328) = v15;
    *(v0 + 344) = v16;
    swift_setDeallocating();
    swift_arrayDestroy();
    type metadata accessor for MainActor();
    *(v0 + 336) = static MainActor.shared.getter();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #1 in Actions.GoToAlbum.Context.init<A>(item:subtitle:canGoToAlbum:goToAlbum:metricsReportingContext:), v18, v17);
  }
}

{
  v80 = *(v0 + 344);
  v73 = *(v0 + 312);
  v76 = *(v0 + 280);
  v78 = *(v0 + 328);
  v74 = *(v0 + 272);
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  v7 = *(v0 + 184);
  v72 = *(v0 + 176);

  outlined init with copy of TaskPriority?(v3, v4, &_s10Foundation3URLVSgMd);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  outlined init with copy of TaskPriority?(v1 + v2[5], v7, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 14597;
  outlined init with take of URL?(v4, v6 + v5[7], &_s10Foundation3URLVSgMd);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  outlined init with copy of TaskPriority?(v7, v72, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 344);
  v17 = *(v0 + 320);
  v18 = *(v0 + 328);
  v19 = *(v0 + 312);
  v20 = *(v0 + 176);
  if (v15 == 1)
  {

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v17, v18, v16, SBYTE1(v16));
    outlined destroy of TaskPriority?(v20, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v17, v18, v16, SBYTE1(v16));

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 184);
  v24 = *(v0 + 168);
  v25 = (*(v0 + 200) + *(*(v0 + 192) + 48));
  *v25 = v21;
  v25[1] = v22;
  outlined init with copy of TaskPriority?(v23, v24, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 168);
  if (v26 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 168), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 184);
  v31 = *(v0 + 160);
  v32 = (*(v0 + 200) + *(*(v0 + 192) + 52));
  *v32 = v28;
  v32[1] = v29;
  outlined init with copy of TaskPriority?(v30, v31, &_s9MusicCore12MetricsEventV4PageVSgMd);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 296);
    v34 = *(v0 + 288);
    v35 = *(v0 + 216);
    outlined destroy of TaskPriority?(*(v0 + 160), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 160);
    outlined init with copy of TaskPriority?(v36 + v14[6], *(v0 + 216), &_s10Foundation3URLVSgMd);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 184);
  v38 = *(v0 + 152);
  outlined init with take of URL?(*(v0 + 216), *(v0 + 200) + *(*(v0 + 192) + 56), &_s10Foundation3URLVSgMd);
  outlined init with copy of TaskPriority?(v37, v38, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 152);
  if (v39 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 152), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 184);
  v43 = *(v0 + 144);
  *(*(v0 + 200) + *(*(v0 + 192) + 60)) = v41;
  outlined init with copy of TaskPriority?(v42, v43, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 144);
  if (v44 == 1)
  {
    outlined destroy of TaskPriority?(v45, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 184);
  v48 = *(v0 + 136);
  *(*(v0 + 200) + *(*(v0 + 192) + 64)) = v46;
  outlined init with copy of TaskPriority?(v47, v48, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 136);
  if (v49 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 136), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 184);
  v55 = *(v0 + 128);
  v56 = (*(v0 + 200) + *(*(v0 + 192) + 72));
  *v56 = v51;
  v56[1] = v52;
  outlined init with take of URL?(v54, v55, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 128);
  if (v57 == 1)
  {
    outlined destroy of TaskPriority?(v58, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 200);
  v61 = *(v0 + 208);
  v62 = *(v0 + 192);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  outlined init with take of Actions.GoToPlaylistFolderItem.Context(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 320);
  v63 = *(v0 + 328);
  v65 = *(v0 + 312);
  v66 = *(v0 + 264);
  v67 = *(v0 + 248);
  v68 = *(v0 + 232);
  v69 = *(v0 + 208);
  v70 = *(v0 + 344);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  outlined consume of MetricsEvent.Click.ActionDetails(v65, v64, v63, v70, SBYTE1(v70));
  _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v69, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v68, &_s10Foundation3URLVSgMd);

  return _swift_task_switch(closure #1 in Actions.GoToAlbum.Context.init<A>(item:subtitle:canGoToAlbum:goToAlbum:metricsReportingContext:), 0, 0);
}

uint64_t partial apply for closure #1 in Actions.GoToAlbum.Context.init<A>(item:subtitle:canGoToAlbum:goToAlbum:metricsReportingContext:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in Actions.GoToAlbum.Context.init<A>(item:subtitle:canGoToAlbum:goToAlbum:metricsReportingContext:)(v0 + v5, v0 + v6, v2, v3);
}

uint64_t Actions.GoToAlbum.Context.menuItemTitle.getter()
{
  return Actions.GoToAlbum.Context.menuItemTitle.getter();
}

{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

id implicit closure #1 in Actions.GoToAlbum.Context.menuItemImage.getter()
{
  return implicit closure #1 in Actions.GoToAlbum.Context.menuItemImage.getter();
}

{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  return v1;
}

uint64_t protocol witness for ActionMenuItemConfiguring.menuItemTitle.getter in conformance Actions.GoToAlbum.Context()
{
  return protocol witness for ActionMenuItemConfiguring.menuItemTitle.getter in conformance Actions.GoToAlbum.Context();
}

{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t specialized MusicLibrary.ItemState.containerLoadingSource.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  if (dispatch thunk of MusicLibrary.ItemState.isAdded.getter())
  {
    v8 = enum case for MusicPropertySource.library(_:);
    v9 = type metadata accessor for MusicPropertySource();
    v17 = *(v9 - 8);
    (*(v17 + 104))(a4, v8, v9);
    v10 = *(v17 + 56);

    return v10(a4, 0, 1, v9);
  }

  else
  {
    v28 = a1(0);
    v29 = a2;
    __swift_allocate_boxed_opaque_existential_1(v27);
    dispatch thunk of MusicLibrary.ItemState.item.getter();
    __swift_project_boxed_opaque_existential_0Tm(v27, v28);
    a3();
    if (!v12)
    {
      goto LABEL_10;
    }

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v26[4] = v22;
    v26[5] = v23;
    v26[6] = v24;
    v26[7] = v25;
    v26[0] = v18;
    v26[1] = v19;
    v26[2] = v20;
    v26[3] = v21;
    outlined destroy of ApplicationCapabilities(v26);
    if (BYTE1(v26[0]) == 1)
    {
      v13 = enum case for MusicPropertySource.catalog(_:);
      v14 = type metadata accessor for MusicPropertySource();
      v15 = *(v14 - 8);
      (*(v15 + 104))(a4, v13, v14);
      (*(v15 + 56))(a4, 0, 1, v14);
      return __swift_destroy_boxed_opaque_existential_0Tm(v27);
    }

    else
    {
LABEL_10:
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      v16 = type metadata accessor for MusicPropertySource();
      return (*(*(v16 - 8) + 56))(a4, 1, 1, v16);
    }
  }
}

uint64_t MusicLibrary.ItemState.containerLoadingSource.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __chkstk_darwin(a1);
  if (dispatch thunk of MusicLibrary.ItemState.isAdded.getter())
  {
    v3 = enum case for MusicPropertySource.library(_:);
    v4 = type metadata accessor for MusicPropertySource();
    v14 = *(v4 - 8);
    (*(v14 + 104))(a2, v3, v4);
    v5 = *(v14 + 56);

    return v5(a2, 0, 1, v4);
  }

  else
  {
    dispatch thunk of MusicLibrary.ItemState.item.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore18CatalogIDProviding_pMd);
    if (swift_dynamicCast())
    {
      outlined init with take of ActionPerforming(&v23, v31);
      v7 = v32;
      v8 = v33;
      __swift_project_boxed_opaque_existential_0Tm(v31, v32);
      (*(v8 + 8))(v7, v8);
      if (v9)
      {

        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v27 = v19;
        v28 = v20;
        v29 = v21;
        v30 = v22;
        v23 = v15;
        v24 = v16;
        v25 = v17;
        v26 = v18;
        outlined destroy of ApplicationCapabilities(&v23);
        if (BYTE1(v23) == 1)
        {
          v10 = enum case for MusicPropertySource.catalog(_:);
          v11 = type metadata accessor for MusicPropertySource();
          v12 = *(v11 - 8);
          (*(v12 + 104))(a2, v10, v11);
          (*(v12 + 56))(a2, 0, 1, v11);
          return __swift_destroy_boxed_opaque_existential_0Tm(v31);
        }
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v31);
    }

    else
    {
      *&v25 = 0;
      v23 = 0u;
      v24 = 0u;
      outlined destroy of TaskPriority?(&v23, &_s9MusicCore18CatalogIDProviding_pSgMd);
    }

    v13 = type metadata accessor for MusicPropertySource();
    return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }
}

uint64_t MusicVideo.supportsContainerNavigation(itemState:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14PropertySourceOSgMd);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  specialized MusicLibrary.ItemState.containerLoadingSource.getter(&type metadata accessor for MusicVideo, &protocol witness table for MusicVideo, &MusicVideo.catalogID.getter, &v7 - v1);
  v3 = type metadata accessor for MusicPropertySource();
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3);
  outlined destroy of TaskPriority?(v2, &_s8MusicKit0A14PropertySourceOSgMd);
  if (v4 == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = MusicVideo.hasFullAlbum.getter();
  }

  return v5 & 1;
}

uint64_t MusicVideo.hasFullAlbum.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA5AlbumVGSgMd);
  __chkstk_darwin(v0 - 8);
  v2 = &v15 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit5AlbumVSgMd);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for Album();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MusicVideo.albums.getter();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA5AlbumVGMd);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v2, 1, v10) == 1)
  {
    outlined destroy of TaskPriority?(v2, &_s8MusicKit0A14ItemCollectionVyAA5AlbumVGSgMd);
    (*(v7 + 56))(v5, 1, 1, v6);
LABEL_4:
    outlined destroy of TaskPriority?(v5, &_s8MusicKit5AlbumVSgMd);
    goto LABEL_5;
  }

  specialized Collection.first.getter(v5);
  (*(v11 + 8))(v2, v10);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    goto LABEL_4;
  }

  (*(v7 + 32))(v9, v5, v6);
  v14 = Album.isSingleMusicVideo.getter();
  (*(v7 + 8))(v9, v6);
  if (v14 != 2)
  {
    v12 = v14 ^ 1;
    return v12 & 1;
  }

LABEL_5:
  v12 = 0;
  return v12 & 1;
}

uint64_t Track.supportsContainerNavigation(itemState:)()
{
  v0 = type metadata accessor for Track();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MusicVideo();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14PropertySourceOSgMd);
  __chkstk_darwin(v8 - 8);
  v10 = v15 - v9;
  specialized MusicLibrary.ItemState.containerLoadingSource.getter(&type metadata accessor for Track, &protocol witness table for Track, &Track.catalogID.getter, v15 - v9);
  v11 = type metadata accessor for MusicPropertySource();
  v12 = (*(*(v11 - 8) + 48))(v10, 1, v11);
  outlined destroy of TaskPriority?(v10, &_s8MusicKit0A14PropertySourceOSgMd);
  if (v12 == 1)
  {
    v13 = 0;
  }

  else
  {
    (*(v1 + 16))(v3, v15[1], v0);
    if ((*(v1 + 88))(v3, v0) == enum case for Track.musicVideo(_:))
    {
      (*(v1 + 96))(v3, v0);
      (*(v5 + 32))(v7, v3, v4);
      v13 = MusicVideo.hasFullAlbum.getter();
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v13 = 1;
    }
  }

  return v13 & 1;
}

BOOL Song.supportsContainerNavigation(itemState:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14PropertySourceOSgMd);
  __chkstk_darwin(v7 - 8);
  v9 = &v13 - v8;
  specialized MusicLibrary.ItemState.containerLoadingSource.getter(a2, a3, a4, &v13 - v8);
  v10 = type metadata accessor for MusicPropertySource();
  v11 = (*(*(v10 - 8) + 48))(v9, 1, v10) != 1;
  outlined destroy of TaskPriority?(v9, &_s8MusicKit0A14PropertySourceOSgMd);
  return v11;
}

uint64_t Playlist.Entry.supportsContainerNavigation(itemState:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV5EntryV4ItemOSgMd);
  __chkstk_darwin(v0 - 8);
  v2 = &v16 - v1;
  v3 = type metadata accessor for MusicVideo();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14PropertySourceOSgMd);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  specialized MusicLibrary.ItemState.containerLoadingSource.getter(&type metadata accessor for Playlist.Entry, &protocol witness table for Playlist.Entry, &Playlist.Entry.catalogID.getter, &v16 - v8);
  v10 = type metadata accessor for MusicPropertySource();
  v11 = (*(*(v10 - 8) + 48))(v9, 1, v10);
  outlined destroy of TaskPriority?(v9, &_s8MusicKit0A14PropertySourceOSgMd);
  if (v11 != 1)
  {
    Playlist.Entry.item.getter();
    v13 = type metadata accessor for Playlist.Entry.Item();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v2, 1, v13) == 1)
    {
      outlined destroy of TaskPriority?(v2, &_s8MusicKit8PlaylistV5EntryV4ItemOSgMd);
    }

    else
    {
      if ((*(v14 + 88))(v2, v13) == enum case for Playlist.Entry.Item.musicVideo(_:))
      {
        (*(v14 + 96))(v2, v13);
        (*(v4 + 32))(v6, v2, v3);
        v12 = MusicVideo.hasFullAlbum.getter();
        (*(v4 + 8))(v6, v3);
        return v12 & 1;
      }

      (*(v14 + 8))(v2, v13);
    }

    v12 = 1;
    return v12 & 1;
  }

  v12 = 0;
  return v12 & 1;
}

int *static Actions.GoToPlaylistFolderItem.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Playlist.Folder.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Actions.GoToPlaylistFolderItem.Context();
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Actions.GoToPlaylistFolderItem.Context(a1, v10);
  (*(v5 + 16))(v7, a1, v4);
  if ((*(v5 + 88))(v7, v4) == enum case for Playlist.Folder.Item.folder(_:))
  {
    v11 = 29;
  }

  else
  {
    v11 = 28;
  }

  (*(v5 + 8))(v7, v4);
  outlined init with take of Actions.GoToPlaylistFolderItem.Context(v10, a2, type metadata accessor for Actions.GoToPlaylistFolderItem.Context);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO22GoToPlaylistFolderItemO7ContextVytGMd);
  *(a2 + result[9]) = v11;
  *(a2 + result[11]) = 0x4014000000000000;
  v13 = (a2 + result[10]);
  *v13 = closure #2 in static Actions.GoToPlaylistFolderItem.action(context:);
  v13[1] = 0;
  v14 = (a2 + result[12]);
  *v14 = &async function pointer to closure #3 in static Actions.GoToPlaylistFolderItem.action(context:);
  v14[1] = 0;
  v15 = (a2 + result[13]);
  *v15 = &async function pointer to closure #4 in static Actions.GoToPlaylistFolderItem.action(context:);
  v15[1] = 0;
  return result;
}

uint64_t closure #3 in static Actions.GoToPlaylistFolderItem.action(context:)()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.GoToPlaylistFolderItem.Context() + 24));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = closure #2 in static Actions.Collaborate.action(context:);

  return v5();
}

uint64_t closure #4 in static Actions.GoToPlaylistFolderItem.action(context:)()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.GoToPlaylistFolderItem.Context() + 28));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = closure #3 in static Actions.Collaborate.action(context:);

  return v5();
}

int *Actions.GoToPlaylistFolderItem.Context.init(playlistEntry:playlistFolderItem:canGoToPlaylistFolderItem:goToPlaylistFolderItem:metricsReportingContext:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v14 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v15 = (*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  outlined init with take of URL?(a7, v16 + v14, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  outlined init with take of ActionPerforming(a1, v16 + v15);
  v17 = type metadata accessor for Playlist.Folder.Item();
  (*(*(v17 - 8) + 32))(a8, a2, v17);
  result = type metadata accessor for Actions.GoToPlaylistFolderItem.Context();
  v19 = (a8 + result[5]);
  *v19 = a3;
  v19[1] = a4;
  v20 = (a8 + result[6]);
  *v20 = a5;
  v20[1] = a6;
  v21 = (a8 + result[7]);
  *v21 = &async function pointer to partial apply for closure #1 in Actions.GoToPlaylistFolderItem.Context.init(playlistEntry:playlistFolderItem:canGoToPlaylistFolderItem:goToPlaylistFolderItem:metricsReportingContext:);
  v21[1] = v16;
  return result;
}

uint64_t closure #1 in Actions.GoToPlaylistFolderItem.Context.init(playlistEntry:playlistFolderItem:canGoToPlaylistFolderItem:goToPlaylistFolderItem:metricsReportingContext:)(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = type metadata accessor for MetricsEvent.Click(0);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v2[28] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext();
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();

  return _swift_task_switch(closure #1 in Actions.GoToPlaylistFolderItem.Context.init(playlistEntry:playlistFolderItem:canGoToPlaylistFolderItem:goToPlaylistFolderItem:metricsReportingContext:), 0, 0);
}

uint64_t closure #1 in Actions.GoToPlaylistFolderItem.Context.init(playlistEntry:playlistFolderItem:canGoToPlaylistFolderItem:goToPlaylistFolderItem:metricsReportingContext:)()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  outlined init with copy of TaskPriority?(*(v0 + 96), v3, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 224), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 216);
    v7 = *(v0 + 104);
    outlined init with take of Actions.GoToPlaylistFolderItem.Context(*(v0 + 224), *(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
    v8 = v7[3];
    __swift_project_boxed_opaque_existential_0Tm(v7, v8);
    *(v0 + 256) = MusicItem.metricsTargetIdentifier.getter(v8);
    *(v0 + 264) = v9;
    v10 = type metadata accessor for URL();
    *(v0 + 272) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 280) = v12;
    *(v0 + 288) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v6, 1, 1, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2EF0;
    v14 = v7[3];
    __swift_project_boxed_opaque_existential_0Tm(v7, v14);
    *(inited + 32) = MusicItem.metricsContentType.getter(v14);
    *(inited + 40) = v15;
    *(inited + 48) = 0;
    *(inited + 56) = xmmword_1004F2F30;
    *(inited + 72) = 3;
    *(v0 + 296) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
    *(v0 + 304) = v16;
    *(v0 + 312) = v17;
    *(v0 + 328) = v18;
    swift_setDeallocating();
    swift_arrayDestroy();
    type metadata accessor for MainActor();
    *(v0 + 320) = static MainActor.shared.getter();
    v20 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #1 in Actions.GoToPlaylistFolderItem.Context.init(playlistEntry:playlistFolderItem:canGoToPlaylistFolderItem:goToPlaylistFolderItem:metricsReportingContext:), v20, v19);
  }
}

{
  v80 = *(v0 + 328);
  v73 = *(v0 + 296);
  v76 = *(v0 + 264);
  v78 = *(v0 + 312);
  v74 = *(v0 + 256);
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  v72 = *(v0 + 160);

  outlined init with copy of TaskPriority?(v3, v4, &_s10Foundation3URLVSgMd);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  outlined init with copy of TaskPriority?(v1 + v2[5], v7, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 15365;
  outlined init with take of URL?(v4, v6 + v5[7], &_s10Foundation3URLVSgMd);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  outlined init with copy of TaskPriority?(v7, v72, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 328);
  v17 = *(v0 + 304);
  v18 = *(v0 + 312);
  v19 = *(v0 + 296);
  v20 = *(v0 + 160);
  if (v15 == 1)
  {

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v17, v18, v16, SBYTE1(v16));
    outlined destroy of TaskPriority?(v20, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v17, v18, v16, SBYTE1(v16));

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 168);
  v24 = *(v0 + 152);
  v25 = (*(v0 + 184) + *(*(v0 + 176) + 48));
  *v25 = v21;
  v25[1] = v22;
  outlined init with copy of TaskPriority?(v23, v24, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 152);
  if (v26 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 152), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 168);
  v31 = *(v0 + 144);
  v32 = (*(v0 + 184) + *(*(v0 + 176) + 52));
  *v32 = v28;
  v32[1] = v29;
  outlined init with copy of TaskPriority?(v30, v31, &_s9MusicCore12MetricsEventV4PageVSgMd);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 280);
    v34 = *(v0 + 272);
    v35 = *(v0 + 200);
    outlined destroy of TaskPriority?(*(v0 + 144), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 144);
    outlined init with copy of TaskPriority?(v36 + v14[6], *(v0 + 200), &_s10Foundation3URLVSgMd);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 168);
  v38 = *(v0 + 136);
  outlined init with take of URL?(*(v0 + 200), *(v0 + 184) + *(*(v0 + 176) + 56), &_s10Foundation3URLVSgMd);
  outlined init with copy of TaskPriority?(v37, v38, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 136);
  if (v39 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 136), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 168);
  v43 = *(v0 + 128);
  *(*(v0 + 184) + *(*(v0 + 176) + 60)) = v41;
  outlined init with copy of TaskPriority?(v42, v43, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 128);
  if (v44 == 1)
  {
    outlined destroy of TaskPriority?(v45, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 168);
  v48 = *(v0 + 120);
  *(*(v0 + 184) + *(*(v0 + 176) + 64)) = v46;
  outlined init with copy of TaskPriority?(v47, v48, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 120);
  if (v49 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 120), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 168);
  v55 = *(v0 + 112);
  v56 = (*(v0 + 184) + *(*(v0 + 176) + 72));
  *v56 = v51;
  v56[1] = v52;
  outlined init with take of URL?(v54, v55, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 112);
  if (v57 == 1)
  {
    outlined destroy of TaskPriority?(v58, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 184);
  v61 = *(v0 + 192);
  v62 = *(v0 + 176);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  outlined init with take of Actions.GoToPlaylistFolderItem.Context(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 304);
  v63 = *(v0 + 312);
  v65 = *(v0 + 296);
  v66 = *(v0 + 248);
  v67 = *(v0 + 232);
  v68 = *(v0 + 216);
  v69 = *(v0 + 192);
  v70 = *(v0 + 328);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  outlined consume of MetricsEvent.Click.ActionDetails(v65, v64, v63, v70, SBYTE1(v70));
  _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v69, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v68, &_s10Foundation3URLVSgMd);

  return _swift_task_switch(closure #3 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:), 0, 0);
}

uint64_t Actions.GoToPlaylistFolderItem.Context.menuItemTitle.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = type metadata accessor for Playlist.Folder.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, v1, v10);
  v14 = (v4 + 16);
  if ((*(v11 + 88))(v13, v10) == enum case for Playlist.Folder.Item.folder(_:))
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*v14)(v7, v9, v3);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v15 = static NSBundle.module;
    static Locale.current.getter();
    v16 = String.init(localized:table:bundle:locale:comment:)();
  }

  else
  {
    v21 = v4;
    String.LocalizationValue.init(stringLiteral:)();
    v17 = *v14;
    v22 = v3;
    v17(v7, v9, v3);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v18 = static NSBundle.module;
    static Locale.current.getter();
    v16 = String.init(localized:table:bundle:locale:comment:)();
    v4 = v21;
    v3 = v22;
  }

  (*(v4 + 8))(v9, v3);
  (*(v11 + 8))(v13, v10);
  return v16;
}

uint64_t closure #1 in Actions.ShowSongCredits.Context.init<A>(item:canShowSongCredits:showSongCredits:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = type metadata accessor for MetricsEvent.Click(0);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v4[27] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(closure #1 in Actions.ShowSongCredits.Context.init<A>(item:canShowSongCredits:showSongCredits:metricsReportingContext:), 0, 0);
}

uint64_t closure #1 in Actions.ShowSongCredits.Context.init<A>(item:canShowSongCredits:showSongCredits:metricsReportingContext:)()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  outlined init with copy of TaskPriority?(*(v0 + 72), v3, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 216), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 88);
    outlined init with take of Actions.GoToPlaylistFolderItem.Context(*(v0 + 216), *(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 248) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 256) = v8;
    v9 = type metadata accessor for URL();
    *(v0 + 264) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 272) = v11;
    *(v0 + 280) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2400;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(v0 + 288) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
    *(v0 + 296) = v14;
    *(v0 + 304) = v15;
    *(v0 + 320) = v16;
    swift_setDeallocating();
    outlined destroy of MetricsEvent.Click.ActionDetails.Key(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 312) = static MainActor.shared.getter();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #1 in Actions.ShowSongCredits.Context.init<A>(item:canShowSongCredits:showSongCredits:metricsReportingContext:), v18, v17);
  }
}

{
  v80 = *(v0 + 320);
  v73 = *(v0 + 288);
  v76 = *(v0 + 256);
  v78 = *(v0 + 304);
  v74 = *(v0 + 248);
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v72 = *(v0 + 152);

  outlined init with copy of TaskPriority?(v3, v4, &_s10Foundation3URLVSgMd);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  outlined init with copy of TaskPriority?(v1 + v2[5], v7, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 15109;
  outlined init with take of URL?(v4, v6 + v5[7], &_s10Foundation3URLVSgMd);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  outlined init with copy of TaskPriority?(v7, v72, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 320);
  v17 = *(v0 + 296);
  v18 = *(v0 + 304);
  v19 = *(v0 + 288);
  v20 = *(v0 + 152);
  if (v15 == 1)
  {

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v17, v18, v16, SBYTE1(v16));
    outlined destroy of TaskPriority?(v20, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v17, v18, v16, SBYTE1(v16));

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = (*(v0 + 176) + *(*(v0 + 168) + 48));
  *v25 = v21;
  v25[1] = v22;
  outlined init with copy of TaskPriority?(v23, v24, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 144);
  if (v26 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 144), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 160);
  v31 = *(v0 + 136);
  v32 = (*(v0 + 176) + *(*(v0 + 168) + 52));
  *v32 = v28;
  v32[1] = v29;
  outlined init with copy of TaskPriority?(v30, v31, &_s9MusicCore12MetricsEventV4PageVSgMd);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 272);
    v34 = *(v0 + 264);
    v35 = *(v0 + 192);
    outlined destroy of TaskPriority?(*(v0 + 136), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 136);
    outlined init with copy of TaskPriority?(v36 + v14[6], *(v0 + 192), &_s10Foundation3URLVSgMd);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 160);
  v38 = *(v0 + 128);
  outlined init with take of URL?(*(v0 + 192), *(v0 + 176) + *(*(v0 + 168) + 56), &_s10Foundation3URLVSgMd);
  outlined init with copy of TaskPriority?(v37, v38, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 128);
  if (v39 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 128), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 160);
  v43 = *(v0 + 120);
  *(*(v0 + 176) + *(*(v0 + 168) + 60)) = v41;
  outlined init with copy of TaskPriority?(v42, v43, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 120);
  if (v44 == 1)
  {
    outlined destroy of TaskPriority?(v45, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 112);
  *(*(v0 + 176) + *(*(v0 + 168) + 64)) = v46;
  outlined init with copy of TaskPriority?(v47, v48, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 112);
  if (v49 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 112), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 160);
  v55 = *(v0 + 104);
  v56 = (*(v0 + 176) + *(*(v0 + 168) + 72));
  *v56 = v51;
  v56[1] = v52;
  outlined init with take of URL?(v54, v55, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 104);
  if (v57 == 1)
  {
    outlined destroy of TaskPriority?(v58, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  outlined init with take of Actions.GoToPlaylistFolderItem.Context(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 296);
  v63 = *(v0 + 304);
  v65 = *(v0 + 288);
  v66 = *(v0 + 240);
  v67 = *(v0 + 224);
  v68 = *(v0 + 208);
  v69 = *(v0 + 184);
  v70 = *(v0 + 320);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  outlined consume of MetricsEvent.Click.ActionDetails(v65, v64, v63, v70, SBYTE1(v70));
  _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v69, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v68, &_s10Foundation3URLVSgMd);

  return _swift_task_switch(closure #1 in Actions.ShowSongCredits.Context.init<A>(item:canShowSongCredits:showSongCredits:metricsReportingContext:), 0, 0);
}

uint64_t (*Actions.ShowSongCredits.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7269632E6F666E69;
  *(v0 + 24) = 0xEB00000000656C63;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7269632E6F666E69;
  *(v1 + 24) = 0xEB00000000656C63;
  return _s9MusicCore19ActionMenuItemImageV10systemNameACSS_tcfc7SwiftUI0F0VSgyYbcfU_TA_0;
}

uint64_t protocol witness for ActionMenuItemConfiguring.menuItemTitle.getter in conformance Actions.ShowSongCredits.Context()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.ShowSongCredits.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7269632E6F666E69;
  *(v0 + 24) = 0xEB00000000656C63;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7269632E6F666E69;
  *(v1 + 24) = 0xEB00000000656C63;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

__n128 static Actions.GoToAlbum.action(context:)@<Q0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v16 = *a1;
  outlined init with copy of TaskPriority?(&v16, &v15, &_sSSSgMd);

  v12 = a1[1];
  *a6 = *a1;
  *(a6 + 16) = v12;
  result = a1[2];
  v14 = a1[3];
  *(a6 + 32) = result;
  *(a6 + 48) = v14;
  *(a6 + 64) = a2;
  *(a6 + 72) = a3;
  *(a6 + 80) = 0;
  *(a6 + 88) = 0x4014000000000000;
  *(a6 + 96) = a4;
  *(a6 + 104) = 0;
  *(a6 + 112) = a5;
  *(a6 + 120) = 0;
  return result;
}

uint64_t closure #2 in static Actions.GoToArtist.action(context:)(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 32) + **(a2 + 32));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return v5();
}

uint64_t protocol witness for static ActionDefinition.action(context:) in conformance Actions.GoToAlbum@<X0>(uint64_t a1@<X0>, char a2@<W3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 56);
  *a6 = *a1;
  *(a6 + 8) = v6;
  *(a6 + 16) = v7;
  *(a6 + 24) = *(a1 + 24);
  *(a6 + 40) = *(a1 + 40);
  *(a6 + 56) = v8;
  *(a6 + 64) = a2;
  *(a6 + 72) = a3;
  *(a6 + 80) = 0;
  *(a6 + 88) = 0x4014000000000000;
  *(a6 + 96) = a4;
  *(a6 + 104) = 0;
  *(a6 + 112) = a5;
  *(a6 + 120) = 0;
}

uint64_t Actions.GoToAlbum.Context.init<A>(item:subtitle:canGoToAlbum:goToAlbum:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = *(a10 - 8);
  v20 = (v18 + *(v17 + 64) + *(v19 + 80)) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a10;
  *(v21 + 24) = a11;
  outlined init with take of URL?(a8, v21 + v18, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  result = (*(v19 + 32))(v21 + v20, a1, a10);
  *a9 = a2;
  a9[1] = a3;
  a9[2] = a4;
  a9[3] = a5;
  a9[4] = a6;
  a9[5] = a7;
  a9[6] = a13;
  a9[7] = v21;
  return result;
}

uint64_t closure #1 in Actions.GoToArtist.Context.init<A>(item:subtitle:canGoToArtist:goToArtist:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = type metadata accessor for MetricsEvent.Click(0);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v4[30] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[31] = v5;
  v4[32] = *(v5 - 8);
  v4[33] = swift_task_alloc();

  return _swift_task_switch(closure #1 in Actions.GoToArtist.Context.init<A>(item:subtitle:canGoToArtist:goToArtist:metricsReportingContext:), 0, 0);
}

uint64_t closure #1 in Actions.GoToArtist.Context.init<A>(item:subtitle:canGoToArtist:goToArtist:metricsReportingContext:)()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  outlined init with copy of TaskPriority?(*(v0 + 96), v3, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 240), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 232);
    v7 = *(v0 + 112);
    outlined init with take of Actions.GoToPlaylistFolderItem.Context(*(v0 + 240), *(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 272) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 280) = v8;
    v9 = type metadata accessor for URL();
    *(v0 + 288) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 296) = v11;
    *(v0 + 304) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2EF0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(inited + 56) = xmmword_1004F2F20;
    *(inited + 72) = 3;
    *(v0 + 312) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
    *(v0 + 320) = v14;
    *(v0 + 328) = v15;
    *(v0 + 344) = v16;
    swift_setDeallocating();
    swift_arrayDestroy();
    type metadata accessor for MainActor();
    *(v0 + 336) = static MainActor.shared.getter();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #1 in Actions.GoToArtist.Context.init<A>(item:subtitle:canGoToArtist:goToArtist:metricsReportingContext:), v18, v17);
  }
}

{
  v80 = *(v0 + 344);
  v73 = *(v0 + 312);
  v76 = *(v0 + 280);
  v78 = *(v0 + 328);
  v74 = *(v0 + 272);
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  v7 = *(v0 + 184);
  v72 = *(v0 + 176);

  outlined init with copy of TaskPriority?(v3, v4, &_s10Foundation3URLVSgMd);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  outlined init with copy of TaskPriority?(v1 + v2[5], v7, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 14853;
  outlined init with take of URL?(v4, v6 + v5[7], &_s10Foundation3URLVSgMd);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  outlined init with copy of TaskPriority?(v7, v72, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 344);
  v17 = *(v0 + 320);
  v18 = *(v0 + 328);
  v19 = *(v0 + 312);
  v20 = *(v0 + 176);
  if (v15 == 1)
  {

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v17, v18, v16, SBYTE1(v16));
    outlined destroy of TaskPriority?(v20, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v17, v18, v16, SBYTE1(v16));

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 184);
  v24 = *(v0 + 168);
  v25 = (*(v0 + 200) + *(*(v0 + 192) + 48));
  *v25 = v21;
  v25[1] = v22;
  outlined init with copy of TaskPriority?(v23, v24, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 168);
  if (v26 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 168), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 184);
  v31 = *(v0 + 160);
  v32 = (*(v0 + 200) + *(*(v0 + 192) + 52));
  *v32 = v28;
  v32[1] = v29;
  outlined init with copy of TaskPriority?(v30, v31, &_s9MusicCore12MetricsEventV4PageVSgMd);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 296);
    v34 = *(v0 + 288);
    v35 = *(v0 + 216);
    outlined destroy of TaskPriority?(*(v0 + 160), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 160);
    outlined init with copy of TaskPriority?(v36 + v14[6], *(v0 + 216), &_s10Foundation3URLVSgMd);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 184);
  v38 = *(v0 + 152);
  outlined init with take of URL?(*(v0 + 216), *(v0 + 200) + *(*(v0 + 192) + 56), &_s10Foundation3URLVSgMd);
  outlined init with copy of TaskPriority?(v37, v38, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 152);
  if (v39 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 152), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 184);
  v43 = *(v0 + 144);
  *(*(v0 + 200) + *(*(v0 + 192) + 60)) = v41;
  outlined init with copy of TaskPriority?(v42, v43, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 144);
  if (v44 == 1)
  {
    outlined destroy of TaskPriority?(v45, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 184);
  v48 = *(v0 + 136);
  *(*(v0 + 200) + *(*(v0 + 192) + 64)) = v46;
  outlined init with copy of TaskPriority?(v47, v48, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 136);
  if (v49 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 136), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 184);
  v55 = *(v0 + 128);
  v56 = (*(v0 + 200) + *(*(v0 + 192) + 72));
  *v56 = v51;
  v56[1] = v52;
  outlined init with take of URL?(v54, v55, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 128);
  if (v57 == 1)
  {
    outlined destroy of TaskPriority?(v58, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 200);
  v61 = *(v0 + 208);
  v62 = *(v0 + 192);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  outlined init with take of Actions.GoToPlaylistFolderItem.Context(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 320);
  v63 = *(v0 + 328);
  v65 = *(v0 + 312);
  v66 = *(v0 + 264);
  v67 = *(v0 + 248);
  v68 = *(v0 + 232);
  v69 = *(v0 + 208);
  v70 = *(v0 + 344);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  outlined consume of MetricsEvent.Click.ActionDetails(v65, v64, v63, v70, SBYTE1(v70));
  _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v69, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v68, &_s10Foundation3URLVSgMd);

  return _swift_task_switch(closure #1 in Actions.Collaborate.Context.init(playlist:canCollaborateOnPlaylist:collaborate:metricsReportingContext:), 0, 0);
}

uint64_t Actions.ShowSongCredits.Context.init<A>(item:canShowSongCredits:showSongCredits:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = *(a7 - 8);
  v20 = (v18 + *(v17 + 64) + *(v19 + 80)) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a7;
  *(v21 + 24) = a8;
  outlined init with take of URL?(a6, v21 + v18, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  result = (*(v19 + 32))(v21 + v20, a1, a7);
  *a9 = a2;
  a9[1] = a3;
  a9[2] = a4;
  a9[3] = a5;
  a9[4] = a11;
  a9[5] = v21;
  return result;
}

uint64_t closure #1 in Actions.ViewFullLyrics.Context.init<A>(item:canViewFullLyrics:viewFullLyrics:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = type metadata accessor for MetricsEvent.Click(0);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v4[27] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(closure #1 in Actions.ViewFullLyrics.Context.init<A>(item:canViewFullLyrics:viewFullLyrics:metricsReportingContext:), 0, 0);
}

uint64_t closure #1 in Actions.ViewFullLyrics.Context.init<A>(item:canViewFullLyrics:viewFullLyrics:metricsReportingContext:)()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  outlined init with copy of TaskPriority?(*(v0 + 72), v3, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 216), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 88);
    outlined init with take of Actions.GoToPlaylistFolderItem.Context(*(v0 + 216), *(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 248) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 256) = v8;
    v9 = type metadata accessor for URL();
    *(v0 + 264) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 272) = v11;
    *(v0 + 280) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2400;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(v0 + 288) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
    *(v0 + 296) = v14;
    *(v0 + 304) = v15;
    *(v0 + 320) = v16;
    swift_setDeallocating();
    outlined destroy of MetricsEvent.Click.ActionDetails.Key(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 312) = static MainActor.shared.getter();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #1 in Actions.ViewFullLyrics.Context.init<A>(item:canViewFullLyrics:viewFullLyrics:metricsReportingContext:), v18, v17);
  }
}

{
  v80 = *(v0 + 320);
  v73 = *(v0 + 288);
  v76 = *(v0 + 256);
  v78 = *(v0 + 304);
  v74 = *(v0 + 248);
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v72 = *(v0 + 152);

  outlined init with copy of TaskPriority?(v3, v4, &_s10Foundation3URLVSgMd);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  outlined init with copy of TaskPriority?(v1 + v2[5], v7, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 13061;
  outlined init with take of URL?(v4, v6 + v5[7], &_s10Foundation3URLVSgMd);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  outlined init with copy of TaskPriority?(v7, v72, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 320);
  v17 = *(v0 + 296);
  v18 = *(v0 + 304);
  v19 = *(v0 + 288);
  v20 = *(v0 + 152);
  if (v15 == 1)
  {

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v17, v18, v16, SBYTE1(v16));
    outlined destroy of TaskPriority?(v20, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v17, v18, v16, SBYTE1(v16));

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = (*(v0 + 176) + *(*(v0 + 168) + 48));
  *v25 = v21;
  v25[1] = v22;
  outlined init with copy of TaskPriority?(v23, v24, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 144);
  if (v26 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 144), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 160);
  v31 = *(v0 + 136);
  v32 = (*(v0 + 176) + *(*(v0 + 168) + 52));
  *v32 = v28;
  v32[1] = v29;
  outlined init with copy of TaskPriority?(v30, v31, &_s9MusicCore12MetricsEventV4PageVSgMd);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 272);
    v34 = *(v0 + 264);
    v35 = *(v0 + 192);
    outlined destroy of TaskPriority?(*(v0 + 136), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 136);
    outlined init with copy of TaskPriority?(v36 + v14[6], *(v0 + 192), &_s10Foundation3URLVSgMd);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 160);
  v38 = *(v0 + 128);
  outlined init with take of URL?(*(v0 + 192), *(v0 + 176) + *(*(v0 + 168) + 56), &_s10Foundation3URLVSgMd);
  outlined init with copy of TaskPriority?(v37, v38, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 128);
  if (v39 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 128), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 160);
  v43 = *(v0 + 120);
  *(*(v0 + 176) + *(*(v0 + 168) + 60)) = v41;
  outlined init with copy of TaskPriority?(v42, v43, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 120);
  if (v44 == 1)
  {
    outlined destroy of TaskPriority?(v45, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 112);
  *(*(v0 + 176) + *(*(v0 + 168) + 64)) = v46;
  outlined init with copy of TaskPriority?(v47, v48, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 112);
  if (v49 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 112), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 160);
  v55 = *(v0 + 104);
  v56 = (*(v0 + 176) + *(*(v0 + 168) + 72));
  *v56 = v51;
  v56[1] = v52;
  outlined init with take of URL?(v54, v55, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 104);
  if (v57 == 1)
  {
    outlined destroy of TaskPriority?(v58, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  outlined init with take of Actions.GoToPlaylistFolderItem.Context(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 296);
  v63 = *(v0 + 304);
  v65 = *(v0 + 288);
  v66 = *(v0 + 240);
  v67 = *(v0 + 224);
  v68 = *(v0 + 208);
  v69 = *(v0 + 184);
  v70 = *(v0 + 320);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  outlined consume of MetricsEvent.Click.ActionDetails(v65, v64, v63, v70, SBYTE1(v70));
  _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v69, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v68, &_s10Foundation3URLVSgMd);

  return _swift_task_switch(closure #5 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:), 0, 0);
}

uint64_t type metadata accessor for Actions.GoToPlaylistFolderItem.Context()
{
  result = type metadata singleton initialization cache for Actions.GoToPlaylistFolderItem.Context;
  if (!type metadata singleton initialization cache for Actions.GoToPlaylistFolderItem.Context)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of Actions.GoToPlaylistFolderItem.Context(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Actions.GoToPlaylistFolderItem.Context();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000883C4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = v0 + v2;
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v5 - 8) + 48))(v0 + v2, 1, v5))
  {
    if (*(v4 + 8) >= 0xDuLL)
    {
    }

    v6 = v4 + *(v5 + 20);
    v7 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
    {

      v8 = *(v7 + 24);
      v9 = type metadata accessor for URL();
      v10 = *(v9 - 8);
      v14 = v8;
      v11 = v6 + v8;
      v12 = v9;
      if (!(*(v10 + 48))(v11, 1, v9))
      {
        (*(v10 + 8))(v6 + v14, v12);
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in Actions.GoToPlaylistFolderItem.Context.init(playlistEntry:playlistFolderItem:canGoToPlaylistFolderItem:goToPlaylistFolderItem:metricsReportingContext:)()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in Actions.GoToPlaylistFolderItem.Context.init(playlistEntry:playlistFolderItem:canGoToPlaylistFolderItem:goToPlaylistFolderItem:metricsReportingContext:)(v0 + v3, v0 + v4);
}

uint64_t partial apply for closure #1 in Actions.ShowSongCredits.Context.init<A>(item:canShowSongCredits:showSongCredits:metricsReportingContext:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in Actions.ShowSongCredits.Context.init<A>(item:canShowSongCredits:showSongCredits:metricsReportingContext:)(v0 + v5, v0 + v6, v2, v3);
}

uint64_t sub_100088874()
{

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in Actions.GoToArtist.Context.init<A>(item:subtitle:canGoToArtist:goToArtist:metricsReportingContext:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in Actions.GoToArtist.Context.init<A>(item:subtitle:canGoToArtist:goToArtist:metricsReportingContext:)(v0 + v5, v0 + v6, v2, v3);
}

uint64_t objectdestroyTm_4()
{
  v1 = *(v0 + 16);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v3 = *(v2 + 64);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v4;
  v8 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v8 - 8) + 48))(v0 + v4, 1, v8))
  {
    v16 = v3;
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v15 = *(v10 + 24);
      v11 = type metadata accessor for URL();
      v13 = *(v11 - 8);
      v14 = v11;
      if (!(*(v13 + 48))(v9 + v15, 1))
      {
        (*(v13 + 8))(v9 + v15, v14);
      }
    }

    v3 = v16;
  }

  (*(v5 + 8))(v0 + ((v4 + v3 + v6) & ~v6), v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in Actions.ViewFullLyrics.Context.init<A>(item:canViewFullLyrics:viewFullLyrics:metricsReportingContext:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in Actions.ViewFullLyrics.Context.init<A>(item:canViewFullLyrics:viewFullLyrics:metricsReportingContext:)(v0 + v5, v0 + v6, v2, v3);
}

uint64_t specialized Actions.ViewFullLyrics.Context.menuItemTitle.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100089034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Playlist.Folder.Item();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100089104(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Playlist.Folder.Item();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

unint64_t type metadata completion function for Actions.GoToPlaylistFolderItem.Context()
{
  result = type metadata accessor for Playlist.Folder.Item();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ()();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Actions.GoToAlbum.Context(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for Actions.GoToAlbum.Context(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t outlined init with take of Actions.GoToPlaylistFolderItem.Context(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t static Actions.OpenInClassical.action(context:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 35;
  *(a2 + 56) = closure #1 in static Actions.AddToLibrary.action(context:);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &async function pointer to closure #2 in static Actions.OpenInClassical.action(context:);
  *(a2 + 88) = 0;
  *(a2 + 96) = &async function pointer to closure #3 in static Actions.OpenInClassical.action(context:);
  *(a2 + 104) = 0;
}

uint64_t protocol witness for static ActionDefinition.action(context:) in conformance Actions.OpenInClassical@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 35;
  *(a2 + 56) = closure #1 in static Actions.AddToLibrary.action(context:);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &async function pointer to closure #2 in static Actions.OpenInClassical.action(context:);
  *(a2 + 88) = 0;
  *(a2 + 96) = &async function pointer to closure #3 in static Actions.OpenInClassical.action(context:);
  *(a2 + 104) = 0;
}

uint64_t Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t (**a4)()@<X8>)
{
  v67 = a3;
  v68 = a4;
  v65 = a2;
  v69 = type metadata accessor for Album();
  v5 = *(v69 - 8);
  v6 = __chkstk_darwin(v69);
  v66 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v7;
  __chkstk_darwin(v6);
  v63 = &v55 - v8;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy10Foundation3URLVs5Error_pGMd);
  v61 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v64 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v62 = &v55 - v17;
  v18 = __chkstk_darwin(v16);
  v60 = &v55 - v19;
  v70 = v20;
  __chkstk_darwin(v18);
  v22 = (&v55 - v21);
  v23 = a1;
  v24 = Album.catalogID.getter();
  if (v25)
  {
    static ClassicalBridge.generatePrestoURL(type:storeAdamID:)(1, v24, v25, v12);

    (*(v10 + 32))(v22, v12, v9);
  }

  else
  {
    lazy protocol witness table accessor for type ClassicalBridge.Error and conformance ClassicalBridge.Error();
    v26 = swift_allocError();
    *v27 = 2;
    *(v27 + 8) = 0;
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    *(v27 + 32) = 2;
    swift_willThrow();
    *v22 = v26;
  }

  swift_storeEnumTagMultiPayload();
  v28 = *(v5 + 16);
  v29 = v63;
  v58 = v23;
  v30 = v69;
  v28(v63, v23, v69);
  v31 = v60;
  outlined init with copy of TaskPriority?(v22, v60, &_ss6ResultOy10Foundation3URLVs5Error_pGMd);
  v32 = *(v5 + 80);
  v33 = (v32 + 16) & ~v32;
  v34 = *(v61 + 80);
  v35 = v70;
  v36 = (v71 + v34 + v33) & ~v34;
  v55 = v34 | 7;
  v59 = v34 | 7 | v32;
  v37 = swift_allocObject();
  v56 = *(v5 + 32);
  v57 = v5 + 32;
  v38 = v37 + v33;
  v39 = v37;
  v61 = v37;
  v56(v38, v29, v30);
  outlined init with take of URL?(v31, v39 + v36, &_ss6ResultOy10Foundation3URLVs5Error_pGMd);
  v40 = v62;
  outlined init with copy of TaskPriority?(v22, v62, &_ss6ResultOy10Foundation3URLVs5Error_pGMd);
  v41 = (v34 + 16) & ~v34;
  v42 = swift_allocObject();
  outlined init with take of URL?(v40, v42 + v41, &_ss6ResultOy10Foundation3URLVs5Error_pGMd);
  outlined init with take of PresentationSource(v65, v42 + ((v35 + v41 + 7) & 0xFFFFFFFFFFFFFFF8));
  v43 = v64;
  outlined init with take of URL?(v22, v64, &_ss6ResultOy10Foundation3URLVs5Error_pGMd);
  v44 = v66;
  v45 = v69;
  v46 = v56;
  v56(v66, v58, v69);
  v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v48 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v49 = (*(v47 + 64) + v34 + v48) & ~v34;
  v50 = (v70 + v32 + v49) & ~v32;
  v51 = swift_allocObject();
  outlined init with take of URL?(v67, v51 + v48, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  outlined init with take of URL?(v43, v51 + v49, &_ss6ResultOy10Foundation3URLVs5Error_pGMd);
  result = v46(v51 + v50, v44, v45);
  v53 = v68;
  v54 = v61;
  *v68 = partial apply for closure #1 in Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:);
  v53[1] = v54;
  v53[2] = &async function pointer to partial apply for closure #2 in Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:);
  v53[3] = v42;
  v53[4] = &async function pointer to partial apply for closure #3 in Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:);
  v53[5] = v51;
  return result;
}

unint64_t lazy protocol witness table accessor for type ClassicalBridge.Error and conformance ClassicalBridge.Error()
{
  result = lazy protocol witness table cache variable for type ClassicalBridge.Error and conformance ClassicalBridge.Error;
  if (!lazy protocol witness table cache variable for type ClassicalBridge.Error and conformance ClassicalBridge.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassicalBridge.Error and conformance ClassicalBridge.Error);
  }

  return result;
}

unint64_t closure #1 in Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy10Foundation3URLVs5Error_pGMd);
  __chkstk_darwin(v3);
  v5 = (v10 - v4);
  if ((Album.isClassicalExperienceAvailable.getter() & 1) == 0)
  {
    return 0xD000000000000021;
  }

  outlined init with copy of TaskPriority?(a2, v5, &_ss6ResultOy10Foundation3URLVs5Error_pGMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *v5;
    v11 = 0;
    v12 = 0xE000000000000000;
    _StringGuts.grow(_:)(43);
    v7._countAndFlagsBits = 0xD000000000000028;
    v7._object = 0x80000001004C6790;
    String.append(_:)(v7);
    v10[1] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    _print_unlocked<A, B>(_:_:)();
    v8._countAndFlagsBits = 41;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);

    return v11;
  }

  else
  {
    outlined destroy of TaskPriority?(v5, &_ss6ResultOy10Foundation3URLVs5Error_pGMd);
    return 0;
  }
}

uint64_t sub_100089CFC()
{
  v1 = type metadata accessor for Album();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy10Foundation3URLVs5Error_pGMd) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 8))(v0 + v6, v7);
  }

  return swift_deallocObject();
}

unint64_t partial apply for closure #1 in Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:)()
{
  v1 = *(type metadata accessor for Album() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy10Foundation3URLVs5Error_pGMd) - 8);
  v5 = v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80));

  return closure #1 in Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:)(v0 + v2, v5);
}

uint64_t closure #2 in Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy10Foundation3URLVs5Error_pGMd);
  v2[5] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[9] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[10] = v5;
  v2[11] = v4;

  return _swift_task_switch(closure #2 in Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:), v5, v4);
}

uint64_t closure #2 in Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:)()
{
  outlined init with copy of TaskPriority?(v0[2], v0[5], &_ss6ResultOy10Foundation3URLVs5Error_pGMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = v0[5];

    outlined destroy of TaskPriority?(v1, &_ss6ResultOy10Foundation3URLVs5Error_pGMd);

    v2 = v0[1];

    return v2();
  }

  else
  {
    (*(v0[7] + 32))(v0[8], v0[5], v0[6]);
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[12] = Strong;
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = closure #2 in Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:);
    v6 = v0[8];

    return (specialized static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:))(v6, Strong);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 96);
  *(*v1 + 112) = v0;

  v4 = *(v2 + 88);
  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = closure #2 in Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:);
  }

  else
  {
    v6 = closure #2 in Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:);
  }

  return _swift_task_switch(v6, v5, v4);
}

{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10008A4A4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy10Foundation3URLVs5Error_pGMd) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = type metadata accessor for URL();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  v5 = v0 + v3;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v3 + 48);
  if (v6 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:)()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy10Foundation3URLVs5Error_pGMd) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #2 in Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:)(v0 + v3, v0 + v4);
}

uint64_t closure #3 in Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = type metadata accessor for MetricsEvent.Click(0);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy10Foundation3URLVs5Error_pGMd);
  v2[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v2[32] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext();
  v2[33] = v3;
  v2[34] = *(v3 - 8);
  v2[35] = swift_task_alloc();

  return _swift_task_switch(closure #3 in Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:), 0, 0);
}

uint64_t closure #3 in Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:)()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = *(v0 + 256);
  outlined init with copy of TaskPriority?(*(v0 + 112), v3, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 256), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 224);
    v7 = *(v0 + 120);
    outlined init with take of Actions.MetricsReportingContext(*(v0 + 256), *(v0 + 280), type metadata accessor for Actions.MetricsReportingContext);
    outlined init with copy of TaskPriority?(v7, v6, &_ss6ResultOy10Foundation3URLVs5Error_pGMd);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v9 = *(v0 + 248);
    v10 = *(v0 + 224);
    if (EnumCaseMultiPayload == 1)
    {
      outlined destroy of TaskPriority?(*(v0 + 224), &_ss6ResultOy10Foundation3URLVs5Error_pGMd);
      v11 = type metadata accessor for URL();
      (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    }

    else
    {
      v12 = type metadata accessor for URL();
      v13 = *(v12 - 8);
      (*(v13 + 32))(v9, v10, v12);
      (*(v13 + 56))(v9, 0, 1, v12);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2400;
    *(v0 + 104) = type metadata accessor for Album();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit5AlbumVmMd);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    specialized Collection.prefix(_:)(1);
    v18 = Substring.lowercased()();

    v19 = specialized Collection.dropFirst(_:)(1uLL, v15, v17);
    v21 = v20;
    v23 = v22;
    v25 = v24;

    *(v0 + 72) = v19;
    *(v0 + 80) = v21;
    *(v0 + 88) = v23;
    *(v0 + 96) = v25;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    String.append<A>(contentsOf:)();

    *(inited + 32) = v18;
    *(inited + 48) = 0;
    *(v0 + 288) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
    *(v0 + 296) = v26;
    *(v0 + 304) = v27;
    *(v0 + 320) = v28;
    swift_setDeallocating();
    outlined destroy of MetricsEvent.Click.ActionDetails.Key(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 312) = static MainActor.shared.getter();
    v30 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #3 in Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:), v30, v29);
  }
}

{
  v80 = *(v0 + 320);
  v78 = *(v0 + 304);
  v75 = *(v0 + 288);
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  v7 = *(v0 + 184);
  v74 = *(v0 + 176);

  outlined init with copy of TaskPriority?(v3, v4, &_s10Foundation3URLVSgMd);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  outlined init with copy of TaskPriority?(v1 + v2[5], v7, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v11 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v12 = (v6 + v5[20]);
  *v12 = 0;
  v12[1] = 0;
  *v6 = 0xD000000000000014;
  *(v6 + 8) = 0x80000001004C6740;
  *(v6 + 16) = 7173;
  outlined init with take of URL?(v4, v6 + v5[7], &_s10Foundation3URLVSgMd);
  v76 = v10;
  *(v6 + v5[8]) = v8;
  v13 = (v6 + v5[9]);
  v77 = v9;
  *v13 = v9;
  v13[1] = v10;
  v14 = v6 + v5[10];
  *v14 = v75;
  *(v14 + 16) = v78;
  *(v14 + 24) = v80;
  outlined init with copy of TaskPriority?(v7, v74, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v15 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v15 - 1) + 48);
  v16 = v79(v74, 1, v15);
  v17 = *(v0 + 320);
  v18 = *(v0 + 296);
  v19 = *(v0 + 304);
  v20 = *(v0 + 288);
  v21 = *(v0 + 176);
  if (v16 == 1)
  {

    outlined copy of MetricsEvent.Click.ActionContext?(v77, v76);

    outlined copy of MetricsEvent.Click.ActionDetails(v20, v18, v19, v17, SBYTE1(v17));
    outlined destroy of TaskPriority?(v21, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v22 = v11;
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v25 = v11;
    v23 = *v21;
    v24 = v21[1];

    outlined copy of MetricsEvent.Click.ActionContext?(v77, v76);

    outlined copy of MetricsEvent.Click.ActionDetails(v20, v18, v19, v17, SBYTE1(v17));

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v21, type metadata accessor for MetricsEvent.Page);
    v22 = v25;
  }

  v26 = *(v0 + 184);
  v27 = *(v0 + 168);
  v28 = (*(v0 + 200) + *(*(v0 + 192) + 48));
  *v28 = v23;
  v28[1] = v24;
  outlined init with copy of TaskPriority?(v26, v27, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v29 = v79(v27, 1, v15);
  v30 = *(v0 + 168);
  if (v29 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 168), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v31 = 0;
    v32 = 0;
  }

  else
  {
    v31 = *(v30 + 16);
    v32 = *(v30 + 24);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v30, type metadata accessor for MetricsEvent.Page);
  }

  v33 = *(v0 + 184);
  v34 = *(v0 + 160);
  v35 = (*(v0 + 200) + *(*(v0 + 192) + 52));
  *v35 = v31;
  v35[1] = v32;
  outlined init with copy of TaskPriority?(v33, v34, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v36 = v79(v34, 1, v15);
  v37 = *(v0 + 232);
  v38 = *(v0 + 160);
  if (v36 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 160), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v39 = type metadata accessor for URL();
    (*(*(v39 - 8) + 56))(v37, 1, 1, v39);
  }

  else
  {
    outlined init with copy of TaskPriority?(v38 + v15[6], *(v0 + 232), &_s10Foundation3URLVSgMd);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v38, type metadata accessor for MetricsEvent.Page);
  }

  v40 = *(v0 + 184);
  v41 = *(v0 + 152);
  outlined init with take of URL?(*(v0 + 232), *(v0 + 200) + *(*(v0 + 192) + 56), &_s10Foundation3URLVSgMd);
  outlined init with copy of TaskPriority?(v40, v41, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v42 = v79(v41, 1, v15);
  v43 = *(v0 + 152);
  if (v42 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 152), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v44 = 0;
  }

  else
  {
    v44 = *(v43 + v15[7]);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v43, type metadata accessor for MetricsEvent.Page);
  }

  v45 = *(v0 + 184);
  v46 = *(v0 + 144);
  *(*(v0 + 200) + *(*(v0 + 192) + 60)) = v44;
  outlined init with copy of TaskPriority?(v45, v46, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v47 = v79(v46, 1, v15);
  v48 = *(v0 + 144);
  if (v47 == 1)
  {
    outlined destroy of TaskPriority?(v48, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v49 = 1;
  }

  else
  {
    v49 = *(v48 + v15[9]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v48, type metadata accessor for MetricsEvent.Page);
  }

  v50 = *(v0 + 184);
  v51 = *(v0 + 136);
  *(*(v0 + 200) + *(*(v0 + 192) + 64)) = v49;
  outlined init with copy of TaskPriority?(v50, v51, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v52 = v79(v51, 1, v15);
  v53 = *(v0 + 136);
  if (v52 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 136), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v54 = 0;
    v55 = 0;
  }

  else
  {
    v56 = (v53 + v15[8]);
    v54 = *v56;
    v55 = v56[1];

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v53, type metadata accessor for MetricsEvent.Page);
  }

  v57 = *(v0 + 184);
  v58 = *(v0 + 128);
  v59 = (*(v0 + 200) + *(*(v0 + 192) + 72));
  *v59 = v54;
  v59[1] = v55;
  outlined init with take of URL?(v57, v58, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v60 = v79(v58, 1, v15);
  v61 = *(v0 + 128);
  if (v60 == 1)
  {
    outlined destroy of TaskPriority?(v61, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v62 = 2;
  }

  else
  {
    v62 = *(v61 + v15[11]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v61, type metadata accessor for MetricsEvent.Page);
  }

  v63 = *(v0 + 200);
  v64 = *(v0 + 208);
  v65 = *(v0 + 192);
  *(v63 + *(v65 + 68)) = v62;
  *(v63 + *(v65 + 44)) = v22;
  outlined init with take of Actions.MetricsReportingContext(v63, v64, type metadata accessor for MetricsEvent.Click);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v67 = *(v0 + 296);
  v66 = *(v0 + 304);
  v68 = *(v0 + 280);
  v69 = *(v0 + 288);
  v70 = *(v0 + 264);
  v71 = *(v0 + 208);
  v72 = *(v0 + 320);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v71, *(v68 + *(v70 + 24)), *(v68 + *(v70 + 24) + 8), *(v68 + *(v70 + 36)), *(v68 + *(v70 + 36) + 8), *(v68 + *(v70 + 36) + 16));
  outlined consume of MetricsEvent.Click.ActionDetails(v69, v67, v66, v72, SBYTE1(v72));
  _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v71, type metadata accessor for MetricsEvent.Click);

  return _swift_task_switch(closure #3 in Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:), 0, 0);
}

{
  v1 = v0[35];
  outlined destroy of TaskPriority?(v0[31], &_s10Foundation3URLVSgMd);
  _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v1, type metadata accessor for Actions.MetricsReportingContext);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10008B6F0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy10Foundation3URLVs5Error_pGMd);
  v5 = *(*(v4 - 8) + 80);
  v6 = (v2 + v3 + v5) & ~v5;
  v7 = *(*(v4 - 8) + 64);
  v8 = type metadata accessor for Album();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = v0 + v2;
  v12 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    v23 = v7;
    v24 = v8;
    if (*(v11 + 8) >= 0xDuLL)
    {
    }

    v13 = v11 + *(v12 + 20);
    v14 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
    {

      v15 = *(v14 + 24);
      v16 = type metadata accessor for URL();
      v21 = *(v16 - 8);
      v22 = v15;
      v17 = v13 + v15;
      v18 = v16;
      if (!(*(v21 + 48))(v17, 1, v16))
      {
        (*(v21 + 8))(v13 + v22, v18);
      }
    }

    v7 = v23;
    v8 = v24;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v19 = type metadata accessor for URL();
    (*(*(v19 - 8) + 8))(v0 + v6, v19);
  }

  (*(v9 + 8))(v0 + ((v6 + v7 + v10) & ~v10), v8);

  return swift_deallocObject();
}

uint64_t partial apply for closure #3 in Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:)()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy10Foundation3URLVs5Error_pGMd) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  type metadata accessor for Album();
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #3 in Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:)(v0 + v3, v0 + v6);
}

uint64_t (*Actions.OpenInClassical.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "arrow.up.right");
  *(v0 + 31) = -18;
  v1 = swift_allocObject();
  strcpy((v1 + 16), "arrow.up.right");
  *(v1 + 31) = -18;
  return _s9MusicCore19ActionMenuItemImageV10systemNameACSS_tcfc7SwiftUI0F0VSgyYbcfU_TA_0;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.OpenInClassical.Context())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "arrow.up.right");
  *(v0 + 31) = -18;
  v1 = swift_allocObject();
  strcpy((v1 + 16), "arrow.up.right");
  *(v1 + 31) = -18;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t specialized Actions.OpenInClassical.Context.menuItemTitle.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_10008BF70()
{

  return swift_deallocObject();
}

uint64_t static Actions.ReportConcern.action(context:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 6);
  v4 = *(a1 + 1);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = *(a1 + 2);
  *(a2 + 48) = v3;
  *(a2 + 56) = v2;
  *(a2 + 64) = closure #1 in static Actions.ReportConcern.action(context:);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0x4014000000000000;
  *(a2 + 88) = &async function pointer to closure #2 in static Actions.ReportConcern.action(context:);
  *(a2 + 96) = 0;
  *(a2 + 104) = &async function pointer to closure #3 in static Actions.ReportConcern.action(context:);
  *(a2 + 112) = 0;
}

uint64_t closure #2 in static Actions.ReportConcern.action(context:)(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 24) + **(a2 + 24));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return v5();
}

uint64_t closure #3 in static Actions.ReportConcern.action(context:)(uint64_t a1)
{
  v4 = (*(a1 + 40) + **(a1 + 40));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return v4();
}

uint64_t protocol witness for static ActionDefinition.action(context:) in conformance Actions.ReportConcern@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 6);
  *a2 = *a1;
  *(a2 + 8) = v3;
  v5 = *(a1 + 2);
  *(a2 + 16) = *(a1 + 1);
  *(a2 + 32) = v5;
  *(a2 + 48) = v4;
  *(a2 + 56) = v2;
  *(a2 + 64) = closure #1 in static Actions.ReportConcern.action(context:);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0x4014000000000000;
  *(a2 + 88) = &async function pointer to closure #2 in static Actions.ReportConcern.action(context:);
  *(a2 + 96) = 0;
  *(a2 + 104) = &async function pointer to closure #3 in static Actions.ReportConcern.action(context:);
  *(a2 + 112) = 0;
}

uint64_t (*Actions.ReportConcern.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000016;
  *(v0 + 24) = 0x80000001004C67C0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000016;
  *(v1 + 24) = 0x80000001004C67C0;
  return _s9MusicCore19ActionMenuItemImageV10systemNameACSS_tcfc7SwiftUI0F0VSgyYbcfU_TA_0;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.ReportConcern.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000016;
  *(v0 + 24) = 0x80000001004C67C0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000016;
  *(v1 + 24) = 0x80000001004C67C0;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t Actions.ReportConcern.Context.init(contentID:contentType:actionType:canReportConcern:reportConcern:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v17 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v18 = (*(v16 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  result = outlined init with take of URL?(a11, v19 + v17, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v21 = (v19 + v18);
  *v21 = a1;
  v21[1] = a2;
  v22 = (v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v22 = a3;
  v22[1] = a4;
  *a9 = a5;
  *(a9 + 8) = a6;
  *(a9 + 16) = a7;
  *(a9 + 24) = a8;
  *(a9 + 32) = a10;
  *(a9 + 40) = &async function pointer to partial apply for closure #1 in Actions.ReportConcern.Context.init(contentID:contentType:actionType:canReportConcern:reportConcern:metricsReportingContext:);
  *(a9 + 48) = v19;
  return result;
}

uint64_t closure #1 in Actions.ReportConcern.Context.init(contentID:contentType:actionType:canReportConcern:reportConcern:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = type metadata accessor for MetricsEvent.Click(0);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v5[31] = swift_task_alloc();
  v6 = type metadata accessor for Actions.MetricsReportingContext();
  v5[32] = v6;
  v5[33] = *(v6 - 8);
  v5[34] = swift_task_alloc();

  return _swift_task_switch(closure #1 in Actions.ReportConcern.Context.init(contentID:contentType:actionType:canReportConcern:reportConcern:metricsReportingContext:), 0, 0);
}

uint64_t closure #1 in Actions.ReportConcern.Context.init(contentID:contentType:actionType:canReportConcern:reportConcern:metricsReportingContext:)()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 248);
  outlined init with copy of TaskPriority?(*(v0 + 96), v3, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 248), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 240);
    v8 = *(v0 + 120);
    v7 = *(v0 + 128);
    outlined init with take of Actions.MetricsReportingContext(*(v0 + 248), *(v0 + 272), type metadata accessor for Actions.MetricsReportingContext);
    v9 = type metadata accessor for URL();
    *(v0 + 280) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 288) = v11;
    *(v0 + 296) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2EF0;
    *(inited + 32) = v8;
    *(inited + 40) = v7;
    *(inited + 48) = 0;
    *(inited + 56) = xmmword_1004F2F40;
    *(inited + 72) = 3;

    *(v0 + 304) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
    *(v0 + 312) = v13;
    *(v0 + 320) = v14;
    *(v0 + 336) = v15;
    swift_setDeallocating();
    swift_arrayDestroy();
    type metadata accessor for MainActor();
    *(v0 + 328) = static MainActor.shared.getter();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #1 in Actions.ReportConcern.Context.init(contentID:contentType:actionType:canReportConcern:reportConcern:metricsReportingContext:), v17, v16);
  }
}

{
  v80 = *(v0 + 336);
  v79 = *(v0 + 320);
  v77 = *(v0 + 304);
  v1 = *(v0 + 272);
  v2 = *(v0 + 256);
  v4 = *(v0 + 232);
  v3 = *(v0 + 240);
  v5 = *(v0 + 200);
  v6 = *(v0 + 208);
  v7 = *(v0 + 192);
  v74 = *(v0 + 112);
  v72 = *(v0 + 184);
  v73 = *(v0 + 104);

  outlined init with copy of TaskPriority?(v3, v4, &_s10Foundation3URLVSgMd);
  v8 = *(v1 + v2[7]);
  v10 = *v1;
  v9 = v1[1];
  outlined init with copy of TaskPriority?(v1 + v2[5], v7, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v76 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v73;
  *(v6 + 8) = v74;
  *(v6 + 16) = 10501;
  outlined init with take of URL?(v4, v6 + v5[7], &_s10Foundation3URLVSgMd);
  v75 = v9;
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  *v12 = v10;
  v12[1] = v9;
  v13 = v6 + v5[10];
  *v13 = v77;
  *(v13 + 16) = v79;
  *(v13 + 24) = v80;
  outlined init with copy of TaskPriority?(v7, v72, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v78 = type metadata accessor for MetricsEvent.Page(0);
  v81 = *(*(v78 - 1) + 48);
  v14 = v81(v72, 1);
  v15 = *(v0 + 336);
  v17 = *(v0 + 312);
  v16 = *(v0 + 320);
  v18 = *(v0 + 304);
  v19 = *(v0 + 184);
  if (v14 == 1)
  {

    outlined copy of MetricsEvent.Click.ActionContext?(v10, v9);
    v20 = v76;

    outlined copy of MetricsEvent.Click.ActionDetails(v18, v17, v16, v15, SBYTE1(v15));
    outlined destroy of TaskPriority?(v19, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v19;
    v22 = v19[1];

    outlined copy of MetricsEvent.Click.ActionContext?(v10, v75);
    v20 = v76;

    outlined copy of MetricsEvent.Click.ActionDetails(v18, v17, v16, v15, SBYTE1(v15));

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v19, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 192);
  v24 = *(v0 + 176);
  v25 = (*(v0 + 208) + *(*(v0 + 200) + 48));
  *v25 = v21;
  v25[1] = v22;
  outlined init with copy of TaskPriority?(v23, v24, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v26 = (v81)(v24, 1, v78);
  v27 = *(v0 + 176);
  if (v26 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 176), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 192);
  v31 = *(v0 + 168);
  v32 = (*(v0 + 208) + *(*(v0 + 200) + 52));
  *v32 = v28;
  v32[1] = v29;
  outlined init with copy of TaskPriority?(v30, v31, &_s9MusicCore12MetricsEventV4PageVSgMd);
  if ((v81)(v31, 1, v78) == 1)
  {
    v33 = *(v0 + 288);
    v34 = *(v0 + 280);
    v35 = *(v0 + 224);
    outlined destroy of TaskPriority?(*(v0 + 168), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 168);
    outlined init with copy of TaskPriority?(v36 + v78[6], *(v0 + 224), &_s10Foundation3URLVSgMd);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 192);
  v38 = *(v0 + 160);
  outlined init with take of URL?(*(v0 + 224), *(v0 + 208) + *(*(v0 + 200) + 56), &_s10Foundation3URLVSgMd);
  outlined init with copy of TaskPriority?(v37, v38, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v39 = (v81)(v38, 1, v78);
  v40 = *(v0 + 160);
  if (v39 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 160), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v78[7]);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 192);
  v43 = *(v0 + 152);
  *(*(v0 + 208) + *(*(v0 + 200) + 60)) = v41;
  outlined init with copy of TaskPriority?(v42, v43, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v44 = (v81)(v43, 1, v78);
  v45 = *(v0 + 152);
  if (v44 == 1)
  {
    outlined destroy of TaskPriority?(v45, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v78[9]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 192);
  v48 = *(v0 + 144);
  *(*(v0 + 208) + *(*(v0 + 200) + 64)) = v46;
  outlined init with copy of TaskPriority?(v47, v48, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v49 = (v81)(v48, 1, v78);
  v50 = *(v0 + 144);
  if (v49 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 144), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v78[8]);
    v51 = *v53;
    v52 = v53[1];

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 192);
  v55 = *(v0 + 136);
  v56 = (*(v0 + 208) + *(*(v0 + 200) + 72));
  *v56 = v51;
  v56[1] = v52;
  outlined init with take of URL?(v54, v55, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v57 = (v81)(v55, 1, v78);
  v58 = *(v0 + 136);
  if (v57 == 1)
  {
    outlined destroy of TaskPriority?(v58, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v78[11]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 208);
  v61 = *(v0 + 216);
  v62 = *(v0 + 200);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v20;
  outlined init with take of Actions.MetricsReportingContext(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 312);
  v63 = *(v0 + 320);
  v65 = *(v0 + 304);
  v66 = *(v0 + 272);
  v67 = *(v0 + 256);
  v68 = *(v0 + 240);
  v69 = *(v0 + 216);
  v70 = *(v0 + 336);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  outlined consume of MetricsEvent.Click.ActionDetails(v65, v64, v63, v70, SBYTE1(v70));
  _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v69, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v68, &_s10Foundation3URLVSgMd);

  return _swift_task_switch(closure #1 in Actions.ReportConcern.Context.init(contentID:contentType:actionType:canReportConcern:reportConcern:metricsReportingContext:), 0, 0);
}

{
  _s9MusicCore12MetricsEventV5ClickVWOhTm_0(*(v0 + 272), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized Actions.ReportConcern.Context.menuItemTitle.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_10008D5C8()
{

  return swift_deallocObject();
}

uint64_t sub_10008D600()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    if (*(v2 + 8) >= 0xDuLL)
    {
    }

    v4 = v2 + *(v3 + 20);
    v5 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
    {

      v6 = *(v5 + 24);
      v7 = type metadata accessor for URL();
      v8 = *(v7 - 8);
      v12 = v6;
      v9 = v4 + v6;
      v10 = v7;
      if (!(*(v8 + 48))(v9, 1, v7))
      {
        (*(v8 + 8))(v4 + v12, v10);
      }
    }
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in Actions.ReportConcern.Context.init(contentID:contentType:actionType:canReportConcern:reportConcern:metricsReportingContext:)()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v0 + v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v5);
  v10 = *(v0 + v5 + 8);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in Actions.ReportConcern.Context.init(contentID:contentType:actionType:canReportConcern:reportConcern:metricsReportingContext:)(v0 + v3, v7, v8, v9, v10);
}

uint64_t Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)@<X0>(char *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v92 = a7;
  v88 = a5;
  v86 = a4;
  v90 = a8;
  v12 = *(a6 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(a1);
  v87 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v74 - v15;
  v17 = type metadata accessor for Actions.PlaybackContext();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17 - 8);
  v85 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v20;
  __chkstk_darwin(v19);
  v22 = &v74 - v21;
  v89 = a2;
  if (a2 != 3)
  {
    goto LABEL_19;
  }

  v23 = v16;
  v24 = *a3;
  v25 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (*(v24 + v25))
  {
    v82 = v18;
    v80 = v22;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v26 = v93;
    v16 = v23;
    if (v93)
    {
      v27 = [v93 tracklist];

      v28 = [v27 insertCommand];
      v18 = v82;
      if (!v28 || (v29 = [v28 insertAfterLastSection], swift_unknownObjectRelease(), !v29))
      {
LABEL_12:
        v83 = 0;
        v84 = 0;
        v22 = v80;
        goto LABEL_20;
      }

      v30 = [v29 section];
      swift_unknownObjectRelease();
      v31 = [v30 metadataObject];

      if (v31)
      {
        v32 = [v31 flattenedGenericObject];

        v18 = v82;
        if (v32)
        {
          v33 = [v32 anyObject];

          if (v33)
          {
            objc_opt_self();
            v34 = swift_dynamicCastObjCClass();
            v22 = v80;
            if (v34)
            {
              v35 = [v34 title];
            }

            else
            {
              objc_opt_self();
              v36 = swift_dynamicCastObjCClass();
              if (!v36)
              {
LABEL_18:

LABEL_19:
                v83 = 0;
                v84 = 0;
                goto LABEL_20;
              }

              v35 = [v36 name];
            }

            v37 = v35;
            if (v37)
            {
              v38 = v37;
              v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v83 = v40;
              v84 = v39;

              v22 = v80;
              goto LABEL_20;
            }

            goto LABEL_18;
          }
        }

        goto LABEL_12;
      }
    }

    v83 = 0;
    v84 = 0;
    v22 = v80;
    v18 = v82;
    goto LABEL_20;
  }

  v83 = 0;
  v84 = 0;
  v16 = v23;
LABEL_20:
  v41 = v13;
  v78 = type metadata accessor for Actions.PlaybackContext;
  outlined init with copy of Actions.PlaybackContext(a3, v22, type metadata accessor for Actions.PlaybackContext);
  (*(v12 + 16))(v16, a1, a6);
  v42 = a6;
  v43 = *(v18 + 80);
  v79 = a1;
  v44 = (v43 + 32) & ~v43;
  v77 = v43 | 7;
  v45 = v12;
  v46 = *(v12 + 80);
  v47 = a3;
  v81 = a3;
  v48 = (v91 + v46 + v44) & ~v46;
  v80 = (v41 + 7);
  v49 = (v41 + 7 + v48) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  v75 = v42;
  v51 = v92;
  *(v50 + 16) = v42;
  *(v50 + 24) = v51;
  v74 = type metadata accessor for Actions.PlaybackContext;
  v52 = v50 + v44;
  v53 = v50;
  outlined init with take of Actions.PlaybackContext(v22, v52, type metadata accessor for Actions.PlaybackContext);
  v76 = *(v45 + 32);
  v54 = v53 + v48;
  v55 = v53;
  v82 = v53;
  v76(v54, v16, v42);
  v56 = v89;
  *(v55 + v49) = v89;
  v57 = v85;
  outlined init with copy of Actions.PlaybackContext(v47, v85, v78);
  v58 = (v43 + 16) & ~v43;
  v59 = (v91 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  outlined init with take of Actions.PlaybackContext(v57, v60 + v58, v74);
  *(v60 + v59) = v56;
  outlined init with take of PresentationSource(v86, v60 + ((v59 + 15) & 0xFFFFFFFFFFFFFFF8));
  v61 = v87;
  v62 = v75;
  v63 = v76;
  v76(v87, v79, v75);
  v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v65 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v66 = (*(v64 + 64) + v46 + v65) & ~v46;
  v67 = &v80[v66] & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  v69 = v92;
  *(v68 + 16) = v62;
  *(v68 + 24) = v69;
  outlined init with take of URL?(v88, v68 + v65, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v63(v68 + v66, v61, v62);
  *(v68 + v67) = v56;
  outlined copy of Player.InsertCommand.Location(v56);
  outlined copy of Player.InsertCommand.Location(v56);
  outlined copy of Player.InsertCommand.Location(v56);
  result = outlined destroy of Actions.PlaybackContext(v81, type metadata accessor for Actions.PlaybackContext);
  v71 = v90;
  v72 = v83;
  v73 = v84;
  *v90 = v56;
  v71[1] = v73;
  v71[2] = v72;
  v71[3] = partial apply for closure #1 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:);
  v71[4] = v82;
  v71[5] = &async function pointer to partial apply for closure #2 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:);
  v71[6] = v60;
  v71[7] = &async function pointer to partial apply for closure #3 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:);
  v71[8] = v68;
  return result;
}

__n128 static Actions.Queue.action(context:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  specialized static Actions.Queue.action(context:)(a1, v7);
  v3 = v7[7];
  *(a2 + 96) = v7[6];
  *(a2 + 112) = v3;
  *(a2 + 128) = v8;
  v4 = v7[3];
  *(a2 + 32) = v7[2];
  *(a2 + 48) = v4;
  v5 = v7[5];
  *(a2 + 64) = v7[4];
  *(a2 + 80) = v5;
  result = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t Actions.Preview.Context.init<A>(item:canPreview:preview:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = *(a7 - 8);
  v20 = (v18 + *(v17 + 64) + *(v19 + 80)) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a7;
  *(v21 + 24) = a8;
  outlined init with take of URL?(a6, v21 + v18, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  result = (*(v19 + 32))(v21 + v20, a1, a7);
  *a9 = a2;
  a9[1] = a3;
  a9[2] = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable () -> ();
  a9[3] = v16;
  a9[4] = &async function pointer to partial apply for closure #1 in Actions.Preview.Context.init<A>(item:canPreview:preview:metricsReportingContext:);
  a9[5] = v21;
  return result;
}

uint64_t closure #1 in Actions.Preview.Context.init<A>(item:canPreview:preview:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = type metadata accessor for MetricsEvent.Click(0);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v4[27] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(closure #1 in Actions.Preview.Context.init<A>(item:canPreview:preview:metricsReportingContext:), 0, 0);
}

uint64_t closure #1 in Actions.Preview.Context.init<A>(item:canPreview:preview:metricsReportingContext:)()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  outlined init with copy of TaskPriority?(*(v0 + 72), v3, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 216), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 88);
    outlined init with take of Actions.PlaybackContext(*(v0 + 216), *(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 248) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 256) = v8;
    v9 = type metadata accessor for URL();
    *(v0 + 264) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 272) = v11;
    *(v0 + 280) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2400;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(v0 + 288) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
    *(v0 + 296) = v14;
    *(v0 + 304) = v15;
    *(v0 + 320) = v16;
    swift_setDeallocating();
    outlined destroy of MetricsEvent.Click.ActionDetails.Key(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 312) = static MainActor.shared.getter();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #1 in Actions.Preview.Context.init<A>(item:canPreview:preview:metricsReportingContext:), v18, v17);
  }
}

{
  v80 = *(v0 + 320);
  v73 = *(v0 + 288);
  v76 = *(v0 + 256);
  v78 = *(v0 + 304);
  v74 = *(v0 + 248);
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v72 = *(v0 + 152);

  outlined init with copy of TaskPriority?(v3, v4, &_s10Foundation3URLVSgMd);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  outlined init with copy of TaskPriority?(v1 + v2[5], v7, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 15621;
  outlined init with take of URL?(v4, v6 + v5[7], &_s10Foundation3URLVSgMd);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  outlined init with copy of TaskPriority?(v7, v72, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 320);
  v17 = *(v0 + 296);
  v18 = *(v0 + 304);
  v19 = *(v0 + 288);
  v20 = *(v0 + 152);
  if (v15 == 1)
  {

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v17, v18, v16, SBYTE1(v16));
    outlined destroy of TaskPriority?(v20, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v17, v18, v16, SBYTE1(v16));

    outlined destroy of Actions.PlaybackContext(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = (*(v0 + 176) + *(*(v0 + 168) + 48));
  *v25 = v21;
  v25[1] = v22;
  outlined init with copy of TaskPriority?(v23, v24, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 144);
  if (v26 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 144), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    outlined destroy of Actions.PlaybackContext(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 160);
  v31 = *(v0 + 136);
  v32 = (*(v0 + 176) + *(*(v0 + 168) + 52));
  *v32 = v28;
  v32[1] = v29;
  outlined init with copy of TaskPriority?(v30, v31, &_s9MusicCore12MetricsEventV4PageVSgMd);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 272);
    v34 = *(v0 + 264);
    v35 = *(v0 + 192);
    outlined destroy of TaskPriority?(*(v0 + 136), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 136);
    outlined init with copy of TaskPriority?(v36 + v14[6], *(v0 + 192), &_s10Foundation3URLVSgMd);
    outlined destroy of Actions.PlaybackContext(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 160);
  v38 = *(v0 + 128);
  outlined init with take of URL?(*(v0 + 192), *(v0 + 176) + *(*(v0 + 168) + 56), &_s10Foundation3URLVSgMd);
  outlined init with copy of TaskPriority?(v37, v38, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 128);
  if (v39 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 128), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    outlined destroy of Actions.PlaybackContext(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 160);
  v43 = *(v0 + 120);
  *(*(v0 + 176) + *(*(v0 + 168) + 60)) = v41;
  outlined init with copy of TaskPriority?(v42, v43, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 120);
  if (v44 == 1)
  {
    outlined destroy of TaskPriority?(v45, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    outlined destroy of Actions.PlaybackContext(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 112);
  *(*(v0 + 176) + *(*(v0 + 168) + 64)) = v46;
  outlined init with copy of TaskPriority?(v47, v48, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 112);
  if (v49 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 112), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    outlined destroy of Actions.PlaybackContext(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 160);
  v55 = *(v0 + 104);
  v56 = (*(v0 + 176) + *(*(v0 + 168) + 72));
  *v56 = v51;
  v56[1] = v52;
  outlined init with take of URL?(v54, v55, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 104);
  if (v57 == 1)
  {
    outlined destroy of TaskPriority?(v58, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    outlined destroy of Actions.PlaybackContext(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  outlined init with take of Actions.PlaybackContext(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 296);
  v63 = *(v0 + 304);
  v65 = *(v0 + 288);
  v66 = *(v0 + 240);
  v67 = *(v0 + 224);
  v68 = *(v0 + 208);
  v69 = *(v0 + 184);
  v70 = *(v0 + 320);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  outlined consume of MetricsEvent.Click.ActionDetails(v65, v64, v63, v70, SBYTE1(v70));
  outlined destroy of Actions.PlaybackContext(v69, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v68, &_s10Foundation3URLVSgMd);

  return _swift_task_switch(closure #1 in Actions.Preview.Context.init<A>(item:canPreview:preview:metricsReportingContext:), 0, 0);
}

{
  outlined destroy of Actions.PlaybackContext(*(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t (*Actions.Preview.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7269632E79616C70;
  *(v0 + 24) = 0xEB00000000656C63;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7269632E79616C70;
  *(v1 + 24) = 0xEB00000000656C63;
  return _s9MusicCore19ActionMenuItemImageV10systemNameACSS_tcfc7SwiftUI0F0VSgyYbcfU_TA_0;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.Preview.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7269632E79616C70;
  *(v0 + 24) = 0xEB00000000656C63;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7269632E79616C70;
  *(v1 + 24) = 0xEB00000000656C63;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t Actions.CreateStation.Context.init(playbackContext:presentationSource:metricsReportingContext:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X8>)
{
  v8 = type metadata accessor for Actions.PlaybackContext();
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal07GenericA4ItemOSgMd);
  __chkstk_darwin(v11 - 8);
  v13 = &v39 - v12;
  v14 = type metadata accessor for GenericMusicItem();
  *&v39 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (!*(v17 + v18))
  {
    outlined destroy of TaskPriority?(a3, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
    v28 = a2;
    goto LABEL_9;
  }

  *&v40 = a3;
  *&v41 = a2;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v19 = v45;
  if (!v45 || (v20 = [v45 tracklist], v19, v21 = objc_msgSend(v20, "playingItem"), v20, !v21) || (v22 = objc_msgSend(v21, "metadataObject"), v21, !v22))
  {

    outlined destroy of TaskPriority?(v40, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
    v28 = v41;
LABEL_9:
    outlined destroy of PresentationSource(v28);
    result = outlined destroy of Actions.PlaybackContext(a1, type metadata accessor for Actions.PlaybackContext);
    goto LABEL_10;
  }

  v23 = [v22 innermostModelObject];

  v24 = v23;
  GenericMusicItem.init(_:)();
  v25 = v39;
  if ((*(v39 + 48))(v13, 1, v14) == 1)
  {

    outlined destroy of TaskPriority?(v40, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
    outlined destroy of PresentationSource(v41);
    outlined destroy of Actions.PlaybackContext(a1, type metadata accessor for Actions.PlaybackContext);
    v26 = &_s16MusicKitInternal07GenericA4ItemOSgMd;
    v27 = v13;
  }

  else
  {
    (*(v25 + 32))(v16, v13, v14);
    creatableStationMusicItem #1 (genericMusicItem:) in Actions.CreateStation.Context.init(playbackContext:presentationSource:metricsReportingContext:)(v16, &v45);

    (*(v25 + 8))(v16, v14);
    if (*(&v46 + 1))
    {
      outlined init with take of ActionPerforming(&v45, v42);
      v33 = v43;
      v34 = v44;
      v35 = __swift_project_boxed_opaque_existential_0Tm(v42, v43);
      __chkstk_darwin(v35);
      v37 = &v39 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v38 + 16))(v37);
      outlined init with copy of Actions.PlaybackContext(a1, v10, type metadata accessor for Actions.PlaybackContext);
      Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:)(v37, v10, v41, v40, v33, v34, &v45);
      v40 = v46;
      v41 = v45;
      v39 = v47;
      outlined destroy of Actions.PlaybackContext(a1, type metadata accessor for Actions.PlaybackContext);
      result = __swift_destroy_boxed_opaque_existential_0Tm(v42);
      v32 = v39;
      v31 = v40;
      v30 = v41;
      goto LABEL_11;
    }

    outlined destroy of TaskPriority?(v40, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
    outlined destroy of PresentationSource(v41);
    outlined destroy of Actions.PlaybackContext(a1, type metadata accessor for Actions.PlaybackContext);
    v26 = &_s8MusicKit0A4Item_pSgMd;
    v27 = &v45;
  }

  result = outlined destroy of TaskPriority?(v27, v26);
LABEL_10:
  v30 = 0uLL;
  v31 = 0uLL;
  v32 = 0uLL;
LABEL_11:
  *a4 = v30;
  a4[1] = v31;
  a4[2] = v32;
  return result;
}

uint64_t creatableStationMusicItem #1 (genericMusicItem:) in Actions.CreateStation.Context.init(playbackContext:presentationSource:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Artist();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Song();
  v22 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GenericMusicItem();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a1, v11);
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == enum case for GenericMusicItem.artist(_:))
  {
    (*(v12 + 96))(v14, v11);
    v16 = *(v5 + 32);
    v16(v7, v14, v4);
    *(a2 + 24) = v4;
    *(a2 + 32) = &protocol witness table for Artist;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    return (v16)(boxed_opaque_existential_1, v7, v4);
  }

  else if (v15 == enum case for GenericMusicItem.song(_:))
  {
    (*(v12 + 96))(v14, v11);
    v19 = *(v22 + 32);
    v19(v10, v14, v8);
    *(a2 + 24) = v8;
    *(a2 + 32) = &protocol witness table for Song;
    v20 = __swift_allocate_boxed_opaque_existential_1(a2);
    return (v19)(v20, v10, v8);
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t (**a7)()@<X8>)
{
  v75 = a4;
  v76 = a6;
  v69 = a3;
  v70 = a7;
  v62 = a2;
  v71 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v66 = *(v10 - 8);
  v74 = *(v66 + 64);
  v11 = __chkstk_darwin(v10 - 8);
  v68 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v73 = &v57 - v14;
  v15 = *(a5 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v13);
  v67 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v64 = &v57 - v19;
  __chkstk_darwin(v18);
  v21 = &v57 - v20;
  v57 = &v57 - v20;
  v22 = type metadata accessor for Actions.PlaybackContext();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22 - 8);
  v72 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v57 - v26;
  outlined init with copy of Actions.PlaybackContext(a2, &v57 - v26, type metadata accessor for Actions.PlaybackContext);
  v77 = v15;
  v59 = *(v15 + 16);
  v59(v21, a1, a5);
  v28 = *(v23 + 80);
  v29 = (v28 + 32) & ~v28;
  v30 = *(v15 + 80);
  v31 = (v24 + v30 + v29) & ~v30;
  v61 = v30 | v28 | 7;
  v63 = v16;
  v32 = swift_allocObject();
  v33 = v76;
  *(v32 + 16) = a5;
  *(v32 + 24) = v33;
  v34 = v32 + v29;
  v35 = v32;
  v65 = v32;
  v58 = type metadata accessor for Actions.PlaybackContext;
  outlined init with take of Actions.PlaybackContext(v27, v34, type metadata accessor for Actions.PlaybackContext);
  v60 = *(v77 + 32);
  v77 += 32;
  v60(v35 + v31, v57, a5);
  v36 = v64;
  v59(v64, v71, a5);
  outlined init with take of Actions.PlaybackContext(v62, v72, type metadata accessor for Actions.PlaybackContext);
  outlined init with copy of TaskPriority?(v75, v73, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v37 = (v30 + 32) & ~v30;
  v38 = (v16 + v28 + v37) & ~v28;
  v39 = *(v66 + 80);
  v40 = (v38 + v24 + v39) & ~v39;
  v41 = (v74 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  v43 = v76;
  *(v42 + 16) = a5;
  *(v42 + 24) = v43;
  v44 = v36;
  v45 = a5;
  v46 = a5;
  v47 = v60;
  v60(v42 + v37, v44, v45);
  outlined init with take of Actions.PlaybackContext(v72, v42 + v38, v58);
  outlined init with take of URL?(v73, v42 + v40, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  outlined init with take of PresentationSource(v69, v42 + v41);
  v48 = v68;
  outlined init with take of URL?(v75, v68, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v49 = v67;
  v47(v67, v71, v46);
  v50 = (v39 + 32) & ~v39;
  v51 = (v74 + v30 + v50) & ~v30;
  v52 = swift_allocObject();
  v53 = v76;
  *(v52 + 16) = v46;
  *(v52 + 24) = v53;
  outlined init with take of URL?(v48, v52 + v50, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  result = (v47)(v52 + v51, v49, v46);
  v55 = v70;
  v56 = v65;
  *v70 = partial apply for closure #1 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:);
  v55[1] = v56;
  v55[2] = &async function pointer to partial apply for closure #2 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:);
  v55[3] = v42;
  v55[4] = &async function pointer to partial apply for closure #3 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:);
  v55[5] = v52;
  return result;
}

unint64_t closure #1 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v53 = type metadata accessor for Artist();
  v50 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v55 = *(v7 - 8);
  __chkstk_darwin(v7);
  v54 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Song();
  v57 = *(v9 - 8);
  v58 = v9;
  v10 = __chkstk_darwin(v9);
  v51 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v56 = &v48 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v48 - v15;
  v17 = *(a3 - 8);
  v18 = __chkstk_darwin(v14);
  v59 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v48 - v20;
  v22 = *a1;
  v23 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v24 = *(v22 + v23);
  if (!v24)
  {
    *&v68 = 0;
    *(&v68 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(34);
    v30._countAndFlagsBits = 0xD000000000000020;
    v30._object = 0x80000001004C6930;
    String.append(_:)(v30);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    return v68;
  }

  v49 = v7;
  v25 = *(v17 + 16);
  v25(v21, a2, a3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore18CatalogIDProviding_pMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *&v70 = 0;
    v68 = 0u;
    v69 = 0u;
    outlined destroy of TaskPriority?(&v68, &_s9MusicCore18CatalogIDProviding_pSgMd);
LABEL_11:

    v32 = 13;
    return v32 | 0xD000000000000010;
  }

  v48 = v17;
  outlined init with take of ActionPerforming(&v68, v76);
  v26 = v77;
  v27 = v78;
  __swift_project_boxed_opaque_existential_0Tm(v76, v77);
  (*(v27 + 8))(v26, v27);
  if (!v28)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v76);
    goto LABEL_11;
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v72 = v64;
  v73 = v65;
  v74 = v66;
  v75 = v67;
  v68 = v60;
  v69 = v61;
  v70 = v62;
  v71 = v63;
  if (v66 > 1u)
  {
    v29 = v48;
    if (v66 == 2)
    {

      goto LABEL_16;
    }
  }

  else
  {
    v29 = v48;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v33 & 1) == 0)
  {

    outlined destroy of ApplicationCapabilities(&v68);
    __swift_destroy_boxed_opaque_existential_0Tm(v76);
    v32 = 5;
    return v32 | 0xD000000000000010;
  }

LABEL_16:
  if (specialized Set.contains(_:)(4, v70))
  {
    if (BYTE1(v68) == 1)
    {
      v34 = v59;
      v25(v59, a2, a3);
      v35 = v58;
      if (swift_dynamicCast())
      {
        v36 = v56;
        v37 = v57;
        (*(v57 + 32))(v56, v16, v35);
        v38 = MPCPlaybackEngine.state<A>(for:)();
        v39 = *(v37 + 16);
        v40 = v51;
        v39(v51, v36, v35);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore0A9ItemStateCy0A3Kit4SongVGMd);
        swift_allocObject();

        specialized MusicItemState.init(item:musicKitItemState:player:)(v40, v38, v24);

        __chkstk_darwin(v41);
        *(&v48 - 2) = v35;
        *(&v48 - 1) = &protocol witness table for Song;
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        *(&v48 - 2) = v35;
        *(&v48 - 1) = &protocol witness table for Song;
        swift_getKeyPath();
        v43 = v54;
        static Published.subscript.getter();

        v44 = MusicPlayer.PlayabilityStatus.actionSupportedStatus.getter();

        outlined destroy of ApplicationCapabilities(&v68);
        (*(v55 + 8))(v43, v49);
        (*(v57 + 8))(v56, v35);
        (*(v29 + 8))(v34, a3);
        __swift_destroy_boxed_opaque_existential_0Tm(v76);
        return v44;
      }

      else
      {
        v46 = v52;
        v45 = v53;
        v47 = swift_dynamicCast();

        outlined destroy of ApplicationCapabilities(&v68);
        if (v47)
        {
          (*(v50 + 8))(v46, v45);
          (*(v29 + 8))(v34, a3);
          __swift_destroy_boxed_opaque_existential_0Tm(v76);
          return 0;
        }

        else
        {
          (*(v29 + 8))(v34, a3);
          __swift_destroy_boxed_opaque_existential_0Tm(v76);
          return 0xD000000000000010;
        }
      }
    }

    else
    {

      outlined destroy of ApplicationCapabilities(&v68);
      __swift_destroy_boxed_opaque_existential_0Tm(v76);
      return 0xD000000000000017;
    }
  }

  else
  {

    outlined destroy of ApplicationCapabilities(&v68);
    __swift_destroy_boxed_opaque_existential_0Tm(v76);
    return 0xD000000000000016;
  }
}

uint64_t MusicPlayer.PlayabilityStatus.actionSupportedStatus.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v1, v6);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v7 + 96))(v9, v6);
    (*(v3 + 32))(v5, v9, v2);
    v17 = 0;
    v18 = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v11 = v17;
    (*(v3 + 8))(v5, v2);
  }

  else if (v10 == enum case for MusicPlayer.PlayabilityStatus.playable(_:))
  {
    return 0;
  }

  else
  {
    if (one-time initialization token for actions != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.actions);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Unknown playability status", v15, 2u);
    }

    v17 = 0;
    v18 = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v11 = v17;
    (*(v7 + 8))(v9, v6);
  }

  return v11;
}

uint64_t closure #2 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[60] = a4;
  v5[61] = a5;
  v5[58] = a2;
  v5[59] = a3;
  v5[57] = a1;
  v5[62] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v5[63] = swift_task_alloc();
  v5[64] = swift_task_alloc();
  v5[65] = swift_task_alloc();
  v5[66] = swift_task_alloc();
  v5[67] = type metadata accessor for PlaybackIntentDescriptor(0);
  v5[68] = swift_task_alloc();
  v5[69] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s35_MusicKitInternal_MediaPlaybackCore0aE16IntentDescriptorVSgMd);
  v5[70] = swift_task_alloc();
  v7 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v5[71] = v7;
  v5[72] = *(v7 - 8);
  v5[73] = swift_task_alloc();
  v5[74] = swift_task_alloc();
  v5[75] = type metadata accessor for Notice.Variant(0);
  v5[76] = swift_task_alloc();
  type metadata accessor for Notice(0);
  v5[77] = swift_task_alloc();
  v5[78] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v5[79] = swift_task_alloc();
  v5[80] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit4SongVSgMd);
  v5[81] = swift_task_alloc();
  v5[82] = *(a5 - 8);
  v5[83] = swift_task_alloc();
  v5[84] = swift_task_alloc();
  v8 = type metadata accessor for Song();
  v5[85] = v8;
  v5[86] = *(v8 - 8);
  v5[87] = swift_task_alloc();

  return _swift_task_switch(closure #2 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:), 0, 0);
}

uint64_t closure #2 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:)()
{
  v1 = *(v0 + 688);
  v2 = *(*(v0 + 656) + 16);
  v2(*(v0 + 672), *(v0 + 456), *(v0 + 488));
  v3 = swift_dynamicCast();
  v4 = *(v1 + 56);
  if ((v3 & 1) == 0)
  {
    v16 = *(v0 + 648);
    v4(v16, 1, 1, *(v0 + 680));
    outlined destroy of TaskPriority?(v16, &_s8MusicKit4SongVSgMd);
    goto LABEL_9;
  }

  v5 = *(v0 + 696);
  v6 = *(v0 + 688);
  v7 = *(v0 + 680);
  v8 = *(v0 + 648);
  v9 = *(v0 + 464);
  v4(v8, 0, 1, v7);
  (*(v6 + 32))(v5, v8, v7);
  v10 = *v9;
  v11 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (!*(v10 + v11))
  {
    goto LABEL_8;
  }

  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v12 = *(v0 + 440);
  v13 = *(v0 + 696);
  if (!v12)
  {
LABEL_6:
    (*(*(v0 + 688) + 8))(v13, *(v0 + 680));
    goto LABEL_9;
  }

  MPCPlayerResponse.playState(for:)();
  v15 = v14;

  if (v15)
  {
LABEL_5:
    v13 = *(v0 + 696);
    goto LABEL_6;
  }

  swift_beginAccess();
  if (!*(v10 + v11))
  {
LABEL_8:
    (*(*(v0 + 688) + 8))(*(v0 + 696), *(v0 + 680));
    swift_endAccess();
    goto LABEL_9;
  }

  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v30 = *(v0 + 448);
  if (!v30)
  {
    goto LABEL_5;
  }

  v31 = [*(v0 + 448) tracklist];

  v32 = [v31 playingItem];
  if (!v32)
  {
    goto LABEL_5;
  }

  v33 = [v32 metadataObject];

  if (!v33)
  {
    goto LABEL_5;
  }

  v34 = [v33 innermostModelObject];
  *(v0 + 704) = v34;

  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (!v35)
  {
    v87 = *(v0 + 696);
    v88 = *(v0 + 688);
    v89 = *(v0 + 680);

    (*(v88 + 8))(v87, v89);
    goto LABEL_9;
  }

  v36 = [objc_opt_self() radioPlaybackIntentFromSong:v35];
  *(v0 + 712) = v36;
  if (!v36)
  {
    (*(*(v0 + 688) + 8))(*(v0 + 696), *(v0 + 680));

LABEL_9:
    v2(*(v0 + 664), *(v0 + 456), *(v0 + 488));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal14StationSeeding_pMd);
    if (swift_dynamicCast())
    {
      outlined init with take of ActionPerforming((v0 + 56), v0 + 16);
      outlined init with copy of ActionPerforming(v0 + 16, v0 + 96);
      MusicPlaybackIntentDescriptor.init(stationSeed:)();
      v19 = *(v0 + 592);
      v20 = *(v0 + 576);
      v21 = *(v0 + 568);
      v22 = *(v0 + 560);
      v23 = *(v0 + 544);
      v24 = *(v0 + 536);
      v25 = *(v0 + 528);
      v26 = *(v0 + 464);
      (*(v20 + 56))(v22, 0, 1, v21);
      v95 = *(v20 + 32);
      v95(v19, v22, v21);
      (*(v20 + 16))(v25, v19, v21);
      swift_storeEnumTagMultiPayload();
      v27 = type metadata accessor for Actions.PlaybackContext();
      *(v0 + 136) = 0u;
      *(v0 + 152) = 0u;
      *(v0 + 168) = 0;
      outlined init with copy of TaskPriority?(v26 + *(v27 + 28), v0 + 176, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd);
      v28 = v23 + v24[7];
      *(v28 + 32) = 0;
      *v28 = 0u;
      *(v28 + 16) = 0u;
      v29 = v23 + v24[8];
      *(v29 + 32) = 0;
      *v29 = 0u;
      *(v29 + 16) = 0u;
      *(v23 + v24[9]) = 0;
      *(v23 + v24[10]) = 0;
      *(v23 + v24[11]) = 0;
      outlined init with copy of Actions.PlaybackContext(v25, v23, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      outlined assign with copy of MusicItem?(v0 + 136, v28);
      *(v23 + v24[5]) = 2;
      *(v23 + v24[6]) = 1;
      outlined init with copy of TaskPriority?(v0 + 176, v0 + 256, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd);
      if (*(v0 + 280))
      {
        outlined init with take of ActionPerforming((v0 + 256), v0 + 216);
      }

      else
      {
        *(v0 + 424) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlSgMd);
        v51 = String.init<A>(reflecting:)();
        *(v0 + 240) = &type metadata for Player.CommandIssuerIdentity;
        *(v0 + 248) = &protocol witness table for Player.CommandIssuerIdentity;
        *(v0 + 216) = v51;
        *(v0 + 224) = v52;
        if (*(v0 + 280))
        {
          outlined destroy of TaskPriority?(v0 + 256, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd);
        }
      }

      v53 = *(v0 + 552);
      v54 = *(v0 + 544);
      v55 = *(v0 + 528);
      v56 = *(v0 + 520);
      v57 = *(v0 + 464);
      outlined assign with take of Player.CommandIssuer?(v0 + 216, v29);
      outlined destroy of TaskPriority?(v0 + 176, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd);
      outlined destroy of TaskPriority?(v0 + 136, &_s8MusicKit0A4Item_pSgMd);
      outlined destroy of Actions.PlaybackContext(v55, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      outlined init with take of Actions.PlaybackContext(v54, v53, type metadata accessor for PlaybackIntentDescriptor);
      v58 = (v57 + *(v27 + 24));
      v59 = *v58;
      v60 = v58[1];
      v61 = v58[2];
      v62 = v58[3];
      outlined init with copy of Actions.PlaybackContext(v53, v56, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v63 = *(v0 + 584);
        v64 = *(v0 + 576);
        v65 = *(v0 + 568);
        v95(v63, *(v0 + 520), v65);
        outlined copy of MPCPlaybackIntent.PlayActivityInformation?(v59, v60, v61, v62);
        v66 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
        specialized MPCPlaybackIntent.playActivityInformation.setter(v59, v60, v61, v62);
        outlined consume of MPCPlaybackIntent.PlayActivityInformation?(v59, v60, v61, v62);

        (*(v64 + 8))(v63, v65);
      }

      else
      {
        v67 = **(v0 + 520);
        outlined copy of MPCPlaybackIntent.PlayActivityInformation?(v59, v60, v61, v62);
        specialized MPCPlaybackIntent.playActivityInformation.setter(v59, v60, v61, v62);
        outlined consume of MPCPlaybackIntent.PlayActivityInformation?(v59, v60, v61, v62);
      }

      outlined init with copy of Actions.PlaybackContext(*(v0 + 552), *(v0 + 512), type metadata accessor for PlaybackIntentDescriptor.IntentType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v68 = *(v0 + 584);
        v69 = *(v0 + 576);
        v70 = *(v0 + 568);
        v95(v68, *(v0 + 512), v70);
        v71 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
        (*(v69 + 8))(v68, v70);
      }

      else
      {
        v71 = **(v0 + 512);
      }

      v72 = *(v0 + 632);
      outlined init with copy of TaskPriority?(*(v0 + 472), v72, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
      v73 = type metadata accessor for Actions.MetricsReportingContext();
      v74 = (*(*(v73 - 8) + 48))(v72, 1, v73);
      v75 = *(v0 + 632);
      if (v74 == 1)
      {
        outlined destroy of TaskPriority?(*(v0 + 632), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
        v76 = 0;
      }

      else
      {
        v77 = *v75;
        v78 = v75[1];
        outlined copy of MetricsEvent.Click.ActionContext?(*v75, v78);
        outlined destroy of Actions.PlaybackContext(v75, type metadata accessor for Actions.MetricsReportingContext);
        if (v78 == 12)
        {
          v76 = 0;
        }

        else
        {
          MetricsEvent.Click.ActionContext.rawValue.getter(v77, v78);
          outlined consume of MetricsEvent.Click.ActionContext?(v77, v78);
          v76 = String._bridgeToObjectiveC()();
        }
      }

      v79 = *(v0 + 552);
      v80 = *(v0 + 504);
      [v71 setPlayActivityFeatureName:v76];

      outlined init with copy of Actions.PlaybackContext(v79, v80, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v81 = *(v0 + 584);
        v82 = *(v0 + 576);
        v83 = *(v0 + 568);
        v95(v81, *(v0 + 504), v83);
        v84 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
        (*(v82 + 8))(v81, v83);
      }

      else
      {
        v84 = **(v0 + 504);
      }

      [v84 setPlayActivityRecommendationData:0];

      v85 = swift_task_alloc();
      *(v0 + 744) = v85;
      *v85 = v0;
      v85[1] = closure #2 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:);
      v86 = *(v0 + 552);

      return PlaybackController.add(_:route:)(v86, 0);
    }

    else
    {
      *(v0 + 88) = 0;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
      outlined destroy of TaskPriority?(v0 + 56, &_s16MusicKitInternal14StationSeeding_pSgMd);

      v17 = *(v0 + 8);

      return v17();
    }
  }

  v37 = v36;
  v38 = *(v0 + 640);
  v40 = *(v0 + 464);
  v39 = *(v0 + 472);
  v41 = type metadata accessor for Actions.PlaybackContext();
  v42 = (v40 + *(v41 + 24));
  v43 = *v42;
  v44 = v42[1];
  v45 = v42[2];
  v46 = v42[3];
  outlined copy of MPCPlaybackIntent.PlayActivityInformation?(*v42, v44, v45, v46);
  specialized MPCPlaybackIntent.playActivityInformation.setter(v43, v44, v45, v46);
  outlined consume of MPCPlaybackIntent.PlayActivityInformation?(v43, v44, v45, v46);
  outlined init with copy of TaskPriority?(v39, v38, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v47 = type metadata accessor for Actions.MetricsReportingContext();
  v48 = (*(*(v47 - 8) + 48))(v38, 1, v47);
  v49 = *(v0 + 640);
  if (v48 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 640), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
    v50 = 0;
  }

  else
  {
    v90 = *v49;
    v91 = v49[1];
    outlined copy of MetricsEvent.Click.ActionContext?(*v49, v91);
    outlined destroy of Actions.PlaybackContext(v49, type metadata accessor for Actions.MetricsReportingContext);
    if (v91 == 12)
    {
      v50 = 0;
    }

    else
    {
      MetricsEvent.Click.ActionContext.rawValue.getter(v90, v91);
      outlined consume of MetricsEvent.Click.ActionContext?(v90, v91);
      v50 = String._bridgeToObjectiveC()();
    }
  }

  v92 = *(v0 + 464);
  [v37 setPlayActivityFeatureName:v50];

  [v37 setPlayActivityRecommendationData:0];
  v93 = *(v41 + 28);
  v94 = swift_task_alloc();
  *(v0 + 720) = v94;
  *v94 = v0;
  v94[1] = closure #2 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:);

  return PlaybackController.insert(_:location:issuer:)(v37, 0, v92 + v93);
}

{
  *(*v1 + 728) = v0;

  if (v0)
  {
    v2 = closure #2 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:);
  }

  else
  {
    v2 = closure #2 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[78];
  v2 = v0[76];
  swift_storeEnumTagMultiPayload();
  static Notice.variant(_:)(v2, v1);
  outlined destroy of Actions.PlaybackContext(v2, type metadata accessor for Notice.Variant);
  type metadata accessor for MainActor();
  v0[92] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:), v4, v3);
}

{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    UIViewController.noticePresenting.getter((v0 + 42));

    v3 = v0[45];
    v4 = v0[78];
    if (v3)
    {
      v5 = v0[46];
      __swift_project_boxed_opaque_existential_0Tm(v0 + 42, v0[45]);
      (*(v5 + 8))(v4, 0, v3, v5);
      outlined destroy of Actions.PlaybackContext(v4, type metadata accessor for Notice);
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 42));
    }

    else
    {
      outlined destroy of Actions.PlaybackContext(v0[78], type metadata accessor for Notice);
      outlined destroy of TaskPriority?((v0 + 42), &_s9MusicCore16NoticePresenting_pSgMd);
    }
  }

  else
  {
    outlined destroy of Actions.PlaybackContext(v0[78], type metadata accessor for Notice);
  }

  return _swift_task_switch(closure #2 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:), 0, 0);
}

{
  v1 = *(v0 + 712);
  v2 = *(v0 + 696);
  v3 = *(v0 + 688);
  v4 = *(v0 + 680);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

{
  *(*v1 + 752) = v0;

  if (v0)
  {
    v2 = closure #2 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:);
  }

  else
  {
    v2 = closure #2 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[77];
  v2 = v0[76];
  swift_storeEnumTagMultiPayload();
  static Notice.variant(_:)(v2, v1);
  outlined destroy of Actions.PlaybackContext(v2, type metadata accessor for Notice.Variant);
  type metadata accessor for MainActor();
  v0[95] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:), v4, v3);
}

{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    UIViewController.noticePresenting.getter((v0 + 37));

    v3 = v0[40];
    v4 = v0[77];
    if (v3)
    {
      v5 = v0[41];
      __swift_project_boxed_opaque_existential_0Tm(v0 + 37, v0[40]);
      (*(v5 + 8))(v4, 0, v3, v5);
      outlined destroy of Actions.PlaybackContext(v4, type metadata accessor for Notice);
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 37));
    }

    else
    {
      outlined destroy of Actions.PlaybackContext(v0[77], type metadata accessor for Notice);
      outlined destroy of TaskPriority?((v0 + 37), &_s9MusicCore16NoticePresenting_pSgMd);
    }
  }

  else
  {
    outlined destroy of Actions.PlaybackContext(v0[77], type metadata accessor for Notice);
  }

  return _swift_task_switch(closure #2 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:), 0, 0);
}

{
  v1 = v0[74];
  v2 = v0[72];
  v3 = v0[71];
  outlined destroy of Actions.PlaybackContext(v0[69], type metadata accessor for PlaybackIntentDescriptor);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 2));

  v4 = v0[1];

  return v4();
}

{
  v17 = v0;
  v1 = *(v0 + 712);
  v2 = *(v0 + 696);
  v3 = *(v0 + 688);
  v4 = *(v0 + 680);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 728);
  if (one-time initialization token for actions != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.actions);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    *(v0 + 432) = v5;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v11 = String.init<A>(describing:)();
    v13 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to Create Station with error=%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }

  else
  {
  }

  v14 = *(v0 + 8);

  return v14();
}

{
  v16 = v0;
  v1 = v0[74];
  v2 = v0[72];
  v3 = v0[71];
  outlined destroy of Actions.PlaybackContext(v0[69], type metadata accessor for PlaybackIntentDescriptor);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 2));
  v4 = v0[94];
  if (one-time initialization token for actions != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.actions);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    v0[54] = v4;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v10 = String.init<A>(describing:)();
    v12 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to Create Station with error=%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t closure #3 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = type metadata accessor for MetricsEvent.Click(0);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v4[30] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[31] = v5;
  v4[32] = *(v5 - 8);
  v4[33] = swift_task_alloc();

  return _swift_task_switch(closure #3 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:), 0, 0);
}

uint64_t closure #3 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:)()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  outlined init with copy of TaskPriority?(*(v0 + 96), v3, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 240), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 232);
    v7 = *(v0 + 112);
    outlined init with take of Actions.PlaybackContext(*(v0 + 240), *(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 272) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 280) = v8;
    v9 = type metadata accessor for URL();
    *(v0 + 288) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 296) = v11;
    *(v0 + 304) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2EF0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    *(inited + 64) = 0;
    *(inited + 72) = 4;
    *(v0 + 312) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
    *(v0 + 320) = v14;
    *(v0 + 328) = v15;
    *(v0 + 344) = v16;
    swift_setDeallocating();
    swift_arrayDestroy();
    type metadata accessor for MainActor();
    *(v0 + 336) = static MainActor.shared.getter();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #3 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:), v18, v17);
  }
}

{
  v80 = *(v0 + 344);
  v73 = *(v0 + 312);
  v76 = *(v0 + 280);
  v78 = *(v0 + 328);
  v74 = *(v0 + 272);
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  v7 = *(v0 + 184);
  v72 = *(v0 + 176);

  outlined init with copy of TaskPriority?(v3, v4, &_s10Foundation3URLVSgMd);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  outlined init with copy of TaskPriority?(v1 + v2[5], v7, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 3077;
  outlined init with take of URL?(v4, v6 + v5[7], &_s10Foundation3URLVSgMd);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  outlined init with copy of TaskPriority?(v7, v72, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 344);
  v17 = *(v0 + 320);
  v18 = *(v0 + 328);
  v19 = *(v0 + 312);
  v20 = *(v0 + 176);
  if (v15 == 1)
  {

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v17, v18, v16, SBYTE1(v16));
    outlined destroy of TaskPriority?(v20, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v17, v18, v16, SBYTE1(v16));

    outlined destroy of Actions.PlaybackContext(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 184);
  v24 = *(v0 + 168);
  v25 = (*(v0 + 200) + *(*(v0 + 192) + 48));
  *v25 = v21;
  v25[1] = v22;
  outlined init with copy of TaskPriority?(v23, v24, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 168);
  if (v26 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 168), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    outlined destroy of Actions.PlaybackContext(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 184);
  v31 = *(v0 + 160);
  v32 = (*(v0 + 200) + *(*(v0 + 192) + 52));
  *v32 = v28;
  v32[1] = v29;
  outlined init with copy of TaskPriority?(v30, v31, &_s9MusicCore12MetricsEventV4PageVSgMd);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 296);
    v34 = *(v0 + 288);
    v35 = *(v0 + 216);
    outlined destroy of TaskPriority?(*(v0 + 160), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 160);
    outlined init with copy of TaskPriority?(v36 + v14[6], *(v0 + 216), &_s10Foundation3URLVSgMd);
    outlined destroy of Actions.PlaybackContext(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 184);
  v38 = *(v0 + 152);
  outlined init with take of URL?(*(v0 + 216), *(v0 + 200) + *(*(v0 + 192) + 56), &_s10Foundation3URLVSgMd);
  outlined init with copy of TaskPriority?(v37, v38, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 152);
  if (v39 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 152), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    outlined destroy of Actions.PlaybackContext(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 184);
  v43 = *(v0 + 144);
  *(*(v0 + 200) + *(*(v0 + 192) + 60)) = v41;
  outlined init with copy of TaskPriority?(v42, v43, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 144);
  if (v44 == 1)
  {
    outlined destroy of TaskPriority?(v45, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    outlined destroy of Actions.PlaybackContext(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 184);
  v48 = *(v0 + 136);
  *(*(v0 + 200) + *(*(v0 + 192) + 64)) = v46;
  outlined init with copy of TaskPriority?(v47, v48, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 136);
  if (v49 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 136), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    outlined destroy of Actions.PlaybackContext(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 184);
  v55 = *(v0 + 128);
  v56 = (*(v0 + 200) + *(*(v0 + 192) + 72));
  *v56 = v51;
  v56[1] = v52;
  outlined init with take of URL?(v54, v55, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 128);
  if (v57 == 1)
  {
    outlined destroy of TaskPriority?(v58, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    outlined destroy of Actions.PlaybackContext(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 200);
  v61 = *(v0 + 208);
  v62 = *(v0 + 192);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  outlined init with take of Actions.PlaybackContext(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 320);
  v63 = *(v0 + 328);
  v65 = *(v0 + 312);
  v66 = *(v0 + 264);
  v67 = *(v0 + 248);
  v68 = *(v0 + 232);
  v69 = *(v0 + 208);
  v70 = *(v0 + 344);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  outlined consume of MetricsEvent.Click.ActionDetails(v65, v64, v63, v70, SBYTE1(v70));
  outlined destroy of Actions.PlaybackContext(v69, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v68, &_s10Foundation3URLVSgMd);

  return _swift_task_switch(closure #3 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:), 0, 0);
}

{
  outlined destroy of Actions.PlaybackContext(*(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Actions.CreateStation.Context.menuItemTitle.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t (*Actions.CreateStation.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD00000000000001BLL;
  *(v0 + 24) = 0x80000001004C6800;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD00000000000001BLL;
  *(v1 + 24) = 0x80000001004C6800;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.CreateStation.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD00000000000001BLL;
  *(v0 + 24) = 0x80000001004C6800;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD00000000000001BLL;
  *(v1 + 24) = 0x80000001004C6800;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

double static Actions.Playback.action(context:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  specialized static Actions.Playback.action(context:)(a1, v7);
  v3 = v11;
  *(a2 + 64) = v10;
  *(a2 + 80) = v3;
  *(a2 + 96) = v12;
  *(a2 + 112) = v13;
  v4 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v4;
  result = *&v8;
  v6 = v9;
  *(a2 + 32) = v8;
  *(a2 + 48) = v6;
  return result;
}

uint64_t closure #2 in static Actions.Playback.action(context:)(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 24) + **(a2 + 24));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return v5();
}

double protocol witness for static ActionDefinition.action(context:) in conformance Actions.Playback@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v16[0] = *a1;
  v4 = *(a1 + 32);
  v16[1] = v3;
  v16[2] = v4;
  v17 = *(a1 + 48);
  specialized static Actions.Playback.action(context:)(v16, v9);
  v5 = v13;
  *(a2 + 64) = v12;
  *(a2 + 80) = v5;
  *(a2 + 96) = v14;
  *(a2 + 112) = v15;
  v6 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v6;
  result = *&v10;
  v8 = v11;
  *(a2 + 32) = v10;
  *(a2 + 48) = v8;
  return result;
}

uint64_t closure #2 in static Actions.Queue.action(context:)(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 40) + **(a2 + 40));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return v5();
}

uint64_t closure #3 in static Actions.Queue.action(context:)(uint64_t a1)
{
  v4 = (*(a1 + 56) + **(a1 + 56));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return v4();
}

__n128 protocol witness for static ActionDefinition.action(context:) in conformance Actions.Queue@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v12 = *(a1 + 64);
  v4 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v4;
  specialized static Actions.Queue.action(context:)(v11, v9);
  v5 = v9[7];
  *(a2 + 96) = v9[6];
  *(a2 + 112) = v5;
  *(a2 + 128) = v10;
  v6 = v9[3];
  *(a2 + 32) = v9[2];
  *(a2 + 48) = v6;
  v7 = v9[5];
  *(a2 + 64) = v9[4];
  *(a2 + 80) = v7;
  result = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:)@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v82 = a4;
  v83 = a7;
  v90 = a3;
  v84 = a5;
  v91 = *(a5 - 8);
  v92 = a6;
  v9 = __chkstk_darwin(a1);
  v81 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v80 = &v65 - v12;
  v14 = v13;
  __chkstk_darwin(v11);
  v87 = &v65 - v15;
  v16 = type metadata accessor for Actions.PlaybackContext();
  v88 = *(v16 - 8);
  v17 = v88[8];
  v18 = __chkstk_darwin(v16 - 8);
  v89 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v65 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMd);
  v85 = *(v21 - 8);
  v22 = v85[8];
  v23 = __chkstk_darwin(v21 - 8);
  v79 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v23);
  v26 = &v65 - v25;
  __chkstk_darwin(v24);
  v28 = &v65 - v27;
  v29 = *a2;
  v30 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (*(v29 + v30))
  {

    Player.state<A>(for:)(a1);

    MusicItemState.playabilityStatus.getter();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v33 = *(*(v32 - 8) + 56);
  v73 = v28;
  v33(v28, v31, 1, v32);
  v76 = type metadata accessor for Actions.PlaybackContext;
  v68 = v20;
  outlined init with copy of Actions.PlaybackContext(a2, v20, type metadata accessor for Actions.PlaybackContext);
  v67 = v26;
  outlined init with copy of TaskPriority?(v28, v26, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMd);
  v34 = v91;
  v72 = *(v91 + 16);
  v35 = v84;
  v72(v87, a1, v84);
  v36 = *(v88 + 80);
  v86 = a1;
  v37 = (v36 + 32) & ~v36;
  v38 = *(v85 + 80);
  v88 = a2;
  v39 = (v17 + v38 + v37) & ~v38;
  v74 = v17;
  v40 = *(v34 + 80);
  v70 = v22 + v40;
  v71 = v40 | v36 | v38;
  v78 = v14 + 7;
  v69 = v14;
  v66 = (v14 + 7 + ((v22 + v40 + v39) & ~v40)) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  v42 = v92;
  *(v41 + 16) = v35;
  *(v41 + 24) = v42;
  v75 = type metadata accessor for Actions.PlaybackContext;
  v43 = v41 + v37;
  v44 = v41;
  v77 = v41;
  outlined init with take of Actions.PlaybackContext(v68, v43, type metadata accessor for Actions.PlaybackContext);
  outlined init with take of URL?(v67, v44 + v39, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMd);
  v45 = *(v34 + 32);
  v91 = v34 + 32;
  v85 = v45;
  (v45)(v44 + ((v22 + v40 + v39) & ~v40), v87, v35);
  *(v44 + v66) = v90;
  v46 = v79;
  outlined init with take of URL?(v73, v79, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMd);
  v47 = v80;
  v72(v80, v86, v35);
  outlined init with copy of Actions.PlaybackContext(v88, v89, v76);
  v48 = (v38 + 32) & ~v38;
  v49 = (v70 + v48) & ~v40;
  v50 = (v69 + v36 + v49) & ~v36;
  v51 = (v74 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  v53 = v92;
  *(v52 + 16) = v35;
  *(v52 + 24) = v53;
  outlined init with take of URL?(v46, v52 + v48, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMd);
  v54 = v85;
  (v85)(v52 + v49, v47, v35);
  outlined init with take of Actions.PlaybackContext(v89, v52 + v50, v75);
  v55 = v90;
  *(v52 + v51) = v90;
  v56 = v81;
  v54(v81, v86, v35);
  v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v58 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v59 = (*(v57 + 64) + v40 + v58) & ~v40;
  v60 = (v78 + v59) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  v62 = v92;
  *(v61 + 16) = v35;
  *(v61 + 24) = v62;
  outlined init with take of URL?(v82, v61 + v58, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  (v85)(v61 + v59, v56, v35);
  *(v61 + v60) = v55;
  result = outlined destroy of Actions.PlaybackContext(v88, type metadata accessor for Actions.PlaybackContext);
  v64 = v83;
  *v83 = v55;
  v64[1] = partial apply for closure #1 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:);
  v64[2] = v77;
  v64[3] = &async function pointer to partial apply for closure #2 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:);
  v64[4] = v52;
  v64[5] = &async function pointer to partial apply for closure #3 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:);
  v64[6] = v61;
  return result;
}

unint64_t closure #1 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v97 = a4;
  v98 = a6;
  v101 = a2;
  v102 = a3;
  v8 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v90 = *(v8 - 8);
  v91 = v8;
  v9 = __chkstk_darwin(v8);
  v88 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v89 = &v87 - v12;
  __chkstk_darwin(v11);
  v93 = &v87 - v13;
  v14 = type metadata accessor for MusicPin.Item();
  v95 = *(v14 - 8);
  v96 = v14;
  __chkstk_darwin(v14);
  v94 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal0A3PinVSgMd);
  v17 = __chkstk_darwin(v16 - 8);
  v99 = &v87 - v18;
  v103 = a5;
  v100 = *(a5 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v87 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMd);
  __chkstk_darwin(v24 - 8);
  v26 = &v87 - v25;
  v27 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v87 = &v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v92 = &v87 - v32;
  __chkstk_darwin(v31);
  v34 = &v87 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMd);
  __chkstk_darwin(v35 - 8);
  v37 = &v87 - v36;
  v38 = type metadata accessor for Actions.PlaybackContext();
  outlined init with copy of TaskPriority?(a1 + *(v38 + 20), v37, &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMd);
  v39 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  LODWORD(a1) = (*(*(v39 - 8) + 48))(v37, 1, v39);
  outlined destroy of TaskPriority?(v37, &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMd);
  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  outlined init with copy of TaskPriority?(v101, v26, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMd);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    outlined destroy of TaskPriority?(v26, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMd);
    v104 = 0;
    v105 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    v104 = 0xD000000000000023;
    v105 = 0x80000001004C68A0;
    (*(v100 + 16))(v23, v102, v103);
    v41._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v41);

    return v104;
  }

  v42 = v28;
  v43 = *(v28 + 32);
  v44 = v34;
  v101 = v27;
  v43(v34, v26, v27);
  v46 = v102;
  v45 = v103;
  v47 = closure #1 in closure #1 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:)(v102, v97, v103);
  (*(v100 + 16))(v21, v46, v45);
  v48 = type metadata accessor for MusicPin();
  v49 = v99;
  v50 = swift_dynamicCast();
  v51 = *(*(v48 - 8) + 56);
  if (v50)
  {
    v52 = *(v48 - 8);
    v51(v49, 0, 1, v48);
    v53 = v49;
    v103 = v44;
    v54 = v94;
    MusicPin.item.getter();
    v55 = v95;
    v56 = v47;
    v57 = v96;
    v58 = v42;
    v59 = (*(v95 + 88))(v54, v96);
    v60 = enum case for MusicPin.Item.artist(_:);
    v61 = v54;
    v44 = v103;
    v62 = v57;
    v47 = v56;
    (*(v55 + 8))(v61, v62);
    (*(v52 + 8))(v53, v48);
    v63 = v59 == v60;
    v42 = v58;
    if (v63)
    {
      (*(v58 + 8))(v44, v101);
      return 0;
    }
  }

  else
  {
    v51(v49, 1, 1, v48);
    outlined destroy of TaskPriority?(v49, &_s16MusicKitInternal0A3PinVSgMd);
  }

  v64 = v101;
  if (!v47)
  {
    (*(v42 + 8))(v44, v101);
    return 0xD000000000000010;
  }

  v65 = *(v42 + 16);
  v66 = v92;
  v65(v92, v44, v101);
  v67 = (*(v42 + 88))(v66, v64);
  if (v67 != enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    if (v67 != enum case for MusicPlayer.PlayabilityStatus.playable(_:))
    {
      if (one-time initialization token for actions != -1)
      {
        swift_once();
      }

      v81 = v42;
      v82 = type metadata accessor for Logger();
      __swift_project_value_buffer(v82, static Logger.actions);
      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&_mh_execute_header, v83, v84, "Unknown playability status", v85, 2u);
      }

      v104 = 0;
      v105 = 0xE000000000000000;
      _StringGuts.grow(_:)(18);

      v104 = 0xD000000000000010;
      v105 = 0x80000001004C68F0;
      v65(v87, v44, v64);
      v86._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v86);

      v77 = v104;
      v78 = *(v81 + 8);
      v78(v44, v64);
      v79 = v66;
      v80 = v64;
      goto LABEL_25;
    }

    (*(v42 + 8))(v44, v64);
    return 0;
  }

  v68 = v42;
  (*(v42 + 96))(v66, v64);
  v70 = v90;
  v69 = v91;
  v71 = v93;
  (*(v90 + 32))(v93, v66, v91);
  v72 = *(v70 + 16);
  v73 = v89;
  v72(v89, v71, v69);
  v74 = (*(v70 + 88))(v73, v69);
  if (v74 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.ageVerificationRequired(_:) || v74 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:))
  {
    (*(v70 + 8))(v93, v69);
    (*(v42 + 8))(v44, v64);
    return 0;
  }

  v104 = 0;
  v105 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v104 = 0xD000000000000018;
  v105 = 0x80000001004C6910;
  v75 = v93;
  v72(v88, v93, v69);
  v76._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v76);

  v77 = v104;
  v78 = *(v70 + 8);
  v78(v75, v69);
  (*(v68 + 8))(v44, v64);
  v79 = v73;
  v80 = v69;
LABEL_25:
  v78(v79, v80);
  return v77;
}

BOOL closure #1 in closure #1 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a2;
  v55 = a1;
  v4 = type metadata accessor for MusicPin.Item();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v39 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for MusicPin();
  v41 = *(v46 - 8);
  v6 = __chkstk_darwin(v46);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v45 = &v38 - v8;
  v49 = type metadata accessor for Station();
  v44 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for Song();
  v47 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MusicVideo();
  v50 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Playlist();
  v54 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Album();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a3 - 8);
  __chkstk_darwin(v19);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v24, v55, a3);
  if (swift_dynamicCast())
  {
    (*(v18 + 8))(v21, v17);
LABEL_5:
    (*(v22 + 8))(v24, a3);
    return 1;
  }

  if (swift_dynamicCast())
  {
    (*(v54 + 8))(v16, v14);
    goto LABEL_5;
  }

  if (!swift_dynamicCast())
  {
    v27 = v51;
    v26 = v52;
    if (swift_dynamicCast())
    {
      v28 = v47;
LABEL_12:
      (*(v28 + 8))(v27, v26);
      goto LABEL_13;
    }

    v27 = v48;
    v26 = v49;
    if (swift_dynamicCast())
    {
      v28 = v44;
      goto LABEL_12;
    }

    v29 = v45;
    v30 = v46;
    if (swift_dynamicCast())
    {
      v32 = v40;
      v31 = v41;
      (*(v41 + 32))(v40, v29, v30);
      v33 = v39;
      MusicPin.item.getter();
      v35 = v42;
      v34 = v43;
      v36 = (*(v42 + 88))(v33, v43);
      if (v36 == enum case for MusicPin.Item.album(_:) || v36 == enum case for MusicPin.Item.artist(_:))
      {
        goto LABEL_21;
      }

      if (v36 == enum case for MusicPin.Item.musicVideo(_:))
      {
LABEL_19:
        (*(v35 + 8))(v33, v34);
        v37 = v53 == 0;
        (*(v31 + 8))(v32, v30);
        (*(v22 + 8))(v24, a3);
        return v37;
      }

      if (v36 == enum case for MusicPin.Item.playlist(_:))
      {
LABEL_21:
        (*(v35 + 8))(v33, v34);
        (*(v31 + 8))(v32, v30);
        goto LABEL_5;
      }

      if (v36 == enum case for MusicPin.Item.song(_:))
      {
        goto LABEL_19;
      }

      (*(v35 + 8))(v33, v34);
      (*(v31 + 8))(v32, v30);
    }

    (*(v22 + 8))(v24, a3);
    return 0;
  }

  (*(v50 + 8))(v13, v11);
LABEL_13:
  (*(v22 + 8))(v24, a3);
  return v53 == 0;
}

uint64_t closure #2 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[33] = a5;
  v6[34] = a6;
  v6[31] = a3;
  v6[32] = a4;
  v6[29] = a1;
  v6[30] = a2;
  v8 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v6[35] = v8;
  v6[36] = *(v8 - 8);
  v6[37] = swift_task_alloc();
  v6[38] = type metadata accessor for PlaybackIntentDescriptor(0);
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMd);
  v6[41] = swift_task_alloc();
  v9 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v6[42] = v9;
  v6[43] = *(v9 - 8);
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v10 = type metadata accessor for MusicPin.Item();
  v6[48] = v10;
  v6[49] = *(v10 - 8);
  v6[50] = swift_task_alloc();
  v6[51] = *(a5 - 8);
  v6[52] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal0A3PinVSgMd);
  v6[53] = swift_task_alloc();
  v11 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v6[54] = v11;
  v6[55] = *(v11 - 8);
  v6[56] = swift_task_alloc();
  v6[57] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSg_AGtMd);
  v6[58] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMd);
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();

  return _swift_task_switch(closure #2 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:), 0, 0);
}

uint64_t closure #2 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:)()
{
  v1 = *(v0 + 480);
  v3 = *(v0 + 456);
  v2 = *(v0 + 464);
  v4 = *(v0 + 432);
  v5 = *(v0 + 440);
  v6 = *(v0 + 232);
  (*(v5 + 104))(v1, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v7 = *(v3 + 48);
  outlined init with copy of TaskPriority?(v6, v2, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMd);
  outlined init with copy of TaskPriority?(v1, v2 + v7, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMd);
  v8 = *(v5 + 48);
  if (v8(v2, 1, v4) == 1)
  {
    v9 = *(v0 + 432);
    outlined destroy of TaskPriority?(*(v0 + 480), &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMd);
    if (v8(v2 + v7, 1, v9) == 1)
    {
      outlined destroy of TaskPriority?(*(v0 + 464), &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMd);
      goto LABEL_14;
    }
  }

  else
  {
    v10 = *(v0 + 432);
    outlined init with copy of TaskPriority?(*(v0 + 464), *(v0 + 472), &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMd);
    v11 = v8(v2 + v7, 1, v10);
    v12 = *(v0 + 472);
    v13 = *(v0 + 480);
    if (v11 != 1)
    {
      v32 = *(v0 + 464);
      v34 = *(v0 + 440);
      v33 = *(v0 + 448);
      v35 = *(v0 + 432);
      (*(v34 + 32))(v33, v2 + v7, v35);
      lazy protocol witness table accessor for type MusicPlayer.PlayabilityStatus and conformance MusicPlayer.PlayabilityStatus(&lazy protocol witness table cache variable for type MusicPlayer.PlayabilityStatus and conformance MusicPlayer.PlayabilityStatus, &type metadata accessor for MusicPlayer.PlayabilityStatus);
      v36 = dispatch thunk of static Equatable.== infix(_:_:)();
      v37 = *(v34 + 8);
      v37(v33, v35);
      outlined destroy of TaskPriority?(v13, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMd);
      v37(v12, v35);
      outlined destroy of TaskPriority?(v32, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMd);
      if (v36)
      {
        goto LABEL_14;
      }

      goto LABEL_7;
    }

    v14 = *(v0 + 432);
    v15 = *(v0 + 440);
    outlined destroy of TaskPriority?(*(v0 + 480), &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMd);
    (*(v15 + 8))(v12, v14);
  }

  outlined destroy of TaskPriority?(*(v0 + 464), &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSg_AGtMd);
LABEL_7:
  v16 = *(*(v0 + 408) + 16);
  v16(*(v0 + 416), *(v0 + 240), *(v0 + 264));
  v17 = type metadata accessor for MusicPin();
  v18 = swift_dynamicCast();
  v19 = *(*(v17 - 8) + 56);
  v20 = *(v0 + 424);
  if (!v18)
  {
    v19(*(v0 + 424), 1, 1, v17);
    outlined destroy of TaskPriority?(v20, &_s16MusicKitInternal0A3PinVSgMd);
LABEL_12:
    v29 = *(v0 + 264);
    v28 = *(v0 + 272);
    v30 = *(v0 + 240);
    *(v0 + 40) = v29;
    *(v0 + 48) = *(v28 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    v16(boxed_opaque_existential_1, v30, v29);
    *(v0 + 56) = 0;
    specialized static SubscriptionUpsellPresenter.present(for:)(v0 + 16);
    outlined destroy of SubscriptionUpsellPresenter.Placement(v0 + 16);
LABEL_16:

    v43 = *(v0 + 8);

    return v43();
  }

  v21 = *(v17 - 8);
  v23 = *(v0 + 392);
  v22 = *(v0 + 400);
  v24 = *(v0 + 384);
  v19(*(v0 + 424), 0, 1, v17);
  MusicPin.item.getter();
  v82 = v16;
  v25 = (*(v23 + 88))(v22, v24);
  v26 = enum case for MusicPin.Item.artist(_:);
  (*(v23 + 8))(v22, v24);
  (*(v21 + 8))(v20, v17);
  v27 = v25 == v26;
  v16 = v82;
  if (!v27)
  {
    goto LABEL_12;
  }

LABEL_14:
  v38 = *(v0 + 336);
  v39 = *(v0 + 344);
  v40 = *(v0 + 328);
  v41 = *(v0 + 248);
  v42 = type metadata accessor for Actions.PlaybackContext();
  outlined init with copy of TaskPriority?(v41 + *(v42 + 20), v40, &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMd);
  if ((*(v39 + 48))(v40, 1, v38) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 328), &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMd);
    goto LABEL_16;
  }

  v45 = *(v0 + 408);
  v47 = *(v0 + 368);
  v46 = *(v0 + 376);
  v81 = *(v0 + 360);
  v48 = *(v0 + 304);
  v49 = *(v0 + 312);
  v51 = *(v0 + 264);
  v50 = *(v0 + 272);
  v79 = *(v0 + 240);
  v80 = *(v0 + 248);
  outlined init with take of Actions.PlaybackContext(*(v0 + 328), v46, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  outlined init with copy of Actions.PlaybackContext(v46, v47, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  *(v0 + 88) = v51;
  *(v0 + 96) = *(v50 + 8);
  v52 = __swift_allocate_boxed_opaque_existential_1((v0 + 64));
  (*(v45 + 16))(v52, v79, v51);
  outlined init with copy of TaskPriority?(v80 + *(v42 + 28), v0 + 104, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd);
  v53 = v49 + v48[7];
  *(v53 + 32) = 0;
  *v53 = 0u;
  *(v53 + 16) = 0u;
  v54 = v49 + v48[8];
  *(v54 + 32) = 0;
  *v54 = 0u;
  *(v54 + 16) = 0u;
  *(v49 + v48[9]) = 0;
  *(v49 + v48[10]) = 0;
  *(v49 + v48[11]) = 0;
  outlined init with copy of Actions.PlaybackContext(v47, v49, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  outlined init with copy of Actions.PlaybackContext(v49, v81, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v56 = *(v0 + 360);
  if (EnumCaseMultiPayload == 1)
  {
    v58 = *(v0 + 288);
    v57 = *(v0 + 296);
    v59 = *(v0 + 280);
    v60 = *(v0 + 256);
    (*(v58 + 32))(v57, v56, v59);
    v61 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    [v61 setShuffleMode:v60];

    (*(v58 + 8))(v57, v59);
  }

  else
  {
    v62 = *v56;
    [*v56 setShuffleMode:*(v0 + 256)];
  }

  outlined init with copy of Actions.PlaybackContext(*(v0 + 312), *(v0 + 352), type metadata accessor for PlaybackIntentDescriptor.IntentType);
  v63 = swift_getEnumCaseMultiPayload();
  v64 = *(v0 + 352);
  if (v63 == 1)
  {
    v66 = *(v0 + 288);
    v65 = *(v0 + 296);
    v67 = *(v0 + 280);
    (*(v66 + 32))(v65, v64, v67);
    v68 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    [v68 setRepeatMode:0];

    (*(v66 + 8))(v65, v67);
  }

  else
  {
    v69 = *v64;
    [*v64 setRepeatMode:0];
  }

  v71 = *(v0 + 304);
  v70 = *(v0 + 312);
  outlined assign with copy of MusicItem?(v0 + 64, v53);
  *(v70 + *(v71 + 20)) = 2;
  *(v70 + *(v71 + 24)) = 0;
  outlined init with copy of TaskPriority?(v0 + 104, v0 + 184, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd);
  if (*(v0 + 208))
  {
    outlined init with take of ActionPerforming((v0 + 184), v0 + 144);
  }

  else
  {
    *(v0 + 224) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlSgMd);
    v72 = String.init<A>(reflecting:)();
    *(v0 + 168) = &type metadata for Player.CommandIssuerIdentity;
    *(v0 + 176) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v0 + 144) = v72;
    *(v0 + 152) = v73;
    if (*(v0 + 208))
    {
      outlined destroy of TaskPriority?(v0 + 184, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd);
    }
  }

  v74 = *(v0 + 368);
  v76 = *(v0 + 312);
  v75 = *(v0 + 320);
  outlined assign with take of Player.CommandIssuer?(v0 + 144, v54);
  outlined destroy of TaskPriority?(v0 + 104, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd);
  outlined destroy of Actions.PlaybackContext(v74, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  outlined destroy of TaskPriority?(v0 + 64, &_s8MusicKit0A4Item_pSgMd);
  outlined init with take of Actions.PlaybackContext(v76, v75, type metadata accessor for PlaybackIntentDescriptor);
  v77 = swift_task_alloc();
  *(v0 + 488) = v77;
  *v77 = v0;
  v77[1] = closure #2 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:);
  v78 = *(v0 + 320);

  return PlaybackController.add(_:route:)(v78, 0);
}

{

  if (v0)
  {

    v1 = closure #2 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:);
  }

  else
  {
    v1 = closure #2 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:);
  }

  return _swift_task_switch(v1, 0, 0);
}

{
  v1 = v0[47];
  outlined destroy of Actions.PlaybackContext(v0[40], type metadata accessor for PlaybackIntentDescriptor);
  outlined destroy of Actions.PlaybackContext(v1, type metadata accessor for PlaybackIntentDescriptor.IntentType);

  v2 = v0[1];

  return v2();
}

uint64_t closure #3 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = type metadata accessor for MetricsEvent.Click(0);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v5[28] = swift_task_alloc();
  v6 = type metadata accessor for Actions.MetricsReportingContext();
  v5[29] = v6;
  v5[30] = *(v6 - 8);
  v5[31] = swift_task_alloc();

  return _swift_task_switch(closure #3 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:), 0, 0);
}

uint64_t closure #3 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:)()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  outlined init with copy of TaskPriority?(*(v0 + 72), v3, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 224), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 216);
    v7 = *(v0 + 96);
    outlined init with take of Actions.PlaybackContext(*(v0 + 224), *(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 256) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 264) = v8;
    v9 = type metadata accessor for URL();
    *(v0 + 272) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 280) = v11;
    *(v0 + 288) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2400;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(v0 + 296) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
    *(v0 + 304) = v14;
    *(v0 + 312) = v15;
    *(v0 + 328) = v16;
    swift_setDeallocating();
    outlined destroy of MetricsEvent.Click.ActionDetails.Key(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 320) = static MainActor.shared.getter();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #3 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:), v18, v17);
  }
}

{
  v83 = *(v0 + 328);
  v76 = *(v0 + 296);
  v79 = *(v0 + 264);
  v81 = *(v0 + 312);
  v77 = *(v0 + 256);
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  v75 = *(v0 + 160);
  v8 = *(v0 + 88);

  if (v8)
  {
    v9 = 53;
  }

  else
  {
    v9 = 31;
  }

  v74 = v9;
  outlined init with copy of TaskPriority?(v3, v4, &_s10Foundation3URLVSgMd);
  v10 = *(v1 + v2[7]);
  v11 = *v1;
  v12 = v1[1];
  outlined init with copy of TaskPriority?(v1 + v2[5], v7, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v84 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v13 = (v6 + v5[20]);
  *v13 = 0;
  v13[1] = 0;
  *v6 = v77;
  *(v6 + 8) = v79;
  *(v6 + 16) = 5;
  *(v6 + 17) = v74;
  outlined init with take of URL?(v4, v6 + v5[7], &_s10Foundation3URLVSgMd);
  *(v6 + v5[8]) = v10;
  v14 = (v6 + v5[9]);
  v78 = v11;
  v80 = v12;
  *v14 = v11;
  v14[1] = v12;
  v15 = v6 + v5[10];
  *v15 = v76;
  *(v15 + 16) = v81;
  *(v15 + 24) = v83;
  outlined init with copy of TaskPriority?(v7, v75, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v16 = type metadata accessor for MetricsEvent.Page(0);
  v82 = *(*(v16 - 1) + 48);
  v17 = v82(v75, 1, v16);
  v18 = *(v0 + 328);
  v19 = *(v0 + 304);
  v20 = *(v0 + 312);
  v21 = *(v0 + 296);
  v22 = *(v0 + 160);
  if (v17 == 1)
  {

    outlined copy of MetricsEvent.Click.ActionContext?(v78, v80);

    outlined copy of MetricsEvent.Click.ActionDetails(v21, v19, v20, v18, SBYTE1(v18));
    outlined destroy of TaskPriority?(v22, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v23 = *v22;
    v24 = v22[1];

    outlined copy of MetricsEvent.Click.ActionContext?(v78, v80);

    outlined copy of MetricsEvent.Click.ActionDetails(v21, v19, v20, v18, SBYTE1(v18));

    outlined destroy of Actions.PlaybackContext(v22, type metadata accessor for MetricsEvent.Page);
  }

  v25 = *(v0 + 168);
  v26 = *(v0 + 152);
  v27 = (*(v0 + 184) + *(*(v0 + 176) + 48));
  *v27 = v23;
  v27[1] = v24;
  outlined init with copy of TaskPriority?(v25, v26, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v28 = v82(v26, 1, v16);
  v29 = *(v0 + 152);
  if (v28 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 152), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v30 = *(v29 + 16);
    v31 = *(v29 + 24);

    outlined destroy of Actions.PlaybackContext(v29, type metadata accessor for MetricsEvent.Page);
  }

  v32 = *(v0 + 168);
  v33 = *(v0 + 144);
  v34 = (*(v0 + 184) + *(*(v0 + 176) + 52));
  *v34 = v30;
  v34[1] = v31;
  outlined init with copy of TaskPriority?(v32, v33, &_s9MusicCore12MetricsEventV4PageVSgMd);
  if (v82(v33, 1, v16) == 1)
  {
    v35 = *(v0 + 280);
    v36 = *(v0 + 272);
    v37 = *(v0 + 200);
    outlined destroy of TaskPriority?(*(v0 + 144), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v35(v37, 1, 1, v36);
  }

  else
  {
    v38 = *(v0 + 144);
    outlined init with copy of TaskPriority?(v38 + v16[6], *(v0 + 200), &_s10Foundation3URLVSgMd);
    outlined destroy of Actions.PlaybackContext(v38, type metadata accessor for MetricsEvent.Page);
  }

  v39 = *(v0 + 168);
  v40 = *(v0 + 136);
  outlined init with take of URL?(*(v0 + 200), *(v0 + 184) + *(*(v0 + 176) + 56), &_s10Foundation3URLVSgMd);
  outlined init with copy of TaskPriority?(v39, v40, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v41 = v82(v40, 1, v16);
  v42 = *(v0 + 136);
  if (v41 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 136), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v43 = 0;
  }

  else
  {
    v43 = *(v42 + v16[7]);

    outlined destroy of Actions.PlaybackContext(v42, type metadata accessor for MetricsEvent.Page);
  }

  v44 = *(v0 + 168);
  v45 = *(v0 + 128);
  *(*(v0 + 184) + *(*(v0 + 176) + 60)) = v43;
  outlined init with copy of TaskPriority?(v44, v45, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v46 = v82(v45, 1, v16);
  v47 = *(v0 + 128);
  if (v46 == 1)
  {
    outlined destroy of TaskPriority?(v47, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v48 = 1;
  }

  else
  {
    v48 = *(v47 + v16[9]);
    outlined destroy of Actions.PlaybackContext(v47, type metadata accessor for MetricsEvent.Page);
  }

  v49 = *(v0 + 168);
  v50 = *(v0 + 120);
  *(*(v0 + 184) + *(*(v0 + 176) + 64)) = v48;
  outlined init with copy of TaskPriority?(v49, v50, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v51 = v82(v50, 1, v16);
  v52 = *(v0 + 120);
  if (v51 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 120), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v53 = 0;
    v54 = 0;
  }

  else
  {
    v55 = (v52 + v16[8]);
    v53 = *v55;
    v54 = v55[1];

    outlined destroy of Actions.PlaybackContext(v52, type metadata accessor for MetricsEvent.Page);
  }

  v56 = *(v0 + 168);
  v57 = *(v0 + 112);
  v58 = (*(v0 + 184) + *(*(v0 + 176) + 72));
  *v58 = v53;
  v58[1] = v54;
  outlined init with take of URL?(v56, v57, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v59 = v82(v57, 1, v16);
  v60 = *(v0 + 112);
  if (v59 == 1)
  {
    outlined destroy of TaskPriority?(v60, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v61 = 2;
  }

  else
  {
    v61 = *(v60 + v16[11]);
    outlined destroy of Actions.PlaybackContext(v60, type metadata accessor for MetricsEvent.Page);
  }

  v62 = *(v0 + 184);
  v63 = *(v0 + 192);
  v64 = *(v0 + 176);
  *(v62 + *(v64 + 68)) = v61;
  *(v62 + *(v64 + 44)) = v84;
  outlined init with take of Actions.PlaybackContext(v62, v63, type metadata accessor for MetricsEvent.Click);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v66 = *(v0 + 304);
  v65 = *(v0 + 312);
  v67 = *(v0 + 296);
  v68 = *(v0 + 248);
  v69 = *(v0 + 232);
  v70 = *(v0 + 216);
  v71 = *(v0 + 192);
  v72 = *(v0 + 328);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v71, *(v68 + *(v69 + 24)), *(v68 + *(v69 + 24) + 8), *(v68 + *(v69 + 36)), *(v68 + *(v69 + 36) + 8), *(v68 + *(v69 + 36) + 16));
  outlined consume of MetricsEvent.Click.ActionDetails(v67, v66, v65, v72, SBYTE1(v72));
  outlined destroy of Actions.PlaybackContext(v71, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v70, &_s10Foundation3URLVSgMd);

  return _swift_task_switch(closure #3 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:), 0, 0);
}

uint64_t closure #1 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)(uint64_t *a1, void (*a2)(char *, uint64_t, uint64_t), void *a3, uint64_t a4, uint64_t a5)
{
  v34[1] = a5;
  v39 = a2;
  v40 = a4;
  v38 = a3;
  v6 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v36 = *(v6 - 8);
  v37 = v6;
  __chkstk_darwin(v6);
  v35 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v34[0] = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMd);
  __chkstk_darwin(v11 - 8);
  v13 = v34 - v12;
  v14 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = (v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v20 = v34 - v19;
  v21 = type metadata accessor for Actions.PlaybackContext();
  outlined init with copy of TaskPriority?(a1 + *(v21 + 20), v13, &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMd);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    outlined init with take of Actions.PlaybackContext(v13, v20, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    v23 = *a1;
    v24 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
    swift_beginAccess();
    if (*(v23 + v24))
    {
      outlined init with copy of Actions.PlaybackContext(v20, v18, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v25 = v34[0];
        (*(v34[0] + 32))(v10, v18, v8);

        v26 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
        (*(v25 + 8))(v10, v8);
      }

      else
      {
        v26 = *v18;
      }

      v28 = v38;
      outlined copy of Player.InsertCommand.Location(v38);
      v29 = v26;
      v30 = specialized Player.canPerform(_:)(v29, v28);

      if (v30)
      {
        Player.state<A>(for:)(v39);
        v31 = v35;
        MusicItemState.playabilityStatus.getter();

        v22 = MusicPlayer.PlayabilityStatus.actionSupportedStatus.getter();

        outlined consume of Player.InsertCommand.Location(v28);
        (*(v36 + 8))(v31, v37);
LABEL_12:
        outlined destroy of Actions.PlaybackContext(v20, type metadata accessor for PlaybackIntentDescriptor.IntentType);
        return v22;
      }

      v42 = 0;
      v43 = 0xE000000000000000;
      _StringGuts.grow(_:)(34);
      v32._countAndFlagsBits = 0xD000000000000020;
      v32._object = 0x80000001004C6A80;
      String.append(_:)(v32);
      v41 = v28;
      _print_unlocked<A, B>(_:_:)();

      outlined consume of Player.InsertCommand.Location(v28);
    }

    else
    {
      v42 = 0;
      v43 = 0xE000000000000000;
      _StringGuts.grow(_:)(39);
      v27._countAndFlagsBits = 0xD000000000000025;
      v27._object = 0x80000001004C6A50;
      String.append(_:)(v27);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
    }

    v22 = v42;
    goto LABEL_12;
  }

  v22 = 0xD000000000000012;
  outlined destroy of TaskPriority?(v13, &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMd);
  return v22;
}

uint64_t closure #2 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  type metadata accessor for Notice(0);
  v3[11] = swift_task_alloc();
  v4 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMd);
  v3[15] = swift_task_alloc();
  v5 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(closure #2 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:), 0, 0);
}

uint64_t closure #2 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[8];
  v5 = type metadata accessor for Actions.PlaybackContext();
  outlined init with copy of TaskPriority?(v4 + *(v5 + 20), v3, &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMd);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(v0[15], &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMd);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v9 = v0[18];
    v8 = v0[19];
    outlined init with take of Actions.PlaybackContext(v0[15], v8, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    outlined init with copy of Actions.PlaybackContext(v8, v9, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v11 = v0[18];
    if (EnumCaseMultiPayload == 1)
    {
      v13 = v0[13];
      v12 = v0[14];
      v14 = v0[12];
      (*(v13 + 32))(v12, v11, v14);
      v15 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
      (*(v13 + 8))(v12, v14);
    }

    else
    {
      v15 = *v11;
    }

    v0[20] = v15;
    v16 = v0[8];
    v17 = *(v5 + 28);
    v18 = swift_task_alloc();
    v0[21] = v18;
    *v18 = v0;
    v18[1] = closure #2 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:);
    v19 = v0[9];

    return PlaybackController.insert(_:location:issuer:)(v15, v19, v16 + v17);
  }
}

{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = closure #2 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:);
  }

  else
  {

    v3 = closure #2 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  Player.InsertCommand.Location.notice.getter(*(v0 + 88));
  type metadata accessor for MainActor();
  *(v0 + 184) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:), v2, v1);
}

{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    UIViewController.noticePresenting.getter((v0 + 2));

    v3 = v0[5];
    v4 = v0[11];
    if (v3)
    {
      v5 = v0[6];
      __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v0[5]);
      (*(v5 + 8))(v4, 0, v3, v5);
      outlined destroy of Actions.PlaybackContext(v4, type metadata accessor for Notice);
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 2));
    }

    else
    {
      outlined destroy of Actions.PlaybackContext(v0[11], type metadata accessor for Notice);
      outlined destroy of TaskPriority?((v0 + 2), &_s9MusicCore16NoticePresenting_pSgMd);
    }
  }

  else
  {
    outlined destroy of Actions.PlaybackContext(v0[11], type metadata accessor for Notice);
  }

  return _swift_task_switch(closure #2 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:), 0, 0);
}

{
  outlined destroy of Actions.PlaybackContext(*(v0 + 152), type metadata accessor for PlaybackIntentDescriptor.IntentType);

  v1 = *(v0 + 8);

  return v1();
}

{
  v15 = v0;

  if (one-time initialization token for actions != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.actions);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 176);
  v6 = *(v0 + 152);
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446210;
    *(v0 + 56) = v5;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v9 = String.init<A>(describing:)();
    v11 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to perform add to queue with error=%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  else
  {
  }

  outlined destroy of Actions.PlaybackContext(v6, type metadata accessor for PlaybackIntentDescriptor.IntentType);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t Player.InsertCommand.Location.notice.getter@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for Notice.Variant(0);
  __chkstk_darwin(v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  static Notice.variant(_:)(v4, a1);
  return outlined destroy of Actions.PlaybackContext(v4, type metadata accessor for Notice.Variant);
}

uint64_t closure #3 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = type metadata accessor for MetricsEvent.Click(0);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v5[28] = swift_task_alloc();
  v6 = type metadata accessor for Actions.MetricsReportingContext();
  v5[29] = v6;
  v5[30] = *(v6 - 8);
  v5[31] = swift_task_alloc();

  return _swift_task_switch(closure #3 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:), 0, 0);
}

uint64_t closure #3 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  outlined init with copy of TaskPriority?(*(v0 + 72), v3, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 224), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 96);
    v7 = *(v0 + 88);
    outlined init with take of Actions.PlaybackContext(*(v0 + 224), *(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 256) = MusicItem.metricsTargetIdentifier.getter(v6);
    *(v0 + 264) = v8;
    if (v7 >= 4)
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    else
    {
      *(v0 + 330) = 0x20062122u >> (8 * v7);
      v9 = *(v0 + 216);
      v10 = *(v0 + 96);
      v11 = type metadata accessor for URL();
      *(v0 + 272) = v11;
      v12 = *(v11 - 8);
      v13 = *(v12 + 56);
      *(v0 + 280) = v13;
      *(v0 + 288) = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v13(v9, 1, 1, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004F2400;
      *(inited + 32) = MusicItem.metricsContentType.getter(v10);
      *(inited + 40) = v15;
      *(inited + 48) = 0;
      *(v0 + 296) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
      *(v0 + 304) = v16;
      *(v0 + 312) = v17;
      *(v0 + 328) = v18;
      swift_setDeallocating();
      outlined destroy of MetricsEvent.Click.ActionDetails.Key(inited + 32);
      type metadata accessor for MainActor();
      *(v0 + 320) = static MainActor.shared.getter();
      v20 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(closure #3 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:), v20, v19);
    }
  }
}

{
  v83 = *(v0 + 328);
  v76 = *(v0 + 296);
  v81 = *(v0 + 330);
  v79 = *(v0 + 264);
  v77 = *(v0 + 312);
  v78 = *(v0 + 256);
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  v75 = *(v0 + 160);

  outlined init with copy of TaskPriority?(v3, v4, &_s10Foundation3URLVSgMd);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  outlined init with copy of TaskPriority?(v1 + v2[5], v7, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v11 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v12 = (v6 + v5[20]);
  *v12 = 0;
  v12[1] = 0;
  *v6 = v78;
  *(v6 + 8) = v79;
  *(v6 + 16) = 5;
  *(v6 + 17) = v81;
  outlined init with take of URL?(v4, v6 + v5[7], &_s10Foundation3URLVSgMd);
  v80 = v10;
  *(v6 + v5[8]) = v8;
  v13 = (v6 + v5[9]);
  v82 = v9;
  *v13 = v9;
  v13[1] = v10;
  v14 = v6 + v5[10];
  *v14 = v76;
  *(v14 + 16) = v77;
  *(v14 + 24) = v83;
  outlined init with copy of TaskPriority?(v7, v75, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v15 = type metadata accessor for MetricsEvent.Page(0);
  v16 = *(*(v15 - 1) + 48);
  v17 = v16(v75, 1, v15);
  v18 = *(v0 + 328);
  v19 = *(v0 + 304);
  v20 = *(v0 + 312);
  v21 = *(v0 + 296);
  v22 = *(v0 + 160);
  v84 = v11;
  if (v17 == 1)
  {

    outlined copy of MetricsEvent.Click.ActionContext?(v82, v80);

    outlined copy of MetricsEvent.Click.ActionDetails(v21, v19, v20, v18, SBYTE1(v18));
    outlined destroy of TaskPriority?(v22, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v23 = *v22;
    v24 = v22[1];

    outlined copy of MetricsEvent.Click.ActionContext?(v82, v80);

    outlined copy of MetricsEvent.Click.ActionDetails(v21, v19, v20, v18, SBYTE1(v18));

    outlined destroy of Actions.PlaybackContext(v22, type metadata accessor for MetricsEvent.Page);
  }

  v25 = *(v0 + 168);
  v26 = *(v0 + 152);
  v27 = (*(v0 + 184) + *(*(v0 + 176) + 48));
  *v27 = v23;
  v27[1] = v24;
  outlined init with copy of TaskPriority?(v25, v26, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v28 = v16(v26, 1, v15);
  v29 = *(v0 + 152);
  if (v28 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 152), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v30 = *(v29 + 16);
    v31 = *(v29 + 24);

    outlined destroy of Actions.PlaybackContext(v29, type metadata accessor for MetricsEvent.Page);
  }

  v32 = *(v0 + 168);
  v33 = *(v0 + 144);
  v34 = (*(v0 + 184) + *(*(v0 + 176) + 52));
  *v34 = v30;
  v34[1] = v31;
  outlined init with copy of TaskPriority?(v32, v33, &_s9MusicCore12MetricsEventV4PageVSgMd);
  if (v16(v33, 1, v15) == 1)
  {
    v35 = v16;
    v36 = *(v0 + 280);
    v37 = *(v0 + 272);
    v38 = *(v0 + 200);
    outlined destroy of TaskPriority?(*(v0 + 144), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v36(v38, 1, 1, v37);
    v16 = v35;
  }

  else
  {
    v39 = *(v0 + 144);
    outlined init with copy of TaskPriority?(v39 + v15[6], *(v0 + 200), &_s10Foundation3URLVSgMd);
    outlined destroy of Actions.PlaybackContext(v39, type metadata accessor for MetricsEvent.Page);
  }

  v40 = *(v0 + 168);
  v41 = *(v0 + 136);
  outlined init with take of URL?(*(v0 + 200), *(v0 + 184) + *(*(v0 + 176) + 56), &_s10Foundation3URLVSgMd);
  outlined init with copy of TaskPriority?(v40, v41, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v42 = v16(v41, 1, v15);
  v43 = *(v0 + 136);
  if (v42 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 136), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v44 = 0;
  }

  else
  {
    v44 = *(v43 + v15[7]);

    outlined destroy of Actions.PlaybackContext(v43, type metadata accessor for MetricsEvent.Page);
  }

  v45 = *(v0 + 168);
  v46 = *(v0 + 128);
  *(*(v0 + 184) + *(*(v0 + 176) + 60)) = v44;
  outlined init with copy of TaskPriority?(v45, v46, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v47 = v16(v46, 1, v15);
  v48 = *(v0 + 128);
  if (v47 == 1)
  {
    outlined destroy of TaskPriority?(v48, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v49 = 1;
  }

  else
  {
    v49 = *(v48 + v15[9]);
    outlined destroy of Actions.PlaybackContext(v48, type metadata accessor for MetricsEvent.Page);
  }

  v50 = *(v0 + 168);
  v51 = *(v0 + 120);
  *(*(v0 + 184) + *(*(v0 + 176) + 64)) = v49;
  outlined init with copy of TaskPriority?(v50, v51, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v52 = v16(v51, 1, v15);
  v53 = *(v0 + 120);
  if (v52 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 120), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v54 = 0;
    v55 = 0;
  }

  else
  {
    v56 = (v53 + v15[8]);
    v54 = *v56;
    v55 = v56[1];

    outlined destroy of Actions.PlaybackContext(v53, type metadata accessor for MetricsEvent.Page);
  }

  v57 = *(v0 + 168);
  v58 = *(v0 + 112);
  v59 = (*(v0 + 184) + *(*(v0 + 176) + 72));
  *v59 = v54;
  v59[1] = v55;
  outlined init with take of URL?(v57, v58, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v60 = v16(v58, 1, v15);
  v61 = *(v0 + 112);
  if (v60 == 1)
  {
    outlined destroy of TaskPriority?(v61, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v62 = 2;
  }

  else
  {
    v62 = *(v61 + v15[11]);
    outlined destroy of Actions.PlaybackContext(v61, type metadata accessor for MetricsEvent.Page);
  }

  v63 = *(v0 + 184);
  v64 = *(v0 + 192);
  v65 = *(v0 + 176);
  *(v63 + *(v65 + 68)) = v62;
  *(v63 + *(v65 + 44)) = v84;
  outlined init with take of Actions.PlaybackContext(v63, v64, type metadata accessor for MetricsEvent.Click);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v67 = *(v0 + 304);
  v66 = *(v0 + 312);
  v68 = *(v0 + 296);
  v69 = *(v0 + 248);
  v70 = *(v0 + 232);
  v71 = *(v0 + 216);
  v72 = *(v0 + 192);
  v73 = *(v0 + 328);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v72, *(v69 + *(v70 + 24)), *(v69 + *(v70 + 24) + 8), *(v69 + *(v70 + 36)), *(v69 + *(v70 + 36) + 8), *(v69 + *(v70 + 36) + 16));
  outlined consume of MetricsEvent.Click.ActionDetails(v68, v67, v66, v73, SBYTE1(v73));
  outlined destroy of Actions.PlaybackContext(v72, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v71, &_s10Foundation3URLVSgMd);

  return _swift_task_switch(closure #3 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:), 0, 0);
}

{
  outlined destroy of Actions.PlaybackContext(*(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t (*Actions.Playback.Context.menuItemImage.getter())()
{
  if (*v0)
  {
    v1 = 0x656C6666756873;
  }

  else
  {
    v1 = 2036427888;
  }

  if (*v0)
  {
    v2 = 0xE700000000000000;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.Playback.Context())()
{
  if (*v0)
  {
    v1 = 0x656C6666756873;
  }

  else
  {
    v1 = 2036427888;
  }

  if (*v0)
  {
    v2 = 0xE700000000000000;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t Actions.Queue.Context.menuItemSubtitle.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t (*Actions.Queue.Context.menuItemImage.getter())()
{
  if (*v0)
  {
    v1 = 0xD000000000000028;
  }

  else
  {
    v1 = 0xD000000000000029;
  }

  if (*v0)
  {
    v2 = "badge.plus.radiowaves.right";
  }

  else
  {
    v2 = "nd.arrowtriangle.forward";
  }

  v3 = v2 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v3;

  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.Queue.Context())()
{
  if (*v0)
  {
    v1 = 0xD000000000000028;
  }

  else
  {
    v1 = 0xD000000000000029;
  }

  if (*v0)
  {
    v2 = "badge.plus.radiowaves.right";
  }

  else
  {
    v2 = "nd.arrowtriangle.forward";
  }

  v3 = v2 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v3;

  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t key path getter for Player.nowPlaying : Player@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for Player.nowPlaying : Player(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return static Published.subscript.setter();
}

uint64_t sub_100099D08()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for Actions.PlaybackContext();
  v3 = (*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80);
  v16 = v1;
  v4 = *(v1 - 8);
  v5 = (v3 + *(*(v2 - 1) + 64) + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64) + v5 + 7;
  v7 = v0 + v3;

  v8 = v2[5];
  v9 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (!(*(*(v9 - 8) + 48))(v7 + v8, 1, v9))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = type metadata accessor for MusicPlaybackIntentDescriptor();
      (*(*(v10 - 8) + 8))(v7 + v8, v10);
    }

    else
    {
    }
  }

  v11 = (v7 + v2[6]);
  if (v11[1])
  {

    v12 = v11[3];
    if (v12 >> 60 != 15)
    {
      outlined consume of Data._Representation(v11[2], v12);
    }
  }

  v13 = v7 + v2[7];
  if (*(v13 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
  }

  (*(v4 + 8))(v0 + v5, v16);
  v14 = *(v0 + (v6 & 0xFFFFFFFFFFFFFFF8));
  if (v14 >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for Actions.PlaybackContext() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (v4 + *(v3 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80);
  v6 = *(v0 + ((*(*(v1 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)((v0 + v4), (v0 + v5), v6, v1, v2);
}

uint64_t sub_10009A040()
{
  v1 = type metadata accessor for Actions.PlaybackContext();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64) + v2 + 7;
  v4 = v0 + v2;

  v5 = v1[5];
  v6 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (!(*(*(v6 - 8) + 48))(v4 + v5, 1, v6))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for MusicPlaybackIntentDescriptor();
      (*(*(v7 - 8) + 8))(v4 + v5, v7);
    }

    else
    {
    }
  }

  v8 = v3 & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v1[6]);
  if (v9[1])
  {

    v10 = v9[3];
    if (v10 >> 60 != 15)
    {
      outlined consume of Data._Representation(v9[2], v10);
    }
  }

  v11 = v4 + v1[7];
  if (*(v11 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
  }

  v12 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + v8);
  if (v13 >= 4)
  {
  }

  v14 = v0 + v12;
  swift_unknownObjectWeakDestroy();
  v15 = *(v0 + v12 + 48);
  if (v15 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v14 + 8), *(v14 + 16), *(v14 + 24), *(v14 + 32), *(v14 + 40), v15);
  }

  if (*(v14 + 64))
  {
  }

  if (*(v14 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)()
{
  v2 = *(type metadata accessor for Actions.PlaybackContext() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)(v0 + v3, v6, v0 + v5);
}

uint64_t sub_10009A354()
{
  v1 = *(v0 + 16);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  v5 = (v3 + *(v2 + 64) + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0 + v3;
  v8 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v17 = v1;
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v16 = *(v10 + 24);
      v11 = type metadata accessor for URL();
      v14 = *(v11 - 8);
      v15 = v11;
      if (!(*(v14 + 48))(v9 + v16, 1))
      {
        (*(v14 + 8))(v9 + v16, v15);
      }
    }

    v1 = v17;
  }

  (*(v4 + 8))(v0 + v5, v1);
  v12 = *(v0 + v6);
  if (v12 >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #3 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = *(v0 + ((*(*(v3 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #3 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)(v0 + v5, v0 + v6, v7, v3, v2);
}

uint64_t specialized closure #1 in MusicItemState.init(item:musicKitItemState:player:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    specialized MusicItemState.updatePlayabilityStatus()();
  }

  return result;
}

uint64_t specialized closure #2 in MusicItemState.init(item:musicKitItemState:player:)()
{
  v0 = type metadata accessor for MusicPlayer.PreviewCapabilityStatus();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v11 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = dispatch thunk of MusicPlayer.ItemState.previewCapabilityStatus.getter();
    __chkstk_darwin(v8);
    v9 = type metadata accessor for Song();
    *(&v11 - 2) = v9;
    *(&v11 - 1) = &protocol witness table for Song;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v11 - 2) = v9;
    *(&v11 - 1) = &protocol witness table for Song;
    swift_getKeyPath();
    (*(v1 + 16))(v4, v6, v0);
    static Published.subscript.setter();
    return (*(v1 + 8))(v6, v0);
  }

  return result;
}

uint64_t specialized MusicItemState.updatePlayabilityStatus()()
{
  v78 = type metadata accessor for Song();
  v75 = *(v78 - 8);
  __chkstk_darwin(v78);
  v74 = &v72 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v72 - v7;
  v9 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v79 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v77 = &v72 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v72 - v16;
  __chkstk_darwin(v15);
  v19 = &v72 - v18;
  v82 = v0;

  dispatch thunk of MusicPlayer.ItemState.playabilityStatus.getter();

  v20 = *(v10 + 16);
  v80 = v19;
  v76 = v10 + 16;
  v20(v17, v19, v9);
  v81 = v10;
  v21 = (*(v10 + 88))(v17, v9);
  v22 = enum case for MusicPlayer.PlayabilityStatus.unplayable(_:);
  if (v21 == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v81 + 96))(v17, v9);
    (*(v3 + 32))(v8, v17, v2);
    (*(v3 + 104))(v6, enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:), v2);
    v73 = v8;
    v23 = static MusicPlayer.PlayabilityStatus.UnplayableReason.== infix(_:_:)();
    v24 = *(v3 + 8);
    v74 = (v3 + 8);
    v75 = v2;
    v24(v6, v2);
    if ((v23 & 1) != 0 && (swift_getKeyPath(), swift_getKeyPath(), , static Published.subscript.getter(), , , , v83))
    {

      v25 = v81;
      v26 = v77;
      v27 = (*(v81 + 104))(v77, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v9);
      __chkstk_darwin(v27);
      v28 = v78;
      *(&v72 - 2) = v78;
      *(&v72 - 1) = &protocol witness table for Song;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v72 - 2) = v28;
      *(&v72 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      v20(v79, v26, v9);

      static Published.subscript.setter();
      v30 = *(v25 + 8);
      v30(v26, v9);
      v24(v73, v75);
    }

    else
    {
      v41 = v77;
      v42 = (v20)(v77, v80, v9);
      __chkstk_darwin(v42);
      v43 = v81;
      v72 = v24;
      v44 = v78;
      *(&v72 - 2) = v78;
      *(&v72 - 1) = &protocol witness table for Song;
      v45 = swift_getKeyPath();
      __chkstk_darwin(v45);
      *(&v72 - 2) = v44;
      *(&v72 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      v20(v79, v41, v9);

      static Published.subscript.setter();
      v30 = *(v43 + 8);
      v30(v41, v9);
      v72(v73, v75);
    }

    return (v30)(v80, v9);
  }

  v31 = v21;
  if (v21 == enum case for MusicPlayer.PlayabilityStatus.playable(_:))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (!v83 || (v83, swift_getKeyPath(), swift_getKeyPath(), , static Published.subscript.getter(), , , , (v83 & 1) != 0) || (, v32 = Player.supportsDelegation.getter(), , (v32 & 1) != 0))
    {
      v33 = v77;
      v34 = v80;
      v35 = (v20)(v77, v80, v9);
      __chkstk_darwin(v35);
      v36 = v20;
      v37 = v78;
      *(&v72 - 2) = v78;
      *(&v72 - 1) = &protocol witness table for Song;
      v38 = swift_getKeyPath();
      __chkstk_darwin(v38);
      *(&v72 - 2) = v37;
      *(&v72 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      v36(v79, v33, v9);

      static Published.subscript.setter();
      v39 = *(v81 + 8);
      v39(v33, v9);
      return (v39)(v34, v9);
    }

    v53 = v82;
    v54 = *(*v82 + 120);
    swift_beginAccess();
    v56 = v74;
    v55 = v75;
    v57 = v53 + v54;
    v58 = v78;
    (*(v75 + 16))(v74, v57, v78);
    Song.catalogID.getter();
    v60 = v59;
    (*(v55 + 8))(v56, v58);
    if (!v60)
    {
      v67 = v77;
      (*(v3 + 104))(v77, enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.contentUnavailable(_:), v2);
      v68 = v81;
      v69 = (*(v81 + 104))(v67, v22, v9);
      __chkstk_darwin(v69);
      *(&v72 - 2) = v58;
      *(&v72 - 1) = &protocol witness table for Song;
      v70 = swift_getKeyPath();
      __chkstk_darwin(v70);
      *(&v72 - 2) = v71;
      *(&v72 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      v20(v79, v67, v9);

      static Published.subscript.setter();
      v30 = *(v68 + 8);
      v30(v67, v9);
      return (v30)(v80, v9);
    }

    v61 = v81;
    v62 = v77;
    v63 = (*(v81 + 104))(v77, v31, v9);
    __chkstk_darwin(v63);
    *(&v72 - 2) = v58;
    *(&v72 - 1) = &protocol witness table for Song;
    v64 = swift_getKeyPath();
    __chkstk_darwin(v64);
    *(&v72 - 2) = v65;
    *(&v72 - 1) = &protocol witness table for Song;
    swift_getKeyPath();
    v20(v79, v62, v9);

    static Published.subscript.setter();
    v66 = *(v61 + 8);
    v66(v62, v9);
    return (v66)(v80, v9);
  }

  else
  {
    v46 = v20;
    v47 = v77;
    v48 = v80;
    v49 = v46(v77, v80, v9);
    __chkstk_darwin(v49);
    v50 = v78;
    *(&v72 - 2) = v78;
    *(&v72 - 1) = &protocol witness table for Song;
    v51 = swift_getKeyPath();
    __chkstk_darwin(v51);
    *(&v72 - 2) = v50;
    *(&v72 - 1) = &protocol witness table for Song;
    swift_getKeyPath();
    v46(v79, v47, v9);

    static Published.subscript.setter();
    v52 = *(v81 + 8);
    v52(v47, v9);
    v52(v48, v9);
    return (v52)(v17, v9);
  }
}

uint64_t specialized Actions.Queue.Context.menuItemTitle.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t specialized Actions.Preview.Context.menuItemTitle.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t specialized Actions.Playback.Context.menuItemTitle.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}