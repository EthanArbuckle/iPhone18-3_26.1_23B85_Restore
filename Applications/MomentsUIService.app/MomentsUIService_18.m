unint64_t lazy protocol witness table accessor for type UIView.AutolayoutEquivalency and conformance UIView.AutolayoutEquivalency()
{
  result = lazy protocol witness table cache variable for type UIView.AutolayoutEquivalency and conformance UIView.AutolayoutEquivalency;
  if (!lazy protocol witness table cache variable for type UIView.AutolayoutEquivalency and conformance UIView.AutolayoutEquivalency)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIView.AutolayoutEquivalency and conformance UIView.AutolayoutEquivalency);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MOClientPresentationDetails(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MOClientPresentationDetails(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

BOOL MOMapLocation.shouldNotUseSpecificName.getter()
{
  if ((*(*v0 + 360))() > 0.9 && (*(*v0 + 288))())
  {
    swift_unknownObjectRelease();
    return 0;
  }

  else
  {
    (*(*v0 + 456))();
    if (one-time initialization token for LOW_CONFIDENCE_HIGH_CERTAINTITY_THRESHOLD != -1)
    {
      v3 = v2;
      swift_once();
      v2 = v3;
    }

    return *&static MOMapLocation.LOW_CONFIDENCE_HIGH_CERTAINTITY_THRESHOLD < v2;
  }
}

double MOMapLocation.coordinate.getter()
{
  v1 = (*(*v0 + 240))();
  (*(*v0 + 264))();
  return v1;
}

uint64_t MOMapLocation.shouldUseMarker.getter()
{
  if ((*(*v0 + 360))() <= 0.9)
  {
    return 0;
  }

  result = (*(*v0 + 288))();
  if (result)
  {
    swift_unknownObjectRelease();
    return 1;
  }

  return result;
}

uint64_t MOMapLocation.renderingGeoMapItem.getter()
{
  if ((*(*v0 + 360))() <= 0.9)
  {
    return 0;
  }

  v2 = *(*v0 + 288);
  if (!v2())
  {
    return 0;
  }

  swift_unknownObjectRelease();

  return v2();
}

uint64_t MOMapLocation.__allocating_init(fromGEOMapItem:title:confidenceLevel:enclosingArea:poiCategory:startDate:horizontalUncertainty:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, char a18)
{
  [a1 coordinate];
  v21 = v20;
  [a1 coordinate];
  if (a18)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = a17;
  }

  v23 = (*(v11 + 528))(0, 0xE000000000000000, 0, 1, 0, 0, 0, 0, v21, 0, 0, 0xE000000000000000);
  v24 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_mapItem;
  swift_beginAccess();
  *(v23 + v24) = a1;

  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v25 = (v23 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_title);
  swift_beginAccess();
  *v25 = a2;
  v25[1] = a3;

  v26 = (v23 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_enclosingArea);
  swift_beginAccess();
  *v26 = a4;
  v26[1] = a5;

  v27 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_startDate;
  swift_beginAccess();
  outlined assign with copy of Date?(a8, v23 + v27);
  swift_endAccess();

  if (a7)
  {
    v28 = (v23 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_poiCategory);
    swift_beginAccess();
    *v28 = a6;
    v28[1] = a7;
  }

  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static MOAngelLogger.assets);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 134218240;
    *(v32 + 4) = a9;
    *(v32 + 12) = 2048;
    *(v32 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v30, v31, "[MOMapLocation] confidence: %f, unc=%f", v32, 0x16u);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  outlined destroy of Date?(a8);
  return v23;
}

uint64_t MOMapLocation.__allocating_init(fromResource:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  __chkstk_darwin(v3 - 8);
  v5 = &v98 - v4;
  v6 = [a1 data];
  if (!v6)
  {
    goto LABEL_20;
  }

  v7 = v6;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v100 = 0;
  v13 = [v11 JSONObjectWithData:isa options:0 error:&v100];

  if (!v13)
  {
    v44 = v100;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(v8, v10);

    return 0;
  }

  v14 = v100;
  _bridgeAnyObjectToAny(_:)();
  outlined consume of Data._Representation(v8, v10);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:

    return 0;
  }

  v15 = v99;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(*&v15 + 16))
  {
    goto LABEL_18;
  }

  v18 = v1;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_19:

    goto LABEL_20;
  }

  v100 = *(*(*&v15 + 56) + 8 * v19);
  swift_unknownObjectRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_23:

    return 0;
  }

  v22 = v99;
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(*&v22 + 16))
  {

    goto LABEL_18;
  }

  v25 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v24);
  v27 = v26;

  if ((v27 & 1) == 0)
  {
    goto LABEL_18;
  }

  v100 = *(*(*&v22 + 56) + 8 * v25);
  swift_unknownObjectRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_26:

    goto LABEL_23;
  }

  v28 = v99;
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(*&v22 + 16))
  {

    goto LABEL_18;
  }

  v31 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v30);
  v33 = v32;

  if ((v33 & 1) == 0)
  {
LABEL_18:

    goto LABEL_19;
  }

  v100 = *(*(*&v22 + 56) + 8 * v31);
  swift_unknownObjectRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  v34 = v99;
  [a1 placeNameConfidence];
  v36 = (*(v18 + 528))(0, 0xE000000000000000, 0, 1, 0, 0, 0, 0, v28, v34, v35, 0.0, 0, 0, 0xE000000000000000);
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(*&v15 + 16))
  {
    v39 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
    v41 = v40;

    if (v41)
    {
      v100 = *(*(*&v15 + 56) + 8 * v39);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        Date.init(timeIntervalSinceReferenceDate:)();
        v42 = type metadata accessor for Date();
        (*(*(v42 - 8) + 56))(v5, 0, 1, v42);
        v43 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_startDate;
        swift_beginAccess();
        outlined assign with take of Date?(v5, v36 + v43);
        swift_endAccess();
      }
    }
  }

  else
  {
  }

  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(*&v15 + 16))
  {
    v48 = specialized __RawDictionaryStorage.find<A>(_:)(v46, v47);
    v50 = v49;

    if (v50)
    {
      v100 = *(*(*&v15 + 56) + 8 * v48);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        Date.init(timeIntervalSinceReferenceDate:)();
        v51 = type metadata accessor for Date();
        (*(*(v51 - 8) + 56))(v5, 0, 1, v51);
        v52 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_endDate;
        swift_beginAccess();
        outlined assign with take of Date?(v5, v36 + v52);
        swift_endAccess();
      }
    }
  }

  else
  {
  }

  v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(*&v15 + 16))
  {
    v55 = specialized __RawDictionaryStorage.find<A>(_:)(v53, v54);
    v57 = v56;

    if (v57)
    {
      v100 = *(*(*&v15 + 56) + 8 * v55);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v58 = *&v99 == 2;
        v59 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_isWork;
        swift_beginAccess();
        *(v36 + v59) = v58;
        swift_beginAccess();
      }
    }
  }

  else
  {
  }

  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(*&v15 + 16))
  {
    goto LABEL_44;
  }

  v62 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v61);
  v64 = v63;

  if (v64)
  {
    v99 = *(*(*&v15 + 56) + 8 * v62);
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      v65 = v100;
      v66 = v101;
      v67 = (v36 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_poiCategory);
      swift_beginAccess();
      *v67 = v65;
      v67[1] = v66;
LABEL_44:
    }
  }

  v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(*&v15 + 16))
  {
LABEL_49:

    goto LABEL_50;
  }

  v70 = specialized __RawDictionaryStorage.find<A>(_:)(v68, v69);
  v72 = v71;

  if (v72)
  {
    v99 = *(*(*&v15 + 56) + 8 * v70);
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      v73 = v100;
      v74 = v101;
      v75 = (v36 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_enclosingArea);
      swift_beginAccess();
      *v75 = v73;
      v75[1] = v74;
      goto LABEL_49;
    }
  }

LABEL_50:
  v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(*&v15 + 16))
  {
    v78 = specialized __RawDictionaryStorage.find<A>(_:)(v76, v77);
    v80 = v79;

    if (v80)
    {
      v81 = *(*(*&v15 + 56) + 8 * v78);
      swift_unknownObjectRetain();

      v99 = v81;
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_56;
      }

      v82 = v100;
      v83 = v101;
      v84 = (v36 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_enclosingArea);
      swift_beginAccess();
      *v84 = v82;
      v84[1] = v83;
    }
  }

  else
  {
  }

LABEL_56:
  v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(*&v22 + 16))
  {
    v87 = specialized __RawDictionaryStorage.find<A>(_:)(v85, v86);
    v89 = v88;

    if (v89)
    {
      v90 = *(*(*&v22 + 56) + 8 * v87);
      swift_unknownObjectRetain();

      v100 = v90;
      if (swift_dynamicCast())
      {
        v91 = v99;
        v92 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_horizontalUncertainty;
        swift_beginAccess();
        *(v36 + v92) = v91;
      }

      goto LABEL_62;
    }
  }

  else
  {
  }

LABEL_62:
  v93 = [a1 name];
  v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v96 = v95;

  v97 = (v36 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_title);
  swift_beginAccess();
  *v97 = v94;
  v97[1] = v96;

  return v36;
}

unint64_t MOMapLocation.transferrableMetadata.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v44 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo28MOSuggestionAssetMetadataKeya_ypSgtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002A7010;
  v8 = MOSuggestionAssetMetadataKeyLocationPreviewPlaceName;
  *(inited + 32) = MOSuggestionAssetMetadataKeyLocationPreviewPlaceName;
  v44[1] = inited + 32;
  if ((*(*v0 + 360))(v8) > 0.9 && (*(*v0 + 288))())
  {
    v9 = swift_unknownObjectRelease();
  }

  else
  {
    v9 = (*(*v0 + 456))();
    if (one-time initialization token for LOW_CONFIDENCE_HIGH_CERTAINTITY_THRESHOLD != -1)
    {
      v43 = v10;
      v9 = swift_once();
      v10 = v43;
    }

    if (*&static MOMapLocation.LOW_CONFIDENCE_HIGH_CERTAINTITY_THRESHOLD < v10)
    {
      *(inited + 56) = 0u;
      *(inited + 40) = 0u;
      goto LABEL_9;
    }
  }

  v11 = (*(*v0 + 336))(v9);
  *(inited + 64) = &type metadata for String;
  *(inited + 40) = v11;
  *(inited + 48) = v12;
LABEL_9:
  v13 = MOSuggestionAssetMetadataKeyLocationPreviewVisitStartTime;
  *(inited + 72) = MOSuggestionAssetMetadataKeyLocationPreviewVisitStartTime;
  (*(*v0 + 192))(v13);
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(v6, 1, v14) == 1)
  {
    outlined destroy of Date?(v6);
    *(inited + 80) = 0u;
    *(inited + 96) = 0u;
  }

  else
  {
    *(inited + 104) = v14;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 80));
    (*(v15 + 32))(boxed_opaque_existential_1, v6, v14);
  }

  v18 = MOSuggestionAssetMetadataKeyLocationPreviewVisitEndTime;
  *(inited + 112) = MOSuggestionAssetMetadataKeyLocationPreviewVisitEndTime;
  (*(*v0 + 216))(v18);
  if (v16(v4, 1, v14) == 1)
  {
    outlined destroy of Date?(v4);
    *(inited + 120) = 0u;
    *(inited + 136) = 0u;
  }

  else
  {
    *(inited + 144) = v14;
    v19 = __swift_allocate_boxed_opaque_existential_1((inited + 120));
    (*(v15 + 32))(v19, v4, v14);
  }

  v20 = MOSuggestionAssetMetadataKeyLocationPreviewVisitLattitude;
  *(inited + 152) = MOSuggestionAssetMetadataKeyLocationPreviewVisitLattitude;
  v21 = *(*v0 + 240);
  *(inited + 160) = v21(v20);
  v22 = MOSuggestionAssetMetadataKeyLocationPreviewVisitLatitude;
  *(inited + 184) = &type metadata for Double;
  *(inited + 192) = v22;
  *(inited + 200) = v21(v22);
  v23 = MOSuggestionAssetMetadataKeyLocationPreviewVisitLongitude;
  *(inited + 224) = &type metadata for Double;
  *(inited + 232) = v23;
  *(inited + 240) = (*(*v0 + 264))(v23);
  v24 = MOSuggestionAssetMetadataKeyLocationPreviewCityName;
  *(inited + 264) = &type metadata for Double;
  *(inited + 272) = v24;
  v25 = (*(*v0 + 432))(v24);
  if (v26)
  {
    v27 = &type metadata for String;
  }

  else
  {
    v25 = 0;
    v27 = 0;
    *(inited + 296) = 0;
  }

  *(inited + 280) = v25;
  *(inited + 288) = v26;
  v28 = MOSuggestionAssetMetadataKeyLocationPreviewVisitMapItem;
  *(inited + 304) = v27;
  *(inited + 312) = v28;
  *(inited + 320) = 0u;
  *(inited + 336) = 0u;
  v29 = MOSuggestionAssetMetadataKeyLocationPreviewTypeOfPlace;
  *(inited + 352) = MOSuggestionAssetMetadataKeyLocationPreviewTypeOfPlace;
  v30 = *(*v0 + 408);
  v31 = v28;
  *(inited + 360) = v30(v29);
  v32 = MOSuggestionAssetMetadataKeyLocationPreviewVisitHorizontalUncertainty;
  *(inited + 384) = &type metadata for Int;
  *(inited + 392) = v32;
  v33 = (*(*v0 + 456))(v32);
  *(inited + 424) = &type metadata for Double;
  *(inited + 400) = v33;
  v34 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo28MOSuggestionAssetMetadataKeya_ypSgTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28MOSuggestionAssetMetadataKeya_ypSgtMd);
  v35 = swift_arrayDestroy();
  v36 = (*(*v0 + 288))(v35);
  if (v36)
  {
    v37 = [objc_allocWithZone(MKMapItem) initWithGeoMapItem:v36 isPlaceHolderPlace:1];
    if (v37)
    {
      v38 = v37;
      v39 = type metadata accessor for MKMapItem();
      *&v46 = v38;
      v47 = v39;
      v40 = v38;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = v34;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v46, v31, isUniquelyReferenced_nonNull_native);
      swift_unknownObjectRelease();

      return v45;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return v34;
}

uint64_t MOMapLocation.isPOIUndefined.getter()
{
  if ((*(*v0 + 504))() == 0xD00000000000001DLL && 0x80000001002B91F0 == v1)
  {
    v3 = 1;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v3 & 1;
}

uint64_t outlined assign with copy of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double MOSuggestionSheetMosaicCell.xPlatterViewCellMargin.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell____lazy_storage___xPlatterViewCellMargin);
  if ((*(v0 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell____lazy_storage___xPlatterViewCellMargin + 8) & 1) == 0)
  {
    return *v1;
  }

  *v1 = 0x4018000000000000;
  v1[8] = 0;
  return 6.0;
}

void MOSuggestionSheetMosaicCell.xPlatterViewCellMargin.setter(double a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell____lazy_storage___xPlatterViewCellMargin;
  *v2 = a1;
  *(v2 + 8) = 0;
}

void *(*MOSuggestionSheetMosaicCell.xPlatterViewCellMargin.modify(uint64_t a1))(void *result)
{
  *(a1 + 8) = v1;
  *a1 = MOSuggestionSheetMosaicCell.xPlatterViewCellMargin.getter();
  return MOSuggestionSheetMosaicCell.xPlatterViewCellMargin.modify;
}

void *MOSuggestionSheetMosaicCell.xPlatterViewCellMargin.modify(void *result)
{
  v1 = result[1] + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell____lazy_storage___xPlatterViewCellMargin;
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t MOSuggestionSheetMosaicCell.assetViewModel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_assetViewModel;
  swift_beginAccess();
  *(v1 + v3) = a1;

  (*((swift_isaMask & *v1) + 0x150))(v4);
}

uint64_t (*MOSuggestionSheetMosaicCell.assetViewModel.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return MOSuggestionSheetMosaicCell.assetViewModel.modify;
}

uint64_t MOSuggestionSheetMosaicCell.assetViewModel.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((swift_isaMask & **(a1 + 24)) + 0x150))(result);
  }

  return result;
}

uint64_t MOSuggestionSheetMosaicCell.isInterstitial.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_isInterstitial;
  swift_beginAccess();
  return *(v0 + v1);
}

id MOSuggestionSheetMosaicCell.isInterstitial.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_isInterstitial;
  swift_beginAccess();
  *(v1 + v3) = a1;
  result = *(v1 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_checkPlatterView);
  if (result)
  {
    return [result setHidden:(a1 & 1) == 0];
  }

  return result;
}

void (*MOSuggestionSheetMosaicCell.isInterstitial.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_isInterstitial;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return MOSuggestionSheetMosaicCell.isInterstitial.modify;
}

void MOSuggestionSheetMosaicCell.isInterstitial.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_checkPlatterView);
    if (v5)
    {
      [v5 setHidden:(*(v4 + v3[4]) & 1) == 0];
    }
  }

  free(v3);
}

id MOSuggestionSheetMosaicCell.isSelected.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionSheetMosaicCell();
  return objc_msgSendSuper2(&v2, "isSelected");
}

void MOSuggestionSheetMosaicCell.isSelected.setter(char a1)
{
  v2 = v1;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for MOSuggestionSheetMosaicCell();
  objc_msgSendSuper2(&v14, "setSelected:", a1 & 1);
  v4 = *&v2[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_checkPlatterView];
  if (v4)
  {
    v5 = v4;
    v6 = [v2 isSelected];
    (*((swift_isaMask & *v5) + 0xA0))(v6);
  }

  if ([v2 isSelected])
  {
    v7 = *&v2[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_blurEffectView];
    if (v7)
    {
      [v7 removeFromSuperview];
    }
  }

  else
  {
    v8 = *&v2[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_assetView];
    if (v8)
    {
      v9 = objc_opt_self();
      v10 = v8;
      v11 = [v9 effectWithStyle:6];
      v12 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v11];
      [v10 bounds];
      [v12 setFrame:?];
      [v12 setAutoresizingMask:18];
      [v12 setAlpha:0.5];

      [v10 addSubview:v12];
      v13 = *&v2[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_blurEffectView];
      *&v2[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_blurEffectView] = v12;
    }
  }
}

void closure #1 in MOSuggestionSheetMosaicCell.overflowDetail.didset()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_overflowView;
    v3 = *(Strong + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_overflowView);
    if (v3 || (type metadata accessor for MOSuggestionSheetOverflowView(), v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init], v5 = *(v1 + v2), *(v1 + v2) = v4, v5, (v3 = *(v1 + v2)) != 0))
    {
      v6 = *((swift_isaMask & *v1) + 0x138);
      v7 = v3;
      v6();
      (*((swift_isaMask & *v7) + 0x70))(v8);

      v9 = *(v1 + v2);
      if (v9)
      {
        v10 = *((swift_isaMask & *v1) + 0x138);
        v11 = v9;
        [v11 setHidden:(v10() & 1) == 0];
      }
    }
  }
}

uint64_t MOSuggestionSheetMosaicCell.overflowDetail.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_overflowDetail);
  swift_beginAccess();
  return *v1;
}

uint64_t MOSuggestionSheetMosaicCell.overflowDetail.setter(char a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_overflowDetail;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2;
  return MOSuggestionSheetMosaicCell.overflowDetail.didset(partial apply for closure #1 in MOSuggestionSheetMosaicCell.overflowDetail.didset, &block_descriptor_21_1);
}

uint64_t (*MOSuggestionSheetMosaicCell.overflowDetail.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return MOSuggestionSheetMosaicCell.overflowDetail.modify;
}

uint64_t MOSuggestionSheetMosaicCell.overflowDetail.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return MOSuggestionSheetMosaicCell.overflowDetail.didset(partial apply for closure #1 in MOSuggestionSheetMosaicCell.overflowDetail.didset, &block_descriptor_21_1);
  }

  return result;
}

id MOSuggestionSheetMosaicCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_assetView] = 0;
  *&v4[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_checkPlatterView] = 0;
  *&v4[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_blurEffectView] = 0;
  *&v4[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_overflowView] = 0;
  v9 = &v4[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell____lazy_storage___xPlatterViewCellMargin];
  *v9 = 0;
  v9[8] = 1;
  *&v4[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_assetViewModel] = 0;
  v4[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_isInterstitial] = 0;
  v10 = &v4[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_overflowDetail];
  *v10 = 0;
  *(v10 + 1) = 0;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for MOSuggestionSheetMosaicCell();
  v11 = objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
  [v11 setAutoresizingMask:18];
  [v11 setAutoresizesSubviews:1];

  return v11;
}

uint64_t MOSuggestionSheetMosaicCell.overflowDetail.didset(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v8 = *(v16 - 8);
  __chkstk_darwin(v16);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = a1;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = a2;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v16);
}

void closure #1 in MOSuggestionSheetMosaicCell.initMosaicCell()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((swift_isaMask & *Strong) + 0x158))();
  }
}

Swift::Void __swiftcall MOSuggestionSheetMosaicCell._initMosaicCell()()
{
  v1 = v0;
  if ((*((swift_isaMask & *v0) + 0x108))())
  {
    v2 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_assetView;
    v3 = *(v0 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_assetView);
    if (v3)
    {
      v4 = *(v0 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_assetView);
    }

    else
    {
      type metadata accessor for MOSuggestionSheetAssetView();
      v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v3 = 0;
    }

    v5 = v3;
    v36 = v4;
    [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = *((swift_isaMask & *v36) + 0xA0);

    v6(v7);
    [v1 addSubview:v36];
    v8 = [v36 superview];
    if (v8)
    {
      v9 = v8;
      [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
      v10 = [v36 topAnchor];
      v11 = [v9 topAnchor];
      v12 = [v10 constraintEqualToAnchor:v11];

      [v12 setConstant:2.0];
      if (v12)
      {
        [v12 setActive:1];
      }
    }

    v13 = [v36 superview];
    if (v13)
    {
      v14 = v13;
      [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
      v15 = [v36 leadingAnchor];
      v16 = [v14 leadingAnchor];
      v17 = [v15 constraintEqualToAnchor:v16];

      [v17 setConstant:2.0];
      if (v17)
      {
        [v17 setActive:1];
      }
    }

    v18 = [v36 superview];
    if (v18)
    {
      v19 = v18;
      [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
      v20 = [v36 trailingAnchor];
      v21 = [v19 trailingAnchor];
      v22 = [v20 constraintEqualToAnchor:v21];

      [v22 setConstant:-2.0];
      if (v22)
      {
        [v22 setActive:1];
      }
    }

    v23 = [v36 superview];
    if (v23)
    {
      v24 = v23;
      [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
      v25 = [v36 bottomAnchor];
      v26 = [v24 bottomAnchor];
      v27 = [v25 constraintEqualToAnchor:v26];

      if (v27)
      {
        [v27 setConstant:-2.0];
        [v27 setActive:1];
      }
    }

    else
    {
      v27 = 0;
      v24 = v36;
    }

    v28 = *(v1 + v2);
    *(v1 + v2) = v36;

    v29 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_overflowView;
    v30 = *(v1 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_overflowView);
    if (v30)
    {
      v31 = *(v1 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_overflowView);
    }

    else
    {
      type metadata accessor for MOSuggestionSheetOverflowView();
      v31 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v30 = 0;
    }

    v32 = v30;
    v33 = v31;
    [v1 addSubview:v33];
    [v33 setHidden:1];

    v34 = *(v1 + v29);
    *(v1 + v29) = v33;

    if ((*((swift_isaMask & *v1) + 0x120))())
    {
      MOSuggestionSheetMosaicCell.addSelectButton()();
      v35 = v33;
    }

    else
    {
      v35 = v36;
      v36 = v33;
    }
  }
}

Swift::Void __swiftcall MOSuggestionSheetMosaicCell.layoutSubviews()()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for MOSuggestionSheetMosaicCell();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_assetView];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_overflowView];
    if (v2)
    {
      v3 = v1;
      v4 = v2;
      [v3 frame];
      [v4 setFrame:?];
    }
  }
}

void MOSuggestionSheetMosaicCell.updateUnselectedBlur()()
{
  if ([v0 isSelected])
  {
    v1 = *&v0[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_blurEffectView];
    if (v1)
    {

      [v1 removeFromSuperview];
    }
  }

  else
  {
    v2 = *&v0[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_assetView];
    if (v2)
    {
      v3 = objc_opt_self();
      v4 = v2;
      v5 = [v3 effectWithStyle:6];
      v6 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v5];
      [v4 bounds];
      [v6 setFrame:?];
      [v6 setAutoresizingMask:18];
      [v6 setAlpha:0.5];

      [v4 addSubview:v6];
      v7 = *&v0[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_blurEffectView];
      *&v0[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_blurEffectView] = v6;
    }
  }
}

void MOSuggestionSheetMosaicCell.addSelectButton()()
{
  v1 = [objc_allocWithZone(type metadata accessor for CanvasAssetAccessoryView()) initWithFrame:{0.0, 0.0, 22.0, 22.0}];
  v2 = *&v0[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_checkPlatterView];
  *&v0[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_checkPlatterView] = v1;
  v18 = v1;

  if (v18)
  {
    [v18 setUserInteractionEnabled:0];
    [v0 addSubview:v18];
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    v3 = [v18 widthAnchor];
    v4 = [v3 constraintEqualToConstant:22.0];

    [v4 setActive:1];
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [v18 heightAnchor];
    v6 = [v5 constraintEqualToConstant:22.0];

    [v6 setActive:1];
    v7 = [v18 superview];
    if (v7)
    {
      v8 = v7;
      [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
      v9 = [v18 bottomAnchor];
      v10 = [v8 bottomAnchor];
      v11 = [v9 constraintEqualToAnchor:v10];

      if (v11)
      {
        [v11 setConstant:-4.0];
        [v11 setActive:1];
      }
    }

    v12 = [v18 superview];
    if (v12)
    {
      v13 = v12;
      [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
      v14 = [v18 trailingAnchor];
      v15 = [v13 trailingAnchor];
      v16 = [v14 constraintEqualToAnchor:v15];

      [v16 setConstant:-4.0];
      [v16 setActive:1];
    }

    v17 = [v0 isSelected];
    (*((swift_isaMask & *v18) + 0x70))(v17);
  }
}

Swift::Void __swiftcall MOSuggestionSheetMosaicCell.cleanup()()
{
  v1 = v0;
  v2 = [v0 subviews];
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIView);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v4; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v3 + 8 * i + 32);
    }

    v7 = v6;
    [v6 removeFromSuperview];
  }

LABEL_10:

  v8 = *(v1 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_checkPlatterView);
  *(v1 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_checkPlatterView) = 0;

  v9 = *(v1 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_blurEffectView);
  *(v1 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_blurEffectView) = 0;

  v10 = (*((swift_isaMask & *v1) + 0x108))();
  if (v10)
  {
    (*(*v10 + 1800))(v10);
  }

  (*((swift_isaMask & *v1) + 0x110))(0);
  v11 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_assetView;
  v12 = *(v1 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_assetView);
  if (v12)
  {
    v13 = *((swift_isaMask & *v12) + 0xC8);
    v14 = v12;
    v13();

    v12 = *(v1 + v11);
  }

  *(v1 + v11) = 0;

  v15 = *(v1 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_overflowView);
  *(v1 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_overflowView) = 0;
}

Swift::Void __swiftcall MOSuggestionSheetMosaicCell.prepareForReuse()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionSheetMosaicCell();
  v1 = objc_msgSendSuper2(&v2, "prepareForReuse");
  (*((swift_isaMask & *v0) + 0x170))(v1);
}

id MOSuggestionSheetMosaicCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionSheetMosaicCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void specialized MOSuggestionSheetMosaicCell.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_assetView) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_checkPlatterView) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_blurEffectView) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_overflowView) = 0;
  v1 = v0 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell____lazy_storage___xPlatterViewCellMargin;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_assetViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_isInterstitial) = 0;
  v2 = v0 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_overflowDetail;
  *v2 = 0;
  *(v2 + 8) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1001D25AC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001D26B8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x108))();
  *a2 = result;
  return result;
}

uint64_t sub_1001D271C(uint64_t a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0x110);

  return v2(v3);
}

uint64_t sub_1001D2788@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x120))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1001D2850@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x138))();
  *a2 = result & 1;
  *(a2 + 8) = v4;
  return result;
}

void MOSuggestionSheetBaseVideoPlaybackView.ViewAdjustment.contentFrame.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

void MOSuggestionSheetBaseVideoPlaybackView.ViewAdjustment.init(contentFrame:verticalShift:horizontalShift:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
  a1[5] = a7;
}

id MOSuggestionSheetBaseVideoPlaybackView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for MOSuggestionSheetBaseVideoPlaybackView();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a1, a2, a3, a4);
}

id MOSuggestionSheetBaseVideoPlaybackView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MOSuggestionSheetBaseVideoPlaybackView();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

CGFloat static MOSuggestionSheetBaseVideoPlaybackView.baseViewRect(viewport:cropRect:)@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, CGFloat a6@<D4>, CGFloat a7@<D5>, CGFloat a8@<D6>, CGFloat a9@<D7>)
{
  v29.origin.x = a6;
  v29.origin.y = a7;
  v29.size.width = a8;
  v29.size.height = a9;
  CGRectGetWidth(v29);
  v30.origin.x = a6;
  v30.origin.y = a7;
  v30.size.width = a8;
  v30.size.height = a9;
  CGRectGetHeight(v30);
  v31.origin.x = a2;
  v31.origin.y = a3;
  v31.size.width = a4;
  v31.size.height = a5;
  CGRectGetWidth(v31);
  v32.origin.x = a2;
  v32.origin.y = a3;
  v32.size.width = a4;
  v32.size.height = a5;
  CGRectGetHeight(v32);
  v18 = CGRectMake_1();
  v20 = v19;
  v22 = v21;
  v26 = v23;
  v33.origin.x = a2;
  v33.origin.y = a3;
  v33.size.width = a4;
  v33.size.height = a5;
  v24 = CGRectGetWidth(v33) * a6;
  v34.origin.x = a2;
  v34.origin.y = a3;
  v34.size.width = a4;
  v34.size.height = a5;
  result = CGRectGetHeight(v34) * a7;
  *a1 = v18;
  *(a1 + 8) = v20;
  *(a1 + 16) = v22;
  *(a1 + 24) = v26;
  *(a1 + 32) = result;
  *(a1 + 40) = v24;
  return result;
}

uint64_t *MOSuggestionSheetVideoPlaybackView.PLAYBACK_SHOULD_PAUSE_NOTIFICATION.unsafeMutableAddressor()
{
  if (one-time initialization token for PLAYBACK_SHOULD_PAUSE_NOTIFICATION != -1)
  {
    swift_once();
  }

  return &static MOSuggestionSheetVideoPlaybackView.PLAYBACK_SHOULD_PAUSE_NOTIFICATION;
}

id static MOSuggestionSheetVideoPlaybackView.PLAYBACK_SHOULD_PAUSE_NOTIFICATION.getter()
{
  if (one-time initialization token for PLAYBACK_SHOULD_PAUSE_NOTIFICATION != -1)
  {
    swift_once();
  }

  v1 = static MOSuggestionSheetVideoPlaybackView.PLAYBACK_SHOULD_PAUSE_NOTIFICATION;

  return v1;
}

id MOSuggestionSheetVideoPlaybackView.config.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_config;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MOSuggestionSheetVideoPlaybackView.config.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_config;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MOSuggestionSheetVideoPlaybackView.isPlaying.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_isPlaying;
  swift_beginAccess();
  return *(v0 + v1);
}

void MOSuggestionSheetVideoPlaybackView.isPlaying.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_isPlaying;
  v5 = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    v7 = (*((swift_isaMask & *v1) + 0x128))(v5);
    v8 = v7;
    v9 = &selRef_play;
    if ((a1 & 1) == 0)
    {
      v9 = &selRef_pause;
    }

    [v7 *v9];
  }
}

void (*MOSuggestionSheetVideoPlaybackView.isPlaying.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_isPlaying;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return MOSuggestionSheetVideoPlaybackView.isPlaying.modify;
}

void MOSuggestionSheetVideoPlaybackView.isPlaying.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    v6 = (*((swift_isaMask & *v1[3]) + 0x128))();
    v7 = v6;
    v8 = &selRef_play;
    if (!v4)
    {
      v8 = &selRef_pause;
    }

    [v6 *v8];
  }

  free(v1);
}

id MOSuggestionSheetVideoPlaybackView.player.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_baseVideoView) layer];
  objc_opt_self();
  v2 = [swift_dynamicCastObjCClassUnconditional() player];

  return v2;
}

void MOSuggestionSheetVideoPlaybackView.player.setter(void *a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_baseVideoView) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setPlayer:a1];
}

void (*MOSuggestionSheetVideoPlaybackView.player.modify(void *a1))(id *a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_baseVideoView);
  a1[1] = v3;
  v4 = [v3 layer];
  objc_opt_self();
  v5 = [swift_dynamicCastObjCClassUnconditional() player];

  *a1 = v5;
  return MOSuggestionSheetVideoPlaybackView.player.modify;
}

void MOSuggestionSheetVideoPlaybackView.player.modify(id *a1, char a2)
{
  v2 = a1[1];
  if (a2)
  {
    v3 = *a1;
    v4 = [v2 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setPlayer:v3];

    v5 = v3;
  }

  else
  {
    v5 = *a1;
    v3 = [a1[1] layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setPlayer:v5];
  }
}

void MOSuggestionSheetVideoPlaybackView.init(url:frame:assignedTileSize:cropRect:)(uint64_t a1, int a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v208 = a1;
  v207 = type metadata accessor for URL();
  v209 = *(v207 - 8);
  __chkstk_darwin(v207);
  v205 = &v198 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_verticalShift;
  *&v7[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_verticalShift] = 0;
  v201 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_horizontalShift;
  *&v7[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_horizontalShift] = 0;
  v15 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_config;
  v203 = objc_opt_self();
  v16 = [v203 grayColor];
  v17 = objc_opt_self();
  v18 = [v17 configurationWithHierarchicalColor:v16];

  v19 = objc_opt_self();
  v20 = [v19 systemFontOfSize:50.0];
  v21 = [v17 configurationWithFont:v20];

  v22 = [v18 configurationByApplyingConfiguration:v21];
  *&v7[v15] = v22;
  v7[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_isPlaying] = 0;
  v23 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_muteButton;
  type metadata accessor for MOSuggestionSheetOversizedBoundsButton();
  *&v7[v23] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v7[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_playPauseButton] = 0;
  v24 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_muteButtonConfig;
  v204 = v19;
  v25 = [v19 preferredFontForTextStyle:UIFontTextStyleTitle3];
  v26 = [v17 configurationWithFont:v25];

  *&v7[v24] = v26;
  v27 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_unMutedImage;
  v28 = String._bridgeToObjectiveC()();
  v29 = objc_opt_self();
  v30 = [v29 systemImageNamed:v28];

  *&v7[v27] = v30;
  v31 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_mutedImage;
  v32 = String._bridgeToObjectiveC()();
  v33 = [v29 systemImageNamed:v32];

  *&v7[v31] = v33;
  LODWORD(v206) = a2;
  v7[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_assignedSizeType] = a2;
  if (*(a3 + 32))
  {
    v34 = &v7[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_targetBaseFrame];
    *v34 = a4;
    v34[1] = a5;
    v34[2] = a6;
    v34[3] = a7;
    v35 = a4;
    v36 = a5;
    v37 = a6;
    v38 = a7;
  }

  else
  {
    v40 = *(a3 + 16);
    v39 = *(a3 + 24);
    v41 = *(a3 + 8);
    v199 = *a3;
    v42 = v199;
    v213.origin.x = v199;
    v213.origin.y = v41;
    v200 = v41;
    v213.size.width = v40;
    v213.size.height = v39;
    v198 = 1.0 - CGRectGetWidth(v213);
    v214.origin.x = v42;
    v214.origin.y = v41;
    v214.size.width = v40;
    v214.size.height = v39;
    CGRectGetHeight(v214);
    v215.origin.x = a4;
    v215.origin.y = a5;
    v215.size.width = a6;
    v215.size.height = a7;
    CGRectGetWidth(v215);
    v216.origin.x = a4;
    v216.origin.y = a5;
    v216.size.width = a6;
    v216.size.height = a7;
    CGRectGetHeight(v216);
    v35 = CGRectMake_1();
    v36 = v43;
    v37 = v44;
    v38 = v45;
    v217.origin.x = a4;
    v217.origin.y = a5;
    v217.size.width = a6;
    v217.size.height = a7;
    v199 = v199 * CGRectGetWidth(v217);
    v218.origin.x = a4;
    v218.origin.y = a5;
    v218.size.width = a6;
    v218.size.height = a7;
    Height = CGRectGetHeight(v218);
    v47 = v200;
    v48 = &v7[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_targetBaseFrame];
    *v48 = v35;
    v48[1] = v36;
    v48[2] = v37;
    v48[3] = v38;
    *&v7[v202] = v47 * Height;
    *&v7[v201] = v199;
  }

  *&v7[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_baseVideoView] = [objc_allocWithZone(type metadata accessor for MOSuggestionSheetBaseVideoPlaybackView()) initWithFrame:{v35, v36, v37, v38}];
  v49 = type metadata accessor for MOSuggestionSheetVideoPlaybackView();
  v211.receiver = v7;
  v211.super_class = v49;
  v50 = objc_msgSendSuper2(&v211, "initWithFrame:", a4, a5, a6, a7);
  (*((swift_isaMask & *v50) + 0x178))();
  v51 = [*(v50 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_baseVideoView) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setVideoGravity:AVLayerVideoGravityResizeAspectFill];

  v52 = v209;
  v53 = v205;
  v54 = v207;
  (*(v209 + 16))(v205, v208, v207);
  v55 = objc_allocWithZone(AVPlayer);
  URL._bridgeToObjectiveC()(v56);
  v58 = v57;
  v59 = [v55 initWithURL:v57];

  v62 = *(v52 + 8);
  v61 = v52 + 8;
  v60 = v62;
  v62(v53, v54);
  v63 = (*((swift_isaMask & *v50) + 0x130))(v59);
  v64 = (swift_isaMask & *v50) + 296;
  v65 = *((swift_isaMask & *v50) + 0x128);
  v66 = (v65)(v63);
  if (v66)
  {
    v67 = v66;
    v68 = [v66 currentItem];

    if (v68)
    {
      v69 = [v68 asset];

      if (v69)
      {
        v70 = v60;
        v71 = [objc_opt_self() videoCompositionWithPropertiesOfAsset:v69];
        [v71 setColorPrimaries:AVVideoColorPrimaries_ITU_R_709_2];
        [v71 setColorTransferFunction:AVVideoTransferFunction_ITU_R_709_2];
        [v71 setColorYCbCrMatrix:AVVideoYCbCrMatrix_ITU_R_709_2];
        [v71 renderSize];
        if (v72 <= 0.0 || (v73 = [v71 renderSize], v74 <= 0.0))
        {
          v78 = v69;
          v69 = v71;
        }

        else
        {
          v75 = (v65)(v73);
          if (v75 && (v76 = v75, v77 = [v75 currentItem], v76, v77))
          {
            v78 = v71;
            [v77 setVideoComposition:v78];
          }

          else
          {
            v78 = v71;
          }
        }

        v60 = v70;
      }
    }
  }

  v79 = v65();
  if (v79)
  {
    v80 = v79;
    [v79 setMuted:1];
  }

  specialized MOSuggestionSheetVideoPlaybackView.setNonDisruptiveMute()();
  v209 = v61;
  if (v206 == 3)
  {
    goto LABEL_76;
  }

  v81 = [objc_allocWithZone(UILabel) init];
  v82 = v65();
  v202 = v60;
  v201 = v64;
  if (!v82)
  {
    v84 = 0;
    goto LABEL_22;
  }

  v83 = v82;
  v84 = [v82 currentItem];

  if (!v84)
  {
LABEL_22:
    v205 = 0;
    goto LABEL_32;
  }

  v85 = [v84 asset];

  [v85 duration];
  value = time.value;
  epoch = time.epoch;
  v88 = *&time.timescale;

  time.value = value;
  *&time.timescale = v88;
  time.epoch = epoch;
  Seconds = CMTimeGetSeconds(&time);
  v90 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  v91 = v90;
  if (Seconds < 60.0)
  {
    [v90 setAllowedUnits:192];
    v92 = &selRef_setZeroFormattingBehavior_;
    v93 = 0x10000;
LABEL_25:
    [v91 *v92];
    goto LABEL_26;
  }

  if (Seconds > 3600.0)
  {
    v92 = &selRef_setAllowedUnits_;
    v93 = 224;
    goto LABEL_25;
  }

LABEL_26:
  v94 = [v91 stringFromTimeInterval:Seconds];
  if (v94)
  {
    v95 = v94;
    v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v98 = v97;
  }

  else
  {
    v96 = 0;
    v98 = 0xE000000000000000;
  }

  if (Seconds < 60.0)
  {
    specialized Collection.dropFirst(_:)(1uLL, v96, v98);

    static String._fromSubstring(_:)();
    v98 = v99;
  }

  v84 = String._bridgeToObjectiveC()();
  v205 = v98;

LABEL_32:
  [v81 setText:v84];

  v100 = [v203 whiteColor];
  [v81 setTextColor:v100];

  v203 = UIFontTextStyleFootnote;
  v101 = [v204 preferredFontForTextStyle:?];
  isa = UIFont.withWeight(_:)(UIFontWeightSemibold).super.isa;

  [v81 setFont:isa];
  v103 = COERCE_DOUBLE(v81);
  [*&v103 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v104 = COERCE_DOUBLE([objc_allocWithZone(UIView) init]);
  v105 = [*&v104 layer];
  v106 = specialized static MOSuggestionSheetVideoPlaybackView.gradient.getter();
  [v105 addSublayer:v106];

  [v50 addSubview:*&v104];
  [*&v104 setTranslatesAutoresizingMaskIntoConstraints:0];
  v107 = [*&v104 widthAnchor];
  v108 = [v107 constraintEqualToConstant:100.0];

  [v108 setActive:1];
  [*&v104 setTranslatesAutoresizingMaskIntoConstraints:0];
  v109 = [*&v104 heightAnchor];
  v110 = [v109 constraintEqualToConstant:75.0];

  [v110 setActive:1];
  [v50 addSubview:*&v103];
  [v50 bringSubviewToFront:*&v103];
  v111 = v206;
  if (v206 == 8)
  {
    v112 = 44.0;
  }

  else
  {
    v112 = 8.0;
  }

  v113 = [*&v103 superview];
  v60 = v202;
  if (v113)
  {
    v114 = v113;
    v200 = v104;
    v115 = v65;
    v116 = v202;
    [*&v103 setTranslatesAutoresizingMaskIntoConstraints:0];
    v117 = [*&v103 trailingAnchor];
    v118 = [v114 trailingAnchor];
    v119 = [v117 constraintEqualToAnchor:v118];

    [v119 setConstant:-v112];
    if (v119)
    {
      v120 = v206;
      [v119 setActive:1];

      v60 = v116;
      v65 = v115;
      v104 = v200;
      if (v120 != 8)
      {
        goto LABEL_38;
      }

LABEL_43:
      [*&v103 frame];
      Width = CGRectGetWidth(v219);
      v127 = [v204 preferredFontForTextStyle:v203];
      v128 = UIFont.withWeight(_:)(UIFontWeightSemibold).super.isa;

      v129 = specialized UILabel.estimatedHeight(forWidth:text:ofFont:)(0, 0xE000000000000000, v128, Width);
      v130 = [*&v103 superview];
      if (v130)
      {
        v131 = v130;
        [*&v103 setTranslatesAutoresizingMaskIntoConstraints:0];
        v132 = [*&v103 bottomAnchor];
        v133 = [v131 bottomAnchor];
        v134 = [v132 constraintEqualToAnchor:v133];

        if (v134)
        {
          [v134 setConstant:-(v129 * -0.5 + 8.0 + 14.0)];
          [v134 setActive:1];
        }
      }

      v206 = v65;
      MOSuggestionSheetVideoPlaybackView.setupMuteButton()();
      v135 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_muteButton;
      [v50 addSubview:*(v50 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_muteButton)];
      v136 = *(v50 + v135);
      v137 = [v136 superview];
      if (v137)
      {
        v138 = v137;
        [v136 setTranslatesAutoresizingMaskIntoConstraints:0];
        v139 = [v136 trailingAnchor];
        v140 = [v138 trailingAnchor];
        v141 = [v139 constraintEqualToAnchor:v140];

        [v141 setConstant:-10.0];
        if (v141)
        {
          [v141 setActive:1];
        }
      }

      else
      {
        v141 = 0;
        v138 = v136;
      }

      v142 = *(v50 + v135);
      v143 = [v142 superview];
      if (v143)
      {
        v144 = v143;
        [v142 setTranslatesAutoresizingMaskIntoConstraints:0];
        v145 = [v142 topAnchor];
        v146 = [v144 topAnchor];
        v147 = [v145 constraintEqualToAnchor:v146];

        [v147 setConstant:10.0];
        if (v147)
        {
          [v147 setActive:1];
        }
      }

      else
      {
        v147 = 0;
        v144 = v142;
      }

      v148 = [objc_allocWithZone(type metadata accessor for MOPlayPauseButton()) init];
      v149 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_playPauseButton;
      v150 = *(v50 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_playPauseButton);
      *(v50 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_playPauseButton) = v148;

      v151 = *(v50 + v149);
      if (v151 && (v152 = *((swift_isaMask & *v151) + 0xB0), v153 = v151, v154 = v50, v152(v50, &protocol witness table for MOSuggestionSheetVideoPlaybackView), v153, *(v50 + v149)))
      {
        [v154 addSubview:?];
        v155 = *(v50 + v149);
        if (v155)
        {
          v156 = v155;
          v157 = [v156 superview];
          if (v157)
          {
            v158 = v157;
            [v156 setTranslatesAutoresizingMaskIntoConstraints:0];
            v159 = [v156 leadingAnchor];
            v160 = [v158 leadingAnchor];
            v161 = [v159 constraintEqualToAnchor:v160];

            [v161 setConstant:10.0];
            [v161 setActive:1];

            v156 = v158;
          }

          v65 = v206;

          v162 = *(v50 + v149);
          if (v162)
          {
            v125 = v162;

            v163 = [v125 superview];
            if (!v163)
            {
              v122 = v125;
              v60 = v202;
              goto LABEL_67;
            }

            v122 = v163;
            [v125 setTranslatesAutoresizingMaskIntoConstraints:0];
            v164 = [v125 topAnchor];
            v165 = [v122 topAnchor];
            v166 = [v164 constraintEqualToAnchor:v165];

            [v166 setConstant:10.0];
            [v166 setActive:1];

            v65 = v206;
            v60 = v202;
            goto LABEL_65;
          }

LABEL_86:
          __break(1u);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_86;
    }

    v60 = v116;
    v65 = v115;
    v104 = v200;
  }

  if (v111 == 8)
  {
    goto LABEL_43;
  }

LABEL_38:

  v121 = [*&v103 superview];
  if (v121)
  {
    v122 = v121;
    [*&v103 setTranslatesAutoresizingMaskIntoConstraints:0];
    v123 = [*&v103 bottomAnchor];
    v124 = [v122 bottomAnchor];
    v125 = [v123 constraintEqualToAnchor:v124];

    if (!v125)
    {
LABEL_67:

      goto LABEL_68;
    }

    [v125 setConstant:-8.0];
    [v125 setActive:1];
LABEL_65:

    goto LABEL_67;
  }

LABEL_68:
  [*&v103 intrinsicContentSize];
  v168 = v167;

  v169 = [*&v104 superview];
  if (v169)
  {
    v170 = v169;
    [*&v104 setTranslatesAutoresizingMaskIntoConstraints:0];
    v171 = [*&v104 trailingAnchor];
    v172 = [v170 trailingAnchor];
    v173 = [v171 constraintEqualToAnchor:v172];

    [v173 setConstant:50.0 - v112 + v168 * -0.5];
    [v173 setActive:1];
  }

  v174 = [*&v104 superview];
  if (v174)
  {
    v175 = *&v174;
    [*&v104 setTranslatesAutoresizingMaskIntoConstraints:0];
    v176 = [*&v104 bottomAnchor];
    v177 = [*&v175 bottomAnchor];
    v178 = COERCE_DOUBLE([v176 constraintEqualToAnchor:v177]);

    if (v178 != 0.0)
    {
      [*&v178 setConstant:37.5];
      [*&v178 setActive:1];

      v103 = v104;
      v104 = v178;
    }

    v103 = v104;
  }

  else
  {
    v175 = v104;
  }

LABEL_76:
  v179 = v60;
  v180 = v50;
  [v180 setIsAccessibilityElement:1];
  [v180 setAccessibilityIgnoresInvertColors:1];

  v181 = objc_opt_self();
  v182 = v180;
  v183 = [v181 mainBundle];
  v212._object = 0x80000001002B9320;
  v184._countAndFlagsBits = 0x6F65646956;
  v185 = v65;
  v212._countAndFlagsBits = 0xD00000000000002ALL;
  v184._object = 0xE500000000000000;
  v186._countAndFlagsBits = 0;
  v186._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v184, 0, v183, v186, v212);

  v187 = String._bridgeToObjectiveC()();

  [v182 setAccessibilityLabel:v187];

  v188 = objc_opt_self();
  v189 = [v188 defaultCenter];
  v190 = String._bridgeToObjectiveC()();
  v191 = v185();
  if (v191 && (v192 = v191, v193 = [v191 currentItem], v192, v193))
  {
    time.value = v193;
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for AVPlayerItem);
    v194 = _bridgeAnythingToObjectiveC<A>(_:)();
  }

  else
  {
    v194 = 0;
  }

  [v189 addObserver:v182 selector:"finishedPlayingWithNote:" name:v190 object:v194];

  swift_unknownObjectRelease();
  v195 = [v188 defaultCenter];
  v196 = one-time initialization token for PLAYBACK_SHOULD_PAUSE_NOTIFICATION;
  v197 = v182;
  if (v196 != -1)
  {
    swift_once();
  }

  [v195 addObserver:v197 selector:"didReceiveInteruptionWithNote:" name:static MOSuggestionSheetVideoPlaybackView.PLAYBACK_SHOULD_PAUSE_NOTIFICATION object:0];

  v179(v208, v207);
}

Swift::Void __swiftcall MOSuggestionSheetVideoPlaybackView.configureBaseVideoView()()
{
  v1 = *&v0[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_baseVideoView];
  [v0 addSubview:v1];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static MOAngelLogger.assets);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134218752;
    *(v6 + 4) = *&v3[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_verticalShift];
    *(v6 + 12) = 2048;
    *(v6 + 14) = *&v3[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_horizontalShift];
    *(v6 + 22) = 2048;
    v7 = &v3[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_targetBaseFrame];
    *(v6 + 24) = CGRectGetWidth(*&v3[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_targetBaseFrame]);
    *(v6 + 32) = 2048;
    *(v6 + 34) = CGRectGetHeight(*v7);
    _os_log_impl(&_mh_execute_header, v4, v5, "[MOSuggestionSheetVideoPlaybackView] verticalShift=%f, horizontalShift=%f, width=%f, height=%f", v6, 0x2Au);
  }

  v8 = &v3[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_targetBaseFrame];
  if (CGRectGetWidth(*&v3[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_targetBaseFrame]) <= 0.0 || CGRectGetHeight(*v8) <= 0.0)
  {
    UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);
  }

  else
  {
    v9 = *&v3[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_verticalShift];
    v10 = [v1 superview];
    if (v10)
    {
      v11 = v10;
      [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
      v12 = [v1 topAnchor];
      v13 = [v11 topAnchor];
      v14 = [v12 constraintEqualToAnchor:v13];

      [v14 setConstant:-v9];
      if (v14)
      {
        [v14 setActive:1];
      }
    }

    v15 = *&v3[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_horizontalShift];
    v16 = [v1 superview];
    if (v16)
    {
      v17 = v16;
      [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
      v18 = [v1 leadingAnchor];
      v19 = [v17 leadingAnchor];
      v20 = [v18 constraintEqualToAnchor:v19];

      [v20 setConstant:-v15];
      if (v20)
      {
        [v20 setActive:1];
      }
    }

    Width = CGRectGetWidth(*v8);
    [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = [v1 widthAnchor];
    v23 = [v22 constraintEqualToConstant:Width];

    [v23 setActive:1];
    Height = CGRectGetHeight(*v8);
    [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = [v1 heightAnchor];
    v26 = [v25 constraintEqualToConstant:Height];

    [v26 setActive:1];
  }
}

id MOSuggestionSheetVideoPlaybackView.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for MOSuggestionSheetVideoPlaybackView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void MOSuggestionSheetVideoPlaybackView.setupMuteButton()()
{
  v1 = (*((swift_isaMask & *v0) + 0x128))();
  if (v1 && (v2 = v1, v3 = [v1 isMuted], v2, v3))
  {
    v4 = *(v0 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_muteButton);
    v5 = *(v0 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_mutedImage);
    if (v5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_muteButton);
    v5 = *(v0 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_unMutedImage);
    if (v5)
    {
LABEL_6:
      v6 = *(v0 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_muteButtonConfig);
      v7 = v4;
      v5 = [v5 imageWithConfiguration:v6];
      goto LABEL_8;
    }
  }

  v8 = v4;
LABEL_8:
  [v4 setImage:v5 forState:0];

  v9 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_muteButton;
  v10 = *(v0 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_muteButton);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 whiteColor];
  [v12 setTintColor:v13];

  v14 = [*(v0 + v9) layer];
  [v14 setMasksToBounds:0];

  v15 = [*(v0 + v9) layer];
  v16 = [v11 blackColor];
  v17 = [v16 CGColor];

  [v15 setShadowColor:v17];
  v18 = [*(v0 + v9) layer];
  LODWORD(v19) = 1.0;
  [v18 setShadowOpacity:v19];

  v20 = [*(v0 + v9) layer];
  [v20 setShadowRadius:16.0];

  v21 = [*(v0 + v9) layer];
  [v21 setShadowOffset:{0.0, 2.0}];

  v22 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"touchMute:"];
  [*(v0 + v9) addGestureRecognizer:v22];
  [*(v0 + v9) setUserInteractionEnabled:1];
  [*(v0 + v9) setDeliversTouchesForGesturesToSuperview:0];
}

void MOSuggestionSheetVideoPlaybackView.didReceivePlayNotification()(SEL *a1)
{
  v3 = (*((swift_isaMask & *v1) + 0x128))();
  [v3 *a1];
}

MomentsUIService::PlayerState __swiftcall MOSuggestionSheetVideoPlaybackView.getPlayerState()()
{
  v1 = (*((swift_isaMask & *v0) + 0x128))();
  result = MomentsUIService_PlayerState_paused;
  if (v1)
  {
    v2 = v1;
    v3 = [v1 timeControlStatus];

    if (v3 == 2)
    {
      return 0;
    }
  }

  return result;
}

void protocol witness for VideoPlaybackDelegate.didReceivePlayNotification() in conformance MOSuggestionSheetVideoPlaybackView(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = (*((swift_isaMask & *v3) + 0x128))();
  [v5 *a3];
}

BOOL protocol witness for VideoPlaybackDelegate.getPlayerState() in conformance MOSuggestionSheetVideoPlaybackView()
{
  v1 = (*((swift_isaMask & *v0) + 0x128))();
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  v3 = [v1 timeControlStatus];

  return v3 != 2;
}

id MOPlayPauseButton.playButtonConfig.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService17MOPlayPauseButton_playButtonConfig;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MOPlayPauseButton.playButtonConfig.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService17MOPlayPauseButton_playButtonConfig;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MOPlayPauseButton.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC16MomentsUIService17MOPlayPauseButton_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*MOPlayPauseButton.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC16MomentsUIService17MOPlayPauseButton_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return MOSuggestionSheetAssetGridView.delegate.modify;
}

char *MOPlayPauseButton.init()()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService17MOPlayPauseButton_playPauseButton;
  type metadata accessor for MOSuggestionSheetOversizedBoundsButton();
  *&v0[v1] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC16MomentsUIService17MOPlayPauseButton_playButtonConfig;
  v3 = [objc_opt_self() whiteColor];
  v4 = objc_opt_self();
  v5 = [v4 configurationWithHierarchicalColor:v3];

  v6 = [objc_opt_self() systemFontOfSize:15.0];
  v7 = [v4 configurationWithFont:v6];

  v8 = [v5 configurationByApplyingConfiguration:v7];
  *&v0[v2] = v8;
  v9 = OBJC_IVAR____TtC16MomentsUIService17MOPlayPauseButton_pauseImage;
  v10 = String._bridgeToObjectiveC()();
  v11 = objc_opt_self();
  v12 = [v11 systemImageNamed:v10];

  *&v0[v9] = v12;
  v13 = OBJC_IVAR____TtC16MomentsUIService17MOPlayPauseButton_playImage;
  v14 = String._bridgeToObjectiveC()();
  v15 = [v11 systemImageNamed:v14];

  *&v0[v13] = v15;
  *&v0[OBJC_IVAR____TtC16MomentsUIService17MOPlayPauseButton_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v40.receiver = v0;
  v40.super_class = type metadata accessor for MOPlayPauseButton();
  v16 = objc_msgSendSuper2(&v40, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  p_align = &stru_100327FE8.align;
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = [v16 widthAnchor];
  v19 = [v18 constraintEqualToConstant:30.0];

  [v19 setActive:1];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  v20 = [v16 heightAnchor];
  v21 = [v20 constraintEqualToConstant:30.0];

  [v21 setActive:1];
  v22 = [objc_opt_self() effectWithStyle:11];
  v23 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v22];

  v24 = v23;
  [v24 _setCornerRadius:15.0];
  [v16 addSubview:v24];
  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];

  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  MOPlayPauseButton.setupPlayPauseButton()();
  v25 = OBJC_IVAR____TtC16MomentsUIService17MOPlayPauseButton_playPauseButton;
  [v16 addSubview:*&v16[OBJC_IVAR____TtC16MomentsUIService17MOPlayPauseButton_playPauseButton]];
  [*&v16[v25] setTranslatesAutoresizingMaskIntoConstraints:0];
  v26 = *&v16[v25];
  v27 = &stru_100327FE8.align;
  v28 = [v26 superview];
  if (v28)
  {
    v29 = v28;
    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
    v30 = [v26 centerYAnchor];
    v31 = [v29 centerYAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];

    [v32 setConstant:0.0];
    if (v32)
    {
      [v32 setActive:1];
    }

    p_align = (&stru_100327FE8 + 24);
    v27 = (&stru_100327FE8 + 24);
  }

  else
  {
    v32 = 0;
    v29 = v26;
  }

  v33 = *&v16[v25];
  v34 = [v33 *(v27 + 271)];
  if (v34)
  {
    v35 = v34;
    [v33 *(p_align + 222)];
    v36 = [v33 centerXAnchor];
    v37 = [v35 centerXAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];

    [v38 setConstant:0.0];
    if (v38)
    {
      [v38 setActive:1];
    }
  }

  else
  {
    v38 = 0;
    v35 = v33;
  }

  return v16;
}

void MOPlayPauseButton.setupPlayPauseButton()()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService17MOPlayPauseButton_playPauseButton;
  v2 = *(v0 + OBJC_IVAR____TtC16MomentsUIService17MOPlayPauseButton_playPauseButton);
  v3 = *(v0 + OBJC_IVAR____TtC16MomentsUIService17MOPlayPauseButton_pauseImage);
  if (v3)
  {
    v4 = (*((swift_isaMask & *v0) + 0x90))(v2);
    v3 = [v3 imageWithConfiguration:v4];
  }

  else
  {
    v5 = v2;
  }

  [v2 setImage:v3 forState:0];

  v6 = *(v0 + v1);
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 whiteColor];
  [v8 setTintColor:v9];

  v10 = [*(v0 + v1) imageView];
  if (v10)
  {
    v11 = v10;
    [v10 setContentMode:1];
  }

  v12 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"touchPlayPause:"];
  [v0 setUserInteractionEnabled:1];
  [*(v0 + v1) addGestureRecognizer:v12];
  [*(v0 + v1) setUserInteractionEnabled:1];
  [*(v0 + v1) setDeliversTouchesForGesturesToSuperview:0];
}

void MOPlayPauseButton.setPlayerPausedButtonUI()(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MomentsUIService17MOPlayPauseButton_playPauseButton);
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = (*((swift_isaMask & *v1) + 0x90))(v2);
    v6 = [v3 imageWithConfiguration:v4];
  }

  else
  {
    v5 = v2;
    v6 = 0;
  }

  [v2 setImage:v6 forState:0];
}

uint64_t MOSuggestionSheetVideoPlaybackView.ThumbnailView.init(thumbnail:assignedTileSize:cropRect:duration:)(void *a1, char a2, uint64_t a3, uint64_t a4, id a5)
{
  v11 = OBJC_IVAR____TtCC16MomentsUIService34MOSuggestionSheetVideoPlaybackView13ThumbnailView_imageView;
  v12 = [objc_allocWithZone(UIImageView) init];
  *&v5[v11] = v12;
  [v12 setImage:a1];
  [*&v5[v11] setContentMode:2];
  if ((*(a3 + 32) & 1) == 0)
  {
    v14 = *(a3 + 16);
    v13 = *(a3 + 24);
    v16 = *a3;
    v15 = *(a3 + 8);
    v82.origin.x = 0.0;
    v82.origin.y = 0.0;
    v82.size.width = 0.0;
    v82.size.height = 0.0;
    v81.origin.x = *a3;
    v81.origin.y = v15;
    v81.size.width = v14;
    v81.size.height = v13;
    if (!CGRectEqualToRect(v81, v82))
    {
      v17 = [*&v5[v11] layer];
      [v17 setContentsRect:{v16, v15, v14, v13}];
    }
  }

  v80.receiver = v5;
  v80.super_class = type metadata accessor for MOSuggestionSheetVideoPlaybackView.ThumbnailView();
  v18 = objc_msgSendSuper2(&v80, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v19 = OBJC_IVAR____TtCC16MomentsUIService34MOSuggestionSheetVideoPlaybackView13ThumbnailView_imageView;
  v20 = *&v18[OBJC_IVAR____TtCC16MomentsUIService34MOSuggestionSheetVideoPlaybackView13ThumbnailView_imageView];
  v21 = v18;
  [v21 addSubview:v20];
  v22 = *&v18[v19];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  if (a5)
  {

    return v21;
  }

  v23 = *&a4;
  v24 = *&a4 / 3600.0;
  if (COERCE__INT64(fabs(*&a4 / 3600.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_56;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v24 >= 9.22337204e18)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    swift_once();
    goto LABEL_11;
  }

  v25 = v24;
  a5 = [objc_allocWithZone(UILabel) init];
  v78 = a1;
  if (v25 < 1)
  {
    if (one-time initialization token for durationWithMinuteSecondFormatter != -1)
    {
      swift_once();
    }

    v31 = [static MODateFormatter.durationWithMinuteSecondFormatter stringFromTimeInterval:*&a4];
    if (v31)
    {
      v32 = v31;
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v33;
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    v79 = v30;
    v34 = 600.0;
    goto LABEL_21;
  }

  if (one-time initialization token for durationWithHourMinuteSecondFormatter != -1)
  {
    goto LABEL_58;
  }

LABEL_11:
  v26 = [static MODateFormatter.durationWithHourMinuteSecondFormatter stringFromTimeInterval:*&a4];
  if (v26)
  {
    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  v79 = v30;
  v34 = 36000.0;
LABEL_21:
  if (v23 >= v34)
  {
    goto LABEL_33;
  }

  if (!v30)
  {
    goto LABEL_35;
  }

  v35 = specialized Collection.first.getter(v28, v30);
  if (!v36)
  {
    goto LABEL_34;
  }

  if (v35 == 48 && v36 == 0xE100000000000000)
  {

    goto LABEL_28;
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v38 & 1) == 0)
  {
LABEL_34:
    v77 = v30;
    v41 = String._bridgeToObjectiveC()();
    goto LABEL_36;
  }

LABEL_28:
  v39 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v39 = v28 & 0xFFFFFFFFFFFFLL;
  }

  if (v39)
  {
    result = specialized Collection.first.getter(v28, v30);
    if (v40)
    {

      specialized RangeReplaceableCollection.removeFirst(_:)(1);
      v30 = v79;
LABEL_33:
      if (v30)
      {
        goto LABEL_34;
      }

LABEL_35:
      v77 = 0;
      v41 = 0;
LABEL_36:
      [a5 setText:{v41, v77}];

      v42 = [objc_opt_self() whiteColor];
      [a5 setTextColor:v42];

      v43 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
      isa = UIFont.withWeight(_:)(UIFontWeightSemibold).super.isa;

      [a5 setFont:isa];
      v45 = a5;
      [v45 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
      v46 = [objc_allocWithZone(UIView) init];
      v47 = [v46 layer];
      v48 = specialized static MOSuggestionSheetVideoPlaybackView.gradient.getter();
      [v47 addSublayer:v48];

      [v21 addSubview:v46];
      [v46 setTranslatesAutoresizingMaskIntoConstraints:0];
      v49 = [v46 widthAnchor];
      v50 = [v49 constraintEqualToConstant:100.0];

      [v50 setActive:1];
      [v46 setTranslatesAutoresizingMaskIntoConstraints:0];
      v51 = [v46 heightAnchor];
      v52 = [v51 constraintEqualToConstant:75.0];

      [v52 setActive:1];
      [v21 addSubview:v45];
      [v21 bringSubviewToFront:v45];
      if (a2 == 8)
      {
        v53 = 44.0;
      }

      else
      {
        v53 = 8.0;
      }

      v54 = [v45 superview];
      if (v54)
      {
        v55 = v54;
        [v45 setTranslatesAutoresizingMaskIntoConstraints:0];
        v56 = [v45 trailingAnchor];
        v57 = [v55 trailingAnchor];
        v58 = [v56 constraintEqualToAnchor:v57];

        [v58 setConstant:-v53];
        [v58 setActive:1];
      }

      v59 = [v45 superview];
      if (v59)
      {
        v60 = v59;
        [v45 setTranslatesAutoresizingMaskIntoConstraints:0];
        v61 = [v45 bottomAnchor];
        v62 = [v60 bottomAnchor];
        v63 = [v61 constraintEqualToAnchor:v62];

        if (v63)
        {
          [v63 setConstant:-8.0];
          [v63 setActive:1];
        }
      }

      [v45 intrinsicContentSize];
      v65 = v64;

      v66 = [v46 superview];
      if (v66)
      {
        v67 = v66;
        [v46 setTranslatesAutoresizingMaskIntoConstraints:0];
        v68 = [v46 trailingAnchor];
        v69 = [v67 trailingAnchor];
        v70 = [v68 constraintEqualToAnchor:v69];

        [v70 setConstant:50.0 - v53 + v65 * -0.5];
        [v70 setActive:1];
      }

      v71 = [v46 superview];
      if (v71)
      {
        v72 = v71;
        [v46 setTranslatesAutoresizingMaskIntoConstraints:0];
        v73 = [v46 bottomAnchor];
        v74 = [v72 bottomAnchor];
        v75 = [v73 constraintEqualToAnchor:v74];

        if (v75)
        {
          [v75 setConstant:37.5];
          [v75 setActive:1];

LABEL_53:

          return v21;
        }

        v76 = v21;
      }

      else
      {
        v72 = v21;
        v76 = v78;
      }

      goto LABEL_53;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void MOSuggestionSheetVideoPlaybackView.ThumbnailView.init(coder:)()
{
  v1 = OBJC_IVAR____TtCC16MomentsUIService34MOSuggestionSheetVideoPlaybackView13ThumbnailView_imageView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id MOSuggestionSheetBaseVideoPlaybackView.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t specialized RangeReplaceableCollection.removeFirst(_:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      result = String.index(_:offsetBy:limitedBy:)();
      if ((v1 & 1) == 0)
      {
        v2 = result;
        result = 15;
        v1 = v2;

        return String.removeSubrange(_:)(result, v1);
      }
    }

    __break(1u);
    return String.removeSubrange(_:)(result, v1);
  }

  return result;
}

void specialized MOSuggestionSheetVideoPlaybackView.setNonDisruptiveMute()()
{
  v0 = [objc_opt_self() sharedInstance];
  v13 = 0;
  v1 = [v0 setCategory:AVAudioSessionCategoryAmbient error:&v13];

  v2 = v13;
  if (v1)
  {

    v3 = v2;
  }

  else
  {
    v4 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static MOAngelLogger.shared);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = Error.localizedDescription.getter();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v13);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to set audio playback as non-disruptive %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
    }

    else
    {
    }
  }
}

id specialized static MOSuggestionSheetVideoPlaybackView.gradient.getter()
{
  v0 = [objc_allocWithZone(CAGradientLayer) init];
  [v0 setType:kCAGradientLayerRadial];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1002A4A00;
  v2 = objc_opt_self();
  v3 = [v2 blackColor];
  v4 = [v3 colorWithAlphaComponent:0.3];

  v5 = [v4 CGColor];
  type metadata accessor for CGColorRef(0);
  v7 = v6;
  *(v1 + 56) = v6;
  *(v1 + 32) = v5;
  v8 = [v2 blackColor];
  v9 = [v8 colorWithAlphaComponent:0.0];

  v10 = [v9 CGColor];
  *(v1 + 88) = v7;
  *(v1 + 64) = v10;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v0 setColors:isa];

  [v0 setStartPoint:{0.5, 0.5}];
  [v0 setEndPoint:{1.0, 1.0}];
  [v0 setFrame:{0.0, 0.0, 100.0, 75.0}];
  return v0;
}

void specialized MOSuggestionSheetVideoPlaybackView.finishedPlaying(note:)()
{
  v1 = v0;
  v2 = (*((swift_isaMask & *v0) + 0x118))(0);
  v3 = *(v0 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_playPauseButton);
  if (v3)
  {
    v4 = *((swift_isaMask & *v3) + 0xD0);
    v5 = v3;
    v4();
  }

  v6 = (*((swift_isaMask & *v1) + 0x128))(v2);
  if (v6)
  {
    v7 = v6;
    v8 = [v6 currentItem];

    if (v8)
    {
      epoch = kCMTimeZero.epoch;
      v10[0] = kCMTimeZero.value;
      v10[1] = *&kCMTimeZero.timescale;
      v10[2] = epoch;
      [v8 seekToTime:v10 completionHandler:0];
    }
  }
}

void specialized MOSuggestionSheetVideoPlaybackView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_verticalShift) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_horizontalShift) = 0;
  v1 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_config;
  v2 = [objc_opt_self() grayColor];
  v3 = objc_opt_self();
  v4 = [v3 configurationWithHierarchicalColor:v2];

  v5 = objc_opt_self();
  v6 = [v5 systemFontOfSize:50.0];
  v7 = [v3 configurationWithFont:v6];

  v8 = [v4 configurationByApplyingConfiguration:v7];
  *(v0 + v1) = v8;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_isPlaying) = 0;
  v9 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_muteButton;
  type metadata accessor for MOSuggestionSheetOversizedBoundsButton();
  *(v0 + v9) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_playPauseButton) = 0;
  v10 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_muteButtonConfig;
  v11 = [v5 preferredFontForTextStyle:UIFontTextStyleTitle3];
  v12 = [v3 configurationWithFont:v11];

  *(v0 + v10) = v12;
  v13 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_unMutedImage;
  v14 = String._bridgeToObjectiveC()();
  v15 = objc_opt_self();
  v16 = [v15 systemImageNamed:v14];

  *(v0 + v13) = v16;
  v17 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_mutedImage;
  v18 = String._bridgeToObjectiveC()();
  v19 = [v15 systemImageNamed:v18];

  *(v0 + v17) = v19;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized MOSuggestionSheetVideoPlaybackView.clearNonDisruptiveMute()()
{
  v0 = [objc_opt_self() sharedInstance];
  v13 = 0;
  v1 = [v0 setCategory:AVAudioSessionCategoryPlayback mode:AVAudioSessionModeDefault options:0 error:&v13];

  v2 = v13;
  if (v1)
  {

    v3 = v2;
  }

  else
  {
    v4 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static MOAngelLogger.shared);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = Error.localizedDescription.getter();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v13);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to set audio playback as disruptive %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
    }

    else
    {
    }
  }
}

void specialized MOSuggestionSheetVideoPlaybackView.touchMute(_:)()
{
  v1 = v0;
  v2 = *((swift_isaMask & *v0) + 0x128);
  v3 = v2();
  if (v3 && (v4 = v3, v5 = [v3 isMuted], v4, v5))
  {
    v6 = v2();
    if (v6)
    {
      v7 = v6;
      [v6 setMuted:0];
    }

    specialized MOSuggestionSheetVideoPlaybackView.clearNonDisruptiveMute()();
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    (*(*static MOMusicPlaybackCoordinator.shared + 232))();
    v8 = *(v1 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_muteButton);
    v9 = *(v1 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_unMutedImage);
    if (v9)
    {
LABEL_12:
      v12 = *(v1 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_muteButtonConfig);
      v13 = v8;
      v14 = [v9 imageWithConfiguration:v12];
      goto LABEL_14;
    }
  }

  else
  {
    v10 = v2();
    if (v10)
    {
      v11 = v10;
      [v10 setMuted:1];
    }

    specialized MOSuggestionSheetVideoPlaybackView.setNonDisruptiveMute()();
    v8 = *(v1 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_muteButton);
    v9 = *(v1 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView_mutedImage);
    if (v9)
    {
      goto LABEL_12;
    }
  }

  v15 = v8;
  v14 = 0;
LABEL_14:
  v16 = v14;
  [v8 setImage:? forState:?];
}

uint64_t specialized MOPlayPauseButton.touchPlayPause(_:)()
{
  result = (*((swift_isaMask & *v0) + 0xA8))();
  if (!result)
  {
    return result;
  }

  v3 = v2;
  ObjectType = swift_getObjectType();
  if (((*(v3 + 24))(ObjectType, v3) & 1) == 0)
  {
    (*(v3 + 16))(ObjectType, v3);
    v5 = *(v0 + OBJC_IVAR____TtC16MomentsUIService17MOPlayPauseButton_playPauseButton);
    v6 = *(v0 + OBJC_IVAR____TtC16MomentsUIService17MOPlayPauseButton_playImage);
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_8:
    v9 = v5;
    v8 = 0;
    goto LABEL_9;
  }

  (*(v3 + 8))(ObjectType, v3);
  v5 = *(v0 + OBJC_IVAR____TtC16MomentsUIService17MOPlayPauseButton_playPauseButton);
  v6 = *(v0 + OBJC_IVAR____TtC16MomentsUIService17MOPlayPauseButton_pauseImage);
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_7:
  v7 = (*((swift_isaMask & *v0) + 0x90))(v5);
  v8 = [v6 imageWithConfiguration:v7];

LABEL_9:
  [v5 setImage:v8 forState:0];

  return swift_unknownObjectRelease();
}

void specialized MOPlayPauseButton.init(coder:)()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService17MOPlayPauseButton_playPauseButton;
  type metadata accessor for MOSuggestionSheetOversizedBoundsButton();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC16MomentsUIService17MOPlayPauseButton_playButtonConfig;
  v3 = [objc_opt_self() whiteColor];
  v4 = objc_opt_self();
  v5 = [v4 configurationWithHierarchicalColor:v3];

  v6 = [objc_opt_self() systemFontOfSize:15.0];
  v7 = [v4 configurationWithFont:v6];

  v8 = [v5 configurationByApplyingConfiguration:v7];
  *(v0 + v2) = v8;
  v9 = OBJC_IVAR____TtC16MomentsUIService17MOPlayPauseButton_pauseImage;
  v10 = String._bridgeToObjectiveC()();
  v11 = objc_opt_self();
  v12 = [v11 systemImageNamed:v10];

  *(v0 + v9) = v12;
  v13 = OBJC_IVAR____TtC16MomentsUIService17MOPlayPauseButton_playImage;
  v14 = String._bridgeToObjectiveC()();
  v15 = [v11 systemImageNamed:v14];

  *(v0 + v13) = v15;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService17MOPlayPauseButton_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type PlayerState and conformance PlayerState()
{
  result = lazy protocol witness table cache variable for type PlayerState and conformance PlayerState;
  if (!lazy protocol witness table cache variable for type PlayerState and conformance PlayerState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlayerState and conformance PlayerState);
  }

  return result;
}

uint64_t sub_1001D871C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xF8))();
  *a2 = result;
  return result;
}

uint64_t sub_1001D87E4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x110))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1001D88AC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x128))();
  *a2 = result;
  return result;
}

uint64_t sub_1001D8910(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0x130);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1001D8980@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x90))();
  *a2 = result;
  return result;
}

uint64_t sub_1001D8A40@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xA8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1001D8A9C(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((swift_isaMask & **a2) + 0xB0);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MOSuggestionSheetBaseVideoPlaybackView.ViewAdjustment(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MOSuggestionSheetBaseVideoPlaybackView.ViewAdjustment(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t *MOProcessingServer.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static MOProcessingServer.shared;
}

id static MOProcessingServer.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static MOProcessingServer.shared;

  return v1;
}

void *MOProcessingServer.listener.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService18MOProcessingServer_listener;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MOProcessingServer.listener.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService18MOProcessingServer_listener;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MOProcessingServer.processorManager.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService18MOProcessingServer_processorManager;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id MOProcessingServer.notificationManager.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService18MOProcessingServer_notificationManager;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MOProcessingServer.notificationManager.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService18MOProcessingServer_notificationManager;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

Swift::Void __swiftcall MOProcessingServer.start()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC16MomentsUIService18MOProcessingServer_lock);
  v5 = [v4 lock];

  [v4 unlock];
  MOProcessingServer.setupListener()();
  type metadata accessor for MomentsUIManager();
  v6 = static MomentsUIManager.shared.getter();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static MOPresenterServer.shared;
  lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type MOPresenterServer and conformance MOPresenterServer, type metadata accessor for MOPresenterServer);
  v8 = v7;
  dispatch thunk of MomentsUIManager.sharedServer.setter();

  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v10;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #2 in MOProcessingServer.start(), v11);
}

Swift::Void __swiftcall MOProcessingServer.setupListener()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + OBJC_IVAR____TtC16MomentsUIService18MOProcessingServer_lock);
  [v5 lock];
  v16 = v0;
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for closure #1 in closure #1 in MOProcessingServer.setupListener();
  *(v6 + 24) = v15;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ();
  aBlock[3] = &block_descriptor_35;
  v7 = _Block_copy(aBlock);
  v8 = objc_opt_self();

  v9 = [v8 listenerWithConfigurator:v7];
  _Block_release(v7);

  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  else
  {
    v10 = *((swift_isaMask & *v0) + 0x80);
    v11 = v9;
    v10(v9);
    [v5 unlock];
    [v11 activate];
    type metadata accessor for CommonLogger();
    static CommonLogger.services.getter();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "[BSServiceConnectionHost] listener active", v14, 2u);
    }

    (*(v2 + 8))(v4, v1);
  }
}

uint64_t closure #2 in MOProcessingServer.start()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return _swift_task_switch(closure #2 in MOProcessingServer.start(), 0, 0);
}

uint64_t closure #2 in MOProcessingServer.start()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = closure #2 in MOProcessingServer.start();

    return MOProcessingServer.subscribeToCloudOnboardingChanges()();
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

{
  v1 = *(*v0 + 56);

  return _swift_task_switch(closure #2 in MOProcessingServer.start(), 0, 0);
}

{
  **(v0 + 40) = *(v0 + 56) == 0;
  return (*(v0 + 8))();
}

uint64_t MOProcessingServer.subscribeToCloudOnboardingChanges()()
{
  v1[2] = v0;
  v1[3] = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay9MomentsUI11CloudDeviceVG_GMd);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(MOProcessingServer.subscribeToCloudOnboardingChanges(), 0, 0);
}

{
  type metadata accessor for MomentsUIManager();
  v1 = static MomentsUIManager.shared.getter();
  *(v0 + 56) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  type metadata accessor for CloudManager();
  lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type CloudManager and conformance CloudManager, &type metadata accessor for CloudManager);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(MOProcessingServer.subscribeToCloudOnboardingChanges(), v3, v2);
}

{
  CloudManager.newlyOnboardedDevicesPublisher.getter();

  return _swift_task_switch(MOProcessingServer.subscribeToCloudOnboardingChanges(), 0, 0);
}

{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = v5;
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Published<[CloudDevice]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay9MomentsUI11CloudDeviceVG_GMd);

  v8 = Publisher<>.sink(receiveValue:)();

  (*(v4 + 8))(v1, v3);
  *(v6 + OBJC_IVAR____TtC16MomentsUIService18MOProcessingServer_cloudManagerSubscription) = v8;

  v9 = v0[1];

  return v9();
}

id MOProcessingServer.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  *&v0[OBJC_IVAR____TtC16MomentsUIService18MOProcessingServer_listener] = 0;
  v4 = OBJC_IVAR____TtC16MomentsUIService18MOProcessingServer_processorManager;
  type metadata accessor for TaskProcessorManager();
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v5 + 112) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_16MomentsUIService19TaskProcessorWorker_pTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_16MomentsUIService19TaskProcessorWorker_pyKcTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  *&v0[v4] = v5;
  *(v5 + 120) = v6;
  v7 = OBJC_IVAR____TtC16MomentsUIService18MOProcessingServer_notificationManager;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static SuggestionNotificationManager.shared;
  *&v0[v7] = static SuggestionNotificationManager.shared;
  v9 = OBJC_IVAR____TtC16MomentsUIService18MOProcessingServer_lock;
  v10 = objc_allocWithZone(NSRecursiveLock);
  v11 = v8;
  *&v0[v9] = [v10 init];
  *&v0[OBJC_IVAR____TtC16MomentsUIService18MOProcessingServer_cloudManagerSubscription] = 0;
  v12 = type metadata accessor for MOProcessingServer();
  v18.receiver = v0;
  v18.super_class = v12;
  v13 = objc_msgSendSuper2(&v18, "init");
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v13;
  v16 = v13;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in MOProcessingServer.init(), v15);

  return v16;
}

uint64_t closure #1 in MOProcessingServer.init()()
{
  v1 = (*((swift_isaMask & **(v0 + 16)) + 0x90))();
  *(v0 + 24) = v1;
  *(v0 + 32) = type metadata accessor for HealthCheckTaskProcessor();
  *(v0 + 40) = type metadata accessor for BackgroundSyncTaskProcessor();

  return _swift_task_switch(closure #1 in MOProcessingServer.init(), v1, 0);
}

{
  v1 = *(v0 + 40);
  TaskProcessorManager.registerProcessorOfType<A>(_:)(*(v0 + 32), *(v0 + 32), &protocol witness table for HealthCheckTaskProcessor);
  TaskProcessorManager.registerProcessorOfType<A>(_:)(v1, v1, &protocol witness table for BackgroundSyncTaskProcessor);

  v2 = *(v0 + 8);

  return v2();
}

id MOProcessingServer.__deallocating_deinit()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MomentsUIService18MOProcessingServer_lock);
  v2 = [v1 lock];
  v3 = (*((swift_isaMask & *v0) + 0x78))(v2);
  [v1 unlock];
  [v3 invalidate];

  v5.receiver = v0;
  v5.super_class = type metadata accessor for MOProcessingServer();
  return objc_msgSendSuper2(&v5, "dealloc");
}

Swift::Void __swiftcall MOProcessingServer.invalidateListener()()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MomentsUIService18MOProcessingServer_lock);
  v2 = [v1 lock];
  v3 = (*((swift_isaMask & *v0) + 0x78))(v2);
  [v1 unlock];
  [v3 invalidate];
}

uint64_t closure #1 in MOProcessingServer.subscribeToCloudOnboardingChanges()(uint64_t *a1, uint64_t a2)
{
  v44 = a2;
  v3 = type metadata accessor for CloudDevice();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v54 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v6;
  __chkstk_darwin(v5);
  v8 = &v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v43 - v14;
  __chkstk_darwin(v13);
  v43 = &v43 - v16;
  v17 = *a1;
  v18 = *(*a1 + 16);
  if (v18)
  {
    v20 = *(v4 + 16);
    v19 = v4 + 16;
    v50 = v20;
    v51 = v15;
    v21 = *(v19 + 64);
    v48 = (v21 + 32) & ~v21;
    v49 = v21;
    v22 = v17 + v48;
    v23 = *(v19 + 56);
    v46 = (v19 + 16);
    v47 = v23;
    v52 = v8;
    v53 = v19;
    v45 = (v19 - 8);
    v24 = &_sScPSgMd;
    do
    {
      v56 = v22;
      v57 = v18;
      v25 = v24;
      v26 = v12;
      v27 = v3;
      v28 = v50;
      (v50)(v8);
      v29 = type metadata accessor for TaskPriority();
      v30 = *(v29 - 8);
      (*(v30 + 56))(v15, 1, 1, v29);
      v31 = v54;
      v28(v54, v8, v27);
      v3 = v27;
      v12 = v26;
      v24 = v25;
      v32 = v48;
      v33 = swift_allocObject();
      *(v33 + 16) = 0;
      *(v33 + 24) = 0;
      (*v46)(v33 + v32, v31, v3);
      outlined init with copy of (String, Date?)(v15, v12, v25);
      LODWORD(v32) = (*(v30 + 48))(v12, 1, v29);

      if (v32 == 1)
      {
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v12, v25);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v30 + 8))(v12, v29);
      }

      v34 = *(v33 + 16);
      swift_unknownObjectRetain();

      if (v34)
      {
        swift_getObjectType();
        v35 = dispatch thunk of Actor.unownedExecutor.getter();
        v37 = v36;
        swift_unknownObjectRelease();
      }

      else
      {
        v35 = 0;
        v37 = 0;
      }

      v38 = swift_allocObject();
      *(v38 + 16) = &async function pointer to partial apply for closure #1 in static MOProcessingServer.sendAlertFor(_:);
      *(v38 + 24) = v33;
      if (v37 | v35)
      {
        v58 = 0;
        v59 = 0;
        v60 = v35;
        v61 = v37;
      }

      v8 = v52;
      swift_task_create();
      v15 = v51;
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v51, v25);
      (*v45)(v8, v3);

      v22 = v56 + v47;
      v18 = v57 - 1;
    }

    while (v57 != 1);
  }

  v39 = type metadata accessor for TaskPriority();
  v40 = v43;
  (*(*(v39 - 8) + 56))(v43, 1, 1, v39);
  v41 = swift_allocObject();
  v41[2] = 0;
  v41[3] = 0;
  v41[4] = v44;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v40, &async function pointer to partial apply for closure #1 in closure #1 in MOProcessingServer.subscribeToCloudOnboardingChanges(), v41);
}

uint64_t closure #1 in closure #1 in MOProcessingServer.subscribeToCloudOnboardingChanges()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);

  return CloudManager.clearNewlyOnboardedDevices()();
}

uint64_t closure #1 in static MOProcessingServer.sendAlertFor(_:)()
{
  if (CloudDevice.onboarded.getter())
  {
    CloudDevice.name.getter();
    if (v1)
    {
      type metadata accessor for NewOnboardedSyncAlert();
      dispatch thunk of static NewOnboardedSyncAlert.show(deviceName:)();
    }
  }

  v2 = *(v0 + 8);

  return v2();
}

id closure #1 in closure #1 in MOProcessingServer.setupListener()(void *a1, uint64_t a2)
{
  static ViewServiceConstants.momentsUIServiceDomain.getter();
  v4 = String._bridgeToObjectiveC()();

  [a1 setDomain:v4];

  static ViewServiceConstants.momentsUIServiceProcessorIdentifier.getter();
  v5 = String._bridgeToObjectiveC()();

  [a1 setService:v5];

  return [a1 setDelegate:a2];
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t MOProcessingServer.keepProcessUp()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return specialized MOProcessingServer.keepProcessUp()();
}

uint64_t @objc closure #1 in MOProcessingServer.keepProcessUp()(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = @objc closure #1 in MOProcessingServer.keepProcessUp();

  return specialized MOProcessingServer.keepProcessUp()();
}

uint64_t MOProcessingServer.keepUIActive()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);

  return specialized MOProcessingServer.keepUIActive()();
}

uint64_t @objc closure #1 in MOProcessingServer.keepUIActive()(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = @objc closure #1 in MOProcessingServer.keepUIActive();

  return specialized MOProcessingServer.keepUIActive()();
}

uint64_t @objc closure #1 in MOProcessingServer.keepUIActive()()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 16);
  if (v2)
  {
    v7 = _convertErrorToNSError(_:)();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(v6, 0);
  }

  _Block_release(*(v4 + 16));
  v8 = *(v5 + 8);

  return v8();
}

uint64_t MOProcessingServer.testInjectBadRecordChange()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = MOProcessingServer.testInjectBadRecordChange();

  return specialized MOProcessingServer.testInjectBadRecordChange()();
}

uint64_t @objc closure #1 in MOProcessingServer.testInjectBadRecordChange()(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = @objc closure #1 in MOProcessingServer.testInjectBadRecordChange();

  return specialized MOProcessingServer.testInjectBadRecordChange()();
}

uint64_t MOProcessingServer.runFullProcessing()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = MOProcessingServer.testInjectBadRecordChange();

  return specialized MOProcessingServer.runFullProcessing()();
}

uint64_t @objc closure #1 in MOProcessingServer.runFullProcessing()(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = @objc closure #1 in MOProcessingServer.testInjectBadRecordChange();

  return specialized MOProcessingServer.runFullProcessing()();
}

uint64_t MOProcessingServer.realTimeCheckForNotification(significantLocationEnabled:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(MOProcessingServer.realTimeCheckForNotification(significantLocationEnabled:), 0, 0);
}

uint64_t MOProcessingServer.realTimeCheckForNotification(significantLocationEnabled:)()
{
  v1 = (*((swift_isaMask & **(v0 + 32)) + 0xA8))();
  *(v0 + 40) = v1;
  v6 = (*((swift_isaMask & *v1) + 0x80) + **((swift_isaMask & *v1) + 0x80));
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = MOProcessingServer.realTimeCheckForNotification(significantLocationEnabled:);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);

  return v6(v3, v4);
}

uint64_t MOProcessingServer.realTimeCheckForNotification(significantLocationEnabled:)(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t @objc closure #1 in MOProcessingServer.realTimeCheckForNotification(significantLocationEnabled:)(void *a1, const void *a2, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v3[4] = swift_task_alloc();
  v3[5] = swift_task_alloc();
  v3[6] = _Block_copy(a2);
  v7 = a1;
  v8 = a3;

  return _swift_task_switch(@objc closure #1 in MOProcessingServer.realTimeCheckForNotification(significantLocationEnabled:), 0, 0);
}

uint64_t @objc closure #1 in MOProcessingServer.realTimeCheckForNotification(significantLocationEnabled:)()
{
  v1 = (*((swift_isaMask & **(v0 + 24)) + 0xA8))();
  *(v0 + 56) = v1;
  v6 = (*((swift_isaMask & *v1) + 0x80) + **((swift_isaMask & *v1) + 0x80));
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = @objc closure #1 in MOProcessingServer.realTimeCheckForNotification(significantLocationEnabled:);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);

  return v6(v3, v4);
}

uint64_t @objc closure #1 in MOProcessingServer.realTimeCheckForNotification(significantLocationEnabled:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v9 = *v1;

  outlined init with take of Date?(v5, v6);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v6, 1, v10);
  isa = 0;
  if (v12 != 1)
  {
    v14 = *(v3 + 32);
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v14, v10);
  }

  if (a1)
  {
    v15 = _convertErrorToNSError(_:)();
  }

  else
  {
    v15 = 0;
  }

  v16 = *(v3 + 48);
  (v16)[2](v16, isa, v15);
  _Block_release(v16);

  v17 = *(v9 + 8);

  return v17();
}

uint64_t MOProcessingServer.cloudSync()()
{
  return _swift_task_switch(MOProcessingServer.cloudSync(), 0, 0);
}

{
  type metadata accessor for MomentsUIManager();
  v1 = static MomentsUIManager.shared.getter();
  *(v0 + 16) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  v3 = type metadata accessor for CloudManager();
  v4 = lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type CloudManager and conformance CloudManager, &type metadata accessor for CloudManager);
  *v2 = v0;
  v2[1] = MOProcessingServer.cloudSync();

  return CloudManagerProtocol.refresh(force:wait:_:_:)(1, 0, 0x6E795364756F6C63, 0xEB00000000292863, 156, v3, v4);
}

{

  return _swift_task_switch(MOProcessingServer.cloudSync(), 0, 0);
}

uint64_t @objc closure #1 in MOProcessingServer.cloudSync()(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);

  return _swift_task_switch(@objc closure #1 in MOProcessingServer.cloudSync(), 0, 0);
}

uint64_t @objc closure #1 in MOProcessingServer.cloudSync()()
{
  type metadata accessor for MomentsUIManager();
  v1 = static MomentsUIManager.shared.getter();
  *(v0 + 24) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  v3 = type metadata accessor for CloudManager();
  v4 = lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type CloudManager and conformance CloudManager, &type metadata accessor for CloudManager);
  *v2 = v0;
  v2[1] = @objc closure #1 in MOProcessingServer.cloudSync();

  return CloudManagerProtocol.refresh(force:wait:_:_:)(1, 0, 0x6E795364756F6C63, 0xEB00000000292863, 156, v3, v4);
}

{

  return _swift_task_switch(@objc closure #1 in MOProcessingServer.cloudSync(), 0, 0);
}

uint64_t MOProcessingServer.cloudCancelSync()()
{
  return _swift_task_switch(MOProcessingServer.cloudCancelSync(), 0, 0);
}

{
  type metadata accessor for MomentsUIManager();
  v1 = static MomentsUIManager.shared.getter();
  *(v0 + 16) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = MOProcessingServer.cloudCancelSync();

  return CloudManager.cancelSync()();
}

{

  return _swift_task_switch(MOProcessingServer.cloudCancelSync(), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t @objc closure #1 in MOProcessingServer.cloudCancelSync()(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);

  return _swift_task_switch(@objc closure #1 in MOProcessingServer.cloudCancelSync(), 0, 0);
}

uint64_t @objc closure #1 in MOProcessingServer.cloudCancelSync()()
{
  type metadata accessor for MomentsUIManager();
  v1 = static MomentsUIManager.shared.getter();
  *(v0 + 24) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = @objc closure #1 in MOProcessingServer.cloudCancelSync();

  return CloudManager.cancelSync()();
}

{

  return _swift_task_switch(@objc closure #1 in MOProcessingServer.cloudCancelSync(), 0, 0);
}

{
  v1 = *(v0 + 16);

  v1[2](v1, 0);
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t MOProcessingServer.databaseWipe()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = static MOEventBundle.constructedPhotoAssets(resources:suggestionID:);

  return specialized MOProcessingServer.databaseWipe()();
}

uint64_t @objc closure #1 in MOProcessingServer.databaseWipe()(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = @objc closure #1 in MOProcessingServer.databaseWipe();

  return specialized MOProcessingServer.databaseWipe()();
}

uint64_t @objc closure #1 in MOProcessingServer.databaseWipe()(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;

  if (a1)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v3 + 16);
  (v6)[2](v6, v5);

  _Block_release(v6);
  v7 = *(v4 + 8);

  return v7();
}

uint64_t MOProcessingServer.databaseSnapshotList()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = MOProcessingServer.databaseSnapshotList();

  return specialized MOProcessingServer.databaseSnapshotList()();
}

uint64_t closure #1 in MOProcessingServer.databaseSnapshotList()@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  v3 = type metadata accessor for Date();
  v34 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v30[-v7];
  v9 = a1[1];
  v32 = *a1;
  v33 = v9;
  static Date.now.getter();
  dispatch thunk of DBSnapshot.expiry.getter();
  lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date);
  v31 = dispatch thunk of static Comparable.< infix(_:_:)();
  v36 = 0;
  v37 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v36 = 0x746F687370616E53;
  v37 = 0xE900000000000020;
  dispatch thunk of DBSnapshot.generation.getter();
  if (v10)
  {
    specialized Collection.prefix(_:)(8);
  }

  else
  {
    Substring.init(_:)();
  }

  v11 = static String._fromSubstring(_:)();
  v13 = v12;

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  v15._countAndFlagsBits = 46;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  v38 = dispatch thunk of DBSnapshot.sequence.getter();
  v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 32;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  if (v31)
  {
    v18 = 0x3A73657269707845;
  }

  else
  {
    v18 = 0x3A64657269707845;
  }

  v19 = 0xE900000000000020;
  String.append(_:)(*&v18);
  lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date);
  v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v20);

  v21._countAndFlagsBits = 10;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  v23 = v36;
  v22 = v37;
  v36 = v32;
  v37 = v33;

  v24._countAndFlagsBits = v23;
  v24._object = v22;
  String.append(_:)(v24);

  v25 = v36;
  v26 = v37;
  v27 = *(v34 + 8);
  v27(v6, v3);
  result = (v27)(v8, v3);
  v29 = v35;
  *v35 = v25;
  v29[1] = v26;
  return result;
}

uint64_t @objc closure #1 in MOProcessingServer.databaseSnapshotList()(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = @objc closure #1 in MOProcessingServer.databaseSnapshotList();

  return specialized MOProcessingServer.databaseSnapshotList()();
}

uint64_t MOProcessingServer.databaseSnapshotDelete(sequence:)(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return _swift_task_switch(MOProcessingServer.databaseSnapshotDelete(sequence:), 0, 0);
}

{
  *(*v1 + 192) = a1;

  return _swift_task_switch(MOProcessingServer.databaseSnapshotDelete(sequence:), 0, 0);
}

uint64_t MOProcessingServer.databaseSnapshotDelete(sequence:)()
{
  type metadata accessor for MomentsUIManager();
  v1 = static MomentsUIManager.shared.getter();
  *(v0 + 176) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  v2 = swift_task_alloc();
  *(v0 + 184) = v2;
  *v2 = v0;
  v2[1] = MOProcessingServer.databaseSnapshotDelete(sequence:);

  return CloudManager.getDBManager()();
}

{
  if (v0[24])
  {
    v0[25] = type metadata accessor for MainActor();

    v0[26] = static MainActor.shared.getter();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(MOProcessingServer.databaseSnapshotDelete(sequence:), v2, v1);
  }

  else
  {
    v3 = v0[21];
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = MOProcessingServer.databaseSnapshotDelete(sequence:);
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String;
    v0[13] = &block_descriptor_29_1;
    v0[14] = v4;
    [v3 databaseSnapshotListWithCompletionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

{

  *(v0 + 216) = dispatch thunk of DBManager.mainWriter.getter();

  return _swift_task_switch(MOProcessingServer.databaseSnapshotDelete(sequence:), 0, 0);
}

{
  *(v0 + 224) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(MOProcessingServer.databaseSnapshotDelete(sequence:), v2, v1);
}

{

  *(v0 + 232) = DBWriter.latestSnapshots()();
  *(v0 + 240) = 0;

  return _swift_task_switch(MOProcessingServer.databaseSnapshotDelete(sequence:), 0, 0);
}

{
  v1 = v0[29];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[31] = v2;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_18:

    v13 = v0[21];
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = MOProcessingServer.databaseSnapshotDelete(sequence:);
    v14 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String;
    v0[13] = &block_descriptor_29_1;
    v0[14] = v14;
    [v13 databaseSnapshotListWithCompletionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

LABEL_17:
  v12 = _CocoaArrayWrapper.endIndex.getter();
  v0[31] = v12;
  if (!v12)
  {
    goto LABEL_18;
  }

LABEL_3:
  v3 = 0;
  v4 = v0[30];
  while (1)
  {
    v0[32] = v4;
    v5 = v0[29];
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v6 = *(v5 + 8 * v3 + 32);
    }

    v0[33] = v6;
    v0[34] = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v7 = v0[20];
    v8 = dispatch thunk of DBSnapshot.sequence.getter();
    v9 = [v7 integerValue];
    if ((v9 & 0x8000000000000000) == 0 && v8 == v9)
    {
      break;
    }

    v3 = v0[34];
    if (v3 == v0[31])
    {
      goto LABEL_18;
    }
  }

  v0[35] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(MOProcessingServer.databaseSnapshotDelete(sequence:), v11, v10);
}

{

  *(v0 + 288) = dispatch thunk of DBManager.mainWriter.getter();

  return _swift_task_switch(MOProcessingServer.databaseSnapshotDelete(sequence:), 0, 0);
}

{
  v1 = v0[33];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v2 = swift_allocObject();
  v0[37] = v2;
  *(v2 + 16) = xmmword_1002A4A70;
  *(v2 + 32) = v1;

  v0[38] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(MOProcessingServer.databaseSnapshotDelete(sequence:), v4, v3);
}

{
  v1._rawValue = *(v0 + 296);

  DBWriter.deleteSnapshotsMain(snapshots:)(v1);
  *(v0 + 312) = v2;

  if (v2)
  {

    v3 = MOProcessingServer.databaseSnapshotDelete(sequence:);
  }

  else
  {

    v3 = MOProcessingServer.databaseSnapshotDelete(sequence:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{

  v2 = v0[34];
  if (v2 == v0[31])
  {
LABEL_2:

    v3 = v0[21];
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = MOProcessingServer.databaseSnapshotDelete(sequence:);
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String;
    v0[13] = &block_descriptor_29_1;
    v0[14] = v4;
    [v3 databaseSnapshotListWithCompletionHandler:v0 + 10];
    v1 = (v0 + 2);

    return _swift_continuation_await(v1);
  }

  else
  {
    v5 = v0[39];
    while (1)
    {
      v0[32] = v5;
      v6 = v0[29];
      if ((v6 & 0xC000000000000001) != 0)
      {
        v1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = v1;
      }

      else
      {
        if (v2 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(v6 + 8 * v2 + 32);
      }

      v0[33] = v7;
      v0[34] = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return _swift_continuation_await(v1);
      }

      v8 = v0[20];
      v9 = dispatch thunk of DBSnapshot.sequence.getter();
      v10 = [v8 integerValue];
      if ((v10 & 0x8000000000000000) == 0 && v9 == v10)
      {
        break;
      }

      v2 = v0[34];
      if (v2 == v0[31])
      {
        goto LABEL_2;
      }
    }

    v0[35] = static MainActor.shared.getter();
    v12 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(MOProcessingServer.databaseSnapshotDelete(sequence:), v12, v11);
  }
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 320) = v1;
  if (v1)
  {
    v2 = MOProcessingServer.databaseSnapshotDelete(sequence:);
  }

  else
  {
    v2 = MOProcessingServer.databaseSnapshotDelete(sequence:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{

  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[1];

  return v3(v1, v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t @objc closure #1 in MOProcessingServer.databaseSnapshotDelete(sequence:)(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = @objc closure #1 in MOProcessingServer.databaseSnapshotDelete(sequence:);

  return MOProcessingServer.databaseSnapshotDelete(sequence:)(v6);
}

uint64_t @objc closure #1 in MOProcessingServer.databaseSnapshotDelete(sequence:)()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v2)
  {
    v7 = _convertErrorToNSError(_:)();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    v10 = String._bridgeToObjectiveC()();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v3 + 32);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t MOProcessingServer.deviceRefresh()()
{
  *(v1 + 160) = v0;
  return _swift_task_switch(MOProcessingServer.deviceRefresh(), 0, 0);
}

{
  type metadata accessor for MomentsUIManager();
  v1 = static MomentsUIManager.shared.getter();
  *(v0 + 168) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  v3 = type metadata accessor for CloudManager();
  v4 = lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type CloudManager and conformance CloudManager, &type metadata accessor for CloudManager);
  *v2 = v0;
  v2[1] = MOProcessingServer.deviceRefresh();

  return CloudManagerProtocol.refresh(force:wait:_:_:)(1, 0, 0x6552656369766564, 0xEF29286873657266, 213, v3, v4);
}

{

  return _swift_task_switch(MOProcessingServer.deviceRefresh(), 0, 0);
}

{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = MOProcessingServer.deviceRefresh();
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String;
  v0[13] = &block_descriptor_34;
  v0[14] = v2;
  [v1 deviceListWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = MOProcessingServer.deviceRefresh();
  }

  else
  {
    v2 = MOProcessingServer.deviceRefresh();
  }

  return _swift_task_switch(v2, 0, 0);
}

{

  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[1];

  return v3(v1, v2);
}

{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t @objc closure #1 in MOProcessingServer.deviceRefresh()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in MOProcessingServer.deviceRefresh();

  return MOProcessingServer.deviceRefresh()();
}

uint64_t @objc closure #1 in MOProcessingServer.deviceRefresh()()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = *v1;

  if (v2)
  {
    v6 = _convertErrorToNSError(_:)();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    v9 = String._bridgeToObjectiveC()();

    v8 = v9;
    v7 = 0;
    v6 = v9;
  }

  v10 = *(v3 + 24);
  (v10)[2](v10, v8, v7);

  _Block_release(v10);
  v11 = *(v5 + 8);

  return v11();
}

uint64_t MOProcessingServer.deviceList()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = MOProcessingServer.deviceList();

  return specialized MOProcessingServer.deviceList()();
}

uint64_t MOProcessingServer.deviceList()(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t @objc closure #1 in MOProcessingServer.deviceList()(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = @objc closure #1 in MOProcessingServer.deviceList();

  return specialized MOProcessingServer.deviceList()();
}

uint64_t @objc closure #1 in MOProcessingServer.deviceList()()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;

  if (v2)
  {
    v5 = _convertErrorToNSError(_:)();

    v6 = v5;
    v7 = 0;
  }

  else
  {
    v8 = String._bridgeToObjectiveC()();

    v7 = v8;
    v6 = 0;
    v5 = v8;
  }

  v9 = *(v3 + 16);
  (v9)[2](v9, v7, v6);

  _Block_release(v9);
  v10 = *(v4 + 8);

  return v10();
}

uint64_t MOProcessingServer.deviceListJSON()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = MOProcessingServer.databaseSnapshotList();

  return specialized MOProcessingServer.deviceListJSON()();
}

uint64_t @objc closure #1 in MOProcessingServer.deviceListJSON()(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = @objc closure #1 in MOProcessingServer.databaseSnapshotList();

  return specialized MOProcessingServer.deviceListJSON()();
}

uint64_t MOProcessingServer.deviceMakePrimary()()
{
  *(v1 + 160) = v0;
  return _swift_task_switch(MOProcessingServer.deviceMakePrimary(), 0, 0);
}

{
  type metadata accessor for MomentsUIManager();
  v1 = static MomentsUIManager.shared.getter();
  *(v0 + 168) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  *v2 = v0;
  v2[1] = MOProcessingServer.deviceMakePrimary();

  return CloudManager.getDeviceDB()();
}

{
  if (v0[23])
  {
    v1 = swift_task_alloc();
    v0[24] = v1;
    *v1 = v0;
    v1[1] = MOProcessingServer.deviceMakePrimary();

    return CloudDevicesDB.becomePrimary()();
  }

  else
  {

    v2 = v0[1];

    return v2(0, 0xE000000000000000);
  }
}

{

  return _swift_task_switch(MOProcessingServer.deviceMakePrimary(), 0, 0);
}

{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = MOProcessingServer.deviceMakePrimary();
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String;
  v0[13] = &block_descriptor_45;
  v0[14] = v2;
  [v1 deviceListWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = MOProcessingServer.deviceMakePrimary();
  }

  else
  {
    v2 = MOProcessingServer.deviceMakePrimary();
  }

  return _swift_task_switch(v2, 0, 0);
}

{

  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[1];

  return v3(v1, v2);
}

{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MOProcessingServer.deviceMakePrimary()(uint64_t a1)
{
  *(*v1 + 184) = a1;

  return _swift_task_switch(MOProcessingServer.deviceMakePrimary(), 0, 0);
}

uint64_t @objc closure #1 in MOProcessingServer.deviceMakePrimary()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in MOProcessingServer.deviceMakePrimary();

  return MOProcessingServer.deviceMakePrimary()();
}

uint64_t MOProcessingServer.deviceMakePrimaryJSON()()
{
  *(v1 + 160) = v0;
  return _swift_task_switch(MOProcessingServer.deviceMakePrimaryJSON(), 0, 0);
}

{
  type metadata accessor for MomentsUIManager();
  v1 = static MomentsUIManager.shared.getter();
  *(v0 + 168) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  *v2 = v0;
  v2[1] = MOProcessingServer.deviceMakePrimaryJSON();

  return CloudManager.getDeviceDB()();
}

{
  if (v0[23])
  {
    v1 = swift_task_alloc();
    v0[24] = v1;
    *v1 = v0;
    v1[1] = MOProcessingServer.deviceMakePrimaryJSON();

    return CloudDevicesDB.becomePrimary()();
  }

  else
  {

    v2 = v0[1];

    return v2(0, 0xE000000000000000);
  }
}

{

  return _swift_task_switch(MOProcessingServer.deviceMakePrimaryJSON(), 0, 0);
}

{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = MOProcessingServer.deviceMakePrimaryJSON();
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String;
  v0[13] = &block_descriptor_51_1;
  v0[14] = v2;
  [v1 deviceListJSONWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = MOProcessingServer.deviceMakePrimaryJSON();
  }

  else
  {
    v2 = MOProcessingServer.deviceMakePrimaryJSON();
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t MOProcessingServer.deviceMakePrimaryJSON()(uint64_t a1)
{
  *(*v1 + 184) = a1;

  return _swift_task_switch(MOProcessingServer.deviceMakePrimaryJSON(), 0, 0);
}

uint64_t @objc closure #1 in MOProcessingServer.deviceMakePrimaryJSON()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in MOProcessingServer.deviceMakePrimary();

  return MOProcessingServer.deviceMakePrimaryJSON()();
}

uint64_t MOProcessingServer.deviceAbdicatePrimary()()
{
  *(v1 + 160) = v0;
  return _swift_task_switch(MOProcessingServer.deviceAbdicatePrimary(), 0, 0);
}

{
  type metadata accessor for MomentsUIManager();
  v1 = static MomentsUIManager.shared.getter();
  *(v0 + 168) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  *v2 = v0;
  v2[1] = MOProcessingServer.deviceAbdicatePrimary();

  return CloudManager.getDeviceDB()();
}

{
  if (v0[23])
  {
    v1 = swift_task_alloc();
    v0[24] = v1;
    *v1 = v0;
    v1[1] = MOProcessingServer.deviceAbdicatePrimary();

    return CloudDevicesDB.abdicatePrimary()();
  }

  else
  {

    v2 = v0[1];

    return v2(0, 0xE000000000000000);
  }
}

{

  return _swift_task_switch(MOProcessingServer.deviceAbdicatePrimary(), 0, 0);
}

{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = MOProcessingServer.deviceMakePrimaryJSON();
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String;
  v0[13] = &block_descriptor_57_0;
  v0[14] = v2;
  [v1 deviceListWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t MOProcessingServer.deviceAbdicatePrimary()(uint64_t a1)
{
  *(*v1 + 184) = a1;

  return _swift_task_switch(MOProcessingServer.deviceAbdicatePrimary(), 0, 0);
}

uint64_t @objc closure #1 in MOProcessingServer.deviceAbdicatePrimary()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in MOProcessingServer.deviceMakePrimary();

  return MOProcessingServer.deviceAbdicatePrimary()();
}

uint64_t MOProcessingServer.deviceAbdicatePrimaryJSON()()
{
  *(v1 + 160) = v0;
  return _swift_task_switch(MOProcessingServer.deviceAbdicatePrimaryJSON(), 0, 0);
}

{
  type metadata accessor for MomentsUIManager();
  v1 = static MomentsUIManager.shared.getter();
  *(v0 + 168) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  *v2 = v0;
  v2[1] = MOProcessingServer.deviceAbdicatePrimaryJSON();

  return CloudManager.getDeviceDB()();
}

{
  if (v0[23])
  {
    v1 = swift_task_alloc();
    v0[24] = v1;
    *v1 = v0;
    v1[1] = MOProcessingServer.deviceAbdicatePrimaryJSON();

    return CloudDevicesDB.abdicatePrimary()();
  }

  else
  {

    v2 = v0[1];

    return v2(0, 0xE000000000000000);
  }
}

{

  return _swift_task_switch(MOProcessingServer.deviceAbdicatePrimaryJSON(), 0, 0);
}

{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = MOProcessingServer.deviceMakePrimaryJSON();
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String;
  v0[13] = &block_descriptor_63;
  v0[14] = v2;
  [v1 deviceListJSONWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t MOProcessingServer.deviceAbdicatePrimaryJSON()(uint64_t a1)
{
  *(*v1 + 184) = a1;

  return _swift_task_switch(MOProcessingServer.deviceAbdicatePrimaryJSON(), 0, 0);
}

uint64_t @objc closure #1 in MOProcessingServer.deviceAbdicatePrimaryJSON()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in MOProcessingServer.deviceMakePrimary();

  return MOProcessingServer.deviceAbdicatePrimaryJSON()();
}

uint64_t MOProcessingServer.deviceAutoNominate()()
{
  *(v1 + 160) = v0;
  return _swift_task_switch(MOProcessingServer.deviceAutoNominate(), 0, 0);
}

{
  type metadata accessor for MomentsUIManager();
  v1 = static MomentsUIManager.shared.getter();
  *(v0 + 168) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  *v2 = v0;
  v2[1] = MOProcessingServer.deviceAutoNominate();

  return CloudManager.getDeviceDB()();
}

{
  if (v0[23])
  {
    v1 = swift_task_alloc();
    v0[24] = v1;
    *v1 = v0;
    v1[1] = MOProcessingServer.deviceAutoNominate();

    return CloudDevicesDB.autoNominateDevice()();
  }

  else
  {

    v2 = v0[1];

    return v2(0, 0xE000000000000000);
  }
}

{

  return _swift_task_switch(MOProcessingServer.deviceAutoNominate(), 0, 0);
}

{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = MOProcessingServer.deviceMakePrimaryJSON();
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String;
  v0[13] = &block_descriptor_69;
  v0[14] = v2;
  [v1 deviceListWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t MOProcessingServer.deviceAutoNominate()(uint64_t a1)
{
  *(*v1 + 184) = a1;

  return _swift_task_switch(MOProcessingServer.deviceAutoNominate(), 0, 0);
}

uint64_t @objc closure #1 in MOProcessingServer.deviceAutoNominate()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in MOProcessingServer.deviceMakePrimary();

  return MOProcessingServer.deviceAutoNominate()();
}

uint64_t MOProcessingServer.deviceAutoNominateJSON()()
{
  *(v1 + 160) = v0;
  return _swift_task_switch(MOProcessingServer.deviceAutoNominateJSON(), 0, 0);
}

{
  type metadata accessor for MomentsUIManager();
  v1 = static MomentsUIManager.shared.getter();
  *(v0 + 168) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  *v2 = v0;
  v2[1] = MOProcessingServer.deviceAutoNominateJSON();

  return CloudManager.getDeviceDB()();
}

{
  if (v0[23])
  {
    v1 = swift_task_alloc();
    v0[24] = v1;
    *v1 = v0;
    v1[1] = MOProcessingServer.deviceAutoNominateJSON();

    return CloudDevicesDB.autoNominateDevice()();
  }

  else
  {

    v2 = v0[1];

    return v2(0, 0xE000000000000000);
  }
}

{

  return _swift_task_switch(MOProcessingServer.deviceAutoNominateJSON(), 0, 0);
}

{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = MOProcessingServer.deviceMakePrimaryJSON();
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String;
  v0[13] = &block_descriptor_75;
  v0[14] = v2;
  [v1 deviceListJSONWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t MOProcessingServer.deviceAutoNominateJSON()(uint64_t a1)
{
  *(*v1 + 184) = a1;

  return _swift_task_switch(MOProcessingServer.deviceAutoNominateJSON(), 0, 0);
}

uint64_t @objc closure #1 in MOProcessingServer.deviceAutoNominateJSON()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in MOProcessingServer.deviceMakePrimary();

  return MOProcessingServer.deviceAutoNominateJSON()();
}

uint64_t MOProcessingServer.deviceNominate(devicePrefix:bundleSuffix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 160) = v4;
  v10 = swift_task_alloc();
  *(v5 + 168) = v10;
  *v10 = v5;
  v10[1] = MOProcessingServer.deviceNominate(devicePrefix:bundleSuffix:);

  return specialized MOProcessingServer._deviceNominate(devicePrefix:bundleSuffix:)(a1, a2, a3, a4);
}

uint64_t MOProcessingServer.deviceNominate(devicePrefix:bundleSuffix:)()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(MOProcessingServer.deviceNominate(devicePrefix:bundleSuffix:), 0, 0);
  }
}

{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = MOProcessingServer.deviceNominate(devicePrefix:bundleSuffix:);
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String;
  v0[13] = &block_descriptor_80;
  v0[14] = v2;
  [v1 deviceListWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = MOProcessingServer.deviceNominate(devicePrefix:bundleSuffix:);
  }

  else
  {
    v2 = MOProcessingServer.deviceNominate(devicePrefix:bundleSuffix:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 144), *(v0 + 152));
}

{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t @objc closure #1 in MOProcessingServer.deviceNominate(devicePrefix:bundleSuffix:)(int a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[4] = v8;
  if (a2)
  {
    a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v4[5] = v11;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = @objc closure #1 in MOProcessingServer.deviceNominate(devicePrefix:bundleSuffix:);

  return MOProcessingServer.deviceNominate(devicePrefix:bundleSuffix:)(v7, v9, a2, v11);
}

uint64_t @objc closure #1 in MOProcessingServer.deviceNominate(devicePrefix:bundleSuffix:)()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = *v1;

  if (v2)
  {
    v6 = _convertErrorToNSError(_:)();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    v6 = String._bridgeToObjectiveC()();

    v8 = v6;
    v7 = 0;
  }

  v9 = *(v3 + 24);
  (v9)[2](v9, v8, v7);

  _Block_release(v9);
  v10 = *(v5 + 8);

  return v10();
}

uint64_t MOProcessingServer.deviceNominateJSON(devicePrefix:bundleSuffix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 160) = v4;
  v10 = swift_task_alloc();
  *(v5 + 168) = v10;
  *v10 = v5;
  v10[1] = MOProcessingServer.deviceNominateJSON(devicePrefix:bundleSuffix:);

  return specialized MOProcessingServer._deviceNominate(devicePrefix:bundleSuffix:)(a1, a2, a3, a4);
}

uint64_t MOProcessingServer.deviceNominateJSON(devicePrefix:bundleSuffix:)()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(MOProcessingServer.deviceNominateJSON(devicePrefix:bundleSuffix:), 0, 0);
  }
}

{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = MOProcessingServer.deviceNominateJSON(devicePrefix:bundleSuffix:);
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String;
  v0[13] = &block_descriptor_85;
  v0[14] = v2;
  [v1 deviceListJSONWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = MOProcessingServer.deviceNominateJSON(devicePrefix:bundleSuffix:);
  }

  else
  {
    v2 = MOProcessingServer.deviceNominateJSON(devicePrefix:bundleSuffix:);
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t @objc closure #1 in MOProcessingServer.deviceNominateJSON(devicePrefix:bundleSuffix:)(int a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[4] = v8;
  if (a2)
  {
    a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v4[5] = v11;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = @objc closure #1 in MOProcessingServer.deviceNominateJSON(devicePrefix:bundleSuffix:);

  return MOProcessingServer.deviceNominateJSON(devicePrefix:bundleSuffix:)(v7, v9, a2, v11);
}

uint64_t MOProcessingServer.deviceNominateDecline()()
{
  *(v1 + 160) = v0;
  return _swift_task_switch(MOProcessingServer.deviceNominateDecline(), 0, 0);
}

{
  type metadata accessor for MomentsUIManager();
  v1 = static MomentsUIManager.shared.getter();
  *(v0 + 168) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  *v2 = v0;
  v2[1] = MOProcessingServer.deviceNominateDecline();

  return CloudManager.getDeviceDB()();
}

{
  if (v0[23])
  {
    v1 = swift_task_alloc();
    v0[24] = v1;
    *v1 = v0;
    v1[1] = MOProcessingServer.deviceNominateDecline();

    return CloudDevicesDB.declineNomination()();
  }

  else
  {

    v2 = v0[1];

    return v2(0, 0xE000000000000000);
  }
}

{

  return _swift_task_switch(MOProcessingServer.deviceNominateDecline(), 0, 0);
}

{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = MOProcessingServer.deviceMakePrimaryJSON();
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String;
  v0[13] = &block_descriptor_91;
  v0[14] = v2;
  [v1 deviceListWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t MOProcessingServer.deviceNominateDecline()(uint64_t a1)
{
  *(*v1 + 184) = a1;

  return _swift_task_switch(MOProcessingServer.deviceNominateDecline(), 0, 0);
}

uint64_t @objc closure #1 in MOProcessingServer.deviceNominateDecline()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in MOProcessingServer.deviceMakePrimary();

  return MOProcessingServer.deviceNominateDecline()();
}

uint64_t MOProcessingServer.deviceNominateDeclineJSON()()
{
  *(v1 + 160) = v0;
  return _swift_task_switch(MOProcessingServer.deviceNominateDeclineJSON(), 0, 0);
}

{
  type metadata accessor for MomentsUIManager();
  v1 = static MomentsUIManager.shared.getter();
  *(v0 + 168) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  *v2 = v0;
  v2[1] = MOProcessingServer.deviceNominateDeclineJSON();

  return CloudManager.getDeviceDB()();
}

{
  if (v0[23])
  {
    v1 = swift_task_alloc();
    v0[24] = v1;
    *v1 = v0;
    v1[1] = MOProcessingServer.deviceNominateDeclineJSON();

    return CloudDevicesDB.declineNomination()();
  }

  else
  {

    v2 = v0[1];

    return v2(0, 0xE000000000000000);
  }
}

{

  return _swift_task_switch(MOProcessingServer.deviceNominateDeclineJSON(), 0, 0);
}

{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = MOProcessingServer.deviceMakePrimaryJSON();
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String;
  v0[13] = &block_descriptor_97_0;
  v0[14] = v2;
  [v1 deviceListJSONWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t MOProcessingServer.deviceNominateDeclineJSON()(uint64_t a1)
{
  *(*v1 + 184) = a1;

  return _swift_task_switch(MOProcessingServer.deviceNominateDeclineJSON(), 0, 0);
}

uint64_t @objc closure #1 in MOProcessingServer.deviceNominateDeclineJSON()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in MOProcessingServer.deviceMakePrimary();

  return MOProcessingServer.deviceNominateDeclineJSON()();
}

uint64_t MOProcessingServer.deviceNewlyOnboarded()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = MOProcessingServer.databaseSnapshotList();

  return specialized MOProcessingServer.deviceNewlyOnboarded()();
}

uint64_t closure #1 in MOProcessingServer.deviceNewlyOnboarded()@<X0>(uint64_t a1@<X0>, unsigned int (*a2)(_BYTE *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v120 = a5;
  v119 = a4;
  v116 = a3;
  v127 = a2;
  v114 = type metadata accessor for CharacterSet();
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v112 = &v107[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for CloudDevice();
  v128 = *(v7 - 8);
  __chkstk_darwin(v7);
  v115 = &v107[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSg_ADtMd);
  v9 = __chkstk_darwin(v129);
  v121 = &v107[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v9);
  v117 = &v107[-v12];
  __chkstk_darwin(v11);
  v14 = &v107[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd);
  v16 = __chkstk_darwin(v15 - 8);
  v111 = &v107[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v16);
  v118 = &v107[-v19];
  v20 = __chkstk_darwin(v18);
  v110 = &v107[-v21];
  v22 = __chkstk_darwin(v20);
  v122 = &v107[-v23];
  v24 = __chkstk_darwin(v22);
  v26 = &v107[-v25];
  __chkstk_darwin(v24);
  v28 = &v107[-v27];
  v130 = a1;
  v29 = CloudDevice.systemIdiomString.getter();
  v31 = v30;
  v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
  v34 = *(v32 + 2);
  v33 = *(v32 + 3);
  if (v34 >= v33 >> 1)
  {
    v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v32);
  }

  *(v32 + 2) = v34 + 1;
  v35 = &v32[16 * v34];
  *(v35 + 4) = v29;
  *(v35 + 5) = v31;
  v36 = v128;
  v37 = *(v128 + 16);
  v126 = v128 + 16;
  v124 = v37;
  v37(v28, v130, v7);
  v38 = *(v36 + 56);
  v125 = v36 + 56;
  v123 = v38;
  v38(v28, 0, 1, v7);
  v39 = *(v129 + 48);
  outlined init with copy of (String, Date?)(v28, v14, &_s9MomentsUI11CloudDeviceVSgMd);
  outlined init with copy of (String, Date?)(v127, &v14[v39], &_s9MomentsUI11CloudDeviceVSgMd);
  v40 = *(v36 + 48);
  v41 = v40(v14, 1, v7);
  v127 = v40;
  if (v41 != 1)
  {
    outlined init with copy of (String, Date?)(v14, v26, &_s9MomentsUI11CloudDeviceVSgMd);
    if (v40(&v14[v39], 1, v7) != 1)
    {
      v45 = v128;
      v46 = *(v128 + 32);
      v109 = v32;
      v47 = v115;
      v46(v115, &v14[v39], v7);
      lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type CloudDevice and conformance CloudDevice, &type metadata accessor for CloudDevice);
      v108 = dispatch thunk of static Equatable.== infix(_:_:)();
      v48 = *(v45 + 8);
      v49 = v47;
      v32 = v109;
      v48(v49, v7);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v28, &_s9MomentsUI11CloudDeviceVSgMd);
      v48(v26, v7);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v14, &_s9MomentsUI11CloudDeviceVSgMd);
      v44 = v130;
      v43 = v121;
      if ((v108 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v28, &_s9MomentsUI11CloudDeviceVSgMd);
    (*(v128 + 8))(v26, v7);
    v43 = v121;
LABEL_8:
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v14, &_s9MomentsUI11CloudDeviceVSg_ADtMd);
    v44 = v130;
    goto LABEL_13;
  }

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v28, &_s9MomentsUI11CloudDeviceVSgMd);
  v42 = v40(&v14[v39], 1, v7);
  v43 = v121;
  if (v42 != 1)
  {
    goto LABEL_8;
  }

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v14, &_s9MomentsUI11CloudDeviceVSgMd);
  v44 = v130;
LABEL_10:
  v51 = *(v32 + 2);
  v50 = *(v32 + 3);
  if (v51 >= v50 >> 1)
  {
    v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v32);
  }

  *(v32 + 2) = v51 + 1;
  v52 = &v32[16 * v51];
  *(v52 + 4) = 0x7665442073696854;
  *(v52 + 5) = 0xEB00000000656369;
LABEL_13:
  if (CloudDevice.onboarded.getter())
  {
    v54 = *(v32 + 2);
    v53 = *(v32 + 3);
    if (v54 >= v53 >> 1)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v32);
    }

    *(v32 + 2) = v54 + 1;
    v55 = &v32[16 * v54];
    *(v55 + 4) = 0x656472616F626E4FLL;
    *(v55 + 5) = 0xE900000000000064;
  }

  v56 = v122;
  v124(v122, v44, v7);
  v123(v56, 0, 1, v7);
  v57 = *(v129 + 48);
  v58 = v117;
  outlined init with copy of (String, Date?)(v56, v117, &_s9MomentsUI11CloudDeviceVSgMd);
  outlined init with copy of (String, Date?)(v116, &v58[v57], &_s9MomentsUI11CloudDeviceVSgMd);
  v59 = v127;
  if (v127(v58, 1, v7) != 1)
  {
    v63 = v110;
    outlined init with copy of (String, Date?)(v58, v110, &_s9MomentsUI11CloudDeviceVSgMd);
    if (v59(&v58[v57], 1, v7) != 1)
    {
      v64 = v128;
      v65 = &v58[v57];
      v66 = v115;
      (*(v128 + 32))(v115, v65, v7);
      lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type CloudDevice and conformance CloudDevice, &type metadata accessor for CloudDevice);
      LODWORD(v116) = dispatch thunk of static Equatable.== infix(_:_:)();
      v67 = *(v64 + 8);
      v67(v66, v7);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v122, &_s9MomentsUI11CloudDeviceVSgMd);
      v67(v63, v7);
      v43 = v121;
      v62 = v130;
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v58, &_s9MomentsUI11CloudDeviceVSgMd);
      v61 = v118;
      if ((v116 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    }

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v122, &_s9MomentsUI11CloudDeviceVSgMd);
    (*(v128 + 8))(v63, v7);
    v61 = v118;
LABEL_22:
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v58, &_s9MomentsUI11CloudDeviceVSg_ADtMd);
    v62 = v130;
    goto LABEL_27;
  }

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v56, &_s9MomentsUI11CloudDeviceVSgMd);
  v60 = v59(&v58[v57], 1, v7);
  v61 = v118;
  if (v60 != 1)
  {
    goto LABEL_22;
  }

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v58, &_s9MomentsUI11CloudDeviceVSgMd);
  v62 = v130;
LABEL_24:
  v69 = *(v32 + 2);
  v68 = *(v32 + 3);
  if (v69 >= v68 >> 1)
  {
    v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v69 + 1, 1, v32);
  }

  *(v32 + 2) = v69 + 1;
  v70 = &v32[16 * v69];
  *(v70 + 4) = 0x7972616D697250;
  *(v70 + 5) = 0xE700000000000000;
LABEL_27:
  v124(v61, v62, v7);
  v123(v61, 0, 1, v7);
  v71 = *(v129 + 48);
  outlined init with copy of (String, Date?)(v61, v43, &_s9MomentsUI11CloudDeviceVSgMd);
  outlined init with copy of (String, Date?)(v119, v43 + v71, &_s9MomentsUI11CloudDeviceVSgMd);
  v72 = v127;
  if (v127(v43, 1, v7) != 1)
  {
    v73 = v111;
    outlined init with copy of (String, Date?)(v43, v111, &_s9MomentsUI11CloudDeviceVSgMd);
    if (v72(v43 + v71, 1, v7) != 1)
    {
      v74 = v128;
      v75 = v43 + v71;
      v76 = v115;
      (*(v128 + 32))(v115, v75, v7);
      lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type CloudDevice and conformance CloudDevice, &type metadata accessor for CloudDevice);
      LODWORD(v129) = dispatch thunk of static Equatable.== infix(_:_:)();
      v77 = *(v74 + 8);
      v77(v76, v7);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v61, &_s9MomentsUI11CloudDeviceVSgMd);
      v77(v73, v7);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v43, &_s9MomentsUI11CloudDeviceVSgMd);
      if ((v129 & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v61, &_s9MomentsUI11CloudDeviceVSgMd);
    (*(v128 + 8))(v73, v7);
LABEL_32:
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v43, &_s9MomentsUI11CloudDeviceVSg_ADtMd);
    goto LABEL_37;
  }

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v61, &_s9MomentsUI11CloudDeviceVSgMd);
  if (v72(v43 + v71, 1, v7) != 1)
  {
    goto LABEL_32;
  }

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v43, &_s9MomentsUI11CloudDeviceVSgMd);
LABEL_34:
  v79 = *(v32 + 2);
  v78 = *(v32 + 3);
  if (v79 >= v78 >> 1)
  {
    v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1, v32);
  }

  *(v32 + 2) = v79 + 1;
  v80 = &v32[16 * v79];
  *(v80 + 4) = 0x6574616E696D6F4ELL;
  *(v80 + 5) = 0xE900000000000064;
LABEL_37:
  v132 = 0;
  v133 = 0xE000000000000000;
  v81 = CloudDevice.name.getter();
  if (v82)
  {
    v83 = v82;
  }

  else
  {
    v81 = 0x6E776F6E6B6E553CLL;
    v83 = 0xE90000000000003ELL;
  }

  v84 = v83;
  String.append(_:)(*&v81);

  CloudDevice.deviceID.getter();
  if (v85)
  {
    v131._countAndFlagsBits = 46;
    v131._object = 0xE100000000000000;
    specialized Collection.prefix(_:)(8);

    v86 = static String._fromSubstring(_:)();
    v88 = v87;

    v89._countAndFlagsBits = v86;
    v89._object = v88;
    String.append(_:)(v89);

    String.append(_:)(v131);
  }

  v90 = CloudDevice.bundleID.getter();
  if (v91)
  {
    v131._countAndFlagsBits = v90;
    v131._object = v91;
    v92 = v112;
    static CharacterSet.punctuationCharacters.getter();
    lazy protocol witness table accessor for type String and conformance String();
    v93 = StringProtocol.components(separatedBy:)();
    (*(v113 + 8))(v92, v114);

    v94 = *(v93 + 16);
    if (v94)
    {
      v95 = (v93 + 16 + 16 * v94);
      v96 = *v95;
      v97 = v95[1];

      v131._countAndFlagsBits = 46;
      v131._object = 0xE100000000000000;
      v98._countAndFlagsBits = v96;
      v98._object = v97;
      String.append(_:)(v98);

      String.append(_:)(v131);
    }
  }

  v131._countAndFlagsBits = 10272;
  v131._object = 0xE200000000000000;
  v134 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
  v99 = BidirectionalCollection<>.joined(separator:)();
  v101 = v100;

  v102._countAndFlagsBits = v99;
  v102._object = v101;
  String.append(_:)(v102);

  v103._countAndFlagsBits = 41;
  v103._object = 0xE100000000000000;
  String.append(_:)(v103);
  String.append(_:)(v131);

  v105 = v133;
  v106 = v120;
  *v120 = v132;
  v106[1] = v105;
  return result;
}

uint64_t @objc closure #1 in MOProcessingServer.deviceNewlyOnboarded()(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = @objc closure #1 in MOProcessingServer.databaseSnapshotList();

  return specialized MOProcessingServer.deviceNewlyOnboarded()();
}

uint64_t MOProcessingServer.deviceNewlyOnboardedClear()()
{
  *(v1 + 160) = v0;
  return _swift_task_switch(MOProcessingServer.deviceNewlyOnboardedClear(), 0, 0);
}

{
  type metadata accessor for MomentsUIManager();
  v1 = static MomentsUIManager.shared.getter();
  *(v0 + 168) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  *v2 = v0;
  v2[1] = MOProcessingServer.deviceNewlyOnboardedClear();

  return CloudManager.clearNewlyOnboardedDevices()();
}

{

  return _swift_task_switch(MOProcessingServer.deviceNewlyOnboardedClear(), 0, 0);
}

{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = MOProcessingServer.deviceNewlyOnboardedClear();
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String;
  v0[13] = &block_descriptor_103;
  v0[14] = v2;
  [v1 deviceNewlyOnboardedWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = MOProcessingServer.deviceNewlyOnboardedClear();
  }

  else
  {
    v2 = MOProcessingServer.deviceNewlyOnboardedClear();
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t @objc closure #1 in MOProcessingServer.deviceNewlyOnboardedClear()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in MOProcessingServer.deviceMakePrimary();

  return MOProcessingServer.deviceNewlyOnboardedClear()();
}

uint64_t MOProcessingServer.cap()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = MOProcessingServer.databaseSnapshotList();

  return specialized MOProcessingServer.cap()();
}

uint64_t @objc closure #1 in MOProcessingServer.cap()(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = @objc closure #1 in MOProcessingServer.databaseSnapshotList();

  return specialized MOProcessingServer.cap()();
}

uint64_t MOProcessingServer.capList()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = MOProcessingServer.databaseSnapshotList();

  return specialized MOProcessingServer.capList()();
}

uint64_t @objc closure #1 in MOProcessingServer.capList()(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = @objc closure #1 in MOProcessingServer.databaseSnapshotList();

  return specialized MOProcessingServer.capList()();
}

uint64_t MOProcessingServer.capSet(jsonMock:jsonBlock:jsonForce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = MOProcessingServer.databaseSnapshotList();

  return (specialized MOProcessingServer.capSet(jsonMock:jsonBlock:jsonForce:))(a1, a2, a3, a4, a5, a6);
}

uint64_t @objc closure #1 in MOProcessingServer.capSet(jsonMock:jsonBlock:jsonForce:)(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    v5[4] = v10;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_6:
    v13 = 0;
    v5[5] = 0;
    if (a3)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v11 = 0;
  v5[4] = 0;
  if (!a2)
  {
    goto LABEL_6;
  }

LABEL_3:
  a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v5[5] = v12;
  if (a3)
  {
LABEL_4:
    a3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    goto LABEL_8;
  }

LABEL_7:
  v15 = 0;
LABEL_8:
  v5[6] = v15;
  v16 = a5;
  v17 = swift_task_alloc();
  v5[7] = v17;
  *v17 = v5;
  v17[1] = @objc closure #1 in MOProcessingServer.capSet(jsonMock:jsonBlock:jsonForce:);

  return specialized MOProcessingServer.capSet(jsonMock:jsonBlock:jsonForce:)(a1, v11, a2, v13, a3, v15);
}

uint64_t @objc closure #1 in MOProcessingServer.capSet(jsonMock:jsonBlock:jsonForce:)()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = *v1;

  if (v2)
  {
    v6 = _convertErrorToNSError(_:)();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    v6 = String._bridgeToObjectiveC()();

    v8 = v6;
    v7 = 0;
  }

  v9 = *(v3 + 24);
  (v9)[2](v9, v8, v7);

  _Block_release(v9);
  v10 = *(v5 + 8);

  return v10();
}

uint64_t MOProcessingServer.capReset()()
{
  *(v1 + 160) = v0;
  return _swift_task_switch(MOProcessingServer.capReset(), 0, 0);
}

{
  if (static DefaultsManager.Cloud.capabilitiesMock.getter() || static DefaultsManager.Cloud.capabilitiesBlock.getter() || static DefaultsManager.Cloud.capabilitiesForce.getter())
  {

    static DefaultsManager.Cloud.capabilitiesMock.setter();
    static DefaultsManager.Cloud.capabilitiesBlock.setter();
    static DefaultsManager.Cloud.capabilitiesForce.setter();
    type metadata accessor for MomentsUIManager();
    v1 = static MomentsUIManager.shared.getter();
    v0[21] = dispatch thunk of MomentsUIManager.cloudManager.getter();

    v2 = swift_task_alloc();
    v0[22] = v2;
    v3 = type metadata accessor for CloudManager();
    v4 = lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type CloudManager and conformance CloudManager, &type metadata accessor for CloudManager);
    *v2 = v0;
    v2[1] = MOProcessingServer.capReset();

    return CloudManagerProtocol.refresh(force:wait:_:_:)(1, 0, 0x7465736552706163, 0xEA00000000002928, 706, v3, v4);
  }

  else
  {
    static DefaultsManager.Cloud.capabilitiesMock.setter();
    static DefaultsManager.Cloud.capabilitiesBlock.setter();
    static DefaultsManager.Cloud.capabilitiesForce.setter();
    v5 = v0[20];
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = MOProcessingServer.capReset();
    v6 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String;
    v0[13] = &block_descriptor_114;
    v0[14] = v6;
    [v5 capWithCompletionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

{

  return _swift_task_switch(MOProcessingServer.capReset(), 0, 0);
}

{

  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = MOProcessingServer.capReset();
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> () with result type String;
  v0[13] = &block_descriptor_114;
  v0[14] = v2;
  [v1 capWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = MOProcessingServer.capReset();
  }

  else
  {
    v2 = MOProcessingServer.deviceNominateJSON(devicePrefix:bundleSuffix:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t @objc closure #1 in MOProcessingServer.capReset()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in MOProcessingServer.deviceMakePrimary();

  return MOProcessingServer.capReset()();
}

uint64_t MOProcessingServer.capCommon()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = MOProcessingServer.databaseSnapshotList();

  return specialized MOProcessingServer.capCommon()();
}

uint64_t @objc closure #1 in MOProcessingServer.capCommon()(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = @objc closure #1 in MOProcessingServer.databaseSnapshotList();

  return specialized MOProcessingServer.capCommon()();
}

uint64_t MOProcessingServer.beginSystemTask(withTask:completionHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v3;
  v11[5] = a1;
  v11[6] = a2;
  v11[7] = a3;
  v12 = v3;
  v13 = a1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in MOProcessingServer.beginSystemTask(withTask:completionHandler:), v11);
}

uint64_t closure #1 in MOProcessingServer.beginSystemTask(withTask:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v7[6] = swift_task_alloc();
  v7[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12MOTaskActiona_10Foundation4UUIDVtMd);
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();

  return _swift_task_switch(closure #1 in MOProcessingServer.beginSystemTask(withTask:completionHandler:), 0, 0);
}

uint64_t closure #1 in MOProcessingServer.beginSystemTask(withTask:completionHandler:)()
{
  v1 = *(v0 + 72);
  v2 = *(*(v0 + 56) + 48);
  *(v0 + 80) = (*((swift_isaMask & **(v0 + 16)) + 0x90))();
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = closure #1 in MOProcessingServer.beginSystemTask(withTask:completionHandler:);
  v4 = *(v0 + 24);

  return TaskProcessorManager.beginTask(task:)(v1 + v2, v4);
}

{
  v1 = v0[13];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[4];
  *v2 = v1;
  outlined init with copy of (String, Date?)(v2, v3, &_sSo12MOTaskActiona_10Foundation4UUIDVtMd);

  v7 = *(v5 + 48);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  (*(v9 + 32))(v4, v3 + v7, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  v6(v1, v4, 0);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v4, &_s10Foundation4UUIDVSgMd);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v2, &_sSo12MOTaskActiona_10Foundation4UUIDVtMd);

  v10 = v0[1];

  return v10();
}

{
  v1 = v0[12];
  v2 = v0[6];
  v3 = v0[4];

  v4 = MOTaskActionCompleted;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  swift_errorRetain();
  v3(v4, v2, v1);

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v2, &_s10Foundation4UUIDVSgMd);

  v6 = v0[1];

  return v6();
}

uint64_t closure #1 in MOProcessingServer.beginSystemTask(withTask:completionHandler:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = closure #1 in MOProcessingServer.beginSystemTask(withTask:completionHandler:);
  }

  else
  {

    *(v4 + 104) = a1;
    v5 = closure #1 in MOProcessingServer.beginSystemTask(withTask:completionHandler:);
  }

  return _swift_task_switch(v5, 0, 0);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned MOTaskAction, @unowned NSUUID?, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  outlined init with copy of (String, Date?)(a2, &v15 - v9, &_s10Foundation4UUIDVSgMd);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  isa = 0;
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v12 + 8))(v10, v11);
  }

  if (a3)
  {
    v14 = _convertErrorToNSError(_:)();
  }

  else
  {
    v14 = 0;
  }

  (*(a4 + 16))(a4, a1, isa, v14);
}

uint64_t closure #1 in MOProcessingServer.continueSystemTask(withToken:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(closure #1 in MOProcessingServer.continueSystemTask(withToken:completionHandler:), 0, 0);
}

uint64_t closure #1 in MOProcessingServer.continueSystemTask(withToken:completionHandler:)()
{
  *(v0 + 48) = (*((swift_isaMask & **(v0 + 16)) + 0x90))();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = closure #1 in MOProcessingServer.continueSystemTask(withToken:completionHandler:);
  v2 = *(v0 + 24);

  return TaskProcessorManager.continueTask(taskTokenId:)(v2);
}

{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  (*(v0 + 32))(v1, v2, 0);

  v3 = *(v0 + 8);

  return v3();
}

{
  v1 = v0[8];
  v2 = v0[4];

  v3 = MOTaskActionCompleted;
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSNumber);
  isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
  swift_errorRetain();
  v2(v3, isa, v1);

  v5 = v0[1];

  return v5();
}

uint64_t closure #1 in MOProcessingServer.continueSystemTask(withToken:completionHandler:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 64) = v2;

  if (v2)
  {
    v7 = closure #1 in MOProcessingServer.continueSystemTask(withToken:completionHandler:);
  }

  else
  {

    *(v6 + 72) = a2;
    *(v6 + 80) = a1;
    v7 = closure #1 in MOProcessingServer.continueSystemTask(withToken:completionHandler:);
  }

  return _swift_task_switch(v7, 0, 0);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned MOTaskAction, @unowned NSNumber, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = _convertErrorToNSError(_:)();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1, a2);
}

uint64_t MOProcessingServer.continueSystemTask(withToken:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a5;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v12 - 8);
  v14 = &v21 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v10 + 16))(&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v16 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = v5;
  (*(v10 + 32))(&v17[v16], &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v18 = &v17[(v11 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v18 = a2;
  *(v18 + 1) = a3;
  v19 = v5;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, v22, v17);
}

uint64_t closure #1 in MOProcessingServer.endSystemTask(withToken:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(closure #1 in MOProcessingServer.endSystemTask(withToken:completionHandler:), 0, 0);
}

uint64_t closure #1 in MOProcessingServer.endSystemTask(withToken:completionHandler:)()
{
  *(v0 + 48) = (*((swift_isaMask & **(v0 + 16)) + 0x90))();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = closure #1 in MOProcessingServer.endSystemTask(withToken:completionHandler:);
  v2 = *(v0 + 24);

  return TaskProcessorManager.endTask(taskTokenId:)(v2);
}

{
  v1 = *(v0 + 72);
  (*(v0 + 32))(v1, 0);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[8];
  v2 = v0[4];

  v3 = MOTaskActionCompleted;
  swift_errorRetain();
  v2(v3, v1);

  v4 = v0[1];

  return v4();
}

uint64_t closure #1 in MOProcessingServer.endSystemTask(withToken:completionHandler:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = closure #1 in MOProcessingServer.endSystemTask(withToken:completionHandler:);
  }

  else
  {

    *(v4 + 72) = a1;
    v5 = closure #1 in MOProcessingServer.endSystemTask(withToken:completionHandler:);
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t @objc MOProcessingServer.continueSystemTask(withToken:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a7;
  v30 = a8;
  v28[1] = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v10 - 8);
  v12 = v28 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v17 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = v28 - v18;
  v20 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  (*(v14 + 16))(v17, v19, v13);
  v23 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 4) = a1;
  (*(v14 + 32))(&v24[v23], v17, v13);
  v25 = &v24[(v15 + v23 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v25 = v29;
  *(v25 + 1) = v21;
  v26 = a1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, v30, v24);

  return (*(v14 + 8))(v19, v13);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned MOTaskAction, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

Swift::Void __swiftcall MOProcessingServer.resetOnboardingStatus(_:)(NSNumber a1)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 > 1)
  {
    __break(1u);
  }

  else
  {
    v4 = [(objc_class *)a1.super.super.isa integerValue];

    OnboardingType.resetOnboardingStatus(_:)(v4);
  }
}

NSNumber_optional __swiftcall MOProcessingServer.isOnboarded()()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  isa = 1;
  if (v1 != 1)
  {
    if (v1)
    {
      __break(1u);
      goto _$s16MomentsUIService18MOProcessingServerC11isOnboardedSo8NSNumberCSgyF;
    }

    LOBYTE(isa) = 0;
  }

  OnboardingType.needsOnboarding.getter(isa);

  isa = Bool._bridgeToObjectiveC()().super.super.isa;
_$s16MomentsUIService18MOProcessingServerC11isOnboardedSo8NSNumberCSgyF:
  result.value.super.super.isa = isa;
  result.is_nil = v2;
  return result;
}

uint64_t MOProcessingServer.setOnboardedAsync(flag:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for DefaultsManager.SyncOnboarding.Status();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();

  return _swift_task_switch(MOProcessingServer.setOnboardedAsync(flag:), 0, 0);
}

{
  *(*v1 + 200) = a1;

  return _swift_task_switch(MOProcessingServer.setOnboardedAsync(flag:), 0, 0);
}

uint64_t MOProcessingServer.setOnboardedAsync(flag:)()
{
  v1 = [*(v0 + 16) integerValue];
  *(v0 + 120) = v1;
  if ((v1 & 0x8000000000000000) != 0)
  {
    v12 = objc_opt_self();
    v13 = [v12 currentDevice];
    v14 = [v13 userInterfaceIdiom];

    if (v14 > 1)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    OnboardingType.resetOnboardingStatus(_:)(-1);
    v15 = [v12 currentDevice];
    v30 = [v15 userInterfaceIdiom];

    if (v30 == 1)
    {
      goto LABEL_20;
    }

    if (!v30)
    {
LABEL_19:
      static DefaultsManager.Onboarding.resetDeferralCount(_:)();
      goto LABEL_21;
    }

    __break(1u);
LABEL_17:
    v31 = DefaultsManager.SyncOnboarding.Status.rawValue.getter();
    OnboardingType.resetOnboardingStatus(_:)(v31);
    v32 = [v15 currentDevice];
    v33 = [v32 userInterfaceIdiom];

    if (v33 != 1)
    {
      if (v33)
      {
LABEL_30:
        __break(1u);
        return CloudManager.retainUIActive(_:_:_:)(v7, v8, v9, v10, v11);
      }

      goto LABEL_19;
    }

LABEL_20:
    static DefaultsManager.SyncOnboarding.resetDeferralCount(_:)();
    goto LABEL_21;
  }

  v2 = *(v0 + 96);
  v3 = *(*(v0 + 104) + 104);
  if (!v1)
  {
    v3(*(v0 + 112), enum case for DefaultsManager.SyncOnboarding.Status.notStarted(_:), v2);
    v15 = objc_opt_self();
    v16 = [v15 currentDevice];
    v17 = [v16 userInterfaceIdiom];

    if (v17 > 1)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    goto LABEL_17;
  }

  v3(*(v0 + 112), enum case for DefaultsManager.SyncOnboarding.Status.finished(_:), v2);
  v4 = objc_opt_self();
  v5 = [v4 currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 > 1)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v18 = DefaultsManager.SyncOnboarding.Status.rawValue.getter();
  OnboardingType.resetOnboardingStatus(_:)(v18);
  v19 = [v4 currentDevice];
  v20 = [v19 userInterfaceIdiom];

  if (v20)
  {
    if (v20 == 1)
    {
      v22 = *(v0 + 80);
      v21 = *(v0 + 88);
      v23 = *(v0 + 72);
      type metadata accessor for MomentsUIManager();
      v24 = static MomentsUIManager.shared.getter();
      *(v0 + 128) = dispatch thunk of MomentsUIManager.cloudManager.getter();

      UUID.init()();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
      *(v0 + 144) = *(v22 + 72);
      v25 = *(v22 + 80);
      *(v0 + 232) = v25;
      v26 = (v25 + 32) & ~v25;
      v27 = swift_allocObject();
      *(v0 + 152) = v27;
      *(v27 + 16) = xmmword_1002A48B0;
      v28 = *(v22 + 16);
      *(v0 + 160) = v28;
      *(v0 + 168) = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v28(v27 + v26, v21, v23);
      v29 = swift_task_alloc();
      *(v0 + 176) = v29;
      *v29 = v0;
      v29[1] = MOProcessingServer.setOnboardedAsync(flag:);
      v8 = "setOnboardedAsync(flag:)";
      v7 = v27;
      v9 = 24;
      v10 = 2;
      v11 = 797;

      return CloudManager.retainUIActive(_:_:_:)(v7, v8, v9, v10, v11);
    }

    goto LABEL_27;
  }

LABEL_21:
  v34 = *(v0 + 120);
  v35 = [*(v0 + 24) isOnboarded];
  if ((v34 & 0x8000000000000000) == 0)
  {
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  }

  v36 = *(v0 + 8);

  return v36(v35);
}

{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 184) = v3;
  v4 = type metadata accessor for CloudManager();
  v5 = lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type CloudManager and conformance CloudManager, &type metadata accessor for CloudManager);
  *v3 = v2;
  v3[1] = MOProcessingServer.setOnboardedAsync(flag:);

  return CloudManagerProtocol.refresh(force:wait:_:_:)(1, 0, 0xD000000000000018, 0x80000001002B96B0, 801, v4, v5);
}

{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 192) = v3;
  *v3 = v2;
  v3[1] = MOProcessingServer.setOnboardedAsync(flag:);

  return CloudManager.getDeviceDB()();
}

{
  if (*(v0 + 200))
  {
    type metadata accessor for CloudDevicesDB();
    lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type CloudDevicesDB and conformance CloudDevicesDB, &type metadata accessor for CloudDevicesDB);
    v2 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(MOProcessingServer.setOnboardedAsync(flag:), v2, v1);
  }

  else
  {
    type metadata accessor for CommonLogger();
    static CommonLogger.services.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "setOnboarded Unable to nominate primary device; cloudManager or deviceDB is nil", v5, 2u);
    }

    v7 = *(v0 + 40);
    v6 = *(v0 + 48);
    v8 = *(v0 + 32);

    (*(v7 + 8))(v6, v8);
    v9 = objc_allocWithZone(NSError);
    v10 = String._bridgeToObjectiveC()();
    v11 = [v9 initWithDomain:v10 code:0 userInfo:0];

    swift_willThrow();
    v12 = *(v0 + 160);
    v13 = *(v0 + 88);
    v14 = *(v0 + 72);
    v15 = (*(v0 + 232) + 32) & ~*(v0 + 232);
    v16 = swift_allocObject();
    *(v0 + 216) = v16;
    *(v16 + 16) = xmmword_1002A48B0;
    v12(v16 + v15, v13, v14);
    v17 = swift_task_alloc();
    *(v0 + 224) = v17;
    *v17 = v0;
    v17[1] = MOProcessingServer.setOnboardedAsync(flag:);

    return CloudManager.releaseUIActive(_:_:_:)(v16, "setOnboardedAsync(flag:)", 24, 2, 817);
  }
}

{
  CloudDevicesDB.primaryDevice.getter();

  return _swift_task_switch(MOProcessingServer.setOnboardedAsync(flag:), 0, 0);
}

{
  v1 = *(v0 + 64);
  v2 = type metadata accessor for CloudDevice();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v1, &_s9MomentsUI11CloudDeviceVSgMd);
  if (v3 == 1)
  {
    v4 = swift_task_alloc();
    *(v0 + 208) = v4;
    *v4 = v0;
    v4[1] = MOProcessingServer.setOnboardedAsync(flag:);

    return CloudDevicesDB.autoNominateDevice()();
  }

  else
  {
    type metadata accessor for CommonLogger();
    static CommonLogger.services.getter();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "setOnboarded Primary device exists; skipping auto nomination", v7, 2u);
    }

    v8 = *(v0 + 56);
    v9 = *(v0 + 32);
    v10 = *(v0 + 40);

    (*(v10 + 8))(v8, v9);
    v11 = objc_allocWithZone(NSError);
    v12 = String._bridgeToObjectiveC()();
    v13 = [v11 initWithDomain:v12 code:0 userInfo:0];

    swift_willThrow();

    v14 = *(v0 + 160);
    v15 = *(v0 + 88);
    v16 = *(v0 + 72);
    v17 = (*(v0 + 232) + 32) & ~*(v0 + 232);
    v18 = swift_allocObject();
    *(v0 + 216) = v18;
    *(v18 + 16) = xmmword_1002A48B0;
    v14(v18 + v17, v15, v16);
    v19 = swift_task_alloc();
    *(v0 + 224) = v19;
    *v19 = v0;
    v19[1] = MOProcessingServer.setOnboardedAsync(flag:);

    return CloudManager.releaseUIActive(_:_:_:)(v18, "setOnboardedAsync(flag:)", 24, 2, 817);
  }
}

{

  return _swift_task_switch(MOProcessingServer.setOnboardedAsync(flag:), 0, 0);
}

{

  v1 = *(v0 + 160);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = (*(v0 + 232) + 32) & ~*(v0 + 232);
  v5 = swift_allocObject();
  *(v0 + 216) = v5;
  *(v5 + 16) = xmmword_1002A48B0;
  v1(v5 + v4, v2, v3);
  v6 = swift_task_alloc();
  *(v0 + 224) = v6;
  *v6 = v0;
  v6[1] = MOProcessingServer.setOnboardedAsync(flag:);

  return CloudManager.releaseUIActive(_:_:_:)(v5, "setOnboardedAsync(flag:)", 24, 2, 817);
}

{

  return _swift_task_switch(MOProcessingServer.setOnboardedAsync(flag:), 0, 0);
}

{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 120);
  v5 = [*(v0 + 24) isOnboarded];
  if ((v4 & 0x8000000000000000) == 0)
  {
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  }

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t @objc closure #1 in MOProcessingServer.setOnboardedAsync(flag:)(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = @objc closure #1 in MOProcessingServer.setOnboardedAsync(flag:);

  return MOProcessingServer.setOnboardedAsync(flag:)(v6);
}

uint64_t @objc closure #1 in MOProcessingServer.setOnboardedAsync(flag:)(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 32);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (v9)[2](v9, 0, v10);

    _Block_release(v9);
  }

  else
  {
    (v9)[2](*(v5 + 32), a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t MOProcessingServer.isUIActive()()
{
  return _swift_task_switch(MOProcessingServer.isUIActive(), 0, 0);
}

{
  type metadata accessor for MomentsUIManager();
  v1 = static MomentsUIManager.shared.getter();
  *(v0 + 16) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  type metadata accessor for CloudManager();
  lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type CloudManager and conformance CloudManager, &type metadata accessor for CloudManager);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(MOProcessingServer.isUIActive(), v3, v2);
}

{
  *(v0 + 24) = CloudManager.uiActiveCount.getter();

  return _swift_task_switch(MOProcessingServer.isUIActive(), 0, 0);
}

{
  v1 = [objc_allocWithZone(NSNumber) initWithBool:*(v0 + 24) > 0];

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t @objc closure #1 in MOProcessingServer.isUIActive()(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);

  return _swift_task_switch(@objc closure #1 in MOProcessingServer.isUIActive(), 0, 0);
}

uint64_t @objc closure #1 in MOProcessingServer.isUIActive()()
{
  type metadata accessor for MomentsUIManager();
  v1 = static MomentsUIManager.shared.getter();
  *(v0 + 24) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  type metadata accessor for CloudManager();
  lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type CloudManager and conformance CloudManager, &type metadata accessor for CloudManager);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(@objc closure #1 in MOProcessingServer.isUIActive(), v3, v2);
}

{
  *(v0 + 32) = CloudManager.uiActiveCount.getter();

  return _swift_task_switch(@objc closure #1 in MOProcessingServer.isUIActive(), 0, 0);
}

{
  v1 = v0[2];
  v2 = [objc_allocWithZone(NSNumber) initWithBool:v0[4] > 0];

  (v1)[2](v1, v2, 0);
  _Block_release(v1);

  v3 = v0[1];

  return v3();
}

NSNumber_optional __swiftcall MOProcessingServer.setOnboarded(flag:)(NSNumber flag)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2].super.super.isa = 0;
  v7[3].super.super.isa = 0;
  v7[4].super.super.isa = v1;
  v7[5].super.super.isa = flag.super.super.isa;
  v8 = v1;
  v9 = flag.super.super.isa;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in MOProcessingServer.setOnboarded(flag:), v7);

  v11 = 0;
  result.value.super.super.isa = v11;
  result.is_nil = v10;
  return result;
}

uint64_t closure #1 in MOProcessingServer.setOnboarded(flag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 152) = a4;
  *(v5 + 160) = a5;
  return _swift_task_switch(closure #1 in MOProcessingServer.setOnboarded(flag:), 0, 0);
}

uint64_t closure #1 in MOProcessingServer.setOnboarded(flag:)()
{
  v2 = v0[19];
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = closure #1 in MOProcessingServer.setOnboarded(flag:);
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo8NSNumberCSgs5Error_pGMd);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSNumber?, @unowned NSError?) -> () with result type NSNumber?;
  v0[13] = &block_descriptor_741;
  v0[14] = v3;
  [v2 setOnboardedAsyncWithFlag:v1 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = closure #1 in MOProcessingServer.setOnboarded(flag:);
  }

  else
  {
    v2 = closure #1 in MOProcessingServer.setOnboarded(flag:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSNumber?, @unowned NSError?) -> () with result type NSNumber?(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t MOProcessingServer.runNotificationServicing(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v3[5] = swift_task_alloc();

  return _swift_task_switch(MOProcessingServer.runNotificationServicing(for:), 0, 0);
}

uint64_t MOProcessingServer.runNotificationServicing(for:)()
{
  v1 = v0[4];

  UUID.init(uuidString:)();

  v3 = (*((swift_isaMask & *v1) + 0xA8))(v2);
  v0[6] = v3;
  v7 = (*((swift_isaMask & *v3) + 0x78) + **((swift_isaMask & *v3) + 0x78));
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = MOProcessingServer.runNotificationServicing(for:);
  v5 = v0[5];

  return v7(v5, 0, 0);
}

{
  v2 = *(*v1 + 48);
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = MOProcessingServer.runNotificationServicing(for:);
  }

  else
  {
    v3 = MOProcessingServer.runNotificationServicing(for:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 40), &_s10Foundation4UUIDVSgMd);

  v1 = *(v0 + 8);

  return v1(0);
}

{
  v1 = v0[8];
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v0[5], &_s10Foundation4UUIDVSgMd);

  v2 = v0[1];

  return v2(v1);
}

uint64_t @objc closure #1 in MOProcessingServer.runNotificationServicing(for:)(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v3[4] = v7;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = @objc closure #1 in MOProcessingServer.runNotificationServicing(for:);

  return MOProcessingServer.runNotificationServicing(for:)(a1, v7);
}

uint64_t @objc closure #1 in MOProcessingServer.runNotificationServicing(for:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = *v1;

  if (a1)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 24);
  (v7)[2](v7, v6);

  _Block_release(v7);
  v8 = *(v5 + 8);

  return v8();
}

uint64_t MOProcessingServer.setNotificationSettingWith(_:shouldUpdateDefaults:completionHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v47 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v9 - 8);
  v11 = &v39[-v10];
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v39[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for CommonLogger();
  static CommonLogger.services.getter();
  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v40 = v18;
    v41 = v13;
    v42 = v12;
    v43 = v11;
    v45 = a2;
    v46 = a4;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v48 = v21;
    *v19 = 138413058;
    v22 = [v16 scheduleType];
    *(v19 + 4) = v22;
    *v20 = v22;
    *(v19 + 12) = 2080;
    v23 = [v16 weekdays];
    v44 = v5;
    if (v23)
    {
      v24 = v23;
      type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSNumber);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSNumber);
    v26 = Array.description.getter();
    v28 = v27;

    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v48);

    *(v19 + 14) = v29;
    *(v19 + 22) = 2112;
    isa = [v16 hour];
    if (!isa)
    {
      isa = NSNumber.init(integerLiteral:)(-1).super.super.isa;
    }

    *(v19 + 24) = isa;
    v20[1] = isa;
    *(v19 + 32) = 2112;
    v31 = [v16 minute];
    v5 = v44;
    v25 = v47;
    v32 = v41;
    if (!v31)
    {
      v31 = NSNumber.init(integerLiteral:)(-1).super.super.isa;
    }

    *(v19 + 34) = v31;
    v20[2] = v31;
    _os_log_impl(&_mh_execute_header, v17, v40, "setNotificationSetting for type: %@, days: %s, hour: %@, minute: %@", v19, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
    swift_arrayDestroy();

    __swift_destroy_boxed_opaque_existential_0(v21);

    (*(v32 + 8))(v15, v42);
    a2 = v45;
    a4 = v46;
    v11 = v43;
  }

  else
  {

    (*(v13 + 8))(v15, v12);
    v25 = v47;
  }

  v33 = type metadata accessor for TaskPriority();
  (*(*(v33 - 8) + 56))(v11, 1, 1, v33);
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = 0;
  v34[4] = v5;
  v34[5] = v16;
  v34[6] = a2;
  v34[7] = v25;
  v34[8] = a4;
  v35 = v16;
  v36 = v5;
  v37 = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in MOProcessingServer.setNotificationSettingWith(_:shouldUpdateDefaults:completionHandler:), v34);
}

uint64_t closure #1 in MOProcessingServer.setNotificationSettingWith(_:shouldUpdateDefaults:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(closure #1 in MOProcessingServer.setNotificationSettingWith(_:shouldUpdateDefaults:completionHandler:), 0, 0);
}

uint64_t closure #1 in MOProcessingServer.setNotificationSettingWith(_:shouldUpdateDefaults:completionHandler:)()
{
  v1 = (*((swift_isaMask & **(v0 + 16)) + 0xA8))();
  *(v0 + 56) = v1;
  v6 = (*((swift_isaMask & *v1) + 0x88) + **((swift_isaMask & *v1) + 0x88));
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = closure #1 in MOProcessingServer.setNotificationSettingWith(_:shouldUpdateDefaults:completionHandler:);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);

  return v6(v4, v3);
}

{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = closure #1 in MOProcessingServer.setNotificationSettingWith(_:shouldUpdateDefaults:completionHandler:);
  }

  else
  {

    v3 = closure #1 in MOProcessingServer.setNotificationSettingWith(_:shouldUpdateDefaults:completionHandler:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  (*(v0 + 40))(0);
  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);

  swift_errorRetain();
  v2(v1);

  v3 = *(v0 + 8);

  return v3();
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t MOProcessingServer.handleDefaultAppChange(toBundleID:handler:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v29 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CommonLogger();
  static CommonLogger.services.getter();

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = a4;
    v28 = v5;
    v19 = v18;
    v20 = a3;
    v21 = swift_slowAlloc();
    v30 = v21;
    *v19 = 136315138;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, a2, &v30);
    _os_log_impl(&_mh_execute_header, v16, v17, "reset notifications for new default app, bundleID: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    a3 = v20;

    a4 = v27;
    v5 = v28;
  }

  (*(v13 + 8))(v15, v12);
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v24 = v29;
  v23[4] = v5;
  v23[5] = v24;
  v23[6] = a2;
  v23[7] = a3;
  v23[8] = a4;

  v25 = v5;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in MOProcessingServer.handleDefaultAppChange(toBundleID:handler:), v23);
}

uint64_t closure #1 in MOProcessingServer.handleDefaultAppChange(toBundleID:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = type metadata accessor for Logger();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v8[10] = swift_task_alloc();

  return _swift_task_switch(closure #1 in MOProcessingServer.handleDefaultAppChange(toBundleID:handler:), 0, 0);
}

uint64_t closure #1 in MOProcessingServer.handleDefaultAppChange(toBundleID:handler:)()
{
  v1 = v0[10];
  v2 = v0[4];
  v3 = v0[2];
  v4 = *((swift_isaMask & *v3) + 0xA8);
  v5 = ((swift_isaMask & *v3) + 168) & 0xFFFFFFFFFFFFLL | 0x2A54000000000000;
  v0[11] = v4;
  v0[12] = v5;
  v6 = v4();
  v0[13] = v6;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  v12 = (*((swift_isaMask & *v6) + 0x78) + **((swift_isaMask & *v6) + 0x78));
  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v8[1] = closure #1 in MOProcessingServer.handleDefaultAppChange(toBundleID:handler:);
  v9 = v0[10];
  v10 = v0[3];

  return v12(v9, v10, v2);
}

{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 80);
  *(*v1 + 120) = v0;

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v3, &_s10Foundation4UUIDVSgMd);

  if (v0)
  {
    v4 = closure #1 in MOProcessingServer.handleDefaultAppChange(toBundleID:handler:);
  }

  else
  {
    v4 = closure #1 in MOProcessingServer.handleDefaultAppChange(toBundleID:handler:);
  }

  return _swift_task_switch(v4, 0, 0);
}

{
  v1 = (*(v0 + 88))();
  *(v0 + 128) = v1;
  v6 = (*((swift_isaMask & *v1) + 0x90) + **((swift_isaMask & *v1) + 0x90));
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = closure #1 in MOProcessingServer.handleDefaultAppChange(toBundleID:handler:);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);

  return v6(v4, v3);
}

{
  if ((*(v0 + 144) & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    v15 = v1;
    goto LABEL_7;
  }

  v20[9] = v0;
  v2 = NotificationScheduleConfiguration.init(rawValue:)();
  if (v3)
  {
    goto LABEL_8;
  }

  v1 = v2;
  type metadata accessor for CommonLogger();
  static CommonLogger.services.getter();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 144);
    v7 = *(v0 + 64);
    v18 = *(v0 + 56);
    v19 = *(v0 + 72);
    v9 = *(v0 + 24);
    v8 = *(v0 + 32);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20[0] = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, v20);
    *(v10 + 12) = 2048;
    *(v10 + 14) = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "[MOProcessingServer] Send notification schedule change to client apps. BundleID: %s, scheduleSetting: %lu", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v11);

    (*(v7 + 8))(v19, v18);
  }

  else
  {
    v13 = *(v0 + 64);
    v12 = *(v0 + 72);
    v14 = *(v0 + 56);

    (*(v13 + 8))(v12, v14);
  }

  v15 = v1;
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_12;
  }

LABEL_7:
  MOPresenterServer.sendNotificationScheduleChange(to:for:)(v15, *(v0 + 24), *(v0 + 32));
LABEL_8:
  (*(v0 + 40))(0);

  v16 = *(v0 + 8);

  return v16();
}

{
  v1 = v0[15];
  v2 = v0[5];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t closure #1 in MOProcessingServer.handleDefaultAppChange(toBundleID:handler:)(uint64_t a1)
{
  v2 = *(*v1 + 128);
  *(*v1 + 144) = a1;

  return _swift_task_switch(closure #1 in MOProcessingServer.handleDefaultAppChange(toBundleID:handler:), 0, 0);
}

uint64_t MOProcessingServer.getAuthorizedAppsForNotificationServicing(handler:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;
  v10 = v2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in MOProcessingServer.getAuthorizedAppsForNotificationServicing(handler:), v9);
}

uint64_t closure #1 in MOProcessingServer.getAuthorizedAppsForNotificationServicing(handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for Logger();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();

  return _swift_task_switch(closure #1 in MOProcessingServer.getAuthorizedAppsForNotificationServicing(handler:), 0, 0);
}

uint64_t closure #1 in MOProcessingServer.getAuthorizedAppsForNotificationServicing(handler:)()
{
  type metadata accessor for CommonLogger();
  static CommonLogger.services.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "[MOProcessingServer] getAuthorizedAppsForNotificationServicing", v3, 2u);
  }

  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  v7 = v0[2];

  v8 = (*(v5 + 8))(v4, v6);
  v9 = (*((swift_isaMask & *v7) + 0xA8))(v8);
  v0[8] = v9;
  v12 = (*((swift_isaMask & *v9) + 0xA8) + **((swift_isaMask & *v9) + 0xA8));
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = closure #1 in MOProcessingServer.getAuthorizedAppsForNotificationServicing(handler:);

  return v12();
}

{
  v1 = *(v0 + 80);
  (*(v0 + 24))(v1, 0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #1 in MOProcessingServer.getAuthorizedAppsForNotificationServicing(handler:)(uint64_t a1)
{
  v2 = *(*v1 + 64);
  *(*v1 + 80) = a1;

  return _swift_task_switch(closure #1 in MOProcessingServer.getAuthorizedAppsForNotificationServicing(handler:), 0, 0);
}

uint64_t MOProcessingServer.getApplicationsWithDataAccess()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for TaskProcessorWorker.endTask() in conformance HealthCheckTaskProcessor;

  return specialized MOProcessingServer.getApplicationsWithDataAccess()();
}

uint64_t @objc closure #1 in MOProcessingServer.getApplicationsWithDataAccess()(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = @objc closure #1 in MOProcessingServer.getApplicationsWithDataAccess();

  return specialized MOProcessingServer.getApplicationsWithDataAccess()();
}

uint64_t @objc closure #1 in MOProcessingServer.getApplicationsWithDataAccess()(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;

  v7 = *(v5 + 16);
  if (v3)
  {
    v8 = _convertErrorToNSError(_:)();

    (v7)[2](v7, 0, v8);

    _Block_release(v7);
  }

  else
  {
    (v7)[2](v7, a1, 0);
    _Block_release(v7);
  }

  v9 = *(v6 + 8);

  return v9();
}

void closure #1 in MOProcessingServer.listener(_:didReceive:withContext:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v8 = static OS_dispatch_queue.main.getter();
  [a1 setTargetQueue:v8];

  [a1 setInterface:a2];
  [a1 setInterfaceTarget:a3];
  v9 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality:v9];

  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  v20 = partial apply for closure #1 in closure #1 in MOProcessingServer.listener(_:didReceive:withContext:);
  v21 = v10;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v19 = &block_descriptor_728;
  v11 = _Block_copy(&v16);
  v12 = a4;

  [a1 setInvalidationHandler:v11];
  _Block_release(v11);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v20 = partial apply for closure #2 in closure #1 in MOProcessingServer.listener(_:didReceive:withContext:);
  v21 = v13;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v19 = &block_descriptor_734;
  v14 = _Block_copy(&v16);
  v15 = v12;

  [a1 setInterruptionHandler:v14];
  _Block_release(v14);
}

uint64_t closure #1 in closure #1 in MOProcessingServer.listener(_:didReceive:withContext:)(uint64_t a1, void *a2, const char *a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CommonLogger();
  static CommonLogger.services.getter();
  v9 = a2;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    v13 = [v9 remoteToken];
    v14 = [v13 pid];

    *(v12 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v10, v11, a3, v12, 8u);
  }

  else
  {

    v10 = v9;
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t BSServiceConnectionHost.isEntitled.getter()
{
  v1 = [v0 remoteToken];
  static ViewServiceConstants.journalingSuggestionsEntitlement.getter();
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 valueForEntitlement:v2];

  if (!v3)
  {
    v5 = [v0 remoteToken];
    static ViewServiceConstants.momentsInternalEntitlement.getter();
    v6 = String._bridgeToObjectiveC()();

    v7 = [v5 valueForEntitlement:v6];

    if (v7)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v16[0] = v14;
    v16[1] = v15;
    if (*(&v15 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
      if (swift_dynamicCast())
      {
        *&v16[0] = static ViewServiceConstants.momentsInternalOBSEntitlement.getter();
        *(&v16[0] + 1) = v9;
        __chkstk_darwin(*&v16[0]);
        v12 = v16;
        v4 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v11, v13[0]);

        return v4 & 1;
      }
    }

    else
    {
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v16, &_sypSgMd);
    }

    goto LABEL_15;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v14, v16);
  outlined init with copy of Any(v16, &v14);
  if (!swift_dynamicCast())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
    if (swift_dynamicCast())
    {
      v13[0] = static ViewServiceConstants.journalingSuggestionsSheetEntitlement.getter();
      v13[1] = v8;
      __chkstk_darwin(v13[0]);
      v12 = v13;
      v4 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v11, v13[2]);

      __swift_destroy_boxed_opaque_existential_0(v16);

      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_0(v16);
    __swift_destroy_boxed_opaque_existential_0(&v14);
LABEL_15:
    v4 = 0;
    return v4 & 1;
  }

  __swift_destroy_boxed_opaque_existential_0(v16);
  v4 = v13[0];
LABEL_8:
  __swift_destroy_boxed_opaque_existential_0(&v14);
  return v4 & 1;
}

{
  v1 = [v0 remoteToken];
  static ViewServiceConstants.journalingSuggestionsEntitlement.getter();
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 valueForEntitlement:v2];

  if (!v3)
  {
    v5 = [v0 remoteToken];
    static ViewServiceConstants.momentsInternalEntitlement.getter();
    v6 = String._bridgeToObjectiveC()();

    v7 = [v5 valueForEntitlement:v6];

    if (v7)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v16[0] = v14;
    v16[1] = v15;
    if (*(&v15 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
      if (swift_dynamicCast())
      {
        *&v16[0] = static ViewServiceConstants.momentsInternalOBSEntitlement.getter();
        *(&v16[0] + 1) = v9;
        __chkstk_darwin(*&v16[0]);
        v12 = v16;
        v4 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, v11, v13[0]);

        return v4 & 1;
      }
    }

    else
    {
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v16, &_sypSgMd);
    }

    goto LABEL_15;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v14, v16);
  outlined init with copy of Any(v16, &v14);
  if (!swift_dynamicCast())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
    if (swift_dynamicCast())
    {
      v13[0] = static ViewServiceConstants.journalingSuggestionsSheetEntitlement.getter();
      v13[1] = v8;
      __chkstk_darwin(v13[0]);
      v12 = v13;
      v4 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v11, v13[2]);

      __swift_destroy_boxed_opaque_existential_0(v16);

      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_0(v16);
    __swift_destroy_boxed_opaque_existential_0(&v14);
LABEL_15:
    v4 = 0;
    return v4 & 1;
  }

  __swift_destroy_boxed_opaque_existential_0(v16);
  v4 = v13[0];
LABEL_8:
  __swift_destroy_boxed_opaque_existential_0(&v14);
  return v4 & 1;
}

uint64_t sub_1001EE0D8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t partial apply for closure #2 in MOProcessingServer.start()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return closure #2 in MOProcessingServer.start()(a1, v4, v5, v6);
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001EE1F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = type metadata accessor for CloudDevice.Capability();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v127 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v134 = &v119 - v13;
  v14 = __chkstk_darwin(v12);
  v140 = &v119 - v15;
  result = __chkstk_darwin(v14);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
      v20 = result;
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        result = specialized Array.remove(at:)(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = _swiftEmptyArrayStorage;
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      v27(v140, v29, v26);
      v130 = lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type CloudDevice.Capability and conformance CloudDevice.Capability, &type metadata accessor for CloudDevice.Capability);
      LODWORD(v133) = dispatch thunk of static Comparable.< infix(_:_:)();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      result = (v31)(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = dispatch thunk of static Comparable.< infix(_:_:)() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        result = v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v133)(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
      v20 = result;
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
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

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        result = specialized Array.remove(at:)(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type CloudDevice.Capability and conformance CloudDevice.Capability, &type metadata accessor for CloudDevice.Capability);
    v109 = dispatch thunk of static Comparable.< infix(_:_:)();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    result = v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
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

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  return specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(a1, a2, a3, type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster);
}

{
  return specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(a1, a2, a3, type metadata accessor for MOSuggestionSheetAssetDateRange);
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v28 = &type metadata for String;
  v29 = &protocol witness table for String;
  v30 = &protocol witness table for String;
  *&v27 = a1;
  *(&v27 + 1) = a2;
  v10 = *a6;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a5 & 1) != 0)
  {
LABEL_7:
    v18 = *a6;
    if (v16)
    {
LABEL_8:
      v19 = (v18[7] + 48 * v12);
      __swift_destroy_boxed_opaque_existential_0(v19);
      return outlined init with take of Decodable & Encodable(&v27, v19);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a5 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a5 & 1);
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v21;
  v18 = *a6;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = __swift_mutable_project_boxed_opaque_existential_2(&v27, &type metadata for String);
  __chkstk_darwin(v23);
  v25 = (&v27 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  specialized _NativeDictionary._insert(at:key:value:)(v12, a3, a4, *v25, v25[1], v18);

  return __swift_destroy_boxed_opaque_existential_0(&v27);
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(char a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v23) = a1;
  v24 = &type metadata for Bool;
  v25 = &protocol witness table for Bool;
  v26 = &protocol witness table for Bool;
  v9 = *a5;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 48 * v11);
      __swift_destroy_boxed_opaque_existential_0(v18);
      return outlined init with take of Decodable & Encodable(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a4 & 1);
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = __swift_mutable_project_boxed_opaque_existential_2(&v23, &type metadata for Bool);
  specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, *v22, v17);

  return __swift_destroy_boxed_opaque_existential_0(&v23);
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  v29 = v10;
  v30 = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  v31 = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  *&v28 = a1;
  v11 = *a5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
LABEL_7:
    v19 = *a5;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 48 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return outlined init with take of Decodable & Encodable(&v28, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a5;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_2(&v28, v10);
  __chkstk_darwin(v24);
  v26 = (&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  specialized _NativeDictionary._insert(at:key:value:)(v13, a2, a3, *v26, v19);

  return __swift_destroy_boxed_opaque_existential_0(&v28);
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a6;
  v36 = a7;
  v37 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v34);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  v17 = *a5;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v20 = v17[2];
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_14;
  }

  v23 = v18;
  v24 = v17[3];
  if (v24 >= v22 && (a4 & 1) != 0)
  {
LABEL_7:
    v25 = *a5;
    if (v23)
    {
LABEL_8:
      v26 = (v25[7] + 48 * v19);
      __swift_destroy_boxed_opaque_existential_0(v26);
      return outlined init with take of Decodable & Encodable(&v34, v26);
    }

    goto LABEL_11;
  }

  if (v24 >= v22 && (a4 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, a4 & 1);
  v28 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v23 & 1) != (v29 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v19 = v28;
  v25 = *a5;
  if (v23)
  {
    goto LABEL_8;
  }

LABEL_11:
  v30 = __swift_mutable_project_boxed_opaque_existential_2(&v34, v35);
  __chkstk_darwin(v30);
  v32 = &v34 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 16))(v32);
  specialized _NativeDictionary._insert(at:key:value:)(v19, a2, a3, v32, v25, a6, a7, a8);

  return __swift_destroy_boxed_opaque_existential_0(&v34);
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  v17 = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  v18 = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  *&v15 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = outlined init with take of Decodable & Encodable(&v15, (a5[7] + 48 * a1));
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v11) = a4;
  v12 = &type metadata for Bool;
  v13 = &protocol witness table for Bool;
  v14 = &protocol witness table for Bool;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Decodable & Encodable(&v11, (a5[7] + 48 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = &type metadata for String;
  v14 = &protocol witness table for String;
  v15 = &protocol witness table for String;
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = outlined init with take of Decodable & Encodable(&v12, (a6[7] + 48 * a1));
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a6;
  v22 = a7;
  v23 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v15 = (a5[6] + 16 * a1);
  *v15 = a2;
  v15[1] = a3;
  result = outlined init with take of Decodable & Encodable(&v20, (a5[7] + 48 * a1));
  v17 = a5[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v19;
  }

  return result;
}

uint64_t sub_1001F0C80()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t partial apply for closure #1 in MOProcessingServer.init()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return closure #1 in MOProcessingServer.init()(a1, v4, v5, v6);
}

uint64_t specialized Collection.prefix(_:)(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

uint64_t specialized MOProcessingServer.keepProcessUp()()
{
  v1 = type metadata accessor for ContinuousClock();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = type metadata accessor for Logger();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();

  return _swift_task_switch(specialized MOProcessingServer.keepProcessUp(), 0, 0);
}

{
  v0[9] = type metadata accessor for CommonLogger();
  static CommonLogger.processing.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "[keepProcessUp] keeping MomentsUIService up for 300 seconds.", v3, 2u);
  }

  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[6];

  v7 = *(v6 + 8);
  v0[10] = v7;
  v7(v4, v5);
  v8 = static Duration.seconds(_:)();
  v10 = v9;
  static Clock<>.continuous.getter();
  v11 = swift_task_alloc();
  v0[11] = v11;
  *v11 = v0;
  v11[1] = specialized MOProcessingServer.keepProcessUp();

  return specialized Clock.sleep(for:tolerance:)(v8, v10, 0, 0, 1);
}

{
  v2 = *v1;

  v3 = v2[4];
  v4 = v2[3];
  v5 = v2[2];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = specialized MOProcessingServer.keepProcessUp();
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = specialized MOProcessingServer.keepProcessUp();
  }

  return _swift_task_switch(v6, 0, 0);
}

{
  static CommonLogger.processing.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "[keepProcessUp] exiting after 300 seconds.", v3, 2u);
  }

  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[5];

  v4(v5, v6);

  v7 = v0[1];

  return v7();
}