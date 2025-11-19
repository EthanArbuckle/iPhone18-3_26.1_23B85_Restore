uint64_t one-time initialization function for LOW_CONFIDENCE_HIGH_CERTAINTITY_THRESHOLD()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_11:
    result = outlined destroy of Date?(&v7, &_sypSgMd, "&\b");
    goto LABEL_12;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

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

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_11;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_12:
    v4 = 0x4062C00000000000;
    goto LABEL_13;
  }

  v4 = v5;
LABEL_13:
  static MOMapLocation.LOW_CONFIDENCE_HIGH_CERTAINTITY_THRESHOLD = v4;
  return result;
}

uint64_t *MOMapLocation.LOW_CONFIDENCE_HIGH_CERTAINTITY_THRESHOLD.unsafeMutableAddressor()
{
  if (one-time initialization token for LOW_CONFIDENCE_HIGH_CERTAINTITY_THRESHOLD != -1)
  {
    swift_once();
  }

  return &static MOMapLocation.LOW_CONFIDENCE_HIGH_CERTAINTITY_THRESHOLD;
}

double static MOMapLocation.LOW_CONFIDENCE_HIGH_CERTAINTITY_THRESHOLD.getter()
{
  if (one-time initialization token for LOW_CONFIDENCE_HIGH_CERTAINTITY_THRESHOLD != -1)
  {
    swift_once();
  }

  return *&static MOMapLocation.LOW_CONFIDENCE_HIGH_CERTAINTITY_THRESHOLD;
}

uint64_t key path setter for MOMapLocation.startDate : MOMapLocation(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v8 - v5;
  outlined init with copy of Date?(a1, &v8 - v5);
  return (*(**a2 + 200))(v6);
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t variable initialization expression of MOMapLocation.startDate@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t key path setter for MOMapLocation.endDate : MOMapLocation(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v8 - v5;
  outlined init with copy of Date?(a1, &v8 - v5);
  return (*(**a2 + 224))(v6);
}

uint64_t MOMapLocation.startDate.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return outlined init with copy of Date?(v2 + v4, a2);
}

uint64_t MOMapLocation.startDate.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  outlined assign with take of Date?(a1, v2 + v4);
  return swift_endAccess();
}

double MOMapLocation.latitude.getter()
{
  v1 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_latitude;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOMapLocation.latitude.setter(double a1)
{
  v3 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_latitude;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double MOMapLocation.longitude.getter()
{
  v1 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_longitude;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOMapLocation.longitude.setter(double a1)
{
  v3 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_longitude;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for MOMapLocation.mapItem : MOMapLocation@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 288))();
  *a2 = result;
  return result;
}

uint64_t key path setter for MOMapLocation.mapItem : MOMapLocation(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 296);
  v4 = swift_unknownObjectRetain();
  return v3(v4);
}

uint64_t MOMapLocation.mapItem.getter()
{
  v1 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_mapItem;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t MOMapLocation.mapItem.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_mapItem;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t key path getter for MOMapLocation.clusterCount : MOMapLocation@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 312))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t MOMapLocation.clusterCount.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_clusterCount);
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MOMapLocation.clusterCount.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_clusterCount;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t key path getter for MOMapLocation.title : MOMapLocation@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 336))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for MOMapLocation.title : MOMapLocation(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 344);

  return v4(v2, v3);
}

double MOMapLocation.confidenceLevel.getter()
{
  v1 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_confidenceLevel;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOMapLocation.confidenceLevel.setter(double a1)
{
  v3 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_confidenceLevel;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for MOMapLocation.isWork : MOMapLocation@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 384))();
  *a2 = result & 1;
  return result;
}

uint64_t MOMapLocation.isWork.getter()
{
  v1 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_isWork;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOMapLocation.isWork.setter(char a1)
{
  v3 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_isWork;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for MOMapLocation.userPlaceType : MOMapLocation@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 408))();
  *a2 = result;
  return result;
}

uint64_t MOMapLocation.userPlaceType.getter()
{
  v1 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_userPlaceType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOMapLocation.userPlaceType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_userPlaceType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for MOMapLocation.enclosingArea : MOMapLocation@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 432))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for MOMapLocation.enclosingArea : MOMapLocation(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 440);

  return v4(v2, v3);
}

uint64_t MOMapLocation.enclosingArea.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_enclosingArea);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t MOMapLocation.enclosingArea.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_enclosingArea);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

double MOMapLocation.horizontalUncertainty.getter()
{
  v1 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_horizontalUncertainty;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOMapLocation.horizontalUncertainty.setter(double a1)
{
  v3 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_horizontalUncertainty;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for MOMapLocation.isScaledDownPOI : MOMapLocation@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 480))();
  *a2 = result & 1;
  return result;
}

uint64_t MOMapLocation.isScaledDownPOI.getter()
{
  v1 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_isScaledDownPOI;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOMapLocation.isScaledDownPOI.setter(char a1)
{
  v3 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_isScaledDownPOI;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for MOMapLocation.poiCategory : MOMapLocation@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 504))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for MOMapLocation.poiCategory : MOMapLocation(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 512);

  return v4(v2, v3);
}

uint64_t MOMapLocation.title.getter(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t MOMapLocation.title.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t MOMapLocation.__allocating_init(latitude:longitude:title:clusterCount:geoMapItem:confidenceLevel:isWork:enclosingArea:horizontalUncertainty:isScaledDownPOI:poiCateogory:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, char a13, uint64_t a14, uint64_t a15)
{
  v21 = *(v15 + 48);
  v22 = *(v15 + 52);
  v23 = swift_allocObject();
  v24 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_startDate;
  v25 = type metadata accessor for Date();
  v26 = *(*(v25 - 8) + 56);
  v26(v23 + v24, 1, 1, v25);
  v26(v23 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_endDate, 1, 1, v25);
  v27 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_mapItem;
  *(v23 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_mapItem) = 0;
  v28 = v23 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_clusterCount;
  *v28 = 0;
  *(v28 + 8) = 1;
  v29 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_confidenceLevel;
  *(v23 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_confidenceLevel) = 0;
  v30 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_isWork;
  *(v23 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_isWork) = 0;
  *(v23 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_userPlaceType) = -1;
  v31 = (v23 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_enclosingArea);
  *v31 = 0;
  v31[1] = 0;
  v32 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_horizontalUncertainty;
  *(v23 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_horizontalUncertainty) = 0;
  v33 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_isScaledDownPOI;
  *(v23 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_isScaledDownPOI) = 0;
  v34 = (v23 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_poiCategory);
  *v34 = 0;
  v34[1] = 0xE000000000000000;
  *(v23 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_latitude) = a9;
  *(v23 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_longitude) = a10;
  v35 = (v23 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_title);
  *v35 = a1;
  v35[1] = a2;
  swift_beginAccess();
  *v28 = a3;
  *(v28 + 8) = a4 & 1;
  swift_beginAccess();
  *(v23 + v27) = a5;
  swift_beginAccess();
  *(v23 + v29) = a11;
  swift_beginAccess();
  *(v23 + v30) = a6;
  swift_beginAccess();
  *v31 = a7;
  v31[1] = a8;
  swift_beginAccess();
  *(v23 + v32) = a12;
  swift_beginAccess();
  *(v23 + v33) = a13;
  swift_beginAccess();
  *v34 = a14;
  v34[1] = a15;
  return v23;
}

uint64_t MOMapLocation.init(latitude:longitude:title:clusterCount:geoMapItem:confidenceLevel:isWork:enclosingArea:horizontalUncertainty:isScaledDownPOI:poiCateogory:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, char a13, uint64_t a14, uint64_t a15)
{
  v21 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_startDate;
  v22 = type metadata accessor for Date();
  v23 = *(*(v22 - 8) + 56);
  v23(v15 + v21, 1, 1, v22);
  v23(v15 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_endDate, 1, 1, v22);
  v24 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_mapItem;
  *(v15 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_mapItem) = 0;
  v25 = v15 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_clusterCount;
  *v25 = 0;
  *(v25 + 8) = 1;
  v26 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_confidenceLevel;
  *(v15 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_confidenceLevel) = 0;
  v27 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_isWork;
  *(v15 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_isWork) = 0;
  *(v15 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_userPlaceType) = -1;
  v28 = (v15 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_enclosingArea);
  *v28 = 0;
  v28[1] = 0;
  v29 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_horizontalUncertainty;
  *(v15 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_horizontalUncertainty) = 0;
  v30 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_isScaledDownPOI;
  *(v15 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_isScaledDownPOI) = 0;
  v31 = (v15 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_poiCategory);
  *v31 = 0;
  v31[1] = 0xE000000000000000;
  *(v15 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_latitude) = a9;
  *(v15 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_longitude) = a10;
  v32 = (v15 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_title);
  *v32 = a1;
  v32[1] = a2;
  swift_beginAccess();
  *v25 = a3;
  *(v25 + 8) = a4 & 1;
  swift_beginAccess();
  *(v15 + v24) = a5;
  swift_beginAccess();
  *(v15 + v26) = a11;
  swift_beginAccess();
  *(v15 + v27) = a6;
  swift_beginAccess();
  *v28 = a7;
  v28[1] = a8;
  swift_beginAccess();
  *(v15 + v29) = a12;
  swift_beginAccess();
  *(v15 + v30) = a13;
  swift_beginAccess();
  v33 = v31[1];
  *v31 = a14;
  v31[1] = a15;

  return v15;
}

uint64_t MOMapLocation.shiftedIfNecessary.getter()
{
  v1 = v0;
  v2 = (*(*v0 + 240))();
  v3 = [objc_allocWithZone(CLLocation) initWithLatitude:v2 longitude:(*(*v0 + 264))()];
  v4 = *(*v0 + 288);
  if (v4())
  {

    swift_unknownObjectRelease();
LABEL_8:

    return v1;
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MOLocationShifter.shared;
  if (((*(*static MOLocationShifter.shared + 96))(v3) & 1) == 0)
  {

    goto LABEL_8;
  }

  v6 = (*(*v5 + 104))(v3);
  [v6 coordinate];
  v8 = v7;
  v9 = [v6 coordinate];
  v11 = v10;
  v12 = (*(*v1 + 336))(v9);
  v40 = v13;
  v41 = v12;
  v39 = (*(*v1 + 312))();
  v38 = v14;
  v42 = v4();
  v15 = (*(*v1 + 360))();
  v37 = (*(*v1 + 384))();
  v16 = (*(*v1 + 432))();
  v35 = v17;
  v36 = v16;
  v18 = (*(*v1 + 456))();
  v19 = type metadata accessor for MOMapLocation();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v1 = swift_allocObject();
  v22 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_startDate;
  v23 = type metadata accessor for Date();
  v24 = *(*(v23 - 8) + 56);
  v24(v1 + v22, 1, 1, v23);
  v24(v1 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_endDate, 1, 1, v23);

  v25 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_mapItem;
  *(v1 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_mapItem) = 0;
  v26 = v1 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_clusterCount;
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_confidenceLevel;
  *(v1 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_confidenceLevel) = 0;
  v28 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_isWork;
  *(v1 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_isWork) = 0;
  *(v1 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_userPlaceType) = -1;
  v29 = (v1 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_enclosingArea);
  *v29 = 0;
  v29[1] = 0;
  v30 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_horizontalUncertainty;
  *(v1 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_horizontalUncertainty) = 0;
  v31 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_isScaledDownPOI;
  *(v1 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_isScaledDownPOI) = 0;
  v32 = (v1 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_poiCategory);
  *v32 = 0;
  v32[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_latitude) = v8;
  *(v1 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_longitude) = v11;
  v33 = (v1 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_title);
  *v33 = v41;
  v33[1] = v40;
  swift_beginAccess();
  *v26 = v39;
  *(v26 + 8) = v38 & 1;
  swift_beginAccess();
  *(v1 + v25) = v42;
  swift_beginAccess();
  *(v1 + v27) = v15;
  swift_beginAccess();
  *(v1 + v28) = v37 & 1;
  swift_beginAccess();
  *v29 = v36;
  v29[1] = v35;
  swift_beginAccess();
  *(v1 + v30) = v18;
  swift_beginAccess();
  *(v1 + v31) = 0;
  swift_beginAccess();
  *v32 = 0;
  v32[1] = 0xE000000000000000;
  return v1;
}

uint64_t MOMapLocation.deinit()
{
  outlined destroy of Date?(v0 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_startDate, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of Date?(v0 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_endDate, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_mapItem);
  swift_unknownObjectRelease();
  v2 = *(v0 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_title + 8);

  v3 = *(v0 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_enclosingArea + 8);

  v4 = *(v0 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_poiCategory + 8);

  return v0;
}

uint64_t MOMapLocation.__deallocating_deinit()
{
  outlined destroy of Date?(v0 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_startDate, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of Date?(v0 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_endDate, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_mapItem);
  swift_unknownObjectRelease();
  v2 = *(v0 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_title + 8);

  v3 = *(v0 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_enclosingArea + 8);

  v4 = *(v0 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_poiCategory + 8);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t type metadata accessor for MOMapLocation()
{
  result = type metadata singleton initialization cache for MOMapLocation;
  if (!type metadata singleton initialization cache for MOMapLocation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id variable initialization expression of MOLocationShifter.shifter()
{
  v0 = objc_allocWithZone(GEOLocationShifter);

  return [v0 init];
}

uint64_t variable initialization expression of MOLocationShifter.processingQueue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64);
  __chkstk_darwin();
  v6 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  __chkstk_darwin();
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v8[1] = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

id variable initialization expression of MOPOIAnnotationView.basePOICircleView()
{
  v0 = objc_allocWithZone(UIImageView);

  return [v0 init];
}

id variable initialization expression of MOPOIAnnotationView.clusterCountLabel()
{
  v0 = objc_allocWithZone(UILabel);

  return [v0 init];
}

id variable initialization expression of MOPOIAnnotationView.borderBackgroundView()
{
  v0 = objc_allocWithZone(UIView);

  return [v0 init];
}

void type metadata completion function for MOMapLocation()
{
  type metadata accessor for Date?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Date?()
{
  if (!lazy cache variable for type metadata for Date?)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Date?);
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance GEOPOICategory(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance GEOPOICategory(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance GEOPOICategory@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GEOPOICategory(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GEOPOICategory@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance GEOPOICategory@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance GEOPOICategory(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type GEOPOICategory and conformance GEOPOICategory, type metadata accessor for GEOPOICategory);
  v3 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type GEOPOICategory and conformance GEOPOICategory, type metadata accessor for GEOPOICategory);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance GEOPOICategory()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GEOPOICategory()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GEOPOICategory()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t outlined destroy of Date?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo23GEOLocationCoordinate2Dawet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _sSo23GEOLocationCoordinate2Dawst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for GEOLocationCoordinate2D(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Array.subscript.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
  if (Range.contains(_:)())
  {
    Array.subscript.getter();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  return (*(*(a1 - 8) + 56))(a2, v4, 1, a1);
}

uint64_t *MOLocationShifter.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static MOLocationShifter.shared;
}

uint64_t CLLocation.shiftedIfNecessary.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return (*(*static MOLocationShifter.shared + 104))();
}

uint64_t one-time initialization function for shared()
{
  type metadata accessor for MOLocationShifter();
  v0 = swift_allocObject();
  result = MOLocationShifter.init()();
  static MOLocationShifter.shared = v0;
  return result;
}

uint64_t MOLocationShifter.__allocating_init()()
{
  v0 = swift_allocObject();
  MOLocationShifter.init()();
  return v0;
}

uint64_t static MOLocationShifter.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

Swift::Bool __swiftcall MOLocationShifter.shiftNeeded(_:)(CLLocation a1)
{
  isa = a1.super.isa;
  [(objc_class *)a1.super.isa coordinate];
  v3 = v2;
  [(objc_class *)isa coordinate];
  return [objc_opt_self() isLocationShiftRequiredForCoordinate:{v3, v4}];
}

CLLocation __swiftcall MOLocationShifter.shiftedIfNecessary(_:)(CLLocation a1)
{
  isa = a1.super.isa;
  v1 = type metadata accessor for DispatchTime();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = (__chkstk_darwin)();
  v6 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v76 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  [(objc_class *)isa coordinate];
  v15 = v14;
  [(objc_class *)isa coordinate];
  v17 = v16;
  if ([objc_opt_self() isLocationShiftRequiredForCoordinate:{v15, v16}])
  {
    v81 = v8;
    v82 = v2;
    v83 = v1;
    v18 = swift_allocObject();
    *(v18 + 16) = v15;
    *(v18 + 24) = v17;
    v19 = swift_allocObject();
    [(objc_class *)isa horizontalAccuracy];
    *(v19 + 16) = v20;
    v21 = *(v86 + 16);
    [(objc_class *)isa horizontalAccuracy];
    v84 = v19 + 16;
    v85 = v18 + 16;
    if ([v21 shiftCoordinate:v18 + 16 accuracy:v19 + 16 shiftedCoordinate:v15 shiftedAccuracy:{v17, v22}])
    {
      v23 = *(v18 + 16);
      v24 = *(v18 + 24);
      [(objc_class *)isa altitude];
      v26 = v25;
      v27 = *(v19 + 16);
      [(objc_class *)isa verticalAccuracy];
      v29 = v28;
      v30 = [(objc_class *)isa timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v31 = objc_allocWithZone(CLLocation);
      v32 = Date._bridgeToObjectiveC()().super.isa;
      v33 = [v31 initWithCoordinate:v32 altitude:v23 horizontalAccuracy:v24 verticalAccuracy:v26 timestamp:{v27, v29}];

      (*(v10 + 8))(v13, v9);
    }

    else
    {
      v78 = v13;
      v79 = v10;
      v80 = v9;
      v37 = dispatch_group_create();
      dispatch_group_enter(v37);
      [(objc_class *)isa horizontalAccuracy];
      v39 = v38;
      v40 = swift_allocObject();
      v40[2] = v18;
      v40[3] = v19;
      v40[4] = v37;
      v92 = partial apply for closure #1 in MOLocationShifter.shiftedIfNecessary(_:);
      v93 = v40;
      aBlock = _NSConcreteStackBlock;
      v89 = 1107296256;
      v41 = v18;
      v90 = thunk for @escaping @callee_guaranteed (@unowned GEOLocationCoordinate2D, @unowned Double) -> ();
      v91 = &block_descriptor;
      v42 = _Block_copy(&aBlock);
      v76 = v41;

      v77 = v19;

      v43 = v37;

      v92 = closure #2 in MOLocationShifter.shiftedIfNecessary(_:);
      v93 = 0;
      aBlock = _NSConcreteStackBlock;
      v89 = 1107296256;
      v90 = thunk for @escaping @callee_guaranteed () -> ();
      v91 = &block_descriptor_9;
      v44 = _Block_copy(&aBlock);
      v45 = swift_allocObject();
      *(v45 + 16) = v43;
      v92 = partial apply for closure #3 in MOLocationShifter.shiftedIfNecessary(_:);
      v93 = v45;
      aBlock = _NSConcreteStackBlock;
      v89 = 1107296256;
      v90 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
      v91 = &block_descriptor_15;
      v46 = _Block_copy(&aBlock);
      v47 = v43;

      [v21 shiftCoordinate:v42 accuracy:v44 withCompletionHandler:v46 mustGoToNetworkCallback:*(v86 + 24) errorHandler:v15 callbackQueue:{v17, v39}];
      _Block_release(v46);
      _Block_release(v44);
      _Block_release(v42);
      static DispatchTime.now()();
      v48 = v81;
      + infix(_:_:)();
      v49 = v83;
      v50 = *(v82 + 8);
      v50(v6, v83);
      OS_dispatch_group.wait(timeout:)();
      v50(v48, v49);
      if ((static DispatchTimeoutResult.== infix(_:_:)() & 1) == 0)
      {
        if (one-time initialization token for assets != -1)
        {
          swift_once();
        }

        v51 = type metadata accessor for Logger();
        __swift_project_value_buffer(v51, static MOAngelLogger.assets);
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&dword_0, v52, v53, "[LocationShifter] Timed out", v54, 2u);
        }
      }

      if (one-time initialization token for assets != -1)
      {
        swift_once();
      }

      v55 = type metadata accessor for Logger();
      __swift_project_value_buffer(v55, static MOAngelLogger.assets);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();
      v58 = os_log_type_enabled(v56, v57);
      v59 = v80;
      v60 = v79;
      v61 = v78;
      v62 = v77;
      v63 = v76;
      if (v58)
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_0, v56, v57, "[LocationShifter] Returning shifted location", v64, 2u);
      }

      swift_beginAccess();
      v65 = *(v63 + 16);
      v66 = *(v63 + 24);
      [(objc_class *)isa altitude];
      v68 = v67;
      swift_beginAccess();
      v69 = *(v62 + 16);
      [(objc_class *)isa verticalAccuracy];
      v71 = v70;
      v72 = [(objc_class *)isa timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v73 = objc_allocWithZone(CLLocation);
      v74 = Date._bridgeToObjectiveC()().super.isa;
      v33 = [v73 initWithCoordinate:v74 altitude:v65 horizontalAccuracy:v66 verticalAccuracy:v68 timestamp:{v69, v71}];

      (*(v60 + 8))(v61, v59);
    }

    v35 = v33;
  }

  else
  {
    v34 = isa;

    v35 = v34;
  }

  result._internal = v36;
  result.super.isa = v35;
  return result;
}

void closure #1 in MOLocationShifter.shiftedIfNecessary(_:)(uint64_t a1, uint64_t a2, NSObject *a3, double a4, double a5, double a6)
{
  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static MOAngelLogger.assets);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "[LocationShifter] Shifted location async", v15, 2u);
  }

  swift_beginAccess();
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  swift_beginAccess();
  *(a2 + 16) = a6;
  dispatch_group_leave(a3);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned GEOLocationCoordinate2D, @unowned Double) -> ()(uint64_t a1, double a2, double a3, double a4)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);

  v7(v9, a2, a3, a4);
}

void closure #2 in MOLocationShifter.shiftedIfNecessary(_:)()
{
  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static MOAngelLogger.assets);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_0, oslog, v1, "[LocationShifter] Needs to download shifting function", v2, 2u);
  }
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void closure #3 in MOLocationShifter.shiftedIfNecessary(_:)(uint64_t a1, dispatch_group_t group)
{
  if (a1)
  {
    swift_errorRetain();
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static MOAngelLogger.assets);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = Error.localizedDescription.getter();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v11);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_0, v4, v5, "[LocationShifter] error: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
    }

    else
    {
    }
  }

  dispatch_group_leave(group);
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

__C::CLLocationCoordinate2D __swiftcall MOLocationShifter.shiftedIfNecessary(_:)(__C::CLLocationCoordinate2D a1)
{
  v2 = [objc_allocWithZone(CLLocation) initWithLatitude:a1.latitude longitude:a1.longitude];
  v3 = (*(*v1 + 104))();
  [v3 coordinate];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.longitude = v9;
  result.latitude = v8;
  return result;
}

uint64_t MOLocationShifter.__deallocating_deinit()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t MOLocationShifter.init()()
{
  v8[0] = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v8[0] - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64);
  __chkstk_darwin();
  v6 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  __chkstk_darwin();
  *(v0 + 16) = [objc_allocWithZone(GEOLocationShifter) init];
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v8[1] = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v8[0]);
  *(v0 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return v0;
}

uint64_t sub_5D4C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_5DB8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t CLLocationCoordinate2D.shiftedIfNecessary.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return (*(*static MOLocationShifter.shared + 112))();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

Swift::Int MOSuggestionAssetTransferDelivery.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MOSuggestionAssetTransferDelivery()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MOSuggestionAssetTransferDelivery()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t MOSuggestionAssetTileSize.description.getter(unsigned __int8 a1)
{
  if (a1 <= 5u)
  {
    if (a1 > 3u)
    {
      if (a1 == 4)
      {
        return 0xD000000000000011;
      }

      if (a1 == 5)
      {
        return 0x454752414CLL;
      }
    }

    else
    {
      if (a1 == 2)
      {
        return 0x4C4C414D53;
      }

      if (a1 == 3)
      {
        return 1414744396;
      }
    }

    return 0x524546534E415254;
  }

  if (a1 <= 7u)
  {
    if (a1 == 6)
    {
      return 0x414C5F4152545845;
    }

    if (a1 == 7)
    {
      return 0xD000000000000015;
    }

    return 0x524546534E415254;
  }

  if (a1 == 8)
  {
    return 0x455243534C4C5546;
  }

  if (a1 != 9)
  {
    if (a1 == 10)
    {
      return 0xD000000000000016;
    }

    return 0x524546534E415254;
  }

  return 0xD000000000000016;
}

void MOSuggestionAssetTileSize.hash(into:)(uint64_t a1, char a2)
{
  if ((a2 - 2) >= 9u)
  {
    Hasher._combine(_:)(7uLL);
    v2 = a2 & 1;
  }

  else
  {
    v2 = qword_1A9C8[(a2 - 2)];
  }

  Hasher._combine(_:)(v2);
}

Swift::Int MOSuggestionAssetTileSize.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MOSuggestionAssetTileSize.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MOSuggestionAssetTileSize()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MOSuggestionAssetTileSize.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MOSuggestionAssetTileSize()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MOSuggestionAssetTileSize.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t one-time initialization function for tileSizesByCount(uint64_t a1)
{
  return one-time initialization function for tileSizesByCount(a1, &outlined read-only object #0 of one-time initialization function for tileSizesByCount, &unk_24B98, 13, &static MOSuggestionLayoutEngine.FullWidth.tileSizesByCount);
}

{
  return one-time initialization function for tileSizesByCount(a1, &outlined read-only object #0 of one-time initialization function for tileSizesByCount, &unk_24D28, 4, &static MOSuggestionLayoutEngine.HalfWidth.tileSizesByCount);
}

void *MOSuggestionLayoutEngine.FullWidth.tileSizesByCount.unsafeMutableAddressor()
{
  if (one-time initialization token for tileSizesByCount != -1)
  {
    swift_once();
  }

  return &static MOSuggestionLayoutEngine.FullWidth.tileSizesByCount;
}

uint64_t one-time initialization function for tileSizesByCount(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_Say20MomentsUIServiceCore25MOSuggestionAssetTileSizeOGTt0g5Tf4g_n(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_Say20MomentsUIServiceCore25MOSuggestionAssetTileSizeOGtMd, &_sSi_Say20MomentsUIServiceCore25MOSuggestionAssetTileSizeOGtMR);
  result = swift_arrayDestroy();
  *a5 = v6;
  return result;
}

void *MOSuggestionLayoutEngine.HalfWidth.tileSizesByCount.unsafeMutableAddressor()
{
  if (one-time initialization token for tileSizesByCount != -1)
  {
    swift_once();
  }

  return &static MOSuggestionLayoutEngine.HalfWidth.tileSizesByCount;
}

uint64_t one-time initialization function for tileSizesByCount()
{
  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_Say20MomentsUIServiceCore25MOSuggestionAssetTileSizeOGTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for tileSizesByCount);
  result = outlined destroy of (Int, [MOSuggestionAssetTileSize])(&unk_24DB0);
  static MOSuggestionLayoutEngine.FullWidthCondensed.tileSizesByCount = v0;
  return result;
}

uint64_t *MOSuggestionLayoutEngine.FullWidthCondensed.tileSizesByCount.unsafeMutableAddressor()
{
  if (one-time initialization token for tileSizesByCount != -1)
  {
    swift_once();
  }

  return &static MOSuggestionLayoutEngine.FullWidthCondensed.tileSizesByCount;
}

uint64_t static MOSuggestionLayoutEngine.FullWidth.tileSizesByCount.getter(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

double static MOSuggestionLayoutEngine.viewportFromTileSize(_:)(char a1)
{
  if ((a1 - 2) > 8u)
  {
    return 300.0;
  }

  v1 = (a1 - 2);
  result = dbl_1AA10[v1];
  v3 = qword_1AA58[v1];
  return result;
}

double static MOSuggestionLayoutEngine.heightToWidthRatio(_:)(char a1)
{
  result = 1.0;
  if ((a1 - 2) <= 8u)
  {
    return *&qword_1AA58[(a1 - 2)] / dbl_1AA10[(a1 - 2)];
  }

  return result;
}

double static MOSuggestionLayoutEngine.widthToHeightRatio(_:)(char a1)
{
  v1 = 1.0;
  if ((a1 - 2) <= 8u)
  {
    v1 = *&qword_1AA58[(a1 - 2)] / dbl_1AA10[(a1 - 2)];
  }

  return 1.0 / v1;
}

BOOL specialized static MOSuggestionAssetTileSize.__derived_enum_equals(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 5u)
  {
    if (a1 > 3u)
    {
      if (a1 == 4)
      {
        return a2 == 4;
      }

      if (a1 == 5)
      {
        return a2 == 5;
      }
    }

    else
    {
      if (a1 == 2)
      {
        return a2 == 2;
      }

      if (a1 == 3)
      {
        return a2 == 3;
      }
    }
  }

  else if (a1 <= 7u)
  {
    if (a1 == 6)
    {
      return a2 == 6;
    }

    if (a1 == 7)
    {
      return a2 == 7;
    }
  }

  else
  {
    switch(a1)
    {
      case 8u:
        return a2 == 8;
      case 9u:
        return a2 == 9;
      case 0xAu:
        return a2 == 10;
    }
  }

  if (a2 - 2 < 9)
  {
    return 0;
  }

  return ((a2 ^ a1) & 1) == 0;
}

unint64_t lazy protocol witness table accessor for type MOSuggestionAssetTransferDelivery and conformance MOSuggestionAssetTransferDelivery()
{
  result = lazy protocol witness table cache variable for type MOSuggestionAssetTransferDelivery and conformance MOSuggestionAssetTransferDelivery;
  if (!lazy protocol witness table cache variable for type MOSuggestionAssetTransferDelivery and conformance MOSuggestionAssetTransferDelivery)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOSuggestionAssetTransferDelivery and conformance MOSuggestionAssetTransferDelivery);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MOSuggestionAssetTileSize and conformance MOSuggestionAssetTileSize()
{
  result = lazy protocol witness table cache variable for type MOSuggestionAssetTileSize and conformance MOSuggestionAssetTileSize;
  if (!lazy protocol witness table cache variable for type MOSuggestionAssetTileSize and conformance MOSuggestionAssetTileSize)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOSuggestionAssetTileSize and conformance MOSuggestionAssetTileSize);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MOSuggestionAssetTransferDelivery(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MOSuggestionAssetTransferDelivery(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MOSuggestionAssetTileSize(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_20;
  }

  v2 = a2 + 10;
  if (a2 + 10 >= 0xFFFF00)
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
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 10;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 10;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 0xA)
  {
    return v8 - 9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MOSuggestionAssetTileSize(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 10;
  if (a3 + 10 >= 0xFFFF00)
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

  if (a3 < 0xF6)
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for MOSuggestionAssetTileSize(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for MOSuggestionAssetTileSize(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t outlined destroy of (Int, [MOSuggestionAssetTileSize])(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_Say20MomentsUIServiceCore25MOSuggestionAssetTileSizeOGtMd, &_sSi_Say20MomentsUIServiceCore25MOSuggestionAssetTileSizeOGtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double MOAngelDefaultsManager.momentsUILowConfidenceHighCertaintyThreshold.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of Date?(&v6, &_sypSgMd, "&\b");
    return 150.0;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return *&v4;
  }

  return 150.0;
}

void one-time initialization function for defaults()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  static MOAngelDefaultsManager.defaults = v2;
}

void one-time initialization function for siri()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  static MOAngelDefaultsManager.siri = v2;
}

uint64_t MOAngelDefaultsManager.momentsUIShouldUpLevelPOI.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of Date?(&v6, &_sypSgMd, "&\b");
    return 0;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0;
}

uint64_t MOAngelDefaultsManager.momentsUIShouldSkipDendrogram.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of Date?(&v6, &_sypSgMd, "&\b");
    return 0;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0;
}

uint64_t MOAngelDefaultsManager.momentsUIForceEmbeddedPOI.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of Date?(&v6, &_sypSgMd, "&\b");
    return 0;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0;
}

uint64_t MOAngelDefaultsManager.momentsUITripDropUninterestingPOI.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of Date?(&v6, &_sypSgMd, "&\b");
    return 0;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0;
}

double MOAngelDefaultsManager.momentsUIDendrogramPOIPenalty.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of Date?(&v6, &_sypSgMd, "&\b");
    return 0.5;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return *&v4;
  }

  return 0.5;
}

uint64_t MOAngelDefaultsManager.momentsUIGridBuckets.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_14:
    outlined destroy of Date?(&v7, &_sypSgMd, "&\b");
    return 5;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

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

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_14;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return 5;
  }

  v4 = round(*&v5);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v4 > -9.22337204e18)
  {
    if (v4 < 9.22337204e18)
    {
      return v4;
    }

    goto LABEL_18;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t MOAngelDefaultsManager.momentsUIClusterMaxCount.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_14:
    outlined destroy of Date?(&v7, &_sypSgMd, "&\b");
    return 30;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

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

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_14;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return 30;
  }

  v4 = round(*&v5);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v4 > -9.22337204e18)
  {
    if (v4 < 9.22337204e18)
    {
      return v4;
    }

    goto LABEL_18;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

double MOAngelDefaultsManager.momentsUITightPOIScale.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of Date?(&v6, &_sypSgMd, "&\b");
    return 0.5;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return *&v4;
  }

  return 0.5;
}

uint64_t MOAngelDefaultsManager.lastSuggestionNotificationDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v2 = static MOAngelDefaultsManager.defaults;
  if (static MOAngelDefaultsManager.defaults)
  {
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 objectForKey:v3];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v11 = v9;
    v12 = v10;
    if (*(&v10 + 1))
    {
      v5 = type metadata accessor for Date();
      v6 = swift_dynamicCast();
      return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  outlined destroy of Date?(&v11, &_sypSgMd, "&\b");
  v8 = type metadata accessor for Date();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

void *MOAngelDefaultsManager.notificationSchedule.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_13:
    outlined destroy of Date?(&v7, &_sypSgMd, "&\b");
    return 0;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

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

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayyXlGMd, &_sSayyXlGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = specialized _arrayConditionalCast<A, B>(_:)(v5);

  result = v3;
  if (v3 && !v3[2])
  {

    return 0;
  }

  return result;
}

void *specialized _arrayConditionalCast<A, B>(_:)(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
  v4 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!v2)
    {
      return v4;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_22;
        }

        v6 = *(a1 + 8 * i + 32);
        swift_unknownObjectRetain();
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v3 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }
      }

      if ((swift_dynamicCast() & 1) == 0)
      {

        return 0;
      }

      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];
      if (v9 >= v8 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      _swiftEmptyArrayStorage[v9 + 4] = v11;
      if (v7 == v2)
      {
        return v4;
      }
    }
  }

  v2 = _CocoaArrayWrapper.endIndex.getter();
  if (v2)
  {
    goto LABEL_7;
  }

  return v4;
}

{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
  v4 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!v2)
    {
      return v4;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_22;
        }

        v6 = *(a1 + 8 * i + 32);
        swift_unknownObjectRetain();
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v3 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }
      }

      if ((swift_dynamicCast() & 1) == 0)
      {

        return 0;
      }

      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];
      if (v9 >= v8 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      v10 = &_swiftEmptyArrayStorage[2 * v9];
      v10[4] = v12;
      v10[5] = v13;
      if (v7 == v2)
      {
        return v4;
      }
    }
  }

  v2 = _CocoaArrayWrapper.endIndex.getter();
  if (v2)
  {
    goto LABEL_7;
  }

  return v4;
}

uint64_t MOAngelDefaultsManager.notificationPredictionOptimalDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v2 = static MOAngelDefaultsManager.defaults;
  if (static MOAngelDefaultsManager.defaults)
  {
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 objectForKey:v3];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v11 = v9;
    v12 = v10;
    if (*(&v10 + 1))
    {
      v5 = type metadata accessor for Date();
      v6 = swift_dynamicCast();
      return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  outlined destroy of Date?(&v11, &_sypSgMd, "&\b");
  v8 = type metadata accessor for Date();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

uint64_t MOAngelDefaultsManager.notificationPredictionOptimalEndDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v2 = static MOAngelDefaultsManager.defaults;
  if (static MOAngelDefaultsManager.defaults)
  {
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 objectForKey:v3];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v11 = v9;
    v12 = v10;
    if (*(&v10 + 1))
    {
      v5 = type metadata accessor for Date();
      v6 = swift_dynamicCast();
      return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  outlined destroy of Date?(&v11, &_sypSgMd, "&\b");
  v8 = type metadata accessor for Date();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

uint64_t MOAngelDefaultsManager.notificationRealTimeCheckTimerDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v2 = static MOAngelDefaultsManager.defaults;
  if (static MOAngelDefaultsManager.defaults)
  {
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 objectForKey:v3];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v11 = v9;
    v12 = v10;
    if (*(&v10 + 1))
    {
      v5 = type metadata accessor for Date();
      v6 = swift_dynamicCast();
      return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  outlined destroy of Date?(&v11, &_sypSgMd, "&\b");
  v8 = type metadata accessor for Date();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

void *MOAngelDefaultsManager.eligiblePOICategories.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_13:
    outlined destroy of Date?(&v7, &_sypSgMd, "&\b");
    return 0;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

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

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayyXlGMd, &_sSayyXlGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = specialized _arrayConditionalCast<A, B>(_:)(v5);

  result = v3;
  if (v3 && !v3[2])
  {

    return 0;
  }

  return result;
}

unint64_t MOAngelDefaultsManager.authorizedAppsArray.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_11:
    outlined destroy of Date?(&v7, &_sypSgMd, "&\b");
    return 0;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

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

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVyXlGMd, &_sSDys11AnyHashableVyXlGMR);
  if (swift_dynamicCast())
  {
    v3 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v5);

    return v3;
  }

  return 0;
}

unint64_t specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSdGMd, &_ss18_DictionaryStorageCySSSdGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5)) | (v12 << 6);
        outlined init with copy of AnyHashable(*(a1 + 48) + 40 * v13, v28);
        *(&v29 + 1) = *(*(a1 + 56) + 8 * v13);
        v26[0] = v28[0];
        v26[1] = v28[1];
        v27 = v29;
        outlined init with copy of AnyHashable(v26, &v24);
        swift_unknownObjectRetain();
        if (!swift_dynamicCast())
        {
          outlined destroy of Date?(v26, &_ss11AnyHashableV3key_yXl5valuetMd, &_ss11AnyHashableV3key_yXl5valuetMR);

          goto LABEL_23;
        }

        v14 = v22;
        v15 = *(&v27 + 1);
        swift_unknownObjectRetain();
        outlined destroy of Date?(v26, &_ss11AnyHashableV3key_yXl5valuetMd, &_ss11AnyHashableV3key_yXl5valuetMR);
        v22 = v15;
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        v16 = v24;
        result = specialized __RawDictionaryStorage.find<A>(_:)(v14, v23);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v14;
          v9[1] = v23;
          v11 = result;

          *(v2[7] + 8 * v11) = v16;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v14;
          v18[1] = v23;
          *(v2[7] + 8 * result) = v16;
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_27;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }

      v24 = 0;
      v25 = 1;
LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t MOAngelDefaultsManager.notificationReporterIdentification.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    return 0;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 stringForKey:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

Swift::Void __swiftcall MOAngelDefaultsManager.setAuthorizedAppsArray(_:)(Swift::OpaquePointer a1)
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v1 = static MOAngelDefaultsManager.defaults;
  if (static MOAngelDefaultsManager.defaults)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v3 = String._bridgeToObjectiveC()();
    [v1 setValue:isa forKey:v3];
  }
}

Swift::String_optional __swiftcall MOAngelDefaultsManager.chosenDefaultAppBundleID()()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (static MOAngelDefaultsManager.defaults && (v1 = String._bridgeToObjectiveC()(), v2 = [v0 stringForKey:v1], v1, v2))
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = v5;
    v7 = v3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result.value._object = v6;
  result.value._countAndFlagsBits = v7;
  return result;
}

void *MOAngelDefaultsManager.siriCanLearnFromAppDenySet.getter()
{
  if (one-time initialization token for siri != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.siri;
  if (!static MOAngelDefaultsManager.siri)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_12:
    outlined destroy of Date?(&v8, &_sypSgMd, "&\b");
    return &_swiftEmptySetSingleton;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

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

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayyXlGMd, &_sSayyXlGMR);
  if (swift_dynamicCast())
  {
    v3 = specialized _arrayConditionalCast<A, B>(_:)(v6);

    if (v3)
    {
      v4 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v3);

      return v4;
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t specialized static MOAngelDefaultsManager.doubleValueFor(_:)()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    outlined destroy of Date?(&v6, &_sypSgMd, "&\b");
    return 0;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      specialized Set._Variant.insert(_:)(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t one-time initialization function for assets(uint64_t a1)
{
  return one-time initialization function for shared(a1, static MOAngelLogger.assets);
}

{
  return one-time initialization function for assets(a1, static MOAngelSignposter.assets, &one-time initialization token for assets, static MOAngelLogger.assets);
}

uint64_t one-time initialization function for pullToRefresh(uint64_t a1)
{
  return one-time initialization function for shared(a1, static MOAngelLogger.pullToRefresh);
}

{
  return one-time initialization function for assets(a1, static MOAngelSignposter.pullToRefresh, &one-time initialization token for pullToRefresh, static MOAngelLogger.pullToRefresh);
}

uint64_t one-time initialization function for processing(uint64_t a1)
{
  return one-time initialization function for shared(a1, static MOAngelLogger.processing);
}

{
  return one-time initialization function for assets(a1, static MOAngelSignposter.processing, &one-time initialization token for processing, static MOAngelLogger.processing);
}

uint64_t one-time initialization function for bundleProcessing()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static MOAngelLogger.bundleProcessing);
  __swift_project_value_buffer(v0, static MOAngelLogger.bundleProcessing);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for assetRendering(uint64_t a1)
{
  return one-time initialization function for shared(a1, static MOAngelLogger.assetRendering);
}

{
  return one-time initialization function for assets(a1, static MOAngelSignposter.assetRendering, &one-time initialization token for assetRendering, static MOAngelLogger.assetRendering);
}

uint64_t one-time initialization function for databaseOps(uint64_t a1)
{
  return one-time initialization function for shared(a1, static MOAngelLogger.databaseOps);
}

{
  return one-time initialization function for assets(a1, static MOAngelSignposter.databaseOps, &one-time initialization token for databaseOps, static MOAngelLogger.databaseOps);
}

uint64_t one-time initialization function for shared(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for assets(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v12, a2);
  __swift_project_value_buffer(v12, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v7, a4);
  (*(v8 + 16))(v11, v13, v7);
  return OSSignposter.init(logger:)();
}

uint64_t MOAngelLogger.assets.unsafeMutableAddressor(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return __swift_project_value_buffer(v4, a3);
}

uint64_t static MOAngelLogger.shared.getter@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t MOPOIAnnotationViewConfiguration.geoMapItem.setter(uint64_t a1)
{
  v3 = *v1;
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

int *one-time initialization function for singlePinCanvasSize()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC20MomentsUIServiceCore25MOSuggestionAssetTileSizeO_0E8Graphics7CGFloatVTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for singlePinCanvasSize);
  static MOPOIAnnotationViewConfiguration.singlePinCanvasSize[0] = result;
  return result;
}

int *one-time initialization function for multiPinCanvasSize()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC20MomentsUIServiceCore25MOSuggestionAssetTileSizeO_0E8Graphics7CGFloatVTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for multiPinCanvasSize);
  static MOPOIAnnotationViewConfiguration.multiPinCanvasSize[0] = result;
  return result;
}

uint64_t MOPOIAnnotationViewConfiguration.pinSize.getter()
{
  v1 = v0;
  if (*(v0 + 16) > 1 || (*(v0 + 24) & 1) != 0)
  {
    if (one-time initialization token for multiPinCanvasSize != -1)
    {
      swift_once();
    }

    v2 = static MOPOIAnnotationViewConfiguration.multiPinCanvasSize[0];
    if (!*(static MOPOIAnnotationViewConfiguration.multiPinCanvasSize[0] + &dword_10))
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (one-time initialization token for singlePinCanvasSize != -1)
    {
      swift_once();
    }

    v2 = static MOPOIAnnotationViewConfiguration.singlePinCanvasSize[0];
    if (!*(static MOPOIAnnotationViewConfiguration.singlePinCanvasSize[0] + &dword_10))
    {
      goto LABEL_15;
    }
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(*(v1 + 8));
  if ((v4 & 1) == 0)
  {
LABEL_15:
    *&result = 0.0;
    return result;
  }

  result = *(*&stru_20.segname[v2 + 16] + 8 * v3);
  if (*(v1 + 26))
  {
    v6 = *&result;
    v7 = COERCE_DOUBLE(specialized static MOAngelDefaultsManager.doubleValueFor(_:)());
    if (v8)
    {
      v7 = 0.5;
    }

    *&result = v7 * v6;
  }

  return result;
}

uint64_t MOPOIAnnotationViewConfiguration.shouldAddPointedArrow.getter()
{
  if (*(v0 + 16) > 1)
  {
    return 0;
  }

  if (*(v0 + 24))
  {
    return 0;
  }

  if (*(v0 + 27))
  {
    return *(v0 + 9);
  }

  return 1;
}

void MOPOIAnnotationViewConfiguration.basePOICircleFrame.getter()
{
  MOPOIAnnotationViewConfiguration.pinSize.getter();
  if ((v1 & 1) == 0)
  {
    if (*(v0 + 8) != 3 && (*(v0 + 16) <= 1 && (*(v0 + 24) & 1) == 0 && ((*(v0 + 27) & 1) == 0 || (*(v0 + 9) & 1) != 0) || (*(v0 + 25) & 1) == 0))
    {
      v2 = *(v0 + 32);
    }

    MOSuggestionLayoutEngine.HalfWidth.init()();
  }
}

double MOPOIAnnotationViewConfiguration.downArrowFrame.getter()
{
  v1 = COERCE_DOUBLE(MOPOIAnnotationViewConfiguration.pinSize.getter());
  result = 0.0;
  if ((v3 & 1) == 0)
  {
    v4 = v1 * 0.3 + *(v0 + 32);
    MOSuggestionLayoutEngine.HalfWidth.init()();
  }

  return result;
}

double MOPOIAnnotationViewConfiguration.downArrowListTileFrame.getter()
{
  v1 = COERCE_DOUBLE(MOPOIAnnotationViewConfiguration.pinSize.getter());
  result = 0.0;
  if ((v3 & 1) == 0)
  {
    v4 = v1 * 0.8 + *(v0 + 32);
    MOSuggestionLayoutEngine.HalfWidth.init()();
  }

  return result;
}

void MOPOIAnnotationViewConfiguration.whiteCircularBorderFrame.getter()
{
  MOPOIAnnotationViewConfiguration.basePOICircleFrame.getter();
  MOPOIAnnotationViewConfiguration.basePOICircleFrame.getter();
  MOPOIAnnotationViewConfiguration.basePOICircleFrame.getter();

  MOSuggestionLayoutEngine.HalfWidth.init()();
}

void MOPOIAnnotationViewConfiguration.whiteCircularBorderCLusterFrame.getter()
{
  MOPOIAnnotationViewConfiguration.basePOICircleFrame.getter();
  MOPOIAnnotationViewConfiguration.basePOICircleFrame.getter();
  MOPOIAnnotationViewConfiguration.basePOICircleFrame.getter();

  MOSuggestionLayoutEngine.HalfWidth.init()();
}

void MOPOIAnnotationViewConfiguration.containerViewFrame.getter()
{
  MOPOIAnnotationViewConfiguration.pinSize.getter();
  if ((v0 & 1) == 0)
  {
    MOSuggestionLayoutEngine.HalfWidth.init()();
  }
}

double MOPOIAnnotationViewConfiguration.clusterFontSize.getter()
{
  v1 = COERCE_DOUBLE(MOPOIAnnotationViewConfiguration.pinSize.getter());
  result = 15.0;
  if ((v3 & 1) == 0)
  {
    if (*(v0 + 8) == 3)
    {
      return v1 * 0.5;
    }

    else
    {
      return v1 / 6.0;
    }
  }

  return result;
}

uint64_t static MOPOIAnnotationViewConfiguration.filterGenericRed(category:)(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  if (v1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v3 == v4)
  {
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t static MOPOIAnnotationViewConfiguration.hasPOIIconImage(_:)(void *a1)
{
  v2 = [a1 _poiCategory];
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {

    v22 = 0;
    goto LABEL_12;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v9 & 1) == 0)
  {
LABEL_7:
    v10 = objc_opt_self();
    v11 = [a1 _styleAttributes];
    v12 = objc_opt_self();
    v13 = [v12 mainScreen];
    [v13 scale];
    v15 = v14;

    v16 = [v10 newFillColorForStyleAttributes:v11 forScale:v15];
    v17 = v10;
    if (v16)
    {
      v18 = [a1 _styleAttributes];
      v19 = [v12 mainScreen];
      [v19 scale];
      v21 = v20;

      v3 = [v10 imageForStyle:v18 size:3 forScale:0 format:v21];
      if (v3)
      {
        v22 = 1;
LABEL_12:

        return v22;
      }
    }
  }

  return 0;
}

uint64_t MOPOIAnnotationViewConfiguration.init(geoMapItem:tileSize:isWork:numLocations:forceCircle:isMediumToHighConfidence:isScaledDownPOI:shouldUseCityIcon:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 9) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 25) = a6;
  *(a9 + 26) = a7;
  *(a9 + 27) = a8;
  *(a9 + 32) = 0x4000000000000000;
  return result;
}

void one-time initialization function for cityStyleAttributes()
{
  v0 = [objc_allocWithZone(GEOPlace) initWithLatitude:4 longitude:0.0 placeType:0.0];
  v1 = [objc_opt_self() styleAttributesForPlace:v0];

  static MOPOIAnnotationView.cityStyleAttributes = v1;
}

uint64_t *MOPOIAnnotationView.cityStyleAttributes.unsafeMutableAddressor()
{
  if (one-time initialization token for cityStyleAttributes != -1)
  {
    swift_once();
  }

  return &static MOPOIAnnotationView.cityStyleAttributes;
}

uint64_t static MOPOIAnnotationView.cityStyleAttributes.getter()
{
  if (one-time initialization token for cityStyleAttributes != -1)
  {
    swift_once();
  }

  v0 = static MOPOIAnnotationView.cityStyleAttributes;
  v1 = static MOPOIAnnotationView.cityStyleAttributes;
  return v0;
}

id MOPOIAnnotationView.__allocating_init(annotation:configuration:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = specialized MOPOIAnnotationView.init(annotation:configuration:)(a1, a2);
  outlined destroy of MOPOIAnnotationViewConfiguration(a2);
  swift_unknownObjectRelease();
  return v6;
}

id MOPOIAnnotationView.init(annotation:configuration:)(uint64_t a1, uint64_t a2)
{
  v3 = specialized MOPOIAnnotationView.init(annotation:configuration:)(a1, a2);
  outlined destroy of MOPOIAnnotationViewConfiguration(a2);
  swift_unknownObjectRelease();
  return v3;
}

void closure #1 in MOPOIAnnotationView.init(annotation:configuration:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = &Strong[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_configuration];
    v22 = *&Strong[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_configuration];
    v23 = *&Strong[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_configuration + 16];
    v24 = *&Strong[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_configuration + 32];
    v2 = Strong;
    MOPOIAnnotationViewConfiguration.pinSize.getter();
    v3 = 0.0;
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
    if ((v7 & 1) == 0)
    {
      MOSuggestionLayoutEngine.HalfWidth.init()();
    }

    [v2 setFrame:{v3, v4, v5, v6}];

    v8 = &v2[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_basePOICircleView];
    v19 = *v1;
    v20 = *(v1 + 1);
    v21 = *(v1 + 4);
    v9 = *&v2[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_basePOICircleView];
    MOPOIAnnotationViewConfiguration.basePOICircleFrame.getter();
    [v9 setFrame:?];

    MOPOIAnnotationView.setupPOIAndColors()();
    if (*(v1 + 2) < 2)
    {
      if (v1[24])
      {
        specialized MOPOIAnnotationView.setupBorderBackground(cluster:)();
        v10 = OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_borderBackgroundView;
      }

      else
      {
        if (v1[27] == 1 && !v1[9])
        {
          goto LABEL_12;
        }

        MOPOIAnnotationView.setupDownArrow()();
        v10 = OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_downArrowView;
      }

      [v2 addSubview:*&v2[v10]];
    }

    else
    {
      specialized MOPOIAnnotationView.setupBorderBackground(cluster:)();
      MOPOIAnnotationView.setupClusterlabel()();
      [v2 addSubview:*&v2[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_borderBackgroundView]];
      v8 = &v2[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_clusterCountLabel];
    }

LABEL_12:
    [v2 addSubview:*v8];
    v11 = OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_borderBackgroundView;
    v12 = [*&v2[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_borderBackgroundView] layer];
    v13 = [objc_opt_self() secondarySystemBackgroundColor];
    v14 = [v13 CGColor];

    [v12 setShadowColor:v14];
    v15 = [*&v2[v11] layer];
    LODWORD(v16) = 0.5;
    [v15 setShadowOpacity:v16];

    v17 = [*&v2[v11] layer];
    [v17 setShadowRadius:5.0];

    v18 = [*&v2[v11] layer];
    [v18 setShadowPathIsBounds:1];
  }
}

void MOPOIAnnotationView.setupDownArrow()()
{
  v1 = (v0 + OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_configuration);
  v2 = *(v0 + OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_configuration + 16) <= 1 && *(v0 + OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_configuration + 24) == 0;
  if (!v2 || ((*(v1 + 27) ^ 1 | *(v1 + 9)) & 1) == 0)
  {
    return;
  }

  v3 = *(v0 + OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_downArrowView);
  if (*(v1 + 8) == 3)
  {
    v17 = *v1;
    v18 = v1[1];
    v19 = *(v1 + 4);
    v4 = COERCE_DOUBLE(MOPOIAnnotationViewConfiguration.pinSize.getter());
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    if ((v9 & 1) == 0)
    {
      v10 = &v19;
      v11 = 0.8;
LABEL_13:
      v14 = v11 * v4 + *v10;
      MOSuggestionLayoutEngine.HalfWidth.init()();
    }
  }

  else
  {
    v12 = v1[1];
    v20 = *v1;
    v21 = v12;
    v22 = *(v1 + 4);
    v4 = COERCE_DOUBLE(MOPOIAnnotationViewConfiguration.pinSize.getter());
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    if ((v13 & 1) == 0)
    {
      v10 = &v22;
      v11 = 0.3;
      goto LABEL_13;
    }
  }

  [v3 setFrame:{v5, v6, v7, v8, v17, v18, v19}];
  v15 = String._bridgeToObjectiveC()();
  v16 = [objc_opt_self() systemImageNamed:v15];

  [v3 setImage:v16];

  [v3 setContentMode:2];
}

void MOPOIAnnotationView.setupClusterlabel()()
{
  v1 = (v0 + OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_configuration);
  if (*(v0 + OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_configuration + 16) >= 2)
  {
    v2 = *(v0 + OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_clusterCountLabel);
    v15 = *v1;
    v16 = v1[1];
    v17 = *(v1 + 4);
    v3 = *(v1 + 2);
    MOPOIAnnotationViewConfiguration.basePOICircleFrame.getter();
    [v2 setFrame:?];
    v11 = v3;
    dispatch thunk of CustomStringConvertible.description.getter();
    v4 = String._bridgeToObjectiveC()();

    [v2 setText:{v4, v11}];

    [v2 setTextAlignment:1];
    v5 = [objc_opt_self() whiteColor];
    [v2 setTextColor:v5];

    v12 = *v1;
    v13 = v1[1];
    v14 = *(v1 + 4);
    v6 = COERCE_DOUBLE(MOPOIAnnotationViewConfiguration.pinSize.getter());
    v7 = 15.0;
    if ((v8 & 1) == 0)
    {
      if (BYTE8(v12) == 3)
      {
        v7 = v6 * 0.5;
      }

      else
      {
        v7 = v6 / 6.0;
      }
    }

    v9 = [objc_opt_self() boldSystemFontOfSize:{v7, v12}];
    [v2 setFont:v9];

    [v2 setAdjustsFontSizeToFitWidth:1];
    [v2 setClipsToBounds:1];
    v10 = [v2 layer];
    [v2 frame];
    [v10 setCornerRadius:CGRectGetWidth(v18) * 0.5];
  }
}

void MOPOIAnnotationView.setupPOIAndColors()()
{
  v1 = &v0[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_configuration];
  v2 = *&v0[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_configuration];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_configuration];
    v4 = [swift_unknownObjectRetain() _poiCategory];
    if (!v4)
    {
      goto LABEL_8;
    }

    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
    {
      swift_unknownObjectRelease();

      goto LABEL_17;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
LABEL_8:
      v12 = objc_opt_self();
      v13 = [v2 _styleAttributes];
      v14 = objc_opt_self();
      v15 = [v14 mainScreen];
      [v15 scale];
      v17 = v16;

      v18 = [v12 newFillColorForStyleAttributes:v13 forScale:v17];
      v19 = v12;
      if (v18)
      {
        v20 = [v2 _styleAttributes];
        v21 = [v14 mainScreen];
        [v21 scale];
        v23 = v22;

        v24 = [v12 imageForStyle:v20 size:3 forScale:0 format:v23];
        if (v24)
        {
          v113 = v0;
          if (one-time initialization token for assets != -1)
          {
            swift_once();
          }

          v25 = type metadata accessor for Logger();
          __swift_project_value_buffer(v25, static MOAngelLogger.assets);
          swift_unknownObjectRetain();
          v26 = Logger.logObject.getter();
          v27 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            v117 = v29;
            *v28 = 134218242;
            v30 = [v2 name];
            if (v30)
            {
              v31 = v2;
              v32 = v30;
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v34 = v33;

              v2 = v31;
            }

            else
            {
              v34 = 0;
            }

            v116 = v34;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
            v105 = Optional<A>.hashValue.getter();

            *(v28 + 4) = v105;
            swift_unknownObjectRelease();
            *(v28 + 12) = 2080;
            v115 = [v2 _poiCategory];
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14GEOPOICategoryaSgMd, &_sSo14GEOPOICategoryaSgMR);
            v106 = Optional.debugDescription.getter();
            v108 = v107;

            v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v108, &v117);

            *(v28 + 14) = v109;
            _os_log_impl(&dword_0, v26, v27, "[POIClustering] [RENDERING] POI mapItemName=%ld, mapItemPOICategory=%s", v28, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v29);
          }

          else
          {

            swift_unknownObjectRelease();
          }

          v110 = v113;
          [*&v113[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_basePOICircleView] setImage:{v24, v113, v115, v116}];
          v111 = [objc_allocWithZone(UIColor) initWithCGColor:v18];

          v112 = *&v110[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_downArrowView];
          v94 = v111;
          [v112 setTintColor:v94];
          [*&v110[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_clusterCountLabel] setBackgroundColor:v94];
          swift_unknownObjectRelease();

LABEL_52:
          return;
        }
      }
    }

    swift_unknownObjectRelease();
  }

LABEL_17:
  if (v1[9] == 1)
  {
    v35 = objc_opt_self();
    v36 = objc_opt_self();
    v37 = [v36 workStyleAttributes];
    v38 = objc_opt_self();
    v39 = [v38 mainScreen];
    [v39 scale];
    v41 = v40;

    v42 = [v35 imageForStyle:v37 size:3 forScale:0 format:v41];
    if (v42)
    {
      v43 = [v36 workStyleAttributes];
      v44 = [v38 mainScreen];
      [v44 scale];
      v46 = v45;

      v47 = [v35 newFillColorForStyleAttributes:v43 forScale:v46];
      v48 = v35;
      if (v47)
      {
        v49 = v0;
        if (one-time initialization token for assets != -1)
        {
          swift_once();
        }

        v50 = type metadata accessor for Logger();
        __swift_project_value_buffer(v50, static MOAngelLogger.assets);
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          *v53 = 0;
          _os_log_impl(&dword_0, v51, v52, "[POIClustering] [RENDERING] Work", v53, 2u);
        }

        [*&v49[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_basePOICircleView] setImage:v42];
        v54 = [objc_allocWithZone(UIColor) initWithCGColor:v47];

        v55 = *&v49[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_downArrowView];
        v114 = v54;
        [v55 setTintColor:v114];
        [*&v49[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_clusterCountLabel] setBackgroundColor:v114];

        goto LABEL_37;
      }
    }
  }

  if ((v1[25] & 1) != 0 || v1[27] != 1)
  {
    goto LABEL_40;
  }

  v56 = objc_opt_self();
  if (one-time initialization token for cityStyleAttributes != -1)
  {
    swift_once();
  }

  v57 = static MOPOIAnnotationView.cityStyleAttributes;
  v58 = objc_opt_self();
  v59 = [v58 mainScreen];
  [v59 scale];
  v61 = v60;

  v62 = [v56 newFillColorForStyleAttributes:v57 forScale:v61];
  v63 = v56;
  if (!v62 || (v64 = [v58 mainScreen], objc_msgSend(v64, "scale"), v66 = v65, v64, (v67 = objc_msgSend(v56, "imageForStyle:size:forScale:format:", v57, 3, 0, v66)) == 0))
  {
LABEL_40:
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    __swift_project_value_buffer(v74, static MOAngelLogger.assets);
    v75 = v0;
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v117 = v79;
      *v78 = 134218242;
      if (v2)
      {
        v80 = [v2 name];
        if (v80)
        {
          v81 = v80;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v83 = v82;
        }

        else
        {
          v83 = 0;
        }

        v116 = v83;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        v86 = Optional<A>.hashValue.getter();

        *(v78 + 4) = v86;

        *(v78 + 12) = 2080;
        v115 = [v2 _poiCategory];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14GEOPOICategoryaSgMd, &_sSo14GEOPOICategoryaSgMR);
        v85 = Optional.debugDescription.getter();
        v84 = v87;
      }

      else
      {
        *(v78 + 4) = 0;

        *(v78 + 12) = 2080;
        v84 = 0xE300000000000000;
        v85 = 7104878;
      }

      v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v84, &v117);

      *(v78 + 14) = v88;
      _os_log_impl(&dword_0, v76, v77, "[POIClustering] [RENDERING] Fallback, geoMapItem.name=%ld, geoMapItem.poiCategory=%s", v78, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v79);
    }

    else
    {
    }

    v89 = *&v75[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_basePOICircleView];
    [v89 frame];
    CGRectGetWidth(v119);
    [v89 frame];
    CGRectGetHeight(v120);
    [v89 frame];
    CGRectGetWidth(v121);
    [v89 frame];
    CGRectGetHeight(v122);
    MOSuggestionLayoutEngine.HalfWidth.init()();
    v94 = [objc_allocWithZone(UIImageView) initWithFrame:{v90, v91, v92, v93}];
    v95 = String._bridgeToObjectiveC()();
    v96 = [objc_opt_self() _systemImageNamed:v95];

    [v94 setImage:v96];
    v97 = objc_opt_self();
    v98 = [v97 systemWhiteColor];
    [v94 setTintColor:v98];

    v99 = [v97 systemIndigoColor];
    [v89 setBackgroundColor:v99];

    v100 = *&v75[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_downArrowView];
    v101 = [v97 systemIndigoColor];
    [v100 setTintColor:v101];

    v102 = *&v75[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_clusterCountLabel];
    v103 = [v97 systemIndigoColor];
    [v102 setBackgroundColor:v103];

    v104 = [v89 layer];
    [v89 frame];
    [v104 setCornerRadius:CGRectGetHeight(v123) * 0.5];

    [v89 addSubview:v94];
    goto LABEL_52;
  }

  v68 = v67;
  v69 = v0;
  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v70 = type metadata accessor for Logger();
  __swift_project_value_buffer(v70, static MOAngelLogger.assets);
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&dword_0, v71, v72, "[POIClustering] [RENDERING] City", v73, 2u);
  }

  [*&v69[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_basePOICircleView] setImage:v68];
  v114 = [objc_allocWithZone(UIColor) initWithCGColor:v62];

  [*&v69[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_clusterCountLabel] setBackgroundColor:v114];
LABEL_37:
}

id MOPOIAnnotationView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id MOPOIAnnotationView.__allocating_init(annotation:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithAnnotation:a1 reuseIdentifier:v6];
  swift_unknownObjectRelease();

  return v7;
}

id MOPOIAnnotationView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOPOIAnnotationView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:_:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(char a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  MOSuggestionAssetTileSize.hash(into:)(v6, a1);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = *(v2 + 48);
    do
    {
      v8 = *(v7 + result);
      if (v8 <= 5)
      {
        if (*(v7 + result) > 3u)
        {
          if (v8 == 4)
          {
            if (a1 == 4)
            {
              return result;
            }

            goto LABEL_4;
          }

          if (v8 == 5)
          {
            if (a1 == 5)
            {
              return result;
            }

            goto LABEL_4;
          }
        }

        else
        {
          if (v8 == 2)
          {
            if (a1 == 2)
            {
              return result;
            }

            goto LABEL_4;
          }

          if (v8 == 3)
          {
            if (a1 == 3)
            {
              return result;
            }

            goto LABEL_4;
          }
        }
      }

      else if (*(v7 + result) <= 7u)
      {
        if (v8 == 6)
        {
          if (a1 == 6)
          {
            return result;
          }

          goto LABEL_4;
        }

        if (v8 == 7)
        {
          if (a1 == 7)
          {
            return result;
          }

          goto LABEL_4;
        }
      }

      else
      {
        switch(v8)
        {
          case 8u:
            if (a1 == 8)
            {
              return result;
            }

            goto LABEL_4;
          case 9u:
            if (a1 == 9)
            {
              return result;
            }

            goto LABEL_4;
          case 0xAu:
            if (a1 == 10)
            {
              return result;
            }

            goto LABEL_4;
        }
      }

      if (a1 - 2 >= 9 && ((v8 ^ a1) & 1) == 0)
      {
        return result;
      }

LABEL_4:
      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_Say20MomentsUIServiceCore25MOSuggestionAssetTileSizeOGTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySiSay20MomentsUIServiceCore25MOSuggestionAssetTileSizeOGGMd, &_ss18_DictionaryStorageCySiSay20MomentsUIServiceCore25MOSuggestionAssetTileSizeOGGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 7);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC20MomentsUIServiceCore25MOSuggestionAssetTileSizeO_0E8Graphics7CGFloatVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy20MomentsUIServiceCore25MOSuggestionAssetTileSizeO0E8Graphics7CGFloatVGMd, &_ss18_DictionaryStorageCy20MomentsUIServiceCore25MOSuggestionAssetTileSizeO0E8Graphics7CGFloatVGMR);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

id specialized MOPOIAnnotationView.init(annotation:configuration:)(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v9 = *(v27 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v27);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_basePOICircleView;
  *&v2[v13] = [objc_allocWithZone(UIImageView) init];
  v14 = OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_downArrowView;
  *&v2[v14] = [objc_allocWithZone(UIImageView) init];
  v15 = OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_clusterCountLabel;
  *&v2[v15] = [objc_allocWithZone(UILabel) init];
  v16 = OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_borderBackgroundView;
  *&v2[v16] = [objc_allocWithZone(UIView) init];
  v17 = &v2[OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_configuration];
  *(v17 + 4) = *(a2 + 32);
  v18 = *(a2 + 16);
  *v17 = *a2;
  *(v17 + 1) = v18;
  outlined init with copy of MOPOIAnnotationViewConfiguration(a2, aBlock);
  v19 = type metadata accessor for MOPOIAnnotationView();
  v29.receiver = v2;
  v29.super_class = v19;
  v20 = objc_msgSendSuper2(&v29, "initWithAnnotation:reuseIdentifier:", v26, 0);
  type metadata accessor for OS_dispatch_queue();
  v21 = v20;
  v22 = static OS_dispatch_queue.main.getter();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in MOPOIAnnotationView.init(annotation:configuration:);
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_0;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v27);
  return v21;
}

void specialized MOPOIAnnotationView.setupBorderBackground(cluster:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_borderBackgroundView);
  v6 = *(v0 + OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_configuration);
  v7 = *(v0 + OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_configuration + 16);
  v8 = *(v0 + OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_configuration + 32);
  MOPOIAnnotationViewConfiguration.basePOICircleFrame.getter();
  MOPOIAnnotationViewConfiguration.basePOICircleFrame.getter();
  MOPOIAnnotationViewConfiguration.basePOICircleFrame.getter();
  MOSuggestionLayoutEngine.HalfWidth.init()();
  [v1 setFrame:?];
  v2 = [v1 layer];
  v3 = [objc_opt_self() whiteColor];
  v4 = [v3 CGColor];

  [v2 setBackgroundColor:v4];
  [v1 setClipsToBounds:1];
  v5 = [v1 layer];
  [v1 frame];
  [v5 setCornerRadius:CGRectGetWidth(v10) * 0.5];
}

void specialized MOPOIAnnotationView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_basePOICircleView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  v2 = OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_downArrowView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_clusterCountLabel;
  *(v0 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC20MomentsUIServiceCore19MOPOIAnnotationView_borderBackgroundView;
  *(v0 + v4) = [objc_allocWithZone(UIView) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for MOPOIAnnotationViewConfiguration(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for MOPOIAnnotationViewConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_CE00()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t MOSuggestionAssetMapsClusterer.skipRows.getter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t MOSuggestionAssetMapsClusterer.skipRows.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

double MOSuggestionAssetMapsClusterer.Cluster.coordinates.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.chain.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.chain.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster() + 32);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster()
{
  result = type metadata singleton initialization cache for MOSuggestionAssetMapsClusterer.Cluster;
  if (!type metadata singleton initialization cache for MOSuggestionAssetMapsClusterer.Cluster)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.id.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster() + 32);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.geoMapItem.getter()
{
  v1 = *(v0 + *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster() + 36));

  return swift_unknownObjectRetain();
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.geoMapItem.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster() + 36);
  v4 = *(v1 + v3);
  result = swift_unknownObjectRelease();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.confidence.setter(double a1)
{
  result = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.title.getter()
{
  v1 = (v0 + *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster() + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster() + 44));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.isWork.setter(char a1)
{
  result = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.isScaledDownPOI.setter(char a1)
{
  result = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.horizontalUncertainty.setter(double a1)
{
  result = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t static MOSuggestionAssetMapsClusterer.Cluster.== infix(_:_:)()
{
  v0 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster() + 32);

  return static UUID.== infix(_:_:)();
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.hash(into:)()
{
  v0 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster() + 32);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int MOSuggestionAssetMapsClusterer.Cluster.hashValue.getter()
{
  Hasher.init(_seed:)();
  v0 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster() + 32);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.init(coordinates:distance:count:chain:id:geoMapItem:confidence:title:isWork:isScaledDownPOI:horizontalUncertainty:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, char a15)
{
  *a9 = a10;
  *(a9 + 8) = a11;
  *(a9 + 16) = a12;
  *(a9 + 24) = a1;
  *(a9 + 32) = a2;
  *(a9 + 40) = a3;
  v23 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  v24 = v23[8];
  v25 = type metadata accessor for UUID();
  result = (*(*(v25 - 8) + 32))(a9 + v24, a4, v25);
  *(a9 + v23[9]) = a5;
  *(a9 + v23[10]) = a13;
  v27 = (a9 + v23[11]);
  *v27 = a6;
  v27[1] = a7;
  *(a9 + v23[12]) = a8;
  *(a9 + v23[13]) = a15;
  *(a9 + v23[14]) = a14;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MOSuggestionAssetMapsClusterer.Cluster(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *(a1 + 32);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MOSuggestionAssetMapsClusterer.Cluster(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MOSuggestionAssetMapsClusterer.Cluster(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v3 = *(a2 + 32);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

size_t MOSuggestionAssetMapsClusterer.init(mapLocations:separationThreshold:)(unint64_t a1, double a2)
{
  v5 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v9 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v2[OBJC_IVAR____TtC20MomentsUIServiceCore30MOSuggestionAssetMapsClusterer_skipRows] = &_swiftEmptySetSingleton;
  *&v2[OBJC_IVAR____TtC20MomentsUIServiceCore30MOSuggestionAssetMapsClusterer_skipColumns] = &_swiftEmptySetSingleton;
  p_info = _TtC20MomentsUIServiceCore17MOAngelSignposter.info;
  v11 = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC20MomentsUIServiceCore30MOSuggestionAssetMapsClusterer_inputClusters] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC20MomentsUIServiceCore30MOSuggestionAssetMapsClusterer_results] = &_swiftEmptySetSingleton;
  *&v2[OBJC_IVAR____TtC20MomentsUIServiceCore30MOSuggestionAssetMapsClusterer_separationThreshold] = a2;
  v12 = type metadata accessor for MOSuggestionAssetMapsClusterer();
  v32.receiver = v2;
  v32.super_class = v12;
  v13 = objc_msgSendSuper2(&v32, "init");
  v31 = 0;
  v14 = a1;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  v15 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (v15)
  {
    while (1)
    {
      v30 = v11;
      v16 = v13;
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15 & ~(v15 >> 63), 0);
      if (v15 < 0)
      {
        break;
      }

      v25 = v13;
      v13 = 0;
      v18 = v30;
      v19 = v14;
      v27 = v14;
      v28 = v14 & 0xC000000000000001;
      v26 = v14 & 0xFFFFFFFFFFFFFF8;
      v14 = v15;
      while (1)
      {
        v11 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v28)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v13 >= *(v26 + 16))
          {
            goto LABEL_15;
          }

          v20 = *(v19 + 8 * v13 + 32);
        }

        v29 = v20;
        closure #1 in MOSuggestionAssetMapsClusterer.init(mapLocations:separationThreshold:)(&v29, &v31, v9);

        v30 = v18;
        p_info = v18[2];
        v21 = v18[3];
        if (p_info >= v21 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21 > 1, p_info + 1, 1);
          v18 = v30;
        }

        v18[2] = p_info + 1;
        outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v9, v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * p_info);
        ++v13;
        v19 = v27;
        if (v11 == v15)
        {

          p_info = 176128;
          v13 = v25;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v15 = _CocoaArrayWrapper.endIndex.getter();
      if (!v15)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    v22 = v13;

    v18 = _swiftEmptyArrayStorage;
LABEL_18:
    v23 = *(p_info + 248);
    v24 = *(&v23->flags + v13);
    *(&v23->flags + v13) = v18;

    return v13;
  }

  return result;
}

uint64_t closure #1 in MOSuggestionAssetMapsClusterer.init(mapLocations:separationThreshold:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, double *a3@<X8>)
{
  v5 = *a1;
  v6 = (*(**a1 + 240))();
  v7 = (*(*v5 + 264))();
  v8 = *(*v5 + 312);
  v9 = v8();
  if (v10)
  {
    v26 = 1;
  }

  else
  {
    result = (v8)(v9);
    if (v12)
    {
      goto LABEL_8;
    }

    v26 = result;
  }

  v29 = *a2;
  v27 = dispatch thunk of CustomStringConvertible.description.getter();
  v28 = v13;
  v14._countAndFlagsBits = 95;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  v15 = a2;
  v16 = (*(*v5 + 288))();
  v17 = (*(*v5 + 360))();
  v18 = (*(*v5 + 336))();
  v20 = v19;
  v21 = (*(*v5 + 384))();
  v22 = (*(*v5 + 456))();
  v23 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  v24 = a3 + v23[8];
  result = UUID.init()();
  *a3 = v6;
  a3[1] = v7;
  a3[2] = 0.0;
  *(a3 + 3) = v26;
  *(a3 + 4) = v27;
  *(a3 + 5) = v28;
  *(a3 + v23[9]) = v16;
  *(a3 + v23[10]) = v17;
  v25 = (a3 + v23[11]);
  *v25 = v18;
  v25[1] = v20;
  *(a3 + v23[12]) = v21 & 1;
  *(a3 + v23[13]) = 0;
  *(a3 + v23[14]) = v22;
  if (!__OFADD__(*v15, 1))
  {
    ++*v15;
    return result;
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

Swift::tuple_tuple_Int_Int_Double_optional __swiftcall MOSuggestionAssetMapsClusterer.findSmallestEuclideanDistance(distanceMatrix:lowerHalfOnly:)(Swift::OpaquePointer *distanceMatrix, Swift::Bool lowerHalfOnly)
{
  rawValue = distanceMatrix->_rawValue;
  v4 = distanceMatrix->_rawValue + 32;
  v5 = *(distanceMatrix->_rawValue + 2);

  v10 = 0;
  v11 = 1.79769313e308;
  v12 = -1;
  v13 = -1;
  while (1)
  {
LABEL_2:
    if (v5 == v10)
    {

      if ((v13 & v12) == 0xFFFFFFFFFFFFFFFFLL)
      {
        v6 = 0;
      }

      else
      {
        v6 = v13;
      }

      if ((v13 & v12) == 0xFFFFFFFFFFFFFFFFLL)
      {
        v7 = 0;
      }

      else
      {
        v7 = v12;
      }

      if ((v13 & v12) == 0xFFFFFFFFFFFFFFFFLL)
      {
        v8 = 0;
      }

      else
      {
        v8 = LOBYTE(v11);
      }

      goto LABEL_43;
    }

    if (v10 >= rawValue[2])
    {
      break;
    }

    v14 = *&v4[8 * v10++];
    v15 = *(v14 + 16);
    if (v15)
    {
      v40 = v13;
      v41 = v12;
      v38 = v5;
      v42 = *&stru_68.segname[swift_isaMask & *v2];

      v16 = 0;
      v17 = v10 - 1;
      while (1)
      {
        if (v16 >= *(v14 + 16))
        {
          goto LABEL_42;
        }

        v21 = *(v14 + 32 + 8 * v16);
        v22 = v42(v6);
        if (*(v22 + 16) && (v23 = *(v22 + 40), v24 = v22, v25 = static Hasher._hash(seed:_:)(), v26 = -1 << *(v24 + 32), v27 = v25 & ~v26, ((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) != 0))
        {
          v28 = ~v26;
          while (*(*(v24 + 48) + 8 * v27) + 1 != v10)
          {
            v27 = (v27 + 1) & v28;
            if (((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
            {
              goto LABEL_19;
            }
          }
        }

        else
        {
LABEL_19:

          v30 = (*(&stru_68.size + (swift_isaMask & *v2)))(v29);
          if (!*(v30 + 16) || (v31 = *(v30 + 40), v32 = v30, v33 = static Hasher._hash(seed:_:)(), v34 = -1 << *(v32 + 32), v35 = v33 & ~v34, ((*(v32 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0))
          {
LABEL_24:

            if (!lowerHalfOnly || v16 < v17 && (v37 = rawValue[2], v16 < v37) && v37 >= 2 && v17 < v37)
            {
              v18 = v21 < v11;
              if (v21 >= v11)
              {
                v19 = v41;
              }

              else
              {
                v11 = v21;
                v19 = v16;
              }

              v20 = v40;
              if (v18)
              {
                v20 = v10 - 1;
              }

              v40 = v20;
              v41 = v19;
            }

            goto LABEL_12;
          }

          v36 = ~v34;
          while (*(*(v32 + 48) + 8 * v35) != v16)
          {
            v35 = (v35 + 1) & v36;
            if (((*(v32 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
            {
              goto LABEL_24;
            }
          }
        }

LABEL_12:
        if (++v16 == v15)
        {

          v5 = v38;
          v13 = v40;
          v12 = v41;
          goto LABEL_2;
        }
      }
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  result.value._1 = v9;
  result.value._0._1 = v7;
  result.value._0._0 = v6;
  result.is_nil = v8;
  return result;
}

uint64_t closure #1 in MOSuggestionAssetMapsClusterer.buildDendogram()()
{
  v0 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  v1 = *(v0 + 32);
  if (static UUID.== infix(_:_:)())
  {
    return 1;
  }

  v3 = *(v0 + 32);
  return static UUID.== infix(_:_:)() & 1;
}

uint64_t MOSuggestionAssetMapsClusterer.combinedCluster(_:_:distance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  result = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  v9 = result;
  v10 = *(result + 36);
  v11 = *(a1 + v10);
  if (!v11)
  {
    v11 = *(a2 + v10);
    result = swift_unknownObjectRetain();
  }

  v12 = *(a1 + 24);
  v13 = *(a2 + 24);
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
  }

  else
  {
    v15 = (*(a1 + 8) + *(a2 + 8)) * 0.5;
    v16 = (*a1 + *a2) * 0.5;
    v17 = *(a2 + 32);
    v18 = *(a2 + 40);
    v22 = *(a1 + 32);
    v23 = *(a1 + 40);
    swift_unknownObjectRetain();

    v19._countAndFlagsBits = v17;
    v19._object = v18;
    String.append(_:)(v19);
    v20 = a3 + v9[8];
    result = UUID.init()();
    *a3 = v16;
    *(a3 + 8) = v15;
    *(a3 + 16) = a4;
    *(a3 + 24) = v14;
    *(a3 + 32) = v22;
    *(a3 + 40) = v23;
    *(a3 + v9[9]) = v11;
    *(a3 + v9[10]) = 0;
    v21 = (a3 + v9[11]);
    *v21 = 0;
    v21[1] = 0xE000000000000000;
    *(a3 + v9[12]) = 0;
    *(a3 + v9[13]) = 0;
    *(a3 + v9[14]) = 0;
  }

  return result;
}

void static MOSuggestionAssetMapsClusterer.makeRegion(containing:applyBottomPaddingForPlatter:applyBottomPaddingForGradient:horizontalAspectRatio:markerStyle:applyRenderMargin:shouldAdjustMarker:)(unint64_t a1)
{
  v2 = a1 >> 62;
  if (!(a1 >> 62))
  {
    if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_3;
    }

LABEL_25:
    if (one-time initialization token for assets == -1)
    {
LABEL_26:
      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static MOAngelLogger.assets);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_0, v27, v28, "[MapSnapshot] makeRegion failed with 0 locations", v29, 2u);
      }

      v31.origin.x = MKMapRectNull.origin.x;
      v31.origin.y = MKMapRectNull.origin.y;
      v31.size.width = MKMapRectNull.size.width;
      v31.size.height = MKMapRectNull.size.height;
      MKCoordinateRegionForMapRect(v31);
      return;
    }

LABEL_31:
    swift_once();
    goto LABEL_26;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_25;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v3 = v4;
    goto LABEL_6;
  }

  if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    __break(1u);
    goto LABEL_31;
  }

  v3 = *(a1 + 32);

LABEL_6:
  (*(*v3 + 240))(v4);
  (*(*v3 + 264))();
  v5 = (*(*v3 + 456))();
  v6 = (*(*v3 + 312))();
  v8 = v7;
  if (v2)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (v9 < 2)
    {
LABEL_8:
      if (((v8 & 1) != 0 || v6 < 2) && v5 > 0.0 && one-time initialization token for LOW_CONFIDENCE_HIGH_CERTAINTITY_THRESHOLD != -1)
      {
        swift_once();
      }

      return;
    }
  }

  else
  {
    v9 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v9 < 2)
    {
      goto LABEL_8;
    }
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
  v10 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v11 = *(a1 + 8 * v10 + 32);
    }

    v12 = (*(*v11 + 240))();
    v13 = (*(*v11 + 264))();

    v15 = _swiftEmptyArrayStorage[2];
    v14 = _swiftEmptyArrayStorage[3];
    if (v15 >= v14 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
    }

    ++v10;
    _swiftEmptyArrayStorage[2] = v15 + 1;
    v16 = &_swiftEmptyArrayStorage[2 * v15 + 4];
    *v16 = v12;
    v16[1] = v13;
  }

  while (v9 != v10);
  v17 = [objc_opt_self() polygonWithCoordinates:&_swiftEmptyArrayStorage[4] count:v9];

  [v17 boundingMapRect];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v30.origin.x = v19;
  v30.origin.y = v21;
  v30.size.width = v23;
  v30.size.height = v25;
  MKCoordinateRegionForMapRect(v30);
}

void *MOSuggestionAssetMapsClusterer.groupedByAverageHeight()()
{
  v136 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  v0 = *(v136 - 8);
  v1 = v0[8];
  v2 = __chkstk_darwin(v136);
  v140 = &v121 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v6 = (&v121 - v5);
  v7 = __chkstk_darwin(v4);
  v128 = &v121 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v121 - v10;
  v12 = __chkstk_darwin(v9);
  v127 = (&v121 - v13);
  __chkstk_darwin(v12);
  v15 = (&v121 - v14);
  *&v146 = 0;
  *(&v146 + 1) = 0xE000000000000000;
  v16 = COERCE_DOUBLE(specialized static MOAngelDefaultsManager.doubleValueFor(_:)());
  if (v17)
  {
    v18 = 0.5;
  }

  else
  {
    v18 = v16;
  }

  if (one-time initialization token for assets != -1)
  {
LABEL_118:
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static MOAngelLogger.assets);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = v18;
    _os_log_impl(&dword_0, v20, v21, "[MOSuggestionAssetMapsClusterer] using POI penalty: %f", v22, 0xCu);
  }

  v23 = OBJC_IVAR____TtC20MomentsUIServiceCore30MOSuggestionAssetMapsClusterer_results;
  v24 = v137;
  swift_beginAccess();
  v25 = *(v24 + v23);
  p_info = (_TtC20MomentsUIServiceCore17MOAngelSignposter + 32);
  if (!*(v25 + 16))
  {
    v141 = _swiftEmptyArrayStorage;
    v40 = 0xE000000000000000;
    goto LABEL_99;
  }

  v125 = v11;
  v27 = 1 << *(v25 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v25 + 56);
  v11 = ((v27 + 63) >> 6);

  v30 = 0;
  v31 = 0.0;
  while (v29)
  {
LABEL_17:
    outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(*(v25 + 48) + v0[9] * (__clz(__rbit64(v29)) | (v30 << 6)), v15);
    v33 = *(v15 + 2);
    v34 = *(v15 + *(v136 + 36));
    swift_unknownObjectRetain();
    outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v15);
    v35 = -v18;
    if (v34)
    {
      swift_unknownObjectRelease();
      v35 = v18;
    }

    v29 &= v29 - 1;
    v31 = v31 + v33 * (1.0 - v35);
  }

  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    if (v32 >= v11)
    {
      break;
    }

    v29 = *(v25 + 56 + 8 * v32);
    ++v30;
    if (v29)
    {
      v30 = v32;
      goto LABEL_17;
    }
  }

  v36 = *(v137 + v23);
  v37 = v36[2];
  if (v37)
  {
    v38 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC20MomentsUIServiceCore30MOSuggestionAssetMapsClustererC7ClusterV_Tt1g5(v36[2], 0);
    v141 = specialized Sequence._copySequenceContents(initializing:)(&v144, v38 + ((*(v0 + 80) + 32) & ~*(v0 + 80)), v37, v36);
    swift_bridgeObjectRetain_n();
    outlined consume of Set<MOSuggestionAssetMapsClusterer.Cluster>.Iterator._Variant();
    if (v141 != v37)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v39 = v137;
  }

  else
  {
    v39 = v137;

    v38 = _swiftEmptyArrayStorage;
  }

  *&v144 = v38;
  specialized MutableCollection<>.sort(by:)(&v144, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));

  v41 = v144;
  v11 = *(v144 + 16);
  if (!v11)
  {

    v141 = _swiftEmptyArrayStorage;
    v40 = 0xE000000000000000;
    p_info = _TtC20MomentsUIServiceCore17MOAngelSignposter.info;
    goto LABEL_101;
  }

  v42 = 0;
  v43 = v37;
  v131 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v44 = v144 + v131;
  v141 = _swiftEmptyArrayStorage;
  v126 = "ggestionLayoutEngine";
  v45 = v31 / v43;
  v132 = OBJC_IVAR____TtC20MomentsUIServiceCore30MOSuggestionAssetMapsClusterer_inputClusters;
  v124 = GEOPOICategoryReligiousSite;
  v15 = v127;
  v134 = v144;
  v129 = v11;
  v133 = v144 + v131;
  while (2)
  {
    if (v42 >= *(v41 + 16))
    {
      goto LABEL_114;
    }

    v46 = v0[9];
    outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v44 + v46 * v42, v15);
    v47 = *(v15 + 2);
    if (v47 >= v45)
    {
      goto LABEL_27;
    }

    v48 = v11;
    v11 = v6;
    v6 = v0;
    v138 = v46;
    v144 = v146;
    v49 = v15[4];
    v0 = v15[5];
    *&v142 = v49;
    *(&v142 + 1) = v0;
    lazy protocol witness table accessor for type String and conformance String();
    if (StringProtocol.contains<A>(_:)())
    {
      v44 = v133;
      v0 = v6;
      v6 = v11;
      v11 = v48;
      v41 = v134;
      goto LABEL_27;
    }

    v135._countAndFlagsBits = v49;
    *&v144 = v49;
    *(&v144 + 1) = v0;
    v135._object = v0;
    *&v142 = 95;
    *(&v142 + 1) = 0xE100000000000000;
    v50 = StringProtocol.components<A>(separatedBy:)();
    if (!*(v50 + 16))
    {
      goto LABEL_116;
    }

    v51 = v50;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v51 = specialized _ArrayBuffer._consumeAndCreateNew()(v51);
    }

    v52 = v138;
    v0 = v6;
    v53 = *(v51 + 2);
    if (!v53)
    {
      goto LABEL_117;
    }

    v6 = v11;
    v54 = v53 - 1;
    v55 = *&v51[16 * v54 + 40];
    *(v51 + 2) = v54;

    v11 = *(v51 + 2);
    if (!v11)
    {
      v11 = v129;
      v41 = v134;
LABEL_96:

      goto LABEL_97;
    }

    v15 = v0;
    v56 = 0;
    v130 = 0;
    v139 = 0;
    v0 = (v51 + 40);
    v57 = 0.0;
    v58 = 0.0;
    do
    {
      v59 = *(v0 - 1);
      v60 = *v0;
      if (v59)
      {
        v61 = 0;
      }

      else
      {
        v61 = v60 == 0xE000000000000000;
      }

      if (v61)
      {
        goto LABEL_39;
      }

      v62 = *(v0 - 1);
      v63 = *v0;
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_39;
      }

      v64 = _ss17FixedWidthIntegerPsEyxSgSScfCSi_Tt1g5(v59, v60);
      if (v65)
      {
        goto LABEL_39;
      }

      if (v64 < 0)
      {
        goto LABEL_39;
      }

      v66 = *(v137 + v132);
      if (v64 >= *(v66 + 16))
      {
        goto LABEL_39;
      }

      v67 = (v66 + v131 + v64 * v52);
      v68 = *v67;
      v69 = v67[1];
      v70 = *(v67 + *(v136 + 36));
      if (!v70 || v130 >= 1)
      {
        goto LABEL_50;
      }

      v72 = one-time initialization token for defaults;
      swift_unknownObjectRetain();
      if (v72 != -1)
      {
        swift_once();
      }

      v73 = static MOAngelDefaultsManager.defaults;
      if (!static MOAngelDefaultsManager.defaults)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v144 = 0u;
        v145 = 0u;
        v52 = v138;
LABEL_75:
        outlined destroy of Any?(&v144);
        goto LABEL_51;
      }

      v74 = String._bridgeToObjectiveC()();
      v75 = [v73 objectForKey:v74];

      if (v75)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v143 = 0u;
        v142 = 0u;
      }

      v144 = v142;
      v145 = v143;
      v52 = v138;
      if (!*(&v143 + 1))
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_75;
      }

      if (swift_dynamicCast() & 1) != 0 && (v142)
      {
        v76 = [v70 _poiCategory];
        if (!v76)
        {
          goto LABEL_77;
        }

        v77 = v76;
        v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v123 = v79;
        if (v78 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v123 == v80)
        {
          swift_unknownObjectRelease();

LABEL_88:
          swift_unknownObjectRelease();
          v52 = v138;
          goto LABEL_51;
        }

        LODWORD(v122) = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v122 & 1) == 0)
        {
LABEL_77:
          v123 = objc_opt_self();
          v81 = [v70 _styleAttributes];
          v121 = objc_opt_self();
          v82 = [v121 mainScreen];
          [v82 scale];
          v18 = v83;

          v84 = v123;
          v122 = [v123 newFillColorForStyleAttributes:v81 forScale:v18];

          v85 = v84;
          if (v122)
          {
            v86 = [v70 _styleAttributes];
            v87 = [v121 mainScreen];
            [v87 scale];
            v18 = v88;

            v89 = [v123 imageForStyle:v86 size:3 forScale:0 format:v18];
            if (v89)
            {

              v90 = v136;
              v130 = *(v136 + 32);

              v91 = v125;
              UUID.init()();
              *v91 = v68;
              *(v91 + 8) = v69;
              *(v91 + 16) = v47;
              countAndFlagsBits = v135._countAndFlagsBits;
              *(v91 + 24) = 1;
              *(v91 + 32) = countAndFlagsBits;
              *(v91 + 40) = v135._object;
              *(v91 + v90[9]) = v70;
              *(v91 + v90[10]) = 0;
              v93 = (v91 + v90[11]);
              *v93 = 0;
              v93[1] = 0xE000000000000000;
              *(v91 + v90[12]) = 0;
              *(v91 + v90[13]) = 1;
              *(v91 + v90[14]) = 0;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v141 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v141[2] + 1, 1, v141);
              }

              v18 = 7.0;
              v95 = v141[2];
              v94 = v141[3];
              if (v95 >= v94 >> 1)
              {
                v141 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v94 > 1, v95 + 1, 1, v141);
              }

              v96 = v141;
              v141[2] = v95 + 1;
              v97 = v96 + v131 + v95 * v138;
              v52 = v138;
              outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v125, v97);
              if (v58 != 0.0)
              {
                v58 = v58 + (v58 - v68) / 7.0;
              }

              if (v57 != 0.0)
              {
                v57 = v57 + (v57 - v69) / 7.0;
              }

              v130 = 1;
              goto LABEL_39;
            }
          }
        }

        swift_unknownObjectRelease();
        goto LABEL_88;
      }

      swift_unknownObjectRelease();
LABEL_50:
      swift_unknownObjectRelease();
LABEL_51:
      if (__OFADD__(v56++, 1))
      {
        goto LABEL_115;
      }

      if (v57 == 0.0)
      {
        v57 = v69;
      }

      else
      {
        v57 = (v57 + v69) * 0.5;
      }

      if (v58 == 0.0)
      {
        v58 = v68;
      }

      else
      {
        v58 = (v58 + v68) * 0.5;
      }

      swift_unknownObjectRetain();
      v139 = v70;
LABEL_39:
      v0 += 2;
      --v11;
    }

    while (v11);
    v0 = v15;
    v11 = v129;
    if (v56 < 1)
    {
      v15 = v127;
      v41 = v134;
      goto LABEL_96;
    }

    v98 = *(v51 + 2);
    v99 = v139;
    swift_unknownObjectRetain();
    object = v135._object;

    v101 = v136;
    v102 = v128;
    v103 = v128 + *(v136 + 32);
    UUID.init()();
    *v102 = v58;
    *(v102 + 8) = v57;
    *(v102 + 16) = v47;
    v104 = v135._countAndFlagsBits;
    *(v102 + 24) = v56;
    *(v102 + 32) = v104;
    *(v102 + 40) = object;
    *(v102 + v101[9]) = v99;
    *(v102 + v101[10]) = 0;
    v105 = (v102 + v101[11]);
    *v105 = 0;
    v105[1] = 0xE000000000000000;
    *(v102 + v101[12]) = 0;
    *(v102 + v101[13]) = v56 != v98;
    *(v102 + v101[14]) = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v141 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v141[2] + 1, 1, v141);
    }

    v107 = v141[2];
    v106 = v141[3];
    v15 = v127;
    v41 = v134;
    if (v107 >= v106 >> 1)
    {
      v141 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v106 > 1, v107 + 1, 1, v141);
    }

    v108 = v141;
    v141[2] = v107 + 1;
    outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v128, v108 + v131 + v107 * v138);
LABEL_97:
    String.append(_:)(v135);
    swift_unknownObjectRelease();
    v44 = v133;
LABEL_27:
    ++v42;
    outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v15);
    if (v42 != v11)
    {
      continue;
    }

    break;
  }

  v40 = *(&v146 + 1);
  p_info = (_TtC20MomentsUIServiceCore17MOAngelSignposter + 32);
LABEL_99:
  v39 = v137;
LABEL_101:
  v109 = *(&p_info[31]->flags + v39);
  v110 = v109[2];
  if (v110)
  {
    v111 = v146;
    v112 = v0;
    v113 = (*(v0 + 80) + 32) & ~*(v0 + 80);
    v114 = v109 + v113;
    v115 = v112[9];
    v139 = v109;

    do
    {
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v114, v6);
      *&v144 = v111;
      *(&v144 + 1) = v40;
      v116 = v6[5];
      *&v142 = v6[4];
      *(&v142 + 1) = v116;
      lazy protocol witness table accessor for type String and conformance String();
      if (StringProtocol.contains<A>(_:)())
      {
        outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v6);
      }

      else
      {
        outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v6, v140);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v141 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v141[2] + 1, 1, v141);
        }

        v118 = v141[2];
        v117 = v141[3];
        if (v118 >= v117 >> 1)
        {
          v141 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v117 > 1, v118 + 1, 1, v141);
        }

        outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v6);
        v119 = v141;
        v141[2] = v118 + 1;
        outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v140, v119 + v113 + v118 * v115);
      }

      v114 += v115;
      --v110;
    }

    while (v110);
  }

  return v141;
}

uint64_t _ss17FixedWidthIntegerPsEyxSgSScfCSi_Tt1g5(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = specialized _parseInteger<A, B>(ascii:radix:)(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

id MOSuggestionAssetMapsClusterer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MOSuggestionAssetMapsClusterer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionAssetMapsClusterer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *MOSuggestionAssetMapsClusterer.__allocating_init(coordinates:separationThreshold:)(uint64_t a1, double a2)
{
  v5 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v2 + 240))(_swiftEmptyArrayStorage, 0.5);
  v11 = v10;
  *&v10[OBJC_IVAR____TtC20MomentsUIServiceCore30MOSuggestionAssetMapsClusterer_separationThreshold] = a2;
  v12 = *(a1 + 16);
  if (v12)
  {
    v33 = _swiftEmptyArrayStorage;
    v30[0] = v10;
    v13 = v10;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v14 = 0;
    v15 = v33;
    v30[1] = a1;
    v16 = (a1 + 40);
    do
    {
      v17 = *(v16 - 1);
      v18 = *v16;
      v30[2] = v14;
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v19;
      v20._countAndFlagsBits = 95;
      v20._object = 0xE100000000000000;
      String.append(_:)(v20);
      v21 = v31;
      v22 = v32;
      v23 = v9 + v5[8];
      UUID.init()();
      *v9 = v17;
      v9[1] = v18;
      v9[2] = 0;
      v9[3] = 1;
      v9[4] = v21;
      v9[5] = v22;
      *(v9 + v5[9]) = 0;
      *(v9 + v5[10]) = 0;
      v24 = (v9 + v5[11]);
      *v24 = 0;
      v24[1] = 0xE000000000000000;
      *(v9 + v5[12]) = 0;
      *(v9 + v5[13]) = 0;
      *(v9 + v5[14]) = 0;
      v33 = v15;
      v26 = v15[2];
      v25 = v15[3];
      if (v26 >= v25 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v25 > 1, v26 + 1, 1);
        v15 = v33;
      }

      ++v14;
      v15[2] = v26 + 1;
      outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v9, v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v26);
      v16 += 2;
    }

    while (v12 != v14);

    v11 = v30[0];
  }

  else
  {
    v27 = v10;

    v15 = _swiftEmptyArrayStorage;
  }

  v28 = *&v11[OBJC_IVAR____TtC20MomentsUIServiceCore30MOSuggestionAssetMapsClusterer_inputClusters];
  *&v11[OBJC_IVAR____TtC20MomentsUIServiceCore30MOSuggestionAssetMapsClusterer_inputClusters] = v15;

  return v11;
}

uint64_t static MOSuggestionAssetMapsClusterer.clusteredPins(locations:targetRegion:numBuckets:)(unint64_t a1, NSObject *a2, long double a3, long double a4, double a5, double a6)
{
  v7 = a1;
  v8 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_144;
  }

  if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)) < 2)
  {
LABEL_145:

    return v7;
  }

  else
  {
    while (1)
    {
      if ((((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL) && a4 < 0.0)
      {
        v11 = a3;
        v12 = a6;
        v13 = a5;
        v14 = remainder(a4, 360.0);
        a5 = v13;
        a6 = v12;
        v15 = v14;
        a3 = v11;
        a4 = v15 + 360.0;
      }

      v16 = a5 * 0.5;
      v17 = a3 - v16;
      v18 = vabdd_f64(a3 - v16, v16 + a3);
      v19 = a2;
      v20 = v18 / a2;
      if (v20 <= 0.0)
      {
        goto LABEL_145;
      }

      a5 = a6 * 0.5;
      v21 = a4 - a6 * 0.5;
      a4 = vabdd_f64(v21, a4 + a6 * 0.5);
      v22 = a4 / v19;
      if (a4 / v19 <= 0.0)
      {
        goto LABEL_145;
      }

      v139 = &_swiftEmptyDictionarySingleton;
      if (!v8)
      {
        v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
        if (v8)
        {
          break;
        }

        goto LABEL_64;
      }

      v8 = _CocoaArrayWrapper.endIndex.getter();
      if (v8)
      {
        break;
      }

LABEL_64:
      v51 = &_swiftEmptyDictionarySingleton;
LABEL_65:
      v7 = _swiftEmptyArrayStorage;
      v138 = _swiftEmptyArrayStorage;
      v52 = (v51 + 8);
      v53 = 1 << *(v51 + 32);
      if (v53 < 64)
      {
        v54 = ~(-1 << v53);
      }

      else
      {
        v54 = -1;
      }

      v55 = v54 & v51[8];
      v56 = (v53 + 63) >> 6;

      v57 = 0;
      *&a3 = 134218242;
      v132 = v56;
      v134 = (v51 + 8);
LABEL_69:
      v58 = v57;
      if (!v55)
      {
        goto LABEL_71;
      }

      do
      {
        v57 = v58;
LABEL_74:
        v59 = *(v51[7] + ((v57 << 9) | (8 * __clz(__rbit64(v55)))));
        v60 = one-time initialization token for assets;

        if (v60 != -1)
        {
          swift_once();
        }

        v61 = type metadata accessor for Logger();
        __swift_project_value_buffer(v61, static MOAngelLogger.assets);

        a2 = Logger.logObject.getter();
        v62 = static os_log_type_t.debug.getter();
        v63 = v59 >> 62;
        if (os_log_type_enabled(a2, v62))
        {
          v64 = swift_slowAlloc();
          *v64 = 134217984;
          if (v63)
          {
            v65 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v65 = *(&dword_10 + (v59 & 0xFFFFFFFFFFFFFF8));
          }

          *(v64 + 4) = v65;

          _os_log_impl(&dword_0, a2, v62, "[ClusterPins] Group Count %ld", v64, 0xCu);
        }

        else
        {
        }

        v55 &= v55 - 1;
        v8 = (v59 & 0xFFFFFFFFFFFFFF8);
        if (v63)
        {
          if (v59 >= 0)
          {
            a2 = (v59 & 0xFFFFFFFFFFFFFF8);
          }

          else
          {
            a2 = v59;
          }

          v67 = _CocoaArrayWrapper.endIndex.getter();
          if (v67 <= 1)
          {
            if (_CocoaArrayWrapper.endIndex.getter())
            {
LABEL_94:
              if ((v59 & 0xC000000000000001) != 0)
              {
                specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (!*(&dword_10 + (v59 & 0xFFFFFFFFFFFFFF8)))
                {
                  goto LABEL_149;
                }

                v68 = *(v59 + 32);
              }

              v69 = Logger.logObject.getter();
              v70 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v69, v70))
              {
                v8 = swift_slowAlloc();
                *v8 = 0;
                _os_log_impl(&dword_0, v69, v70, "[ClusterPins] Single location pass through", v8, 2u);
              }

              a2 = &v138;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              v56 = v132;
              v52 = v134;
              if (*(&dword_10 + (v138 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v138 & 0xFFFFFFFFFFFFFF8)) >> 1)
              {
                v8 = *(&dword_10 + (v138 & 0xFFFFFFFFFFFFFF8));
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              v7 = v138;
              goto LABEL_69;
            }
          }

          else
          {
            v121 = v59 & 0xFFFFFFFFFFFFFF8;
            v8 = v67;
            v137 = 0;
            v66 = _CocoaArrayWrapper.endIndex.getter();
            if (v66)
            {
              v119 = v8;
              v120 = v51;
              if (v66 < 1)
              {
                __break(1u);
LABEL_131:

                return v7;
              }

              goto LABEL_103;
            }
          }
        }

        else
        {
          v66 = *(&dword_10 + (v59 & 0xFFFFFFFFFFFFFF8));
          if (v66 > 1)
          {
            v120 = v51;
            v121 = v59 & 0xFFFFFFFFFFFFFF8;
            v137 = 0;
            v119 = v66;
LABEL_103:
            v71 = v66;
            v129 = v59 & 0xC000000000000001;
            swift_beginAccess();
            v72 = 0;
            v123 = v59;
            v124 = 0;
            v73 = 0.0;
            v74 = 0.0;
            v122 = v71;
            do
            {
              if (v129)
              {
                v77 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v77 = *(v59 + 8 * v72 + 32);
              }

              v78 = (*(*v77 + 240))();
              v79 = (*(*v77 + 264))();
              v80 = *(*v77 + 288);
              v75 = v80();
              if (v75)
              {
                v81 = v75;
                v82 = v80();
                if (v82)
                {
                  v83 = [v82 _poiCategory];
                  swift_unknownObjectRelease();
                  if (v83)
                  {

                    v137 = v81;
                    v75 = swift_unknownObjectRelease();
                    v124 = v81;
                  }

                  else
                  {
                    v75 = swift_unknownObjectRelease();
                  }

                  v71 = v122;
                }

                else
                {
                  v75 = swift_unknownObjectRelease();
                }

                v59 = v123;
              }

              ++v72;
              v74 = v74 + v78;
              v73 = v73 + v79;
              v76 = (v80)(v75);

              swift_unknownObjectRelease();
            }

            while (v71 != v72);
            v84 = v124;
            if (!v124 && v76)
            {
              v137 = v76;
              swift_unknownObjectRetain();
              v84 = v76;
            }

            v125 = v84;
            v85 = Logger.logObject.getter();
            v86 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v85, v86))
            {
              v87 = v71;
              v88 = swift_slowAlloc();
              v89 = swift_slowAlloc();
              *v88 = 134218242;
              *(v88 + 4) = v87;
              *(v88 + 12) = 2080;
              v135[4] = v125;
              v136 = v89;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10GEOMapItem_pSgMd, &_sSo10GEOMapItem_pSgMR);
              v90 = Optional.debugDescription.getter();
              v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v91, &v136);

              *(v88 + 14) = v92;
              _os_log_impl(&dword_0, v85, v86, "[ClusterPins] Conslidating %ld locations into a single pin, mapItem:%s", v88, 0x16u);
              __swift_destroy_boxed_opaque_existential_0(v89);
            }

            if (v129)
            {
              swift_unknownObjectRetain();
              v94 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v93 = v122;
            }

            else
            {
              v93 = v122;
              if (!*(v121 + 16))
              {
                goto LABEL_148;
              }

              v94 = *(v59 + 32);
              swift_unknownObjectRetain();
            }

            v96 = v74 / v93;
            v97 = (*(*v94 + 360))(v95);

            v98 = type metadata accessor for MOMapLocation();
            v99 = *(v98 + 48);
            v100 = *(v98 + 52);
            v101 = swift_allocObject();
            v102 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_startDate;
            v103 = type metadata accessor for Date();
            v104 = *(*(v103 - 8) + 56);
            v104(v101 + v102, 1, 1, v103);
            v104(v101 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_endDate, 1, 1, v103);
            v105 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_mapItem;
            *(v101 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_mapItem) = 0;
            v106 = v101 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_clusterCount;
            *v106 = 0;
            *(v106 + 8) = 1;
            v107 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_confidenceLevel;
            *(v101 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_confidenceLevel) = 0;
            v108 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_isWork;
            *(v101 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_isWork) = 0;
            *(v101 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_userPlaceType) = -1;
            v109 = (v101 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_enclosingArea);
            *v109 = 0;
            v109[1] = 0;
            v127 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_horizontalUncertainty;
            *(v101 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_horizontalUncertainty) = 0;
            v130 = OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_isScaledDownPOI;
            *(v101 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_isScaledDownPOI) = 0;
            v110 = (v101 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_poiCategory);
            *v110 = 0;
            v110[1] = 0xE000000000000000;
            *(v101 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_latitude) = v96;
            *(v101 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_longitude) = v73 / v119;
            v111 = (v101 + OBJC_IVAR____TtC20MomentsUIServiceCore13MOMapLocation_title);
            *v111 = 0;
            v111[1] = 0xE000000000000000;
            swift_beginAccess();
            *v106 = v122;
            *(v106 + 8) = 0;
            swift_beginAccess();
            v8 = v125;
            *(v101 + v105) = v125;
            swift_beginAccess();
            *(v101 + v107) = v97;
            swift_beginAccess();
            *(v101 + v108) = 0;
            swift_beginAccess();
            *v109 = 0;
            v109[1] = 0;
            swift_beginAccess();
            *(v101 + v127) = 0;
            swift_beginAccess();
            *(v101 + v130) = 0;
            swift_beginAccess();
            v112 = v110[1];
            *v110 = 0;
            v110[1] = 0xE000000000000000;

            a2 = &v138;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*(&dword_10 + (v138 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v138 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              v8 = *(&dword_10 + (v138 & 0xFFFFFFFFFFFFFF8));
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_unknownObjectRelease();
            v7 = v138;
            swift_unknownObjectRelease();
            v51 = v120;
            v56 = v132;
            v52 = v134;
            goto LABEL_69;
          }

          if (v66)
          {
            goto LABEL_94;
          }
        }

        v58 = v57;
        v56 = v132;
        v52 = v134;
      }

      while (v55);
LABEL_71:
      while (1)
      {
        v57 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
          break;
        }

        if (v57 >= v56)
        {
          goto LABEL_131;
        }

        v55 = *&v52[8 * v57];
        ++v58;
        if (v55)
        {
          goto LABEL_74;
        }
      }

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
      v113 = a6;
      v114 = a4;
      v115 = a3;
      v116 = a5;
      v117 = _CocoaArrayWrapper.endIndex.getter();
      a5 = v116;
      a3 = v115;
      a4 = v114;
      a6 = v113;
      if (v117 < 2)
      {
        goto LABEL_145;
      }
    }

    v128 = &a2->isa + 1;
    if (!__OFADD__(a2, 1))
    {
      v23 = 0;
      v131 = v7 & 0xC000000000000001;
      v126 = v7 & 0xFFFFFFFFFFFFFF8;
      *&a3 = 1;
      while (1)
      {
        if (v131)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v25 = (v23 + 1);
          if (__OFADD__(v23, 1))
          {
            goto LABEL_133;
          }
        }

        else
        {
          if (v23 >= *(v126 + 16))
          {
            goto LABEL_142;
          }

          v26 = *(v7 + 8 * v23 + 32);

          v25 = (v23 + 1);
          if (__OFADD__(v23, 1))
          {
            goto LABEL_133;
          }
        }

        a2 = v26;
        v27 = (*(*v26 + 240))();
        a3 = (*(*v26 + 264))();
        if ((((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL) && a3 < 0.0)
        {
          a3 = remainder(a3, 360.0) + 360.0;
        }

        a4 = (v27 - v17) / v20;
        a5 = -9.22337204e18;
        if (a4 <= -9.22337204e18)
        {
          goto LABEL_134;
        }

        a5 = 9.22337204e18;
        if (a4 >= 9.22337204e18)
        {
          goto LABEL_135;
        }

        a3 = (a3 - v21) / v22;
        if (COERCE__INT64(fabs((v27 - v17) / v20)) > 0x7FEFFFFFFFFFFFFFLL || (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_136;
        }

        a5 = -9.22337204e18;
        if (a3 <= -9.22337204e18)
        {
          goto LABEL_137;
        }

        a5 = 9.22337204e18;
        if (a3 >= 9.22337204e18)
        {
          goto LABEL_138;
        }

        v30 = a3 * v128;
        if ((a3 * v128) >> 64 != v30 >> 63)
        {
          goto LABEL_139;
        }

        v31 = a4 + v30;
        if (__OFADD__(a4, v30))
        {
          goto LABEL_140;
        }

        a2 = v139;
        if (v139[2])
        {
          specialized __RawDictionaryStorage.find<A>(_:)(v31);
          if (v32)
          {
            a2 = &v139;
            v34 = specialized Dictionary.subscript.modify(v135, v31);
            if (v33->isa)
            {
              a2 = v33;

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*(&dword_10 + (a2->isa & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (a2->isa & 0xFFFFFFFFFFFFFF8)) >> 1)
              {
                v49 = v25;
                v50 = *(&dword_10 + (a2->isa & 0xFFFFFFFFFFFFFF8));
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                v25 = v49;
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            }

            (v34)(v135, 0);

            goto LABEL_20;
          }
        }

        v133 = v25;
        v35 = v8;
        v8 = v7;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v7 = swift_allocObject();
        *(v7 + 16) = xmmword_1AC70;
        *(v7 + 32) = v26;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v135[0] = a2;
        v38 = specialized __RawDictionaryStorage.find<A>(_:)(v31);
        isa = a2[2].isa;
        v40 = (v37 & 1) == 0;
        v41 = isa + v40;
        if (__OFADD__(isa, v40))
        {
          goto LABEL_141;
        }

        v42 = v37;
        if (a2[3].isa >= v41)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v45 = v135[0];
            if ((v37 & 1) == 0)
            {
              goto LABEL_58;
            }
          }

          else
          {
            a2 = v135;
            specialized _NativeDictionary.copy()();
            v45 = v135[0];
            if ((v42 & 1) == 0)
            {
              goto LABEL_58;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v41, isUniquelyReferenced_nonNull_native);
          a2 = v135[0];
          v43 = specialized __RawDictionaryStorage.find<A>(_:)(v31);
          if ((v42 & 1) != (v44 & 1))
          {
            goto LABEL_150;
          }

          v38 = v43;
          v45 = v135[0];
          if ((v42 & 1) == 0)
          {
LABEL_58:
            v45[(v38 >> 6) + 8] |= 1 << v38;
            *(v45[6] + 8 * v38) = v31;
            *(v45[7] + 8 * v38) = v7;

            v46 = v45[2];
            v47 = __OFADD__(v46, 1);
            v48 = v46 + 1;
            if (v47)
            {
              goto LABEL_143;
            }

            v45[2] = v48;
            goto LABEL_19;
          }
        }

        v24 = v45[7];
        a2 = *(v24 + 8 * v38);
        *(v24 + 8 * v38) = v7;

LABEL_19:
        v139 = v45;
        v7 = v8;
        v8 = v35;
        v25 = v133;
LABEL_20:
        ++v23;
        if (v25 == v8)
        {
          v51 = v139;
          goto LABEL_65;
        }
      }
    }

    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

__C::CLLocationCoordinate2D __swiftcall CLLocationCoordinate2D.comparable()()
{
  if ((((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v1 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL) && v1 < 0.0)
  {
    v4 = v0;
    v5 = remainder(v1, 360.0);
    v0 = v4;
    v1 = v5 + 360.0;
  }

  result.longitude = v1;
  result.latitude = v0;
  return result;
}

void (*specialized Dictionary.subscript.modify(uint64_t **a1, uint64_t a2))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = specialized Dictionary._Variant.subscript.modify(v4, a2);
  return Dictionary.subscript.modifyspecialized ;
}

void Dictionary.subscript.modifyspecialized (void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

Swift::Void __swiftcall MOSuggestionAssetMapsClusterer.printDendogram()()
{
  v1 = OBJC_IVAR____TtC20MomentsUIServiceCore30MOSuggestionAssetMapsClusterer_results;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2[2];
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC20MomentsUIServiceCore30MOSuggestionAssetMapsClustererC7ClusterV_Tt1g5(v2[2], 0);
  v5 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster() - 8);
  v6 = specialized Sequence._copySequenceContents(initializing:)(&v7, v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v3, v2);
  swift_bridgeObjectRetain_n();
  outlined consume of Set<MOSuggestionAssetMapsClusterer.Cluster>.Iterator._Variant();
  if (v6 != v3)
  {
    __break(1u);
LABEL_4:

    v4 = _swiftEmptyArrayStorage;
  }

  v7 = v4;
  specialized MutableCollection<>.sort(by:)(&v7, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));

  specialized MOSuggestionAssetMapsClusterer.printClusters(_:)(v7);
}

__C::CLLocationCoordinate2D __swiftcall CLLocationCoordinate2D.normalized()()
{
  v2.i64[0] = v1;
  v3 = *v0.i64;
  v0.i64[0] = 0x4076800000000000;
  v4.f64[0] = NAN;
  v4.f64[1] = NAN;
  v5 = remainder(*v2.i64, *vbslq_s8(vnegq_f64(v4), v0, v2).i64);
  v6 = v3;
  result.longitude = v5;
  result.latitude = v6;
  return result;
}

uint64_t static FloatingPoint.* infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a2;
  v5 = *(*(*(a4 + 16) + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  v8 = __chkstk_darwin(AssociatedTypeWitness);
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  dispatch thunk of static Numeric.* infix(_:_:)();
  return (*(v9 + 8))(v12, a3);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySdGGMd, &_ss23_ContiguousArrayStorageCySaySdGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20MomentsUIServiceCore30MOSuggestionAssetMapsClustererC7ClusterVGMd, &_ss23_ContiguousArrayStorageCy20MomentsUIServiceCore30MOSuggestionAssetMapsClustererC7ClusterVGMR);
  v10 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC20MomentsUIServiceCore30MOSuggestionAssetMapsClustererC7ClusterV_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20MomentsUIServiceCore30MOSuggestionAssetMapsClustererC7ClusterVGMd, &_ss23_ContiguousArrayStorageCy20MomentsUIServiceCore30MOSuggestionAssetMapsClustererC7ClusterVGMR);
  v4 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
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
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
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

char *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
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
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
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

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo22CLLocationCoordinate2DVGMd, &_ss23_ContiguousArrayStorageCySo22CLLocationCoordinate2DVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20MomentsUIServiceCore30MOSuggestionAssetMapsClustererC7ClusterVGMd, &_ss23_ContiguousArrayStorageCy20MomentsUIServiceCore30MOSuggestionAssetMapsClustererC7ClusterVGMR);
  v10 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v4 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  Hasher.init(_seed:)();
  v26 = v4;
  v11 = *(v4 + 32);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
  v12 = a2;
  dispatch thunk of Hashable.hash(into:)();
  v13 = Hasher._finalize()();
  v14 = -1 << *(v9 + 32);
  v15 = v13 & ~v14;
  if ((*(v9 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v17 = *(v5 + 72);
    while (1)
    {
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(*(v9 + 48) + v17 * v15, v8);
      v18 = *(v26 + 32);
      v19 = static UUID.== infix(_:_:)();
      outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v8);
      if (v19)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v9 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(a2);
    outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(*(v9 + 48) + v17 * v15, v25);
    return 0;
  }

  else
  {
LABEL_5:
    v20 = v24;
    v21 = *v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v12, v8);
    v27 = *v20;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v8, v15, isUniquelyReferenced_nonNull_native);
    *v20 = v27;
    outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v12, v25);
    return 1;
  }
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v4 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy20MomentsUIServiceCore30MOSuggestionAssetMapsClustererC7ClusterVGMd, &_ss11_SetStorageCy20MomentsUIServiceCore30MOSuggestionAssetMapsClustererC7ClusterVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v24 = *(v38 + 72);
      outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v23 + v24 * (v20 | (v12 << 6)), v7);
      v25 = *(v11 + 40);
      Hasher.init(_seed:)();
      v26 = *(v39 + 32);
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v11 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v7, *(v11 + 48) + v19 * v24);
      ++*(v11 + 16);
      v8 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v28 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  Hasher.init(_seed:)();
  v15 = *(v7 + 32);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v16 = Hasher._finalize()();
  v17 = -1 << *(v13 + 32);
  a2 = v16 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v29 + 72);
    do
    {
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(*(v13 + 48) + v19 * a2, v10);
      v20 = *(v7 + 32);
      v21 = static UUID.== infix(_:_:)();
      outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v10);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = *v28;
  *(*v28 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(a1, *(v22 + 48) + *(v29 + 72) * a2);
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v22 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy20MomentsUIServiceCore30MOSuggestionAssetMapsClustererC7ClusterVGMd, &_ss11_SetStorageCy20MomentsUIServiceCore30MOSuggestionAssetMapsClustererC7ClusterVGMR);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(*(v7 + 48) + v22, v6);
        result = outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v6, *(v9 + 48) + v22);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v4 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy20MomentsUIServiceCore30MOSuggestionAssetMapsClustererC7ClusterVGMd, &_ss11_SetStorageCy20MomentsUIServiceCore30MOSuggestionAssetMapsClustererC7ClusterVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v8 + 16))
  {
    v35 = v2;
    v36 = v8;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v24 = *(v37 + 72);
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v23 + v24 * (v20 | (v12 << 6)), v7);
      v25 = *(v11 + 40);
      Hasher.init(_seed:)();
      v26 = *(v38 + 32);
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v11 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v7, *(v11 + 48) + v19 * v24);
      ++*(v11 + 16);
      v8 = v36;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v35;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}