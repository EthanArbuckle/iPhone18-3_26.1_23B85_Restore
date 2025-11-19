uint64_t MPModelPlaylist.supportsSing.getter()
{
  if (([v0 traits] & 0x100) != 0)
  {
    return MSVDeviceSupportsVocalAttenuation();
  }

  else
  {
    return 0;
  }
}

id MPModelPlaylist.coverArtworkCatalog.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1004F2EB0;
  *(v1 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 40) = v2;
  *(v1 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 56) = v3;
  *(v1 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 72) = v4;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [objc_opt_self() propertySetWithProperties:isa];

  LODWORD(isa) = [v0 hasLoadedValuesForPropertySet:v6];
  if (!isa)
  {
    return 0;
  }

  result = [v0 name];
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (([v0 userEditableComponents] & 2) == 0)
  {

    return 0;
  }

  v12 = [v0 coverArtworkRecipe];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  result = specialized PlaylistCovers.ArtworkToken.__allocating_init(rawJSON:playlistTitle:)(v13, v15, v9, v11);
  if (result)
  {
    v16 = result;
    v17 = [v0 artworkCatalog];
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      if (one-time initialization token for playlistCovers != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.playlistCovers);
      v20 = v0;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v31 = v24;
        *v23 = 136446210;
        v25 = [v20 coverArtworkRecipe];
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        v29 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v26, v28, &v31);

        *(v23 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v21, v22, "No server artwork catalog available for playlist with coverArtworkRecipe=%{public}s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v24);
      }

      v30 = one-time initialization token for shared;
      v16 = v16;
      if (v30 != -1)
      {
        swift_once();
      }

      v18 = [objc_allocWithZone(MPArtworkCatalog) initWithToken:v16 dataSource:static PlaylistCovers.ArtworkDataSource.shared];
    }

    return v18;
  }

  return result;
}

unint64_t MPNowPlayingAudioFormatBadging.debugDescription.getter(uint64_t a1)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v1 = 0x7373656C73736F6CLL;
        v2 = 0xE800000000000000;
        goto LABEL_16;
      case 4:
        v2 = 0x80000001004CA360;
        v1 = 0xD000000000000016;
        goto LABEL_16;
      case 5:
        v1 = 0x416C616974617073;
        v2 = 0xEC0000006F696475;
        goto LABEL_16;
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        v1 = 0x6574537973736F6CLL;
        v2 = 0xEB000000006F6572;
        goto LABEL_16;
      case 1:
        v1 = 0x6D744179626C6F64;
        v2 = 0xEA0000000000736FLL;
        goto LABEL_16;
      case 2:
        v1 = 0x64754179626C6F64;
        v2 = 0xEA00000000006F69;
LABEL_16:
        String.append(_:)(*&v1);
        goto LABEL_17;
    }
  }

  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 62;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 0x3C6E776F6E6B6E75;
  v5._object = 0xE800000000000000;
  String.append(_:)(v5);

LABEL_17:
  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return 0xD00000000000001FLL;
}

id MPModelPerson.monogramArtworkCatalog.getter()
{
  if (![v0 hasLoadedValueForKey:MPModelPropertyPersonName])
  {
    return 0;
  }

  v1 = [v0 name];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v7 = [objc_opt_self() currentTraitCollection];
  v8 = [v7 layoutDirection];

  v9 = specialized static MPArtworkCatalog.monogram(for:environmentLayoutDirection:)(v3, v5, v8);

  return v9;
}

uint64_t MPModelTVSeason.title.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in MPModelTVSeason.title.getter;
  *(v3 + 24) = v2;
  v9[4] = partial apply for closure #3 in View.actionContextMenu<A>(title:menu:excluding:preview:previewAction:);
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_89_0;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t closure #1 in MPModelTVSeason.title.getter(void *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v26 - v10;
  v12 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v12 - 8);
  if ([a1 number] < 1)
  {
    v20 = [a1 show];
    if (v20 && (v21 = v20, v22 = [v20 title], v21, v22))
    {
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0;
    }

    *a2 = v23;
    a2[1] = v25;
  }

  else
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v13._countAndFlagsBits = 0x206E6F73616553;
    v13._object = 0xE700000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);
    v26[1] = [a1 number];
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
    String.LocalizationValue.init(stringInterpolation:)();
    (*(v6 + 16))(v9, v11, v5);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v15 = static NSBundle.module;
    static Locale.current.getter();
    v16 = String.init(localized:table:bundle:locale:comment:)();
    v18 = v17;
    (*(v6 + 8))(v11, v5);
    *a2 = v16;
    a2[1] = v18;
  }
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = result + 32;
  v5 = _swiftEmptyArrayStorage;
  v6 = &_swiftEmptyArrayStorage[4];
LABEL_3:
  v8 = *(v1 + 16);
  if (v3 != v8)
  {
    if (v3 >= v8)
    {
LABEL_34:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v9 = *(v4 + 8 * v3);

        if (v9)
        {
          v7 = *(v9 + 16);
          if (v7)
          {
            break;
          }
        }

        ++v3;
        v10 = *(v1 + 16);
        if (v3 == v10)
        {
          goto LABEL_30;
        }

        if (v3 >= v10)
        {
          goto LABEL_34;
        }
      }

      v11 = 0;
      ++v3;
      while (v11 < v7)
      {
        v12 = v9 + 16 * v11;
        v13 = *(v12 + 40);
        v29 = *(v12 + 32);
        if (v2)
        {

          v14 = v5;
          v15 = __OFSUB__(v2--, 1);
          if (v15)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v16 = v5[3];
          if (((v16 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_37;
          }

          v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
          if (v17 <= 1)
          {
            v18 = 1;
          }

          else
          {
            v18 = v17;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
          v14 = swift_allocObject();
          v19 = _swift_stdlib_malloc_size(v14);
          v20 = v19 - 32;
          if (v19 < 32)
          {
            v20 = v19 - 17;
          }

          v21 = v20 >> 4;
          v14[2] = v18;
          v14[3] = (2 * (v20 >> 4));
          v22 = (v14 + 4);
          v23 = v5[3] >> 1;
          v6 = &v14[2 * v23 + 4];
          v24 = (v21 & 0x7FFFFFFFFFFFFFFFLL) - v23;
          if (v5[2])
          {
            v25 = (v5 + 4);
            if (v14 != v5 || v22 >= &v25[16 * v23])
            {
              memmove(v22, v25, 16 * v23);
            }

            v5[2] = 0;
          }

          else
          {
          }

          v15 = __OFSUB__(v24, 1);
          v2 = v24 - 1;
          if (v15)
          {
            goto LABEL_36;
          }
        }

        ++v11;
        *v6 = v29;
        v6[1] = v13;
        v6 += 2;
        v5 = v14;
        v7 = *(v9 + 16);
        if (v11 == v7)
        {
          goto LABEL_3;
        }
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_30:

  v26 = v5[3];
  if (v26 < 2)
  {
    return v5;
  }

  v27 = v26 >> 1;
  v15 = __OFSUB__(v27, v2);
  v28 = (v27 - v2);
  if (!v15)
  {
    v5[2] = v28;
    return v5;
  }

LABEL_38:
  __break(1u);
  return result;
}

id specialized static MPArtworkCatalog.monogram(for:environmentLayoutDirection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(MusicMonogramArtworkToken) initWithFullName:v4 rightToLeft:a3 == 1];

  if (!v5)
  {
    return 0;
  }

  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 sharedMonogramArtworkDataSource];
  v9 = objc_allocWithZone(MPArtworkCatalog);
  v10 = v7;
  v11 = [v9 initWithToken:v10 dataSource:v8];

  return v11;
}

unint64_t specialized MPModelObject.MediaKitPlayableKind.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MPModelObject.MediaKitPlayableKind.init(rawValue:), v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized MPModelObject.FavoriteStatus.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MPModelObject.FavoriteStatus.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

id specialized static MPModelAlbum.orphanMusicVideoPropertySet.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004F2400;
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So13MPPropertySetCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2400;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v3;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1004F2400;
  *(v4 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v4 + 40) = v5;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v7;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So13MPPropertySetCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (String, MPPropertySet)(inited + 32);
  v8 = objc_allocWithZone(MPPropertySet);
  v9 = Array._bridgeToObjectiveC()().super.isa;

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPPropertySet);
  v10 = Dictionary._bridgeToObjectiveC()().super.isa;

  v11 = [v8 initWithProperties:v9 relationships:v10];

  return v11;
}

id partial apply for closure #1 in Array<A>.union()@<X0>(id *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = [*a1 propertySetByCombiningWithPropertySet:*a2];
  *a3 = result;
  return result;
}

uint64_t sub_100123CF8()
{

  return swift_deallocObject();
}

uint64_t sub_100123D8C()
{

  return swift_deallocObject();
}

uint64_t sub_100123E64()
{

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in static NSDiffableDataSourceSnapshot<>.snapshot(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return closure #1 in static NSDiffableDataSourceSnapshot<>.snapshot(from:)(a1, a2, a3, *(v3 + 40), *(v3 + 48), *(v3 + 16), *(v3 + 24), *(v3 + 32));
}

{
  return closure #1 in static NSDiffableDataSourceSnapshot<>.snapshot(from:)(a1, a2, a3, *(v3 + 24), *(v3 + 32), *(v3 + 16));
}

{
  return closure #1 in static NSDiffableDataSourceSnapshot<>.snapshot(from:)(a1, a2, a3, *(v3 + 32), *(v3 + 40), *(v3 + 16), *(v3 + 24));
}

uint64_t sub_100123F24()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type MPIdentifierSet.Purpose.Options and conformance MPIdentifierSet.Purpose.Options()
{
  result = lazy protocol witness table cache variable for type MPIdentifierSet.Purpose.Options and conformance MPIdentifierSet.Purpose.Options;
  if (!lazy protocol witness table cache variable for type MPIdentifierSet.Purpose.Options and conformance MPIdentifierSet.Purpose.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPIdentifierSet.Purpose.Options and conformance MPIdentifierSet.Purpose.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MPIdentifierSet.Purpose.Options and conformance MPIdentifierSet.Purpose.Options;
  if (!lazy protocol witness table cache variable for type MPIdentifierSet.Purpose.Options and conformance MPIdentifierSet.Purpose.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPIdentifierSet.Purpose.Options and conformance MPIdentifierSet.Purpose.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MPIdentifierSet.Purpose.Options and conformance MPIdentifierSet.Purpose.Options;
  if (!lazy protocol witness table cache variable for type MPIdentifierSet.Purpose.Options and conformance MPIdentifierSet.Purpose.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPIdentifierSet.Purpose.Options and conformance MPIdentifierSet.Purpose.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MPIdentifierSet.Purpose.Options and conformance MPIdentifierSet.Purpose.Options;
  if (!lazy protocol witness table cache variable for type MPIdentifierSet.Purpose.Options and conformance MPIdentifierSet.Purpose.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPIdentifierSet.Purpose.Options and conformance MPIdentifierSet.Purpose.Options);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MPModelObject.MediaKitPlayableKind and conformance MPModelObject.MediaKitPlayableKind()
{
  result = lazy protocol witness table cache variable for type MPModelObject.MediaKitPlayableKind and conformance MPModelObject.MediaKitPlayableKind;
  if (!lazy protocol witness table cache variable for type MPModelObject.MediaKitPlayableKind and conformance MPModelObject.MediaKitPlayableKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPModelObject.MediaKitPlayableKind and conformance MPModelObject.MediaKitPlayableKind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MPModelObject.FavoriteStatus and conformance MPModelObject.FavoriteStatus()
{
  result = lazy protocol witness table cache variable for type MPModelObject.FavoriteStatus and conformance MPModelObject.FavoriteStatus;
  if (!lazy protocol witness table cache variable for type MPModelObject.FavoriteStatus and conformance MPModelObject.FavoriteStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPModelObject.FavoriteStatus and conformance MPModelObject.FavoriteStatus);
  }

  return result;
}

uint64_t getEnumTag for MPIdentifierSet.Purpose(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t getEnumTagSinglePayload for MPModelObject.MediaKitPlayableKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MPModelObject.MediaKitPlayableKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata completion function for SnapshotIdentifier()
{
  result = type metadata accessor for SnapshotIdentifier.Lazy();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for SnapshotIdentifier.Lazy()
{
  type metadata accessor for (index: Int, collection: MPSectionedCollection)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (indexPath: IndexPath, collection: MPSectionedCollection)();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (index: Int, collection: MPSectionedCollection)()
{
  if (!lazy cache variable for type metadata for (index: Int, collection: MPSectionedCollection))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo21MPSectionedCollectionCMd);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (index: Int, collection: MPSectionedCollection));
    }
  }
}

void type metadata accessor for (indexPath: IndexPath, collection: MPSectionedCollection)()
{
  if (!lazy cache variable for type metadata for (indexPath: IndexPath, collection: MPSectionedCollection))
  {
    type metadata accessor for IndexPath();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo21MPSectionedCollectionCMd);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (indexPath: IndexPath, collection: MPSectionedCollection));
    }
  }
}

uint64_t outlined destroy of (String, MPPropertySet)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So13MPPropertySetCtMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_121(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10012461C()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type MPArtworkCatalog.LoadingError and conformance MPArtworkCatalog.LoadingError()
{
  result = lazy protocol witness table cache variable for type MPArtworkCatalog.LoadingError and conformance MPArtworkCatalog.LoadingError;
  if (!lazy protocol witness table cache variable for type MPArtworkCatalog.LoadingError and conformance MPArtworkCatalog.LoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPArtworkCatalog.LoadingError and conformance MPArtworkCatalog.LoadingError);
  }

  return result;
}

uint64_t sub_1001246B4()
{

  return swift_deallocObject();
}

uint64_t getEnumTagSinglePayload for MPArtworkCatalog.LoadingError(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MPArtworkCatalog.LoadingError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for MPArtworkCatalog.LoadingError(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

BOOL AudioVariantProviding.supportsDolbyPlayback.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &_swiftEmptyArrayStorage;
  }

  v4 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8MusicKit12AudioVariantO_SayAFGTt0g5Tf4g_n(v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8MusicKit12AudioVariantOGMd);
  v5 = type metadata accessor for AudioVariant();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1004F2EF0;
  v10 = v9 + v8;
  v11 = *(v6 + 104);
  v11(v10, enum case for AudioVariant.dolbyAtmos(_:), v5);
  v11(v10 + v7, enum case for AudioVariant.dolbyAudio(_:), v5);
  v12 = specialized _NativeSet.genericIntersection<A>(_:)(v9, v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v13 = *(v12 + 16);

  return v13 != 0;
}

unint64_t AudioVariant.symbolString.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AudioVariant();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for AudioVariant.dolbyAtmos(_:))
  {
    return 0xD000000000000018;
  }

  if (v6 == enum case for AudioVariant.dolbyAudio(_:))
  {
    return 0xD000000000000018;
  }

  if (v6 == enum case for AudioVariant.lossless(_:) || v6 == enum case for AudioVariant.highResolutionLossless(_:))
  {
    return 0xD000000000000015;
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t AudioVariant.accessibilityLabel.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AudioVariant();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for AudioVariant.dolbyAtmos(_:))
  {
    if (one-time initialization token for dolbyAtmosLabel != -1)
    {
      swift_once();
    }

    v7 = &static AccessibilityString.dolbyAtmosLabel;
  }

  else if (v6 == enum case for AudioVariant.dolbyAudio(_:))
  {
    if (one-time initialization token for dolbyAudioLabel != -1)
    {
      swift_once();
    }

    v7 = &static AccessibilityString.dolbyAudioLabel;
  }

  else if (v6 == enum case for AudioVariant.lossless(_:))
  {
    if (one-time initialization token for losslessLabel != -1)
    {
      swift_once();
    }

    v7 = &static AccessibilityString.losslessLabel;
  }

  else
  {
    if (v6 != enum case for AudioVariant.highResolutionLossless(_:))
    {
      (*(v3 + 8))(v5, v2);
      return 0;
    }

    if (one-time initialization token for hiResLosslessLabel != -1)
    {
      swift_once();
    }

    v7 = &static AccessibilityString.hiResLosslessLabel;
  }

  v8 = *v7;

  return v8;
}

uint64_t AudioVariant.badgeText.getter()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v17[-v7];
  v9 = type metadata accessor for AudioVariant();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v10 + 16))(v12, v0, v9);
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 == enum case for AudioVariant.lossless(_:) || v13 == enum case for AudioVariant.highResolutionLossless(_:))
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v3 + 16))(v6, v8, v2);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v14 = static NSBundle.module;
    static Locale.current.getter();
    v15 = String.init(localized:table:bundle:locale:comment:)();
    (*(v3 + 8))(v8, v2);
  }

  else
  {
    (*(v10 + 8))(v12, v9);
    return 0;
  }

  return v15;
}

uint64_t Array<A>.removingEquivalents()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit12AudioVariantOSgMd);
  __chkstk_darwin(v0 - 8);
  v2 = &v14 - v1;
  v3 = type metadata accessor for AudioVariant();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8MusicKit12AudioVariantO_SayAFGTt0g5Tf4g_n(v7);

  v15 = v8;
  v9 = *(v4 + 104);
  v9(v6, enum case for AudioVariant.highResolutionLossless(_:), v3);

  v10 = specialized Set.contains(_:)(v6, v8);

  v11 = *(v4 + 8);
  v11(v6, v3);
  if (v10)
  {
    v9(v6, enum case for AudioVariant.lossless(_:), v3);
    specialized Set._Variant.remove(_:)(v6, v2);
    v11(v6, v3);
    outlined destroy of TaskPriority?(v2, &_s8MusicKit12AudioVariantOSgMd);
  }

  v12 = v15;
  v9(v6, enum case for AudioVariant.dolbyAtmos(_:), v3);
  LOBYTE(v12) = specialized Set.contains(_:)(v6, v12);
  v11(v6, v3);
  if (v12)
  {
    v9(v6, enum case for AudioVariant.dolbyAudio(_:), v3);
    specialized Set._Variant.remove(_:)(v6, v2);
    v11(v6, v3);
    outlined destroy of TaskPriority?(v2, &_s8MusicKit12AudioVariantOSgMd);
  }

  return v15;
}

uint64_t MusicLibrary.DownloadStatus.DownloadPauseReasons.init(mediaPlayerReason:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MusicLibrary.DownloadStatus.DownloadPauseReasons();
  v10 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 4) != 0)
  {
    static MusicLibrary.DownloadStatus.DownloadPauseReasons.cellularDataDisallowed.getter();
LABEL_10:
    (*(v10 + 32))(a2, v6, v4);
    return (*(v10 + 56))(a2, 0, 1, v4);
  }

  if ((a1 & 2) != 0)
  {
    static MusicLibrary.DownloadStatus.DownloadPauseReasons.constrainedNetwork.getter();
    goto LABEL_10;
  }

  if (a1)
  {
    static MusicLibrary.DownloadStatus.DownloadPauseReasons.thermalPressure.getter();
    goto LABEL_10;
  }

  v7 = *(v10 + 56);

  return v7(a2, 1, 1, v4);
}

uint64_t MusicLibrary.DownloadStatus.DownloadPauseReasons.alert.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v74 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.LocalizationValue();
  v75 = *(v6 - 8);
  v76 = v6;
  v7 = __chkstk_darwin(v6);
  v9 = v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v68 - v10;
  v12 = type metadata accessor for MusicLibrary.DownloadStatus.DownloadPauseReasons();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v68 - v17;
  (*(v13 + 16))(v68 - v17, v2, v12);
  static MusicLibrary.DownloadStatus.DownloadPauseReasons.cellularDataDisallowed.getter();
  lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(&lazy protocol witness table cache variable for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons, &type metadata accessor for MusicLibrary.DownloadStatus.DownloadPauseReasons);
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v20 = *(v13 + 8);
  v20(v16, v12);
  if (v19)
  {
    v20(v18, v12);
    specialized static Alert.cellularDataDisallowedAlert(_:)(0, 0, v77);
    v22 = v77[0];
    result = v77[1];
    v24 = v77[2];
    v23 = v77[3];
    v25 = v79;
    v26 = v80;
    v27 = v81;
    v28 = v82;
    v29 = v78 & 0xFFFFFFFFFFFFFF00;
    v30 = v80 & 0xFFFFFFFFFFFFFF00;
    v31 = v78;
  }

  else
  {
    static MusicLibrary.DownloadStatus.DownloadPauseReasons.constrainedNetwork.getter();
    v32 = dispatch thunk of static Equatable.== infix(_:_:)();
    v20(v16, v12);
    if (v32)
    {
      v20(v18, v12);
      String.LocalizationValue.init(stringLiteral:)();
      v33 = v75;
      v34 = v76;
      v35 = v75 + 16;
      v36 = *(v75 + 16);
      v36(v9, v11, v76);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v37 = static NSBundle.module;
      v38 = static NSBundle.module;
      static Locale.current.getter();
      v39 = v38;
      v40 = String.init(localized:table:bundle:locale:comment:)();
      v72 = v41;
      v73 = v40;
      v42 = *(v33 + 8);
      v42(v11, v34);
      v70 = v42;
      String.LocalizationValue.init(stringLiteral:)();
      v36(v9, v11, v34);
      static Locale.current.getter();
      v68[1] = v37;
      v75 = String.init(localized:table:bundle:locale:comment:)();
      v71 = v43;
      v42(v11, v34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd);
      v44 = swift_allocObject();
      v68[0] = v35;
      v45 = v36;
      v69 = v36;
      v27 = v44;
      *(v44 + 16) = xmmword_1004F2EF0;
      String.LocalizationValue.init(stringLiteral:)();
      v45(v9, v11, v34);
      static Locale.current.getter();
      v46 = String.init(localized:table:bundle:locale:comment:)();
      v48 = v47;
      v49 = v70;
      v70(v11, v34);
      *(v27 + 32) = 0x6C65636E6163;
      *(v27 + 40) = 0xE600000000000000;
      *(v27 + 48) = v46;
      *(v27 + 56) = v48;
      *(v27 + 64) = 0;
      *(v27 + 72) = 0;
      *(v27 + 80) = 0;
      String.LocalizationValue.init(stringLiteral:)();
      v69(v9, v11, v34);
      static Locale.current.getter();
      v50 = String.init(localized:table:bundle:locale:comment:)();
      v51 = v34;
      v53 = v52;
      v49(v11, v51);
      v23 = v71;
      result = v72;
      v24 = v75;
      v22 = v73;
      v25 = 0;
      v28 = 0;
      v30 = 0;
      v31 = 0;
      v29 = 0;
      *(v27 + 88) = 0x73676E6974746573;
      *(v27 + 96) = 0xE800000000000000;
      *(v27 + 104) = v50;
      *(v27 + 112) = v53;
      *(v27 + 120) = 2;
      *(v27 + 128) = &async function pointer to closure #1 in MusicLibrary.DownloadStatus.DownloadPauseReasons.alert.getter;
      *(v27 + 136) = 0;
      v26 = 1;
    }

    else
    {
      static MusicLibrary.DownloadStatus.DownloadPauseReasons.thermalPressure.getter();
      v54 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20(v16, v12);
      v20(v18, v12);
      if (v54)
      {
        String.LocalizationValue.init(stringLiteral:)();
        v55 = v75;
        v56 = v76;
        v57 = *(v75 + 16);
        v57(v9, v11, v76);
        if (one-time initialization token for module != -1)
        {
          swift_once();
        }

        v58 = static NSBundle.module;
        static Locale.current.getter();
        v59 = v58;
        v60 = String.init(localized:table:bundle:locale:comment:)();
        v72 = v61;
        v73 = v60;
        v62 = *(v55 + 8);
        v62(v11, v56);
        String.LocalizationValue.init(stringLiteral:)();
        v70 = v57;
        v57(v9, v11, v56);
        static Locale.current.getter();
        v75 = String.init(localized:table:bundle:locale:comment:)();
        v71 = v63;
        v62(v11, v56);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_1004F2400;
        String.LocalizationValue.init(stringLiteral:)();
        (v70)(v9, v11, v56);
        static Locale.current.getter();
        v64 = String.init(localized:table:bundle:locale:comment:)();
        v65 = v56;
        v67 = v66;
        v62(v11, v65);
        v23 = v71;
        result = v72;
        v22 = v73;
        v25 = 0;
        v28 = 0;
        v30 = 0;
        v31 = 0;
        v29 = 0;
        *(v27 + 32) = 0x6C65636E6163;
        *(v27 + 40) = 0xE600000000000000;
        v24 = v75;
        *(v27 + 48) = v64;
        *(v27 + 56) = v67;
        *(v27 + 64) = 0;
        v26 = 1;
        *(v27 + 72) = 0;
        *(v27 + 80) = 0;
      }

      else
      {
        v22 = 0;
        result = 0;
        v24 = 0;
        v23 = 0;
        v25 = 0;
        v27 = 0;
        v28 = 0;
        v26 = 0;
        v30 = 0;
        v31 = 0;
        v29 = 0;
      }
    }
  }

  *a1 = v22;
  a1[1] = result;
  a1[2] = v24;
  a1[3] = v23;
  a1[4] = v29 | v31;
  a1[5] = v25;
  a1[6] = v30 | v26;
  a1[7] = v27;
  a1[8] = v28;
  return result;
}

uint64_t Track.musicItem.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for MusicVideo();
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v39 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Song();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Track();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v43 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v37 - v13;
  v15 = *(v10 + 16);
  v42 = v1;
  v15(&v37 - v13, v1, v9);
  v16 = (*(v10 + 88))(v14, v9);
  if (v16 == enum case for Track.song(_:))
  {
    (*(v10 + 96))(v14, v9);
    v17 = *(v6 + 32);
    v17(v8, v14, v5);
    a1[3] = v5;
    a1[4] = &protocol witness table for Song;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    return (v17)(boxed_opaque_existential_1, v8, v5);
  }

  else
  {
    v38 = a1;
    if (v16 == enum case for Track.musicVideo(_:))
    {
      (*(v10 + 96))(v14, v9);
      v20 = v39;
      v21 = *(v40 + 32);
      v22 = v41;
      v21(v39, v14, v41);
      v23 = v38;
      v38[3] = v22;
      v23[4] = &protocol witness table for MusicVideo;
      v24 = __swift_allocate_boxed_opaque_existential_1(v23);
      return (v21)(v24, v20, v22);
    }

    else
    {
      if (one-time initialization token for musicKit != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, static Logger.musicKit);
      v26 = v43;
      v15(v43, v42, v9);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v44 = v42;
        *v29 = 136315138;
        lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(&lazy protocol witness table cache variable for type Track and conformance Track, &type metadata accessor for Track);
        v30 = dispatch thunk of CustomStringConvertible.description.getter();
        v31 = v26;
        v33 = v32;
        v34 = *(v10 + 8);
        v34(v31, v9);
        v35 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v30, v33, &v44);

        *(v29 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v27, v28, "Unsupported Track type=%s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v42);
      }

      else
      {

        v34 = *(v10 + 8);
        v34(v26, v9);
      }

      v36 = v38;
      v38[4] = 0;
      *v36 = 0u;
      *(v36 + 1) = 0u;
      return (v34)(v14, v9);
    }
  }
}

uint64_t Logger.musicKit.unsafeMutableAddressor()
{
  if (one-time initialization token for musicKit != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.musicKit);
}

uint64_t Track.album(from:fallbackSource:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v4;
  v6[5] = a3;
  v6[6] = v3;
  v6[3] = a1;
  v6[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14PropertySourceOSgMd);
  v6[7] = swift_task_alloc();
  v8 = type metadata accessor for MusicPropertySource();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  v9 = swift_task_alloc();
  v6[11] = v9;
  *v9 = v6;
  v9[1] = Track.album(from:fallbackSource:);

  return _album #1 (from:) in Track.album(from:fallbackSource:)(a1, a2, v3);
}

uint64_t Track.album(from:fallbackSource:)()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return _swift_task_switch(Track.album(from:fallbackSource:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{
  *(v0 + 16) = *(v0 + 96);
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  if (!swift_dynamicCast() || (*(v0 + 120) & 1) != 0)
  {

    swift_willThrow();
LABEL_4:

    v1 = *(v0 + 8);

    return v1();
  }

  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 56);
  v6 = *(v0 + 40);

  outlined init with copy of MusicPropertySource?(v6, v5);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 56), &_s8MusicKit0A14PropertySourceOSgMd);
LABEL_11:
    lazy protocol witness table accessor for type TrackAlbumError #1 in Track.album(from:fallbackSource:) and conformance TrackAlbumError #1 in Track.album(from:fallbackSource:)();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();

    goto LABEL_4;
  }

  (*(*(v0 + 72) + 32))(*(v0 + 80), *(v0 + 56), *(v0 + 64));
  lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(&lazy protocol witness table cache variable for type MusicPropertySource and conformance MusicPropertySource, &type metadata accessor for MusicPropertySource);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
    goto LABEL_11;
  }

  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  *v8 = v0;
  v8[1] = Track.album(from:fallbackSource:);
  v9 = *(v0 + 80);
  v10 = *(v0 + 48);
  v11 = *(v0 + 24);

  return _album #1 (from:) in Track.album(from:fallbackSource:)(v11, v9, v10);
}

{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = Track.album(from:fallbackSource:);
  }

  else
  {
    v2 = Track.album(from:fallbackSource:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t _album #1 (from:) in Track.album(from:fallbackSource:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for MusicVideo();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA5AlbumVGSgMd);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit5AlbumVSgMd);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v5 = type metadata accessor for Song();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v6 = type metadata accessor for Track();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return _swift_task_switch(_album #1 (from:) in Track.album(from:fallbackSource:), 0, 0);
}

uint64_t _album #1 (from:) in Track.album(from:fallbackSource:)()
{
  v44 = v0;
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  v4 = *(v3 + 16);
  v4(v1, v0[4], v2);
  v5 = (*(v3 + 88))(v1, v2);
  if (v5 == enum case for Track.song(_:))
  {
    v6 = v0[20];
    v7 = v0[16];
    v8 = v0[13];
    v9 = v0[14];
    (*(v0[18] + 96))(v6, v0[17]);
    (*(v9 + 32))(v7, v6, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v10 = swift_allocObject();
    v0[21] = v10;
    *(v10 + 16) = xmmword_1004F2F10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit07PartialA13AsyncPropertyCyAA4SongVGMd);
    *(v10 + 32) = static PartialMusicProperty<A>.albums.getter();
    v11 = swift_task_alloc();
    v0[22] = v11;
    v12 = lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(&lazy protocol witness table cache variable for type Song and conformance Song, &type metadata accessor for Song);
    *v11 = v0;
    v11[1] = _album #1 (from:) in Track.album(from:fallbackSource:);
    v13 = v0[15];
    v14 = v0[13];
    v15 = v0[3];
    v16 = &protocol witness table for Song;
    v17 = &protocol witness table for Song;
LABEL_5:

    return MusicItem<>.with(_:preferredSource:)(v13, v10, v15, v14, v16, v17, v12);
  }

  if (v5 == enum case for Track.musicVideo(_:))
  {
    v18 = v0[20];
    v19 = v0[8];
    v20 = v0[5];
    v21 = v0[6];
    (*(v0[18] + 96))(v18, v0[17]);
    (*(v21 + 32))(v19, v18, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v10 = swift_allocObject();
    v0[24] = v10;
    *(v10 + 16) = xmmword_1004F2F10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit07PartialA13AsyncPropertyCyAA0A5VideoVGMd);
    *(v10 + 32) = static PartialMusicProperty<A>.albums.getter();
    v22 = swift_task_alloc();
    v0[25] = v22;
    v12 = lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(&lazy protocol witness table cache variable for type MusicVideo and conformance MusicVideo, &type metadata accessor for MusicVideo);
    *v22 = v0;
    v22[1] = _album #1 (from:) in Track.album(from:fallbackSource:);
    v13 = v0[7];
    v14 = v0[5];
    v15 = v0[3];
    v16 = &protocol witness table for MusicVideo;
    v17 = &protocol witness table for MusicVideo;
    goto LABEL_5;
  }

  if (one-time initialization token for musicKit != -1)
  {
    swift_once();
  }

  v23 = v0[19];
  v24 = v0[17];
  v25 = v0[4];
  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Logger.musicKit);
  v4(v23, v25, v24);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.fault.getter();
  v29 = os_log_type_enabled(v27, v28);
  v31 = v0[18];
  v30 = v0[19];
  v32 = v0[17];
  if (v29)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v43 = v34;
    *v33 = 136446210;
    lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(&lazy protocol witness table cache variable for type Track and conformance Track, &type metadata accessor for Track);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    v42 = *(v31 + 8);
    v42(v30, v32);
    v38 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v35, v37, &v43);

    *(v33 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v27, v28, "Unexpected Track type %{public}s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
  }

  else
  {

    v42 = *(v31 + 8);
    v42(v30, v32);
  }

  lazy protocol witness table accessor for type TrackAlbumError #1 in Track.album(from:fallbackSource:) and conformance TrackAlbumError #1 in Track.album(from:fallbackSource:)();
  swift_allocError();
  *v39 = 1;
  swift_willThrow();
  v42(v0[20], v0[17]);

  v40 = v0[1];

  return v40();
}

{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = _album #1 (from:) in Track.album(from:fallbackSource:);
  }

  else
  {
    v2 = _album #1 (from:) in Track.album(from:fallbackSource:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[10];
  Song.albums.getter();
  v18 = *(v2 + 8);
  v18(v1, v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA5AlbumVGMd);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v4, 1, v5);
  v8 = v0[12];
  v9 = v0[10];
  if (v7 == 1)
  {
    outlined destroy of TaskPriority?(v0[10], &_s8MusicKit0A14ItemCollectionVyAA5AlbumVGSgMd);
    v10 = type metadata accessor for Album();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
LABEL_4:
    outlined destroy of TaskPriority?(v0[12], &_s8MusicKit5AlbumVSgMd);
    lazy protocol witness table accessor for type TrackAlbumError #1 in Track.album(from:fallbackSource:) and conformance TrackAlbumError #1 in Track.album(from:fallbackSource:)();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    v18(v0[16], v0[13]);

    v14 = v0[1];
    goto LABEL_6;
  }

  specialized Collection.first.getter(v0[12]);
  (*(v6 + 8))(v9, v5);
  v11 = type metadata accessor for Album();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v8, 1, v11) == 1)
  {
    goto LABEL_4;
  }

  v15 = v0[12];
  v16 = v0[2];
  v18(v0[16], v0[13]);
  (*(v12 + 32))(v16, v15, v11);

  v14 = v0[1];
LABEL_6:

  return v14();
}

{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = _album #1 (from:) in Track.album(from:fallbackSource:);
  }

  else
  {
    v2 = _album #1 (from:) in Track.album(from:fallbackSource:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  MusicVideo.albums.getter();
  v18 = *(v3 + 8);
  v18(v2, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA5AlbumVGMd);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v1, 1, v5);
  v8 = v0[11];
  v9 = v0[9];
  if (v7 == 1)
  {
    outlined destroy of TaskPriority?(v0[9], &_s8MusicKit0A14ItemCollectionVyAA5AlbumVGSgMd);
    v10 = type metadata accessor for Album();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
LABEL_4:
    outlined destroy of TaskPriority?(v0[11], &_s8MusicKit5AlbumVSgMd);
    lazy protocol witness table accessor for type TrackAlbumError #1 in Track.album(from:fallbackSource:) and conformance TrackAlbumError #1 in Track.album(from:fallbackSource:)();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    v18(v0[8], v0[5]);

    v14 = v0[1];
    goto LABEL_6;
  }

  specialized Collection.first.getter(v0[11]);
  (*(v6 + 8))(v9, v5);
  v11 = type metadata accessor for Album();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v8, 1, v11) == 1)
  {
    goto LABEL_4;
  }

  v15 = v0[11];
  v16 = v0[2];
  v18(v0[8], v0[5]);
  (*(v12 + 32))(v16, v15, v11);

  v14 = v0[1];
LABEL_6:

  return v14();
}

{
  (*(v0[14] + 8))(v0[16], v0[13]);

  v1 = v0[1];

  return v1();
}

{
  (*(v0[6] + 8))(v0[8], v0[5]);

  v1 = v0[1];

  return v1();
}

NSString one-time initialization function for downloadingStateDidChange()
{
  result = String._bridgeToObjectiveC()();
  static MusicLibrary.downloadingStateDidChange = result;
  return result;
}

uint64_t *MusicLibrary.downloadingStateDidChange.unsafeMutableAddressor()
{
  if (one-time initialization token for downloadingStateDidChange != -1)
  {
    swift_once();
  }

  return &static MusicLibrary.downloadingStateDidChange;
}

id static MusicLibrary.downloadingStateDidChange.getter()
{
  if (one-time initialization token for downloadingStateDidChange != -1)
  {
    swift_once();
  }

  v1 = static MusicLibrary.downloadingStateDidChange;

  return v1;
}

uint64_t MusicPin.Action.localizedTitle(for:)(char *a1)
{
  v2 = v1;
  v33 = a1;
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for String.LocalizationValue();
  v5 = *(v35 - 8);
  v6 = __chkstk_darwin(v35);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v31 - v9;
  v11 = type metadata accessor for MusicPin.Item();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MusicPin.Action();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18, v2, v15);
  v19 = (*(v16 + 88))(v18, v15);
  if (v19 == enum case for MusicPin.Action.navigate(_:))
  {
    (*(v12 + 16))(v14, v33, v11);
    v20 = (*(v12 + 88))(v14, v11);
    if (v20 == enum case for MusicPin.Item.album(_:))
    {
      v32 = v11;
      v33 = v14;
      String.LocalizationValue.init(stringLiteral:)();
      v21 = v35;
      (*(v5 + 16))(v8, v10, v35);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v22 = static NSBundle.module;
      static Locale.current.getter();
      v23 = String.init(localized:table:bundle:locale:comment:)();
      (*(v5 + 8))(v10, v21);
      (*(v12 + 8))(v33, v32);
      return v23;
    }

    v24 = v35;
    if (v20 != enum case for MusicPin.Item.artist(_:) && v20 != enum case for MusicPin.Item.musicVideo(_:) && v20 != enum case for MusicPin.Item.playlist(_:) && v20 != enum case for MusicPin.Item.song(_:))
    {
      (*(v12 + 8))(v14, v11);
      return 0;
    }

    String.LocalizationValue.init(stringLiteral:)();
    (*(v5 + 16))(v8, v10, v24);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v29 = static NSBundle.module;
    static Locale.current.getter();
    v23 = String.init(localized:table:bundle:locale:comment:)();
    (*(v5 + 8))(v10, v24);
    (*(v12 + 8))(v14, v11);
  }

  else
  {
    if (v19 != enum case for MusicPin.Action.play(_:) && v19 != enum case for MusicPin.Action.shuffle(_:))
    {
      (*(v16 + 8))(v18, v15);
      return 0;
    }

    String.LocalizationValue.init(stringLiteral:)();
    v25 = v5;
    v26 = *(v5 + 16);
    v27 = v35;
    v26(v8, v10, v35);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v28 = static NSBundle.module;
    static Locale.current.getter();
    v23 = String.init(localized:table:bundle:locale:comment:)();
    (*(v25 + 8))(v10, v27);
  }

  return v23;
}

uint64_t protocol witness for static ApproximatelyEquatable.==~ infix(_:_:) in conformance Song()
{
  lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(&lazy protocol witness table cache variable for type Song and conformance Song, &type metadata accessor for Song);

  return static MusicItem<>.==~ infix(_:_:)();
}

uint64_t protocol witness for static ApproximatelyEquatable.==~ infix(_:_:) in conformance MusicVideo()
{
  lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(&lazy protocol witness table cache variable for type MusicVideo and conformance MusicVideo, &type metadata accessor for MusicVideo);

  return static MusicItem<>.==~ infix(_:_:)();
}

uint64_t protocol witness for static ApproximatelyEquatable.==~ infix(_:_:) in conformance Playlist()
{
  lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(&lazy protocol witness table cache variable for type Playlist and conformance Playlist, &type metadata accessor for Playlist);

  return static MusicItem<>.==~ infix(_:_:)();
}

uint64_t protocol witness for static ApproximatelyEquatable.==~ infix(_:_:) in conformance Playlist.Folder()
{
  lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(&lazy protocol witness table cache variable for type Playlist.Folder and conformance Playlist.Folder, &type metadata accessor for Playlist.Folder);
  lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(&lazy protocol witness table cache variable for type Playlist.Folder and conformance Playlist.Folder, &type metadata accessor for Playlist.Folder);

  return static MusicItem<>.==~ infix(_:_:)();
}

uint64_t protocol witness for static ApproximatelyEquatable.==~ infix(_:_:) in conformance MusicPin()
{
  lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(&lazy protocol witness table cache variable for type MusicPin and conformance MusicPin, &type metadata accessor for MusicPin);
  lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(&lazy protocol witness table cache variable for type MusicPin and conformance MusicPin, &type metadata accessor for MusicPin);

  return static MusicItem<>.==~ infix(_:_:)();
}

uint64_t protocol witness for static ApproximatelyEquatable.==~ infix(_:_:) in conformance MusicPin.Item()
{
  lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(&lazy protocol witness table cache variable for type MusicPin.Item and conformance MusicPin.Item, &type metadata accessor for MusicPin.Item);
  lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(&lazy protocol witness table cache variable for type MusicPin.Item and conformance MusicPin.Item, &type metadata accessor for MusicPin.Item);

  return static MusicItem<>.==~ infix(_:_:)();
}

uint64_t one-time initialization function for musicKit()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.musicKit);
  __swift_project_value_buffer(v0, static Logger.musicKit);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.musicKit.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for musicKit != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.musicKit);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t specialized Set._Variant.remove(_:)(char a1)
{
  v2 = v1;
  v4 = *v1;
  Hasher.init(_seed:)();
  ActionType.rawValue.getter(a1);
  String.hash(into:)();

  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 52;
  }

  v8 = ~v6;
  while (1)
  {
    v9 = ActionType.rawValue.getter(*(*(v4 + 48) + v7));
    v11 = v10;
    if (v9 == ActionType.rawValue.getter(a1) && v11 == v12)
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      goto LABEL_11;
    }

    v7 = (v7 + 1) & v8;
    if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 52;
    }
  }

LABEL_11:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v17 = v19;
  }

  v15 = *(*(v17 + 48) + v7);
  specialized _NativeSet._delete(at:)(v7);
  *v2 = v19;
  return v15;
}

{
  v2 = v1;
  v4 = *v1;
  Hasher.init(_seed:)();
  Library.Menu.Identifier.rawValue.getter(a1);
  String.hash(into:)();

  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 13;
  }

  v8 = ~v6;
  while (1)
  {
    v9 = 0xD000000000000029;
    v10 = "orites";
    switch(*(*(v4 + 48) + v7))
    {
      case 1:
        v9 = 0xD000000000000025;
        v10 = "LibraryView.RecentlyAdded";
        break;
      case 2:
        v9 = 0xD000000000000023;
        v10 = "LibraryView.Playlists";
        break;
      case 3:
        v9 = 0xD000000000000022;
        v10 = "LibraryView.Artists";
        break;
      case 4:
        v9 = 0xD000000000000021;
        v10 = "LibraryView.Albums";
        break;
      case 5:
        v9 = 0xD000000000000026;
        v10 = "LibraryView.Songs";
        break;
      case 6:
        v9 = 0xD000000000000027;
        v10 = "LibraryView.MadeForYou";
        break;
      case 7:
        v9 = 0xD000000000000022;
        v10 = "LibraryView.MusicVideos";
        break;
      case 8:
        v9 = 0xD000000000000028;
        v10 = "LibraryView.Genres";
        break;
      case 9:
        v9 = 0xD000000000000025;
        v10 = "LibraryView.Compilations";
        break;
      case 0xA:
        v9 = 0xD000000000000021;
        v10 = "LibraryView.Composers";
        break;
      case 0xB:
        v9 = 0xD000000000000026;
        v10 = "LibraryView.Shows";
        break;
      case 0xC:
        v9 = 0xD000000000000027;
        v10 = "LibraryView.Downloaded";
        break;
      default:
        break;
    }

    v11 = v10 | 0x8000000000000000;
    v12 = 0xD000000000000029;
    v13 = "orites";
    switch(a1)
    {
      case 1:
        v12 = 0xD000000000000025;
        v13 = "LibraryView.RecentlyAdded";
        break;
      case 2:
        v12 = 0xD000000000000023;
        v13 = "LibraryView.Playlists";
        break;
      case 3:
        v12 = 0xD000000000000022;
        v13 = "LibraryView.Artists";
        break;
      case 4:
        v12 = 0xD000000000000021;
        v13 = "LibraryView.Albums";
        break;
      case 5:
        v12 = 0xD000000000000026;
        v13 = "LibraryView.Songs";
        break;
      case 6:
        v12 = 0xD000000000000027;
        v13 = "LibraryView.MadeForYou";
        break;
      case 7:
        v12 = 0xD000000000000022;
        v13 = "LibraryView.MusicVideos";
        break;
      case 8:
        v12 = 0xD000000000000028;
        v13 = "LibraryView.Genres";
        break;
      case 9:
        v12 = 0xD000000000000025;
        v13 = "LibraryView.Compilations";
        break;
      case 10:
        v12 = 0xD000000000000021;
        v13 = "LibraryView.Composers";
        break;
      case 11:
        v12 = 0xD000000000000026;
        v13 = "LibraryView.Shows";
        break;
      case 12:
        v12 = 0xD000000000000027;
        v13 = "LibraryView.Downloaded";
        break;
      default:
        break;
    }

    if (v9 == v12 && v11 == (v13 | 0x8000000000000000))
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      goto LABEL_35;
    }

    v7 = (v7 + 1) & v8;
    if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 13;
    }
  }

LABEL_35:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v17 = v19;
  }

  v15 = *(*(v17 + 48) + v7);
  specialized _NativeSet._delete(at:)(v7);
  *v2 = v19;
  return v15;
}

{
  v2 = v1;
  v4 = *v2;
  Hasher.init(_seed:)();
  v5 = qword_100519430[a1];
  Hasher._combine(_:)(v5);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 10;
  }

  v9 = ~v7;
  while (qword_100519430[*(*(v4 + 48) + v8)] != v5)
  {
    v8 = (v8 + 1) & v9;
    if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 10;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v14 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + v8);
  specialized _NativeSet._delete(at:)(v8);
  result = v13;
  *v2 = v14;
  return result;
}

uint64_t specialized Set._Variant.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AudioVariant();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(&lazy protocol witness table cache variable for type AudioVariant and conformance AudioVariant, &type metadata accessor for AudioVariant);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(&lazy protocol witness table cache variable for type AudioVariant and conformance AudioVariant, &type metadata accessor for AudioVariant);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    specialized _NativeSet._delete(at:)(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

{
  v5 = type metadata accessor for Playlist.Collaborator();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Playlist.Collaborator and conformance Playlist.Collaborator, &type metadata accessor for Playlist.Collaborator);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Playlist.Collaborator and conformance Playlist.Collaborator, &type metadata accessor for Playlist.Collaborator);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    specialized _NativeSet._delete(at:)(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = static Hasher._hash(seed:_:)();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  specialized _NativeSet._delete(at:)(v6);
  result = v11;
  *v1 = v12;
  return result;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        Hasher.init(_seed:)();
        ActionType.rawValue.getter(v10);
        String.hash(into:)();

        v11 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + v2);
          v14 = (v12 + v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();
        String.hash(into:)();

        v10 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
    JUMPOUT(0x100129C80);
  }

  *(v3 + 16) = v16;
  ++*(v3 + 36);
  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = static Hasher._hash(seed:_:)() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(qword_100519430[v10]);
        v11 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + v2);
          v14 = (v12 + v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v10);
        v11 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = NSObject._rawHashValue(seed:)(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t specialized _NativeSet._delete(at:)(int64_t a1)
{
  v3 = type metadata accessor for AudioVariant();
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = _HashTable.previousHole(before:)();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(&lazy protocol witness table cache variable for type AudioVariant and conformance AudioVariant, &type metadata accessor for AudioVariant);
        v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

uint64_t specialized _NativeSet.genericIntersection<A>(_:)(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    partial apply for specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(v14, v7, v17);
    v10 = v17[0];
  }

  return v10;
}

uint64_t specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v29 = a1;
  v6 = type metadata accessor for AudioVariant();
  v7 = __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v39 = &v26 - v11;
  v32 = *(a3 + 16);
  if (v32)
  {
    v28 = 0;
    v12 = 0;
    v37 = *(v10 + 16);
    v38 = v10 + 16;
    v31 = a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v13 = *(v10 + 72);
    v35 = a4 + 56;
    v36 = v13;
    v14 = (v10 + 8);
    v34 = a4;
    while (1)
    {
      v33 = v12;
      v37(v39, v31 + v36 * v12, v6);
      lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(&lazy protocol witness table cache variable for type AudioVariant and conformance AudioVariant, &type metadata accessor for AudioVariant);
      v17 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v18 = -1 << *(a4 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      v21 = 1 << v19;
      if (((1 << v19) & *(v35 + 8 * (v19 >> 6))) == 0)
      {
        break;
      }

      v30 = v14 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v22 = ~v18;
      while (1)
      {
        v37(v9, *(v34 + 48) + v19 * v36, v6);
        lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(&lazy protocol witness table cache variable for type AudioVariant and conformance AudioVariant, &type metadata accessor for AudioVariant);
        v23 = dispatch thunk of static Equatable.== infix(_:_:)();
        v15 = *v14;
        (*v14)(v9, v6);
        if (v23)
        {
          break;
        }

        v19 = (v19 + 1) & v22;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v35 + 8 * (v19 >> 6))) == 0)
        {
          a4 = v34;
          goto LABEL_4;
        }
      }

      result = (v15)(v39, v6);
      v25 = v29[v20];
      v29[v20] = v25 | v21;
      if ((v25 & v21) != 0)
      {
        a4 = v34;
LABEL_5:
        v16 = v33;
        goto LABEL_6;
      }

      v16 = v33;
      a4 = v34;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        return result;
      }

      ++v28;
LABEL_6:
      v12 = v16 + 1;
      if (v12 == v32)
      {
        goto LABEL_17;
      }
    }

    v15 = *v14;
LABEL_4:
    v15(v39, v6);
    goto LABEL_5;
  }

  v28 = 0;
LABEL_17:

  return specialized _NativeSet.extractSubset(using:count:)(v29, v27, v28, a4);
}

uint64_t specialized static AudioVariant.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit12AudioVariantO_ACtMd);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v23 - v6;
  v8 = *(v5 + 56);
  v9 = type metadata accessor for AudioVariant();
  v10 = *(v9 - 8);
  v11 = *(v10 + 16);
  v11(v7, a1, v9);
  v11(&v7[v8], a2, v9);
  v12 = *(v10 + 88);
  v13 = v12(v7, v9);
  v14 = enum case for AudioVariant.dolbyAtmos(_:);
  if (v13 == enum case for AudioVariant.dolbyAtmos(_:))
  {
    goto LABEL_2;
  }

  v16 = enum case for AudioVariant.dolbyAudio(_:);
  if (v13 == enum case for AudioVariant.dolbyAudio(_:))
  {
    if (v12(&v7[v8], v9) != v14)
    {
LABEL_2:
      (*(v10 + 8))(&v7[v8], v9);
      return 1;
    }
  }

  else if (v13 == enum case for AudioVariant.lossless(_:))
  {
    v17 = v12(&v7[v8], v9);
    if (v17 != v14 && v17 != v16 && v17 != enum case for AudioVariant.highResolutionLossless(_:))
    {
      goto LABEL_2;
    }
  }

  else if (v13 == enum case for AudioVariant.highResolutionLossless(_:))
  {
    v20 = v12(&v7[v8], v9);
    if (v20 != v14 && v20 != v16)
    {
      goto LABEL_2;
    }
  }

  else
  {
    v22 = *(v10 + 8);
    v22(&v7[v8], v9);
    v22(v7, v9);
  }

  return 0;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8MusicKit12AudioVariantO_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for AudioVariant();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(&lazy protocol witness table cache variable for type AudioVariant and conformance AudioVariant, &type metadata accessor for AudioVariant);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      specialized Set._Variant.insert(_:)(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t outlined init with copy of MusicPropertySource?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14PropertySourceOSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type TrackAlbumError #1 in Track.album(from:fallbackSource:) and conformance TrackAlbumError #1 in Track.album(from:fallbackSource:)()
{
  result = lazy protocol witness table cache variable for type TrackAlbumError #1 in Track.album(from:fallbackSource:) and conformance TrackAlbumError #1 in Track.album(from:fallbackSource:);
  if (!lazy protocol witness table cache variable for type TrackAlbumError #1 in Track.album(from:fallbackSource:) and conformance TrackAlbumError #1 in Track.album(from:fallbackSource:))
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrackAlbumError #1 in Track.album(from:fallbackSource:) and conformance TrackAlbumError #1 in Track.album(from:fallbackSource:));
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TrackAlbumError #1 in Track.album(from:fallbackSource:) and conformance TrackAlbumError #1 in Track.album(from:fallbackSource:);
  if (!lazy protocol witness table cache variable for type TrackAlbumError #1 in Track.album(from:fallbackSource:) and conformance TrackAlbumError #1 in Track.album(from:fallbackSource:))
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrackAlbumError #1 in Track.album(from:fallbackSource:) and conformance TrackAlbumError #1 in Track.album(from:fallbackSource:));
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9MusicCore18BackgroundMaterialO_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  lazy protocol witness table accessor for type BackgroundMaterial and conformance BackgroundMaterial();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      specialized Set._Variant.insert(_:)(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9MusicCore7LibraryO4MenuV10IdentifierO_SayAJGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  lazy protocol witness table accessor for type Library.Menu.Identifier and conformance Library.Menu.Identifier();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      specialized Set._Variant.insert(_:)(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Library.Menu.Identifier and conformance Library.Menu.Identifier()
{
  result = lazy protocol witness table cache variable for type Library.Menu.Identifier and conformance Library.Menu.Identifier;
  if (!lazy protocol witness table cache variable for type Library.Menu.Identifier and conformance Library.Menu.Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Library.Menu.Identifier and conformance Library.Menu.Identifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Library.Menu.Identifier and conformance Library.Menu.Identifier;
  if (!lazy protocol witness table cache variable for type Library.Menu.Identifier and conformance Library.Menu.Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Library.Menu.Identifier and conformance Library.Menu.Identifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Library.Menu.Identifier and conformance Library.Menu.Identifier;
  if (!lazy protocol witness table cache variable for type Library.Menu.Identifier and conformance Library.Menu.Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Library.Menu.Identifier and conformance Library.Menu.Identifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Library.Menu.Identifier and conformance Library.Menu.Identifier;
  if (!lazy protocol witness table cache variable for type Library.Menu.Identifier and conformance Library.Menu.Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Library.Menu.Identifier and conformance Library.Menu.Identifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Library.Menu.Identifier and conformance Library.Menu.Identifier;
  if (!lazy protocol witness table cache variable for type Library.Menu.Identifier and conformance Library.Menu.Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Library.Menu.Identifier and conformance Library.Menu.Identifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BackgroundMaterial and conformance BackgroundMaterial()
{
  result = lazy protocol witness table cache variable for type BackgroundMaterial and conformance BackgroundMaterial;
  if (!lazy protocol witness table cache variable for type BackgroundMaterial and conformance BackgroundMaterial)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackgroundMaterial and conformance BackgroundMaterial);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BackgroundMaterial and conformance BackgroundMaterial;
  if (!lazy protocol witness table cache variable for type BackgroundMaterial and conformance BackgroundMaterial)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackgroundMaterial and conformance BackgroundMaterial);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BackgroundMaterial and conformance BackgroundMaterial;
  if (!lazy protocol witness table cache variable for type BackgroundMaterial and conformance BackgroundMaterial)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackgroundMaterial and conformance BackgroundMaterial);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for specialized closure #1 in _NativeSet.genericIntersection<A>(_:)@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t static Logger.music(_:)()
{

  return Logger.init(subsystem:category:)();
}

uint64_t *OS_os_log.musicBag.unsafeMutableAddressor()
{
  if (one-time initialization token for musicBag != -1)
  {
    swift_once();
  }

  return &static OS_os_log.musicBag;
}

uint64_t *OS_os_log.musicSignposts.unsafeMutableAddressor()
{
  if (one-time initialization token for musicSignposts != -1)
  {
    swift_once();
  }

  return &static OS_os_log.musicSignposts;
}

uint64_t one-time initialization function for musicSignposts(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  *a4 = result;
  return result;
}

uint64_t Logger.motion.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t one-time initialization function for audioFormat(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.audioFormat.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t Optional.expectNotNil(logger:file:line:function:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, unint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v7 = v6;
  v31 = a2;
  v32 = a3;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*(*(a5 + 16) - 8) + 48))(v6, 1) == 1)
  {
    v28 = a1;
    v30 = a4;
    v16 = static os_log_type_t.info.getter();
    v17 = Logger.logObject.getter();
    v29 = v16;
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v27 = a6;
      v19 = v18;
      v26 = swift_slowAlloc();
      v33 = v26;
      *v19 = 136315650;
      URL.init(fileURLWithPath:)();
      v20 = URL.lastPathComponent.getter();
      v22 = v21;
      (*(v13 + 8))(v15, v12);
      v23 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v20, v22, &v33);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2048;
      v24 = v32;
      *(v19 + 14) = v31;
      *(v19 + 22) = 2080;
      *(v19 + 24) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v24, v30, &v33);
      _os_log_impl(&_mh_execute_header, v17, v29, "Unexpectedly found nil: %s:%ld %s", v19, 0x20u);
      swift_arrayDestroy();

      a6 = v27;
    }
  }

  return (*(*(a5 - 8) + 16))(a6, v7, a5);
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

uint64_t MPModelSong.nowPlayingTitle(from:)(void *a1)
{
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v24[-v9];
  v11 = [v1 title];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      return v13;
    }
  }

  if (!a1)
  {
    goto LABEL_12;
  }

  v17 = [a1 name];
  if (!v17)
  {
    goto LABEL_12;
  }

  v18 = v17;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {

LABEL_12:
    String.LocalizationValue.init(stringLiteral:)();
    (*(v5 + 16))(v8, v10, v4);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v22 = static NSBundle.module;
    static Locale.current.getter();
    v13 = String.init(localized:table:bundle:locale:comment:)();
    (*(v5 + 8))(v10, v4);
  }

  return v13;
}

id MPModelSong.nowPlayingAttributedTitle(from:explicitBadgeConfigurator:)(void *a1, void (*a2)(char *), uint64_t a3)
{
  v7 = type metadata accessor for AttributedString();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v11 - 8);
  MPModelSong.nowPlayingTitle(from:)(a1);
  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  result = [v3 isExplicitSong];
  if (result)
  {
    v21[1] = a3;
    v22 = a2;
    v13 = String.nonBreakingSpace.unsafeMutableAddressor();
    v14 = *v13;
    v15 = v13[1];
    v16 = one-time initialization token for shared;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = (static ExplicitRestrictionsController.shared + OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_symbol);
    swift_beginAccess();
    v18 = *v17;
    v19 = v17[1];
    v23 = v14;
    v24 = v15;

    v20._countAndFlagsBits = v18;
    v20._object = v19;
    String.append(_:)(v20);

    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    if (v22)
    {
      v22(v10);
    }

    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, &type metadata accessor for AttributedString);
    AttributedString.append<A>(_:)();
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t MPModelSong.preferredBylineAttribution(with:from:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  __chkstk_darwin(v8 - 8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for AttributedString();
  v12 = *(v11 - 8);
  v42 = v11;
  v43 = v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v44 = &v37 - v17;
  __chkstk_darwin(v16);
  v41 = &v37 - v18;
  v19 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v19 - 8);
  if (a2 && (v20 = [a2 attributionLabel]) != 0)
  {
    v21 = v20;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    return (*(v43 + 56))(a3, 0, 1, v42);
  }

  else
  {
    v38 = v15;
    v39 = a3;
    v23 = *(a1 + 16);
    if (v23)
    {
      v24 = (a1 + 32);
      v25 = v42;
      v26 = (v43 + 48);
      v27 = (v43 + 32);
      v28 = _swiftEmptyArrayStorage;
      v40 = v4;
      do
      {
        v45 = *v24;
        closure #1 in MPModelSong.preferredBylineAttribution(with:from:)(&v45, v4, v10);
        if ((*v26)(v10, 1, v25) == 1)
        {
          outlined destroy of TaskPriority?(v10, &_s10Foundation16AttributedStringVSgMd);
        }

        else
        {
          v29 = *v27;
          v30 = v41;
          (*v27)(v41, v10, v25);
          v29(v44, v30, v25);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28[2] + 1, 1, v28);
          }

          v32 = v28[2];
          v31 = v28[3];
          if (v32 >= v31 >> 1)
          {
            v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v31 > 1, v32 + 1, 1, v28);
          }

          v28[2] = (v32 + 1);
          v33 = v28 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v32;
          v25 = v42;
          v29(v33, v44, v42);
          v4 = v40;
        }

        ++v24;
        --v23;
      }

      while (v23);
    }

    else
    {
      v28 = _swiftEmptyArrayStorage;
      v25 = v42;
    }

    if (v28[2])
    {
      v34 = v38;
      AttributedString.init(stringLiteral:)();
      v35 = v39;
      Array<A>.joined(separator:)(v34, v28, v25, &protocol witness table for AttributedString, &protocol witness table for AttributedString, v39);

      v36 = v43;
      (*(v43 + 8))(v34, v25);
      return (*(v36 + 56))(v35, 0, 1, v25);
    }

    else
    {
      (*(v43 + 56))(v39, 1, 1, v25);
    }
  }
}

uint64_t closure #1 in MPModelSong.preferredBylineAttribution(with:from:)@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v39 = type metadata accessor for AttributedString.FormattingOptions();
  __chkstk_darwin(v39);
  v38[1] = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  __chkstk_darwin(v7 - 8);
  v38[0] = v38 - v8;
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v11 - 8);
  v12 = *a1;
  v13 = SongBylineAttributionComponent.requiredProperties.getter(v12);
  v14 = [a2 hasLoadedValuesForPropertySet:v13];

  if (!v14)
  {
    v23 = type metadata accessor for AttributedString();
    return (*(*(v23 - 8) + 56))(a3, 1, 1, v23);
  }

  if (v12)
  {
    v15 = [a2 artist];
    v16 = a3;
    if (!v15)
    {
      goto LABEL_19;
    }

    v17 = v15;
    v18 = [v15 name];

    if (!v18)
    {
      goto LABEL_19;
    }

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v22 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      AttributeContainer.init()();
      AttributedString.init(_:attributes:)();
LABEL_17:
      v36 = type metadata accessor for AttributedString();
      return (*(*(v36 - 8) + 56))(v16, 0, 1, v36);
    }
  }

  else
  {
    v16 = a3;
    if (![a2 shouldShowComposer])
    {
      goto LABEL_19;
    }

    v25 = [a2 composer];
    if (!v25)
    {
      goto LABEL_19;
    }

    v26 = v25;
    v27 = [v25 name];

    if (!v27)
    {
      goto LABEL_19;
    }

    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v31 = v28 & 0xFFFFFFFFFFFFLL;
    }

    if (v31)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v32._countAndFlagsBits = 2128194;
      v32._object = 0xE300000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v32);
      v33._countAndFlagsBits = v28;
      v33._object = v30;
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v33);

      v34._countAndFlagsBits = 0;
      v34._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v34);
      String.LocalizationValue.init(stringInterpolation:)();
      v35 = type metadata accessor for Locale();
      (*(*(v35 - 8) + 56))(v38[0], 1, 1, v35);
      v40 = _swiftEmptyArrayStorage;
      lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions, &type metadata accessor for AttributedString.FormattingOptions);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation16AttributedStringV17FormattingOptionsVGMd);
      lazy protocol witness table accessor for type [AttributedString.FormattingOptions] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      AttributedString.init(localized:options:table:bundle:locale:comment:)();
      goto LABEL_17;
    }
  }

LABEL_19:
  v37 = type metadata accessor for AttributedString();
  return (*(*(v37 - 8) + 56))(v16, 1, 1, v37);
}

id SongBylineAttributionComponent.requiredProperties.getter(char a1)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So13MPPropertySetCtGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2400;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1004F2400;
    *(v3 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v3 + 40) = v4;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v6 = [objc_opt_self() propertySetWithProperties:isa];

    *(inited + 48) = v6;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So13MPPropertySetCTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of TaskPriority?(inited + 32, &_sSS_So13MPPropertySetCtMd);
    v7 = objc_allocWithZone(MPPropertySet);
    v8.super.isa = Array._bridgeToObjectiveC()().super.isa;
    type metadata accessor for MPPropertySet();
    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v10 = [v7 initWithProperties:v8.super.isa relationships:{v9.super.isa, 1, 2}];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1004F2400;
    *(v11 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v11 + 40) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So13MPPropertySetCtGMd);
    v13 = swift_initStackObject();
    *(v13 + 16) = xmmword_1004F2400;
    *(v13 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v13 + 40) = v14;
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1004F2400;
    *(v15 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v15 + 40) = v16;
    v17 = Array._bridgeToObjectiveC()().super.isa;

    v18 = [objc_opt_self() propertySetWithProperties:v17];

    *(v13 + 48) = v18;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So13MPPropertySetCTt0g5Tf4g_n(v13);
    swift_setDeallocating();
    outlined destroy of TaskPriority?(v13 + 32, &_sSS_So13MPPropertySetCtMd);
    v19 = objc_allocWithZone(MPPropertySet);
    v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

    type metadata accessor for MPPropertySet();
    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v10 = [v19 initWithProperties:v8.super.isa relationships:{v9.super.isa, 1, 2}];
  }

  v20 = v10;

  return v20;
}

uint64_t specialized BylineProviding.byline(with:)@<X0>(id *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for AttributedString();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;

  v11 = specialized MutableCollection<>.sort(by:)(&v16);
  v12 = v16;
  __chkstk_darwin(v11);
  *(&v15 - 2) = v3;
  v13 = specialized Sequence.compactMap<A>(_:)(a2, (&v15 - 4), v12);

  if (v13[2])
  {
    AttributedString.init(stringLiteral:)();
    Array<A>.joined(separator:)(v10, v13, v7, &protocol witness table for AttributedString, &protocol witness table for AttributedString, a3);

    (*(v8 + 8))(v10, v7);
    return (*(v8 + 56))(a3, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(a3, 1, 1, v7);
  }
}

uint64_t BylineProviding.byline(with:)@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for AttributedString();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;

  v13 = specialized MutableCollection<>.sort(by:)(&v18);
  v14 = v18;
  __chkstk_darwin(v13);
  *(&v17 - 4) = a2;
  *(&v17 - 3) = a3;
  *(&v17 - 2) = v4;
  v15 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in BylineProviding.byline(with:), (&v17 - 6), v14);

  if (v15[2])
  {
    AttributedString.init(stringLiteral:)();
    Array<A>.joined(separator:)(v12, v15, v9, &protocol witness table for AttributedString, &protocol witness table for AttributedString, a4);

    (*(v10 + 8))(v12, v9);
    return (*(v10 + 56))(a4, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(a4, 1, 1, v9);
  }
}

uint64_t specialized closure #1 in BylineProviding.byline(with:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributedString.FormattingOptions();
  __chkstk_darwin(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  __chkstk_darwin(v5 - 8);
  v7 = v27 - v6;
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v10 - 8);
  if (a1)
  {
    v11 = Song.artistName.getter();
    v13 = v12;

    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      Song.artistName.getter();
      AttributeContainer.init()();
      AttributedString.init(_:attributes:)();
LABEL_12:
      v24 = type metadata accessor for AttributedString();
      return (*(*(v24 - 8) + 56))(a2, 0, 1, v24);
    }
  }

  else if (Song.shouldShowComposer.getter())
  {
    v15 = Song.composerName.getter();
    if (v16)
    {
      v17 = v16;
      v18 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v18 = v15 & 0xFFFFFFFFFFFFLL;
      }

      if (v18)
      {
        v19 = v15;
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v20._countAndFlagsBits = 2128194;
        v20._object = 0xE300000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v20);
        v21._countAndFlagsBits = v19;
        v21._object = v17;
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v21);

        v22._countAndFlagsBits = 0;
        v22._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v22);
        String.LocalizationValue.init(stringInterpolation:)();
        v23 = type metadata accessor for Locale();
        (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
        v27[3] = _swiftEmptyArrayStorage;
        lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions, &type metadata accessor for AttributedString.FormattingOptions);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation16AttributedStringV17FormattingOptionsVGMd);
        lazy protocol witness table accessor for type [AttributedString.FormattingOptions] and conformance [A]();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        AttributedString.init(localized:options:table:bundle:locale:comment:)();
        goto LABEL_12;
      }
    }
  }

  v26 = type metadata accessor for AttributedString();
  return (*(*(v26 - 8) + 56))(a2, 1, 1, v26);
}

{
  v39 = a2;
  v37 = type metadata accessor for AttributedString.FormattingOptions();
  __chkstk_darwin(v37);
  v38 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  __chkstk_darwin(v4 - 8);
  v36 = v35 - v5;
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v35[1] = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v8 - 8);
  v35[0] = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Playlist.Entry.InternalItem();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Song();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v18 - 8);
  if ((a1 & 1) == 0)
  {
    if (Playlist.Entry.shouldShowComposer.getter())
    {
      Playlist.Entry.internalItem.getter();
      if ((*(v11 + 88))(v13, v10) == enum case for Playlist.Entry.InternalItem.song(_:))
      {
        (*(v11 + 96))(v13, v10);
        (*(v15 + 32))(v17, v13, v14);
        v25 = Song.composerName.getter();
        v27 = v26;
        (*(v15 + 8))(v17, v14);
        if (v27)
        {
          v28 = HIBYTE(v27) & 0xF;
          if ((v27 & 0x2000000000000000) == 0)
          {
            v28 = v25 & 0xFFFFFFFFFFFFLL;
          }

          v23 = v39;
          if (!v28)
          {

            v24 = 1;
            goto LABEL_16;
          }

          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v29._countAndFlagsBits = 2128194;
          v29._object = 0xE300000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v29);
          v30._countAndFlagsBits = v25;
          v30._object = v27;
          String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v30);

          v31._countAndFlagsBits = 0;
          v31._object = 0xE000000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v31);
          String.LocalizationValue.init(stringInterpolation:)();
          v32 = type metadata accessor for Locale();
          (*(*(v32 - 8) + 56))(v36, 1, 1, v32);
          v40 = _swiftEmptyArrayStorage;
          lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions, &type metadata accessor for AttributedString.FormattingOptions);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation16AttributedStringV17FormattingOptionsVGMd);
          lazy protocol witness table accessor for type [AttributedString.FormattingOptions] and conformance [A]();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          AttributedString.init(localized:options:table:bundle:locale:comment:)();
          goto LABEL_6;
        }
      }

      else
      {
        (*(v11 + 8))(v13, v10);
      }
    }

LABEL_15:
    v24 = 1;
    v23 = v39;
    goto LABEL_16;
  }

  v19 = Playlist.Entry.artistName.getter();
  v21 = v20;

  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {
    goto LABEL_15;
  }

  Playlist.Entry.artistName.getter();
  AttributeContainer.init()();
  v23 = v39;
  AttributedString.init(_:attributes:)();
LABEL_6:
  v24 = 0;
LABEL_16:
  v33 = type metadata accessor for AttributedString();
  return (*(*(v33 - 8) + 56))(v23, v24, 1, v33);
}

uint64_t specialized closure #1 in BylineProviding.byline(with:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v39 = type metadata accessor for AttributedString.FormattingOptions();
  __chkstk_darwin(v39);
  v40 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  __chkstk_darwin(v6 - 8);
  v38 = v37 - v7;
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v37[1] = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v10 - 8);
  v37[0] = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Track();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Song();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v20 - 8);
  if ((a1 & 1) == 0)
  {
    if (Track.shouldShowComposer.getter())
    {
      (*(v13 + 16))(v15, a2, v12);
      if ((*(v13 + 88))(v15, v12) == enum case for Track.song(_:))
      {
        (*(v13 + 96))(v15, v12);
        (*(v17 + 32))(v19, v15, v16);
        v27 = Song.composerName.getter();
        v29 = v28;
        (*(v17 + 8))(v19, v16);
        if (v29)
        {
          v30 = HIBYTE(v29) & 0xF;
          if ((v29 & 0x2000000000000000) == 0)
          {
            v30 = v27 & 0xFFFFFFFFFFFFLL;
          }

          v25 = v41;
          if (!v30)
          {

            v26 = 1;
            goto LABEL_16;
          }

          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v31._countAndFlagsBits = 2128194;
          v31._object = 0xE300000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v31);
          v32._countAndFlagsBits = v27;
          v32._object = v29;
          String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v32);

          v33._countAndFlagsBits = 0;
          v33._object = 0xE000000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v33);
          String.LocalizationValue.init(stringInterpolation:)();
          v34 = type metadata accessor for Locale();
          (*(*(v34 - 8) + 56))(v38, 1, 1, v34);
          v42 = _swiftEmptyArrayStorage;
          lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions, &type metadata accessor for AttributedString.FormattingOptions);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation16AttributedStringV17FormattingOptionsVGMd);
          lazy protocol witness table accessor for type [AttributedString.FormattingOptions] and conformance [A]();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          AttributedString.init(localized:options:table:bundle:locale:comment:)();
          goto LABEL_6;
        }
      }

      else
      {
        (*(v13 + 8))(v15, v12);
      }
    }

LABEL_15:
    v26 = 1;
    v25 = v41;
    goto LABEL_16;
  }

  v21 = Track.artistName.getter();
  v23 = v22;

  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {
    goto LABEL_15;
  }

  Track.artistName.getter();
  AttributeContainer.init()();
  v25 = v41;
  AttributedString.init(_:attributes:)();
LABEL_6:
  v26 = 0;
LABEL_16:
  v35 = type metadata accessor for AttributedString();
  return (*(*(v35 - 8) + 56))(v25, v26, 1, v35);
}

uint64_t closure #1 in BylineProviding.byline(with:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X2>, uint64_t (**a3)(uint64_t, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v36 = a4;
  v7 = type metadata accessor for AttributedString.FormattingOptions();
  __chkstk_darwin(v7);
  v35 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  __chkstk_darwin(v9 - 8);
  v11 = &v35 - v10;
  v12 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v14 - 8);
  if (*a1 == 1)
  {
    v15 = a3[1];
    v16 = v15(a2, a3);
    v18 = v17;

    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      v15(a2, a3);
      AttributeContainer.init()();
      v20 = v36;
      AttributedString.init(_:attributes:)();
      v21 = type metadata accessor for AttributedString();
      return (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
    }
  }

  else if (a3[3](a2, a3))
  {
    v23 = a3[2](a2, a3);
    if (v24)
    {
      v25 = v24;
      v26 = HIBYTE(v24) & 0xF;
      if ((v24 & 0x2000000000000000) == 0)
      {
        v26 = v23 & 0xFFFFFFFFFFFFLL;
      }

      if (v26)
      {
        v27 = v23;
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v28._countAndFlagsBits = 2128194;
        v28._object = 0xE300000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v28);
        v29._countAndFlagsBits = v27;
        v29._object = v25;
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v29);

        v30._countAndFlagsBits = 0;
        v30._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v30);
        String.LocalizationValue.init(stringInterpolation:)();
        v31 = type metadata accessor for Locale();
        (*(*(v31 - 8) + 56))(v11, 1, 1, v31);
        v37 = _swiftEmptyArrayStorage;
        lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions, &type metadata accessor for AttributedString.FormattingOptions);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation16AttributedStringV17FormattingOptionsVGMd);
        lazy protocol witness table accessor for type [AttributedString.FormattingOptions] and conformance [A]();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v32 = v36;
        AttributedString.init(localized:options:table:bundle:locale:comment:)();
        v33 = type metadata accessor for AttributedString();
        return (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
      }
    }
  }

  v34 = type metadata accessor for AttributedString();
  return (*(*(v34 - 8) + 56))(v36, 1, 1, v34);
}

uint64_t Track.composerName.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Track();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Song();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  if ((*(v3 + 88))(v5, v2) == enum case for Track.song(_:))
  {
    (*(v3 + 96))(v5, v2);
    (*(v7 + 32))(v9, v5, v6);
    v10 = Song.composerName.getter();
    (*(v7 + 8))(v9, v6);
    return v10;
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    return 0;
  }
}

uint64_t protocol witness for BylineProviding.composerName.getter in conformance Track(uint64_t a1)
{
  v3 = v1;
  v4 = *(a1 - 8);
  __chkstk_darwin(a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Song();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v3, a1);
  if ((*(v4 + 88))(v6, a1) == enum case for Track.song(_:))
  {
    (*(v4 + 96))(v6, a1);
    (*(v8 + 32))(v10, v6, v7);
    v11 = Song.composerName.getter();
    (*(v8 + 8))(v10, v7);
    return v11;
  }

  else
  {
    (*(v4 + 8))(v6, a1);
    return 0;
  }
}

uint64_t Playlist.Entry.composerName.getter()
{
  v0 = type metadata accessor for Playlist.Entry.InternalItem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Song();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Playlist.Entry.internalItem.getter();
  if ((*(v1 + 88))(v3, v0) == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v1 + 96))(v3, v0);
    (*(v5 + 32))(v7, v3, v4);
    v8 = Song.composerName.getter();
    (*(v5 + 8))(v7, v4);
    return v8;
  }

  else
  {
    (*(v1 + 8))(v3, v0);
    return 0;
  }
}

Swift::Int specialized MutableCollection<>.sort(by:)(id **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v17[0] = (v2 + 4);
  v17[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = *(v2 + v9 + 32);
        v12 = v8;
        v13 = v10;
        do
        {
          if ((*v13 & (v11 ^ 1) & 1) == 0)
          {
            break;
          }

          v13[1] = *v13;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 = (v10 + 1);
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v15[0] = v7 + 4;
    v15[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v15, v16, v17, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v20[0] = (v2 + 4);
  v20[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 6;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 + 4);
          if (*v12 >= v13)
          {
            break;
          }

          v14 = v12[5];
          v15 = *(v12 + 1);
          v16 = *v12;
          *(v12 + 1) = *(v12 - 1);
          *(v12 + 2) = v16;
          *(v12 - 1) = v15;
          *v12 = v13;
          v12[1] = v14;
          v12 -= 4;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 4;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreGraphics7CGFloatV3hue_AC10saturationAC10brightnessAC5alphatMd);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v18[0] = v7 + 4;
    v18[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v18, v19, v20, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = *(v2 + v9 + 32);
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= v14)
          {
            break;
          }

          v13[1] = v14;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 = (v10 + 1);
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = *&v2[v9 + 4];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

unint64_t lazy protocol witness table accessor for type SongBylineAttributionComponent and conformance SongBylineAttributionComponent()
{
  result = lazy protocol witness table cache variable for type SongBylineAttributionComponent and conformance SongBylineAttributionComponent;
  if (!lazy protocol witness table cache variable for type SongBylineAttributionComponent and conformance SongBylineAttributionComponent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SongBylineAttributionComponent and conformance SongBylineAttributionComponent);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_88:
    v83 = *v83;
    if (!v83)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
      v9 = result;
    }

    v75 = v9 + 16;
    v76 = *(v9 + 2);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v9[16 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + *v77), (*a3 + *v79), *a3 + v80, v83);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_112;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_113;
        }

        *v77 = v78;
        *(v77 + 1) = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_114;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + v8);
      v12 = *(*a3 + v10) & (v11 ^ 1);
      v13 = v10 + 2;
      while (v6 != v13)
      {
        v14 = *(*a3 + v13);
        v15 = v11 & (v14 ^ 1);
        ++v13;
        v11 = v14;
        if (v12 != v15)
        {
          v8 = v13 - 1;
          if (!v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (!v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v16 = v8 - 1;
        v17 = v10;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v18 = *(v20 + v17);
            *(v20 + v17) = *(v20 + v16);
            *(v20 + v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v29 = *(v9 + 2);
    v28 = *(v9 + 3);
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v30;
    v31 = &v9[16 * v29];
    *(v31 + 4) = v10;
    *(v31 + 5) = v8;
    v32 = *v83;
    if (!*v83)
    {
      goto LABEL_125;
    }

    if (v29)
    {
      while (1)
      {
        v33 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v34 = *(v9 + 4);
          v35 = *(v9 + 5);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_103;
          }

          v50 = &v9[16 * v30];
          v52 = *v50;
          v51 = *(v50 + 1);
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = &v9[16 * v33 + 32];
          v58 = *v56;
          v57 = *(v56 + 1);
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_110;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v33 = v30 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v60 = &v9[16 * v30];
        v62 = *v60;
        v61 = *(v60 + 1);
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_71:
        if (v55)
        {
          goto LABEL_105;
        }

        v63 = &v9[16 * v33];
        v65 = *(v63 + 4);
        v64 = *(v63 + 5);
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_108;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_78:
        v71 = v33 - 1;
        if (v33 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v72 = *&v9[16 * v71 + 32];
        v73 = *&v9[16 * v33 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + v72), (*a3 + *&v9[16 * v33 + 32]), *a3 + v73, v32);
        if (v4)
        {
        }

        if (v73 < v72)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
        }

        if (v71 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v74 = &v9[16 * v71];
        *(v74 + 4) = v72;
        *(v74 + 5) = v73;
        result = specialized Array.remove(at:)(v33);
        v30 = *(v9 + 2);
        if (v30 <= 1)
        {
          goto LABEL_3;
        }
      }

      v38 = &v9[16 * v30 + 32];
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_101;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_102;
      }

      v45 = &v9[16 * v30];
      v47 = *v45;
      v46 = *(v45 + 1);
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_104;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = &v9[16 * v33 + 32];
        v69 = *v67;
        v68 = *(v67 + 1);
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_111;
        }

        if (v36 < v70)
        {
          v33 = v30 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + v8 - 1;
  v23 = v10 - v8;
LABEL_30:
  v24 = *(v21 + v8);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    if ((*v26 & (v24 ^ 1)) != 1)
    {
LABEL_29:
      ++v8;
      ++v22;
      --v23;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    v26[1] = *v26;
    *v26-- = v24;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
  return result;
}

{
  v92 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v92;
    if (!*v92)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v84 = v8 + 2;
    v85 = v8[2];
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = &v8[2 * v85];
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * *v86), (*a3 + 32 * *v88), (*a3 + 32 * v89), v5);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v91 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7 + 16);
      v11 = 32 * v9;
      v12 = *a3 + 32 * v9;
      v13 = *(v12 + 16);
      v14 = v9 + 2;
      v15 = (v12 + 80);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 4;
        v18 = v16 >= v17;
        ++v14;
        v16 = v17;
        if ((((v13 < v10) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 32 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v27 + v11);
            v23 = v27 + v20;
            v24 = *v22;
            v25 = v22[1];
            v26 = *(v23 - 16);
            *v22 = *(v23 - 32);
            v22[1] = v26;
            *(v23 - 32) = v24;
            *(v23 - 16) = v25;
          }

          ++v21;
          --v19;
          v20 -= 32;
          v11 += 32;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v38 = v8[3];
    v39 = v5 + 1;
    if (v5 >= v38 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v39;
    v40 = v8 + 4;
    v41 = &v8[2 * v5 + 4];
    *v41 = v9;
    v41[1] = v7;
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v42 = v8[4];
          v43 = v8[5];
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = &v8[2 * v39];
          v60 = *v58;
          v59 = v58[1];
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = &v40[2 * v5];
          v66 = *v64;
          v65 = v64[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v5 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v68 = &v8[2 * v39];
        v70 = *v68;
        v69 = v68[1];
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = &v40[2 * v5];
        v73 = *v71;
        v72 = v71[1];
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v39)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v79 = &v40[2 * v5 - 2];
        v80 = *v79;
        v81 = &v40[2 * v5];
        v82 = v81[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * *v79), (*a3 + 32 * *v81), (*a3 + 32 * v82), v93);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v79 = v80;
        v79[1] = v82;
        v83 = v8[2];
        if (v5 >= v83)
        {
          goto LABEL_101;
        }

        v39 = v83 - 1;
        result = memmove(&v40[2 * v5], v81 + 2, 16 * (v83 - 1 - v5));
        v8[2] = (v83 - 1);
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = &v40[2 * v39];
      v47 = *(v46 - 8);
      v48 = *(v46 - 7);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 6);
      v50 = *(v46 - 5);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = &v8[2 * v39];
      v55 = *v53;
      v54 = v53[1];
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = &v40[2 * v5];
        v77 = *v75;
        v76 = v75[1];
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v5 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v91;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 32 * v7;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 32 * v7 + 16);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (*(v33 - 16) >= v31)
    {
LABEL_29:
      ++v7;
      v29 += 32;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    v35 = *v33;
    v36 = *(v33 - 16);
    *v33 = *(v33 - 32);
    *(v33 + 16) = v36;
    *(v33 - 16) = v31;
    *(v33 - 8) = v34;
    *(v33 - 32) = v35;
    v33 -= 32;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

{
  v97 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_94:
    v5 = *v97;
    if (!*v97)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
      v10 = result;
    }

    v92 = *(v10 + 2);
    if (v92 >= 2)
    {
      while (*a3)
      {
        v93 = *&v10[16 * v92];
        v94 = *&v10[16 * v92 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * v93), (*a3 + 32 * *&v10[16 * v92 + 16]), (*a3 + 32 * v94), v5);
        if (v4)
        {
        }

        if (v94 < v93)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
        }

        if (v92 - 2 >= *(v10 + 2))
        {
          goto LABEL_120;
        }

        v95 = &v10[16 * v92];
        *v95 = v93;
        *(v95 + 1) = v94;
        result = specialized Array.remove(at:)(v92 - 1);
        v92 = *(v10 + 2);
        if (v92 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v8 = a4;
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = *a3 + 32 * v9;
      v13 = *(v12 + 8);
      v14 = *(v12 + 16);
      v15 = 32 * v11;
      v16 = *a3 + 32 * v11;
      v17 = *(v16 + 8);
      v18 = *(v16 + 16) < v14;
      if (v13 != v17)
      {
        v18 = v13 < v17;
      }

      v19 = v11 + 2;
      v20 = (v16 + 80);
      while (v7 != v19)
      {
        v21 = *(v20 - 1);
        v22 = *v20;
        v23 = v14 >= *v20;
        if (v21 != v13)
        {
          v23 = v21 >= v13;
        }

        ++v19;
        v20 += 4;
        v14 = v22;
        v13 = v21;
        if (v18 == v23)
        {
          v9 = v19 - 1;
          if (!v18)
          {
            goto LABEL_24;
          }

          goto LABEL_15;
        }
      }

      v9 = v7;
      if (!v18)
      {
        goto LABEL_24;
      }

LABEL_15:
      if (v9 < v11)
      {
        goto LABEL_123;
      }

      if (v11 < v9)
      {
        v24 = 0;
        v25 = 32 * v9;
        v26 = v11;
        do
        {
          if (v26 != v9 + v24 - 1)
          {
            v32 = *a3;
            if (!*a3)
            {
              goto LABEL_129;
            }

            v27 = (v32 + v15);
            v28 = v32 + v25;
            v29 = *v27;
            v30 = v27[1];
            v31 = *(v28 - 16);
            *v27 = *(v28 - 32);
            v27[1] = v31;
            *(v28 - 32) = v29;
            *(v28 - 16) = v30;
          }

          ++v26;
          --v24;
          v25 -= 32;
          v15 += 32;
        }

        while (v26 < v9 + v24);
        v7 = a3[1];
      }
    }

LABEL_24:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_122;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_124;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_43:
    if (v9 < v11)
    {
      goto LABEL_121;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v47 = *(v10 + 3);
    v48 = v5 + 1;
    if (v5 >= v47 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v48;
    v49 = &v10[16 * v5];
    *(v49 + 4) = v11;
    *(v49 + 5) = v9;
    v50 = *v97;
    if (!*v97)
    {
      goto LABEL_131;
    }

    if (v5)
    {
      while (1)
      {
        v51 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v52 = *(v10 + 4);
          v53 = *(v10 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_63:
          if (v55)
          {
            goto LABEL_110;
          }

          v68 = &v10[16 * v48];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_113;
          }

          v74 = &v10[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_117;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v48 - 2;
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }

        v78 = &v10[16 * v48];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_77:
        if (v73)
        {
          goto LABEL_112;
        }

        v81 = &v10[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_115;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_84:
        v89 = v51 - 1;
        if (v51 - 1 >= v48)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v90 = *&v10[16 * v89 + 32];
        v5 = *&v10[16 * v51 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * v90), (*a3 + 32 * *&v10[16 * v51 + 32]), (*a3 + 32 * v5), v50);
        if (v4)
        {
        }

        if (v5 < v90)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
        }

        if (v89 >= *(v10 + 2))
        {
          goto LABEL_107;
        }

        v91 = &v10[16 * v89];
        *(v91 + 4) = v90;
        *(v91 + 5) = v5;
        result = specialized Array.remove(at:)(v51);
        v48 = *(v10 + 2);
        if (v48 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v10[16 * v48 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_108;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_109;
      }

      v63 = &v10[16 * v48];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_111;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_114;
      }

      if (v67 >= v59)
      {
        v85 = &v10[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_118;
        }

        if (v54 < v88)
        {
          v51 = v48 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_63;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_94;
    }
  }

  v33 = *a3;
  v34 = *a3 + 32 * v9;
  v35 = v11 - v9;
LABEL_34:
  v36 = v33 + 32 * v9;
  v37 = *(v36 + 8);
  v38 = *(v36 + 16);
  v39 = v35;
  v40 = v34;
  while (1)
  {
    v41 = *(v40 - 24);
    v42 = *(v40 - 16) < v38;
    if (v37 != v41)
    {
      v42 = v37 < v41;
    }

    if (!v42)
    {
LABEL_33:
      ++v9;
      v34 += 32;
      --v35;
      if (v9 != v7)
      {
        goto LABEL_34;
      }

      v9 = v7;
      goto LABEL_43;
    }

    if (!v33)
    {
      break;
    }

    v43 = *v40;
    v44 = *(v40 + 24);
    v45 = *(v40 - 16);
    *v40 = *(v40 - 32);
    *(v40 + 16) = v45;
    *(v40 - 24) = v37;
    *(v40 - 16) = v38;
    *(v40 - 8) = v44;
    *(v40 - 32) = v43;
    v40 -= 32;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

{
  v105 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_115:
    v5 = *v105;
    if (!*v105)
    {
      goto LABEL_156;
    }

    v4 = v8;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
LABEL_118:
      v118 = result;
      v4 = *(result + 16);
      if (v4 >= 2)
      {
        while (*a3)
        {
          v96 = *(result + 16 * v4);
          v97 = result;
          v98 = *(result + 16 * (v4 - 1) + 40);
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v96), (*a3 + 8 * *(result + 16 * (v4 - 1) + 32)), (*a3 + 8 * v98), v5);
          if (v113)
          {
          }

          if (v98 < v96)
          {
            goto LABEL_143;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v97 = specialized _ArrayBuffer._consumeAndCreateNew()(v97);
          }

          if (v4 - 2 >= *(v97 + 2))
          {
            goto LABEL_144;
          }

          v99 = &v97[16 * v4];
          *v99 = v96;
          *(v99 + 1) = v98;
          v118 = v97;
          specialized Array.remove(at:)(v4 - 1);
          result = v118;
          v4 = *(v118 + 16);
          if (v4 <= 1)
          {
          }
        }

        goto LABEL_154;
      }
    }

LABEL_150:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    goto LABEL_118;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
LABEL_4:
  v9 = v7;
  if (v7 + 1 >= v6)
  {
    v6 = v7 + 1;
    goto LABEL_33;
  }

  v103 = v8;
  v10 = *a3;
  v117 = *(*a3 + 8 * (v7 + 1));
  v5 = *(v10 + 8 * v7);
  v116 = v5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v114 = closure #1 in SharePlayTogetherSession.updateParticipants()(&v117, &v116);
  if (v113)
  {

    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  v4 = v7 + 2;
  v101 = v7;
  v108 = 8 * v7;
  v110 = v6;
  v11 = (v10 + 8 * v7 + 16);
  while (v6 != v4)
  {
    v13 = *(v11 - 1);
    v14 = *v11;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v15 = [v14 identity];
    if (v15 && (v16 = v15, v17 = [v15 displayName], v16, v17))
    {
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0xE000000000000000;
    }

    v21 = [v13 identity];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 displayName];

      if (v23)
      {
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v5 = v25;
      }

      else
      {
        v24 = 0;
        v5 = 0xE000000000000000;
      }

      v6 = v110;
      if (v18 != v24)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v5 = 0xE000000000000000;
      if (v18)
      {
        goto LABEL_7;
      }
    }

    if (v20 == v5)
    {
      v12 = 0;
      goto LABEL_8;
    }

LABEL_7:
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_8:

    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    ++v4;
    ++v11;
    if ((v114 ^ v12))
    {
      v6 = v4 - 1;
      break;
    }
  }

  v9 = v101;
  v8 = v103;
  v26 = v108;
  if ((v114 & 1) == 0)
  {
    goto LABEL_33;
  }

  if (v6 < v101)
  {
    goto LABEL_149;
  }

  if (v101 < v6)
  {
    v27 = 8 * v6 - 8;
    v28 = v6;
    v29 = v101;
    do
    {
      if (v29 != --v28)
      {
        v30 = *a3;
        if (!*a3)
        {
          goto LABEL_153;
        }

        v31 = *(v30 + v26);
        *(v30 + v26) = *(v30 + v27);
        *(v30 + v27) = v31;
      }

      ++v29;
      v27 -= 8;
      v26 += 8;
    }

    while (v29 < v28);
  }

LABEL_33:
  v32 = a3[1];
  if (v6 >= v32)
  {
    goto LABEL_41;
  }

  if (__OFSUB__(v6, v9))
  {
    goto LABEL_146;
  }

  if (v6 - v9 >= a4)
  {
LABEL_41:
    v7 = v6;
    if (v6 < v9)
    {
      goto LABEL_145;
    }

    goto LABEL_42;
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_147;
  }

  if (v9 + a4 < v32)
  {
    v32 = v9 + a4;
  }

  if (v32 < v9)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  if (v6 == v32)
  {
    goto LABEL_41;
  }

  v106 = v32;
  v102 = v9;
  v104 = v8;
  v115 = *a3;
  v4 = *a3 + 8 * v6 - 8;
  v79 = v9 - v6;
  while (2)
  {
    v109 = v4;
    v111 = v6;
    v80 = *(v115 + 8 * v6);
    v107 = v79;
LABEL_95:
    v81 = *v4;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v82 = [v80 identity];
    if (v82 && (v83 = v82, v84 = [v82 displayName], v83, v84))
    {
      v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v87 = v86;
    }

    else
    {
      v85 = 0;
      v87 = 0xE000000000000000;
    }

    v88 = [v81 identity];
    if (!v88 || (v89 = v88, v90 = [v88 displayName], v89, !v90))
    {
      v5 = 0;
      v92 = 0xE000000000000000;
      if (v85)
      {
        goto LABEL_105;
      }

LABEL_104:
      if (v87 != v92)
      {
        goto LABEL_105;
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

LABEL_93:
      v6 = v111 + 1;
      v4 = v109 + 8;
      v79 = v107 - 1;
      if (v111 + 1 != v106)
      {
        continue;
      }

      v9 = v102;
      v8 = v104;
      v7 = v106;
      if (v106 < v102)
      {
        goto LABEL_145;
      }

LABEL_42:
      v33 = v8;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v8 = v33;
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33[2] + 1, 1, v33);
        v8 = result;
      }

      v4 = v8[2];
      v34 = v8[3];
      v35 = v4 + 1;
      if (v4 >= v34 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v4 + 1, 1, v8);
        v8 = result;
      }

      v8[2] = v35;
      v36 = &v8[2 * v4];
      v36[4] = v9;
      v36[5] = v7;
      v37 = *v105;
      if (!*v105)
      {
        goto LABEL_155;
      }

      if (v4)
      {
        while (2)
        {
          v38 = v35 - 1;
          if (v35 >= 4)
          {
            v43 = &v8[2 * v35 + 4];
            v44 = *(v43 - 64);
            v45 = *(v43 - 56);
            v49 = __OFSUB__(v45, v44);
            v46 = v45 - v44;
            if (v49)
            {
              goto LABEL_132;
            }

            v48 = *(v43 - 48);
            v47 = *(v43 - 40);
            v49 = __OFSUB__(v47, v48);
            v41 = v47 - v48;
            v42 = v49;
            if (v49)
            {
              goto LABEL_133;
            }

            v50 = &v8[2 * v35];
            v52 = *v50;
            v51 = v50[1];
            v49 = __OFSUB__(v51, v52);
            v53 = v51 - v52;
            if (v49)
            {
              goto LABEL_135;
            }

            v49 = __OFADD__(v41, v53);
            v54 = v41 + v53;
            if (v49)
            {
              goto LABEL_138;
            }

            if (v54 >= v46)
            {
              v72 = &v8[2 * v38 + 4];
              v74 = *v72;
              v73 = v72[1];
              v49 = __OFSUB__(v73, v74);
              v75 = v73 - v74;
              if (v49)
              {
                goto LABEL_142;
              }

              if (v41 < v75)
              {
                v38 = v35 - 2;
              }
            }

            else
            {
LABEL_61:
              if (v42)
              {
                goto LABEL_134;
              }

              v55 = &v8[2 * v35];
              v57 = *v55;
              v56 = v55[1];
              v58 = __OFSUB__(v56, v57);
              v59 = v56 - v57;
              v60 = v58;
              if (v58)
              {
                goto LABEL_137;
              }

              v61 = &v8[2 * v38 + 4];
              v63 = *v61;
              v62 = v61[1];
              v49 = __OFSUB__(v62, v63);
              v64 = v62 - v63;
              if (v49)
              {
                goto LABEL_140;
              }

              if (__OFADD__(v59, v64))
              {
                goto LABEL_141;
              }

              if (v59 + v64 < v41)
              {
                goto LABEL_75;
              }

              if (v41 < v64)
              {
                v38 = v35 - 2;
              }
            }
          }

          else
          {
            if (v35 == 3)
            {
              v39 = v8[4];
              v40 = v8[5];
              v49 = __OFSUB__(v40, v39);
              v41 = v40 - v39;
              v42 = v49;
              goto LABEL_61;
            }

            v65 = &v8[2 * v35];
            v67 = *v65;
            v66 = v65[1];
            v49 = __OFSUB__(v66, v67);
            v59 = v66 - v67;
            v60 = v49;
LABEL_75:
            if (v60)
            {
              goto LABEL_136;
            }

            v68 = &v8[2 * v38];
            v70 = v68[4];
            v69 = v68[5];
            v49 = __OFSUB__(v69, v70);
            v71 = v69 - v70;
            if (v49)
            {
              goto LABEL_139;
            }

            if (v71 < v59)
            {
              break;
            }
          }

          v4 = v38 - 1;
          if (v38 - 1 >= v35)
          {
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
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
            goto LABEL_148;
          }

          if (!*a3)
          {
            goto LABEL_152;
          }

          v5 = v8;
          v76 = v8[2 * v4 + 4];
          v77 = v8[2 * v38 + 5];
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v76), (*a3 + 8 * v8[2 * v38 + 4]), (*a3 + 8 * v77), v37);
          if (v113)
          {
          }

          if (v77 < v76)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
          }

          if (v4 >= *(v5 + 16))
          {
            goto LABEL_131;
          }

          v78 = v5 + 16 * v4;
          *(v78 + 32) = v76;
          *(v78 + 40) = v77;
          v118 = v5;
          result = specialized Array.remove(at:)(v38);
          v8 = v118;
          v35 = *(v118 + 16);
          if (v35 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v6 = a3[1];
      if (v7 >= v6)
      {
        goto LABEL_115;
      }

      goto LABEL_4;
    }

    break;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v92 = v91;

  if (v85 == v5)
  {
    goto LABEL_104;
  }

LABEL_105:
  v93 = _stringCompareWithSmolCheck(_:_:expecting:)();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if ((v93 & 1) == 0)
  {
    goto LABEL_93;
  }

  if (v115)
  {
    v94 = *v4;
    v80 = *(v4 + 8);
    *v4 = v80;
    *(v4 + 8) = v94;
    v4 -= 8;
    if (__CFADD__(v79++, 1))
    {
      goto LABEL_93;
    }

    goto LABEL_95;
  }

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
  return result;
}

{
  v85 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    NewAByxGyFSnySiG_Tgq5_0 = _swiftEmptyArrayStorage;
LABEL_88:
    v85 = *v85;
    if (!v85)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSnySiG_Tgq5_0(NewAByxGyFSnySiG_Tgq5_0);
      NewAByxGyFSnySiG_Tgq5_0 = result;
    }

    v77 = NewAByxGyFSnySiG_Tgq5_0 + 2;
    v78 = NewAByxGyFSnySiG_Tgq5_0[2];
    if (v78 >= 2)
    {
      while (*a3)
      {
        v79 = &NewAByxGyFSnySiG_Tgq5_0[2 * v78];
        v80 = *v79;
        v81 = &v77[2 * v78];
        v82 = v81[1];
        specialized _merge<A>(low:mid:high:buffer:by:)(*v79 + *a3, (*a3 + *v81), v82 + *a3, v85);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_112;
        }

        if (v78 - 2 >= *v77)
        {
          goto LABEL_113;
        }

        *v79 = v80;
        v79[1] = v82;
        v83 = *v77 - v78;
        if (*v77 < v78)
        {
          goto LABEL_114;
        }

        v78 = *v77 - 1;
        result = memmove(v81, v81 + 2, 16 * v83);
        *v77 = v78;
        if (v78 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  NewAByxGyFSnySiG_Tgq5_0 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + v8);
      v12 = *(*a3 + v10);
      v13 = v10 + 2;
      v14 = v11;
      while (v6 != v13)
      {
        v15 = *(*a3 + v13);
        v16 = (v11 < v12) ^ (v15 >= v14);
        ++v13;
        v14 = v15;
        if ((v16 & 1) == 0)
        {
          v8 = v13 - 1;
          if (v11 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v17 = v8 - 1;
        v18 = v10;
        do
        {
          if (v18 != v17)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v19 = *(v21 + v18);
            *(v21 + v18) = *(v21 + v17);
            *(v21 + v17) = v19;
          }
        }

        while (++v18 < v17--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, NewAByxGyFSnySiG_Tgq5_0[2] + 1, 1, NewAByxGyFSnySiG_Tgq5_0);
      NewAByxGyFSnySiG_Tgq5_0 = result;
    }

    v31 = NewAByxGyFSnySiG_Tgq5_0[2];
    v30 = NewAByxGyFSnySiG_Tgq5_0[3];
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, NewAByxGyFSnySiG_Tgq5_0);
      NewAByxGyFSnySiG_Tgq5_0 = result;
    }

    NewAByxGyFSnySiG_Tgq5_0[2] = v32;
    v33 = &NewAByxGyFSnySiG_Tgq5_0[2 * v31];
    v33[4] = v10;
    v33[5] = v8;
    v34 = *v85;
    if (!*v85)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = NewAByxGyFSnySiG_Tgq5_0[4];
          v37 = NewAByxGyFSnySiG_Tgq5_0[5];
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_103;
          }

          v52 = &NewAByxGyFSnySiG_Tgq5_0[2 * v32];
          v54 = *v52;
          v53 = v52[1];
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = &NewAByxGyFSnySiG_Tgq5_0[2 * v35 + 4];
          v60 = *v58;
          v59 = v58[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_110;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &NewAByxGyFSnySiG_Tgq5_0[2 * v32];
        v64 = *v62;
        v63 = v62[1];
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_105;
        }

        v65 = &NewAByxGyFSnySiG_Tgq5_0[2 * v35];
        v67 = v65[4];
        v66 = v65[5];
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_108;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v74 = NewAByxGyFSnySiG_Tgq5_0[2 * v73 + 4];
        v75 = NewAByxGyFSnySiG_Tgq5_0[2 * v35 + 5];
        specialized _merge<A>(low:mid:high:buffer:by:)(&v74[*a3], NewAByxGyFSnySiG_Tgq5_0[2 * v35 + 4] + *a3, &v75[*a3], v34);
        if (v4)
        {
        }

        if (v75 < v74)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          NewAByxGyFSnySiG_Tgq5_0 = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSnySiG_Tgq5_0(NewAByxGyFSnySiG_Tgq5_0);
        }

        if (v73 >= NewAByxGyFSnySiG_Tgq5_0[2])
        {
          goto LABEL_100;
        }

        v76 = &NewAByxGyFSnySiG_Tgq5_0[2 * v73];
        v76[4] = v74;
        v76[5] = v75;
        result = _sSa6remove2atxSi_tFSnySiG_Tgq5_0(v35);
        v32 = NewAByxGyFSnySiG_Tgq5_0[2];
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &NewAByxGyFSnySiG_Tgq5_0[2 * v32 + 4];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_101;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_102;
      }

      v47 = &NewAByxGyFSnySiG_Tgq5_0[2 * v32];
      v49 = *v47;
      v48 = v47[1];
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_104;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = &NewAByxGyFSnySiG_Tgq5_0[2 * v35 + 4];
        v71 = *v69;
        v70 = v69[1];
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_111;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = (*a3 + v8);
  v24 = v10 - v8;
LABEL_30:
  v25 = *(v22 + v8);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *(v27 - 1);
    if (v25 >= v28)
    {
LABEL_29:
      ++v8;
      ++v23;
      --v24;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v28;
    *--v27 = v25;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
  return result;
}

{
  v85 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    NewAByxGyFSnySiG_Tgq5_1 = &_swiftEmptyArrayStorage;
LABEL_88:
    v85 = *v85;
    if (!v85)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSnySiG_Tgq5_1(NewAByxGyFSnySiG_Tgq5_1);
      NewAByxGyFSnySiG_Tgq5_1 = result;
    }

    v77 = NewAByxGyFSnySiG_Tgq5_1 + 16;
    v78 = *(NewAByxGyFSnySiG_Tgq5_1 + 2);
    if (v78 >= 2)
    {
      while (*a3)
      {
        v79 = &NewAByxGyFSnySiG_Tgq5_1[16 * v78];
        v80 = *v79;
        v81 = &v77[2 * v78];
        v82 = v81[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + *v79), (*a3 + *v81), *a3 + v82, v85);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_112;
        }

        if (v78 - 2 >= *v77)
        {
          goto LABEL_113;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *v77 - v78;
        if (*v77 < v78)
        {
          goto LABEL_114;
        }

        v78 = *v77 - 1;
        result = memmove(v81, v81 + 2, 16 * v83);
        *v77 = v78;
        if (v78 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  NewAByxGyFSnySiG_Tgq5_1 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + v8);
      v12 = *(*a3 + v10);
      v13 = v10 + 2;
      v14 = v11;
      while (v6 != v13)
      {
        v15 = *(*a3 + v13);
        v16 = (v11 < v12) ^ (v15 >= v14);
        ++v13;
        v14 = v15;
        if ((v16 & 1) == 0)
        {
          v8 = v13 - 1;
          if (v11 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v17 = v8 - 1;
        v18 = v10;
        do
        {
          if (v18 != v17)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v19 = *(v21 + v18);
            *(v21 + v18) = *(v21 + v17);
            *(v21 + v17) = v19;
          }
        }

        while (++v18 < v17--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_0(0, *(NewAByxGyFSnySiG_Tgq5_1 + 2) + 1, 1, NewAByxGyFSnySiG_Tgq5_1);
      NewAByxGyFSnySiG_Tgq5_1 = result;
    }

    v31 = *(NewAByxGyFSnySiG_Tgq5_1 + 2);
    v30 = *(NewAByxGyFSnySiG_Tgq5_1 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_0((v30 > 1), v31 + 1, 1, NewAByxGyFSnySiG_Tgq5_1);
      NewAByxGyFSnySiG_Tgq5_1 = result;
    }

    *(NewAByxGyFSnySiG_Tgq5_1 + 2) = v32;
    v33 = &NewAByxGyFSnySiG_Tgq5_1[16 * v31];
    *(v33 + 4) = v10;
    *(v33 + 5) = v8;
    v34 = *v85;
    if (!*v85)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(NewAByxGyFSnySiG_Tgq5_1 + 4);
          v37 = *(NewAByxGyFSnySiG_Tgq5_1 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_103;
          }

          v52 = &NewAByxGyFSnySiG_Tgq5_1[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = &NewAByxGyFSnySiG_Tgq5_1[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_110;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &NewAByxGyFSnySiG_Tgq5_1[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_105;
        }

        v65 = &NewAByxGyFSnySiG_Tgq5_1[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_108;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v74 = *&NewAByxGyFSnySiG_Tgq5_1[16 * v73 + 32];
        v75 = *&NewAByxGyFSnySiG_Tgq5_1[16 * v35 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + v74), (*a3 + *&NewAByxGyFSnySiG_Tgq5_1[16 * v35 + 32]), *a3 + v75, v34);
        if (v4)
        {
        }

        if (v75 < v74)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          NewAByxGyFSnySiG_Tgq5_1 = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSnySiG_Tgq5_1(NewAByxGyFSnySiG_Tgq5_1);
        }

        if (v73 >= *(NewAByxGyFSnySiG_Tgq5_1 + 2))
        {
          goto LABEL_100;
        }

        v76 = &NewAByxGyFSnySiG_Tgq5_1[16 * v73];
        *(v76 + 4) = v74;
        *(v76 + 5) = v75;
        result = _sSa6remove2atxSi_tFSnySiG_Tgq5_1(v35);
        v32 = *(NewAByxGyFSnySiG_Tgq5_1 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &NewAByxGyFSnySiG_Tgq5_1[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_101;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_102;
      }

      v47 = &NewAByxGyFSnySiG_Tgq5_1[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_104;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = &NewAByxGyFSnySiG_Tgq5_1[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_111;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = (*a3 + v8);
  v24 = v10 - v8;
LABEL_30:
  v25 = *(v22 + v8);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *(v27 - 1);
    if (v25 >= v28)
    {
LABEL_29:
      ++v8;
      ++v23;
      --v24;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v28;
    *--v27 = v25;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
  return result;
}

{
  v99 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    NewAByxGyFSnySiG_Tgq5_1 = _swiftEmptyArrayStorage;
LABEL_105:
    v8 = *v99;
    if (!*v99)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSnySiG_Tgq5_1(NewAByxGyFSnySiG_Tgq5_1);
      NewAByxGyFSnySiG_Tgq5_1 = result;
    }

    v90 = NewAByxGyFSnySiG_Tgq5_1 + 16;
    v91 = *(NewAByxGyFSnySiG_Tgq5_1 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = &NewAByxGyFSnySiG_Tgq5_1[16 * v91];
        v93 = *v92;
        v94 = &v90[2 * v91];
        v95 = v94[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * *v92), (*a3 + 32 * *v94), (*a3 + 32 * v95), v8);
        if (v4)
        {
        }

        if (v95 < v93)
        {
          goto LABEL_129;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_130;
        }

        *v92 = v93;
        *(v92 + 1) = v95;
        v96 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_131;
        }

        v91 = *v90 - 1;
        result = memmove(v94, v94 + 2, 16 * v96);
        *v90 = v91;
        if (v91 <= 1)
        {
        }
      }

      goto LABEL_141;
    }
  }

  v6 = 0;
  NewAByxGyFSnySiG_Tgq5_1 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = (*a3 + 32 * v6);
      v10 = (*a3 + 32 * v8);
      result = *v10;
      if (*v10 == *v9 && v10[1] == v9[1])
      {
        v12 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v12 = result;
      }

      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v13 = v10 + 5;
        v14 = v10 + 5;
        do
        {
          v16 = v14[4];
          v14 += 4;
          v15 = v16;
          result = *(v13 - 1);
          if (result == v13[3] && *v13 == v15)
          {
            if (v12)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v12 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v6;
          v13 = v14;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_23:
      if (v12)
      {
LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_134;
        }

        if (v8 < v6)
        {
          v18 = 32 * v6 - 16;
          v19 = (32 * v8) | 0x18;
          v20 = v6;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v22 = (v28 + v19);
              v23 = (v28 + v18);
              v24 = *(v22 - 3);
              v25 = *(v22 - 1);
              v26 = *v22;
              v27 = *v23;
              *(v22 - 3) = *(v23 - 1);
              *(v22 - 1) = v27;
              *(v23 - 1) = v24;
              *v23 = v25;
              *(v23 + 1) = v26;
            }

            ++v21;
            v18 -= 32;
            v19 += 32;
          }

          while (v21 < v20);
        }
      }
    }

    v29 = a3[1];
    if (v6 < v29)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_133;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_135;
        }

        if (v8 + a4 >= v29)
        {
          v30 = a3[1];
        }

        else
        {
          v30 = (v8 + a4);
        }

        if (v30 < v8)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v6 != v30)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v6 < v8)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_0(0, *(NewAByxGyFSnySiG_Tgq5_1 + 2) + 1, 1, NewAByxGyFSnySiG_Tgq5_1);
      NewAByxGyFSnySiG_Tgq5_1 = result;
    }

    v45 = *(NewAByxGyFSnySiG_Tgq5_1 + 2);
    v44 = *(NewAByxGyFSnySiG_Tgq5_1 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_0((v44 > 1), v45 + 1, 1, NewAByxGyFSnySiG_Tgq5_1);
      NewAByxGyFSnySiG_Tgq5_1 = result;
    }

    *(NewAByxGyFSnySiG_Tgq5_1 + 2) = v46;
    v47 = &NewAByxGyFSnySiG_Tgq5_1[16 * v45];
    *(v47 + 4) = v8;
    *(v47 + 5) = v6;
    v48 = *v99;
    if (!*v99)
    {
      goto LABEL_142;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(NewAByxGyFSnySiG_Tgq5_1 + 4);
          v51 = *(NewAByxGyFSnySiG_Tgq5_1 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_74:
          if (v53)
          {
            goto LABEL_120;
          }

          v66 = &NewAByxGyFSnySiG_Tgq5_1[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_123;
          }

          v72 = &NewAByxGyFSnySiG_Tgq5_1[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_127;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v76 = &NewAByxGyFSnySiG_Tgq5_1[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_88:
        if (v71)
        {
          goto LABEL_122;
        }

        v79 = &NewAByxGyFSnySiG_Tgq5_1[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_125;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_95:
        v8 = v49 - 1;
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v87 = *&NewAByxGyFSnySiG_Tgq5_1[16 * v8 + 32];
        v88 = *&NewAByxGyFSnySiG_Tgq5_1[16 * v49 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * v87), (*a3 + 32 * *&NewAByxGyFSnySiG_Tgq5_1[16 * v49 + 32]), (*a3 + 32 * v88), v48);
        if (v4)
        {
        }

        if (v88 < v87)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          NewAByxGyFSnySiG_Tgq5_1 = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSnySiG_Tgq5_1(NewAByxGyFSnySiG_Tgq5_1);
        }

        if (v8 >= *(NewAByxGyFSnySiG_Tgq5_1 + 2))
        {
          goto LABEL_117;
        }

        v89 = &NewAByxGyFSnySiG_Tgq5_1[16 * v8];
        *(v89 + 4) = v87;
        *(v89 + 5) = v88;
        result = _sSa6remove2atxSi_tFSnySiG_Tgq5_1(v49);
        v46 = *(NewAByxGyFSnySiG_Tgq5_1 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &NewAByxGyFSnySiG_Tgq5_1[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_118;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_119;
      }

      v61 = &NewAByxGyFSnySiG_Tgq5_1[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_121;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_124;
      }

      if (v65 >= v57)
      {
        v83 = &NewAByxGyFSnySiG_Tgq5_1[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_128;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_105;
    }
  }

  v31 = *a3;
  v32 = *a3 + 32 * v6 - 32;
  v97 = v8;
  v33 = (v8 - v6);
LABEL_43:
  v34 = (v31 + 32 * v6);
  v35 = *v34;
  v36 = v34[1];
  v37 = v33;
  v38 = v32;
  while (1)
  {
    v39 = *v38 == v35 && *(v38 + 8) == v36;
    if (v39 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v6;
      v32 += 32;
      --v33;
      if (v6 != v30)
      {
        goto LABEL_43;
      }

      v6 = v30;
      v8 = v97;
      goto LABEL_54;
    }

    if (!v31)
    {
      break;
    }

    v35 = *(v38 + 32);
    v36 = *(v38 + 40);
    v40 = *(v38 + 48);
    v41 = *(v38 + 56);
    v42 = *(v38 + 16);
    *(v38 + 32) = *v38;
    *(v38 + 48) = v42;
    *v38 = v35;
    *(v38 + 8) = v36;
    *(v38 + 16) = v40;
    *(v38 + 24) = v41;
    v38 -= 32;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

{
  v102 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_124:
    NewAByxGyFSnySiG_Tgq5_2 = *v102;
    if (*v102)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_126;
    }

    goto LABEL_162;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6 + 1;
    if (v6 + 1 >= v5)
    {
      goto LABEL_19;
    }

    v9 = *(*(*a3 + 8 * v8) + 176);
    v10 = *(*(*a3 + 8 * v6) + 176);
    v11 = v6 + 2;
    v12 = v9;
    do
    {
      if (v5 == v11)
      {
        v8 = v5;
        if (v9 >= v10)
        {
          goto LABEL_19;
        }

        goto LABEL_11;
      }

      v13 = *(*(*a3 + 8 * v11) + 176);
      v14 = v13 >= v12;
      ++v11;
      v12 = v13;
    }

    while ((((v9 < v10) ^ v14) & 1) != 0);
    v8 = v11 - 1;
    if (v9 >= v10)
    {
      goto LABEL_19;
    }

LABEL_11:
    if (v8 < v6)
    {
      goto LABEL_153;
    }

    if (v6 < v8)
    {
      v15 = 8 * v8 - 8;
      v16 = 8 * v6;
      v17 = v8;
      v18 = v6;
      do
      {
        if (v18 != --v17)
        {
          v19 = *a3;
          if (!*a3)
          {
            goto LABEL_159;
          }

          v20 = *(v19 + v16);
          *(v19 + v16) = *(v19 + v15);
          *(v19 + v15) = v20;
        }

        ++v18;
        v15 -= 8;
        v16 += 8;
      }

      while (v18 < v17);
      v5 = a3[1];
    }

LABEL_19:
    if (v8 < v5)
    {
      if (__OFSUB__(v8, v6))
      {
        goto LABEL_152;
      }

      if (v8 - v6 < a4)
      {
        if (__OFADD__(v6, a4))
        {
          goto LABEL_154;
        }

        if (v6 + a4 < v5)
        {
          v5 = v6 + a4;
        }

        if (v5 < v6)
        {
          goto LABEL_155;
        }

        if (v8 != v5)
        {
          v21 = *a3;
          v22 = *a3 + 8 * v8 - 8;
          v23 = v6 - v8;
          do
          {
            v24 = *(v21 + 8 * v8);
            v25 = v23;
            v26 = v22;
            do
            {
              v27 = *v26;
              if (*(v24 + 176) >= *(*v26 + 176))
              {
                break;
              }

              if (!v21)
              {
                goto LABEL_156;
              }

              *v26 = v24;
              v26[1] = v27;
              --v26;
            }

            while (!__CFADD__(v25++, 1));
            ++v8;
            v22 += 8;
            --v23;
          }

          while (v8 != v5);
          v8 = v5;
        }
      }
    }

    if (v8 < v6)
    {
      goto LABEL_149;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v30 = v7[2];
    v29 = v7[3];
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      result = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1((v29 > 1), v30 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v31;
    v32 = &v7[2 * v30];
    v32[4] = v6;
    v32[5] = v8;
    v104 = v8;
    v33 = *v102;
    if (!*v102)
    {
LABEL_160:
      __break(1u);
      goto LABEL_161;
    }

    if (v30)
    {
      break;
    }

LABEL_3:
    v6 = v104;
    v5 = a3[1];
    if (v104 >= v5)
    {
      goto LABEL_124;
    }
  }

  while (1)
  {
    v34 = v31 - 1;
    if (v31 >= 4)
    {
      v39 = &v7[2 * v31 + 4];
      v40 = *(v39 - 64);
      v41 = *(v39 - 56);
      v45 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      if (v45)
      {
        goto LABEL_138;
      }

      v44 = *(v39 - 48);
      v43 = *(v39 - 40);
      v45 = __OFSUB__(v43, v44);
      v37 = v43 - v44;
      v38 = v45;
      if (v45)
      {
        goto LABEL_139;
      }

      v46 = &v7[2 * v31];
      v48 = *v46;
      v47 = v46[1];
      v45 = __OFSUB__(v47, v48);
      v49 = v47 - v48;
      if (v45)
      {
        goto LABEL_141;
      }

      v45 = __OFADD__(v37, v49);
      v50 = v37 + v49;
      if (v45)
      {
        goto LABEL_144;
      }

      if (v50 >= v42)
      {
        v68 = &v7[2 * v34 + 4];
        v70 = *v68;
        v69 = v68[1];
        v45 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v45)
        {
          goto LABEL_148;
        }

        if (v37 < v71)
        {
          v34 = v31 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    if (v31 == 3)
    {
      v35 = v7[4];
      v36 = v7[5];
      v45 = __OFSUB__(v36, v35);
      v37 = v36 - v35;
      v38 = v45;
LABEL_56:
      if (v38)
      {
        goto LABEL_140;
      }

      v51 = &v7[2 * v31];
      v53 = *v51;
      v52 = v51[1];
      v54 = __OFSUB__(v52, v53);
      v55 = v52 - v53;
      v56 = v54;
      if (v54)
      {
        goto LABEL_143;
      }

      v57 = &v7[2 * v34 + 4];
      v59 = *v57;
      v58 = v57[1];
      v45 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v45)
      {
        goto LABEL_146;
      }

      if (__OFADD__(v55, v60))
      {
        goto LABEL_147;
      }

      if (v55 + v60 >= v37)
      {
        if (v37 < v60)
        {
          v34 = v31 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_70;
    }

    v61 = &v7[2 * v31];
    v63 = *v61;
    v62 = v61[1];
    v45 = __OFSUB__(v62, v63);
    v55 = v62 - v63;
    v56 = v45;
LABEL_70:
    if (v56)
    {
      goto LABEL_142;
    }

    v64 = &v7[2 * v34];
    v66 = v64[4];
    v65 = v64[5];
    v45 = __OFSUB__(v65, v66);
    v67 = v65 - v66;
    if (v45)
    {
      goto LABEL_145;
    }

    if (v67 < v55)
    {
      goto LABEL_3;
    }

LABEL_77:
    if (v34 - 1 >= v31)
    {
      break;
    }

    v72 = *a3;
    if (!*a3)
    {
      __break(1u);
LABEL_159:
      __break(1u);
      goto LABEL_160;
    }

    v109 = v34;
    v110 = v7;
    v106 = v34 - 1;
    v73 = v7[2 * v34 + 4];
    v74 = v7[2 * v34 + 5];
    v107 = v7[2 * v34 + 2];
    v108 = v74;
    v7 = (8 * v107);
    v75 = (v72 + 8 * v107);
    v76 = 8 * v73;
    v77 = (v72 + 8 * v73);
    v78 = 8 * v74;
    v79 = (v72 + 8 * v74);
    v80 = 8 * v73 - 8 * v107;
    v81 = 8 * v74 - 8 * v73;
    if (v80 < v81)
    {
      if (v75 != v33 || v77 <= v33)
      {
        memmove(v33, (v72 + 8 * v107), 8 * v73 - 8 * v107);
      }

      v82 = (v33 + v80);
      v83 = v80 < 1;
      NewAByxGyFSnySiG_Tgq5_2 = v110;
      v84 = v108;
      if (v83 || v78 <= v76)
      {
        v85 = v33;
        v90 = v75;
        v86 = v109;
        v87 = v107;
        goto LABEL_114;
      }

      v85 = v33;
      v86 = v109;
      v87 = v107;
      while (1)
      {
        v88 = *v77;
        if (*(*v77 + 22) >= *(*v85 + 22))
        {
          break;
        }

        v89 = v75 == v77++;
        if (!v89)
        {
          goto LABEL_91;
        }

LABEL_92:
        ++v75;
        if (v85 >= v82 || v77 >= v79)
        {
          v90 = v75;
          goto LABEL_114;
        }
      }

      v88 = *v85;
      v89 = v75 == v85++;
      if (v89)
      {
        goto LABEL_92;
      }

LABEL_91:
      *v75 = v88;
      goto LABEL_92;
    }

    if (v77 != v33 || v79 <= v33)
    {
      memmove(v33, (v72 + 8 * v73), 8 * v74 - 8 * v73);
    }

    v82 = (v33 + v81);
    v86 = v109;
    if (v81 < 1 || v76 <= v7)
    {
      v85 = v33;
      v90 = v77;
      NewAByxGyFSnySiG_Tgq5_2 = v110;
      v87 = v107;
      v84 = v108;
    }

    else
    {
      NewAByxGyFSnySiG_Tgq5_2 = v110;
      v87 = v107;
      v84 = v108;
      do
      {
        v90 = v77 - 1;
        --v79;
        v91 = v82;
        while (1)
        {
          v92 = v79 + 1;
          v94 = *(v91 - 8);
          v91 -= 8;
          v93 = v94;
          if (v94[22] < *(*v90 + 22))
          {
            break;
          }

          if (v92 != v82)
          {
            *v79 = v93;
          }

          --v79;
          v82 = v91;
          if (v91 <= v33)
          {
            v82 = v91;
            v85 = v33;
            v90 = v77;
            goto LABEL_114;
          }
        }

        if (v92 != v77)
        {
          *v79 = *v90;
        }

        v85 = v33;
        if (v82 <= v33)
        {
          break;
        }

        --v77;
      }

      while (v75 < v90);
    }

LABEL_114:
    v95 = v82 - v85 + (v82 - v85 < 0 ? 7uLL : 0);
    if (v90 != v85 || v90 >= (v85 + (v95 & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(v90, v85, 8 * (v95 >> 3));
    }

    if (v84 < v87)
    {
      goto LABEL_136;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      NewAByxGyFSnySiG_Tgq5_2 = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSnySiG_Tgq5_2(NewAByxGyFSnySiG_Tgq5_2);
    }

    if (v86 > NewAByxGyFSnySiG_Tgq5_2[2])
    {
      goto LABEL_137;
    }

    v96 = &NewAByxGyFSnySiG_Tgq5_2[2 * v106];
    v96[4] = v87;
    v96[5] = v84;
    result = _sSa6remove2atxSi_tFSnySiG_Tgq5_2(v86);
    v7 = NewAByxGyFSnySiG_Tgq5_2;
    v31 = NewAByxGyFSnySiG_Tgq5_2[2];
    if (v31 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
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
  result = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSnySiG_Tgq5_2(v7);
  v7 = result;
LABEL_126:
  v97 = v7[2];
  if (v97 < 2)
  {
  }

  while (*a3)
  {
    v98 = v7[2 * v97];
    v99 = v7[2 * v97 + 3];
    specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v98), (*a3 + 8 * v7[2 * v97 + 2]), (*a3 + 8 * v99), NewAByxGyFSnySiG_Tgq5_2);
    if (v103)
    {
    }

    if (v99 < v98)
    {
      goto LABEL_150;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSnySiG_Tgq5_2(v7);
    }

    if (v97 - 2 >= v7[2])
    {
      goto LABEL_151;
    }

    v100 = &v7[2 * v97];
    *v100 = v98;
    v100[1] = v99;
    result = _sSa6remove2atxSi_tFSnySiG_Tgq5_2(v97 - 1);
    v97 = v7[2];
    if (v97 <= 1)
    {
    }
  }

LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
  return result;
}

{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSnySiG_Tgq5_2(v8);
      v8 = result;
    }

    v76 = v8 + 2;
    v77 = v8[2];
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = &v8[2 * v77];
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v30 = v8[3];
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_1((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v31;
    v32 = v8 + 4;
    v33 = &v8[2 * v5 + 4];
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = v8[4];
          v35 = v8[5];
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = &v8[2 * v31];
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = &v32[2 * v5];
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = &v8[2 * v31];
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = &v32[2 * v5];
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = &v32[2 * v5 - 2];
        v72 = *v71;
        v73 = &v32[2 * v5];
        v74 = v73[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = v8[2];
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove(&v32[2 * v5], v73 + 2, 16 * (v75 - 1 - v5));
        v8[2] = (v75 - 1);
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = &v32[2 * v31];
      v39 = *(v38 - 8);
      v40 = *(v38 - 7);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 6);
      v42 = *(v38 - 5);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = &v8[2 * v31];
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = &v32[2 * v5];
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}