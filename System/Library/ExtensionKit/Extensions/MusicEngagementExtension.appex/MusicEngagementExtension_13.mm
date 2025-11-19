uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(_BYTE *__dst, _BYTE *__src, unint64_t a3, _BYTE *a4)
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

uint64_t partial apply for specialized closure #1 in BylineProviding.byline(with:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  return specialized closure #1 in BylineProviding.byline(with:)(*a1, a2);
}

{
  return specialized closure #1 in BylineProviding.byline(with:)(*a1, *(v2 + 16), a2);
}

{
  return specialized closure #1 in BylineProviding.byline(with:)(*a1, a2);
}

uint64_t lazy protocol witness table accessor for type AttributedString and conformance AttributedString(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type [AttributedString.FormattingOptions] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [AttributedString.FormattingOptions] and conformance [A];
  if (!lazy protocol witness table cache variable for type [AttributedString.FormattingOptions] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation16AttributedStringV17FormattingOptionsVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AttributedString.FormattingOptions] and conformance [A]);
  }

  return result;
}

unint64_t type metadata accessor for MPPropertySet()
{
  result = lazy cache variable for type metadata for MPPropertySet;
  if (!lazy cache variable for type metadata for MPPropertySet)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for MPPropertySet);
  }

  return result;
}

void DefaultStringInterpolation.appendInterpolation(describing:default:)(uint64_t a1, uint64_t a2, void *a3)
{
  outlined init with copy of Any?(a1, &v6);
  if (v7)
  {
    outlined init with take of Any(&v6, v8);
    _print_unlocked<A, B>(_:_:)();
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  else
  {
    outlined destroy of Any?(&v6);
    v5._countAndFlagsBits = a2;
    v5._object = a3;
    String.append(_:)(v5);
  }
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd_0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t one-time initialization function for defaultValue()
{
  if (one-time initialization token for supportedMaterials != -1)
  {
    swift_once();
  }

  static BackgroundMaterial.defaultValue = static BackgroundMaterial.supportedMaterials;
}

{
  v0 = type metadata accessor for Library.Context();
  __swift_allocate_value_buffer(v0, static EnvironmentValues.LibraryContextKey.defaultValue);
  v1 = __swift_project_value_buffer(v0, static EnvironmentValues.LibraryContextKey.defaultValue);
  type metadata accessor for MusicLibrary();
  *v1 = static MusicLibrary.shared.getter();
  v2 = v0[5];
  v3 = type metadata accessor for Album();
  (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  v4 = v0[6];
  v5 = type metadata accessor for Artist();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v6 = v0[7];
  v7 = type metadata accessor for Composer();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  v8 = v0[8];
  v9 = type metadata accessor for Genre();
  (*(*(v9 - 8) + 56))(&v1[v8], 1, 1, v9);
  v10 = v0[9];
  v11 = type metadata accessor for Playlist();
  (*(*(v11 - 8) + 56))(&v1[v10], 1, 1, v11);
  v12 = v0[10];
  v13 = type metadata accessor for TVShow();
  (*(*(v13 - 8) + 56))(&v1[v12], 1, 1, v13);
  v14 = v0[11];
  v15 = type metadata accessor for TVSeason();
  result = (*(*(v15 - 8) + 56))(&v1[v14], 1, 1, v15);
  v1[v0[12]] = 0;
  v1[v0[13]] = 2;
  v1[v0[14]] = 3;
  v17 = &v1[v0[15]];
  *v17 = 0;
  *(v17 + 1) = 0;
  *&v1[v0[16]] = _swiftEmptyArrayStorage;
  v1[v0[17]] = 2;
  return result;
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMd);
  __swift_allocate_value_buffer(v0, static EnvironmentValues.PlaceholderStyleKey.defaultValue);
  v1 = __swift_project_value_buffer(v0, static EnvironmentValues.PlaceholderStyleKey.defaultValue);
  v2 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t *BackgroundMaterial.supportedMaterials.unsafeMutableAddressor()
{
  if (one-time initialization token for supportedMaterials != -1)
  {
    swift_once();
  }

  return &static BackgroundMaterial.supportedMaterials;
}

uint64_t *BackgroundMaterial.defaultValue.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  return &static BackgroundMaterial.defaultValue;
}

uint64_t one-time initialization function for supportedMaterials()
{
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1);
  v1 = _swiftEmptyArrayStorage[2];
  v0 = _swiftEmptyArrayStorage[3];
  v2 = v0 >> 1;
  v3 = v1 + 1;
  if (v0 >> 1 <= v1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v0 > 1), (v1 + 1), 1);
    v0 = _swiftEmptyArrayStorage[3];
    v2 = v0 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v3;
  *(&_swiftEmptyArrayStorage[4] + v1) = 0;
  v4 = v1 + 2;
  if (v2 < v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v0 > 1), v4, 1);
  }

  _swiftEmptyArrayStorage[2] = v4;
  *(&_swiftEmptyArrayStorage[4] + v3) = 1;
  v5 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9MusicCore18BackgroundMaterialO_SayAFGTt0g5Tf4g_n(_swiftEmptyArrayStorage);

  static BackgroundMaterial.supportedMaterials = v5;
  return result;
}

uint64_t static BackgroundMaterial.defaultValue.getter(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t protocol witness for static UITraitDefinition.defaultValue.getter in conformance BackgroundMaterial@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static BackgroundMaterial.defaultValue;
}

uint64_t UITraitCollection.supportedMaterials.getter()
{
  lazy protocol witness table accessor for type BackgroundMaterial and conformance BackgroundMaterial();
  UITraitCollection.subscript.getter();
  return v1;
}

uint64_t UIMutableTraits.supportedMaterials.getter()
{
  lazy protocol witness table accessor for type BackgroundMaterial and conformance BackgroundMaterial();
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
  lazy protocol witness table accessor for type BackgroundMaterial and conformance BackgroundMaterial();
  dispatch thunk of UIMutableTraits.subscript.getter();
  return UIMutableTraits.supportedMaterials.modify;
}

void UIMutableTraits.supportedMaterials.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  if (a2)
  {

    lazy protocol witness table accessor for type BackgroundMaterial and conformance BackgroundMaterial();
    dispatch thunk of UIMutableTraits.subscript.setter();
  }

  else
  {
    *v2 = v3;
    lazy protocol witness table accessor for type BackgroundMaterial and conformance BackgroundMaterial();
    dispatch thunk of UIMutableTraits.subscript.setter();
  }

  free(v2);
}

unint64_t lazy protocol witness table accessor for type [BackgroundMaterial] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [BackgroundMaterial] and conformance [A];
  if (!lazy protocol witness table cache variable for type [BackgroundMaterial] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9MusicCore18BackgroundMaterialOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [BackgroundMaterial] and conformance [A]);
  }

  return result;
}

unint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, unint64_t a2, unint64_t *a3)
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
    type metadata accessor for UIAction(0, a3);
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

uint64_t specialized Collection<>.firstIndex(of:)(char a1, uint64_t a2)
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
    v7 = "orites";
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
    v10 = "orites";
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

uint64_t one-time initialization function for playActivityFeatureName()
{
  result = swift_slowAlloc();
  static AssociatedKeys.playActivityFeatureName = result;
  return result;
}

uint64_t one-time initialization function for playActivityFeatureNameSourceViewController()
{
  result = swift_slowAlloc();
  static AssociatedKeys.playActivityFeatureNameSourceViewController = result;
  return result;
}

uint64_t one-time initialization function for playActivityRecommendationDataSourceViewController()
{
  result = swift_slowAlloc();
  static AssociatedKeys.playActivityRecommendationDataSourceViewController = result;
  return result;
}

uint64_t one-time initialization function for playActivityForwardedRecommendationData()
{
  result = swift_slowAlloc();
  static AssociatedKeys.playActivityForwardedRecommendationData = result;
  return result;
}

id UIViewController.WeakViewControllerReference.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIViewController.WeakViewControllerReference();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void UIViewController.playActivityFeatureNameSourceViewController.setter(void *a1)
{
  specialized UIViewController.playActivityFeatureNameSourceViewController.setter(a1, &one-time initialization token for playActivityFeatureNameSourceViewController, &static AssociatedKeys.playActivityFeatureNameSourceViewController);
}

id UIViewController.playActivityFeatureNameSourceViewController.getter(void *a1, const void **a2)
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
    outlined destroy of Any?(v9);
    return [v2 parentViewController];
  }

  type metadata accessor for UIViewController.WeakViewControllerReference();
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
  specialized UIViewController.playActivityFeatureNameSourceViewController.setter(a1, &one-time initialization token for playActivityRecommendationDataSourceViewController, &static AssociatedKeys.playActivityRecommendationDataSourceViewController);
}

void (*UIViewController.playActivityRecommendationDataSourceViewController.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = UIViewController.playActivityRecommendationDataSourceViewController.getter();
  return UIViewController.playActivityRecommendationDataSourceViewController.modify;
}

void UIViewController.playActivityRecommendationDataSourceViewController.modify(id *a1, char a2)
{
  value = *a1;
  if (a2)
  {
    v2 = value;
    specialized UIViewController.playActivityFeatureNameSourceViewController.setter(value, &one-time initialization token for playActivityRecommendationDataSourceViewController, &static AssociatedKeys.playActivityRecommendationDataSourceViewController);

    v3 = v2;
  }

  else
  {
    specialized UIViewController.playActivityFeatureNameSourceViewController.setter(*a1, &one-time initialization token for playActivityRecommendationDataSourceViewController, &static AssociatedKeys.playActivityRecommendationDataSourceViewController);
    v3 = value;
  }
}

uint64_t UIViewController.playActivityForwardedRecommendationData.getter()
{
  if (one-time initialization token for playActivityForwardedRecommendationData != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, static AssociatedKeys.playActivityForwardedRecommendationData))
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
    outlined destroy of Any?(v5);
    return 0;
  }
}

uint64_t UIViewController.playActivityForwardedRecommendationData.setter(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for playActivityForwardedRecommendationData != -1)
  {
    swift_once();
  }

  v6 = static AssociatedKeys.playActivityForwardedRecommendationData;
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    outlined copy of Data._Representation(a1, a2);
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(a1, a2);
  }

  objc_setAssociatedObject(v3, v6, isa, 3);

  return outlined consume of Data?(a1, a2);
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

      if (one-time initialization token for playActivityRecommendationDataSourceViewController != -1)
      {
        swift_once();
      }

      if (objc_getAssociatedObject(v9, static AssociatedKeys.playActivityRecommendationDataSourceViewController))
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

      type metadata accessor for UIViewController.WeakViewControllerReference();
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

    outlined destroy of Any?(v20);
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

  return specialized PlayActivityFeatureIdentifier.init(rawValue:)();
}

void UIViewController.playActivityFeatureIdentifier.setter(char a1)
{
  if (a1 != 20)
  {
    PlayActivityFeatureIdentifier.rawValue.getter(a1);
  }

  v2 = String._bridgeToObjectiveC()();

  [v1 setPlayActivityFeatureName:v2];
}

void (*UIViewController.playActivityFeatureIdentifier.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = [v1 playActivityFeatureName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  *(a1 + 8) = specialized PlayActivityFeatureIdentifier.init(rawValue:)();
  return UIViewController.playActivityFeatureIdentifier.modify;
}

void UIViewController.playActivityFeatureIdentifier.modify(uint64_t a1)
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1004F2400;
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

    specialized Array.append<A>(contentsOf:)(v5);
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

      v15 = specialized Sequence.reversed()(_swiftEmptyArrayStorage);

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
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = (v13 + 1);
      v14 = &_swiftEmptyArrayStorage[2 * v13];
      v14[4] = v10;
      v14[5] = v9;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence.reversed()(uint64_t result)
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
      v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  lazy protocol witness table accessor for type String and conformance String();
  v2 = Sequence<>.joined(separator:)();

  return v2;
}

uint64_t Collection<>.playActivityFeatureJoined()()
{
  lazy protocol witness table accessor for type String and conformance String();

  return Sequence<>.joined(separator:)();
}

uint64_t UIViewController.playActivityInformation.getter()
{
  v1 = [v0 combinedPlayActivityFeatureName];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = UIViewController.inheritedPlayActivityRecommendationData(shouldIncludeForwardedRecommendationData:)(1);
  v5 = v4;
  outlined consume of Data?(0, 0xF000000000000000);

  outlined copy of Data?(v3, v5);

  outlined consume of Data?(v3, v5);
  return v2;
}

uint64_t UINavigationController.playActivityFeatureNames(sourceChildViewController:)(void *a1)
{
  v5 = [i viewControllers];
  v6 = type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIViewController);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!a1)
  {
    goto LABEL_25;
  }

  v8 = a1;
  v9 = specialized Collection<>.firstIndex(of:)(v8, v7, &lazy cache variable for type metadata for UIViewController);
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
              if (v20 == ((v12 >> 1) - v2))
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

        specialized _copyCollectionToContiguousArray<A>(_:)(v6, v3, v2, v12);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v8 = swift_allocObject();
  *(v8 + 1) = xmmword_1004F2400;
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

        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, v33, 1, v8);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1004F2F10;
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
    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, v2);
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

id @objc UIViewController.playActivityFeatureName.getter(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

uint64_t UIViewController.playActivityFeatureName.getter()
{
  if (one-time initialization token for playActivityFeatureName != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, static AssociatedKeys.playActivityFeatureName))
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
    outlined destroy of Any?(v5);
  }

  return 0;
}

void @objc UIViewController.playActivityFeatureName.setter(void *a1, uint64_t a2, void *a3)
{
  v4 = one-time initialization token for playActivityFeatureName;
  v5 = a3;
  v6 = a1;
  v7 = v6;
  if (v4 != -1)
  {
    swift_once();
    v6 = v7;
  }

  objc_setAssociatedObject(v6, static AssociatedKeys.playActivityFeatureName, v5, 3);
}

void UIViewController.playActivityFeatureName.setter()
{
  if (one-time initialization token for playActivityFeatureName != -1)
  {
    swift_once();
  }

  v1 = static AssociatedKeys.playActivityFeatureName;
  value = String._bridgeToObjectiveC()();

  objc_setAssociatedObject(v0, v1, value, 3);
}

uint64_t UITab.combinedPlayActivityFeatureName.getter()
{
  UITab.playActivityFeatureNames.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  lazy protocol witness table accessor for type String and conformance String();
  v0 = Sequence<>.joined(separator:)();

  return v0;
}

id *UITab.playActivityFeatureNames.getter()
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
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20[2] + 1, 1, v20);
    }

    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    v17 = v14;
    if (v16 >= v15 >> 1)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v14);
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

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
        type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIViewController);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
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
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd_0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11MusicCoreUI16PlaylistCuratorsO7CuratorVGMd);
      v7 = *(type metadata accessor for PlaylistCurators.Curator(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for PlaylistCurators.Curator(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7LyricsX0D0C4WordVGMd);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 56);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
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
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

char *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(char *result, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = &result[v7 + 32];
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + a2);
      if (&v8[a3] != v12 || result >= &v12[v11])
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
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
  if (a3 >= 1)
  {
    *v8 = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

char *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(char *result, uint64_t a2, uint64_t a3)
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

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3)
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

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd);
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

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UITab);
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
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIViewPropertyAnimator);
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
  type metadata accessor for SyncedLyricsLineView();
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

void specialized UIViewController.playActivityFeatureNameSourceViewController.setter(id value, void *a2, const void **a3)
{
  v6 = value;
  if (value)
  {
    v7 = type metadata accessor for UIViewController.WeakViewControllerReference();
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

char *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UITab);
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

uint64_t specialized UITabBarController.playActivityFeatureNames(sourceChildViewController:)()
{
  v3 = v0;
  v4 = [v0 selectedTab];
  if (!v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1004F2400;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1004F2400;
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
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIViewController);
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
      result = specialized Collection<>.firstIndex(of:)(v15, v10, &lazy cache variable for type metadata for UITab);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1004F2400;
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
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
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
    specialized Array.replaceSubrange<A>(_:with:)(result, v27);

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
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
    }

    ++v32;
    _swiftEmptyArrayStorage[2] = (v40 + 1);
    v41 = &_swiftEmptyArrayStorage[2 * v40];
    v41[4] = v36;
    v41[5] = v38;
  }

  while (v3 != v32);

  v7 = v44;
  v5 = v45;
LABEL_34:
  specialized Array.append<A>(contentsOf:)(_swiftEmptyArrayStorage);

  return v46;
}

uint64_t *NSUserDefaults.mobileiPod.unsafeMutableAddressor()
{
  if (one-time initialization token for mobileiPod != -1)
  {
    swift_once();
  }

  return &static NSUserDefaults.mobileiPod;
}

Swift::Bool __swiftcall NSUserDefaults.BOOL(forKey:withDefault:)(Swift::String forKey, Swift::Bool withDefault)
{
  v4 = forKey;
  lazy protocol witness table accessor for type String and conformance String();

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
    outlined destroy of Any?(&v5);
  }

  return withDefault;
}

void one-time initialization function for mobileiPod()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  static NSUserDefaults.mobileiPod = v2;
}

uint64_t static NSUserDefaults.mobileiPod.getter()
{
  if (one-time initialization token for mobileiPod != -1)
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
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of NSUserDefaults.MobileiPod.init(rawValue:), v2);

  return v3 != 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NSUserDefaults.MobileiPod()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSUserDefaults.MobileiPod()
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
  *(v3 + 40) = lazy protocol witness table accessor for type NSUserDefaults.MobileiPod and conformance NSUserDefaults.MobileiPod();
  *(v4 + 48) = lazy protocol witness table accessor for type String and conformance String();
  NSUserDefaults.subscript.getter(v4);
  if (!*(v4 + 24))
  {
    outlined destroy of Any?(v4);
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
  return NSUserDefaults.hasUserRequestedSubscriptionHidden.modify;
}

uint64_t NSUserDefaults.hasUserRequestedSubscriptionHidden.getter(void (*a1)(void))
{
  a1();
  lazy protocol witness table accessor for type String and conformance String();
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
    outlined destroy of Any?(&v3);
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSUserDefaults.Keys and conformance NSUserDefaults.Keys()
{
  result = lazy protocol witness table cache variable for type NSUserDefaults.Keys and conformance NSUserDefaults.Keys;
  if (!lazy protocol witness table cache variable for type NSUserDefaults.Keys and conformance NSUserDefaults.Keys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSUserDefaults.Keys and conformance NSUserDefaults.Keys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSUserDefaults.Keys and conformance NSUserDefaults.Keys;
  if (!lazy protocol witness table cache variable for type NSUserDefaults.Keys and conformance NSUserDefaults.Keys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSUserDefaults.Keys and conformance NSUserDefaults.Keys);
  }

  return result;
}

uint64_t NSUserDefaults.hasUserRequestedSubscriptionHidden.setter(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v7 = &type metadata for Bool;
  v6[0] = a1;
  a2(a1);
  lazy protocol witness table accessor for type String and conformance String();
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
  *(v3 + 40) = lazy protocol witness table accessor for type NSUserDefaults.Keys and conformance NSUserDefaults.Keys();
  *(v4 + 48) = lazy protocol witness table accessor for type String and conformance String();
  NSUserDefaults.subscript.getter(v4);
  if (!*(v4 + 24))
  {
    outlined destroy of Any?(v4);
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
  return NSUserDefaults.hasSeenDownloadPinsAlert.modify;
}

void NSUserDefaults.hasUserRequestedSubscriptionHidden.modify(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 56);
  v6 = &type metadata for Bool;
  v5[0] = v4;
  NSUserDefaults.subscript.setter(v5, a2, a3);

  free(v3);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NSUserDefaults.Keys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSUserDefaults.Keys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

id MPPlaybackUserDefaults.transitionStyleForCatalogPlayback.getter()
{
  if (one-time initialization token for shared != -1)
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
  outlined destroy of ApplicationCapabilities(v10);
  return [v0 transitionStyleForUserWithCatalogPlaybackCapability:BYTE8(v10[0]) & 1];
}

id static ICUserIdentity.active.getter()
{
  v0 = [swift_getObjCClassFromMetadata() activeAccount];

  return v0;
}

id static ICUserIdentityStore.activeAccountDSID.getter()
{
  v0 = [swift_getObjCClassFromMetadata() defaultIdentityStore];
  v1 = [objc_opt_self() activeAccount];
  v6 = 0;
  v2 = [v0 DSIDForUserIdentity:v1 outError:&v6];

  v3 = v6;
  if (!v2)
  {
    v4 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  return v2;
}

uint64_t static ICMusicKitRequestContext.music.getter()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4[4] = specialized thunk for @callee_guaranteed (@guaranteed ICRequestContext) -> ();
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  v4[3] = &block_descriptor_20;
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

double ICURLBag.subscript.getter@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if ([v2 valueForBagKey:a1])
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t *ICClientInfo.music.unsafeMutableAddressor()
{
  if (one-time initialization token for music != -1)
  {
    swift_once();
  }

  return &static ICClientInfo.music;
}

void closure #1 in static ICMusicKitRequestContext.music.getter(void *a1)
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
  *(v3 + 16) = partial apply for closure #1 in static ICStoreRequestContext.default(withConfigurationBlock:);
  *(v3 + 24) = v7;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  aBlock[3] = &block_descriptor_3_1;
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

void specialized closure #1 in static ICStoreRequestContext.default(withConfigurationBlock:)(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = objc_opt_self();
    v8 = a1;
    v5 = [v4 defaultIdentityStore];
    [v3 setIdentityStore:v5];

    v6 = [objc_opt_self() activeAccount];
    [v3 setIdentity:v6];

    [v3 setAllowsExpiredBags:1];
    v7 = [objc_allocWithZone(ICURLResponseAuthenticationProvider) initWithUserInteractionLevel:1];
    [v3 setAuthenticationProvider:v7];

    if (one-time initialization token for storeFlow != -1)
    {
      swift_once();
    }

    [v3 setClientInfo:static ICClientInfo.storeFlow];
  }
}

void closure #1 in static ICStoreRequestContext.default(withConfigurationBlock:)(void *a1, void (*a2)(void *))
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
  v4[4] = specialized thunk for @callee_guaranteed (@guaranteed ICRequestContext) -> ();
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  v4[3] = &block_descriptor_6_0;
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
  if (one-time initialization token for storeFlow != -1)
  {
    swift_once();
  }

  return &static ICClientInfo.storeFlow;
}

id one-time initialization function for music()
{
  result = [objc_allocWithZone(ICClientInfo) initWithSystemApplicationType:0];
  static ICClientInfo.music = result;
  return result;
}

{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:3];
  v3 = [objc_opt_self() secondarySystemFillColor];
  if (one-time initialization token for defaultTint != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = static Artwork.Placeholder.defaultTint;
  static Artwork.Placeholder.music = v3;
  unk_10063ED90 = static Artwork.Placeholder.defaultTint;
  qword_10063ED98 = v1;
  unk_10063EDA0 = v2;
  xmmword_10063EDA8 = xmmword_100507950;

  return v4;
}

void *one-time initialization function for storeFlow()
{
  result = closure #1 in variable initialization expression of static ICClientInfo.storeFlow();
  static ICClientInfo.storeFlow = result;
  return result;
}

void *closure #1 in variable initialization expression of static ICClientInfo.storeFlow()
{
  v0 = [objc_allocWithZone(ICClientInfo) initWithSystemApplicationType:0];
  [v0 mutableCopy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for ICMutableClientInfo();
  swift_dynamicCast();
  v1 = String._bridgeToObjectiveC()();
  [v3 setBagProfileVersion:v1];

  return v3;
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
  v12 = __chkstk_darwin(v10);
  v14 = &v41 - v13;
  v15 = a1[2];
  if (!v15)
  {
    lazy protocol witness table accessor for type ICURLBag.Error and conformance ICURLBag.Error();
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
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v15, 1, a1);
    v53 = a1;
  }

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 1, 0);
  if (![v6 valueForBagKey:v17])
  {

    lazy protocol witness table accessor for type ICURLBag.Error and conformance ICURLBag.Error();
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
  outlined init with take of Any(v51, v52);
  outlined init with copy of Any(v52, v51);
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
      outlined init with copy of Any(v51, v50);
      v21 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd_0);
      if (!swift_dynamicCast())
      {

        lazy protocol witness table accessor for type ICURLBag.Error and conformance ICURLBag.Error();
        swift_allocError();
        v39 = v38;
        *v38 = v21;
        outlined init with copy of Any(v51, (v38 + 1));
        *(v39 + 40) = 1;
        goto LABEL_22;
      }

      v25 = v49;
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (!*(v25 + 16))
      {

LABEL_21:

        lazy protocol witness table accessor for type ICURLBag.Error and conformance ICURLBag.Error();
        swift_allocError();
        *v40 = v21;
        *(v40 + 40) = 0;
LABEL_22:
        swift_willThrow();

        goto LABEL_23;
      }

      v28 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v26, v27);
      v30 = v29;

      if ((v30 & 1) == 0)
      {
        goto LABEL_21;
      }

      ++v22;
      outlined init with copy of Any(*(v25 + 56) + 32 * v28, v50);

      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      result = outlined init with take of Any(v50, v51);
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

    outlined init with copy of Any(v51, v50);
    v32 = v45;
    v31 = v46;
    if (swift_dynamicCast())
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      v33 = *(v31 - 8);
      (*(v33 + 56))(v32, 0, 1, v31);
      return (*(v33 + 32))(v43, v32, v31);
    }

    else
    {
      (*(*(v31 - 8) + 56))(v32, 1, 1, v31);
      (*(v42 + 8))(v32, v47);
      lazy protocol witness table accessor for type ICURLBag.Error and conformance ICURLBag.Error();
      swift_allocError();
      v37 = v36;
      *v36 = v21;
      outlined init with copy of Any(v51, (v36 + 1));
      *(v37 + 40) = 1;
      swift_willThrow();

LABEL_23:
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      return __swift_destroy_boxed_opaque_existential_0Tm(v52);
    }
  }

  return result;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type ICURLBag.Error and conformance ICURLBag.Error()
{
  result = lazy protocol witness table cache variable for type ICURLBag.Error and conformance ICURLBag.Error;
  if (!lazy protocol witness table cache variable for type ICURLBag.Error and conformance ICURLBag.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ICURLBag.Error and conformance ICURLBag.Error);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ICEnvironmentMonitorThermalPressureLevel and conformance ICEnvironmentMonitorThermalPressureLevel()
{
  result = lazy protocol witness table cache variable for type ICEnvironmentMonitorThermalPressureLevel and conformance ICEnvironmentMonitorThermalPressureLevel;
  if (!lazy protocol witness table cache variable for type ICEnvironmentMonitorThermalPressureLevel and conformance ICEnvironmentMonitorThermalPressureLevel)
  {
    type metadata accessor for ICEnvironmentMonitorThermalPressureLevel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ICEnvironmentMonitorThermalPressureLevel and conformance ICEnvironmentMonitorThermalPressureLevel);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So8ICURLBagC9MusicCoreE5ErrorO(uint64_t a1)
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

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ICURLBag.Error(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ICURLBag.Error(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t destructiveInjectEnumTag for ICURLBag.Error(uint64_t result, unsigned int a2)
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

unint64_t type metadata accessor for ICMutableClientInfo()
{
  result = lazy cache variable for type metadata for ICMutableClientInfo;
  if (!lazy cache variable for type metadata for ICMutableClientInfo)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ICMutableClientInfo);
  }

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

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Gliss.logger);
  __swift_project_value_buffer(v0, static Gliss.logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static StagedInstall.logger);
  __swift_project_value_buffer(v0, static StagedInstall.logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static NowPlaying.TrackMetadata.logger);
  __swift_project_value_buffer(v0, static NowPlaying.TrackMetadata.logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static PlaybackTimeObserver.logger);
  __swift_project_value_buffer(v0, static PlaybackTimeObserver.logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Player.logger);
  __swift_project_value_buffer(v0, static Player.logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static PresentationSource.logger);
  __swift_project_value_buffer(v0, static PresentationSource.logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static SymbolButton.logger);
  __swift_project_value_buffer(v0, static SymbolButton.logger);
  _sSo9OS_os_logCMa_0();
  static OS_os_log.disabled.getter();
  return Logger.init(_:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static BouncyBarsAsset.logger);
  __swift_project_value_buffer(v0, static BouncyBarsAsset.logger);
  type metadata accessor for UIAction(0, &_sSo9OS_os_logCML_0);
  OS_os_log.init(musicCategory:)();
  return Logger.init(_:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static SyncedLyricsViewController.logger);
  __swift_project_value_buffer(v0, static SyncedLyricsViewController.logger);
  return Logger.init(subsystem:category:)();
}

uint64_t Gliss.CoordinatedView._transitionContext<A>(to:direction:)@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v35 = a2;
  v38 = a1;
  v39 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v33 = *(v9 - 8);
  v34 = v9;
  __chkstk_darwin(v9);
  v36 = &v33 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v33 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v11 - 8);
  __chkstk_darwin(v17);
  v22 = &v33 - v21;
  (*(v23 + 16))(v19, v38, a4);
  v24 = swift_dynamicCast();
  v25 = *(v20 + 56);
  if (v24)
  {
    v26 = v39;
    v25(v16, 0, 1, v11);
    (*(v20 + 32))(v22, v16, v11);
    v27 = v36;
    (*(a5 + 32))(v22, v35, a3, a5);
    v28 = AssociatedTypeWitness;
    v29 = *(AssociatedTypeWitness - 8);
    if ((*(v29 + 48))(v27, 1, AssociatedTypeWitness) == 1)
    {
      (*(v20 + 8))(v22, v11);
      result = (*(v33 + 8))(v27, v34);
      *v26 = 0u;
      v26[1] = 0u;
    }

    else
    {
      *(v26 + 3) = v28;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
      (*(v29 + 32))(boxed_opaque_existential_1, v27, v28);
      return (*(v20 + 8))(v22, v11);
    }
  }

  else
  {
    v25(v16, 1, 1, v11);
    result = (*(v13 + 8))(v16, v12);
    v31 = v39;
    *v39 = 0u;
    v31[1] = 0u;
  }

  return result;
}

uint64_t Gliss.CoordinatedView._transitionWillBegin<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t Gliss.CoordinatedView._transitionDidEnd<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t Gliss.CoordinatedView._adopt<A>(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void specialized Sequence.forEach(_:)(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
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

uint64_t specialized Sequence.reduce<A>(into:_:)(uint64_t result, void (*a2)(uint64_t *, __int128 *), uint64_t a3, uint64_t a4)
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
  v11 = specialized Gliss.Coordinator.init(item:dataSource:gestureConfiguration:coordinatedViews:)(a1, a2, a3, a4);

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(a3 + 8));
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(a3 + 24));
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(a3 + 40));
  swift_unknownObjectRelease();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v11;
}

id Gliss.Coordinator.init(item:dataSource:gestureConfiguration:coordinatedViews:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = specialized Gliss.Coordinator.init(item:dataSource:gestureConfiguration:coordinatedViews:)(a1, a2, a3, a4);

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(a3 + 8));
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(a3 + 24));
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(a3 + 40));
  swift_unknownObjectRelease();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v6;
}

uint64_t closure #1 in Gliss.Coordinator.init(item:dataSource:gestureConfiguration:coordinatedViews:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return Gliss.CoordinatedView._adopt<A>(_:from:)(a2, 0, ObjectType, AssociatedTypeWitness, v3);
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
  return Gliss.Coordinator.dataSource.modify;
}

void Gliss.Coordinator.dataSource.modify(void **a1, char a2)
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
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v5);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v7);
  result = outlined copy of (@escaping @callee_guaranteed () -> ())?(v9);
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
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v4);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v5);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v14);

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v8);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v12);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v13);
  Gliss.Coordinator.setupPanGestureRecognizer()();

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v4);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v5);
  return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v14);
}

void (*Gliss.Coordinator.gestureConfiguration.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return Gliss.Coordinator.gestureConfiguration.modify;
}

void Gliss.Coordinator.gestureConfiguration.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    Gliss.Coordinator.setupPanGestureRecognizer()();
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
  a6[1] = partial apply for closure #1 in Gliss.Coordinator.GestureConfiguration.init(hostingView:hitRect:simultaneousGestureRecognizerAllowance:);
  a6[2] = result;
  a6[3] = 0;
  a6[4] = 0;
  a6[5] = a4;
  a6[6] = a5;
  return result;
}

uint64_t closure #1 in Gliss.Coordinator.GestureConfiguration.init(hostingView:hitRect:simultaneousGestureRecognizerAllowance:)(uint64_t a1, double (*a2)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1004F2400;
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
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v1);
  return v1;
}

uint64_t Gliss.Coordinator.GestureConfiguration.hitRects.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v2 + 8));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.hitTest.getter()
{
  v1 = *(v0 + 24);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v1);
  return v1;
}

uint64_t Gliss.Coordinator.GestureConfiguration.hitTest.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v2 + 24));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.simultaneousGestureRecognizerAllowance.getter()
{
  v1 = *(v0 + 40);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v1);
  return v1;
}

uint64_t Gliss.Coordinator.GestureConfiguration.simultaneousGestureRecognizerAllowance.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v2 + 40));
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
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    *(v3 + v6) = v7;
  }

  v11 = v7[2];
  v10 = v7[3];
  if (v11 >= v10 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v7);
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
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSObject);
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
    v9 = specialized Array.remove(at:)(v4);
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

  return Gliss.Coordinator._item.getter(a1);
}

uint64_t Gliss.Coordinator._item.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *((swift_isaMask & *v1) + 0x78);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 16))(a1, &v1[v3], AssociatedTypeWitness);
}

uint64_t Gliss.Coordinator._item.setter(uint64_t a1)
{
  v3 = *((swift_isaMask & *v1) + 0x78);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 40))(&v1[v3], a1, AssociatedTypeWitness);
  return swift_endAccess();
}

uint64_t Gliss.Coordinator.queuedItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *((swift_isaMask & *v1) + 0x80);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t Gliss.Coordinator.queuedItem.setter(uint64_t a1)
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

  outlined consume of Gliss.Animation?(0, 0, v3);
}

uint64_t Gliss.Coordinator.setItem(_:animationDirection:animation:)(uint64_t a1, int a2, void *a3, uint64_t a4, int a5)
{
  v112 = a5;
  v114 = a4;
  v117 = a3;
  v115 = a2;
  v7 = *((swift_isaMask & *v5) + 0x58);
  v8 = *((swift_isaMask & *v5) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = __chkstk_darwin(AssociatedTypeWitness);
  v13 = v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v12;
  __chkstk_darwin(v11);
  v15 = v102 - v14;
  v16 = type metadata accessor for Optional();
  __chkstk_darwin(v16 - 8);
  v18 = v102 - v17;
  v108 = *(v10 + 56);
  v109 = v10 + 56;
  v108(v102 - v17, 1, 1, AssociatedTypeWitness);
  v110 = v18;
  Gliss.Coordinator.queuedItem.setter(v18);
  v118 = v5;
  Gliss.Coordinator.item.getter(v15);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v113 = v10;
  v21 = *(v10 + 8);
  v116 = v15;
  result = v21(v15, AssociatedTypeWitness);
  if ((v20 & 1) == 0)
  {
    v102[1] = AssociatedConformanceWitness;
    v106 = v8;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    v24 = __swift_project_value_buffer(v23, static Gliss.logger);
    v26 = v113 + 16;
    v25 = *(v113 + 16);
    v25(v13, a1, AssociatedTypeWitness);
    v119 = v24;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    v29 = os_log_type_enabled(v27, v28);
    v107 = v7;
    v105 = a1;
    v104 = v26;
    v103 = v25;
    if (v29)
    {
      v30 = AssociatedTypeWitness;
      v31 = swift_slowAlloc();
      v102[0] = swift_slowAlloc();
      v122[0] = v102[0];
      *v31 = 136446210;
      v25(v116, v13, v30);
      v32 = String.init<A>(describing:)();
      v34 = v33;
      v21(v13, v30);
      v35 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v32, v34, v122);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v27, v28, "Attempting to set item=%{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v102[0]);

      AssociatedTypeWitness = v30;
    }

    else
    {

      v21(v13, AssociatedTypeWitness);
    }

    v36 = v118;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    v39 = os_log_type_enabled(v37, v38);
    v40 = v112;
    v41 = v114;
    if (v39)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v122[0] = v43;
      *v42 = 136446210;
      Gliss.Coordinator.item.getter(v116);
      v44 = String.init<A>(describing:)();
      v46 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v44, v45, v122);

      *(v42 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v37, v38, "  Current Item=%{public}s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v43);
    }

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v122[0] = v50;
      *v49 = 136446210;
      LOBYTE(v121[0]) = v115;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore5GlissO9DirectionOSgMd);
      v51 = String.init<A>(describing:)();
      v53 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v51, v52, v122);

      *(v49 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v47, v48, "  Direction=%{public}s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v50);
    }

    v54 = v117;
    outlined copy of Gliss.Animation?(v117, v41, v40);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    outlined consume of Gliss.Animation?(v54, v41, v40);
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v121[0] = v58;
      *v57 = 136446210;
      v122[0] = v54;
      v122[1] = v41;
      v123 = v40;
      outlined copy of Gliss.Animation?(v54, v41, v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore5GlissO9AnimationOSgMd);
      v59 = String.init<A>(describing:)();
      v61 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v59, v60, v121);

      *(v57 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v55, v56, "  Animation=%{public}s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v58);
    }

    v62 = v105;
    v63 = *(v36 + *((swift_isaMask & *v36) + 0x88));
    if (v63 && (v64 = *(*v63 + 128), swift_beginAccess(), *(v63 + v64)))
    {

      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v122[0] = v118;
        *v67 = 136446210;
        v120 = v63;
        type metadata accessor for Gliss.Transition();
        swift_getWitnessTable();
        v68 = dispatch thunk of CustomStringConvertible.description.getter();
        v70 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v68, v69, v122);

        *(v67 + 4) = v70;
        _os_log_impl(&_mh_execute_header, v65, v66, "  Ongoing Transition=%{public}s", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v118);
      }

      v71 = v103;
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&_mh_execute_header, v72, v73, "  ⏳ Queueing item until ongoing transition completes", v74, 2u);
      }

      v75 = v110;
      v71(v110, v62, AssociatedTypeWitness);
      v108(v75, 0, 1, AssociatedTypeWitness);
      Gliss.Coordinator.queuedItem.setter(v75);
      v76 = v116;
      v71(v116, v62, AssociatedTypeWitness);
      v77 = v113;
      v78 = (*(v113 + 80) + 32) & ~*(v113 + 80);
      v79 = (v78 + v111 + 7) & 0xFFFFFFFFFFFFFFF8;
      v80 = (v78 + v111 + 23) & 0xFFFFFFFFFFFFFFF8;
      v81 = swift_allocObject();
      v82 = v107;
      *(v81 + 16) = v106;
      *(v81 + 24) = v82;
      (*(v77 + 32))(v81 + v78, v76, AssociatedTypeWitness);
      v83 = v81 + v79;
      *v83 = v36;
      *(v83 + 8) = v115;
      v84 = v81 + v80;
      v85 = v117;
      v86 = v114;
      *v84 = v117;
      *(v84 + 8) = v86;
      *(v84 + 16) = v40;
      v87 = v36;
      outlined copy of Gliss.Animation?(v85, v86, v40);
      Gliss.Transition.addCompletion(_:)(partial apply for closure #1 in Gliss.Coordinator.setItem(_:animationDirection:animation:), v81);
    }

    else
    {
      v88 = Gliss.Coordinator.transition(for:direction:)(v62, v115);
      v89 = v117;
      if (v40 >= 0xFEu)
      {
        v90 = 0;
      }

      else
      {
        v90 = v117;
      }

      if (v40 >= 0xFEu)
      {
        v91 = 0;
      }

      else
      {
        v91 = v41;
      }

      if (v40 >= 0xFEu)
      {
        v92 = -64;
      }

      else
      {
        v92 = v40;
      }

      v93 = v88 + *(*v88 + 136);
      v94 = *v93;
      v95 = *(v93 + 8);
      *v93 = v90;
      *(v93 + 8) = v91;
      v96 = *(v93 + 16);
      *(v93 + 16) = v92;
      outlined copy of Gliss.Animation?(v89, v41, v40);
      outlined consume of Gliss.Animation(v94, v95, v96);
      Gliss.Coordinator.begin(_:)(v88);
      v97 = v116;
      v103(v116, v62, AssociatedTypeWitness);
      Gliss.Coordinator._item.setter(v97);
      v98 = *((swift_isaMask & *v36) + 0x70);
      v99 = swift_beginAccess();
      v100 = *(v36 + v98);
      __chkstk_darwin(v99);
      v101 = v107;
      v102[-4] = v106;
      v102[-3] = v101;
      v102[-2] = v62;
      v102[-1] = v88;

      specialized Sequence.forEach(_:)(partial apply for closure #2 in Gliss.Coordinator.setItem(_:animationDirection:animation:), &v102[-6], v100);

      Gliss.Coordinator.end(_:animated:)(v88, v40 < 0xFEu);
    }
  }

  return result;
}

void closure #1 in Gliss.Coordinator.setItem(_:animationDirection:animation:)(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned int a8)
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
  v11 = __chkstk_darwin(TupleTypeMetadata2);
  v13 = &v68 - v12;
  v88 = v10;
  v80 = *(v10 - 8);
  v14 = __chkstk_darwin(v11);
  v70 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v68 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v68 - v20;
  v22 = __chkstk_darwin(v19);
  v85 = &v68 - v23;
  v24 = *(v9 - 8);
  v25 = __chkstk_darwin(v22);
  v79 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v68 - v27;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v82 = v13;
  v29 = type metadata accessor for Logger();
  v30 = __swift_project_value_buffer(v29, static Gliss.logger);
  v31 = *(v24 + 16);
  v83 = a3;
  v31(v28, a3, v9);
  v78 = v30;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  v34 = os_log_type_enabled(v32, v33);
  v84 = v24;
  v76 = v18;
  v81 = v21;
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
    v40 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v37, v39, v89);

    *(v35 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v32, v33, "⌛️ Dequeuing item=%{public}s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    v24 = v84;

    v21 = v81;
  }

  else
  {

    v75 = *(v24 + 8);
    v75(v28, v9);
  }

  v41 = v85;
  Gliss.Coordinator.queuedItem.getter(v85);
  v31(v21, v83, v9);
  (*(v24 + 56))(v21, 0, 1, v9);
  v42 = *(TupleTypeMetadata2 + 48);
  v43 = *(v80 + 16);
  v44 = v24;
  v45 = v80;
  v46 = v82;
  v47 = v88;
  v43(v82, v41, v88);
  v43(&v46[v42], v21, v47);
  v48 = *(v44 + 48);
  if (v48(v46, 1, v9) == 1)
  {
    v49 = *(v45 + 8);
    v50 = v21;
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
    Gliss.Coordinator.queuedItem.getter(v70);
    v60 = String.init<A>(describing:)();
    v62 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v60, v61, v89);

    *(v58 + 4) = v62;
    _os_log_impl(&_mh_execute_header, v56, v57, "  ⌛️❌ Item no longer matches queued item=%{public}s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v59);
  }
}

id Gliss.Coordinator.setNeedsLayout()(SEL *a1)
{
  v3 = *((swift_isaMask & *v1) + 0x70);
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);

  if (!v5)
  {
  }

  v7 = 0;
  v8 = (v4 + 32);
  while (v7 < *(v4 + 16))
  {
    ++v7;
    v9 = *v8;
    v8 += 2;
    result = [v9 *a1];
    if (v5 == v7)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t Gliss.Coordinator.transition.didset(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v32[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  __chkstk_darwin(v6);
  v8 = &v32[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v10 = __chkstk_darwin(v9 - 8);
  v37 = &v32[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v10);
  v14 = &v32[-v13];
  result = __chkstk_darwin(v12);
  v17 = &v32[-v16];
  if (a1)
  {
    v34 = v5;
    v18 = v3;
    v19 = *(v3 + 16);
    v36 = a1;
    v19(&v32[-v16], a1 + direct field offset for Gliss.Transition.id, v2);
    v35 = v18;
    v20 = *(v18 + 56);
    v21 = 1;
    v20(v17, 0, 1, v2);
    v22 = *(v38 + *((swift_isaMask & *v38) + 0x88));
    if (v22)
    {
      v19(v14, v22 + direct field offset for Gliss.Transition.id, v2);
      v21 = 0;
    }

    v20(v14, v21, 1, v2);
    v23 = *(v6 + 48);
    outlined init with copy of UUID?(v17, v8);
    outlined init with copy of UUID?(v14, &v8[v23]);
    v24 = v35;
    v25 = *(v35 + 48);
    if (v25(v8, 1, v2) == 1)
    {
      v26 = v36;

      outlined destroy of TaskPriority?(v14, &_s10Foundation4UUIDVSgMd);
      outlined destroy of TaskPriority?(v17, &_s10Foundation4UUIDVSgMd);
      v27 = v26;
      if (v25(&v8[v23], 1, v2) == 1)
      {
        outlined destroy of TaskPriority?(v8, &_s10Foundation4UUIDVSgMd);
      }
    }

    else
    {
      v28 = v37;
      outlined init with copy of UUID?(v8, v37);
      if (v25(&v8[v23], 1, v2) != 1)
      {
        v30 = v34;
        (*(v24 + 32))(v34, &v8[v23], v2);
        lazy protocol witness table accessor for type UUID and conformance UUID();
        v27 = v36;

        v33 = dispatch thunk of static Equatable.== infix(_:_:)();
        v31 = *(v24 + 8);
        v31(v30, v2);
        outlined destroy of TaskPriority?(v14, &_s10Foundation4UUIDVSgMd);
        outlined destroy of TaskPriority?(v17, &_s10Foundation4UUIDVSgMd);
        v31(v37, v2);
        outlined destroy of TaskPriority?(v8, &_s10Foundation4UUIDVSgMd);
        if (v33)
        {
        }

LABEL_10:
        v29 = *(*v27 + 128);
        swift_beginAccess();
        if (*(v27 + v29) <= 2u)
        {
          Gliss.Coordinator.cancel(_:animated:)(v27, 0);
        }
      }

      v27 = v36;

      outlined destroy of TaskPriority?(v14, &_s10Foundation4UUIDVSgMd);
      outlined destroy of TaskPriority?(v17, &_s10Foundation4UUIDVSgMd);
      (*(v24 + 8))(v28, v2);
    }

    outlined destroy of TaskPriority?(v8, &_s10Foundation4UUIDVSg_ADtMd);
    goto LABEL_10;
  }

  return result;
}

uint64_t Gliss.Coordinator.transition.setter(uint64_t a1)
{
  specialized Gliss.Coordinator.transition.setter(a1);
}

id Gliss.Coordinator.completedTransitionFeedbackGenerator.getter()
{
  v1 = *((swift_isaMask & *v0) + 0x98);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    Gliss.Coordinator.gestureConfiguration.getter(v9);
    v4 = v9[0];
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v9[1]);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v9[3]);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v9[5]);
    v5 = [objc_opt_self() feedbackGeneratorWithStyle:1 forView:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id Gliss.Coordinator.cancelledTransitionFeedbackGenerator.getter()
{
  v1 = *((swift_isaMask & *v0) + 0xA0);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    Gliss.Coordinator.gestureConfiguration.getter(v9);
    v4 = v9[0];
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v9[1]);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v9[3]);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v9[5]);
    v5 = [objc_opt_self() feedbackGeneratorWithStyle:3 forView:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id Gliss.Coordinator.errorFeedbackGenerator.getter()
{
  v1 = *((swift_isaMask & *v0) + 0xA8);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    Gliss.Coordinator.gestureConfiguration.getter(v9);
    v4 = v9[0];
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v9[1]);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v9[3]);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v9[5]);
    v5 = [objc_opt_self() feedbackGeneratorForView:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t Gliss.Coordinator.transition(for:direction:)(uint64_t a1, int a2)
{
  v3 = v2;
  v102 = a1;
  v5 = *v2;
  v6 = swift_isaMask;
  v7 = *((swift_isaMask & *v2) + 0x58);
  v100 = *((swift_isaMask & *v2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v99 = type metadata accessor for Optional();
  v95 = *(v99 - 8);
  v9 = __chkstk_darwin(v99);
  v92 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v91 = &v86 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v86 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v86 - v17;
  v101 = *(AssociatedTypeWitness - 8);
  v19 = __chkstk_darwin(v16);
  v98 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v94 = &v86 - v22;
  v23 = __chkstk_darwin(v21);
  v97 = &v86 - v24;
  v25 = __chkstk_darwin(v23);
  v96 = &v86 - v26;
  __chkstk_darwin(v25);
  v28 = &v86 - v27;
  v29 = *(v3 + *((v6 & v5) + 0x88));
  v93 = a2;
  if (v29)
  {
    v30 = *(*v29 + 128);
    swift_beginAccess();
    if (*(v29 + v30) <= 2u)
    {
      v87 = v7;
      v31 = *(*v29 + 112);
      swift_beginAccess();
      v32 = v95;
      v33 = *(v95 + 16);
      v90 = v31;
      v89 = v33;
      v33(v18, v29 + v31, v99);
      v34 = v101;
      v88 = *(v101 + 48);
      if (v88(v18, 1, AssociatedTypeWitness) == 1)
      {
        v35 = *(v32 + 8);

        v35(v18, v99);
      }

      else
      {
        (*(v34 + 32))(v28, v18, AssociatedTypeWitness);
        swift_getAssociatedConformanceWitness();

        v36 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v34 + 8))(v28, AssociatedTypeWitness);
        if (v36)
        {
          return v29;
        }
      }

      v89(v15, v29 + v90, v99);
      if (v88(v15, 1, AssociatedTypeWitness) == 1)
      {
        (*(v95 + 8))(v15, v99);
        v37 = *(*v29 + 104);
        swift_beginAccess();
        v38 = v101;
        v39 = v96;
        (*(v101 + 16))(v96, v29 + v37, AssociatedTypeWitness);
        v7 = v87;
        swift_getAssociatedConformanceWitness();
        LOBYTE(v37) = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v38 + 8))(v39, AssociatedTypeWitness);
        if (v37)
        {
          return v29;
        }
      }

      else
      {

        (*(v95 + 8))(v15, v99);
        v7 = v87;
      }
    }
  }

  v88 = v3;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  v41 = __swift_project_value_buffer(v40, static Gliss.logger);
  v42 = v101;
  v43 = *(v101 + 16);
  v44 = v97;
  v43(v97, v102, AssociatedTypeWitness);
  v90 = v41;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  v47 = os_log_type_enabled(v45, v46);
  v89 = v43;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v87 = v7;
    v49 = v48;
    v50 = swift_slowAlloc();
    v105 = v50;
    *v49 = 136446210;
    v43(v96, v44, AssociatedTypeWitness);
    v51 = String.init<A>(describing:)();
    v53 = v52;
    v97 = *(v101 + 8);
    (v97)(v44, AssociatedTypeWitness);
    v54 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v51, v53, &v105);
    v55 = v87;

    *(v49 + 4) = v54;
    v42 = v101;
    _os_log_impl(&_mh_execute_header, v45, v46, "Creating transition for item=%{public}s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v50);
  }

  else
  {
    v55 = v7;

    v97 = *(v42 + 8);
    (v97)(v44, AssociatedTypeWitness);
  }

  v56 = v94;
  v57 = v95;
  v58 = v88;
  v59 = *(v88 + *((swift_isaMask & *v88) + 0x88));
  if (!v59)
  {
    v62 = v91;
    (*(v42 + 56))(v91, 1, 1, AssociatedTypeWitness);
    v63 = v55;
    goto LABEL_19;
  }

  v60 = *(*v59 + 112);
  swift_beginAccess();
  v61 = v59 + v60;
  v62 = v91;
  (*(v57 + 16))(v91, v61, v99);
  v63 = v55;
  if ((*(v42 + 48))(v62, 1, AssociatedTypeWitness) == 1)
  {
LABEL_19:
    Gliss.Coordinator.item.getter(v56);
    v65 = (*(v42 + 48))(v62, 1, AssociatedTypeWitness);
    v64 = v89;
    if (v65 != 1)
    {
      (*(v57 + 8))(v62, v99);
    }

    v64(v98, v56, AssociatedTypeWitness);
    goto LABEL_22;
  }

  (*(v42 + 32))(v56, v62, AssociatedTypeWitness);
  v64 = v89;
  v89(v98, v56, AssociatedTypeWitness);
LABEL_22:
  v66 = v96;
  Gliss.Coordinator.item.getter(v96);
  swift_getAssociatedConformanceWitness();
  v67 = dispatch thunk of static Equatable.== infix(_:_:)();
  v101 = v42 + 8;
  (v97)(v66, AssociatedTypeWitness);
  if (v67)
  {
    v68 = 1;
    v69 = v92;
  }

  else
  {
    v69 = v92;
    v64(v92, v102, AssociatedTypeWitness);
    v68 = 0;
  }

  (*(v42 + 56))(v69, v68, 1, AssociatedTypeWitness);
  type metadata accessor for Gliss.Transition();
  v70 = v69;
  v71 = *((swift_isaMask & *v58) + 0x70);
  v72 = swift_beginAccess();
  v73 = *(v58 + v71);
  __chkstk_darwin(v72);
  *(&v86 - 4) = v100;
  *(&v86 - 3) = v63;
  *(&v86 - 2) = v102;
  v74 = v93;
  *(&v86 - 8) = v93;

  v75 = specialized Sequence.reduce<A>(into:_:)(_swiftEmptyDictionarySingleton, partial apply for closure #1 in Gliss.Coordinator.transition(for:direction:), (&v86 - 6), v73);

  v29 = Gliss.Transition.__allocating_init(from:to:progression:contexts:)(v98, v70, v74, v75, 0.0);

  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = v56;
    v80 = swift_slowAlloc();
    v103 = v29;
    v104 = v80;
    *v78 = 136446210;
    swift_getWitnessTable();
    v81 = dispatch thunk of CustomStringConvertible.description.getter();
    v83 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v81, v82, &v104);

    *(v78 + 4) = v83;
    _os_log_impl(&_mh_execute_header, v76, v77, "   Created Transition=%{public}s", v78, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v80);

    v84 = v79;
  }

  else
  {

    v84 = v56;
  }

  (v97)(v84, AssociatedTypeWitness);
  return v29;
}

void closure #1 in Gliss.Coordinator.transition(for:direction:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  ObjectType = swift_getObjectType();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = v6;
  Gliss.CoordinatedView._transitionContext<A>(to:direction:)(a3, a4, ObjectType, AssociatedTypeWitness, v7, v11);
  specialized Dictionary.subscript.setter(v11, v10);
}

void Gliss.Coordinator.begin(_:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for logger != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Gliss.logger);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v24[0] = v8;
      *v7 = 136446210;
      type metadata accessor for Gliss.Transition();
      swift_getWitnessTable();
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v11 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v9, v10, v24);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Begin or Enqueue Transition=%{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
    }

    Gliss.Transition.state.setter(2);

    specialized Gliss.Coordinator.transition.setter(v12);

    v13 = *((swift_isaMask & *v2) + 0x70);
    swift_beginAccess();
    v14 = *(v2 + v13);
    v15 = *(v14 + 16);

    if (!v15)
    {
      break;
    }

    v16 = 0;
    v17 = (v14 + 40);
    while (v16 < *(v14 + 16))
    {
      ++v16;
      v18 = *v17;
      v19 = *(v17 - 1);
      ObjectType = swift_getObjectType();
      Gliss.CoordinatedView._transitionWillBegin<A>(_:)(a1, ObjectType, v18);

      v17 += 2;
      if (v15 == v16)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_12:
    swift_once();
  }

LABEL_8:

  Gliss.Coordinator.layoutIfNeeded()();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "   Transition Started!", v23, 2u);
  }
}

void Gliss.Coordinator.cancel(_:animated:)(uint64_t a1, char a2)
{
  v3 = v2;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Gliss.logger);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v55[0] = swift_slowAlloc();
    *v9 = 136446466;
    aBlock = a1;
    type metadata accessor for Gliss.Transition();
    swift_getWitnessTable();
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v10, v11, v55);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    if (a2)
    {
      v13 = 0x6574616D696E6128;
    }

    else
    {
      v13 = 0;
    }

    if (a2)
    {
      v14 = 0xEA00000000002964;
    }

    else
    {
      v14 = 0xE000000000000000;
    }

    v15 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v13, v14, v55);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "Attempting to cancel transition=%{public}s %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v16 = *(*a1 + 128);
  swift_beginAccess();
  if (*(a1 + v16) == 2)
  {
    Gliss.Transition.state.setter(4);
    Gliss.Coordinator.setNeedsLayout()();
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = a2 & 1;
    *(v17 + 32) = v3;
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = v3;
    if (a2)
    {
      v19 = direct field offset for Gliss.Transition.id;
      v20 = *((swift_isaMask & *v3) + 0x90);
      swift_beginAccess();
      v21 = *(v3 + v20);
      v22 = *(v21 + 16);
      swift_retain_n();
      v23 = v3;
      if (v22)
      {

        v24 = specialized __RawDictionaryStorage.find<A>(_:)(a1 + v19);
        if (v25)
        {
          v26 = *(*(v21 + 56) + 8 * v24);

          [v26 stopAnimation:0];
        }

        else
        {
        }
      }

      v31 = a1 + *(*a1 + 136);
      v47 = v19;
      v32 = *v31;
      v33 = *(v31 + 8);
      v34 = *(v31 + 16);
      Gliss.Coordinator.gestureConfiguration.getter(v55);
      v46 = v23;
      v36 = v55[0];
      v35 = v55[1];
      outlined copy of Gliss.Animation(v32, v33, v34);
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v35);
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v55[3]);
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v55[5]);
      v37 = Gliss.Animation.resolvedAnimator<A>(for:in:)(a1, v36, v32, v33, v34);

      outlined consume of Gliss.Animation(v32, v33, v34);
      v38 = swift_allocObject();
      *(v38 + 16) = partial apply for closure #1 in Gliss.Coordinator.cancel(_:animated:);
      *(v38 + 24) = v17;
      v53 = partial apply for closure #2 in ActionMenuView.body.getter;
      v54 = v38;
      aBlock = _NSConcreteStackBlock;
      v50 = 1107296256;
      v51 = thunk for @escaping @callee_guaranteed () -> ();
      v52 = &block_descriptor_21;
      v39 = _Block_copy(&aBlock);

      [v37 addAnimations:v39];
      _Block_release(v39);
      v40 = swift_allocObject();
      v40[2] = partial apply for closure #2 in Gliss.Coordinator.cancel(_:animated:);
      v40[3] = v18;
      v40[4] = v46;
      v40[5] = a1;
      v53 = partial apply for closure #4 in Gliss.Coordinator.cancel(_:animated:);
      v54 = v40;
      aBlock = _NSConcreteStackBlock;
      v50 = 1107296256;
      v51 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
      v52 = &block_descriptor_30_0;
      v41 = _Block_copy(&aBlock);

      v42 = v46;

      [v37 addCompletion:v41];
      _Block_release(v41);
      [v37 startAnimation];
      v43 = *((swift_isaMask & *v42) + 0x90);
      swift_beginAccess();
      v44 = v37;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = *(v42 + v43);
      *(v42 + v43) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v44, a1 + v47, isUniquelyReferenced_nonNull_native);
      *(v42 + v43) = v48;
      swift_endAccess();
    }

    else
    {
      swift_retain_n();
      v30 = v3;
      closure #1 in Gliss.Coordinator.cancel(_:animated:)(a1, 0, 0.0);
      closure #2 in Gliss.Coordinator.cancel(_:animated:)(a1, v30);
    }
  }

  else
  {
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "   🫷Ignored (Transition Not Active)", v29, 2u);
    }
  }
}

uint64_t closure #2 in Gliss.Coordinator.cancel(_:animated:)(uint64_t a1, void *a2)
{
  v60 = *a1;
  v3 = &swift_isaMask;
  v4 = swift_isaMask & *a2;
  v62 = a2;
  v59 = v4;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v57 = v5;
  v58 = v6;
  __chkstk_darwin(v5);
  v54 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  __chkstk_darwin(v8);
  v61 = &v54 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v54 - v15;
  __chkstk_darwin(v14);
  v18 = (&v54 - v17);
  Gliss.Transition.state.setter(6);
  if (one-time initialization token for logger != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Gliss.logger);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    v22 = os_log_type_enabled(v20, v21);
    v55 = v13;
    v56 = v8;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v64[0] = v24;
      *v23 = 136446210;
      v63 = a1;
      type metadata accessor for Gliss.Transition();
      swift_getWitnessTable();
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v25, v26, v64);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "❎ Cancelled transition=%{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);

      v3 = &swift_isaMask;
    }

    v28 = *(v62 + *((*v3 & *v62) + 0x88));
    v30 = v57;
    v29 = v58;
    if (v28)
    {
      v31 = *(v58 + 2);
      v31(v18, v28 + direct field offset for Gliss.Transition.id, v57);
      v32 = *(v29 + 56);
      v32(v18, 0, 1, v30);
    }

    else
    {
      v32 = *(v58 + 7);
      v32(v18, 1, 1, v57);
      v31 = *(v29 + 16);
    }

    v31(v16, a1 + direct field offset for Gliss.Transition.id, v30);
    v32(v16, 0, 1, v30);
    v33 = v56[12];
    v34 = v61;
    outlined init with copy of UUID?(v18, v61);
    outlined init with copy of UUID?(v16, v34 + v33);
    v35 = *(v29 + 48);
    if (v35(v34, 1, v30) == 1)
    {
      outlined destroy of TaskPriority?(v16, &_s10Foundation4UUIDVSgMd);
      v36 = v61;
      outlined destroy of TaskPriority?(v18, &_s10Foundation4UUIDVSgMd);
      v8 = &swift_isaMask;
      if (v35(v36 + v33, 1, v30) != 1)
      {
        goto LABEL_12;
      }

      outlined destroy of TaskPriority?(v36, &_s10Foundation4UUIDVSgMd);
      v37 = v59;
LABEL_14:
      specialized Gliss.Coordinator.transition.setter(0);
      goto LABEL_15;
    }

    v58 = v16;
    v38 = v55;
    outlined init with copy of UUID?(v34, v55);
    if (v35(v34 + v33, 1, v30) == 1)
    {
      v39 = v29;
      outlined destroy of TaskPriority?(v58, &_s10Foundation4UUIDVSgMd);
      v36 = v61;
      outlined destroy of TaskPriority?(v18, &_s10Foundation4UUIDVSgMd);
      (*(v39 + 8))(v38, v30);
      v8 = &swift_isaMask;
LABEL_12:
      outlined destroy of TaskPriority?(v36, &_s10Foundation4UUIDVSg_ADtMd);
      v37 = v59;
      goto LABEL_15;
    }

    v40 = v34 + v33;
    v41 = v34;
    v42 = v54;
    (*(v29 + 32))(v54, v40, v30);
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v43 = v29;
    v44 = dispatch thunk of static Equatable.== infix(_:_:)();
    v45 = *(v43 + 8);
    v45(v42, v30);
    outlined destroy of TaskPriority?(v58, &_s10Foundation4UUIDVSgMd);
    outlined destroy of TaskPriority?(v18, &_s10Foundation4UUIDVSgMd);
    v45(v38, v30);
    outlined destroy of TaskPriority?(v41, &_s10Foundation4UUIDVSgMd);
    v8 = &swift_isaMask;
    v37 = v59;
    if (v44)
    {
      goto LABEL_14;
    }

LABEL_15:
    v46 = *(*a1 + 152);
    v47 = swift_beginAccess();
    v64[0] = *(a1 + v46);
    __chkstk_darwin(v47);
    *(&v54 - 2) = *(v37 + 80);
    *(&v54 - 2) = a1;
    type metadata accessor for Gliss.Transition();
    swift_getFunctionTypeMetadata2();
    v3 = type metadata accessor for Array();

    swift_getWitnessTable();
    Sequence.forEach(_:)();

    v48 = v62;
    v49 = *((swift_isaMask & *v62) + 0x70);
    swift_beginAccess();
    v50 = *(v48 + v49);
    v13 = *(v50 + 16);

    if (!v13)
    {
    }

    v16 = 0;
    v18 = (v50 + 40);
    while (v16 < *(v50 + 16))
    {
      ++v16;
      v51 = *v18;
      v3 = *(v18 - 1);
      ObjectType = swift_getObjectType();
      Gliss.CoordinatedView._transitionDidEnd<A>(_:)(a1, ObjectType, v51);

      v18 += 2;
      if (v13 == v16)
      {
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void Gliss.Coordinator.end(_:animated:)(uint64_t a1, char a2)
{
  v3 = v2;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Gliss.logger);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v55[0] = swift_slowAlloc();
    *v9 = 136446466;
    aBlock = a1;
    type metadata accessor for Gliss.Transition();
    swift_getWitnessTable();
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v10, v11, v55);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    if (a2)
    {
      v13 = 0x6574616D696E6128;
    }

    else
    {
      v13 = 0;
    }

    if (a2)
    {
      v14 = 0xEA00000000002964;
    }

    else
    {
      v14 = 0xE000000000000000;
    }

    v15 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v13, v14, v55);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "Attempting to end transition=%{public}s %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v16 = *(*a1 + 128);
  swift_beginAccess();
  if (*(a1 + v16) == 2)
  {
    Gliss.Transition.state.setter(3);
    Gliss.Coordinator.setNeedsLayout()();
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = a2 & 1;
    *(v17 + 32) = v3;
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = v3;
    if (a2)
    {
      v19 = direct field offset for Gliss.Transition.id;
      v20 = *((swift_isaMask & *v3) + 0x90);
      swift_beginAccess();
      v21 = *(v3 + v20);
      v22 = *(v21 + 16);
      swift_retain_n();
      v23 = v3;
      if (v22)
      {

        v24 = specialized __RawDictionaryStorage.find<A>(_:)(a1 + v19);
        if (v25)
        {
          v26 = *(*(v21 + 56) + 8 * v24);

          [v26 stopAnimation:0];
        }

        else
        {
        }
      }

      v31 = a1 + *(*a1 + 136);
      v47 = v19;
      v32 = *v31;
      v33 = *(v31 + 8);
      v34 = *(v31 + 16);
      Gliss.Coordinator.gestureConfiguration.getter(v55);
      v46 = v23;
      v36 = v55[0];
      v35 = v55[1];
      outlined copy of Gliss.Animation(v32, v33, v34);
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v35);
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v55[3]);
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v55[5]);
      v37 = Gliss.Animation.resolvedAnimator<A>(for:in:)(a1, v36, v32, v33, v34);

      outlined consume of Gliss.Animation(v32, v33, v34);
      v38 = swift_allocObject();
      *(v38 + 16) = partial apply for closure #1 in Gliss.Coordinator.end(_:animated:);
      *(v38 + 24) = v17;
      v53 = partial apply for closure #3 in View.actionContextMenu<A>(title:menu:excluding:preview:previewAction:);
      v54 = v38;
      aBlock = _NSConcreteStackBlock;
      v50 = 1107296256;
      v51 = thunk for @escaping @callee_guaranteed () -> ();
      v52 = &block_descriptor_42_0;
      v39 = _Block_copy(&aBlock);

      [v37 addAnimations:v39];
      _Block_release(v39);
      v40 = swift_allocObject();
      v40[2] = partial apply for closure #2 in Gliss.Coordinator.end(_:animated:);
      v40[3] = v18;
      v40[4] = v46;
      v40[5] = a1;
      v53 = partial apply for closure #4 in Gliss.Coordinator.end(_:animated:);
      v54 = v40;
      aBlock = _NSConcreteStackBlock;
      v50 = 1107296256;
      v51 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
      v52 = &block_descriptor_48;
      v41 = _Block_copy(&aBlock);

      v42 = v46;

      [v37 addCompletion:v41];
      _Block_release(v41);
      [v37 startAnimation];
      v43 = *((swift_isaMask & *v42) + 0x90);
      swift_beginAccess();
      v44 = v37;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = *(v42 + v43);
      *(v42 + v43) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v44, a1 + v47, isUniquelyReferenced_nonNull_native);
      *(v42 + v43) = v48;
      swift_endAccess();
    }

    else
    {
      swift_retain_n();
      v30 = v3;
      closure #1 in Gliss.Coordinator.cancel(_:animated:)(a1, 0, 1.0);
      closure #2 in Gliss.Coordinator.end(_:animated:)(a1, v30);
    }
  }

  else
  {
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "   🫷Ignored (Transition Not Active)", v29, 2u);
    }
  }
}

id closure #1 in Gliss.Coordinator.cancel(_:animated:)(uint64_t a1, char a2, double a3)
{
  v5 = a1 + *(*a1 + 120);
  swift_beginAccess();
  *(v5 + 8) = a3;
  if (a2)
  {
    v6 = swift_beginAccess();
    __chkstk_darwin(v6);
    type metadata accessor for Gliss.Transition();
    swift_getFunctionTypeMetadata1();
    type metadata accessor for Array();

    swift_getWitnessTable();
    Sequence.forEach(_:)();
  }

  return Gliss.Coordinator.layoutIfNeeded()();
}

uint64_t closure #2 in Gliss.Coordinator.end(_:animated:)(uint64_t a1, void *a2)
{
  v60 = *a1;
  v3 = &swift_isaMask;
  v4 = swift_isaMask & *a2;
  v62 = a2;
  v59 = v4;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v57 = v5;
  v58 = v6;
  __chkstk_darwin(v5);
  v54 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  __chkstk_darwin(v8);
  v61 = &v54 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v54 - v15;
  __chkstk_darwin(v14);
  v18 = (&v54 - v17);
  Gliss.Transition.state.setter(5);
  if (one-time initialization token for logger != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Gliss.logger);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    v22 = os_log_type_enabled(v20, v21);
    v55 = v13;
    v56 = v8;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v64[0] = v24;
      *v23 = 136446210;
      v63 = a1;
      type metadata accessor for Gliss.Transition();
      swift_getWitnessTable();
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v25, v26, v64);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "✅ End of transition=%{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);

      v3 = &swift_isaMask;
    }

    v28 = *(v62 + *((*v3 & *v62) + 0x88));
    v30 = v57;
    v29 = v58;
    if (v28)
    {
      v31 = *(v58 + 2);
      v31(v18, v28 + direct field offset for Gliss.Transition.id, v57);
      v32 = *(v29 + 56);
      v32(v18, 0, 1, v30);
    }

    else
    {
      v32 = *(v58 + 7);
      v32(v18, 1, 1, v57);
      v31 = *(v29 + 16);
    }

    v31(v16, a1 + direct field offset for Gliss.Transition.id, v30);
    v32(v16, 0, 1, v30);
    v33 = v56[12];
    v34 = v61;
    outlined init with copy of UUID?(v18, v61);
    outlined init with copy of UUID?(v16, v34 + v33);
    v35 = *(v29 + 48);
    if (v35(v34, 1, v30) == 1)
    {
      outlined destroy of TaskPriority?(v16, &_s10Foundation4UUIDVSgMd);
      v36 = v61;
      outlined destroy of TaskPriority?(v18, &_s10Foundation4UUIDVSgMd);
      v8 = &swift_isaMask;
      if (v35(v36 + v33, 1, v30) != 1)
      {
        goto LABEL_12;
      }

      outlined destroy of TaskPriority?(v36, &_s10Foundation4UUIDVSgMd);
      v37 = v59;
LABEL_14:
      specialized Gliss.Coordinator.transition.setter(0);
      goto LABEL_15;
    }

    v58 = v16;
    v38 = v55;
    outlined init with copy of UUID?(v34, v55);
    if (v35(v34 + v33, 1, v30) == 1)
    {
      v39 = v29;
      outlined destroy of TaskPriority?(v58, &_s10Foundation4UUIDVSgMd);
      v36 = v61;
      outlined destroy of TaskPriority?(v18, &_s10Foundation4UUIDVSgMd);
      (*(v39 + 8))(v38, v30);
      v8 = &swift_isaMask;
LABEL_12:
      outlined destroy of TaskPriority?(v36, &_s10Foundation4UUIDVSg_ADtMd);
      v37 = v59;
      goto LABEL_15;
    }

    v40 = v34 + v33;
    v41 = v34;
    v42 = v54;
    (*(v29 + 32))(v54, v40, v30);
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v43 = v29;
    v44 = dispatch thunk of static Equatable.== infix(_:_:)();
    v45 = *(v43 + 8);
    v45(v42, v30);
    outlined destroy of TaskPriority?(v58, &_s10Foundation4UUIDVSgMd);
    outlined destroy of TaskPriority?(v18, &_s10Foundation4UUIDVSgMd);
    v45(v38, v30);
    outlined destroy of TaskPriority?(v41, &_s10Foundation4UUIDVSgMd);
    v8 = &swift_isaMask;
    v37 = v59;
    if (v44)
    {
      goto LABEL_14;
    }

LABEL_15:
    v46 = *(*a1 + 152);
    v47 = swift_beginAccess();
    v64[0] = *(a1 + v46);
    __chkstk_darwin(v47);
    *(&v54 - 2) = *(v37 + 80);
    *(&v54 - 2) = a1;
    type metadata accessor for Gliss.Transition();
    swift_getFunctionTypeMetadata2();
    v3 = type metadata accessor for Array();

    swift_getWitnessTable();
    Sequence.forEach(_:)();

    v48 = v62;
    v49 = *((swift_isaMask & *v62) + 0x70);
    swift_beginAccess();
    v50 = *(v48 + v49);
    v13 = *(v50 + 16);

    if (!v13)
    {
    }

    v16 = 0;
    v18 = (v50 + 40);
    while (v16 < *(v50 + 16))
    {
      ++v16;
      v51 = *v18;
      v3 = *(v18 - 1);
      ObjectType = swift_getObjectType();
      Gliss.CoordinatedView._transitionDidEnd<A>(_:)(a1, ObjectType, v51);

      v18 += 2;
      if (v13 == v16)
      {
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }
}

uint64_t closure #4 in Gliss.Coordinator.cancel(_:animated:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v9);
  (*(v8 + 16))(v11, a5 + direct field offset for Gliss.Transition.id, v7);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(0, v11);
  return swift_endAccess();
}

void Gliss.Coordinator.panGestureRecognizer.setter(uint64_t a1)
{
  v2 = *((swift_isaMask & *v1) + 0xB0);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

void Gliss.Coordinator.setupPanGestureRecognizer()()
{
  v1 = *((swift_isaMask & *v0) + 0xB0);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v16[0] = v0;
    v4 = objc_allocWithZone(UIPanGestureRecognizer);
    type metadata accessor for Gliss.Coordinator();
    v3 = [v4 initWithTarget:_bridgeAnythingToObjectiveC<A>(_:)() action:"handlePanGestureRecognizer:"];
    swift_unknownObjectRelease();
    v2 = 0;
  }

  v5 = v3;
  v6 = v2;
  [v5 setDelegate:v0];
  v7 = *((swift_isaMask & *v0) + 0xB0);
  v8 = *(v0 + v7);
  *(v0 + v7) = v5;
  v9 = v5;

  [v9 setAllowedScrollTypesMask:3];
  Gliss.Coordinator.gestureConfiguration.getter(v16);
  v10 = v16[0];
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v16[1]);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v16[3]);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v16[5]);
  v11 = [v9 view];
  if (v11)
  {
    v12 = v11;
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIView);
    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
      [v12 removeGestureRecognizer:v9];
    }
  }

  v13 = [v9 view];

  if (!v13 || (type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIView), v14 = v10, v15 = static NSObject.== infix(_:_:)(), v13, v14, (v15 & 1) == 0))
  {
    [v10 addGestureRecognizer:v9];
  }
}

void Gliss.Coordinator.handlePanGestureRecognizer(_:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = swift_isaMask;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  __chkstk_darwin(v6 - 8);
  v293 = v286 - v7;
  v8 = *((v5 & v4) + 0x50);
  v312 = *((v5 & v4) + 0x58);
  v309 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v310 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v294 = v286 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v297 = v286 - v14;
  v15 = __chkstk_darwin(v13);
  v296 = v286 - v16;
  v17 = __chkstk_darwin(v15);
  v298 = v286 - v18;
  v19 = __chkstk_darwin(v17);
  v301 = v286 - v20;
  v21 = __chkstk_darwin(v19);
  v300 = v286 - v22;
  v313 = AssociatedTypeWitness;
  isa = AssociatedTypeWitness[-1].isa;
  v24 = __chkstk_darwin(v21);
  v302 = v286 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v292 = v286 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = v286 - v29;
  v31 = __chkstk_darwin(v28);
  v311 = v286 - v32;
  v291 = v33;
  __chkstk_darwin(v31);
  v307 = v34;
  v308 = v286 - v35;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v37 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin(TupleTypeMetadata2);
  v39 = v286 - v38;
  v40 = Gliss.Coordinator.dataSource.getter();
  if (!v40)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    __swift_project_value_buffer(v57, static Gliss.logger);
    v313 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v313, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v313, v58, "No Data Source Set", v59, 2u);
    }

    v60 = v313;

    return;
  }

  v41 = v40;
  Gliss.Coordinator.gestureConfiguration.getter(v317);
  v42 = v317[0];
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v317[1]);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v317[3]);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v317[5]);
  v295 = a1;
  [a1 translationInView:v42];
  v44 = v43;
  v46 = v45;

  if (v44 == 0.0)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    __swift_project_value_buffer(v61, static Gliss.logger);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *&v65 = COERCE_DOUBLE(swift_slowAlloc());
      v314 = *&v65;
      *v64 = 136446210;
      v318 = v44;
      v319 = v46;
      type metadata accessor for CGPoint(0);
      v66 = String.init<A>(describing:)();
      v68 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v66, v67, &v314);

      *(v64 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v62, v63, "Unable to compute direction from gesture's translation %{public}s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v65);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    return;
  }

  v305 = isa;
  v47 = *(v2 + *((swift_isaMask & *v2) + 0x88));
  v299 = TupleTypeMetadata2;
  v303 = v2;
  v304 = v41;
  v306 = v39;
  if (v47)
  {
    v48 = *(*v47 + 120);
    swift_beginAccess();
    v49 = *(v47 + v48);
    v50 = v308;
    if (v49 == 2 || (((v44 >= 0.0) ^ v49) & 1) != 0)
    {

      v2 = v303;
      specialized Gliss.Coordinator.transition.setter(0);
      Gliss.Coordinator.item.getter(v50);
      v56 = v309;
      (v312[3].isa)(v306, &v306[*(TupleTypeMetadata2 + 48)], v50, v309);
    }

    else
    {
      v51 = *(*v47 + 104);
      swift_beginAccess();
      (v305[2])(v50, v47 + v51, v313);
      v52 = v37;
      v53 = v306;
      v54 = v312[3].isa;
      v55 = *(v299 + 48);

      v56 = v309;
      (v54)(v53, &v53[v55], v50);
      v37 = v52;
      TupleTypeMetadata2 = v299;

      v2 = v303;
    }
  }

  else
  {
    v50 = v308;
    Gliss.Coordinator.item.getter(v308);
    v69 = &v39[*(TupleTypeMetadata2 + 48)];
    v70 = v39;
    v56 = v309;
    (v312[3].isa)(v70, v69, v50, v309);
  }

  v71 = v305;
  v72 = v305[1];
  v288 = (v305 + 1);
  v289 = v37;
  v72(v50, v313);
  Gliss.Coordinator.gestureConfiguration.getter(&v318);
  v73 = v318;
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v319);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v320);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v321);
  v74 = [*&v73 effectiveUserInterfaceLayoutDirection];
  v290 = v72;
  v287 = v73;
  if (v44 < 0.0)
  {
    v75 = v311;
    if (!v74)
    {
      goto LABEL_30;
    }

    if (v74 != 1)
    {
LABEL_33:
      Gliss.Coordinator.item.getter(v30);
      goto LABEL_39;
    }

LABEL_26:
    v76 = v301;
    (*(v310 + 2))(v301, v306, v307);
    v77 = v71[6];
    if (v77(v76, 1, v313) != 1)
    {
      (v71[4])(v30, v76, v313);
      v2 = v303;
      v56 = v309;
      goto LABEL_39;
    }

    v78 = v303;
    Gliss.Coordinator.item.getter(v30);
    v79 = v77(v76, 1, v313);
    v2 = v78;
    v80 = v79 == 1;
    v81 = v76;
    v56 = v309;
    if (v80)
    {
      goto LABEL_39;
    }

    goto LABEL_32;
  }

  v75 = v311;
  if (!v74)
  {
    goto LABEL_26;
  }

  if (v74 != 1)
  {
    goto LABEL_33;
  }

LABEL_30:
  v82 = &v306[*(TupleTypeMetadata2 + 48)];
  v83 = v300;
  (*(v310 + 2))(v300, v82, v307);
  v84 = v71[6];
  if (v84(v83, 1, v313) != 1)
  {
    (v71[4])(v30, v83, v313);
    TupleTypeMetadata2 = v299;
    v2 = v303;
    goto LABEL_39;
  }

  v85 = v303;
  Gliss.Coordinator.item.getter(v30);
  v86 = v84(v83, 1, v313);
  v2 = v85;
  v80 = v86 == 1;
  v81 = v83;
  TupleTypeMetadata2 = v299;
  if (!v80)
  {
LABEL_32:
    (*(v310 + 1))(v81, v307);
  }

LABEL_39:
  v87 = v71[4];
  v87(v75, v30, v313);
  if ((v312[4].isa)(v75, v56))
  {
    v286[1] = v71 + 4;
    v88 = TupleTypeMetadata2;
    v89 = *&v287;
    [v295 velocityInView:v89];
    v91 = v90;
    v93 = v92;
    v94 = Gliss.Coordinator.transition(for:direction:)(v75, v44 >= 0.0);
    v302 = v89;
    [v89 bounds];
    Width = CGRectGetWidth(v323);
    v96 = v94 + *(*v94 + 168);
    swift_beginAccess();
    v97 = *(v96 + 32);
    v98 = v97 != 2;
    v99 = v98 & v97;
    if ((v98 & *(v96 + 33)) != 0)
    {
      v100 = 256;
    }

    else
    {
      v100 = 0;
    }

    *v96 = v44;
    *(v96 + 8) = v46;
    *(v96 + 16) = v91;
    *(v96 + 24) = v93;
    *(v96 + 32) = v100 | v99;
    v101 = *(*v94 + 128);
    swift_beginAccess();
    v102 = *(v94 + v101);
    v301 = v94;
    if (v102 <= 1)
    {
      v103 = v87;
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v104 = type metadata accessor for Logger();
      v300 = __swift_project_value_buffer(v104, static Gliss.logger);
      v105 = Logger.logObject.getter();
      v106 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        *v107 = 0;
        _os_log_impl(&_mh_execute_header, v105, v106, "🤏 Swipe Gesture Began", v107, 2u);
      }

      v108 = Logger.logObject.getter();
      v109 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        *&v111 = COERCE_DOUBLE(swift_slowAlloc());
        v314 = *&v111;
        *v110 = 136446210;
        LOBYTE(v316[0]) = v44 >= 0.0;
        v112 = String.init<A>(describing:)();
        v114 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v112, v113, &v314);

        *(v110 + 4) = v114;
        v94 = v301;
        _os_log_impl(&_mh_execute_header, v108, v109, "   Direction=%{public}s", v110, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v111);
      }

      v115 = Logger.logObject.getter();
      v116 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        *&v118 = COERCE_DOUBLE(swift_slowAlloc());
        v314 = *&v118;
        *v117 = 136446210;
        v316[0] = v94;
        swift_getAssociatedConformanceWitness();
        type metadata accessor for Gliss.Transition();
        swift_getWitnessTable();
        v119 = dispatch thunk of CustomStringConvertible.description.getter();
        v121 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v119, v120, &v314);

        *(v117 + 4) = v121;
        v94 = v301;
        _os_log_impl(&_mh_execute_header, v115, v116, "   Transition=%{public}s", v117, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v118);
      }

      v88 = v299;
      v87 = v103;
      v2 = v303;
      Gliss.Coordinator.begin(_:)(v94);
      v75 = v311;
    }

    v122 = [v295 state];
    if (v122 <= 2)
    {
      if (v122 < 2)
      {
        v123 = Gliss.Coordinator.completedTransitionFeedbackGenerator.getter();
        [v123 prepare];

        goto LABEL_69;
      }

      v148 = v290;
      if (v122 == 2)
      {
LABEL_69:
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v157 = type metadata accessor for Logger();
        v158 = __swift_project_value_buffer(v157, static Gliss.logger);
        v159 = Logger.logObject.getter();
        v160 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v159, v160))
        {
          v161 = swift_slowAlloc();
          *v161 = 0;
          _os_log_impl(&_mh_execute_header, v159, v160, "🤏 Swipe Gesture Updated", v161, 2u);
        }

        v162 = Logger.logObject.getter();
        v163 = static os_log_type_t.debug.getter();
        v164 = os_log_type_enabled(v162, v163);
        v312 = v158;
        if (v164)
        {
          v165 = swift_slowAlloc();
          v166 = swift_slowAlloc();
          v316[0] = v166;
          *v165 = 136446210;
          v314 = v44;
          v315 = v46;
          type metadata accessor for CGPoint(0);
          v167 = String.init<A>(describing:)();
          v169 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v167, v168, v316);

          *(v165 + 4) = v169;
          _os_log_impl(&_mh_execute_header, v162, v163, "   Translation=%{public}s", v165, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v166);
        }

        v170 = Logger.logObject.getter();
        v171 = static os_log_type_t.debug.getter();
        v172 = os_log_type_enabled(v170, v171);
        v173 = v302;
        v174 = v310;
        if (v172)
        {
          v175 = swift_slowAlloc();
          v176 = swift_slowAlloc();
          v316[0] = v176;
          *v175 = 136446210;
          v314 = v91;
          v315 = v93;
          type metadata accessor for CGPoint(0);
          v177 = String.init<A>(describing:)();
          v179 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v177, v178, v316);

          *(v175 + 4) = v179;
          _os_log_impl(&_mh_execute_header, v170, v171, "   Velocity=%{public}s", v175, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v176);
        }

        v180 = v298;
        [v173 bounds];
        v181 = fabs(v44);
        v182 = v181 * (1.0 / CGRectGetWidth(v324));
        v183 = *(*v94 + 112);
        swift_beginAccess();
        v184 = *(v174 + 2);
        v309 = v183;
        v185 = v94 + v183;
        v186 = v307;
        v187 = v184;
        v184(v180, v185, v307);
        v188 = v305[6];
        v305 += 6;
        v189 = v188;
        if (v188(v180, 1, v313) == 1)
        {

          v190 = *(v174 + 1);
          v190(v180, v186);
          v191 = v186;
          v192 = v187;
          v193 = v189;
        }

        else
        {
          v190 = *(v174 + 1);
          v190(v180, v186);
          v194 = v94 + *(*v94 + 120);
          swift_beginAccess();
          v195 = *(v194 + 8);
          *(v194 + 8) = v182;
          v196 = Logger.logObject.getter();
          v197 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v196, v197))
          {
            v198 = swift_slowAlloc();
            *v198 = 134349056;
            *(v198 + 4) = v182;
            _os_log_impl(&_mh_execute_header, v196, v197, "   Progression Value=%{public}f", v198, 0xCu);
          }

          v192 = v187;
          if (v195 >= 0.45)
          {
            v193 = v189;
            if (v195 <= 0.55)
            {
              v231 = v309;
              if (v182 < 0.45 || v182 > 0.55)
              {
                v279 = Gliss.Coordinator.completedTransitionFeedbackGenerator.getter();
                [v295 locationInView:v173];
                v281 = v280;
                v283 = v282;

                [v279 impactOccurredAtLocation:{v281, v283}];
                v285 = Gliss.Transition.gestureState.modify();
                if (*(v284 + 32) != 2)
                {
                  *(v284 + 32) = v182 >= 0.55;
                }

                (v285)(&v314, 0);
                v191 = v307;
              }

              else
              {

                v191 = v307;
              }

LABEL_110:
              if (v182 <= 1.0)
              {
                v233 = 0;
              }

              else
              {
                v232 = v296;
                v192(v296, &v301[v231], v191);
                v233 = v193(v232, 1, v313) != 1;
                v190(v232, v191);
              }

              v235 = Gliss.Transition.gestureState.modify();
              if (*(v234 + 32) != 2)
              {
                *(v234 + 33) = v233;
              }

              (v235)(&v314, 0);
              v236 = v301;
              v237 = v297;
              v192(v297, &v301[v231], v191);
              v238 = v236;
              LODWORD(v236) = v193(v237, 1, v313) == 1;
              v190(v237, v191);
              v239 = v289;
              v240 = v290;
              v241 = v299;
              v242 = v306;
              if (((v236 | v233) & 1) == 0)
              {
                goto LABEL_125;
              }

              v243 = v302;
              [v302 bounds];
              v244 = CGRectGetWidth(v325) * 0.2;
              v245 = 0.0;
              if (v233)
              {
                [v243 bounds];
                v245 = CGRectGetWidth(v326);
              }

              v246 = v244 * ((v181 - v245) / (v244 + v244 + v181 - v245));
              [v243 bounds];
              v247 = 1.0 / CGRectGetWidth(v327) * v246;
              if (v233)
              {
                v248 = &v238[*(*v238 + 120)];
                swift_beginAccess();
                *(v248 + 1) = v247 + 1.0;

                v249 = Logger.logObject.getter();
                v250 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v249, v250))
                {
                  v251 = swift_slowAlloc();
                  *v251 = 134349056;
                  *(v251 + 4) = *(v248 + 1);
                  v252 = "   Over-swiping Progression Value=%{public}f";
LABEL_123:
                  _os_log_impl(&_mh_execute_header, v249, v250, v252, v251, 0xCu);

                  v241 = v299;
                }
              }

              else
              {
                v253 = &v238[*(*v238 + 120)];
                swift_beginAccess();
                *(v253 + 1) = v247;

                v249 = Logger.logObject.getter();
                v250 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v249, v250))
                {
                  v251 = swift_slowAlloc();
                  *v251 = 134349056;
                  *(v251 + 4) = *(v253 + 1);
                  v252 = "   Eased Progression Value=%{public}f";
                  goto LABEL_123;
                }
              }

LABEL_125:
              Gliss.Coordinator.setNeedsLayout()();

              swift_unknownObjectRelease();

              v240(v311, v313);
              (*(v239 + 8))(v242, v241);
              return;
            }

            v191 = v307;
          }

          else
          {

            v191 = v307;
            v193 = v189;
          }
        }

        v231 = v309;
        goto LABEL_110;
      }

      goto LABEL_92;
    }

    v147 = v305;
    if (v122 != 3)
    {
      if (v122 == 4)
      {

        v148 = v290;
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v208 = type metadata accessor for Logger();
        __swift_project_value_buffer(v208, static Gliss.logger);
        v150 = Logger.logObject.getter();
        v151 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v150, v151))
        {
          goto LABEL_98;
        }

        v152 = swift_slowAlloc();
        *v152 = 0;
        v153 = "🤏❎ Swipe Gesture Cancelled";
      }

      else
      {
        v148 = v290;
        if (v122 != 5)
        {
LABEL_92:
          swift_unknownObjectRelease();

          v207 = v302;

LABEL_99:
          v148(v75, v313);
LABEL_100:
          (*(v289 + 8))(v306, v88);
          return;
        }

        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v149 = type metadata accessor for Logger();
        __swift_project_value_buffer(v149, static Gliss.logger);
        v150 = Logger.logObject.getter();
        v151 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v150, v151))
        {
LABEL_98:

          Gliss.Coordinator.cancel(_:animated:)(v94, 1);
          swift_unknownObjectRelease();

          goto LABEL_99;
        }

        v152 = swift_slowAlloc();
        *v152 = 0;
        v153 = "🤏❌ Swipe Gesture Failed";
      }

      _os_log_impl(&_mh_execute_header, v150, v151, v153, v152, 2u);
      v88 = v299;

      goto LABEL_98;
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v199 = type metadata accessor for Logger();
    __swift_project_value_buffer(v199, static Gliss.logger);
    v200 = Logger.logObject.getter();
    v201 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v200, v201))
    {
      v202 = swift_slowAlloc();
      *v202 = 0;
      _os_log_impl(&_mh_execute_header, v200, v201, "🤏✅ Swipe Gesture Ended", v202, 2u);
      v147 = v305;
      v2 = v303;
    }

    if (Width * 0.5 >= fabs(v91))
    {
      v203 = v94 + *(*v94 + 120);
      swift_beginAccess();
      if (*(v203 + 8) < 0.5)
      {

        v204 = Logger.logObject.getter();
        v205 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v204, v205))
        {
          v206 = swift_slowAlloc();
          *v206 = 0;
          _os_log_impl(&_mh_execute_header, v204, v205, "   Hasn't reached translation thresholds. Cancelling ❎", v206, 2u);
        }

        Gliss.Coordinator.cancel(_:animated:)(v94, 1);
        swift_unknownObjectRelease();

        v290(v75, v313);
        goto LABEL_139;
      }
    }

    if (v44 < 0.0)
    {
      v209 = v310;
      v210 = v294;
      if (v91 <= 0.0)
      {
LABEL_103:
        v211 = *(*v94 + 112);
        swift_beginAccess();
        v212 = v94 + v211;
        v213 = v307;
        (*(v209 + 2))(v210, v212, v307);
        if ((v147[6])(v210, 1, v313) == 1)
        {
          (*(v209 + 1))(v210, v213);
          v214 = Gliss.Coordinator.cancelledTransitionFeedbackGenerator.getter();
          [v214 prepare];

          v215 = *(v2 + *((swift_isaMask & *v2) + 0xA0));
          v216 = v302;
          [v295 locationInView:v302];
          v218 = v217;
          v220 = v219;

          [v215 impactOccurredWithIntensity:0.5 atLocation:{v218, v220}];
          Gliss.Coordinator.cancel(_:animated:)(v94, 1);
          v221 = specialized Gliss.Coordinator.transitionAnimators.getter();
          if (*(v221 + 16))
          {
            v222 = direct field offset for Gliss.Transition.id;

            v223 = specialized __RawDictionaryStorage.find<A>(_:)(v94 + v222);
            v224 = v290;
            if (v225)
            {
              v226 = *(*(v221 + 56) + 8 * v223);

              type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue);
              v227 = static OS_dispatch_queue.main.getter();
              [v226 duration];
              v228 = v224;
              v229 = swift_allocObject();
              *(v229 + 16) = v2;
              v230 = v2;
              OS_dispatch_queue.asyncAfter(_:block:)(partial apply for closure #2 in Gliss.Coordinator.handlePanGestureRecognizer(_:), v229);

              swift_unknownObjectRelease();

              v228(v75, v313);
LABEL_139:
              (*(v289 + 8))(v306, v299);
              return;
            }
          }

          else
          {

            v224 = v290;
          }

          swift_unknownObjectRelease();

          v224(v75, v313);
          goto LABEL_139;
        }

        v258 = v210;
        v259 = v302;

        v260 = v292;
        v261 = v258;
        v262 = v313;
        v87(v292, v261, v313);
        v263 = type metadata accessor for TaskPriority();
        (*(*(v263 - 8) + 56))(v293, 1, 1, v263);
        (v147[2])(v308, v260, v262);
        type metadata accessor for MainActor();
        v310 = v259;

        v264 = v304;
        swift_unknownObjectRetain();
        v305 = v2;
        v307 = v295;
        v303 = static MainActor.shared.getter();
        v265 = (*(v147 + 80) + 56) & ~*(v147 + 80);
        v266 = (v291 + v265 + 7) & 0xFFFFFFFFFFFFFFF8;
        v267 = (v266 + 15) & 0xFFFFFFFFFFFFFFF8;
        v268 = (v267 + 15) & 0xFFFFFFFFFFFFFFF8;
        v269 = v87;
        v270 = (v268 + 15) & 0xFFFFFFFFFFFFFFF8;
        v271 = swift_allocObject();
        v271[2] = v303;
        v271[3] = &protocol witness table for MainActor;
        v272 = v308;
        v273 = v312;
        v271[4] = v309;
        v271[5] = v273;
        v271[6] = v264;
        v274 = v271 + v265;
        v275 = v313;
        v269(v274, v272, v313);
        *(v271 + v266) = v305;
        *(v271 + v267) = v301;
        v276 = v310;
        *(v271 + v268) = v310;
        v277 = v271 + v270;
        *v277 = v91;
        *(v277 + 1) = v93;
        *(v271 + ((v270 + 23) & 0xFFFFFFFFFFFFFFF8)) = v307;
        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v293, &async function pointer to partial apply for closure #1 in Gliss.Coordinator.handlePanGestureRecognizer(_:), v271);

        swift_unknownObjectRelease();

        v278 = v290;
        v290(v292, v275);
        v278(v311, v275);
        goto LABEL_139;
      }
    }

    else
    {
      v209 = v310;
      v210 = v294;
      if (v91 >= 0.0)
      {
        goto LABEL_103;
      }
    }

    v254 = Logger.logObject.getter();
    v255 = static os_log_type_t.default.getter();
    v256 = os_log_type_enabled(v254, v255);
    v88 = v299;
    if (v256)
    {
      v257 = swift_slowAlloc();
      *v257 = 0;
      _os_log_impl(&_mh_execute_header, v254, v255, "   Going opposite direction. Cancelling ❎", v257, 2u);
      v88 = v299;
    }

    Gliss.Coordinator.cancel(_:animated:)(v94, 1);
    swift_unknownObjectRelease();

    v290(v75, v313);
    goto LABEL_100;
  }

  v124 = v306;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v125 = type metadata accessor for Logger();
  __swift_project_value_buffer(v125, static Gliss.logger);
  v126 = v71[2];
  v127 = v302;
  v128 = v75;
  v126(v302, v75, v313);
  v129 = Logger.logObject.getter();
  v130 = static os_log_type_t.default.getter();
  v131 = os_log_type_enabled(v129, v130);
  v132 = v289;
  if (v131)
  {
    v133 = swift_slowAlloc();
    v312 = v129;
    v134 = v133;
    *&v135 = COERCE_DOUBLE(swift_slowAlloc());
    v314 = *&v135;
    *v134 = 136446210;
    v136 = v313;
    v126(v308, v127, v313);
    v137 = String.init<A>(describing:)();
    v138 = v136;
    v139 = v132;
    v141 = v140;
    v142 = v127;
    v143 = v290;
    v290(v142, v138);
    v144 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v137, v141, &v314);

    *(v134 + 4) = v144;
    v145 = v130;
    v146 = v312;
    _os_log_impl(&_mh_execute_header, v312, v145, "DataSource doesn't allow swipe for item=%{public}s", v134, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v135);

    swift_unknownObjectRelease();
    v143(v311, v138);
    (*(v139 + 8))(v306, v299);
  }

  else
  {

    swift_unknownObjectRelease();
    v154 = v127;
    v155 = v313;
    v156 = v290;
    v290(v154, v313);
    v156(v128, v155);
    (*(v132 + 8))(v124, TupleTypeMetadata2);
  }
}

uint64_t closure #1 in Gliss.Coordinator.handlePanGestureRecognizer(_:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 112) = v21;
  *(v9 + 104) = a1;
  *(v9 + 88) = a8;
  *(v9 + 96) = a9;
  *(v9 + 72) = a6;
  *(v9 + 80) = a7;
  v11 = *a7;
  v12 = swift_isaMask;
  v13 = *(*a8 + 80);
  *(v9 + 120) = v13;
  *(v9 + 128) = *(v13 - 8);
  *(v9 + 136) = swift_task_alloc();
  *(v9 + 144) = type metadata accessor for MainActor();
  *(v9 + 152) = static MainActor.shared.getter();
  v14 = *((v12 & v11) + 0x58);
  *(v9 + 160) = v14;
  v15 = *(v14 + 40);
  v16 = *((v12 & v11) + 0x50);
  *(v9 + 168) = v16;
  v19 = (v15 + *v15);
  v17 = swift_task_alloc();
  *(v9 + 176) = v17;
  *v17 = v9;
  v17[1] = closure #1 in Gliss.Coordinator.handlePanGestureRecognizer(_:);

  return v19(a6, v16, v14);
}

uint64_t closure #1 in Gliss.Coordinator.handlePanGestureRecognizer(_:)()
{
  *(*v1 + 184) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = closure #1 in Gliss.Coordinator.handlePanGestureRecognizer(_:);
  }

  else
  {
    v4 = closure #1 in Gliss.Coordinator.handlePanGestureRecognizer(_:);
  }

  return _swift_task_switch(v4, v3, v2);
}

{
  v31 = v0;
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 72);
  v29 = *(v0 + 160);

  (*(v2 + 16))(v1, v6, v3);
  Gliss.Coordinator._item.setter(v1);
  v7 = *((swift_isaMask & *v5) + 0x70);
  swift_beginAccess();
  v8 = *(v5 + v7);
  v9 = swift_task_alloc();
  v9[1] = vextq_s8(v29, v29, 8uLL);
  v9[2].i64[0] = v6;
  v9[2].i64[1] = v4;

  specialized Sequence.forEach(_:)(partial apply for closure #1 in closure #1 in Gliss.Coordinator.handlePanGestureRecognizer(_:), v9, v8);

  Gliss.Coordinator.end(_:animated:)(v4, 1);
  v10 = v4 + *(*v4 + 168);
  swift_beginAccess();
  v11 = *(v10 + 32);
  if (v11 != 2 && (v11 & 1) == 0)
  {
    v12 = *(v0 + 112);
    v13 = *(v0 + 104);
    v14 = *(v0 + 96);
    [v14 bounds];
    v15 = fmax(fmin(fabs(v13) * (1.0 / (CGRectGetWidth(v33) * 4.0)), 1.0), 0.25);
    v16 = Gliss.Coordinator.completedTransitionFeedbackGenerator.getter();
    [v12 locationInView:v14];
    [v16 impactOccurredWithIntensity:v15 atLocation:{v17, v18}];

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Gliss.logger);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      *v22 = 136446210;
      v24 = Double.description.getter();
      v26 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v24, v25, &v30);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "   Feedback Intensity=%{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
    }
  }

  v27 = *(v0 + 8);

  return v27();
}

{
  v19 = v0;

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Gliss.logger);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[23];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136446210;
    v0[8] = v4;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v7 = String.init<A>(describing:)();
    v9 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v7, v8, &v18);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "   ❌ Failed to commit with error=%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  v10 = v0[14];
  v12 = v0[11];
  v11 = v0[12];
  v13 = v0[10];
  v14 = Gliss.Coordinator.errorFeedbackGenerator.getter();
  [v14 prepare];

  v15 = *(v13 + *((swift_isaMask & *v13) + 0xA8));
  [v10 locationInView:v11];
  [v15 notificationOccurred:2 atLocation:?];

  Gliss.Coordinator.cancel(_:animated:)(v12, 1);

  v16 = v0[1];

  return v16();
}

void @objc Gliss.Coordinator.handlePanGestureRecognizer(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  Gliss.Coordinator.handlePanGestureRecognizer(_:)(v4);
}

Swift::Bool __swiftcall Gliss.Coordinator.gestureRecognizerShouldBegin(_:)(UIGestureRecognizer a1)
{
  v2 = *(v1 + *((swift_isaMask & *v1) + 0xB0));
  if (!v2)
  {
    return 1;
  }

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSObject);
  v4 = v2;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {

    return 1;
  }

  v5 = [(objc_class *)a1.super.isa view];
  if (!v5)
  {

    return 0;
  }

  v6 = v5;
  [v4 velocityInView:v6];
  v8 = v7;
  v10 = v9;
  if (fabs(v9) < fabs(v7))
  {
    [(objc_class *)a1.super.isa locationInView:v6];
    v8 = v11;
    v10 = v12;

    Gliss.Coordinator.gestureConfiguration.getter(v56);
    v13 = v56[1];

    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v56[3]);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v56[5]);
    if (v13)
    {
      v14 = v13(v6);
      v15 = v14 + 56;
      v16 = -*(v14 + 16);
      v17 = -1;
      while (1)
      {
        if (v16 + v17 == -1)
        {
          outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v13);

          v20 = 0;
          goto LABEL_20;
        }

        if (++v17 >= *(v14 + 16))
        {
          break;
        }

        v18 = v15 + 32;
        v65.x = v8;
        v65.y = v10;
        v19 = CGRectContainsPoint(*(v15 - 24), v65);
        v15 = v18;
        if (v19)
        {
          outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v13);

          v20 = 1;
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_39;
    }

    [v6 bounds];
    v66.x = v8;
    v66.y = v10;
    v20 = CGRectContainsPoint(v67, v66);
LABEL_20:
    Gliss.Coordinator.gestureConfiguration.getter(v57);
    v30 = v58;
    v31 = v57[0];
    outlined copy of (@escaping @callee_guaranteed () -> ())?(v58);

    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v57[1]);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v30);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v59);
    if (v30)
    {
      v32 = v30(v6, v8, v10);
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v30);
      if (v20)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v32 = 1;
      if (v20)
      {
LABEL_22:
        if (v32)
        {
LABEL_23:

LABEL_37:
          return v20 & v32;
        }

LABEL_32:
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v47 = type metadata accessor for Logger();
        __swift_project_value_buffer(v47, static Gliss.logger);
        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v55 = v51;
          *v50 = 136446210;
          type metadata accessor for CGPoint(0);
          v52 = String.init<A>(describing:)();
          v54 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v52, v53, &v55);

          *(v50 + 4) = v54;
          _os_log_impl(&_mh_execute_header, v48, v49, "🤏🙂‍↔️ Swipe Gesture ignored: hit test not allowed at location %{public}s", v50, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v51);
        }

        goto LABEL_37;
      }
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Gliss.logger);
    v34 = v1;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v37 = 136446466;
      v60 = v8;
      v61 = v10;
      type metadata accessor for CGPoint(0);
      v38 = String.init<A>(describing:)();
      v40 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v38, v39, &v55);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2082;
      Gliss.Coordinator.gestureConfiguration.getter(&v60);
      v42 = v61;
      v41 = v62;

      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v63);
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v64);
      if (v42 != 0.0)
      {
        v43 = swift_allocObject();
        *(v43 + 16) = v42;
        *(v43 + 24) = v41;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo6CGRectVGSo6UIViewCcSgMd);
      v44 = String.init<A>(describing:)();
      v46 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v44, v45, &v55);

      *(v37 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v35, v36, "🤏🙂‍↔️ Swipe Gesture ignored: outside allowed areas %{public}s, %{public}s", v37, 0x16u);
      swift_arrayDestroy();
    }

    if (v32)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  if (one-time initialization token for logger != -1)
  {
LABEL_39:
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Gliss.logger);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v57[0] = v26;
    *v25 = 136446210;
    v60 = v8;
    v61 = v10;
    type metadata accessor for CGPoint(0);
    v27 = String.init<A>(describing:)();
    v29 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v27, v28, v57);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v23, v24, "🤏🙂‍↔️ Swipe Gesture ignored: horizontal velocity too low %{public}s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
  }

  return 0;
}

uint64_t @objc Gliss.Coordinator.gestureRecognizerShouldBegin(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = Gliss.Coordinator.gestureRecognizerShouldBegin(_:)(v4);

  return a1 & 1;
}

uint64_t @objc Gliss.Coordinator.gestureRecognizer(_:shouldRecognizeSimultaneouslyWith:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = specialized Gliss.Coordinator.gestureRecognizer(_:shouldRecognizeSimultaneouslyWith:)(v7);

  return v9 & 1;
}

id Gliss.Coordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Gliss.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void @objc Gliss.Coordinator.__ivar_destroyer(char *a1)
{
  swift_unknownObjectWeakDestroy();
  v2 = &a1[*((swift_isaMask & *a1) + 0x68)];
  v3 = *(v2 + 1);
  v4 = *(v2 + 3);
  v5 = *(v2 + 5);

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v3);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v4);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v5);

  v6 = *((swift_isaMask & *a1) + 0x78);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(&a1[v6], AssociatedTypeWitness);
  v8 = *((swift_isaMask & *a1) + 0x80);
  v9 = type metadata accessor for Optional();
  (*(*(v9 - 8) + 8))(&a1[v8], v9);

  v10 = *&a1[*((swift_isaMask & *a1) + 0xB0)];
}

void closure #1 in OSLogArguments.append(_:)(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

id specialized Gliss.Coordinator.init(item:dataSource:gestureConfiguration:coordinatedViews:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = swift_isaMask;
  swift_unknownObjectWeakInit();
  v9 = *((swift_isaMask & *v4) + 0x70);
  *&v4[v9] = _swiftEmptyArrayStorage;
  v10 = *((swift_isaMask & *v4) + 0x80);
  v27 = *((v8 & v7) + 0x58);
  v26 = *((v8 & v7) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  (*(v12 + 56))(&v4[v10], 1, 1, AssociatedTypeWitness);
  *&v4[*((swift_isaMask & *v4) + 0x88)] = 0;
  v13 = *((swift_isaMask & *v4) + 0x90);
  *&v4[v13] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_So22UIViewPropertyAnimatorCTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  *&v4[*((swift_isaMask & *v4) + 0x98)] = 0;
  *&v4[*((swift_isaMask & *v4) + 0xA0)] = 0;
  *&v4[*((swift_isaMask & *v4) + 0xA8)] = 0;
  *&v4[*((swift_isaMask & *v4) + 0xB0)] = 0;
  (*(v12 + 16))(&v4[*((swift_isaMask & *v4) + 0x78)], a1, AssociatedTypeWitness);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v14 = *a3;
  v15 = *(a3 + 8);
  v16 = *(a3 + 24);
  v25 = *(a3 + 40);
  v17 = *(a3 + 48);
  v18 = &v4[*((swift_isaMask & *v4) + 0x68)];
  v19 = *(a3 + 16);
  *v18 = *a3;
  *(v18 + 1) = v19;
  *(v18 + 2) = *(a3 + 32);
  *(v18 + 6) = v17;
  swift_beginAccess();
  *&v4[v9] = a4;
  v20 = v14;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v15);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v16);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v25);

  v30 = v26;
  v31 = v27;
  v32 = a1;
  specialized Sequence.forEach(_:)(partial apply for closure #1 in Gliss.Coordinator.init(item:dataSource:gestureConfiguration:coordinatedViews:), v29, a4);

  v21 = type metadata accessor for Gliss.Coordinator();
  v33.receiver = v4;
  v33.super_class = v21;
  v22 = objc_msgSendSuper2(&v33, "init");
  Gliss.Coordinator.setupPanGestureRecognizer()();

  return v22;
}

uint64_t sub_10013F3EC()
{

  return swift_deallocObject();
}

void outlined consume of Gliss.Animation?(id a1, uint64_t a2, char a3)
{
  if (a3 <= 0xFDu)
  {
    outlined consume of Gliss.Animation(a1, a2, a3);
  }
}

void outlined consume of Gliss.Animation(id a1, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) == 0x80)
  {
  }
}

id outlined copy of Gliss.Animation?(id result, uint64_t a2, char a3)
{
  if (a3 <= 0xFDu)
  {
    return outlined copy of Gliss.Animation(result, a2, a3);
  }

  return result;
}

id outlined copy of Gliss.Animation(id result, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) == 0x80)
  {
    return result;
  }

  return result;
}

uint64_t sub_10013F47C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  v7 = *(v0 + v6 + 16);
  if (v7 <= 0xFD)
  {
    outlined consume of Gliss.Animation(*(v0 + v6), *(v0 + v6 + 8), v7);
  }

  return swift_deallocObject();
}

void partial apply for closure #1 in Gliss.Coordinator.setItem(_:animationDirection:animation:)(uint64_t *a1, uint64_t a2)
{
  v3 = *(*(*a1 + 80) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  closure #1 in Gliss.Coordinator.setItem(_:animationDirection:animation:)(a1, a2, v2 + v4, *(v2 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed UIView) -> (@owned [CGRect])@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t specialized Gliss.Coordinator.transitionAnimators.getter()
{
  v1 = *((swift_isaMask & *v0) + 0x90);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t specialized Gliss.Coordinator.transition.setter(uint64_t a1)
{
  v2 = *((swift_isaMask & *v1) + 0x88);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;

  Gliss.Coordinator.transition.didset(v3);
}

uint64_t specialized Gliss.Coordinator.gestureRecognizer(_:shouldRecognizeSimultaneouslyWith:)(void *a1)
{
  Gliss.Coordinator.gestureConfiguration.getter(v18);

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v18[1]);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v18[3]);
  v2 = v19;
  if (!v19)
  {
    return 1;
  }

  v3 = v19(a1);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v2);
  if (v3)
  {
    return 1;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Gliss.logger);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136446210;
    v11 = v6;
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v13, v15, &v17);

    *(v9 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "🤏🙂‍↔️ Swipe Gesture ignored: conflicts with other gesture: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }

  return 0;
}

uint64_t type metadata completion function for Gliss.Coordinator()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t type metadata instantiation function for Gliss.Coordinator.GestureConfiguration()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for Gliss.Coordinator.GestureConfiguration(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for Gliss.Coordinator.GestureConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10013FB08()
{

  return swift_deallocObject();
}

void partial apply for closure #2 in Gliss.Coordinator.handlePanGestureRecognizer(_:)()
{
  v0 = Gliss.Coordinator.cancelledTransitionFeedbackGenerator.getter();
  [v0 impactOccurredWithIntensity:1.0 atLocation:{0.0, 0.0}];
}

uint64_t sub_10013FB9C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in Gliss.Coordinator.handlePanGestureRecognizer(_:)(uint64_t a1)
{
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v1 + v5);
  v11 = v1[6];
  v12 = *(v1 + v6);
  v13 = *(v1 + v7);
  v14 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in Gliss.Coordinator.handlePanGestureRecognizer(_:)(v14, a1, v8, v9, v11, v1 + v4, v10, v12, v13);
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

uint64_t partial apply for closure #2 in Gliss.Coordinator.setItem(_:animationDirection:animation:)(uint64_t a1)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  v4 = *v2;
  v5 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  return Gliss.CoordinatedView._adopt<A>(_:from:)(v3, v2, ObjectType, *(v4 + 80), v5);
}

{
  return partial apply for closure #1 in closure #1 in Gliss.Coordinator.handlePanGestureRecognizer(_:)(a1);
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_17Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_26Tm()
{

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #2 in Gliss.Coordinator.cancel(_:animated:)(uint64_t (**a1)(uint64_t *, char *))
{
  v2 = *a1;
  v5 = *(v1 + 32);
  v4 = 1;
  return v2(&v5, &v4);
}

{
  return partial apply for closure #1 in closure #2 in Gliss.Coordinator.end(_:animated:)(a1);
}

uint64_t partial apply for closure #1 in closure #1 in Gliss.Coordinator.cancel(_:animated:)(uint64_t (**a1)(uint64_t *))
{
  v2 = *a1;
  v4 = *(v1 + 32);
  return v2(&v4);
}

{
  return partial apply for closure #1 in closure #1 in Gliss.Coordinator.end(_:animated:)(a1);
}

uint64_t Gliss.Transition.__allocating_init(from:to:progression:contexts:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, double a5)
{
  v10 = swift_allocObject();
  Gliss.Transition.init(from:to:progression:contexts:)(a1, a2, a3, a4, a5);
  return v10;
}

id Gliss.Animation.resolvedAnimator<A>(for:in:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v39 = *&a3;
  v9 = *(*a1 + 80);
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v39 - v13;
  if ((a5 >> 6) > 1u)
  {
    if (a5 >> 6 == 2)
    {
      v19 = v39;

      return *&v19;
    }

    else
    {
      v24 = v12;
      if (UIAccessibilityIsReduceMotionEnabled() || (v25 = *(*a1 + 120), swift_beginAccess(), *(a1 + v25) == 2))
      {
        v26 = [objc_allocWithZone(UICubicTimingParameters) initWithAnimationCurve:0];
        v27 = objc_allocWithZone(UIViewPropertyAnimator);
        v28 = [v27 initWithDuration:v26 timingParameters:{0.25, *&v39}];
      }

      else
      {
        v29 = a1 + *(*a1 + 168);
        swift_beginAccess();
        if (*(v29 + 32) == 2)
        {
          [a2 bounds];
          v30 = CGRectGetWidth(v41) * 0.5;
        }

        else
        {
          v30 = *(v29 + 16);
        }

        v31 = fabs(v30);
        [a2 bounds];
        Width = CGRectGetWidth(v42);
        v33 = fabs(*v29);
        if (*(v29 + 32) == 2)
        {
          v33 = 0.0;
        }

        v34 = v31 / (Width - v33);
        v35 = *(*a1 + 112);
        swift_beginAccess();
        (*(v11 + 16))(v14, a1 + v35, v24);
        if ((*(*(v9 - 8) + 48))(v14, 1, v9) == 1)
        {
          v36 = 0.5;
        }

        else
        {
          v36 = 0.8;
        }

        (*(v11 + 8))(v14, v24);
        v26 = [objc_allocWithZone(UISpringTimingParameters) initWithDampingRatio:v36 initialVelocity:{v34, 0.0}];
        v37 = objc_allocWithZone(UIViewPropertyAnimator);
        v28 = [v37 initWithDuration:v26 timingParameters:{0.0, *&v39}];
      }

      v38 = v28;

      return v38;
    }
  }

  else
  {
    if (a5 >> 6)
    {
      if (a5)
      {
        v21 = 0.25;
      }

      else
      {
        v21 = *&a4;
      }

      v16 = [objc_allocWithZone(UISpringTimingParameters) initWithDuration:v21 bounce:v39];
      v22 = objc_allocWithZone(UIViewPropertyAnimator);
      v18 = [v22 initWithDuration:v16 timingParameters:{0.0, *&v39}];
    }

    else
    {
      v15 = v39;
      v16 = [objc_allocWithZone(UICubicTimingParameters) initWithAnimationCurve:0];
      v17 = objc_allocWithZone(UIViewPropertyAnimator);
      v18 = [v17 initWithDuration:v16 timingParameters:{v15, *&v39}];
    }

    v23 = v18;

    return v23;
  }
}

uint64_t Gliss.Direction.init(_:)(double a1)
{
  if (a1 > 0.0)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 >= 0.0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t *Gliss.Transition.init(from:to:progression:contexts:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, double a5)
{
  v9 = *v5;
  UUID.init()();
  v10 = *(*v5 + 112);
  v11 = *(v9 + 80);
  v12 = *(v11 - 8);
  (*(v12 + 56))(v5 + v10, 1, 1, v11);
  *(v5 + *(*v5 + 128)) = 0;
  v13 = v5 + *(*v5 + 136);
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = -64;
  v14 = *(*v5 + 144);
  type metadata accessor for Gliss.Transition();
  swift_getFunctionTypeMetadata1();
  *(v5 + v14) = static Array._allocateUninitialized(_:)();
  v15 = *(*v5 + 152);
  swift_getFunctionTypeMetadata2();
  *(v5 + v15) = static Array._allocateUninitialized(_:)();
  v16 = v5 + *(*v5 + 168);
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 2;
  (*(v12 + 32))(v5 + *(*v5 + 104), a1, v11);
  swift_beginAccess();
  v17 = type metadata accessor for Optional();
  (*(*(v17 - 8) + 40))(v5 + v10, a2, v17);
  swift_endAccess();
  v18 = v5 + *(*v5 + 120);
  *v18 = a3;
  *(v18 + 8) = a5;
  *(v5 + *(*v5 + 160)) = a4;
  return v5;
}

uint64_t Gliss.Transition.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for Gliss.Transition.id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t key path getter for Gliss.Transition.from : <A>Gliss.Transition<A>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 16);
  v6 = *a1;
  v7 = *(**a1 + 104);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a4, v6 + v7, v5);
}

uint64_t key path setter for Gliss.Transition.from : <A>Gliss.Transition<A>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(v5 - 8);
  __chkstk_darwin(a1);
  v8 = &v12 - v7;
  (*(v6 + 16))(&v12 - v7);
  v9 = *a2;
  v10 = *(*v9 + 104);
  swift_beginAccess();
  (*(v6 + 40))(v9 + v10, v8, v5);
  return swift_endAccess();
}

uint64_t Gliss.Transition.from.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t key path getter for Gliss.Transition.to : <A>Gliss.Transition<A>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(**a1 + 112);
  swift_beginAccess();
  v5 = type metadata accessor for Optional();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t key path setter for Gliss.Transition.to : <A>Gliss.Transition<A>(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  (*(v5 + 16))(&v11 - v6, a1, v4);
  v8 = *a2;
  v9 = *(*v8 + 112);
  swift_beginAccess();
  (*(v5 + 40))(v8 + v9, v7, v4);
  return swift_endAccess();
}

uint64_t Gliss.Transition.to.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 112);
  swift_beginAccess();
  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t Gliss.Transition.progression.getter()
{
  v1 = (v0 + *(*v0 + 120));
  swift_beginAccess();
  return *v1;
}

uint64_t Gliss.Transition.state.getter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t Gliss.Transition.state.setter(char a1)
{
  v3 = *(*v1 + 128);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

BOOL Gliss.Transition.isEnding.getter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v0 + v1) == 3;
}

BOOL Gliss.Transition.isCancelling.getter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v0 + v1) == 4;
}

BOOL Gliss.Transition.hasEnded.getter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v0 + v1) > 4u;
}

BOOL Gliss.Transition.isGestureBased.getter()
{
  v1 = v0 + *(*v0 + 168);
  swift_beginAccess();
  return *(v1 + 32) != 2;
}

uint64_t Gliss.Transition.addAlongsideAnimation(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  v6[2] = *(v5 + 80);
  v6[3] = *(v5 + 88);
  v6[4] = a1;
  v6[5] = a2;
  swift_beginAccess();
  type metadata accessor for Gliss.Transition();
  swift_getFunctionTypeMetadata1();
  type metadata accessor for Array();

  Array.append(_:)();
  return swift_endAccess();
}

uint64_t Gliss.Transition.addCompletion(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  v6[2] = *(v5 + 80);
  v6[3] = *(v5 + 88);
  v6[4] = a1;
  v6[5] = a2;
  swift_beginAccess();
  type metadata accessor for Gliss.Transition();
  swift_getFunctionTypeMetadata2();
  type metadata accessor for Array();

  Array.append(_:)();
  return swift_endAccess();
}

uint64_t Gliss.Transition.context<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + *(*v2 + 160));
  if (!*(v4 + 16))
  {
    goto LABEL_5;
  }

  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v7 & 1) == 0)
  {

LABEL_5:
    memset(v11, 0, sizeof(v11));
    goto LABEL_6;
  }

  outlined init with copy of Any(*(v4 + 56) + 32 * v6, v11);

LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd_0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = swift_dynamicCast();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a2, v9 ^ 1u, 1, AssociatedTypeWitness);
}

__n128 key path getter for Gliss.Transition.gestureState : <A>Gliss.Transition<A>@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + *(**a1 + 168);
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

__n128 key path setter for Gliss.Transition.gestureState : <A>Gliss.Transition<A>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *a2 + *(**a2 + 168);
  swift_beginAccess();
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

__n128 Gliss.Transition.gestureState.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(*v1 + 168);
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

uint64_t Gliss.Transition.description.getter()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v28 - v6;
  v8 = *(v2 - 8);
  v9 = __chkstk_darwin(v5);
  v28 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v28 - v11;
  strcpy(v33, "Transition(\n");
  BYTE5(v33[1]) = 0;
  HIWORD(v33[1]) = -5120;
  v32._countAndFlagsBits = 0x3A646920202020;
  v32._object = 0xE700000000000000;
  v13._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 10;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  String.append(_:)(v32);

  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0x6D6F726620202020;
  v15._object = 0xEA0000000000203ALL;
  String.append(_:)(v15);
  v16 = *(*v0 + 104);
  swift_beginAccess();
  (*(v8 + 16))(v12, v1 + v16, v2);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v17 = *(v8 + 8);
  v17(v12, v2);
  v18._countAndFlagsBits = 10;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  String.append(_:)(v31);

  v19 = *(*v1 + 112);
  swift_beginAccess();
  (*(v4 + 16))(v7, v1 + v19, v3);
  if ((*(v8 + 48))(v7, 1, v2) == 1)
  {
    (*(v4 + 8))(v7, v3);
    v20._object = 0xED00000A656E6F6ELL;
    v20._countAndFlagsBits = 0x203A6F7420202020;
    String.append(_:)(v20);
  }

  else
  {
    v21 = v28;
    (*(v8 + 32))(v28, v7, v2);
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    v22._countAndFlagsBits = 0x203A6F7420202020;
    v22._object = 0xE800000000000000;
    String.append(_:)(v22);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v23._countAndFlagsBits = 10;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
    String.append(_:)(v29);

    v17(v21, v2);
  }

  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  v30._countAndFlagsBits = 0xD000000000000010;
  v30._object = 0x80000001004CAAB0;
  swift_beginAccess();
  v24._countAndFlagsBits = Gliss.Progression.description.getter();
  String.append(_:)(v24);

  v25._countAndFlagsBits = 10;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  String.append(_:)(v30);

  v26._countAndFlagsBits = 10528;
  v26._object = 0xE200000000000000;
  String.append(_:)(v26);
  return v33[0];
}

uint64_t *Gliss.Transition.deinit()
{
  v1 = *v0;
  v2 = direct field offset for Gliss.Transition.id;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104), *(v1 + 80));
  v4 = *(*v0 + 112);
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  outlined consume of Gliss.Animation(*(v0 + *(*v0 + 136)), *(v0 + *(*v0 + 136) + 8), *(v0 + *(*v0 + 136) + 16));

  return v0;
}

uint64_t Gliss.Transition.__deallocating_deinit()
{
  Gliss.Transition.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Identifiable.id.getter in conformance Gliss.Transition<A>@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = direct field offset for Gliss.Transition.id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_100141E0C()
{

  return swift_deallocObject();
}

unint64_t Gliss.Progression.description.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore5GlissO9DirectionOSgMd);
  v0._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 8236;
  v1._object = 0xE200000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = 0x6F69746365726964;
  v2._object = 0xEA00000000003D6ELL;
  String.append(_:)(v2);

  v3._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x3D65756C6176;
  v4._object = 0xE600000000000000;
  String.append(_:)(v4);

  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return 0xD000000000000014;
}

unint64_t lazy protocol witness table accessor for type Gliss.Direction and conformance Gliss.Direction()
{
  result = lazy protocol witness table cache variable for type Gliss.Direction and conformance Gliss.Direction;
  if (!lazy protocol witness table cache variable for type Gliss.Direction and conformance Gliss.Direction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Gliss.Direction and conformance Gliss.Direction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Gliss.State and conformance Gliss.State()
{
  result = lazy protocol witness table cache variable for type Gliss.State and conformance Gliss.State;
  if (!lazy protocol witness table cache variable for type Gliss.State and conformance Gliss.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Gliss.State and conformance Gliss.State);
  }

  return result;
}

__n128 sub_1001421A4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_1001421C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + *(**a1 + 120);
  swift_beginAccess();
  result = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10014222C(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *a2 + *(**a2 + 120);
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t sub_1001422A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = *(**a1 + 128);
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore5GlissO9AnimationO(uint64_t a1)
{
  v1 = *(a1 + 16) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t getEnumTagSinglePayload for Gliss.Animation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 17))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for Gliss.Animation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for Gliss.Animation(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    *(result + 16) = -64;
  }

  return result;
}

uint64_t type metadata completion function for Gliss.Transition()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Optional();
      if (v3 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Gliss.Progression(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *a1;
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

uint64_t storeEnumTagSinglePayload for Gliss.Progression(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Gliss.GestureState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Gliss.GestureState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t EnvironmentVariable.value.getter(uint64_t a1, uint64_t a2, char a3)
{
  v4 = 0xD000000000000013;
  v5 = [objc_opt_self() processInfo];
  v6 = [v5 environment];

  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v4 = 0xD000000000000017;
    }

    if (a3 == 1)
    {
      v8 = "";
    }

    else
    {
      v8 = "FEATUREFLAGS_ENABLED";
    }
  }

  else
  {
    v8 = "MUSIC_TOOLTIP_DEBUG_ALL";
  }

  if (*(v7 + 16))
  {
    v9 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v4, v8 | 0x8000000000000000);
    v11 = v10;

    if (v11)
    {
      v12 = *(*(v7 + 56) + 16 * v9);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {

    v12 = 0;
  }

  return v12;
}

uint64_t EnvironmentVariable.isEnabled.getter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = EnvironmentVariable.value.getter(a1, a2, a3);
  if (!v5)
  {
    return 0;
  }

  if (a3 <= 1u)
  {
    lazy protocol witness table accessor for type String and conformance String();
    v6 = StringProtocol.contains<A>(_:)();

    return v6 & 1;
  }

  if (v4 == 49 && v5 == 0xE100000000000000 || (v8 = v4, v9 = v5, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || v8 == 1702195828 && v9 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v8 == 5457241 && v9 == 0xE300000000000000)
  {

    v6 = 1;
    return v6 & 1;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return v10 & 1;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore19EnvironmentVariableO(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for EnvironmentVariable(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for EnvironmentVariable(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for EnvironmentVariable(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t static StagedInstall.current()()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v47 - v6;
  __chkstk_darwin(v5);
  v9 = &v47 - v8;
  if (one-time initialization token for isInternalInstall != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall != 1)
  {
    return 2;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static StagedInstall.logger);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Checking for a staged install of Music", v13, 2u);
  }

  URL.init(fileURLWithPath:)();
  v14 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v15 = String._bridgeToObjectiveC()();

  v16 = [v14 fileExistsAtPath:v15];

  v17 = Logger.logObject.getter();
  if (v16)
  {
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Found Music.app in staged_system_apps", v19, 2u);
    }

    v20 = Data.init(contentsOf:options:)();
    v25 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      if (v25 != 2 || *(v20 + 16) == *(v20 + 24))
      {
LABEL_23:
        outlined consume of Data._Representation(v20, v21);
        v17 = Logger.logObject.getter();
        v22 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v17, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          v24 = "Unable to read data of staged executable";
          goto LABEL_25;
        }

        goto LABEL_26;
      }
    }

    else if (v25)
    {
      if (v20 == v20 >> 32)
      {
        goto LABEL_23;
      }
    }

    else if ((v21 & 0xFF000000000000) == 0)
    {
      goto LABEL_23;
    }

    v26 = v20;
    v49 = v21;
    v27 = [objc_opt_self() mainBundle];
    v28 = [v27 executableURL];

    if (!v28)
    {
LABEL_39:
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v31 = 2;
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v38, v39, "Unable to read data of running executable", v40, 2u);

        outlined consume of Data._Representation(v26, v49);
        (*(v1 + 8))(v9, v0);
        return v31;
      }

      outlined consume of Data._Representation(v26, v49);

      goto LABEL_27;
    }

    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v1 + 32))(v7, v4, v0);
    v29 = Data.init(contentsOf:options:)();
    v33 = v30 >> 62;
    if ((v30 >> 62) > 1)
    {
      if (v33 != 2)
      {
        goto LABEL_38;
      }

      v34 = *(v29 + 16);
      v35 = *(v29 + 24);
    }

    else
    {
      if (!v33)
      {
        if ((v30 & 0xFF000000000000) == 0)
        {
          goto LABEL_38;
        }

LABEL_42:
        v47 = v29;
        v48 = v30;
        v41 = specialized static Data.== infix(_:_:)(v29, v30, v26, v49);
        v42 = Logger.logObject.getter();
        if (v41)
        {
          v43 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            *v44 = 0;
            v45 = "Identical staged copy found";
LABEL_47:
            _os_log_impl(&_mh_execute_header, v42, v43, v45, v44, 2u);
          }
        }

        else
        {
          v43 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            *v44 = 0;
            v45 = "Found different binary in staged applications";
            goto LABEL_47;
          }
        }

        outlined consume of Data._Representation(v47, v48);
        outlined consume of Data._Representation(v26, v49);
        v46 = *(v1 + 8);
        v46(v7, v0);
        v46(v9, v0);
        return v41 & 1;
      }

      v34 = v29;
      v35 = v29 >> 32;
    }

    if (v34 != v35)
    {
      goto LABEL_42;
    }

LABEL_38:
    v36 = v29;
    v37 = v30;
    (*(v1 + 8))(v7, v0);
    outlined consume of Data._Representation(v36, v37);
    goto LABEL_39;
  }

  v22 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v17, v22))
  {
LABEL_26:

LABEL_27:
    (*(v1 + 8))(v9, v0);
    return 2;
  }

  v23 = swift_slowAlloc();
  *v23 = 0;
  v24 = "✅ No staged copy found";
LABEL_25:
  _os_log_impl(&_mh_execute_header, v17, v22, v24, v23, 2u);

  (*(v1 + 8))(v9, v0);
  return 2;
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    outlined consume of Data._Representation(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  closure #1 in static Data.== infix(_:_:)(v13, a3, a4, &v12);
  v10 = v4;
  outlined consume of Data._Representation(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

{
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      memset(v13, 0, 14);
LABEL_10:
      closure #1 in Data.hexRepresentation.getter(v13, a3, a4, &v14);
      result = outlined consume of Data._Representation(a3, a4);
      if (!v4)
      {
        return v14;
      }

      return result;
    }

    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
  }

  else
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_10;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
  if (v4)
  {
    return outlined consume of Data._Representation(a3, a4);
  }

  v12 = v10;
  outlined consume of Data._Representation(a3, a4);
  return v12;
}