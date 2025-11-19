Swift::Int sub_10098AFC8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MPModelObject.MediaKitPlayableKind.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10098B02C()
{
  MPModelObject.MediaKitPlayableKind.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int sub_10098B080()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MPModelObject.MediaKitPlayableKind.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10098B0E0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _sSo13MPModelObjectC9MusicCoreE20MediaKitPlayableKindO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10098B110@<X0>(uint64_t *a1@<X8>)
{
  result = MPModelObject.MediaKitPlayableKind.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t MPModelObject.mediaKitPlayableKind.getter()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 isArtistUploadedContent];
    v3 = [v1 hasVideo];
    if (v2)
    {
      if (v3)
      {
        return 4;
      }

      else
      {
        return 3;
      }
    }

    else if (v3)
    {
      return 6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return 1;
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        return 2;
      }

      else
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          return 5;
        }

        else
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            return 7;
          }

          else
          {
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              return 8;
            }

            else
            {
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                return 9;
              }

              else
              {
                return 10;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t MPModelObject.FavoriteStatus.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x657469726F766166;
  v2 = 0x64656B696C736964;
  if (a1 != 2)
  {
    v2 = 0x726F707075736E75;
  }

  if (a1)
  {
    v1 = 0x6C61727475656ELL;
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

Swift::Int sub_10098B328()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10098B3F8()
{
  String.hash(into:)();
}

Swift::Int sub_10098B4B4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10098B580@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _sSo13MPModelObjectC9MusicCoreE14FavoriteStatusO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_10098B5B0(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000064;
  v3 = 0x657469726F766166;
  v4 = 0xE800000000000000;
  v5 = 0x64656B696C736964;
  if (*v1 != 2)
  {
    v5 = 0x726F707075736E75;
    v4 = 0xEB00000000646574;
  }

  if (*v1)
  {
    v3 = 0x6C61727475656ELL;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t MPModelObject.favoriteStatus.getter()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0 || (objc_opt_self(), (v0 = swift_dynamicCastObjCClass()) != 0) || (objc_opt_self(), (v0 = swift_dynamicCastObjCClass()) != 0))
  {
    v1 = v0;
    v2 = [v0 isFavorite];
LABEL_5:
    v3 = v2;
    v4 = [v1 isDisliked];
    if (v3)
    {
      if ((v4 & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v6 = v4 == 0;
    goto LABEL_9;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v1 = v7;
    if (qword_1011A6820 != -1)
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
    sub_100014984(&v23);
    if (BYTE8(v23))
    {
      v2 = [v1 isFavorite];
      goto LABEL_5;
    }

    return 3;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    return 3;
  }

  v9 = v8;
  if (qword_1011A6820 != -1)
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
  sub_100014984(&v23);
  if ((BYTE8(v23) & 1) == 0)
  {
    return 3;
  }

  v10 = [v9 artist];
  if (!v10)
  {
    return 3;
  }

  v11 = v10;
  v12 = [v10 isFavorite];
  v13 = [v11 isDisliked];
  v14 = v13;
  if (v12)
  {
    if ((v13 & 1) == 0)
    {

      return 0;
    }

    goto LABEL_27;
  }

  v6 = v14 == 0;
LABEL_9:
  if (v6)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

id MPModelAlbum.orphanMusicVideo.getter()
{
  v1 = _sSo12MPModelAlbumC9MusicCoreE06orphanC16VideoPropertySetSo010MPPropertyH0CvgZ_0();
  v2 = [v0 hasLoadedValuesForPropertySet:v1];

  if (!v2 || [v0 trackCount] > 1)
  {
    return 0;
  }

  result = [v0 representativeSong];
  if (result)
  {
    v4 = result;
    v5 = [result hasVideo];
    result = v4;
    if ((v5 & 1) == 0)
    {

      return 0;
    }
  }

  return result;
}

uint64_t MPModelAlbum.representativeTitle.getter()
{
  sub_10010FC20(&unk_1011AAAB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100EBDC20;
  *(v1 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 40) = v2;
  *(v1 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 56) = v3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [objc_opt_self() propertySetWithProperties:isa];

  LODWORD(isa) = [v0 hasLoadedValuesForPropertySet:v5];
  if (isa && [v0 trackCount] <= 1)
  {
    v6 = [v0 title];
    if (!v6)
    {
      v10 = [v0 representativeSong];
      if (!v10)
      {
        return 0;
      }

      v11 = v10;
      v12 = [v10 title];

      if (!v12)
      {
        return 0;
      }

      v6 = v12;
    }

LABEL_6:
    v8 = v6;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v7;
  }

  v6 = [v0 title];
  if (v6)
  {
    goto LABEL_6;
  }

  return 0;
}

id static MPModelAlbum.representativeTitlePropertySet.getter()
{
  sub_10010FC20(&unk_1011AAAB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100EBDC20;
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v1;
  *(v0 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 56) = v2;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [objc_opt_self() propertySetWithProperties:isa];

  return v4;
}

uint64_t Array<A>.union()()
{
  v1 = [objc_opt_self() emptyPropertySet];
  type metadata accessor for Array();
  sub_100009F78(0, &qword_1011AC8D0);
  swift_getWitnessTable();
  Sequence.reduce<A>(_:_:)();

  return v2;
}

id sub_10098BF50(uint64_t a1, SEL *a2, SEL *a3)
{
  v6 = v3;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = (&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14, v6, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *(v14 + *(sub_10010FC20(&unk_1011AAAC0) + 48));
    (*(v9 + 32))(v12, v14, v8);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v18 = [v16 *a3];

    (*(v9 + 8))(v12, v8);
    return v18;
  }

  else
  {
    v20 = v14[1];
    v21 = [v20 *a2];

    return v21;
  }
}

id SnapshotIdentifier.identifiers.getter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SnapshotIdentifier.Lazy();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v16 - v7;
  __chkstk_darwin(v6);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10, v2, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v10;
    v13 = [*v10 identifiers];

    return v13;
  }

  else
  {
    (*(v5 + 32))(v8, v10, v4);
    v15 = SnapshotIdentifier.Lazy.identifiers.getter(v4);
    (*(v5 + 8))(v8, v4);
    return v15;
  }
}

id SnapshotIdentifier.object.getter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SnapshotIdentifier.Lazy();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  v9 = __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v2, a1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return *v11;
  }

  (*(v5 + 32))(v7, v11, v4);
  v14 = SnapshotIdentifier.Lazy.object.getter(v4);
  (*(v5 + 8))(v7, v4);
  return v14;
}

unint64_t SnapshotIdentifier.debugDescription.getter(uint64_t a1)
{
  v6 = SnapshotIdentifier.description.getter(a1);
  v2._countAndFlagsBits = 0x7463656A626F202CLL;
  v2._object = 0xEA0000000000203ALL;
  String.append(_:)(v2);
  v5 = SnapshotIdentifier.object.getter(a1);
  swift_getWitnessTable();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();

  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  String.append(_:)(v3);

  return v6;
}

unint64_t SnapshotIdentifier.description.getter(uint64_t a1)
{
  v2._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 2112062;
  v3._object = 0xE300000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 60;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);

  v5 = SnapshotIdentifier.identifiers.getter(a1);
  v6 = [v5 description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0x696669746E656469;
  v11._object = 0xEB000000003D7265;
  String.append(_:)(v11);

  return 0xD000000000000012;
}

void SnapshotIdentifier.hash(into:)(uint64_t a1, uint64_t a2)
{
  v2 = SnapshotIdentifier.identifiers.getter(a2);
  NSObject.hash(into:)();
}

uint64_t static SnapshotIdentifier.== infix(_:_:)()
{
  sub_100009F78(0, &qword_1011AAEA0);
  v0 = type metadata accessor for SnapshotIdentifier();
  v1 = SnapshotIdentifier.identifiers.getter(v0);
  v2 = SnapshotIdentifier.identifiers.getter(v0);
  v3 = static NSObject.== infix(_:_:)();

  return v3 & 1;
}

Swift::Int SnapshotIdentifier.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = SnapshotIdentifier.identifiers.getter(a1);
  NSObject.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10098C808(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  SnapshotIdentifier.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

uint64_t static NSDiffableDataSourceSnapshot<>.enumerateSnapshotIdentifierItems(from:using:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = 0;
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  v12[8] = &v18;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_10098EFAC;
  *(v13 + 24) = v12;
  aBlock[4] = sub_10098EFE0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10098CB7C;
  aBlock[3] = &unk_1010D3DC8;
  v14 = _Block_copy(aBlock);
  v15 = a1;

  [v15 enumerateItemIdentifiersUsingBlock:v14];
  _Block_release(v14);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10098C9E4(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4, void (*a5)(uint64_t, char *, _BYTE *), uint64_t a6, _BYTE *a7)
{
  v20 = a3;
  v11 = type metadata accessor for SnapshotIdentifier();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - v13;
  v15 = *(sub_10010FC20(&unk_1011AAAC0) + 48);
  v16 = type metadata accessor for IndexPath();
  (*(*(v16 - 8) + 16))(v14, a1, v16);
  *&v14[v15] = a4;
  type metadata accessor for SnapshotIdentifier.Lazy();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v17 = a4;
  a5(a1, v14, a7);
  *v20 = *a7;
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_10098CB7C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 32);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v11(v10, v12, a4);

  return (*(v8 + 8))(v10, v7);
}

uint64_t static NSDiffableDataSourceSnapshot<>.enumerateSnapshotIdentifierItems(from:inSection:using:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = 0;
  v14 = swift_allocObject();
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a7;
  v14[5] = a2;
  v14[6] = a1;
  v14[7] = a3;
  v14[8] = a4;
  v14[9] = &v20;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10098F008;
  *(v15 + 24) = v14;
  aBlock[4] = sub_10030A0F4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002DCBA0;
  aBlock[3] = &unk_1010D3E40;
  v16 = _Block_copy(aBlock);
  v17 = a1;

  [v17 enumerateItemIdentifiersInSectionAtIndex:a2 usingBlock:v16];
  _Block_release(v16);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10098CE1C(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, void *a5, void (*a6)(uint64_t, char *, _BYTE *), uint64_t a7, _BYTE *a8)
{
  v19 = a7;
  v20 = a3;
  v12 = type metadata accessor for SnapshotIdentifier();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v19 - v14;
  v16 = *(sub_10010FC20(&unk_1011AAAC0) + 48);
  IndexPath.init(item:section:)();
  *&v15[v16] = a5;
  type metadata accessor for SnapshotIdentifier.Lazy();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v17 = a5;
  a6(a1, v15, a8);
  *v20 = *a8;
  return (*(v13 + 8))(v15, v12);
}

uint64_t static NSDiffableDataSourceSnapshot<>.snapshotIdentifiers(from:inSection:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for SnapshotIdentifier();
  v12 = static Array._allocateUninitialized(_:)();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = &v12;
  static NSDiffableDataSourceSnapshot<>.enumerateSnapshotIdentifierItems(from:inSection:using:)(a1, a2, sub_10098F040, v11, a3, a4, a5);
  return v12;
}

uint64_t sub_10098D030(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SnapshotIdentifier();
  v4 = __chkstk_darwin(v3);
  (*(v6 + 16))(&v8 - v5, a2, v3, v4);
  type metadata accessor for Array();
  return Array.append(_:)();
}

uint64_t static NSDiffableDataSourceSnapshot<>.enumerateSnapshotIdentifierSections(from:using:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = 0;
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  v12[8] = &v18;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_10098F04C;
  *(v13 + 24) = v12;
  aBlock[4] = sub_10098F63C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002DCBA0;
  aBlock[3] = &unk_1010D3EB8;
  v14 = _Block_copy(aBlock);
  v15 = a1;

  [v15 enumerateSectionIdentifiersUsingBlock:v14];
  _Block_release(v14);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10098D294(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4, void (*a5)(uint64_t, void *, _BYTE *), uint64_t a6, _BYTE *a7)
{
  v12 = type metadata accessor for SnapshotIdentifier();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v18 - v14);
  *v15 = a1;
  v15[1] = a4;
  type metadata accessor for SnapshotIdentifier.Lazy();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v16 = a4;
  a5(a1, v15, a7);
  *a3 = *a7;
  return (*(v13 + 8))(v15, v12);
}

uint64_t static NSDiffableDataSourceSnapshot<>.snapshot(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for SnapshotIdentifier();
  swift_getWitnessTable();
  NSDiffableDataSourceSnapshot.init()();
  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a5;
  v11[6] = v10;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = sub_10098F080;
  v12[6] = v11;
  v16[4] = sub_10098F090;
  v16[5] = v12;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_10098D704;
  v16[3] = &unk_1010D3F30;
  v13 = _Block_copy(v16);
  v14 = a1;

  [v14 enumerateSectionsUsingBlock:v13];
  _Block_release(v13);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10098D5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1009F00CC(a6, a6);
  swift_allocObject();
  v14 = static Array._adoptStorage(_:count:)();
  *v15 = a1;
  v16 = sub_1009B83E8(v14);
  type metadata accessor for SnapshotIdentifier();
  swift_unknownObjectRetain();
  swift_getWitnessTable();
  type metadata accessor for NSDiffableDataSourceSnapshot();
  NSDiffableDataSourceSnapshot.appendSections(_:)(v16);

  static NSDiffableDataSourceSnapshot<>.snapshotIdentifiers(from:inSection:)(a5, a2, a6, a7, a8);
  swift_unknownObjectRetain();
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
  swift_unknownObjectRelease();
}

uint64_t sub_10098D704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100009F78(0, &qword_1011A9F50);
  v7 = *(a1 + 32);
  v8 = swift_unknownObjectRetain();
  v7(v8, a3, a4);

  return swift_unknownObjectRelease();
}

uint64_t static NSDiffableDataSourceSnapshot<>.snapshot(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for SnapshotIdentifier();
  swift_getWitnessTable();
  NSDiffableDataSourceSnapshot.init()();
  objc_opt_self();
  v6 = swift_dynamicCastObjCClassUnconditional();
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10098F0B8;
  *(v8 + 24) = v7;
  v12[4] = sub_10030A0A0;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1002F4338;
  v12[3] = &unk_1010D3FA8;
  v9 = _Block_copy(v12);
  v10 = a1;

  [v10 enumerateSectionsUsingBlock:v9];
  _Block_release(v9);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10098D95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_10010FC20(&unk_1011AAAB0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100EBC6B0;
  *(v9 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v9 + 40) = v10;
  type metadata accessor for SnapshotIdentifier();
  swift_getWitnessTable();
  type metadata accessor for NSDiffableDataSourceSnapshot();
  NSDiffableDataSourceSnapshot.appendSections(_:)(v9);

  static NSDiffableDataSourceSnapshot<>.snapshotIdentifiers(from:inSection:)(a5, a2, &type metadata for String, a6, &protocol witness table for String);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
}

uint64_t static NSDiffableDataSourceSnapshot<>.snapshot(from:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  type metadata accessor for SnapshotIdentifier();
  type metadata accessor for SnapshotIdentifier();
  swift_getWitnessTable();
  swift_getWitnessTable();
  NSDiffableDataSourceSnapshot.init()();
  objc_opt_self();
  v6 = swift_dynamicCastObjCClassUnconditional();
  objc_opt_self();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = swift_dynamicCastObjCClassUnconditional();
  WitnessTable = swift_getWitnessTable();
  return static NSDiffableDataSourceSnapshot<>.enumerateSnapshotIdentifierSections(from:using:)(v6, sub_10098F0C4, v9, a1, a2, WitnessTable);
}

uint64_t sub_10098DBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v25 = a2;
  v26 = a6;
  v27 = a1;
  v28 = a5;
  v9 = type metadata accessor for SnapshotIdentifier();
  v10 = type metadata accessor for Optional();
  v29 = *(v10 - 8);
  v30 = v10;
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  type metadata accessor for _ContiguousArrayStorage();
  v13 = *(v9 - 8);
  swift_allocObject();
  v14 = static Array._adoptStorage(_:count:)();
  v24 = *(v13 + 16);
  v24(v15, a2, v9);
  v16 = sub_1009B83E8(v14);
  v17 = type metadata accessor for SnapshotIdentifier();
  WitnessTable = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v31 = v9;
  v32 = v17;
  v33 = WitnessTable;
  v34 = v19;
  type metadata accessor for NSDiffableDataSourceSnapshot();
  NSDiffableDataSourceSnapshot.appendSections(_:)(v16);

  v20 = v26;
  v21 = swift_getWitnessTable();
  static NSDiffableDataSourceSnapshot<>.snapshotIdentifiers(from:inSection:)(v28, v27, v20, a7, v21);
  v24(v12, v25, v9);
  (*(v13 + 56))(v12, 0, 1, v9);
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

  return (*(v29 + 8))(v12, v30);
}

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
  sub_10010FC20(&unk_1011AAAB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100EBE260;
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

  result = _s9MusicCore14PlaylistCoversO12ArtworkTokenC7rawJSON13playlistTitleAESgSS_SStcfC_0(v13, v15, v9, v11);
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
      if (qword_1011A6AC0 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_1000060E4(v19, static Logger.playlistCovers);
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

        v29 = sub_100010678(v26, v28, &v31);

        *(v23 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v21, v22, "No server artwork catalog available for playlist with coverArtworkRecipe=%{public}s", v23, 0xCu);
        sub_10000959C(v24);
      }

      v30 = qword_1011A6AA0;
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
        v2 = 0x8000000100E5ED20;
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

  v9 = _sSo16MPArtworkCatalogC9MusicCoreE8monogram3for26environmentLayoutDirectionABSgSSSg_So018UITraitEnvironmenthI0VtFZ_0(v3, v5, v8);

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
  *(v3 + 16) = sub_10098F0D0;
  *(v3 + 24) = v2;
  v9[4] = sub_100029B6C;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100029B9C;
  v9[3] = &unk_1010D4020;
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

uint64_t sub_10098E658(void *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v26 - v10;
  v12 = type metadata accessor for String.LocalizationValue.StringInterpolation();
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
    (*(v6 + 16))(v8, v11, v5);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v15 = qword_101219808;
    static Locale.current.getter();
    v16 = String.init(localized:table:bundle:locale:comment:)();
    v18 = v17;
    (*(v6 + 8))(v11, v5);
    *a2 = v16;
    a2[1] = v18;
  }
}

uint64_t sub_10098E99C(uint64_t result)
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
          v16 = *(v5 + 3);
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

          sub_10010FC20(&unk_1011AAAB0);
          v14 = swift_allocObject();
          v19 = j__malloc_size(v14);
          v20 = v19 - 32;
          if (v19 < 32)
          {
            v20 = v19 - 17;
          }

          v21 = v20 >> 4;
          *(v14 + 2) = v18;
          *(v14 + 3) = 2 * (v20 >> 4);
          v22 = v14 + 32;
          v23 = *(v5 + 3) >> 1;
          v6 = &v14[16 * v23 + 32];
          v24 = (v21 & 0x7FFFFFFFFFFFFFFFLL) - v23;
          if (*(v5 + 2))
          {
            v25 = v5 + 32;
            if (v14 != v5 || v22 >= &v25[16 * v23])
            {
              memmove(v22, v25, 16 * v23);
            }

            *(v5 + 2) = 0;
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
        *(v6 + 1) = v13;
        v6 += 16;
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

  v26 = *(v5 + 3);
  if (v26 < 2)
  {
    return v5;
  }

  v27 = v26 >> 1;
  v15 = __OFSUB__(v27, v2);
  v28 = v27 - v2;
  if (!v15)
  {
    *(v5 + 2) = v28;
    return v5;
  }

LABEL_38:
  __break(1u);
  return result;
}

id _sSo16MPArtworkCatalogC9MusicCoreE8monogram3for26environmentLayoutDirectionABSgSSSg_So018UITraitEnvironmenthI0VtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t _sSo13MPModelObjectC9MusicCoreE20MediaKitPlayableKindO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C7748, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t _sSo13MPModelObjectC9MusicCoreE14FavoriteStatusO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C7858, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

id _sSo12MPModelAlbumC9MusicCoreE06orphanC16VideoPropertySetSo010MPPropertyH0CvgZ_0()
{
  sub_10010FC20(&unk_1011AAAB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100EBC6B0;
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v1;
  sub_10010FC20(&qword_1011AAC20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v3;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100EBC6B0;
  *(v4 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v4 + 40) = v5;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v7;
  sub_10000C0A4(inited);
  swift_setDeallocating();
  sub_10001AE34(inited + 32);
  v8 = objc_allocWithZone(MPPropertySet);
  v9 = Array._bridgeToObjectiveC()().super.isa;

  sub_100009F78(0, &qword_1011AC8D0);
  v10 = Dictionary._bridgeToObjectiveC()().super.isa;

  v11 = [v8 initWithProperties:v9 relationships:v10];

  return v11;
}

id sub_10098EF34@<X0>(id *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = [*a1 propertySetByCombiningWithPropertySet:*a2];
  *a3 = result;
  return result;
}

unint64_t sub_10098F0DC()
{
  result = qword_1011AAAD0;
  if (!qword_1011AAAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AAAD0);
  }

  return result;
}

unint64_t sub_10098F134()
{
  result = qword_1011AAAD8;
  if (!qword_1011AAAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AAAD8);
  }

  return result;
}

unint64_t sub_10098F18C()
{
  result = qword_1011AAAE0;
  if (!qword_1011AAAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AAAE0);
  }

  return result;
}

unint64_t sub_10098F1E4()
{
  result = qword_1011AAAE8;
  if (!qword_1011AAAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AAAE8);
  }

  return result;
}

unint64_t sub_10098F23C()
{
  result = qword_1011AAAF0;
  if (!qword_1011AAAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AAAF0);
  }

  return result;
}

unint64_t sub_10098F294()
{
  result = qword_1011AAAF8;
  if (!qword_1011AAAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AAAF8);
  }

  return result;
}

uint64_t sub_10098F344()
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

void sub_10098F3C4()
{
  sub_10098F438();
  if (v0 <= 0x3F)
  {
    sub_10098F4B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10098F438()
{
  if (!qword_1011AAC00)
  {
    sub_1001109D0(&qword_1011AAC08);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1011AAC00);
    }
  }
}

void sub_10098F4B0()
{
  if (!qword_1011AAC10)
  {
    type metadata accessor for IndexPath();
    sub_1001109D0(&qword_1011AAC08);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1011AAC10);
    }
  }
}

uint64_t sub_10098F530(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10098F554()
{
  result = qword_1011AACA0;
  if (!qword_1011AACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AACA0);
  }

  return result;
}

BOOL sub_10098F64C(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v4 = sub_1009950E8(v3);

  sub_10010FC20(&qword_1011AADA8);
  v5 = type metadata accessor for AudioVariant();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100EBDC20;
  v10 = v9 + v8;
  v11 = *(v6 + 104);
  v11(v10, enum case for AudioVariant.dolbyAtmos(_:), v5);
  v11(v10 + v7, enum case for AudioVariant.dolbyAudio(_:), v5);
  v12 = sub_1009949CC(v9, v4);
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
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for AudioVariant.dolbyAtmos(_:))
  {
    return 0xD000000000000018;
  }

  if (v7 == enum case for AudioVariant.dolbyAudio(_:))
  {
    return 0xD000000000000018;
  }

  if (v7 == enum case for AudioVariant.lossless(_:) || v7 == enum case for AudioVariant.highResolutionLossless(_:))
  {
    return 0xD000000000000015;
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t AudioVariant.accessibilityLabel.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AudioVariant();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for AudioVariant.dolbyAtmos(_:))
  {
    if (qword_1011A7080 != -1)
    {
      swift_once();
    }

    v8 = &static AccessibilityString.dolbyAtmosLabel;
  }

  else if (v7 == enum case for AudioVariant.dolbyAudio(_:))
  {
    if (qword_1011A7088 != -1)
    {
      swift_once();
    }

    v8 = &static AccessibilityString.dolbyAudioLabel;
  }

  else if (v7 == enum case for AudioVariant.lossless(_:))
  {
    if (qword_1011A7098 != -1)
    {
      swift_once();
    }

    v8 = &static AccessibilityString.losslessLabel;
  }

  else
  {
    if (v7 != enum case for AudioVariant.highResolutionLossless(_:))
    {
      (*(v3 + 8))(v6, v2);
      return 0;
    }

    if (qword_1011A7090 != -1)
    {
      swift_once();
    }

    v8 = &static AccessibilityString.hiResLosslessLabel;
  }

  v9 = *v8;

  return v9;
}

uint64_t AudioVariant.badgeText.getter()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v18[-v7];
  v9 = type metadata accessor for AudioVariant();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v10 + 16))(v13, v0, v9, v11);
  v14 = (*(v10 + 88))(v13, v9);
  if (v14 == enum case for AudioVariant.lossless(_:) || v14 == enum case for AudioVariant.highResolutionLossless(_:))
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v3 + 16))(v5, v8, v2);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v15 = qword_101219808;
    static Locale.current.getter();
    v16 = String.init(localized:table:bundle:locale:comment:)();
    (*(v3 + 8))(v8, v2);
  }

  else
  {
    (*(v10 + 8))(v13, v9);
    return 0;
  }

  return v16;
}

uint64_t Array<A>.removingEquivalents()()
{
  v0 = sub_10010FC20(&qword_1011AAD10);
  __chkstk_darwin(v0 - 8);
  v2 = &v14 - v1;
  v3 = type metadata accessor for AudioVariant();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8 = sub_1009950E8(v7);

  v15 = v8;
  v9 = *(v4 + 104);
  v9(v6, enum case for AudioVariant.highResolutionLossless(_:), v3);

  v10 = sub_10096A1B0(v6, v8);

  v11 = *(v4 + 8);
  v11(v6, v3);
  if (v10)
  {
    v9(v6, enum case for AudioVariant.lossless(_:), v3);
    sub_100993A7C(v6, v2);
    v11(v6, v3);
    sub_1000095E8(v2, &qword_1011AAD10);
  }

  v12 = v15;
  v9(v6, enum case for AudioVariant.dolbyAtmos(_:), v3);
  LOBYTE(v12) = sub_10096A1B0(v6, v12);
  v11(v6, v3);
  if (v12)
  {
    v9(v6, enum case for AudioVariant.dolbyAudio(_:), v3);
    sub_100993A7C(v6, v2);
    v11(v6, v3);
    sub_1000095E8(v2, &qword_1011AAD10);
  }

  return v15;
}

uint64_t MusicLibrary.DownloadStatus.DownloadPauseReasons.init(mediaPlayerReason:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MusicLibrary.DownloadStatus.DownloadPauseReasons();
  v11 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 4) != 0)
  {
    static MusicLibrary.DownloadStatus.DownloadPauseReasons.cellularDataDisallowed.getter();
LABEL_10:
    (*(v11 + 32))(a2, v7, v4);
    return (*(v11 + 56))(a2, 0, 1, v4);
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

  v8 = *(v11 + 56);

  return v8(a2, 1, 1, v4, v5);
}

uint64_t MusicLibrary.DownloadStatus.DownloadPauseReasons.alert.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v75 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.LocalizationValue();
  v76 = *(v6 - 8);
  v77 = v6;
  __chkstk_darwin(v6);
  v8 = v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v69 - v10;
  v12 = type metadata accessor for MusicLibrary.DownloadStatus.DownloadPauseReasons();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v19 = v69 - v18;
  (*(v13 + 16))(v69 - v18, v2, v12, v17);
  static MusicLibrary.DownloadStatus.DownloadPauseReasons.cellularDataDisallowed.getter();
  sub_100995588(&qword_1011AAD18, &type metadata accessor for MusicLibrary.DownloadStatus.DownloadPauseReasons);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v13 + 8);
  v21(v15, v12);
  if (v20)
  {
    v21(v19, v12);
    sub_10098066C(0, 0, v78);
    v23 = v78[0];
    result = v78[1];
    v25 = v78[2];
    v24 = v78[3];
    v26 = v80;
    v27 = v81;
    v28 = v82;
    v29 = v83;
    v30 = v79 & 0xFFFFFFFFFFFFFF00;
    v31 = v81 & 0xFFFFFFFFFFFFFF00;
    v32 = v79;
  }

  else
  {
    static MusicLibrary.DownloadStatus.DownloadPauseReasons.constrainedNetwork.getter();
    v33 = dispatch thunk of static Equatable.== infix(_:_:)();
    v21(v15, v12);
    if (v33)
    {
      v21(v19, v12);
      String.LocalizationValue.init(stringLiteral:)();
      v34 = v76;
      v35 = v77;
      v36 = v76 + 16;
      v37 = *(v76 + 16);
      v37(v8, v11, v77);
      if (qword_1011A6740 != -1)
      {
        swift_once();
      }

      v38 = qword_101219808;
      v39 = qword_101219808;
      static Locale.current.getter();
      v40 = v39;
      v41 = String.init(localized:table:bundle:locale:comment:)();
      v73 = v42;
      v74 = v41;
      v43 = *(v34 + 8);
      v43(v11, v35);
      v71 = v43;
      String.LocalizationValue.init(stringLiteral:)();
      v37(v8, v11, v35);
      static Locale.current.getter();
      v69[1] = v38;
      v76 = String.init(localized:table:bundle:locale:comment:)();
      v72 = v44;
      v43(v11, v35);
      sub_10010FC20(&qword_1011A7C00);
      v45 = swift_allocObject();
      v69[0] = v36;
      v46 = v37;
      v70 = v37;
      v28 = v45;
      *(v45 + 16) = xmmword_100EBDC20;
      String.LocalizationValue.init(stringLiteral:)();
      v46(v8, v11, v35);
      static Locale.current.getter();
      v47 = String.init(localized:table:bundle:locale:comment:)();
      v49 = v48;
      v50 = v71;
      v71(v11, v35);
      *(v28 + 32) = 0x6C65636E6163;
      *(v28 + 40) = 0xE600000000000000;
      *(v28 + 48) = v47;
      *(v28 + 56) = v49;
      *(v28 + 64) = 0;
      *(v28 + 72) = 0;
      *(v28 + 80) = 0;
      String.LocalizationValue.init(stringLiteral:)();
      v70(v8, v11, v35);
      static Locale.current.getter();
      v51 = String.init(localized:table:bundle:locale:comment:)();
      v52 = v35;
      v54 = v53;
      v50(v11, v52);
      v24 = v72;
      result = v73;
      v25 = v76;
      v23 = v74;
      v26 = 0;
      v29 = 0;
      v31 = 0;
      v32 = 0;
      v30 = 0;
      *(v28 + 88) = 0x73676E6974746573;
      *(v28 + 96) = 0xE800000000000000;
      *(v28 + 104) = v51;
      *(v28 + 112) = v54;
      *(v28 + 120) = 2;
      *(v28 + 128) = &unk_100EF3158;
      *(v28 + 136) = 0;
      v27 = 1;
    }

    else
    {
      static MusicLibrary.DownloadStatus.DownloadPauseReasons.thermalPressure.getter();
      v55 = dispatch thunk of static Equatable.== infix(_:_:)();
      v21(v15, v12);
      v21(v19, v12);
      if (v55)
      {
        String.LocalizationValue.init(stringLiteral:)();
        v56 = v76;
        v57 = v77;
        v58 = *(v76 + 16);
        v58(v8, v11, v77);
        if (qword_1011A6740 != -1)
        {
          swift_once();
        }

        v59 = qword_101219808;
        static Locale.current.getter();
        v60 = v59;
        v61 = String.init(localized:table:bundle:locale:comment:)();
        v73 = v62;
        v74 = v61;
        v63 = *(v56 + 8);
        v63(v11, v57);
        String.LocalizationValue.init(stringLiteral:)();
        v71 = v58;
        v58(v8, v11, v57);
        static Locale.current.getter();
        v76 = String.init(localized:table:bundle:locale:comment:)();
        v72 = v64;
        v63(v11, v57);
        sub_10010FC20(&qword_1011A7C00);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_100EBC6B0;
        String.LocalizationValue.init(stringLiteral:)();
        (v71)(v8, v11, v57);
        static Locale.current.getter();
        v65 = String.init(localized:table:bundle:locale:comment:)();
        v66 = v57;
        v68 = v67;
        v63(v11, v66);
        v24 = v72;
        result = v73;
        v23 = v74;
        v26 = 0;
        v29 = 0;
        v31 = 0;
        v32 = 0;
        v30 = 0;
        *(v28 + 32) = 0x6C65636E6163;
        *(v28 + 40) = 0xE600000000000000;
        v25 = v76;
        *(v28 + 48) = v65;
        *(v28 + 56) = v68;
        *(v28 + 64) = 0;
        v27 = 1;
        *(v28 + 72) = 0;
        *(v28 + 80) = 0;
      }

      else
      {
        v23 = 0;
        result = 0;
        v25 = 0;
        v24 = 0;
        v26 = 0;
        v28 = 0;
        v29 = 0;
        v27 = 0;
        v31 = 0;
        v32 = 0;
        v30 = 0;
      }
    }
  }

  *a1 = v23;
  a1[1] = result;
  a1[2] = v25;
  a1[3] = v24;
  a1[4] = v30 | v32;
  a1[5] = v26;
  a1[6] = v31 | v27;
  a1[7] = v28;
  a1[8] = v29;
  return result;
}

uint64_t Track.musicItem.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for MusicVideo();
  v41 = *(v3 - 8);
  v42 = v3;
  __chkstk_darwin(v3);
  v40 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Song();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Track();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v44 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v38 - v14;
  v16 = *(v10 + 16);
  v43 = v1;
  v16(&v38 - v14, v1, v9, v13);
  v17 = (*(v10 + 88))(v15, v9);
  if (v17 == enum case for Track.song(_:))
  {
    (*(v10 + 96))(v15, v9);
    v18 = *(v6 + 32);
    v18(v8, v15, v5);
    a1[3] = v5;
    a1[4] = &protocol witness table for Song;
    v19 = sub_10001C8B8(a1);
    return (v18)(v19, v8, v5);
  }

  else
  {
    v39 = a1;
    if (v17 == enum case for Track.musicVideo(_:))
    {
      (*(v10 + 96))(v15, v9);
      v21 = v40;
      v22 = *(v41 + 32);
      v23 = v42;
      v22(v40, v15, v42);
      v24 = v39;
      v39[3] = v23;
      v24[4] = &protocol witness table for MusicVideo;
      v25 = sub_10001C8B8(v24);
      return (v22)(v25, v21, v23);
    }

    else
    {
      if (qword_1011A6920 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_1000060E4(v26, static Logger.musicKit);
      v27 = v44;
      (v16)(v44, v43, v9);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v45 = v43;
        *v30 = 136315138;
        sub_100995588(&qword_1011AAD20, &type metadata accessor for Track);
        v31 = dispatch thunk of CustomStringConvertible.description.getter();
        v32 = v27;
        v34 = v33;
        v35 = *(v10 + 8);
        v35(v32, v9);
        v36 = sub_100010678(v31, v34, &v45);

        *(v30 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v28, v29, "Unsupported Track type=%s", v30, 0xCu);
        sub_10000959C(v43);
      }

      else
      {

        v35 = *(v10 + 8);
        v35(v27, v9);
      }

      v37 = v39;
      v39[4] = 0;
      *v37 = 0u;
      *(v37 + 1) = 0u;
      return (v35)(v15, v9);
    }
  }
}

uint64_t Logger.musicKit.unsafeMutableAddressor()
{
  if (qword_1011A6920 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000060E4(v0, static Logger.musicKit);
}

uint64_t Track.album(from:fallbackSource:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v4;
  v6[5] = a3;
  v6[6] = v3;
  v6[3] = a1;
  v6[4] = a2;
  sub_10010FC20(&qword_1011A8E50);
  v6[7] = swift_task_alloc();
  v8 = type metadata accessor for MusicPropertySource();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  v9 = swift_task_alloc();
  v6[11] = v9;
  *v9 = v6;
  v9[1] = sub_1009912D8;

  return sub_1009918D4(a1, a2, v3);
}

uint64_t sub_1009912D8()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100991424, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100991424()
{
  *(v0 + 16) = *(v0 + 96);
  swift_errorRetain();
  sub_10010FC20(&qword_1011AB640);
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

  sub_100995284(v6, v5);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_1000095E8(*(v0 + 56), &qword_1011A8E50);
LABEL_11:
    sub_1009952F4();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();

    goto LABEL_4;
  }

  (*(*(v0 + 72) + 32))(*(v0 + 80), *(v0 + 56), *(v0 + 64));
  sub_100995588(&qword_1011AAD30, &type metadata accessor for MusicPropertySource);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
    goto LABEL_11;
  }

  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  *v8 = v0;
  v8[1] = sub_1009916A0;
  v9 = *(v0 + 80);
  v10 = *(v0 + 48);
  v11 = *(v0 + 24);

  return sub_1009918D4(v11, v9, v10);
}

uint64_t sub_1009916A0()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_100991844;
  }

  else
  {
    v2 = sub_1009917B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009917B4()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100991844()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1009918D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for MusicVideo();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8FA0);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8858);
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

  return _swift_task_switch(sub_100991AFC, 0, 0);
}

uint64_t sub_100991AFC()
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
    sub_10010FC20(&qword_1011AA660);
    v10 = swift_allocObject();
    v0[21] = v10;
    *(v10 + 16) = xmmword_100EBC6C0;
    sub_10010FC20(&qword_1011A91F8);
    *(v10 + 32) = static PartialMusicProperty<A>.albums.getter();
    v11 = swift_task_alloc();
    v0[22] = v11;
    v12 = sub_100995588(&qword_1011A91F0, &type metadata accessor for Song);
    *v11 = v0;
    v11[1] = sub_1009920F0;
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
    sub_10010FC20(&qword_1011AA660);
    v10 = swift_allocObject();
    v0[24] = v10;
    *(v10 + 16) = xmmword_100EBC6C0;
    sub_10010FC20(&qword_1011AAD98);
    *(v10 + 32) = static PartialMusicProperty<A>.albums.getter();
    v22 = swift_task_alloc();
    v0[25] = v22;
    v12 = sub_100995588(&qword_1011A9198, &type metadata accessor for MusicVideo);
    *v22 = v0;
    v22[1] = sub_100992588;
    v13 = v0[7];
    v14 = v0[5];
    v15 = v0[3];
    v16 = &protocol witness table for MusicVideo;
    v17 = &protocol witness table for MusicVideo;
    goto LABEL_5;
  }

  if (qword_1011A6920 != -1)
  {
    swift_once();
  }

  v23 = v0[19];
  v24 = v0[17];
  v25 = v0[4];
  v26 = type metadata accessor for Logger();
  sub_1000060E4(v26, static Logger.musicKit);
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
    sub_100995588(&qword_1011AAD20, &type metadata accessor for Track);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    v42 = *(v31 + 8);
    v42(v30, v32);
    v38 = sub_100010678(v35, v37, &v43);

    *(v33 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v27, v28, "Unexpected Track type %{public}s", v33, 0xCu);
    sub_10000959C(v34);
  }

  else
  {

    v42 = *(v31 + 8);
    v42(v30, v32);
  }

  sub_1009952F4();
  swift_allocError();
  *v39 = 1;
  swift_willThrow();
  v42(v0[20], v0[17]);

  v40 = v0[1];

  return v40();
}

uint64_t sub_1009920F0()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_100992A24;
  }

  else
  {
    v2 = sub_100992220;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100992220()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[10];
  Song.albums.getter();
  v18 = *(v2 + 8);
  v18(v1, v3);
  v5 = sub_10010FC20(&qword_1011A8FA8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v4, 1, v5);
  v8 = v0[12];
  v9 = v0[10];
  if (v7 == 1)
  {
    sub_1000095E8(v0[10], &qword_1011A8FA0);
    v10 = type metadata accessor for Album();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
LABEL_4:
    sub_1000095E8(v0[12], &qword_1011A8858);
    sub_1009952F4();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    v18(v0[16], v0[13]);

    v14 = v0[1];
    goto LABEL_6;
  }

  sub_100916DA4(v0[12]);
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

uint64_t sub_100992588()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_100992B24;
  }

  else
  {
    v2 = sub_1009926B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009926B8()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  MusicVideo.albums.getter();
  v18 = *(v3 + 8);
  v18(v2, v4);
  v5 = sub_10010FC20(&qword_1011A8FA8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v1, 1, v5);
  v8 = v0[11];
  v9 = v0[9];
  if (v7 == 1)
  {
    sub_1000095E8(v0[9], &qword_1011A8FA0);
    v10 = type metadata accessor for Album();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
LABEL_4:
    sub_1000095E8(v0[11], &qword_1011A8858);
    sub_1009952F4();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    v18(v0[8], v0[5]);

    v14 = v0[1];
    goto LABEL_6;
  }

  sub_100916DA4(v0[11]);
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

uint64_t sub_100992A24()
{
  (*(v0[14] + 8))(v0[16], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100992B24()
{
  (*(v0[6] + 8))(v0[8], v0[5]);

  v1 = v0[1];

  return v1();
}

NSString sub_100992C2C()
{
  result = String._bridgeToObjectiveC()();
  static MusicLibrary.downloadingStateDidChange = result;
  return result;
}

uint64_t *MusicLibrary.downloadingStateDidChange.unsafeMutableAddressor()
{
  if (qword_1011A6918 != -1)
  {
    swift_once();
  }

  return &static MusicLibrary.downloadingStateDidChange;
}

id static MusicLibrary.downloadingStateDidChange.getter()
{
  if (qword_1011A6918 != -1)
  {
    swift_once();
  }

  v1 = static MusicLibrary.downloadingStateDidChange;

  return v1;
}

uint64_t MusicPin.Action.localizedTitle(for:)(char *a1)
{
  v2 = v1;
  v34 = a1;
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v35 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for String.LocalizationValue();
  v5 = *(v36 - 8);
  __chkstk_darwin(v36);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for MusicPin.Item();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MusicPin.Action();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, v2, v15, v17);
  v20 = (*(v16 + 88))(v19, v15);
  if (v20 == enum case for MusicPin.Action.navigate(_:))
  {
    (*(v12 + 16))(v14, v34, v11);
    v21 = (*(v12 + 88))(v14, v11);
    if (v21 == enum case for MusicPin.Item.album(_:))
    {
      v33 = v11;
      v34 = v14;
      String.LocalizationValue.init(stringLiteral:)();
      v22 = v36;
      (*(v5 + 16))(v7, v10, v36);
      if (qword_1011A6740 != -1)
      {
        swift_once();
      }

      v23 = qword_101219808;
      static Locale.current.getter();
      v24 = String.init(localized:table:bundle:locale:comment:)();
      (*(v5 + 8))(v10, v22);
      (*(v12 + 8))(v34, v33);
      return v24;
    }

    v25 = v36;
    if (v21 != enum case for MusicPin.Item.artist(_:) && v21 != enum case for MusicPin.Item.musicVideo(_:) && v21 != enum case for MusicPin.Item.playlist(_:) && v21 != enum case for MusicPin.Item.song(_:))
    {
      (*(v12 + 8))(v14, v11);
      return 0;
    }

    String.LocalizationValue.init(stringLiteral:)();
    (*(v5 + 16))(v7, v10, v25);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v30 = qword_101219808;
    static Locale.current.getter();
    v24 = String.init(localized:table:bundle:locale:comment:)();
    (*(v5 + 8))(v10, v25);
    (*(v12 + 8))(v14, v11);
  }

  else
  {
    if (v20 != enum case for MusicPin.Action.play(_:) && v20 != enum case for MusicPin.Action.shuffle(_:))
    {
      (*(v16 + 8))(v19, v15);
      return 0;
    }

    String.LocalizationValue.init(stringLiteral:)();
    v26 = v5;
    v27 = *(v5 + 16);
    v28 = v36;
    v27(v7, v10, v36);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v29 = qword_101219808;
    static Locale.current.getter();
    v24 = String.init(localized:table:bundle:locale:comment:)();
    (*(v26 + 8))(v10, v28);
  }

  return v24;
}

uint64_t sub_1009933F8()
{
  sub_100995588(&qword_1011AAD80, &type metadata accessor for Song);

  return static MusicItem<>.==~ infix(_:_:)();
}

uint64_t sub_100993484()
{
  sub_100995588(&qword_1011AAD78, &type metadata accessor for MusicVideo);

  return static MusicItem<>.==~ infix(_:_:)();
}

uint64_t sub_100993510()
{
  sub_100995588(&qword_1011AAD70, &type metadata accessor for Playlist);

  return static MusicItem<>.==~ infix(_:_:)();
}

uint64_t sub_10099359C()
{
  sub_100995588(&qword_1011AAD60, &type metadata accessor for Playlist.Folder);
  sub_100995588(&qword_1011AAD68, &type metadata accessor for Playlist.Folder);

  return static MusicItem<>.==~ infix(_:_:)();
}

uint64_t sub_100993658()
{
  sub_100995588(&qword_1011AAD50, &type metadata accessor for MusicPin);
  sub_100995588(&qword_1011AAD58, &type metadata accessor for MusicPin);

  return static MusicItem<>.==~ infix(_:_:)();
}

uint64_t sub_100993714()
{
  sub_100995588(&qword_1011AAD40, &type metadata accessor for MusicPin.Item);
  sub_100995588(&qword_1011AAD48, &type metadata accessor for MusicPin.Item);

  return static MusicItem<>.==~ infix(_:_:)();
}

uint64_t sub_1009937D0()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, static Logger.musicKit);
  sub_1000060E4(v0, static Logger.musicKit);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.musicKit.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011A6920 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1000060E4(v2, static Logger.musicKit);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1009938F0(char a1)
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
    sub_100A00E6C();
    v17 = v19;
  }

  v15 = *(*(v17 + 48) + v7);
  sub_1009941CC(v7);
  *v2 = v19;
  return v15;
}

uint64_t sub_100993A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AudioVariant();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100995588(&qword_1011AA8B8, &type metadata accessor for AudioVariant);
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
      sub_100995588(&qword_1011AA8C0, &type metadata accessor for AudioVariant);
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
      sub_100A00E80();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_100994390(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_100993D24(char a1)
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
    v10 = "nt";
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
    v13 = "nt";
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
    sub_100A01498();
    v17 = v19;
  }

  v15 = *(*(v17 + 48) + v7);
  sub_100994698(v7);
  *v2 = v19;
  return v15;
}

uint64_t sub_1009940DC(uint64_t a1)
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
    sub_100A014AC();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_100197114(v6);
  result = v11;
  *v1 = v12;
  return result;
}

unint64_t sub_1009941CC(unint64_t result)
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

void sub_100994390(int64_t a1)
{
  v3 = type metadata accessor for AudioVariant();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = _HashTable.previousHole(before:)();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        sub_100995588(&qword_1011AA8B8, &type metadata accessor for AudioVariant);
        v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

unint64_t sub_100994698(unint64_t result)
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
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1009949CC(uint64_t isStackAllocationSafe, uint64_t a2)
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
    v10 = sub_100994B6C(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_1009955D0(v14, v7, v17);
    v10 = v17[0];
  }

  return v10;
}

uint64_t sub_100994B6C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v30 = a1;
  v6 = type metadata accessor for AudioVariant();
  __chkstk_darwin(v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v40 = &v27 - v12;
  v33 = *(a3 + 16);
  if (v33)
  {
    v29 = 0;
    v13 = 0;
    v38 = *(v10 + 16);
    v39 = v10 + 16;
    v32 = a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v14 = *(v10 + 72);
    v36 = a4 + 56;
    v37 = v14;
    v15 = (v10 + 8);
    v35 = a4;
    while (1)
    {
      v34 = v13;
      v38(v40, v32 + v37 * v13, v6, v11);
      sub_100995588(&qword_1011AA8B8, &type metadata accessor for AudioVariant);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = -1 << *(a4 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = 1 << v20;
      if (((1 << v20) & *(v36 + 8 * (v20 >> 6))) == 0)
      {
        break;
      }

      v31 = v15 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v23 = ~v19;
      while (1)
      {
        (v38)(v8, *(v35 + 48) + v20 * v37, v6);
        sub_100995588(&qword_1011AA8C0, &type metadata accessor for AudioVariant);
        v24 = dispatch thunk of static Equatable.== infix(_:_:)();
        v16 = *v15;
        (*v15)(v8, v6);
        if (v24)
        {
          break;
        }

        v20 = (v20 + 1) & v23;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v36 + 8 * (v20 >> 6))) == 0)
        {
          a4 = v35;
          goto LABEL_4;
        }
      }

      result = (v16)(v40, v6);
      v26 = v30[v21];
      v30[v21] = v26 | v22;
      if ((v26 & v22) != 0)
      {
        a4 = v35;
LABEL_5:
        v17 = v34;
        goto LABEL_6;
      }

      v17 = v34;
      a4 = v35;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        return result;
      }

      ++v29;
LABEL_6:
      v13 = v17 + 1;
      if (v13 == v33)
      {
        goto LABEL_17;
      }
    }

    v16 = *v15;
LABEL_4:
    v16(v40, v6);
    goto LABEL_5;
  }

  v29 = 0;
LABEL_17:

  return sub_100A05504(v30, v28, v29, a4);
}

uint64_t _s8MusicKit12AudioVariantO0A4CoreE1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011AADA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v8 = *(v7 + 56);
  v9 = type metadata accessor for AudioVariant();
  v10 = *(v9 - 8);
  v11 = *(v10 + 16);
  v11(v6, a1, v9);
  v11(&v6[v8], a2, v9);
  v12 = *(v10 + 88);
  v13 = v12(v6, v9);
  v14 = enum case for AudioVariant.dolbyAtmos(_:);
  if (v13 == enum case for AudioVariant.dolbyAtmos(_:))
  {
    goto LABEL_2;
  }

  v16 = enum case for AudioVariant.dolbyAudio(_:);
  if (v13 == enum case for AudioVariant.dolbyAudio(_:))
  {
    if (v12(&v6[v8], v9) != v14)
    {
LABEL_2:
      (*(v10 + 8))(&v6[v8], v9);
      return 1;
    }
  }

  else if (v13 == enum case for AudioVariant.lossless(_:))
  {
    v17 = v12(&v6[v8], v9);
    if (v17 != v14 && v17 != v16 && v17 != enum case for AudioVariant.highResolutionLossless(_:))
    {
      goto LABEL_2;
    }
  }

  else if (v13 == enum case for AudioVariant.highResolutionLossless(_:))
  {
    v20 = v12(&v6[v8], v9);
    if (v20 != v14 && v20 != v16)
    {
      goto LABEL_2;
    }
  }

  else
  {
    v22 = *(v10 + 8);
    v22(&v6[v8], v9);
    v22(v6, v9);
  }

  return 0;
}

uint64_t sub_1009950E8(uint64_t a1)
{
  v2 = type metadata accessor for AudioVariant();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_100995588(&qword_1011AA8B8, &type metadata accessor for AudioVariant);
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
      v12(v5, v14, v2);
      sub_1009FFEB0(v8, v5);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_100995284(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011A8E50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1009952F4()
{
  result = qword_1011AAD28;
  if (!qword_1011AAD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AAD28);
  }

  return result;
}

unint64_t sub_1009953A4()
{
  result = qword_1011AAD38;
  if (!qword_1011AAD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AAD38);
  }

  return result;
}

uint64_t sub_1009953F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100995534();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_100A0033C(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10099546C(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1009954E0();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_100A006DC(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_1009954E0()
{
  result = qword_1011AAD88;
  if (!qword_1011AAD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AAD88);
  }

  return result;
}

unint64_t sub_100995534()
{
  result = qword_1011AAD90;
  if (!qword_1011AAD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AAD90);
  }

  return result;
}

uint64_t sub_100995588(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1009955D0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_100994B6C(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t *OS_os_log.musicBag.unsafeMutableAddressor()
{
  if (qword_1011A6930 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.musicBag;
}

uint64_t *OS_os_log.musicSignposts.unsafeMutableAddressor()
{
  if (qword_1011A6928 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.musicSignposts;
}

uint64_t sub_10099581C(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();

  return sub_1000060E4(v3, a2);
}

uint64_t sub_1009958BC(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_100006080(v3, a2);
  sub_1000060E4(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100995958@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = sub_1000060E4(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t Optional.expectNotNil(logger:file:line:function:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, unint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v7 = v6;
  v32 = a2;
  v33 = a3;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*(*(a5 + 16) - 8) + 48))(v6, 1, v14) == 1)
  {
    v29 = a1;
    v31 = a4;
    v17 = static os_log_type_t.info.getter();
    v18 = Logger.logObject.getter();
    v30 = v17;
    if (os_log_type_enabled(v18, v17))
    {
      v19 = swift_slowAlloc();
      v28 = a6;
      v20 = v19;
      v27 = swift_slowAlloc();
      v34 = v27;
      *v20 = 136315650;
      URL.init(fileURLWithPath:)();
      v21 = URL.lastPathComponent.getter();
      v23 = v22;
      (*(v13 + 8))(v16, v12);
      v24 = sub_100010678(v21, v23, &v34);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2048;
      v25 = v33;
      *(v20 + 14) = v32;
      *(v20 + 22) = 2080;
      *(v20 + 24) = sub_100010678(v25, v31, &v34);
      _os_log_impl(&_mh_execute_header, v18, v30, "Unexpectedly found nil: %s:%ld %s", v20, 0x20u);
      swift_arrayDestroy();

      a6 = v28;
    }
  }

  return (*(*(a5 - 8) + 16))(a6, v7, a5);
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
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v22 = qword_101219808;
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
    v16 = qword_1011A7128;

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

    sub_100999680(&qword_1011AADB0, &type metadata accessor for AttributedString);
    AttributedString.append<A>(_:)();
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t MPModelSong.preferredBylineAttribution(with:from:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_10010FC20(&qword_1011A7BF8);
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
        sub_100996604(&v45, v4, v10);
        if ((*v26)(v10, 1, v25) == 1)
        {
          sub_1000095E8(v10, &qword_1011A7BF8);
        }

        else
        {
          v29 = *v27;
          v30 = v41;
          (*v27)(v41, v10, v25);
          v29(v44, v30, v25);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_10089CDC0(0, v28[2] + 1, 1, v28);
          }

          v32 = v28[2];
          v31 = v28[3];
          if (v32 >= v31 >> 1)
          {
            v28 = sub_10089CDC0(v31 > 1, v32 + 1, 1, v28);
          }

          v28[2] = v32 + 1;
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

uint64_t sub_100996604@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v39 = type metadata accessor for AttributedString.FormattingOptions();
  __chkstk_darwin(v39);
  v38[1] = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_1011AADC0);
  __chkstk_darwin(v7 - 8);
  v38[0] = v38 - v8;
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v11 - 8);
  v12 = *a1;
  v13 = sub_100996B18(v12);
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
      sub_100999680(&qword_1011AADC8, &type metadata accessor for AttributedString.FormattingOptions);
      sub_10010FC20(&qword_1011AADD0);
      sub_1009996C8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      AttributedString.init(localized:options:table:bundle:locale:comment:)();
      goto LABEL_17;
    }
  }

LABEL_19:
  v37 = type metadata accessor for AttributedString();
  return (*(*(v37 - 8) + 56))(v16, 1, 1, v37);
}

id sub_100996B18(char a1)
{
  if (a1)
  {
    sub_10010FC20(&qword_1011AAC20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v2;
    sub_10010FC20(&unk_1011AAAB0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100EBC6B0;
    *(v3 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v3 + 40) = v4;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v6 = [objc_opt_self() propertySetWithProperties:isa];

    *(inited + 48) = v6;
    sub_10000C0A4(inited);
    swift_setDeallocating();
    sub_1000095E8(inited + 32, &qword_1011AAC28);
    v7 = objc_allocWithZone(MPPropertySet);
    v8.super.isa = Array._bridgeToObjectiveC()().super.isa;
    sub_10099976C();
    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v10 = [v7 initWithProperties:v8.super.isa relationships:{v9.super.isa, 1, 2}];
  }

  else
  {
    sub_10010FC20(&unk_1011AAAB0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100EBC6B0;
    *(v11 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v11 + 40) = v12;
    sub_10010FC20(&qword_1011AAC20);
    v13 = swift_initStackObject();
    *(v13 + 16) = xmmword_100EBC6B0;
    *(v13 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v13 + 40) = v14;
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100EBC6B0;
    *(v15 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v15 + 40) = v16;
    v17 = Array._bridgeToObjectiveC()().super.isa;

    v18 = [objc_opt_self() propertySetWithProperties:v17];

    *(v13 + 48) = v18;
    sub_10000C0A4(v13);
    swift_setDeallocating();
    sub_1000095E8(v13 + 32, &qword_1011AAC28);
    v19 = objc_allocWithZone(MPPropertySet);
    v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

    sub_10099976C();
    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v10 = [v19 initWithProperties:v8.super.isa relationships:{v9.super.isa, 1, 2}];
  }

  v20 = v10;

  return v20;
}

uint64_t sub_100996E70@<X0>(char *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for AttributedString();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;

  v11 = sub_100998D58(&v16);
  v12 = v16;
  __chkstk_darwin(v11);
  *(&v15 - 2) = v3;
  v13 = sub_10089993C(a2, (&v15 - 4), v12);

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

uint64_t BylineProviding.byline(with:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for AttributedString();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;

  v13 = sub_100998D58(&v18);
  v14 = v18;
  __chkstk_darwin(v13);
  *(&v17 - 4) = a2;
  *(&v17 - 3) = a3;
  *(&v17 - 2) = v4;
  v15 = sub_10089993C(sub_100998E98, (&v17 - 6), v14);

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

uint64_t sub_100997270@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributedString.FormattingOptions();
  __chkstk_darwin(v4);
  v5 = sub_10010FC20(&qword_1011AADC0);
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
        sub_100999680(&qword_1011AADC8, &type metadata accessor for AttributedString.FormattingOptions);
        sub_10010FC20(&qword_1011AADD0);
        sub_1009996C8();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        AttributedString.init(localized:options:table:bundle:locale:comment:)();
        goto LABEL_12;
      }
    }
  }

  v26 = type metadata accessor for AttributedString();
  return (*(*(v26 - 8) + 56))(a2, 1, 1, v26);
}

uint64_t sub_100997674@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v39 = type metadata accessor for AttributedString.FormattingOptions();
  __chkstk_darwin(v39);
  v40 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_1011AADC0);
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
          sub_100999680(&qword_1011AADC8, &type metadata accessor for AttributedString.FormattingOptions);
          sub_10010FC20(&qword_1011AADD0);
          sub_1009996C8();
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

uint64_t sub_100997C24@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v37 = type metadata accessor for AttributedString.FormattingOptions();
  __chkstk_darwin(v37);
  v38 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&qword_1011AADC0);
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
          sub_100999680(&qword_1011AADC8, &type metadata accessor for AttributedString.FormattingOptions);
          sub_10010FC20(&qword_1011AADD0);
          sub_1009996C8();
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

uint64_t sub_1009981BC@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X2>, uint64_t (**a3)(uint64_t, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v36 = a4;
  v7 = type metadata accessor for AttributedString.FormattingOptions();
  __chkstk_darwin(v7);
  v35 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&qword_1011AADC0);
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
        sub_100999680(&qword_1011AADC8, &type metadata accessor for AttributedString.FormattingOptions);
        sub_10010FC20(&qword_1011AADD0);
        sub_1009996C8();
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
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Song();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2, v8);
  if ((*(v3 + 88))(v5, v2) == enum case for Track.song(_:))
  {
    (*(v3 + 96))(v5, v2);
    (*(v7 + 32))(v10, v5, v6);
    v11 = Song.composerName.getter();
    (*(v7 + 8))(v10, v6);
    return v11;
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    return 0;
  }
}

uint64_t sub_1009988A4(uint64_t a1)
{
  v3 = v1;
  v4 = *(a1 - 8);
  __chkstk_darwin(a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Song();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v3, a1, v9);
  if ((*(v4 + 88))(v6, a1) == enum case for Track.song(_:))
  {
    (*(v4 + 96))(v6, a1);
    (*(v8 + 32))(v11, v6, v7);
    v12 = Song.composerName.getter();
    (*(v8 + 8))(v11, v7);
    return v12;
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

Swift::Int sub_100998D58(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100AA503C(v2);
  }

  v3 = *(v2 + 2);
  v17[0] = (v2 + 32);
  v17[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
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
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
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
    sub_100998F1C(v15, v16, v17, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

unint64_t sub_100998EB8()
{
  result = qword_1011AADB8;
  if (!qword_1011AADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AADB8);
  }

  return result;
}

uint64_t sub_100998F1C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
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
      result = sub_100AA5014(v9);
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
        sub_10099945C((*a3 + *v77), (*a3 + *v79), *a3 + v80, v83);
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
      result = sub_10089C854(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v29 = *(v9 + 2);
    v28 = *(v9 + 3);
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      result = sub_10089C854((v28 > 1), v29 + 1, 1, v9);
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
        sub_10099945C((*a3 + v72), (*a3 + *&v9[16 * v33 + 32]), *a3 + v73, v32);
        if (v4)
        {
        }

        if (v73 < v72)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100AA5014(v9);
        }

        if (v71 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v74 = &v9[16 * v71];
        *(v74 + 4) = v72;
        *(v74 + 5) = v73;
        result = sub_100AA4F88(v33);
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

uint64_t sub_10099945C(_BYTE *__dst, _BYTE *__src, unint64_t a3, _BYTE *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= (a3 - __src))
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v15 = v6 - 1;
        --v5;
        while (1)
        {
          v16 = v5 + 1;
          if (*v15 == 1 && *(v10 - 1) == 0)
          {
            break;
          }

          v18 = v10 - 1;
          if (v16 < v10 || v5 >= v10)
          {
            *v5 = *v18;
          }

          --v5;
          --v10;
          if (v18 <= v4)
          {
            v10 = v18;
            goto LABEL_46;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = *v15;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v15 > v7);
      v6 = v15;
      if (v15 == v4)
      {
        goto LABEL_47;
      }

      goto LABEL_48;
    }

LABEL_46:
    if (v6 != v4)
    {
LABEL_48:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        if (*v4 == 1 && *v6 == 0)
        {
          v14 = v6 + 1;
          v13 = v6;
          if (v7 >= v6 && v7 < v14)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v12 = v4 + 1;
          v13 = v4;
          v14 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v12)
            {
              goto LABEL_19;
            }
          }
        }

        *v7 = *v13;
LABEL_19:
        ++v7;
        if (v4 < v10)
        {
          v6 = v14;
          if (v14 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_48;
    }
  }

LABEL_47:
  if (v6 >= v10)
  {
    goto LABEL_48;
  }

  return 1;
}

uint64_t sub_100999680(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1009996C8()
{
  result = qword_1011AADD8;
  if (!qword_1011AADD8)
  {
    sub_1001109D0(&qword_1011AADD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AADD8);
  }

  return result;
}

unint64_t sub_10099976C()
{
  result = qword_1011AC8D0;
  if (!qword_1011AC8D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011AC8D0);
  }

  return result;
}

void DefaultStringInterpolation.appendInterpolation(describing:default:)(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100018A30(a1, &v6);
  if (v7)
  {
    sub_100016270(&v6, v8);
    _print_unlocked<A, B>(_:_:)();
    sub_10000959C(v8);
  }

  else
  {
    sub_100011E58(&v6);
    v5._countAndFlagsBits = a2;
    v5._object = a3;
    String.append(_:)(v5);
  }
}

uint64_t sub_100999854()
{
  if (qword_1011A6958 != -1)
  {
    swift_once();
  }

  static BackgroundMaterial.defaultValue = static BackgroundMaterial.supportedMaterials;
}

uint64_t *BackgroundMaterial.supportedMaterials.unsafeMutableAddressor()
{
  if (qword_1011A6958 != -1)
  {
    swift_once();
  }

  return &static BackgroundMaterial.supportedMaterials;
}

uint64_t *BackgroundMaterial.defaultValue.unsafeMutableAddressor()
{
  if (qword_1011A6950 != -1)
  {
    swift_once();
  }

  return &static BackgroundMaterial.defaultValue;
}

uint64_t sub_10099997C()
{
  sub_100899F80(0, 1, 1);
  v1 = _swiftEmptyArrayStorage[2];
  v0 = _swiftEmptyArrayStorage[3];
  v2 = v0 >> 1;
  v3 = v1 + 1;
  if (v0 >> 1 <= v1)
  {
    sub_100899F80((v0 > 1), v1 + 1, 1);
    v0 = _swiftEmptyArrayStorage[3];
    v2 = v0 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v3;
  *(&_swiftEmptyArrayStorage[4] + v1) = 0;
  v4 = v1 + 2;
  if (v2 < v4)
  {
    sub_100899F80((v0 > 1), v4, 1);
  }

  _swiftEmptyArrayStorage[2] = v4;
  *(&_swiftEmptyArrayStorage[4] + v3) = 1;
  v5 = sub_1009953F8(_swiftEmptyArrayStorage);

  static BackgroundMaterial.supportedMaterials = v5;
  return result;
}

uint64_t sub_100999A9C(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_100999AFC@<X0>(void *a1@<X8>)
{
  if (qword_1011A6950 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static BackgroundMaterial.defaultValue;
}

uint64_t UITraitCollection.supportedMaterials.getter()
{
  sub_100999BB8();
  UITraitCollection.subscript.getter();
  return v1;
}

unint64_t sub_100999BB8()
{
  result = qword_1011AADE0;
  if (!qword_1011AADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AADE0);
  }

  return result;
}

uint64_t UIMutableTraits.supportedMaterials.getter()
{
  sub_100999BB8();
  dispatch thunk of UIMutableTraits.subscript.getter();
  return v1;
}

void (*UIMutableTraits.supportedMaterials.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  sub_100999BB8();
  dispatch thunk of UIMutableTraits.subscript.getter();
  return sub_100999D6C;
}

void sub_100999D6C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  if (a2)
  {

    sub_100999BB8();
    dispatch thunk of UIMutableTraits.subscript.setter();
  }

  else
  {
    *v2 = v3;
    sub_100999BB8();
    dispatch thunk of UIMutableTraits.subscript.setter();
  }

  free(v2);
}

unint64_t sub_100999E20()
{
  result = qword_1011AADE8;
  if (!qword_1011AADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AADE8);
  }

  return result;
}

unint64_t sub_100999E78()
{
  result = qword_1011AADF0;
  if (!qword_1011AADF0)
  {
    sub_1001109D0(&qword_1011AADF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AADF0);
  }

  return result;
}

unint64_t sub_100999EEC(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v8 = *(a2 + 8 * v7 + 32);
    }

    v9 = v8;
    sub_100009F78(0, a3);
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_100999FF4(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = a2 + 32;
  while (1)
  {
    v6 = 0xD000000000000029;
    v7 = "nt";
    switch(*(v5 + v4))
    {
      case 1:
        v6 = 0xD000000000000025;
        v7 = "LibraryView.RecentlyAdded";
        break;
      case 2:
        v6 = 0xD000000000000023;
        v7 = "LibraryView.Playlists";
        break;
      case 3:
        v6 = 0xD000000000000022;
        v7 = "LibraryView.Artists";
        break;
      case 4:
        v6 = 0xD000000000000021;
        v7 = "LibraryView.Albums";
        break;
      case 5:
        v6 = 0xD000000000000026;
        v7 = "LibraryView.Songs";
        break;
      case 6:
        v6 = 0xD000000000000027;
        v7 = "LibraryView.MadeForYou";
        break;
      case 7:
        v6 = 0xD000000000000022;
        v7 = "LibraryView.MusicVideos";
        break;
      case 8:
        v6 = 0xD000000000000028;
        v7 = "LibraryView.Genres";
        break;
      case 9:
        v6 = 0xD000000000000025;
        v7 = "LibraryView.Compilations";
        break;
      case 0xA:
        v6 = 0xD000000000000021;
        v7 = "LibraryView.Composers";
        break;
      case 0xB:
        v6 = 0xD000000000000026;
        v7 = "LibraryView.Shows";
        break;
      case 0xC:
        v6 = 0xD000000000000027;
        v7 = "LibraryView.Downloaded";
        break;
      default:
        break;
    }

    v8 = v7 | 0x8000000000000000;
    v9 = 0xD000000000000029;
    v10 = "nt";
    switch(a1)
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
      case 10:
        v9 = 0xD000000000000021;
        v10 = "LibraryView.Composers";
        break;
      case 11:
        v9 = 0xD000000000000026;
        v10 = "LibraryView.Shows";
        break;
      case 12:
        v9 = 0xD000000000000027;
        v10 = "LibraryView.Downloaded";
        break;
      default:
        break;
    }

    if (v6 == v9 && v8 == (v10 | 0x8000000000000000))
    {
      break;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
      return v4;
    }

    if (v2 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_10099A308()
{
  result = swift_slowAlloc();
  qword_1011AAE08 = result;
  return result;
}

uint64_t sub_10099A330()
{
  result = swift_slowAlloc();
  qword_1011AAE10 = result;
  return result;
}

uint64_t sub_10099A358()
{
  result = swift_slowAlloc();
  qword_1011AAE18 = result;
  return result;
}

id sub_10099A3B0()
{
  v2.receiver = v0;
  v2.super_class = _s27WeakViewControllerReferenceCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void UIViewController.playActivityFeatureNameSourceViewController.setter(void *a1)
{
  sub_10099C698(a1, &qword_1011A6968, &qword_1011AAE08);
}

id sub_10099A57C(void *a1, const void **a2)
{
  if (*a1 != -1)
  {
    v5 = a2;
    swift_once();
    a2 = v5;
  }

  if (objc_getAssociatedObject(v2, *a2))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (!*(&v8 + 1))
  {
    sub_100011E58(v9);
    return [v2 parentViewController];
  }

  _s27WeakViewControllerReferenceCMa();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return [v2 parentViewController];
  }

  Strong = swift_unknownObjectWeakLoadStrong();

  result = Strong;
  if (!Strong)
  {
    return [v2 parentViewController];
  }

  return result;
}

void UIViewController.playActivityRecommendationDataSourceViewController.setter(void *a1)
{
  sub_10099C698(a1, &qword_1011A6970, &qword_1011AAE10);
}

void (*UIViewController.playActivityRecommendationDataSourceViewController.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = UIViewController.playActivityRecommendationDataSourceViewController.getter();
  return sub_10099A724;
}

void sub_10099A724(id *a1, char a2)
{
  value = *a1;
  if (a2)
  {
    v2 = value;
    sub_10099C698(value, &qword_1011A6970, &qword_1011AAE10);

    v3 = v2;
  }

  else
  {
    sub_10099C698(*a1, &qword_1011A6970, &qword_1011AAE10);
    v3 = value;
  }
}

uint64_t UIViewController.playActivityForwardedRecommendationData.getter()
{
  if (qword_1011A6978 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_1011AAE18))
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
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100011E58(v5);
    return 0;
  }
}

uint64_t UIViewController.playActivityForwardedRecommendationData.setter(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_1011A6978 != -1)
  {
    swift_once();
  }

  v6 = qword_1011AAE18;
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    sub_10002BC44(a1, a2);
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100029CA4(a1, a2);
  }

  objc_setAssociatedObject(v3, v6, isa, 3);

  return sub_100029CA4(a1, a2);
}

uint64_t UIViewController.inheritedPlayActivityRecommendationData(shouldIncludeForwardedRecommendationData:)(char a1)
{
  v3 = [v1 playActivityRecommendationData];
  if (!v3 && ((a1 & 1) == 0 || (v3 = [v1 playActivityForwardedRecommendationData]) == 0))
  {
    v9 = UIViewController.playActivityRecommendationDataSourceViewController.getter();
    v5 = 0;
    if (v9)
    {
      goto LABEL_8;
    }

    return v5;
  }

  v4 = v3;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = UIViewController.playActivityRecommendationDataSourceViewController.getter();
  v9 = v8;
  if (v7 >> 60 != 15)
  {
    goto LABEL_28;
  }

  if (v8)
  {
    while (1)
    {
LABEL_8:
      v10 = [v9 playActivityRecommendationData];
      if (v10 || (a1 & 1) != 0 && (v10 = [v9 playActivityForwardedRecommendationData]) != 0)
      {
        v11 = v10;
        v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;
      }

      else
      {
        v5 = 0;
        v13 = 0xF000000000000000;
      }

      if (qword_1011A6970 != -1)
      {
        swift_once();
      }

      if (objc_getAssociatedObject(v9, qword_1011AAE10))
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0u;
        v19 = 0u;
      }

      v20[0] = v18;
      v20[1] = v19;
      if (!*(&v19 + 1))
      {
        break;
      }

      _s27WeakViewControllerReferenceCMa();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_23;
      }

      v16 = v13;
      Strong = swift_unknownObjectWeakLoadStrong();

      if (!Strong)
      {
        goto LABEL_23;
      }

LABEL_24:

      if (v13 >> 60 != 15)
      {
        v9 = Strong;
LABEL_28:

        return v5;
      }

      v9 = Strong;
      if (!Strong)
      {
        return v5;
      }
    }

    sub_100011E58(v20);
LABEL_23:
    Strong = [v9 parentViewController];
    goto LABEL_24;
  }

  return v5;
}

uint64_t UIViewController.playActivityFeatureIdentifier.getter()
{
  v1 = [v0 playActivityFeatureName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  return _s9MusicCore29PlayActivityFeatureIdentifierO8rawValueACSgSS_tcfC_0();
}

void (*UIViewController.playActivityFeatureIdentifier.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = [v1 playActivityFeatureName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  *(a1 + 8) = _s9MusicCore29PlayActivityFeatureIdentifierO8rawValueACSgSS_tcfC_0();
  return sub_10099AEB8;
}

void sub_10099AEB8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 != 20)
  {
    PlayActivityFeatureIdentifier.rawValue.getter(v2);
  }

  v3 = *a1;
  v4 = String._bridgeToObjectiveC()();

  [v3 setPlayActivityFeatureName:v4];
}

uint64_t UIViewController.playActivityFeatureNames(sourceChildViewController:)()
{
  sub_10010FC20(&unk_1011AAAB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100EBC6B0;
  v2 = [v0 playActivityFeatureName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  *(v1 + 32) = v3;
  *(v1 + 40) = v5;
  return v1;
}

uint64_t UIViewController.completePlayActivityFeatureNames.getter()
{
  result = v0;
  v2 = 0;
  do
  {
    v3 = result;
    v4 = [result playActivityFeatureNamesWithSourceChildViewController:v2];
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1008A65D4(v5);
    result = [v3 playActivityFeatureNameSourceViewController];
    v2 = v3;
  }

  while (result);
  v6 = 0;
  v7 = _swiftEmptyArrayStorage[2];
LABEL_4:
  v8 = &_swiftEmptyArrayStorage[2 * v6 + 5];
  while (1)
  {
    if (v7 == v6)
    {

      v15 = sub_10099B298(_swiftEmptyArrayStorage);

      return v15;
    }

    if (v6 >= _swiftEmptyArrayStorage[2])
    {
      break;
    }

    ++v6;
    v10 = *(v8 - 1);
    v9 = *v8;
    v8 += 2;
    v11 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v11 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100015C24(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        result = sub_100015C24((v12 > 1), v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[2 * v13];
      v14[4] = v10;
      v14[5] = v9;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10099B298(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = 0;
  v5 = v2 >> 1;
  v6 = v2 - 1;
  for (i = 16 * v2 + 24; ; i -= 16)
  {
    if (v4 == v6)
    {
      goto LABEL_5;
    }

    v9 = *(v1 + 2);
    if (v4 >= v9)
    {
      break;
    }

    if (v6 >= v9)
    {
      goto LABEL_14;
    }

    v11 = *&v1[v3 + 32];
    v10 = *&v1[v3 + 40];
    v13 = *&v1[i - 8];
    v12 = *&v1[i];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1008BC0CC(v1);
    }

    v14 = &v1[v3];
    *(v14 + 4) = v13;
    *(v14 + 5) = v12;

    if (v6 >= *(v1 + 2))
    {
      goto LABEL_15;
    }

    v8 = &v1[i];
    *(v8 - 1) = v11;
    *v8 = v10;

LABEL_5:
    ++v4;
    --v6;
    v3 += 16;
    if (v5 == v4)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t UIViewController.combinedPlayActivityFeatureName.getter()
{
  v1 = [v0 completePlayActivityFeatureNames];
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10010FC20(&unk_1011A9FA0);
  sub_10099C774();
  sub_10000988C();
  v2 = Sequence<>.joined(separator:)();

  return v2;
}

uint64_t Collection<>.playActivityFeatureJoined()()
{
  sub_10000988C();

  return Sequence<>.joined(separator:)();
}

uint64_t UIViewController.playActivityInformation.getter()
{
  v1 = [v0 combinedPlayActivityFeatureName];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = UIViewController.inheritedPlayActivityRecommendationData(shouldIncludeForwardedRecommendationData:)(1);
  v5 = v4;
  sub_100029CA4(0, 0xF000000000000000);

  sub_10002D6A4(v3, v5);

  sub_100029CA4(v3, v5);
  return v2;
}

uint64_t UINavigationController.playActivityFeatureNames(sourceChildViewController:)(void *a1)
{
  v5 = [i viewControllers];
  v6 = sub_100009F78(0, &qword_1011AAE30);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!a1)
  {
    goto LABEL_25;
  }

  v8 = a1;
  v9 = sub_100999EEC(v8, v7, &qword_1011AAE30);
  if ((v11 & 1) == 0)
  {
    v12 = v9;
    if (v9 < 0)
    {
      goto LABEL_53;
    }

    v10 = v7 & 0xFFFFFFFFFFFFFF8;
    v3 = v7 >> 62;
    if (v7 >> 62)
    {
LABEL_54:
      if ((v7 & 0x8000000000000000) != 0)
      {
        v2 = v7;
      }

      else
      {
        v2 = v10;
      }

      result = _CocoaArrayWrapper.endIndex.getter();
      if (result < 0)
      {
        __break(1u);
        return result;
      }

      if (_CocoaArrayWrapper.endIndex.getter() >= v12)
      {
LABEL_6:
        if ((v7 & 0xC000000000000001) != 0)
        {

          if (v12)
          {
            v13 = 0;
            do
            {
              v14 = v13 + 1;
              _ArrayBuffer._typeCheckSlowPath(_:)(v13);
              v13 = v14;
            }

            while (v12 != v14);
          }
        }

        else
        {
        }

        if (v3)
        {
          v6 = _CocoaArrayWrapper.subscript.getter();
          v3 = v15;
          v2 = v16;
          v12 = v17;

          if (v12)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v2 = 0;
          v6 = v7 & 0xFFFFFFFFFFFFFF8;
          v3 = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
          v12 = (2 * v12) | 1;
          if (v12)
          {
LABEL_18:
            type metadata accessor for __ContiguousArrayStorageBase();
            swift_unknownObjectRetain_n();
            v19 = swift_dynamicCastClass();
            if (!v19)
            {
              swift_unknownObjectRelease();
              v19 = _swiftEmptyArrayStorage;
            }

            v20 = v19[2];

            if (!__OFSUB__(v12 >> 1, v2))
            {
              if (v20 == (v12 >> 1) - v2)
              {
                v7 = swift_dynamicCastClass();

                swift_unknownObjectRelease();
                if (!v7)
                {
                  swift_unknownObjectRelease();
                  v7 = _swiftEmptyArrayStorage;
                }

                swift_unknownObjectRelease();
                goto LABEL_25;
              }

              goto LABEL_61;
            }

LABEL_60:
            __break(1u);
LABEL_61:
            swift_unknownObjectRelease_n();
          }
        }

        sub_10099C188(v6, v3, v2, v12);
        v7 = v18;
        swift_unknownObjectRelease();
        goto LABEL_17;
      }
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v9)
    {
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_60;
  }

LABEL_17:

LABEL_25:
  sub_10010FC20(&unk_1011AAAB0);
  v8 = swift_allocObject();
  *(v8 + 1) = xmmword_100EBC6B0;
  v21 = [i playActivityFeatureName];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v22;

  v8[4] = v6;
  v8[5] = v12;
  if (v7 >> 62)
  {
    goto LABEL_50;
  }

  v10 = v7 & 0xFFFFFFFFFFFFFF8;
  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    if (i < 1)
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v6 = 0;
    v12 = &type metadata for String;
    while (1)
    {
      v23 = (v7 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v7 + 8 * v6 + 32);
      v24 = v23;
      v25 = [v23 playActivityFeatureNamesWithSourceChildViewController:0];
      v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v3 = *(v26 + 16);
      v27 = v8[2];
      v28 = v27 + v3;
      if (__OFADD__(v27, v3))
      {
        break;
      }

      v29 = v8[3] >> 1;
      if (v29 < v28)
      {
        if (v27 <= v28)
        {
          v33 = v27 + v3;
        }

        else
        {
          v33 = v8[2];
        }

        v8 = sub_10089C4F8(1, v33, 1, v8);
        v27 = v8[2];
        v29 = v8[3] >> 1;
        if (*(v26 + 16))
        {
LABEL_37:
          if ((v29 - v27) < v3)
          {
            goto LABEL_48;
          }

          swift_arrayInitWithCopy();

          if (v3)
          {
            v30 = v8[2];
            v31 = __OFADD__(v30, v3);
            v32 = v30 + v3;
            if (v31)
            {
              goto LABEL_49;
            }

            v8[2] = v32;
          }

          goto LABEL_30;
        }
      }

      else if (v3)
      {
        goto LABEL_37;
      }

      if (v3)
      {
        goto LABEL_47;
      }

LABEL_30:
      ++v6;

      if (i == v6)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    ;
  }

LABEL_51:

  return v8;
}

uint64_t UITab.path.getter()
{
  sub_10010FC20(&qword_1011AA660);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100EBC6C0;
  *(v1 + 32) = v0;
  v2 = v0;
  for (i = [v2 parent]; ; i = objc_msgSend(v2, "parent"))
  {
    v4 = i;

    if (!v4)
    {
      return v1;
    }

    v5 = v1 >> 62;
    if (!(v1 >> 62))
    {
      v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_18;
      }

      goto LABEL_8;
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result < 0)
    {
      break;
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result < 0)
    {
      goto LABEL_21;
    }

    v9 = _CocoaArrayWrapper.endIndex.getter();
    v7 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
LABEL_18:
      __break(1u);
      return v1;
    }

LABEL_8:
    v2 = v4;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v5)
      {
LABEL_2:
        _CocoaArrayWrapper.endIndex.getter();
      }

LABEL_3:
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      goto LABEL_4;
    }

    if (v5)
    {
      goto LABEL_2;
    }

    if (v7 > *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_3;
    }

LABEL_4:
    sub_10099C7D8(0, 0, 1, v2);
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

id sub_10099BD34(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

uint64_t _sSo16UIViewControllerC9MusicCoreE23playActivityFeatureNameSSvg_0()
{
  if (qword_1011A6960 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_1011AAE00))
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
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_100011E58(v5);
  }

  return 0;
}

void _sSo16UIViewControllerC9MusicCoreE23playActivityFeatureNameSSvs_0()
{
  if (qword_1011A6960 != -1)
  {
    swift_once();
  }

  v1 = qword_1011AAE00;
  value = String._bridgeToObjectiveC()();

  objc_setAssociatedObject(v0, v1, value, 3);
}

uint64_t UITab.combinedPlayActivityFeatureName.getter()
{
  UITab.playActivityFeatureNames.getter();
  sub_10010FC20(&unk_1011A9FA0);
  sub_10099C774();
  sub_10000988C();
  v0 = Sequence<>.joined(separator:)();

  return v0;
}

char *UITab.playActivityFeatureNames.getter()
{
  v0 = UITab.path.getter();
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (!(v0 >> 62))
  {
    v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_24:
    v5 = _swiftEmptyArrayStorage;
    goto LABEL_25;
  }

LABEL_23:
  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_24;
  }

LABEL_3:
  v4 = 0;
  v5 = _swiftEmptyArrayStorage;
  do
  {
    v20 = v5;
    v6 = v4;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_22;
        }

        v7 = *(v1 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v9 = [v7 playActivityFeatureName];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v13 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        v5 = v20;
        goto LABEL_25;
      }
    }

    v14 = v20;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_10089C4F8(0, *(v20 + 2) + 1, 1, v20);
    }

    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    v17 = v14;
    if (v16 >= v15 >> 1)
    {
      v17 = sub_10089C4F8((v15 > 1), v16 + 1, 1, v14);
    }

    *(v17 + 2) = v16 + 1;
    v5 = v17;
    v18 = &v17[16 * v16];
    *(v18 + 4) = v10;
    *(v18 + 5) = v12;
  }

  while (v4 != v3);
LABEL_25:

  return v5;
}

void sub_10099C188(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_100009F78(0, &qword_1011AAE30);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_10010FC20(&qword_1011AA660);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

char *sub_10099C27C(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_10099C320(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_10099C404(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  type metadata accessor for ICURLBagKey(0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_10099C4C8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  sub_10010FC20(&qword_1011A7C60);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_10099C598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for BagProvider.Observer();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_10099C698(id value, void *a2, const void **a3)
{
  v6 = value;
  if (value)
  {
    v7 = _s27WeakViewControllerReferenceCMa();
    v8 = objc_allocWithZone(v7);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v9.receiver = v8;
    v9.super_class = v7;
    v6 = objc_msgSendSuper2(&v9, "init");
  }

  if (*a2 != -1)
  {
    swift_once();
  }

  objc_setAssociatedObject(v3, *a3, v6, 1);
}

unint64_t sub_10099C774()
{
  result = qword_1011AAE28;
  if (!qword_1011AAE28)
  {
    sub_1001109D0(&unk_1011A9FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AAE28);
  }

  return result;
}

char *sub_10099C7D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_100009F78(0, &qword_1011AAE60);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_10099C904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_100009F78(0, &qword_1011AAE60);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t _sSo18UITabBarControllerC9MusicCoreE24playActivityFeatureNames015sourceChildViewC0SaySSGSo06UIViewC0CSg_tF_0()
{
  v3 = v0;
  v4 = [v0 selectedTab];
  if (!v4)
  {
    sub_10010FC20(&unk_1011AAAB0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_100EBC6B0;
    v18 = [v0 playActivityFeatureName];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    result = v17;
    *(v17 + 32) = v19;
    *(v17 + 40) = v21;
    return result;
  }

  v5 = v4;
  v6 = [v4 managingTabGroup];
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = v6;
  v8 = [v6 managingNavigationController];
  if (!v8)
  {

LABEL_14:
    sub_10010FC20(&unk_1011AAAB0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100EBC6B0;
    v23 = [v3 playActivityFeatureName];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    *(v22 + 32) = v24;
    *(v22 + 40) = v26;

    return v22;
  }

  v9 = v8;
  v10 = UITab.path.getter();
  v48 = v10;
  v11 = [v9 viewControllers];
  sub_100009F78(0, &qword_1011AAE30);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v12 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v47 = v9;
    if (result)
    {
LABEL_6:
      if ((v12 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v14 = *(v12 + 32);
      }

      v1 = v14;

      v15 = [v1 tab];
      if (!v15)
      {

        goto LABEL_21;
      }

      v2 = v15;
      result = sub_100999EEC(v15, v10, &qword_1011AAE60);
      if (v16)
      {

        goto LABEL_21;
      }

      if (v10 >> 62)
      {
        goto LABEL_38;
      }

      v27 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v27 >= result)
      {
        goto LABEL_18;
      }

LABEL_39:
      __break(1u);
      return result;
    }
  }

  else
  {
    result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v47 = v9;
    if (result)
    {
      goto LABEL_6;
    }
  }

  while (1)
  {
LABEL_21:
    sub_10010FC20(&unk_1011AAAB0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_100EBC6B0;
    v28 = [v3 playActivityFeatureName];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    *(v1 + 32) = v29;
    *(v1 + 40) = v31;
    v46 = v1;
    if (v10 >> 62)
    {
      v3 = _CocoaArrayWrapper.endIndex.getter();
      if (!v3)
      {
LABEL_33:

        goto LABEL_34;
      }
    }

    else
    {
      v3 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v3)
      {
        goto LABEL_33;
      }
    }

    v44 = v7;
    v45 = v5;
    result = sub_100015C24(0, v3 & ~(v3 >> 63), 0);
    if ((v3 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    v42 = v7;
    v43 = result;
    v27 = _CocoaArrayWrapper.endIndex.getter();
    result = v43;
    v7 = v42;
    if (v27 < result)
    {
      goto LABEL_39;
    }

LABEL_18:
    sub_1008BDEE0(result, v27);

    v10 = v48;
  }

  v32 = 0;
  do
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v33 = *(v10 + 8 * v32 + 32);
    }

    v34 = v33;
    v35 = [v33 playActivityFeatureName];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v40 = _swiftEmptyArrayStorage[2];
    v39 = _swiftEmptyArrayStorage[3];
    if (v40 >= v39 >> 1)
    {
      sub_100015C24((v39 > 1), v40 + 1, 1);
    }

    ++v32;
    _swiftEmptyArrayStorage[2] = v40 + 1;
    v41 = &_swiftEmptyArrayStorage[2 * v40];
    v41[4] = v36;
    v41[5] = v38;
  }

  while (v3 != v32);

  v7 = v44;
  v5 = v45;
LABEL_34:
  sub_1008A6344(_swiftEmptyArrayStorage);

  return v46;
}

unint64_t sub_10099CEBC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_10099CF7C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 16 * result + 16 * a3;
  v10 = (v6 + 32 + 16 * a2);
  if (result != v10 || result >= v10 + 16 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 16 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t *NSUserDefaults.mobileiPod.unsafeMutableAddressor()
{
  if (qword_1011A6980 != -1)
  {
    swift_once();
  }

  return &static NSUserDefaults.mobileiPod;
}

Swift::Bool __swiftcall NSUserDefaults.BOOL(forKey:withDefault:)(Swift::String forKey, Swift::Bool withDefault)
{
  v4 = forKey;
  sub_10000988C();

  NSUserDefaults.subscript.getter(&v4, &v5);

  if (v6)
  {
    if (swift_dynamicCast())
    {
      return v4._countAndFlagsBits;
    }
  }

  else
  {
    sub_100011E58(&v5);
  }

  return withDefault;
}

uint64_t static NSUserDefaults.mobileiPod.getter()
{
  if (qword_1011A6980 != -1)
  {
    swift_once();
  }

  v0 = static NSUserDefaults.mobileiPod;
  v1 = static NSUserDefaults.mobileiPod;
  return v0;
}

BOOL NSUserDefaults.MobileiPod.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C7B28, v2);

  return v3 != 0;
}

Swift::Int sub_10099D250()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10099D2C4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void (*NSUserDefaults.hasUserRequestedSubscriptionHidden.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_100011A14();
  *(v4 + 48) = sub_10000988C();
  NSUserDefaults.subscript.getter(v4);
  if (!*(v4 + 24))
  {
    sub_100011E58(v4);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v5 = *(v4 + 57);
LABEL_9:
  *(v4 + 56) = v5;
  return sub_10099D408;
}

uint64_t sub_10099D434(void (*a1)(void))
{
  a1();
  sub_10000988C();
  NSUserDefaults.subscript.getter(&v3);
  if (v4)
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v2;
    }
  }

  else
  {
    sub_100011E58(&v3);
    return 0;
  }

  return result;
}

unint64_t sub_10099D4CC()
{
  result = qword_1011AAE68;
  if (!qword_1011AAE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AAE68);
  }

  return result;
}

uint64_t sub_10099D540(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v7 = &type metadata for Bool;
  v6[0] = a1;
  a2(a1);
  sub_10000988C();
  return NSUserDefaults.subscript.setter(v6, v4, a3);
}

void (*NSUserDefaults.hasSeenDownloadPinsAlert.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_10099D4CC();
  *(v4 + 48) = sub_10000988C();
  NSUserDefaults.subscript.getter(v4);
  if (!*(v4 + 24))
  {
    sub_100011E58(v4);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v5 = *(v4 + 57);
LABEL_9:
  *(v4 + 56) = v5;
  return sub_10099D688;
}

void sub_10099D694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 56);
  v6 = &type metadata for Bool;
  v5[0] = v4;
  NSUserDefaults.subscript.setter(v5, a2, a3);

  free(v3);
}

Swift::Int sub_10099D6F4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10099D768()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10099D7C8@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, BOOL *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  *a3 = v4 != 0;
  return result;
}

id MPPlaybackUserDefaults.transitionStyleForCatalogPlayback.getter()
{
  if (qword_1011A6820 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10[4] = v6;
  v10[5] = v7;
  v10[6] = v8;
  v10[7] = v9;
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  sub_100014984(v10);
  return [v0 transitionStyleForUserWithCatalogPlaybackCapability:BYTE8(v10[0]) & 1];
}

unint64_t sub_10099D928()
{
  result = qword_1011AAE70;
  if (!qword_1011AAE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AAE70);
  }

  return result;
}

unint64_t sub_10099D9A0()
{
  result = qword_1011AAE78;
  if (!qword_1011AAE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AAE78);
  }

  return result;
}

id static ICUserIdentity.active.getter()
{
  v0 = [swift_getObjCClassFromMetadata() activeAccount];

  return v0;
}

uint64_t static ICMusicKitRequestContext.music.getter()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4[4] = sub_10099E7A8;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_10006BD7C;
  v4[3] = &unk_1010D4970;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithBlock:v1];
  _Block_release(v1);

  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
    return v2;
  }

  __break(1u);
  return result;
}

id static ICURLSessionManager.musicSession.getter()
{
  v0 = [objc_opt_self() highPrioritySession];

  return v0;
}

uint64_t *ICClientInfo.music.unsafeMutableAddressor()
{
  if (qword_1011A6988 != -1)
  {
    swift_once();
  }

  return &static ICClientInfo.music;
}

void sub_10099DBAC(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    v5 = String._bridgeToObjectiveC()();
    v6 = String._bridgeToObjectiveC()();
    v7 = [objc_opt_self() clientInfoForMusicKitRequestWithClientIdentifier:v5 clientVersion:v6];

    [v3 setClientInfo:v7];
    v8 = objc_opt_self();
    v9 = v4;
    v10 = [v8 defaultIdentityStore];
    [v3 setIdentityStore:v10];

    v11 = [objc_opt_self() activeAccount];
    [v3 setIdentity:v11];
  }
}

uint64_t static ICStoreRequestContext.default(withConfigurationBlock:)(uint64_t a1, uint64_t a2)
{
  v7[2] = a1;
  v7[3] = a2;
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10099E7AC;
  *(v3 + 24) = v7;
  aBlock[4] = sub_1002CF914;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10006BD7C;
  aBlock[3] = &unk_1010D49C0;
  v4 = _Block_copy(aBlock);

  v5 = [v2 initWithBlock:v4];
  _Block_release(v4);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if ((v4 & 1) == 0)
  {
    return v5;
  }

  __break(1u);
  return result;
}

void sub_10099DE9C(void *a1, void (*a2)(void *))
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = objc_opt_self();
    v9 = a1;
    v7 = [v6 defaultIdentityStore];
    [v5 setIdentityStore:v7];

    v8 = [objc_opt_self() activeAccount];
    [v5 setIdentity:v8];

    a2(v5);
  }
}

id static ICStoreRequestContext.current.getter()
{
  v0 = [objc_opt_self() activeAccount];
  v1 = [objc_allocWithZone(ICStoreRequestContext) initWithIdentity:v0];

  return v1;
}

uint64_t static ICStoreRequestContext.storeFlow.getter()
{
  v0 = objc_allocWithZone(ICStoreRequestContext);
  v4[4] = sub_10006BF5C;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_10006BD7C;
  v4[3] = &unk_1010D49E8;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithBlock:v1];
  _Block_release(v1);

  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t *ICClientInfo.storeFlow.unsafeMutableAddressor()
{
  if (qword_1011A6990 != -1)
  {
    swift_once();
  }

  return &static ICClientInfo.storeFlow;
}

double ICURLBag.subscript.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 valueForBagKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

_OWORD *ICURLBag.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v4;
  v6 = v3;
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v14 = &v41 - v13;
  v15 = a1[2];
  if (!v15)
  {
    sub_10099E7B4();
    swift_allocError();
    *v34 = 0u;
    *(v34 + 16) = 0u;
    *(v34 + 32) = 0;
    *(v34 + 40) = 2;
    return swift_willThrow();
  }

  v47 = v12;
  v16 = a1[4];

  v17 = v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = a1;
  if (!isUniquelyReferenced_nonNull_native || (v15 - 1) > a1[3] >> 1)
  {
    a1 = sub_10089C9A8(isUniquelyReferenced_nonNull_native, v15, 1, a1);
    v53 = a1;
  }

  sub_10099C404(0, 1, 0);
  if (![v6 valueForBagKey:v17])
  {

    sub_10099E7B4();
    swift_allocError();
    *v35 = v17;
    *(v35 + 40) = 0;
    return swift_willThrow();
  }

  v42 = v11;
  v43 = a3;
  v45 = v14;
  v46 = a2;
  v44 = v5;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100016270(v51, v52);
  sub_10000DD18(v52, v51);
  v19 = a1[2];
  result = v17;
  v21 = result;
  v48 = result;
  if (v19)
  {
    v22 = 0;
    v23 = v48;
    while (v22 < a1[2])
    {
      v24 = a1[v22 + 4];
      sub_10000DD18(v51, v50);
      v21 = v24;
      sub_10010FC20(&unk_1011ACC30);
      if (!swift_dynamicCast())
      {

        sub_10099E7B4();
        swift_allocError();
        v39 = v38;
        *v38 = v21;
        sub_10000DD18(v51, (v38 + 1));
        *(v39 + 40) = 1;
        goto LABEL_22;
      }

      v25 = v49;
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (!*(v25 + 16))
      {

LABEL_21:

        sub_10099E7B4();
        swift_allocError();
        *v40 = v21;
        *(v40 + 40) = 0;
LABEL_22:
        swift_willThrow();

        goto LABEL_23;
      }

      v28 = sub_100019C28(v26, v27);
      v30 = v29;

      if ((v30 & 1) == 0)
      {
        goto LABEL_21;
      }

      ++v22;
      sub_10000DD18(*(v25 + 56) + 32 * v28, v50);

      sub_10000959C(v51);
      result = sub_100016270(v50, v51);
      v23 = v21;
      if (v19 == v22)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    sub_10000DD18(v51, v50);
    v32 = v45;
    v31 = v46;
    if (swift_dynamicCast())
    {

      sub_10000959C(v51);
      sub_10000959C(v52);
      v33 = *(v31 - 8);
      (*(v33 + 56))(v32, 0, 1, v31);
      return (*(v33 + 32))(v43, v32, v31);
    }

    else
    {
      (*(*(v31 - 8) + 56))(v32, 1, 1, v31);
      (*(v42 + 8))(v32, v47);
      sub_10099E7B4();
      swift_allocError();
      v37 = v36;
      *v36 = v21;
      sub_10000DD18(v51, (v36 + 1));
      *(v37 + 40) = 1;
      swift_willThrow();

LABEL_23:
      sub_10000959C(v51);
      return sub_10000959C(v52);
    }
  }

  return result;
}

unint64_t sub_10099E7B4()
{
  result = qword_1011AFD80;
  if (!qword_1011AFD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AFD80);
  }

  return result;
}

unint64_t sub_10099E80C()
{
  result = qword_1011AAE80;
  if (!qword_1011AAE80)
  {
    type metadata accessor for ICEnvironmentMonitorThermalPressureLevel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AAE80);
  }

  return result;
}

uint64_t sub_10099E864(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

__n128 sub_10099E880(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10099E894(uint64_t a1, unsigned int a2)
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
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10099E8D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
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

uint64_t sub_10099E91C(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t Gliss.Direction.init(playerDirection:layoutDirection:)(uint64_t a1, char a2, uint64_t a3)
{
  if ((a1 - 1) <= 1)
  {
    v3 = a3 == 1;
  }

  else
  {
    v3 = 2;
  }

  if ((a1 + 2) < 2)
  {
    v3 = a3 != 1;
  }

  if (a2)
  {
    return 2;
  }

  else
  {
    return v3;
  }
}

unint64_t MPCPlayerDirection.description.getter(uint64_t a1)
{
  if (a1 > 0)
  {
    if (a1 == 1)
    {
      v1 = 0xE700000000000000;
      v2 = 0x64726177726F66;
      goto LABEL_16;
    }

    if (a1 == 5)
    {
      v1 = 0xED0000797261646ELL;
      v2 = 0x756F426575657571;
      goto LABEL_16;
    }

    if (a1 != 2)
    {
LABEL_13:
      v1 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
      goto LABEL_16;
    }

    v2 = 0x4A64726177726F66;
LABEL_11:
    v1 = 0xEB00000000706D75;
    goto LABEL_16;
  }

  if (a1 == -2)
  {
    v2 = 0x4A65737265766572;
    goto LABEL_11;
  }

  if (a1 == -1)
  {
    v1 = 0xE700000000000000;
    v2 = 0x65737265766572;
    goto LABEL_16;
  }

  if (a1)
  {
    goto LABEL_13;
  }

  v1 = 0xEA00000000007972;
  v2 = 0x616E6F6974617473;
LABEL_16:
  _StringGuts.grow(_:)(21);

  v3._countAndFlagsBits = v2;
  v3._object = v1;
  String.append(_:)(v3);

  return 0xD000000000000013;
}

uint64_t sub_10099EB1C()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101219B98);
  sub_1000060E4(v0, qword_101219B98);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10099EB9C@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v36 = a2;
  v39 = a1;
  v40 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v34 = *(v9 - 8);
  v35 = v9;
  __chkstk_darwin(v9);
  v37 = &v34 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v34 - v14;
  __chkstk_darwin(v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v11 - 8);
  v21 = __chkstk_darwin(v20);
  v23 = &v34 - v22;
  (*(v24 + 16))(v18, v39, a4, v21);
  v25 = swift_dynamicCast();
  v26 = *(v19 + 56);
  if (v25)
  {
    v27 = v40;
    v26(v15, 0, 1, v11);
    (*(v19 + 32))(v23, v15, v11);
    v28 = v37;
    (*(a5 + 32))(v23, v36, a3, a5);
    v29 = AssociatedTypeWitness;
    v30 = *(AssociatedTypeWitness - 8);
    if ((*(v30 + 48))(v28, 1, AssociatedTypeWitness) == 1)
    {
      (*(v19 + 8))(v23, v11);
      result = (*(v34 + 8))(v28, v35);
      *v27 = 0u;
      v27[1] = 0u;
    }

    else
    {
      *(v27 + 3) = v29;
      v33 = sub_10001C8B8(v27);
      (*(v30 + 32))(v33, v28, v29);
      return (*(v19 + 8))(v23, v11);
    }
  }

  else
  {
    v26(v15, 1, 1, v11);
    result = (*(v13 + 8))(v15, v12);
    v32 = v40;
    *v40 = 0u;
    v32[1] = 0u;
  }

  return result;
}

uint64_t sub_10099EFBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Gliss.Transition();
  result = swift_dynamicCastClass();
  if (result)
  {
    v6 = result;
    v7 = *(a3 + 40);

    v7(v6, a2, a3);
  }

  return result;
}

uint64_t sub_10099F0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Gliss.Transition();
  result = swift_dynamicCastClass();
  if (result)
  {
    v6 = result;
    v7 = *(a3 + 48);

    v7(v6, a2, a3);
  }

  return result;
}

uint64_t sub_10099F1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a3;
  v27 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v26 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v14);
  v19 = &v26 - v18;
  (*(v20 + 16))(v16, a1, a4);
  v21 = swift_dynamicCast();
  v22 = *(v17 + 56);
  if (v21)
  {
    v22(v13, 0, 1, AssociatedTypeWitness);
    (*(v17 + 32))(v19, v13, AssociatedTypeWitness);
    if (v27)
    {
      v23 = v28;
      swift_getAssociatedConformanceWitness();
      type metadata accessor for Gliss.Transition();
      v24 = swift_dynamicCastClass();
    }

    else
    {
      v24 = 0;
      v23 = v28;
    }

    (*(a5 + 56))(v19, v24, v23, a5);
    return (*(v17 + 8))(v19, AssociatedTypeWitness);
  }

  else
  {
    v22(v13, 1, 1, AssociatedTypeWitness);
    return (*(v10 + 8))(v13, v9);
  }
}

void sub_10099F4C0(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    for (i = (a3 + 32); ; ++i)
    {
      v8 = *i;
      v7 = v8;
      a1(&v8);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return;
      }
    }
  }
}

uint64_t sub_10099F554(uint64_t result, void (*a2)(uint64_t *, __int128 *), uint64_t a3, uint64_t a4)
{
  v10 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 32); ; ++i)
    {
      v9 = *i;
      v8 = v9;
      a2(&v10, &v9);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v10;
      }
    }
  }

  return result;
}

id Gliss.Coordinator.__allocating_init(item:dataSource:gestureConfiguration:coordinatedViews:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  v11 = sub_1009A9124(a1, a2, a3, a4);

  sub_100020438(*(a3 + 8));
  sub_100020438(*(a3 + 24));
  sub_100020438(*(a3 + 40));
  swift_unknownObjectRelease();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v11;
}

id Gliss.Coordinator.init(item:dataSource:gestureConfiguration:coordinatedViews:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1009A9124(a1, a2, a3, a4);

  sub_100020438(*(a3 + 8));
  sub_100020438(*(a3 + 24));
  sub_100020438(*(a3 + 40));
  swift_unknownObjectRelease();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v6;
}

uint64_t sub_10099F7D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_10099F1B4(a2, 0, ObjectType, AssociatedTypeWitness, v3);
}

uint64_t Gliss.Coordinator.dataSource.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*Gliss.Coordinator.dataSource.modify(uint64_t *a1))(void **a1, char a2)
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
  *(v3 + 32) = v1;
  *(v3 + 40) = *((swift_isaMask & *v1) + 0x60);
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_10099FA2C;
}

void sub_10099FA2C(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t Gliss.Coordinator.gestureConfiguration.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + *((swift_isaMask & *v1) + 0x68);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v8 = *(v3 + 4);
  v9 = *(v3 + 5);
  v10 = *(v3 + 6);
  v11 = v4;
  sub_100030444(v5);
  sub_100030444(v7);
  result = sub_100030444(v9);
  *a1 = v11;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;
  return result;
}

uint64_t Gliss.Coordinator.gestureConfiguration.setter(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  v14 = *(a1 + 40);
  v6 = v1 + *((swift_isaMask & *v1) + 0x68);
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 1);
  v12 = *(v6 + 3);
  v13 = *(v6 + 5);
  v9 = *(a1 + 16);
  *v6 = *a1;
  *(v6 + 1) = v9;
  *(v6 + 2) = *(a1 + 32);
  *(v6 + 6) = *(a1 + 48);
  v10 = v3;
  sub_100030444(v4);
  sub_100030444(v5);
  sub_100030444(v14);

  sub_100020438(v8);
  sub_100020438(v12);
  sub_100020438(v13);
  sub_1009A5704();

  sub_100020438(v4);
  sub_100020438(v5);
  return sub_100020438(v14);
}

void (*Gliss.Coordinator.gestureConfiguration.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_10099FD44;
}

void sub_10099FD44(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1009A5704();
  }
}

double Gliss.Coordinator.GestureConfiguration.init(hostingView:simultaneousGestureRecognizerAllowance:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  result = 0.0;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.init(hostingView:hitRect:simultaneousGestureRecognizerAllowance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a3;
  *a6 = a1;
  a6[1] = sub_1009A94BC;
  a6[2] = result;
  a6[3] = 0;
  a6[4] = 0;
  a6[5] = a4;
  a6[6] = a5;
  return result;
}

uint64_t sub_10099FE0C(uint64_t a1, double (*a2)(uint64_t))
{
  sub_10010FC20(&qword_1011AB028);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100EBC6B0;
  *(v4 + 32) = a2(a1);
  *(v4 + 40) = v5;
  *(v4 + 48) = v6;
  *(v4 + 56) = v7;
  return v4;
}

uint64_t Gliss.Coordinator.GestureConfiguration.init(hostingView:hitRects:simultaneousGestureRecognizerAllowance:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = 0;
  a6[4] = 0;
  a6[5] = a4;
  a6[6] = a5;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.init(hostingView:hitTest:simultaneousGestureRecognizerAllowance:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = 0;
  a6[2] = 0;
  a6[3] = a2;
  a6[4] = a3;
  a6[5] = a4;
  a6[6] = a5;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.hitRects.getter()
{
  v1 = *(v0 + 8);
  sub_100030444(v1);
  return v1;
}

uint64_t Gliss.Coordinator.GestureConfiguration.hitRects.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100020438(*(v2 + 8));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.hitTest.getter()
{
  v1 = *(v0 + 24);
  sub_100030444(v1);
  return v1;
}

uint64_t Gliss.Coordinator.GestureConfiguration.hitTest.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100020438(*(v2 + 24));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.simultaneousGestureRecognizerAllowance.getter()
{
  v1 = *(v0 + 40);
  sub_100030444(v1);
  return v1;
}

uint64_t Gliss.Coordinator.GestureConfiguration.simultaneousGestureRecognizerAllowance.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100020438(*(v2 + 40));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t Gliss.Coordinator.addCoordinatedView<A>(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *((swift_isaMask & *v3) + 0x70);
  swift_beginAccess();
  v7 = *(v3 + v6);
  v8 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_10089CDE8(0, v7[2] + 1, 1, v7);
    *(v3 + v6) = v7;
  }

  v11 = v7[2];
  v10 = v7[3];
  if (v11 >= v10 >> 1)
  {
    v7 = sub_10089CDE8((v10 > 1), v11 + 1, 1, v7);
  }

  v7[2] = v11 + 1;
  v12 = &v7[2 * v11];
  v12[4] = v8;
  v12[5] = a3;
  *(v3 + v6) = v7;
  return swift_endAccess();
}

void Gliss.Coordinator.removeCoordinatedView<A>(_:)()
{
  v1 = *((swift_isaMask & *v0) + 0x70);
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);

  if (v3)
  {
    v4 = 0;
    v5 = 32;
    while (1)
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
        return;
      }

      v6 = *(v2 + v5);
      sub_100009F78(0, &qword_1011AAEA0);
      v7 = v6;
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        break;
      }

      ++v4;
      v5 += 16;
      if (v3 == v4)
      {
        goto LABEL_6;
      }
    }

    swift_beginAccess();
    v9 = sub_1008B4A9C(v4);
    swift_endAccess();
    if (!swift_dynamicCastUnknownClass())
    {
    }
  }

  else
  {
LABEL_6:
  }
}

uint64_t Gliss.Coordinator.item.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = swift_isaMask;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-v8];
  v10 = *(v1 + *((v4 & v3) + 0x88));
  if (v10)
  {
    v11 = *(*v10 + 128);
    swift_beginAccess();
    if (*(v10 + v11) != 6)
    {
      v12 = *(*v10 + 112);
      swift_beginAccess();
      (*(v7 + 16))(v9, v10 + v12, v6);
      v13 = *(AssociatedTypeWitness - 8);
      if ((*(v13 + 48))(v9, 1, AssociatedTypeWitness) != 1)
      {
        return (*(v13 + 32))(a1, v9, AssociatedTypeWitness);
      }

      (*(v7 + 8))(v9, v6);
    }
  }

  return sub_1009A04AC(a1);
}

uint64_t sub_1009A04AC@<X0>(uint64_t a1@<X8>)
{
  v3 = *((swift_isaMask & *v1) + 0x78);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 16))(a1, &v1[v3], AssociatedTypeWitness);
}

uint64_t sub_1009A0590(uint64_t a1)
{
  v3 = *((swift_isaMask & *v1) + 0x78);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 40))(&v1[v3], a1, AssociatedTypeWitness);
  return swift_endAccess();
}

uint64_t sub_1009A067C@<X0>(uint64_t a1@<X8>)
{
  v3 = *((swift_isaMask & *v1) + 0x80);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_1009A076C(uint64_t a1)
{
  v3 = *((swift_isaMask & *v1) + 0x80);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

void Gliss.Coordinator.setItem(_:animationDirection:animated:)(uint64_t a1, int a2, char a3)
{
  if (a3)
  {
    v3 = -64;
  }

  else
  {
    v3 = -2;
  }

  Gliss.Coordinator.setItem(_:animationDirection:animation:)(a1, a2, 0, 0, v3);

  sub_1009A94C4(0, 0, v3);
}

uint64_t Gliss.Coordinator.setItem(_:animationDirection:animation:)(uint64_t a1, int a2, void *a3, uint64_t a4, int a5)
{
  v113 = a5;
  v115 = a4;
  v118 = a3;
  v116 = a2;
  v7 = *((swift_isaMask & *v5) + 0x58);
  v8 = *((swift_isaMask & *v5) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v12 = v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v11;
  __chkstk_darwin(v13);
  v15 = v103 - v14;
  v16 = type metadata accessor for Optional();
  v17 = __chkstk_darwin(v16 - 8);
  v19 = v103 - v18;
  v109 = *(v10 + 56);
  v110 = v10 + 56;
  v109(v103 - v18, 1, 1, AssociatedTypeWitness, v17);
  v111 = v19;
  sub_1009A076C(v19);
  v119 = v5;
  Gliss.Coordinator.item.getter(v15);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  v114 = v10;
  v22 = *(v10 + 8);
  v117 = v15;
  result = v22(v15, AssociatedTypeWitness);
  if ((v21 & 1) == 0)
  {
    v103[1] = AssociatedConformanceWitness;
    v107 = v8;
    if (qword_1011A6998 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    v25 = sub_1000060E4(v24, qword_101219B98);
    v27 = v114 + 16;
    v26 = *(v114 + 16);
    v26(v12, a1, AssociatedTypeWitness);
    v120 = v25;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    v30 = os_log_type_enabled(v28, v29);
    v108 = v7;
    v106 = a1;
    v105 = v27;
    v104 = v26;
    if (v30)
    {
      v31 = AssociatedTypeWitness;
      v32 = swift_slowAlloc();
      v103[0] = swift_slowAlloc();
      v123[0] = v103[0];
      *v32 = 136446210;
      v26(v117, v12, v31);
      v33 = String.init<A>(describing:)();
      v35 = v34;
      v22(v12, v31);
      v36 = sub_100010678(v33, v35, v123);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v28, v29, "Attempting to set item=%{public}s", v32, 0xCu);
      sub_10000959C(v103[0]);

      AssociatedTypeWitness = v31;
    }

    else
    {

      v22(v12, AssociatedTypeWitness);
    }

    v37 = v119;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    v40 = os_log_type_enabled(v38, v39);
    v41 = v113;
    v42 = v115;
    if (v40)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v123[0] = v44;
      *v43 = 136446210;
      Gliss.Coordinator.item.getter(v117);
      v45 = String.init<A>(describing:)();
      v47 = sub_100010678(v45, v46, v123);

      *(v43 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v38, v39, "  Current Item=%{public}s", v43, 0xCu);
      sub_10000959C(v44);
    }

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v123[0] = v51;
      *v50 = 136446210;
      LOBYTE(v122[0]) = v116;
      sub_10010FC20(&qword_1011AAE98);
      v52 = String.init<A>(describing:)();
      v54 = sub_100010678(v52, v53, v123);

      *(v50 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v48, v49, "  Direction=%{public}s", v50, 0xCu);
      sub_10000959C(v51);
    }

    v55 = v118;
    sub_1009A94EC(v118, v42, v41);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();
    sub_1009A94C4(v55, v42, v41);
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v122[0] = v59;
      *v58 = 136446210;
      v123[0] = v55;
      v123[1] = v42;
      v124 = v41;
      sub_1009A94EC(v55, v42, v41);
      sub_10010FC20(&qword_1011AAE90);
      v60 = String.init<A>(describing:)();
      v62 = sub_100010678(v60, v61, v122);

      *(v58 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v56, v57, "  Animation=%{public}s", v58, 0xCu);
      sub_10000959C(v59);
    }

    v63 = v106;
    v64 = *(v37 + *((swift_isaMask & *v37) + 0x88));
    if (v64 && (v65 = *(*v64 + 128), swift_beginAccess(), *(v64 + v65)))
    {

      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        v123[0] = v119;
        *v68 = 136446210;
        v121 = v64;
        type metadata accessor for Gliss.Transition();
        swift_getWitnessTable();
        v69 = dispatch thunk of CustomStringConvertible.description.getter();
        v71 = sub_100010678(v69, v70, v123);

        *(v68 + 4) = v71;
        _os_log_impl(&_mh_execute_header, v66, v67, "  Ongoing Transition=%{public}s", v68, 0xCu);
        sub_10000959C(v119);
      }

      v72 = v104;
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&_mh_execute_header, v73, v74, "  ⏳ Queueing item until ongoing transition completes", v75, 2u);
      }

      v76 = v111;
      v72(v111, v63, AssociatedTypeWitness);
      (v109)(v76, 0, 1, AssociatedTypeWitness);
      sub_1009A076C(v76);
      v77 = v117;
      v72(v117, v63, AssociatedTypeWitness);
      v78 = v114;
      v79 = (*(v114 + 80) + 32) & ~*(v114 + 80);
      v80 = (v79 + v112 + 7) & 0xFFFFFFFFFFFFFFF8;
      v81 = (v79 + v112 + 23) & 0xFFFFFFFFFFFFFFF8;
      v82 = swift_allocObject();
      v83 = v108;
      *(v82 + 16) = v107;
      *(v82 + 24) = v83;
      (*(v78 + 32))(v82 + v79, v77, AssociatedTypeWitness);
      v84 = v82 + v80;
      *v84 = v37;
      *(v84 + 8) = v116;
      v85 = v82 + v81;
      v86 = v118;
      v87 = v115;
      *v85 = v118;
      *(v85 + 8) = v87;
      *(v85 + 16) = v41;
      v88 = v37;
      sub_1009A94EC(v86, v87, v41);
      Gliss.Transition.addCompletion(_:)(sub_1009A9514, v82);
    }

    else
    {
      v89 = sub_1009A24E8(v63, v116);
      v90 = v118;
      if (v41 >= 0xFEu)
      {
        v91 = 0;
      }

      else
      {
        v91 = v118;
      }

      if (v41 >= 0xFEu)
      {
        v92 = 0;
      }

      else
      {
        v92 = v42;
      }

      if (v41 >= 0xFEu)
      {
        v93 = -64;
      }

      else
      {
        v93 = v41;
      }

      v94 = v89 + *(*v89 + 136);
      v95 = *v94;
      v96 = *(v94 + 8);
      *v94 = v91;
      *(v94 + 8) = v92;
      v97 = *(v94 + 16);
      *(v94 + 16) = v93;
      sub_1009A94EC(v90, v42, v41);
      sub_1009A94D8(v95, v96, v97);
      sub_1009A3204(v89);
      v98 = v117;
      v104(v117, v63, AssociatedTypeWitness);
      sub_1009A0590(v98);
      v99 = *((swift_isaMask & *v37) + 0x70);
      v100 = swift_beginAccess();
      v101 = *(v37 + v99);
      __chkstk_darwin(v100);
      v102 = v108;
      v103[-4] = v107;
      v103[-3] = v102;
      v103[-2] = v63;
      v103[-1] = v89;

      sub_10099F4C0(sub_1009AA004, &v103[-6], v101);

      sub_1009A4460(v89, v41 < 0xFEu);
    }
  }

  return result;
}

void sub_1009A1460(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v71 = a8;
  v72 = a5;
  v73 = a6;
  v74 = a7;
  v87 = a4;
  v69 = *a1;
  v9 = *(v69 + 80);
  v10 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v77 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin(TupleTypeMetadata2);
  v12 = &v68 - v11;
  v88 = v10;
  v80 = *(v10 - 8);
  __chkstk_darwin(v13);
  v70 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v68 - v16;
  __chkstk_darwin(v18);
  v20 = &v68 - v19;
  __chkstk_darwin(v21);
  v85 = &v68 - v22;
  v23 = *(v9 - 8);
  __chkstk_darwin(v24);
  v79 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v68 - v27;
  if (qword_1011A6998 != -1)
  {
    swift_once();
  }

  v82 = v12;
  v29 = type metadata accessor for Logger();
  v30 = sub_1000060E4(v29, qword_101219B98);
  v31 = *(v23 + 16);
  v83 = a3;
  v31(v28, a3, v9);
  v78 = v30;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  v34 = os_log_type_enabled(v32, v33);
  v84 = v23;
  v76 = v17;
  v81 = v20;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v89[0] = v36;
    *v35 = 136446210;
    v31(v79, v28, v9);
    v37 = String.init<A>(describing:)();
    v39 = v38;
    v75 = *(v84 + 8);
    v75(v28, v9);
    v40 = sub_100010678(v37, v39, v89);

    *(v35 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v32, v33, "⌛️ Dequeuing item=%{public}s", v35, 0xCu);
    sub_10000959C(v36);
    v23 = v84;

    v20 = v81;
  }

  else
  {

    v75 = *(v23 + 8);
    v75(v28, v9);
  }

  v41 = v85;
  sub_1009A067C(v85);
  v31(v20, v83, v9);
  (*(v23 + 56))(v20, 0, 1, v9);
  v42 = *(TupleTypeMetadata2 + 48);
  v43 = *(v80 + 16);
  v44 = v23;
  v45 = v80;
  v46 = v82;
  v47 = v88;
  v43(v82, v41, v88);
  v43(&v46[v42], v20, v47);
  v48 = *(v44 + 48);
  if (v48(v46, 1, v9) == 1)
  {
    v49 = *(v45 + 8);
    v50 = v20;
    v51 = v88;
    v49(v50, v88);
    v49(v41, v51);
    if (v48(&v46[v42], 1, v9) == 1)
    {
      v49(v46, v88);
LABEL_16:
      Gliss.Coordinator.setItem(_:animationDirection:animation:)(v83, v72, v73, v74, v71);
      return;
    }

    goto LABEL_11;
  }

  v52 = v76;
  v43(v76, v46, v88);
  if (v48(&v46[v42], 1, v9) == 1)
  {
    v53 = *(v45 + 8);
    v54 = v88;
    v53(v81, v88);
    v53(v85, v54);
    v75(v52, v9);
LABEL_11:
    (*(v77 + 8))(v46, TupleTypeMetadata2);
    goto LABEL_12;
  }

  v63 = v79;
  (*(v84 + 32))(v79, &v46[v42], v9);
  v64 = dispatch thunk of static Equatable.== infix(_:_:)();
  v65 = v75;
  v75(v63, v9);
  v66 = *(v45 + 8);
  v67 = v88;
  v66(v81, v88);
  v66(v85, v67);
  v65(v52, v9);
  v66(v46, v67);
  if (v64)
  {
    goto LABEL_16;
  }

LABEL_12:
  v55 = v87;
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v89[0] = v59;
    *v58 = 136446210;
    sub_1009A067C(v70);
    v60 = String.init<A>(describing:)();
    v62 = sub_100010678(v60, v61, v89);

    *(v58 + 4) = v62;
    _os_log_impl(&_mh_execute_header, v56, v57, "  ⌛️❌ Item no longer matches queued item=%{public}s", v58, 0xCu);
    sub_10000959C(v59);
  }
}