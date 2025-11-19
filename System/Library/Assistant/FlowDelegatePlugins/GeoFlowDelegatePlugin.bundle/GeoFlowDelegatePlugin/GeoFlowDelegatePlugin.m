uint64_t specialized GeoCATModel.getID()(uint64_t a1, uint64_t a2, int a3)
{
  v6 = type metadata accessor for Mirror();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = &type metadata for GeoLabel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21GeoFlowDelegatePlugin0A5LabelOmMd, &_s21GeoFlowDelegatePlugin0A5LabelOmMR);
  v42 = String.init<A>(describing:)();
  v43 = v11;
  v47 = &type metadata for GeoLabel;
  v44 = a1;
  v45 = a2;
  v46 = a3;
  v41 = a3;
  outlined copy of GeoLabel(a1, a2, a3);
  Mirror.init(reflecting:)();
  v12 = Mirror.children.getter();
  (*(v7 + 8))(v10, v6);
  v13 = v12[2];
  v14 = v12[3];
  v16 = v12[4];
  v15 = v12[5];
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v17 = dispatch thunk of _AnyIndexBox._typeID.getter();
  swift_getObjectType();
  result = dispatch thunk of _AnyIndexBox._typeID.getter();
  if (v17 != result)
  {
    __break(1u);
    return result;
  }

  v19 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
  swift_unknownObjectRelease();
  if (v19)
  {
    swift_unknownObjectRelease();

LABEL_5:
    v48 = a1;
    v49 = a2;
    LOBYTE(v50[0]) = v41;
    outlined copy of GeoLabel(a1, a2, v41);
    v21 = String.init<A>(describing:)();
    v20 = v22;

    goto LABEL_6;
  }

  dispatch thunk of _AnyCollectionBox.subscript.getter();
  swift_unknownObjectRelease();

  v21 = v48;
  v20 = v49;
  __swift_destroy_boxed_opaque_existential_0Tm(v50);
  if (!v20)
  {
    goto LABEL_5;
  }

LABEL_6:
  v48 = v42;
  v49 = v43;

  v23._countAndFlagsBits = 35;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);

  v25 = v48;
  v24 = v49;
  specialized Collection.first.getter(v21, v20);
  if (v26)
  {
    v27 = Character.uppercased()();
    countAndFlagsBits = v27._countAndFlagsBits;
    object = v27._object;
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  v48 = v25;
  v49 = v24;

  v30._countAndFlagsBits = countAndFlagsBits;
  v30._object = object;
  String.append(_:)(v30);

  v31 = v48;
  v32 = v49;
  v33 = specialized Collection.dropFirst(_:)(1, v21, v20);
  v35 = v34;
  v37 = v36;
  v39 = v38;

  v44 = v31;
  v45 = v32;
  v48 = v33;
  v49 = v35;
  v50[0] = v37;
  v50[1] = v39;
  lazy protocol witness table accessor for type Substring and conformance Substring();
  String.append<A>(contentsOf:)();

  return v44;
}

uint64_t specialized GeoCATModel.getID()()
{
  v1 = v0;
  v2 = type metadata accessor for ContactResolution(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v42 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Mirror();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21GeoFlowDelegatePlugin17ContactResolutionOmMd, &_s21GeoFlowDelegatePlugin17ContactResolutionOmMR);
  v44 = String.init<A>(describing:)();
  v11 = v10;
  v45[3] = v2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v45);
  v43 = v1;
  outlined init with copy of TrafficIncident(v1, boxed_opaque_existential_0, type metadata accessor for ContactResolution);
  Mirror.init(reflecting:)();
  v13 = Mirror.children.getter();
  (*(v6 + 8))(v9, v5);
  v14 = v13[2];
  v15 = v13[3];
  v17 = v13[4];
  v16 = v13[5];
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v18 = dispatch thunk of _AnyIndexBox._typeID.getter();
  swift_getObjectType();
  result = dispatch thunk of _AnyIndexBox._typeID.getter();
  if (v18 != result)
  {
    __break(1u);
    return result;
  }

  v20 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
  swift_unknownObjectRelease();
  if (v20)
  {
    swift_unknownObjectRelease();

LABEL_5:
    outlined init with copy of TrafficIncident(v43, v42, type metadata accessor for ContactResolution);
    v22 = String.init<A>(describing:)();
    v21 = v23;

    goto LABEL_6;
  }

  dispatch thunk of _AnyCollectionBox.subscript.getter();
  swift_unknownObjectRelease();

  v22 = v46;
  v21 = v47;
  __swift_destroy_boxed_opaque_existential_0Tm(v48);
  if (!v21)
  {
    goto LABEL_5;
  }

LABEL_6:
  v46 = v44;
  v47 = v11;

  v24._countAndFlagsBits = 35;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);

  v26 = v46;
  v25 = v47;
  specialized Collection.first.getter(v22, v21);
  if (v27)
  {
    v28 = Character.uppercased()();
    countAndFlagsBits = v28._countAndFlagsBits;
    object = v28._object;
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  v46 = v26;
  v47 = v25;

  v31._countAndFlagsBits = countAndFlagsBits;
  v31._object = object;
  String.append(_:)(v31);

  v32 = v46;
  v33 = v47;
  v34 = specialized Collection.dropFirst(_:)(1, v22, v21);
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v45[0] = v32;
  v45[1] = v33;
  v46 = v34;
  v47 = v36;
  v48[0] = v38;
  v48[1] = v40;
  lazy protocol witness table accessor for type Substring and conformance Substring();
  String.append<A>(contentsOf:)();

  return v45[0];
}

uint64_t specialized GeoCATModel.getID()(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = type metadata accessor for Mirror();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v47 = String.init<A>(describing:)();
  v48 = v17;
  v49 = a1;
  v50 = a2;
  v46[0] = a3;
  v46[1] = a4;
  v51 = a3;
  v52 = a4;
  outlined copy of SaveParkingLocation(a1);
  Mirror.init(reflecting:)();
  v18 = Mirror.children.getter();
  (*(v13 + 8))(v16, v12);
  v19 = v18[2];
  v20 = v18[3];
  v22 = v18[4];
  v21 = v18[5];
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v23 = dispatch thunk of _AnyIndexBox._typeID.getter();
  swift_getObjectType();
  result = dispatch thunk of _AnyIndexBox._typeID.getter();
  if (v23 != result)
  {
    __break(1u);
    return result;
  }

  v25 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
  swift_unknownObjectRelease();
  if (v25)
  {
    swift_unknownObjectRelease();

LABEL_5:
    v53 = a1;
    v54 = a2;
    v55[0] = v46[0];
    outlined copy of SaveParkingLocation(a1);
    v27 = String.init<A>(describing:)();
    v26 = v28;

    goto LABEL_6;
  }

  dispatch thunk of _AnyCollectionBox.subscript.getter();
  swift_unknownObjectRelease();

  v27 = v53;
  v26 = v54;
  __swift_destroy_boxed_opaque_existential_0Tm(v55);
  if (!v26)
  {
    goto LABEL_5;
  }

LABEL_6:
  v53 = v47;
  v54 = v48;

  v29._countAndFlagsBits = 35;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);

  v31 = v53;
  v30 = v54;
  specialized Collection.first.getter(v27, v26);
  if (v32)
  {
    v33 = Character.uppercased()();
    countAndFlagsBits = v33._countAndFlagsBits;
    object = v33._object;
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  v53 = v31;
  v54 = v30;

  v36._countAndFlagsBits = countAndFlagsBits;
  v36._object = object;
  String.append(_:)(v36);

  v37 = v53;
  v38 = v54;
  v39 = specialized Collection.dropFirst(_:)(1, v27, v26);
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v49 = v37;
  v50 = v38;
  v53 = v39;
  v54 = v41;
  v55[0] = v43;
  v55[1] = v45;
  lazy protocol witness table accessor for type Substring and conformance Substring();
  String.append<A>(contentsOf:)();

  return v49;
}

uint64_t specialized GeoCATModel.getID()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = v4;
  v9 = a1(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v48 = &v48 - v11;
  v12 = type metadata accessor for Mirror();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v51 = String.init<A>(describing:)();
  v18 = v17;
  v52[3] = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v52);
  v49 = v8;
  v50 = a4;
  outlined init with copy of TrafficIncident(v8, boxed_opaque_existential_0, a4);
  Mirror.init(reflecting:)();
  v20 = Mirror.children.getter();
  (*(v13 + 8))(v16, v12);
  v21 = v20[2];
  v22 = v20[3];
  v24 = v20[4];
  v23 = v20[5];
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v25 = dispatch thunk of _AnyIndexBox._typeID.getter();
  swift_getObjectType();
  result = dispatch thunk of _AnyIndexBox._typeID.getter();
  if (v25 != result)
  {
    __break(1u);
    return result;
  }

  v27 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
  swift_unknownObjectRelease();
  if (v27)
  {
    swift_unknownObjectRelease();

LABEL_5:
    outlined init with copy of TrafficIncident(v49, v48, v50);
    v29 = String.init<A>(describing:)();
    v28 = v30;

    goto LABEL_6;
  }

  dispatch thunk of _AnyCollectionBox.subscript.getter();
  swift_unknownObjectRelease();

  v29 = v53;
  v28 = v54;
  __swift_destroy_boxed_opaque_existential_0Tm(v55);
  if (!v28)
  {
    goto LABEL_5;
  }

LABEL_6:
  v53 = v51;
  v54 = v18;

  v31._countAndFlagsBits = 35;
  v31._object = 0xE100000000000000;
  String.append(_:)(v31);

  v33 = v53;
  v32 = v54;
  specialized Collection.first.getter(v29, v28);
  if (v34)
  {
    v35 = Character.uppercased()();
    countAndFlagsBits = v35._countAndFlagsBits;
    object = v35._object;
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  v53 = v33;
  v54 = v32;

  v38._countAndFlagsBits = countAndFlagsBits;
  v38._object = object;
  String.append(_:)(v38);

  v39 = v53;
  v40 = v54;
  v41 = specialized Collection.dropFirst(_:)(1, v29, v28);
  v43 = v42;
  v45 = v44;
  v47 = v46;

  v52[0] = v39;
  v52[1] = v40;
  v53 = v41;
  v54 = v43;
  v55[0] = v45;
  v55[1] = v47;
  lazy protocol witness table accessor for type Substring and conformance Substring();
  String.append<A>(contentsOf:)();

  return v52[0];
}

uint64_t specialized GeoCATModel.getID()(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Mirror();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = &type metadata for LocationSearch;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21GeoFlowDelegatePlugin14LocationSearchOmMd, &_s21GeoFlowDelegatePlugin14LocationSearchOmMR);
  v38 = String.init<A>(describing:)();
  v39 = v9;
  v42 = &type metadata for LocationSearch;
  v40 = a1;
  v41 = a2;
  outlined copy of LocationSearch(a1);
  Mirror.init(reflecting:)();
  v10 = Mirror.children.getter();
  (*(v5 + 8))(v8, v4);
  v11 = v10[2];
  v12 = v10[3];
  v13 = v10[4];
  v14 = v10[5];
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v15 = dispatch thunk of _AnyIndexBox._typeID.getter();
  swift_getObjectType();
  result = dispatch thunk of _AnyIndexBox._typeID.getter();
  if (v15 != result)
  {
    __break(1u);
    return result;
  }

  v17 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
  swift_unknownObjectRelease();
  if (v17)
  {
    swift_unknownObjectRelease();

LABEL_5:
    v43 = a1;
    v44 = a2;
    outlined copy of LocationSearch(a1);
    v19 = String.init<A>(describing:)();
    v18 = v20;

    goto LABEL_6;
  }

  dispatch thunk of _AnyCollectionBox.subscript.getter();
  swift_unknownObjectRelease();

  v19 = v43;
  v18 = v44;
  __swift_destroy_boxed_opaque_existential_0Tm(v45);
  if (!v18)
  {
    goto LABEL_5;
  }

LABEL_6:
  v43 = v38;
  v44 = v39;

  v21._countAndFlagsBits = 35;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);

  v23 = v43;
  v22 = v44;
  specialized Collection.first.getter(v19, v18);
  if (v24)
  {
    v25 = Character.uppercased()();
    countAndFlagsBits = v25._countAndFlagsBits;
    object = v25._object;
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  v43 = v23;
  v44 = v22;

  v28._countAndFlagsBits = countAndFlagsBits;
  v28._object = object;
  String.append(_:)(v28);

  v29 = v43;
  v30 = v44;
  v31 = specialized Collection.dropFirst(_:)(1, v19, v18);
  v33 = v32;
  v35 = v34;
  v37 = v36;

  v40 = v29;
  v41 = v30;
  v43 = v31;
  v44 = v33;
  v45[0] = v35;
  v45[1] = v37;
  lazy protocol witness table accessor for type Substring and conformance Substring();
  String.append<A>(contentsOf:)();

  return v40;
}

uint64_t specialized GeoCATModel.getID()(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t))
{
  v10 = type metadata accessor for Mirror();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v15 = String.init<A>(describing:)();
  v48 = a2;
  v49 = v15;
  v17 = v16;
  v52 = a2;
  v50 = a1;
  v47 = a5;
  a5(a1);
  Mirror.init(reflecting:)();
  v18 = Mirror.children.getter();
  (*(v11 + 8))(v14, v10);
  v19 = v18[2];
  v20 = v18[3];
  v22 = v18[4];
  v21 = v18[5];
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v23 = dispatch thunk of _AnyIndexBox._typeID.getter();
  swift_getObjectType();
  result = dispatch thunk of _AnyIndexBox._typeID.getter();
  if (v23 != result)
  {
    __break(1u);
    return result;
  }

  v25 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
  swift_unknownObjectRelease();
  if (v25)
  {
    swift_unknownObjectRelease();

LABEL_5:
    v53 = a1;
    v47(a1);
    v27 = String.init<A>(describing:)();
    v26 = v28;

    goto LABEL_6;
  }

  dispatch thunk of _AnyCollectionBox.subscript.getter();
  swift_unknownObjectRelease();

  v27 = v53;
  v26 = v54;
  __swift_destroy_boxed_opaque_existential_0Tm(v55);
  if (!v26)
  {
    goto LABEL_5;
  }

LABEL_6:
  v53 = v49;
  v54 = v17;

  v29._countAndFlagsBits = 35;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);

  v31 = v53;
  v30 = v54;
  specialized Collection.first.getter(v27, v26);
  if (v32)
  {
    v33 = Character.uppercased()();
    countAndFlagsBits = v33._countAndFlagsBits;
    object = v33._object;
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  v53 = v31;
  v54 = v30;

  v36._countAndFlagsBits = countAndFlagsBits;
  v36._object = object;
  String.append(_:)(v36);

  v37 = v53;
  v38 = v54;
  v39 = specialized Collection.dropFirst(_:)(1, v27, v26);
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v50 = v37;
  v51 = v38;
  v53 = v39;
  v54 = v41;
  v55[0] = v43;
  v55[1] = v45;
  lazy protocol witness table accessor for type Substring and conformance Substring();
  String.append<A>(contentsOf:)();

  return v50;
}

uint64_t specialized GeoCATModel.getID()(ValueMetadata *a1)
{
  v2 = type metadata accessor for Mirror();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = &type metadata for Compass;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21GeoFlowDelegatePlugin7CompassOmMd, &_s21GeoFlowDelegatePlugin7CompassOmMR);
  v38 = String.init<A>(describing:)();
  v39 = a1;
  v8 = v7;
  v41 = &type metadata for Compass;

  Mirror.init(reflecting:)();
  v9 = Mirror.children.getter();
  (*(v3 + 8))(v6, v2);
  v10 = v9[2];
  v11 = v9[3];
  v12 = v9[4];
  v13 = v9[5];
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of _AnyIndexBox._typeID.getter();
  swift_getObjectType();
  result = dispatch thunk of _AnyIndexBox._typeID.getter();
  if (v14 != result)
  {
    __break(1u);
    return result;
  }

  v16 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
  swift_unknownObjectRelease();
  if (v16)
  {
    swift_unknownObjectRelease();

LABEL_5:
    v42 = a1;

    v18 = String.init<A>(describing:)();
    v17 = v19;

    goto LABEL_6;
  }

  dispatch thunk of _AnyCollectionBox.subscript.getter();
  swift_unknownObjectRelease();

  v18 = v42;
  v17 = v43;
  __swift_destroy_boxed_opaque_existential_0Tm(v44);
  if (!v17)
  {
    goto LABEL_5;
  }

LABEL_6:
  v42 = v38;
  v43 = v8;

  v20._countAndFlagsBits = 35;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);

  v22 = v42;
  v21 = v43;
  specialized Collection.first.getter(v18, v17);
  if (v23)
  {
    v24 = Character.uppercased()();
    countAndFlagsBits = v24._countAndFlagsBits;
    object = v24._object;
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  v42 = v22;
  v43 = v21;

  v27._countAndFlagsBits = countAndFlagsBits;
  v27._object = object;
  String.append(_:)(v27);

  v28 = v42;
  v29 = v43;
  v30 = specialized Collection.dropFirst(_:)(1, v18, v17);
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v39 = v28;
  v40 = v29;
  v42 = v30;
  v43 = v32;
  v44[0] = v34;
  v44[1] = v36;
  lazy protocol witness table accessor for type Substring and conformance Substring();
  String.append<A>(contentsOf:)();

  return v39;
}

uint64_t specialized GeoCATModel.getID()(char a1)
{
  v2 = type metadata accessor for Mirror();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = &type metadata for LocationServices;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21GeoFlowDelegatePlugin16LocationServicesOmMd, &_s21GeoFlowDelegatePlugin16LocationServicesOmMR);
  v38 = String.init<A>(describing:)();
  v8 = v7;
  v41 = &type metadata for LocationServices;
  LOBYTE(v39) = a1;
  Mirror.init(reflecting:)();
  v9 = Mirror.children.getter();
  (*(v3 + 8))(v6, v2);
  v10 = v9[2];
  v11 = v9[3];
  v12 = v9[4];
  v13 = v9[5];
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of _AnyIndexBox._typeID.getter();
  swift_getObjectType();
  result = dispatch thunk of _AnyIndexBox._typeID.getter();
  if (v14 != result)
  {
    __break(1u);
    return result;
  }

  v16 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
  swift_unknownObjectRelease();
  if (v16)
  {
    swift_unknownObjectRelease();

LABEL_5:
    LOBYTE(v42) = a1;
    v18 = String.init<A>(describing:)();
    v17 = v19;

    goto LABEL_6;
  }

  dispatch thunk of _AnyCollectionBox.subscript.getter();
  swift_unknownObjectRelease();

  v18 = v42;
  v17 = v43;
  __swift_destroy_boxed_opaque_existential_0Tm(v44);
  if (!v17)
  {
    goto LABEL_5;
  }

LABEL_6:
  v42 = v38;
  v43 = v8;

  v20._countAndFlagsBits = 35;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);

  v22 = v42;
  v21 = v43;
  specialized Collection.first.getter(v18, v17);
  if (v23)
  {
    v24 = Character.uppercased()();
    countAndFlagsBits = v24._countAndFlagsBits;
    object = v24._object;
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  v42 = v22;
  v43 = v21;

  v27._countAndFlagsBits = countAndFlagsBits;
  v27._object = object;
  String.append(_:)(v27);

  v28 = v42;
  v29 = v43;
  v30 = specialized Collection.dropFirst(_:)(1, v18, v17);
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v39 = v28;
  v40 = v29;
  v42 = v30;
  v43 = v32;
  v44[0] = v34;
  v44[1] = v36;
  lazy protocol witness table accessor for type Substring and conformance Substring();
  String.append<A>(contentsOf:)();

  return v39;
}

Swift::String __swiftcall GeoCATModel.getID()()
{
  v2 = v1;
  v3 = v0;
  v4 = *(v0 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v47 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Mirror();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  DynamicType = swift_getDynamicType();
  swift_getMetatypeMetadata();
  v49 = String.init<A>(describing:)();
  v50 = v12;
  v53 = v3;
  v13 = __swift_allocate_boxed_opaque_existential_0(&v51);
  v14 = *(v4 + 16);
  v48 = v2;
  v46 = v14;
  v14(v13, v2, v3);
  Mirror.init(reflecting:)();
  v15 = Mirror.children.getter();
  (*(v8 + 8))(v11, v7);
  v16 = v15[2];
  v17 = v15[3];
  v19 = v15[4];
  v18 = v15[5];
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v20 = dispatch thunk of _AnyIndexBox._typeID.getter();
  swift_getObjectType();
  v21 = dispatch thunk of _AnyIndexBox._typeID.getter();
  if (v20 != v21)
  {
    __break(1u);
    goto LABEL_11;
  }

  v23 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
  swift_unknownObjectRelease();
  if (v23)
  {
    swift_unknownObjectRelease();

LABEL_5:
    v46(v47, v48, v3);
    v25 = String.init<A>(describing:)();
    v24 = v26;

    goto LABEL_6;
  }

  dispatch thunk of _AnyCollectionBox.subscript.getter();
  swift_unknownObjectRelease();

  v25 = DynamicType;
  v24 = v55;
  __swift_destroy_boxed_opaque_existential_0Tm(v56);
  if (!v24)
  {
    goto LABEL_5;
  }

LABEL_6:
  DynamicType = v49;
  v55 = v50;

  v27._countAndFlagsBits = 35;
  v27._object = 0xE100000000000000;
  String.append(_:)(v27);

  v29 = DynamicType;
  v28 = v55;
  specialized Collection.first.getter(v25, v24);
  if (v30)
  {
    v31 = Character.uppercased()();
    countAndFlagsBits = v31._countAndFlagsBits;
    object = v31._object;
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  DynamicType = v29;
  v55 = v28;

  v34._countAndFlagsBits = countAndFlagsBits;
  v34._object = object;
  String.append(_:)(v34);

  v35 = DynamicType;
  v36 = v55;
  v37 = specialized Collection.dropFirst(_:)(1, v25, v24);
  v39 = v38;
  v41 = v40;
  v43 = v42;

  v51 = v35;
  v52 = v36;
  DynamicType = v37;
  v55 = v39;
  v56[0] = v41;
  v56[1] = v43;
  lazy protocol witness table accessor for type Substring and conformance Substring();
  String.append<A>(contentsOf:)();

  v21 = v51;
  v22 = v52;
LABEL_11:
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

uint64_t specialized Collection.first.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return String.subscript.getter();
  }

  else
  {
    return 0;
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t specialized GeoCATModel.getParams()(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v90) = a3;
  v5 = type metadata accessor for Mirror.DisplayStyle();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v86 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSg_AEtMd, &_ss6MirrorV12DisplayStyleOSg_AEtMR);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v13 = &v82 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v87 = (&v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __chkstk_darwin(v16);
  v20 = &v82 - v19;
  __chkstk_darwin(v18);
  v22 = &v82 - v21;
  v23 = type metadata accessor for Mirror();
  v24 = *(v23 - 8);
  v88 = v23;
  v89 = v24;
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v85 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v82 - v28;
  v110 = &type metadata for GeoLabel;
  v108[0] = a1;
  v108[1] = a2;
  v109 = v90;
  outlined copy of GeoLabel(a1, a2, v90);
  Mirror.init(reflecting:)();
  v90 = v29;
  Mirror.displayStyle.getter();
  (*(v6 + 104))(v20, enum case for Mirror.DisplayStyle.enum(_:), v5);
  (*(v6 + 56))(v20, 0, 1, v5);
  v30 = *(v10 + 56);
  outlined init with copy of Mirror.DisplayStyle?(v22, v13, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  outlined init with copy of Mirror.DisplayStyle?(v20, &v13[v30], &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v31 = *(v6 + 48);
  if (v31(v13, 1, v5) == 1)
  {
    outlined destroy of Mirror.DisplayStyle?(v20, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
    outlined destroy of Mirror.DisplayStyle?(v22, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
    if (v31(&v13[v30], 1, v5) == 1)
    {
      outlined destroy of Mirror.DisplayStyle?(v13, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  outlined init with copy of Mirror.DisplayStyle?(v13, v87, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  if (v31(&v13[v30], 1, v5) == 1)
  {
    outlined destroy of Mirror.DisplayStyle?(v20, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
    outlined destroy of Mirror.DisplayStyle?(v22, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
    (*(v6 + 8))(v87, v5);
LABEL_6:
    outlined destroy of Mirror.DisplayStyle?(v13, &_ss6MirrorV12DisplayStyleOSg_AEtMd, &_ss6MirrorV12DisplayStyleOSg_AEtMR);
LABEL_11:
    v42 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
    (*(v89 + 8))(v90, v88);
    return v42;
  }

  v32 = v86;
  (*(v6 + 32))(v86, &v13[v30], v5);
  v33 = v87;
  LODWORD(v84) = dispatch thunk of static Equatable.== infix(_:_:)();
  v34 = *(v6 + 8);
  v34(v32, v5);
  outlined destroy of Mirror.DisplayStyle?(v20, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  outlined destroy of Mirror.DisplayStyle?(v22, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v34(v33, v5);
  outlined destroy of Mirror.DisplayStyle?(v13, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  if ((v84 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v35 = Mirror.children.getter();
  v36 = v35[2];
  v37 = v35[3];
  v38 = v35[4];
  v39 = v35[5];
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v40 = dispatch thunk of _AnyIndexBox._typeID.getter();
  swift_getObjectType();
  if (v40 == dispatch thunk of _AnyIndexBox._typeID.getter())
  {
    v41 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    if (v41)
    {
      swift_unknownObjectRelease();

      goto LABEL_11;
    }

    dispatch thunk of _AnyCollectionBox.subscript.getter();
    swift_unknownObjectRelease();

    outlined init with copy of Mirror.DisplayStyle?(v108, &v104, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);

    v44 = v85;
    Mirror.init(reflecting:)();
    v45 = Mirror.children.getter();
    v46 = v89 + 8;
    v87 = *(v89 + 8);
    (v87)(v44, v88);

    dispatch thunk of _AnySequenceBox._makeIterator()();
    v86 = v45;

    dispatch thunk of _AnyIteratorBoxBase.next()();
    if (!v107)
    {
      v42 = &_swiftEmptyDictionarySingleton;
LABEL_53:

      outlined destroy of Mirror.DisplayStyle?(v108, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
      (v87)(v90, v88);
      return v42;
    }

    v42 = &_swiftEmptyDictionarySingleton;
    v89 = v46;
    while (1)
    {
      while (1)
      {
        v47 = v104;
        v48 = v105;
        v102[0] = v104;
        v102[1] = v105;
        outlined init with take of Any(&v106, &v103);
        if (v48)
        {
          v49 = v47 == 0xD000000000000016 && v48 == 0x80000000000BFD90;
          if (!v49 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            break;
          }
        }

        outlined destroy of Mirror.DisplayStyle?(v102, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
        dispatch thunk of _AnyIteratorBoxBase.next()();
        if (!v107)
        {
          goto LABEL_53;
        }
      }

      outlined init with copy of Mirror.DisplayStyle?(v102, &v99, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine7CATType_pMd, &_s16SiriDialogEngine7CATType_pMR);
      if (!swift_dynamicCast())
      {
        v98 = 0;
        v96 = 0u;
        v97 = 0u;
        outlined destroy of Mirror.DisplayStyle?(&v96, &_s16SiriDialogEngine7CATType_pSgMd, &_s16SiriDialogEngine7CATType_pSgMR);
        outlined init with copy of Mirror.DisplayStyle?(v102, &v99, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
        v65 = v100;
        if (!v100)
        {
          goto LABEL_59;
        }

        v66 = v99;
        outlined init with copy of Mirror.DisplayStyle?(v102, v93, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);

        outlined init with take of Any(&v94, &v96);
        LODWORD(v83) = swift_isUniquelyReferenced_nonNull_native();
        *&v92[0] = v42;
        v84 = v66;
        v85 = v65;
        v68 = specialized __RawDictionaryStorage.find<A>(_:)(v66, v65);
        v69 = v42[2];
        v70 = (v67 & 1) == 0;
        v71 = v69 + v70;
        if (__OFADD__(v69, v70))
        {
          goto LABEL_56;
        }

        if (v42[3] >= v71)
        {
          if ((v83 & 1) == 0)
          {
            v72 = v67;
            specialized _NativeDictionary.copy()();
            goto LABEL_36;
          }

          v75 = v85;
          if (v67)
          {
            goto LABEL_45;
          }

LABEL_37:
          v42 = *&v92[0];
          *(*&v92[0] + 8 * (v68 >> 6) + 64) |= 1 << v68;
          v76 = (v42[6] + 16 * v68);
          *v76 = v84;
          v76[1] = v75;
          outlined init with take of Any(&v96, (v42[7] + 32 * v68));
          v77 = v42[2];
          v63 = __OFADD__(v77, 1);
          v78 = v77 + 1;
          if (v63)
          {
            goto LABEL_58;
          }

          v42[2] = v78;
        }

        else
        {
          v72 = v67;
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v71, v83);
          v73 = specialized __RawDictionaryStorage.find<A>(_:)(v84, v85);
          if ((v72 & 1) != (v74 & 1))
          {
            goto LABEL_61;
          }

          v68 = v73;
LABEL_36:
          v75 = v85;
          if ((v72 & 1) == 0)
          {
            goto LABEL_37;
          }

LABEL_45:

          v42 = *&v92[0];
          v81 = (*(*&v92[0] + 56) + 32 * v68);
          __swift_destroy_boxed_opaque_existential_0Tm(v81);
          outlined init with take of Any(&v96, v81);
        }

        v80 = v101;
        goto LABEL_47;
      }

      outlined init with take of CATType(&v96, v93);
      outlined init with copy of Mirror.DisplayStyle?(v102, &v99, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
      v50 = v100;
      if (!v100)
      {
        goto LABEL_60;
      }

      v83 = *(&v94 + 1);
      v84 = v95;
      v85 = v99;
      __swift_project_boxed_opaque_existential_1(v93, *(&v94 + 1));
      v51 = dispatch thunk of CATType.toDictionary.getter();
      *(&v97 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      *&v96 = v51;
      outlined init with take of Any(&v96, v92);
      LODWORD(v83) = swift_isUniquelyReferenced_nonNull_native();
      v91 = v42;
      v84 = v50;
      v53 = specialized __RawDictionaryStorage.find<A>(_:)(v85, v50);
      v54 = v42[2];
      v55 = (v52 & 1) == 0;
      v56 = v54 + v55;
      if (__OFADD__(v54, v55))
      {
        goto LABEL_55;
      }

      if (v42[3] < v56)
      {
        break;
      }

      if ((v83 & 1) == 0)
      {
        v57 = v52;
        specialized _NativeDictionary.copy()();
        goto LABEL_28;
      }

      v60 = v84;
      if ((v52 & 1) == 0)
      {
LABEL_29:
        v42 = v91;
        v91[(v53 >> 6) + 8] |= 1 << v53;
        v61 = (v42[6] + 16 * v53);
        *v61 = v85;
        v61[1] = v60;
        outlined init with take of Any(v92, (v42[7] + 32 * v53));
        v62 = v42[2];
        v63 = __OFADD__(v62, 1);
        v64 = v62 + 1;
        if (v63)
        {
          goto LABEL_57;
        }

        v42[2] = v64;
        goto LABEL_42;
      }

LABEL_41:

      v42 = v91;
      v79 = (v91[7] + 32 * v53);
      __swift_destroy_boxed_opaque_existential_0Tm(v79);
      outlined init with take of Any(v92, v79);
LABEL_42:
      __swift_destroy_boxed_opaque_existential_0Tm(v101);
      v80 = v93;
LABEL_47:
      __swift_destroy_boxed_opaque_existential_0Tm(v80);
      outlined destroy of Mirror.DisplayStyle?(v102, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
      dispatch thunk of _AnyIteratorBoxBase.next()();
      if (!v107)
      {
        goto LABEL_53;
      }
    }

    v57 = v52;
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v56, v83);
    v58 = specialized __RawDictionaryStorage.find<A>(_:)(v85, v84);
    if ((v57 & 1) != (v59 & 1))
    {
      goto LABEL_61;
    }

    v53 = v58;
LABEL_28:
    v60 = v84;
    if ((v57 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_41;
  }

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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized GeoCATModel.getParams()(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v90 = a4;
  v86 = a3;
  v6 = type metadata accessor for Mirror.DisplayStyle();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v85 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSg_AEtMd, &_ss6MirrorV12DisplayStyleOSg_AEtMR);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = &v82 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v87 = (&v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __chkstk_darwin(v17);
  v21 = &v82 - v20;
  __chkstk_darwin(v19);
  v23 = &v82 - v22;
  v24 = type metadata accessor for Mirror();
  v25 = *(v24 - 8);
  v88 = v24;
  v89 = v25;
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v84 = &v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v82 - v29;
  *&v107 = a1;
  *(&v107 + 1) = a2;
  *&v108 = v86;
  *(&v108 + 1) = v90;
  outlined copy of SaveParkingLocation(a1);
  Mirror.init(reflecting:)();
  v90 = v30;
  Mirror.displayStyle.getter();
  (*(v7 + 104))(v21, enum case for Mirror.DisplayStyle.enum(_:), v6);
  (*(v7 + 56))(v21, 0, 1, v6);
  v31 = *(v11 + 56);
  outlined init with copy of Mirror.DisplayStyle?(v23, v14, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  outlined init with copy of Mirror.DisplayStyle?(v21, &v14[v31], &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v32 = *(v7 + 48);
  if (v32(v14, 1, v6) == 1)
  {
    outlined destroy of Mirror.DisplayStyle?(v21, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
    outlined destroy of Mirror.DisplayStyle?(v23, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
    if (v32(&v14[v31], 1, v6) == 1)
    {
      outlined destroy of Mirror.DisplayStyle?(v14, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  outlined init with copy of Mirror.DisplayStyle?(v14, v87, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  if (v32(&v14[v31], 1, v6) == 1)
  {
    outlined destroy of Mirror.DisplayStyle?(v21, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
    outlined destroy of Mirror.DisplayStyle?(v23, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
    (*(v7 + 8))(v87, v6);
LABEL_6:
    outlined destroy of Mirror.DisplayStyle?(v14, &_ss6MirrorV12DisplayStyleOSg_AEtMd, &_ss6MirrorV12DisplayStyleOSg_AEtMR);
LABEL_11:
    v43 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
    (*(v89 + 8))(v90, v88);
    return v43;
  }

  v33 = v85;
  (*(v7 + 32))(v85, &v14[v31], v6);
  v34 = v87;
  LODWORD(v86) = dispatch thunk of static Equatable.== infix(_:_:)();
  v35 = *(v7 + 8);
  v35(v33, v6);
  outlined destroy of Mirror.DisplayStyle?(v21, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  outlined destroy of Mirror.DisplayStyle?(v23, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v35(v34, v6);
  outlined destroy of Mirror.DisplayStyle?(v14, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  if ((v86 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v36 = Mirror.children.getter();
  v37 = v36[2];
  v38 = v36[3];
  v39 = v36[4];
  v40 = v36[5];
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v41 = dispatch thunk of _AnyIndexBox._typeID.getter();
  swift_getObjectType();
  if (v41 == dispatch thunk of _AnyIndexBox._typeID.getter())
  {
    v42 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    if (v42)
    {
      swift_unknownObjectRelease();

      goto LABEL_11;
    }

    dispatch thunk of _AnyCollectionBox.subscript.getter();
    swift_unknownObjectRelease();

    v107 = v104;
    v108 = v105;
    v109 = v106;
    outlined init with copy of Mirror.DisplayStyle?(&v107, &v104, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);

    v45 = v84;
    Mirror.init(reflecting:)();
    v46 = Mirror.children.getter();
    v47 = v89 + 8;
    v87 = *(v89 + 8);
    (v87)(v45, v88);

    dispatch thunk of _AnySequenceBox._makeIterator()();
    v86 = v46;

    dispatch thunk of _AnyIteratorBoxBase.next()();
    if (!*(&v106 + 1))
    {
      v43 = &_swiftEmptyDictionarySingleton;
LABEL_53:

      outlined destroy of Mirror.DisplayStyle?(&v107, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
      (v87)(v90, v88);
      return v43;
    }

    v43 = &_swiftEmptyDictionarySingleton;
    v89 = v47;
    while (1)
    {
      while (1)
      {
        v48 = v104;
        v102 = v104;
        outlined init with take of Any(&v105, &v103);
        if (*(&v48 + 1))
        {
          v49 = v48 == 0xD000000000000016 && *(&v48 + 1) == 0x80000000000BFD90;
          if (!v49 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            break;
          }
        }

        outlined destroy of Mirror.DisplayStyle?(&v102, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
        dispatch thunk of _AnyIteratorBoxBase.next()();
        if (!*(&v106 + 1))
        {
          goto LABEL_53;
        }
      }

      outlined init with copy of Mirror.DisplayStyle?(&v102, &v99, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine7CATType_pMd, &_s16SiriDialogEngine7CATType_pMR);
      if (!swift_dynamicCast())
      {
        v98 = 0;
        v96 = 0u;
        v97 = 0u;
        outlined destroy of Mirror.DisplayStyle?(&v96, &_s16SiriDialogEngine7CATType_pSgMd, &_s16SiriDialogEngine7CATType_pSgMR);
        outlined init with copy of Mirror.DisplayStyle?(&v102, &v99, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
        v65 = v100;
        if (!v100)
        {
          goto LABEL_59;
        }

        v66 = v99;
        outlined init with copy of Mirror.DisplayStyle?(&v102, v93, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);

        outlined init with take of Any(&v94, &v96);
        LODWORD(v83) = swift_isUniquelyReferenced_nonNull_native();
        *&v92[0] = v43;
        v84 = v66;
        v85 = v65;
        v68 = specialized __RawDictionaryStorage.find<A>(_:)(v66, v65);
        v69 = v43[2];
        v70 = (v67 & 1) == 0;
        v71 = v69 + v70;
        if (__OFADD__(v69, v70))
        {
          goto LABEL_56;
        }

        if (v43[3] >= v71)
        {
          if ((v83 & 1) == 0)
          {
            v72 = v67;
            specialized _NativeDictionary.copy()();
            goto LABEL_36;
          }

          v75 = v85;
          if (v67)
          {
            goto LABEL_45;
          }

LABEL_37:
          v43 = *&v92[0];
          *(*&v92[0] + 8 * (v68 >> 6) + 64) |= 1 << v68;
          v76 = (v43[6] + 16 * v68);
          *v76 = v84;
          v76[1] = v75;
          outlined init with take of Any(&v96, (v43[7] + 32 * v68));
          v77 = v43[2];
          v63 = __OFADD__(v77, 1);
          v78 = v77 + 1;
          if (v63)
          {
            goto LABEL_58;
          }

          v43[2] = v78;
        }

        else
        {
          v72 = v67;
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v71, v83);
          v73 = specialized __RawDictionaryStorage.find<A>(_:)(v84, v85);
          if ((v72 & 1) != (v74 & 1))
          {
            goto LABEL_61;
          }

          v68 = v73;
LABEL_36:
          v75 = v85;
          if ((v72 & 1) == 0)
          {
            goto LABEL_37;
          }

LABEL_45:

          v43 = *&v92[0];
          v81 = (*(*&v92[0] + 56) + 32 * v68);
          __swift_destroy_boxed_opaque_existential_0Tm(v81);
          outlined init with take of Any(&v96, v81);
        }

        v80 = v101;
        goto LABEL_47;
      }

      outlined init with take of CATType(&v96, v93);
      outlined init with copy of Mirror.DisplayStyle?(&v102, &v99, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
      v50 = v100;
      if (!v100)
      {
        goto LABEL_60;
      }

      v83 = *(&v94 + 1);
      v84 = v95;
      v85 = v99;
      __swift_project_boxed_opaque_existential_1(v93, *(&v94 + 1));
      v51 = dispatch thunk of CATType.toDictionary.getter();
      *(&v97 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      *&v96 = v51;
      outlined init with take of Any(&v96, v92);
      LODWORD(v83) = swift_isUniquelyReferenced_nonNull_native();
      v91 = v43;
      v84 = v50;
      v53 = specialized __RawDictionaryStorage.find<A>(_:)(v85, v50);
      v54 = v43[2];
      v55 = (v52 & 1) == 0;
      v56 = v54 + v55;
      if (__OFADD__(v54, v55))
      {
        goto LABEL_55;
      }

      if (v43[3] < v56)
      {
        break;
      }

      if ((v83 & 1) == 0)
      {
        v57 = v52;
        specialized _NativeDictionary.copy()();
        goto LABEL_28;
      }

      v60 = v84;
      if ((v52 & 1) == 0)
      {
LABEL_29:
        v43 = v91;
        v91[(v53 >> 6) + 8] |= 1 << v53;
        v61 = (v43[6] + 16 * v53);
        *v61 = v85;
        v61[1] = v60;
        outlined init with take of Any(v92, (v43[7] + 32 * v53));
        v62 = v43[2];
        v63 = __OFADD__(v62, 1);
        v64 = v62 + 1;
        if (v63)
        {
          goto LABEL_57;
        }

        v43[2] = v64;
        goto LABEL_42;
      }

LABEL_41:

      v43 = v91;
      v79 = (v91[7] + 32 * v53);
      __swift_destroy_boxed_opaque_existential_0Tm(v79);
      outlined init with take of Any(v92, v79);
LABEL_42:
      __swift_destroy_boxed_opaque_existential_0Tm(v101);
      v80 = v93;
LABEL_47:
      __swift_destroy_boxed_opaque_existential_0Tm(v80);
      outlined destroy of Mirror.DisplayStyle?(&v102, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
      dispatch thunk of _AnyIteratorBoxBase.next()();
      if (!*(&v106 + 1))
      {
        goto LABEL_53;
      }
    }

    v57 = v52;
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v56, v83);
    v58 = specialized __RawDictionaryStorage.find<A>(_:)(v85, v84);
    if ((v57 & 1) != (v59 & 1))
    {
      goto LABEL_61;
    }

    v53 = v58;
LABEL_28:
    v60 = v84;
    if ((v57 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_41;
  }

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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized GeoCATModel.getParams()(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v90 = a2;
  v4 = type metadata accessor for Mirror.DisplayStyle();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v86 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSg_AEtMd, &_ss6MirrorV12DisplayStyleOSg_AEtMR);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = &v82 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v87 = (&v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __chkstk_darwin(v15);
  v19 = &v82 - v18;
  __chkstk_darwin(v17);
  v21 = &v82 - v20;
  v22 = type metadata accessor for Mirror();
  v23 = *(v22 - 8);
  v88 = v22;
  v89 = v23;
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v85 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = (&v82 - v27);
  *(&v108 + 1) = a1(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v107);
  outlined init with copy of TrafficIncident(v2, boxed_opaque_existential_0, v90);
  Mirror.init(reflecting:)();
  v90 = v28;
  Mirror.displayStyle.getter();
  (*(v5 + 104))(v19, enum case for Mirror.DisplayStyle.enum(_:), v4);
  (*(v5 + 56))(v19, 0, 1, v4);
  v30 = *(v9 + 56);
  outlined init with copy of Mirror.DisplayStyle?(v21, v12, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  outlined init with copy of Mirror.DisplayStyle?(v19, &v12[v30], &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v31 = *(v5 + 48);
  if (v31(v12, 1, v4) == 1)
  {
    outlined destroy of Mirror.DisplayStyle?(v19, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
    outlined destroy of Mirror.DisplayStyle?(v21, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
    if (v31(&v12[v30], 1, v4) == 1)
    {
      outlined destroy of Mirror.DisplayStyle?(v12, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  outlined init with copy of Mirror.DisplayStyle?(v12, v87, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  if (v31(&v12[v30], 1, v4) == 1)
  {
    outlined destroy of Mirror.DisplayStyle?(v19, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
    outlined destroy of Mirror.DisplayStyle?(v21, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
    (*(v5 + 8))(v87, v4);
LABEL_6:
    outlined destroy of Mirror.DisplayStyle?(v12, &_ss6MirrorV12DisplayStyleOSg_AEtMd, &_ss6MirrorV12DisplayStyleOSg_AEtMR);
LABEL_11:
    v43 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
    (*(v89 + 8))(v90, v88);
    return v43;
  }

  v32 = &v12[v30];
  v33 = v86;
  (*(v5 + 32))(v86, v32, v4);
  v34 = v87;
  LODWORD(v84) = dispatch thunk of static Equatable.== infix(_:_:)();
  v35 = *(v5 + 8);
  v35(v33, v4);
  outlined destroy of Mirror.DisplayStyle?(v19, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  outlined destroy of Mirror.DisplayStyle?(v21, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v35(v34, v4);
  outlined destroy of Mirror.DisplayStyle?(v12, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  if ((v84 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v36 = Mirror.children.getter();
  v37 = v36[2];
  v38 = v36[3];
  v39 = v36[4];
  v40 = v36[5];
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v41 = dispatch thunk of _AnyIndexBox._typeID.getter();
  swift_getObjectType();
  if (v41 == dispatch thunk of _AnyIndexBox._typeID.getter())
  {
    v42 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    if (v42)
    {
      swift_unknownObjectRelease();

      goto LABEL_11;
    }

    dispatch thunk of _AnyCollectionBox.subscript.getter();
    swift_unknownObjectRelease();

    v107 = v104;
    v108 = v105;
    v109 = v106;
    outlined init with copy of Mirror.DisplayStyle?(&v107, &v104, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);

    v45 = v85;
    Mirror.init(reflecting:)();
    v46 = Mirror.children.getter();
    v47 = v89 + 8;
    v87 = *(v89 + 8);
    (v87)(v45, v88);

    dispatch thunk of _AnySequenceBox._makeIterator()();
    v86 = v46;

    dispatch thunk of _AnyIteratorBoxBase.next()();
    if (!*(&v106 + 1))
    {
      v43 = &_swiftEmptyDictionarySingleton;
LABEL_53:

      outlined destroy of Mirror.DisplayStyle?(&v107, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
      (v87)(v90, v88);
      return v43;
    }

    v43 = &_swiftEmptyDictionarySingleton;
    v89 = v47;
    while (1)
    {
      while (1)
      {
        v48 = v104;
        v102 = v104;
        outlined init with take of Any(&v105, &v103);
        if (*(&v48 + 1))
        {
          v49 = v48 == 0xD000000000000016 && *(&v48 + 1) == 0x80000000000BFD90;
          if (!v49 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            break;
          }
        }

        outlined destroy of Mirror.DisplayStyle?(&v102, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
        dispatch thunk of _AnyIteratorBoxBase.next()();
        if (!*(&v106 + 1))
        {
          goto LABEL_53;
        }
      }

      outlined init with copy of Mirror.DisplayStyle?(&v102, &v99, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine7CATType_pMd, &_s16SiriDialogEngine7CATType_pMR);
      if (!swift_dynamicCast())
      {
        v98 = 0;
        v96 = 0u;
        v97 = 0u;
        outlined destroy of Mirror.DisplayStyle?(&v96, &_s16SiriDialogEngine7CATType_pSgMd, &_s16SiriDialogEngine7CATType_pSgMR);
        outlined init with copy of Mirror.DisplayStyle?(&v102, &v99, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
        v65 = v100;
        if (!v100)
        {
          goto LABEL_59;
        }

        v66 = v99;
        outlined init with copy of Mirror.DisplayStyle?(&v102, v93, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);

        outlined init with take of Any(&v94, &v96);
        LODWORD(v83) = swift_isUniquelyReferenced_nonNull_native();
        *&v92[0] = v43;
        v84 = v66;
        v85 = v65;
        v68 = specialized __RawDictionaryStorage.find<A>(_:)(v66, v65);
        v69 = v43[2];
        v70 = (v67 & 1) == 0;
        v71 = v69 + v70;
        if (__OFADD__(v69, v70))
        {
          goto LABEL_56;
        }

        if (v43[3] >= v71)
        {
          if ((v83 & 1) == 0)
          {
            v72 = v67;
            specialized _NativeDictionary.copy()();
            goto LABEL_36;
          }

          v75 = v85;
          if (v67)
          {
            goto LABEL_45;
          }

LABEL_37:
          v43 = *&v92[0];
          *(*&v92[0] + 8 * (v68 >> 6) + 64) |= 1 << v68;
          v76 = (v43[6] + 16 * v68);
          *v76 = v84;
          v76[1] = v75;
          outlined init with take of Any(&v96, (v43[7] + 32 * v68));
          v77 = v43[2];
          v63 = __OFADD__(v77, 1);
          v78 = v77 + 1;
          if (v63)
          {
            goto LABEL_58;
          }

          v43[2] = v78;
        }

        else
        {
          v72 = v67;
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v71, v83);
          v73 = specialized __RawDictionaryStorage.find<A>(_:)(v84, v85);
          if ((v72 & 1) != (v74 & 1))
          {
            goto LABEL_61;
          }

          v68 = v73;
LABEL_36:
          v75 = v85;
          if ((v72 & 1) == 0)
          {
            goto LABEL_37;
          }

LABEL_45:

          v43 = *&v92[0];
          v81 = (*(*&v92[0] + 56) + 32 * v68);
          __swift_destroy_boxed_opaque_existential_0Tm(v81);
          outlined init with take of Any(&v96, v81);
        }

        v80 = v101;
        goto LABEL_47;
      }

      outlined init with take of CATType(&v96, v93);
      outlined init with copy of Mirror.DisplayStyle?(&v102, &v99, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
      v50 = v100;
      if (!v100)
      {
        goto LABEL_60;
      }

      v83 = *(&v94 + 1);
      v84 = v95;
      v85 = v99;
      __swift_project_boxed_opaque_existential_1(v93, *(&v94 + 1));
      v51 = dispatch thunk of CATType.toDictionary.getter();
      *(&v97 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      *&v96 = v51;
      outlined init with take of Any(&v96, v92);
      LODWORD(v83) = swift_isUniquelyReferenced_nonNull_native();
      v91 = v43;
      v84 = v50;
      v53 = specialized __RawDictionaryStorage.find<A>(_:)(v85, v50);
      v54 = v43[2];
      v55 = (v52 & 1) == 0;
      v56 = v54 + v55;
      if (__OFADD__(v54, v55))
      {
        goto LABEL_55;
      }

      if (v43[3] < v56)
      {
        break;
      }

      if ((v83 & 1) == 0)
      {
        v57 = v52;
        specialized _NativeDictionary.copy()();
        goto LABEL_28;
      }

      v60 = v84;
      if ((v52 & 1) == 0)
      {
LABEL_29:
        v43 = v91;
        v91[(v53 >> 6) + 8] |= 1 << v53;
        v61 = (v43[6] + 16 * v53);
        *v61 = v85;
        v61[1] = v60;
        outlined init with take of Any(v92, (v43[7] + 32 * v53));
        v62 = v43[2];
        v63 = __OFADD__(v62, 1);
        v64 = v62 + 1;
        if (v63)
        {
          goto LABEL_57;
        }

        v43[2] = v64;
        goto LABEL_42;
      }

LABEL_41:

      v43 = v91;
      v79 = (v91[7] + 32 * v53);
      __swift_destroy_boxed_opaque_existential_0Tm(v79);
      outlined init with take of Any(v92, v79);
LABEL_42:
      __swift_destroy_boxed_opaque_existential_0Tm(v101);
      v80 = v93;
LABEL_47:
      __swift_destroy_boxed_opaque_existential_0Tm(v80);
      outlined destroy of Mirror.DisplayStyle?(&v102, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
      dispatch thunk of _AnyIteratorBoxBase.next()();
      if (!*(&v106 + 1))
      {
        goto LABEL_53;
      }
    }

    v57 = v52;
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v56, v83);
    v58 = specialized __RawDictionaryStorage.find<A>(_:)(v85, v84);
    if ((v57 & 1) != (v59 & 1))
    {
      goto LABEL_61;
    }

    v53 = v58;
LABEL_28:
    v60 = v84;
    if ((v57 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_41;
  }

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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized GeoCATModel.getParams()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Mirror.DisplayStyle();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v85 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSg_AEtMd, &_ss6MirrorV12DisplayStyleOSg_AEtMR);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = &v81 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v86 = (&v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __chkstk_darwin(v15);
  v19 = &v81 - v18;
  __chkstk_darwin(v17);
  v21 = &v81 - v20;
  v22 = type metadata accessor for Mirror();
  v23 = *(v22 - 8);
  v87 = v22;
  v88 = v23;
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v84 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v81 - v27;
  *(&v107 + 1) = &type metadata for LocationSearch;
  *&v106 = a1;
  *(&v106 + 1) = a2;
  outlined copy of LocationSearch(a1);
  Mirror.init(reflecting:)();
  v89 = v28;
  Mirror.displayStyle.getter();
  (*(v5 + 104))(v19, enum case for Mirror.DisplayStyle.enum(_:), v4);
  (*(v5 + 56))(v19, 0, 1, v4);
  v29 = *(v9 + 56);
  outlined init with copy of Mirror.DisplayStyle?(v21, v12, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  outlined init with copy of Mirror.DisplayStyle?(v19, &v12[v29], &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v30 = v5;
  v31 = *(v5 + 48);
  if (v31(v12, 1, v4) == 1)
  {
    outlined destroy of Mirror.DisplayStyle?(v19, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
    outlined destroy of Mirror.DisplayStyle?(v21, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
    if (v31(&v12[v29], 1, v4) == 1)
    {
      outlined destroy of Mirror.DisplayStyle?(v12, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  outlined init with copy of Mirror.DisplayStyle?(v12, v86, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  if (v31(&v12[v29], 1, v4) == 1)
  {
    outlined destroy of Mirror.DisplayStyle?(v19, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
    outlined destroy of Mirror.DisplayStyle?(v21, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
    (*(v30 + 8))(v86, v4);
LABEL_6:
    outlined destroy of Mirror.DisplayStyle?(v12, &_ss6MirrorV12DisplayStyleOSg_AEtMd, &_ss6MirrorV12DisplayStyleOSg_AEtMR);
LABEL_11:
    v42 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
    (*(v88 + 8))(v89, v87);
    return v42;
  }

  v32 = v85;
  (*(v30 + 32))(v85, &v12[v29], v4);
  v33 = v86;
  LODWORD(v83) = dispatch thunk of static Equatable.== infix(_:_:)();
  v34 = *(v30 + 8);
  v34(v32, v4);
  outlined destroy of Mirror.DisplayStyle?(v19, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  outlined destroy of Mirror.DisplayStyle?(v21, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v34(v33, v4);
  outlined destroy of Mirror.DisplayStyle?(v12, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  if ((v83 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v35 = Mirror.children.getter();
  v36 = v35[2];
  v37 = v35[3];
  v38 = v35[4];
  v39 = v35[5];
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v40 = dispatch thunk of _AnyIndexBox._typeID.getter();
  swift_getObjectType();
  if (v40 == dispatch thunk of _AnyIndexBox._typeID.getter())
  {
    v41 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    if (v41)
    {
      swift_unknownObjectRelease();

      goto LABEL_11;
    }

    dispatch thunk of _AnyCollectionBox.subscript.getter();
    swift_unknownObjectRelease();

    v106 = v103;
    v107 = v104;
    v108 = v105;
    outlined init with copy of Mirror.DisplayStyle?(&v106, &v103, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);

    v44 = v84;
    Mirror.init(reflecting:)();
    v45 = Mirror.children.getter();
    v46 = v88 + 8;
    v86 = *(v88 + 8);
    (v86)(v44, v87);

    dispatch thunk of _AnySequenceBox._makeIterator()();
    v85 = v45;

    dispatch thunk of _AnyIteratorBoxBase.next()();
    if (!*(&v105 + 1))
    {
      v42 = &_swiftEmptyDictionarySingleton;
LABEL_53:

      outlined destroy of Mirror.DisplayStyle?(&v106, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
      (v86)(v89, v87);
      return v42;
    }

    v42 = &_swiftEmptyDictionarySingleton;
    v88 = v46;
    while (1)
    {
      while (1)
      {
        v47 = v103;
        v101 = v103;
        outlined init with take of Any(&v104, &v102);
        if (*(&v47 + 1))
        {
          v48 = v47 == 0xD000000000000016 && *(&v47 + 1) == 0x80000000000BFD90;
          if (!v48 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            break;
          }
        }

        outlined destroy of Mirror.DisplayStyle?(&v101, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
        dispatch thunk of _AnyIteratorBoxBase.next()();
        if (!*(&v105 + 1))
        {
          goto LABEL_53;
        }
      }

      outlined init with copy of Mirror.DisplayStyle?(&v101, &v98, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine7CATType_pMd, &_s16SiriDialogEngine7CATType_pMR);
      if (!swift_dynamicCast())
      {
        v97 = 0;
        v95 = 0u;
        v96 = 0u;
        outlined destroy of Mirror.DisplayStyle?(&v95, &_s16SiriDialogEngine7CATType_pSgMd, &_s16SiriDialogEngine7CATType_pSgMR);
        outlined init with copy of Mirror.DisplayStyle?(&v101, &v98, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
        v64 = v99;
        if (!v99)
        {
          goto LABEL_59;
        }

        v65 = v98;
        outlined init with copy of Mirror.DisplayStyle?(&v101, v92, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);

        outlined init with take of Any(&v93, &v95);
        LODWORD(v82) = swift_isUniquelyReferenced_nonNull_native();
        *&v91[0] = v42;
        v83 = v65;
        v84 = v64;
        v67 = specialized __RawDictionaryStorage.find<A>(_:)(v65, v64);
        v68 = v42[2];
        v69 = (v66 & 1) == 0;
        v70 = v68 + v69;
        if (__OFADD__(v68, v69))
        {
          goto LABEL_56;
        }

        if (v42[3] >= v70)
        {
          if ((v82 & 1) == 0)
          {
            v71 = v66;
            specialized _NativeDictionary.copy()();
            goto LABEL_36;
          }

          v74 = v84;
          if (v66)
          {
            goto LABEL_45;
          }

LABEL_37:
          v42 = *&v91[0];
          *(*&v91[0] + 8 * (v67 >> 6) + 64) |= 1 << v67;
          v75 = (v42[6] + 16 * v67);
          *v75 = v83;
          v75[1] = v74;
          outlined init with take of Any(&v95, (v42[7] + 32 * v67));
          v76 = v42[2];
          v62 = __OFADD__(v76, 1);
          v77 = v76 + 1;
          if (v62)
          {
            goto LABEL_58;
          }

          v42[2] = v77;
        }

        else
        {
          v71 = v66;
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v70, v82);
          v72 = specialized __RawDictionaryStorage.find<A>(_:)(v83, v84);
          if ((v71 & 1) != (v73 & 1))
          {
            goto LABEL_61;
          }

          v67 = v72;
LABEL_36:
          v74 = v84;
          if ((v71 & 1) == 0)
          {
            goto LABEL_37;
          }

LABEL_45:

          v42 = *&v91[0];
          v80 = (*(*&v91[0] + 56) + 32 * v67);
          __swift_destroy_boxed_opaque_existential_0Tm(v80);
          outlined init with take of Any(&v95, v80);
        }

        v79 = v100;
        goto LABEL_47;
      }

      outlined init with take of CATType(&v95, v92);
      outlined init with copy of Mirror.DisplayStyle?(&v101, &v98, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
      v49 = v99;
      if (!v99)
      {
        goto LABEL_60;
      }

      v82 = *(&v93 + 1);
      v83 = v94;
      v84 = v98;
      __swift_project_boxed_opaque_existential_1(v92, *(&v93 + 1));
      v50 = dispatch thunk of CATType.toDictionary.getter();
      *(&v96 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      *&v95 = v50;
      outlined init with take of Any(&v95, v91);
      LODWORD(v82) = swift_isUniquelyReferenced_nonNull_native();
      v90 = v42;
      v83 = v49;
      v52 = specialized __RawDictionaryStorage.find<A>(_:)(v84, v49);
      v53 = v42[2];
      v54 = (v51 & 1) == 0;
      v55 = v53 + v54;
      if (__OFADD__(v53, v54))
      {
        goto LABEL_55;
      }

      if (v42[3] < v55)
      {
        break;
      }

      if ((v82 & 1) == 0)
      {
        v56 = v51;
        specialized _NativeDictionary.copy()();
        goto LABEL_28;
      }

      v59 = v83;
      if ((v51 & 1) == 0)
      {
LABEL_29:
        v42 = v90;
        v90[(v52 >> 6) + 8] |= 1 << v52;
        v60 = (v42[6] + 16 * v52);
        *v60 = v84;
        v60[1] = v59;
        outlined init with take of Any(v91, (v42[7] + 32 * v52));
        v61 = v42[2];
        v62 = __OFADD__(v61, 1);
        v63 = v61 + 1;
        if (v62)
        {
          goto LABEL_57;
        }

        v42[2] = v63;
        goto LABEL_42;
      }

LABEL_41:

      v42 = v90;
      v78 = (v90[7] + 32 * v52);
      __swift_destroy_boxed_opaque_existential_0Tm(v78);
      outlined init with take of Any(v91, v78);
LABEL_42:
      __swift_destroy_boxed_opaque_existential_0Tm(v100);
      v79 = v92;
LABEL_47:
      __swift_destroy_boxed_opaque_existential_0Tm(v79);
      outlined destroy of Mirror.DisplayStyle?(&v101, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
      dispatch thunk of _AnyIteratorBoxBase.next()();
      if (!*(&v105 + 1))
      {
        goto LABEL_53;
      }
    }

    v56 = v51;
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v55, v82);
    v57 = specialized __RawDictionaryStorage.find<A>(_:)(v84, v83);
    if ((v56 & 1) != (v58 & 1))
    {
      goto LABEL_61;
    }

    v52 = v57;
LABEL_28:
    v59 = v83;
    if ((v56 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_41;
  }

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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized GeoCATModel.getParams()(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v90 = a3;
  v5 = type metadata accessor for Mirror.DisplayStyle();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v86 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSg_AEtMd, &_ss6MirrorV12DisplayStyleOSg_AEtMR);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v13 = &v82 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v87 = (&v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __chkstk_darwin(v16);
  v20 = &v82 - v19;
  __chkstk_darwin(v18);
  v22 = &v82 - v21;
  v23 = type metadata accessor for Mirror();
  v24 = *(v23 - 8);
  v88 = v23;
  v89 = v24;
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v85 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = (&v82 - v28);
  *(&v108 + 1) = a2;
  *&v107 = a1;
  v90(a1);
  Mirror.init(reflecting:)();
  v90 = v29;
  Mirror.displayStyle.getter();
  (*(v6 + 104))(v20, enum case for Mirror.DisplayStyle.enum(_:), v5);
  (*(v6 + 56))(v20, 0, 1, v5);
  v30 = *(v10 + 56);
  outlined init with copy of Mirror.DisplayStyle?(v22, v13, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  outlined init with copy of Mirror.DisplayStyle?(v20, &v13[v30], &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v31 = v6;
  v32 = *(v6 + 48);
  if (v32(v13, 1, v5) == 1)
  {
    outlined destroy of Mirror.DisplayStyle?(v20, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
    outlined destroy of Mirror.DisplayStyle?(v22, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
    if (v32(&v13[v30], 1, v5) == 1)
    {
      outlined destroy of Mirror.DisplayStyle?(v13, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  outlined init with copy of Mirror.DisplayStyle?(v13, v87, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  if (v32(&v13[v30], 1, v5) == 1)
  {
    outlined destroy of Mirror.DisplayStyle?(v20, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
    outlined destroy of Mirror.DisplayStyle?(v22, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
    (*(v31 + 8))(v87, v5);
LABEL_6:
    outlined destroy of Mirror.DisplayStyle?(v13, &_ss6MirrorV12DisplayStyleOSg_AEtMd, &_ss6MirrorV12DisplayStyleOSg_AEtMR);
LABEL_11:
    v43 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
    (*(v89 + 8))(v90, v88);
    return v43;
  }

  v33 = v86;
  (*(v31 + 32))(v86, &v13[v30], v5);
  v34 = v87;
  LODWORD(v84) = dispatch thunk of static Equatable.== infix(_:_:)();
  v35 = *(v31 + 8);
  v35(v33, v5);
  outlined destroy of Mirror.DisplayStyle?(v20, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  outlined destroy of Mirror.DisplayStyle?(v22, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v35(v34, v5);
  outlined destroy of Mirror.DisplayStyle?(v13, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  if ((v84 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v36 = Mirror.children.getter();
  v37 = v36[2];
  v38 = v36[3];
  v39 = v36[4];
  v40 = v36[5];
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v41 = dispatch thunk of _AnyIndexBox._typeID.getter();
  swift_getObjectType();
  if (v41 == dispatch thunk of _AnyIndexBox._typeID.getter())
  {
    v42 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    if (v42)
    {
      swift_unknownObjectRelease();

      goto LABEL_11;
    }

    dispatch thunk of _AnyCollectionBox.subscript.getter();
    swift_unknownObjectRelease();

    v107 = v104;
    v108 = v105;
    v109 = v106;
    outlined init with copy of Mirror.DisplayStyle?(&v107, &v104, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);

    v45 = v85;
    Mirror.init(reflecting:)();
    v46 = Mirror.children.getter();
    v47 = v89 + 8;
    v87 = *(v89 + 8);
    (v87)(v45, v88);

    dispatch thunk of _AnySequenceBox._makeIterator()();
    v86 = v46;

    dispatch thunk of _AnyIteratorBoxBase.next()();
    if (!*(&v106 + 1))
    {
      v43 = &_swiftEmptyDictionarySingleton;
LABEL_53:

      outlined destroy of Mirror.DisplayStyle?(&v107, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
      (v87)(v90, v88);
      return v43;
    }

    v43 = &_swiftEmptyDictionarySingleton;
    v89 = v47;
    while (1)
    {
      while (1)
      {
        v48 = v104;
        v102 = v104;
        outlined init with take of Any(&v105, &v103);
        if (*(&v48 + 1))
        {
          v49 = v48 == 0xD000000000000016 && *(&v48 + 1) == 0x80000000000BFD90;
          if (!v49 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            break;
          }
        }

        outlined destroy of Mirror.DisplayStyle?(&v102, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
        dispatch thunk of _AnyIteratorBoxBase.next()();
        if (!*(&v106 + 1))
        {
          goto LABEL_53;
        }
      }

      outlined init with copy of Mirror.DisplayStyle?(&v102, &v99, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine7CATType_pMd, &_s16SiriDialogEngine7CATType_pMR);
      if (!swift_dynamicCast())
      {
        v98 = 0;
        v96 = 0u;
        v97 = 0u;
        outlined destroy of Mirror.DisplayStyle?(&v96, &_s16SiriDialogEngine7CATType_pSgMd, &_s16SiriDialogEngine7CATType_pSgMR);
        outlined init with copy of Mirror.DisplayStyle?(&v102, &v99, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
        v65 = v100;
        if (!v100)
        {
          goto LABEL_59;
        }

        v66 = v99;
        outlined init with copy of Mirror.DisplayStyle?(&v102, v93, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);

        outlined init with take of Any(&v94, &v96);
        LODWORD(v83) = swift_isUniquelyReferenced_nonNull_native();
        *&v92[0] = v43;
        v84 = v66;
        v85 = v65;
        v68 = specialized __RawDictionaryStorage.find<A>(_:)(v66, v65);
        v69 = v43[2];
        v70 = (v67 & 1) == 0;
        v71 = v69 + v70;
        if (__OFADD__(v69, v70))
        {
          goto LABEL_56;
        }

        if (v43[3] >= v71)
        {
          if ((v83 & 1) == 0)
          {
            v72 = v67;
            specialized _NativeDictionary.copy()();
            goto LABEL_36;
          }

          v75 = v85;
          if (v67)
          {
            goto LABEL_45;
          }

LABEL_37:
          v43 = *&v92[0];
          *(*&v92[0] + 8 * (v68 >> 6) + 64) |= 1 << v68;
          v76 = (v43[6] + 16 * v68);
          *v76 = v84;
          v76[1] = v75;
          outlined init with take of Any(&v96, (v43[7] + 32 * v68));
          v77 = v43[2];
          v63 = __OFADD__(v77, 1);
          v78 = v77 + 1;
          if (v63)
          {
            goto LABEL_58;
          }

          v43[2] = v78;
        }

        else
        {
          v72 = v67;
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v71, v83);
          v73 = specialized __RawDictionaryStorage.find<A>(_:)(v84, v85);
          if ((v72 & 1) != (v74 & 1))
          {
            goto LABEL_61;
          }

          v68 = v73;
LABEL_36:
          v75 = v85;
          if ((v72 & 1) == 0)
          {
            goto LABEL_37;
          }

LABEL_45:

          v43 = *&v92[0];
          v81 = (*(*&v92[0] + 56) + 32 * v68);
          __swift_destroy_boxed_opaque_existential_0Tm(v81);
          outlined init with take of Any(&v96, v81);
        }

        v80 = v101;
        goto LABEL_47;
      }

      outlined init with take of CATType(&v96, v93);
      outlined init with copy of Mirror.DisplayStyle?(&v102, &v99, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
      v50 = v100;
      if (!v100)
      {
        goto LABEL_60;
      }

      v83 = *(&v94 + 1);
      v84 = v95;
      v85 = v99;
      __swift_project_boxed_opaque_existential_1(v93, *(&v94 + 1));
      v51 = dispatch thunk of CATType.toDictionary.getter();
      *(&v97 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      *&v96 = v51;
      outlined init with take of Any(&v96, v92);
      LODWORD(v83) = swift_isUniquelyReferenced_nonNull_native();
      v91 = v43;
      v84 = v50;
      v53 = specialized __RawDictionaryStorage.find<A>(_:)(v85, v50);
      v54 = v43[2];
      v55 = (v52 & 1) == 0;
      v56 = v54 + v55;
      if (__OFADD__(v54, v55))
      {
        goto LABEL_55;
      }

      if (v43[3] < v56)
      {
        break;
      }

      if ((v83 & 1) == 0)
      {
        v57 = v52;
        specialized _NativeDictionary.copy()();
        goto LABEL_28;
      }

      v60 = v84;
      if ((v52 & 1) == 0)
      {
LABEL_29:
        v43 = v91;
        v91[(v53 >> 6) + 8] |= 1 << v53;
        v61 = (v43[6] + 16 * v53);
        *v61 = v85;
        v61[1] = v60;
        outlined init with take of Any(v92, (v43[7] + 32 * v53));
        v62 = v43[2];
        v63 = __OFADD__(v62, 1);
        v64 = v62 + 1;
        if (v63)
        {
          goto LABEL_57;
        }

        v43[2] = v64;
        goto LABEL_42;
      }

LABEL_41:

      v43 = v91;
      v79 = (v91[7] + 32 * v53);
      __swift_destroy_boxed_opaque_existential_0Tm(v79);
      outlined init with take of Any(v92, v79);
LABEL_42:
      __swift_destroy_boxed_opaque_existential_0Tm(v101);
      v80 = v93;
LABEL_47:
      __swift_destroy_boxed_opaque_existential_0Tm(v80);
      outlined destroy of Mirror.DisplayStyle?(&v102, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
      dispatch thunk of _AnyIteratorBoxBase.next()();
      if (!*(&v106 + 1))
      {
        goto LABEL_53;
      }
    }

    v57 = v52;
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v56, v83);
    v58 = specialized __RawDictionaryStorage.find<A>(_:)(v85, v84);
    if ((v57 & 1) != (v59 & 1))
    {
      goto LABEL_61;
    }

    v53 = v58;
LABEL_28:
    v60 = v84;
    if ((v57 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_41;
  }

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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized GeoCATModel.getParams()(uint64_t a1)
{
  v2 = type metadata accessor for Mirror.DisplayStyle();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v83 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSg_AEtMd, &_ss6MirrorV12DisplayStyleOSg_AEtMR);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v79 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v84 = (&v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __chkstk_darwin(v13);
  v17 = &v79 - v16;
  __chkstk_darwin(v15);
  v19 = &v79 - v18;
  v20 = type metadata accessor for Mirror();
  v21 = *(v20 - 8);
  v85 = v20;
  v86 = v21;
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v82 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v79 - v25;
  *(&v105 + 1) = &type metadata for Compass;
  *&v104 = a1;

  Mirror.init(reflecting:)();
  v87 = v26;
  Mirror.displayStyle.getter();
  (*(v3 + 104))(v17, enum case for Mirror.DisplayStyle.enum(_:), v2);
  (*(v3 + 56))(v17, 0, 1, v2);
  v27 = *(v7 + 56);
  outlined init with copy of Mirror.DisplayStyle?(v19, v10, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  outlined init with copy of Mirror.DisplayStyle?(v17, &v10[v27], &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v28 = v3;
  v29 = *(v3 + 48);
  if (v29(v10, 1, v2) == 1)
  {
    outlined destroy of Mirror.DisplayStyle?(v17, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
    outlined destroy of Mirror.DisplayStyle?(v19, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
    if (v29(&v10[v27], 1, v2) == 1)
    {
      outlined destroy of Mirror.DisplayStyle?(v10, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  outlined init with copy of Mirror.DisplayStyle?(v10, v84, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  if (v29(&v10[v27], 1, v2) == 1)
  {
    outlined destroy of Mirror.DisplayStyle?(v17, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
    outlined destroy of Mirror.DisplayStyle?(v19, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
    (*(v28 + 8))(v84, v2);
LABEL_6:
    outlined destroy of Mirror.DisplayStyle?(v10, &_ss6MirrorV12DisplayStyleOSg_AEtMd, &_ss6MirrorV12DisplayStyleOSg_AEtMR);
LABEL_11:
    v40 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
    (*(v86 + 8))(v87, v85);
    return v40;
  }

  v30 = v83;
  (*(v28 + 32))(v83, &v10[v27], v2);
  v31 = v84;
  LODWORD(v81) = dispatch thunk of static Equatable.== infix(_:_:)();
  v32 = *(v28 + 8);
  v32(v30, v2);
  outlined destroy of Mirror.DisplayStyle?(v17, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  outlined destroy of Mirror.DisplayStyle?(v19, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v32(v31, v2);
  outlined destroy of Mirror.DisplayStyle?(v10, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  if ((v81 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v33 = Mirror.children.getter();
  v34 = v33[2];
  v35 = v33[3];
  v36 = v33[4];
  v37 = v33[5];
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v38 = dispatch thunk of _AnyIndexBox._typeID.getter();
  swift_getObjectType();
  if (v38 == dispatch thunk of _AnyIndexBox._typeID.getter())
  {
    v39 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    if (v39)
    {
      swift_unknownObjectRelease();

      goto LABEL_11;
    }

    dispatch thunk of _AnyCollectionBox.subscript.getter();
    swift_unknownObjectRelease();

    v104 = v101;
    v105 = v102;
    v106 = v103;
    outlined init with copy of Mirror.DisplayStyle?(&v104, &v101, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);

    v42 = v82;
    Mirror.init(reflecting:)();
    v43 = Mirror.children.getter();
    v44 = v86 + 8;
    v84 = *(v86 + 8);
    (v84)(v42, v85);

    dispatch thunk of _AnySequenceBox._makeIterator()();
    v83 = v43;

    dispatch thunk of _AnyIteratorBoxBase.next()();
    if (!*(&v103 + 1))
    {
      v40 = &_swiftEmptyDictionarySingleton;
LABEL_53:

      outlined destroy of Mirror.DisplayStyle?(&v104, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
      (v84)(v87, v85);
      return v40;
    }

    v40 = &_swiftEmptyDictionarySingleton;
    v86 = v44;
    while (1)
    {
      while (1)
      {
        v45 = v101;
        v99 = v101;
        outlined init with take of Any(&v102, &v100);
        if (*(&v45 + 1))
        {
          v46 = v45 == 0xD000000000000016 && *(&v45 + 1) == 0x80000000000BFD90;
          if (!v46 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            break;
          }
        }

        outlined destroy of Mirror.DisplayStyle?(&v99, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
        dispatch thunk of _AnyIteratorBoxBase.next()();
        if (!*(&v103 + 1))
        {
          goto LABEL_53;
        }
      }

      outlined init with copy of Mirror.DisplayStyle?(&v99, &v96, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine7CATType_pMd, &_s16SiriDialogEngine7CATType_pMR);
      if (!swift_dynamicCast())
      {
        v95 = 0;
        v93 = 0u;
        v94 = 0u;
        outlined destroy of Mirror.DisplayStyle?(&v93, &_s16SiriDialogEngine7CATType_pSgMd, &_s16SiriDialogEngine7CATType_pSgMR);
        outlined init with copy of Mirror.DisplayStyle?(&v99, &v96, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
        v62 = v97;
        if (!v97)
        {
          goto LABEL_59;
        }

        v63 = v96;
        outlined init with copy of Mirror.DisplayStyle?(&v99, v90, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);

        outlined init with take of Any(&v91, &v93);
        LODWORD(v80) = swift_isUniquelyReferenced_nonNull_native();
        *&v89[0] = v40;
        v81 = v63;
        v82 = v62;
        v65 = specialized __RawDictionaryStorage.find<A>(_:)(v63, v62);
        v66 = v40[2];
        v67 = (v64 & 1) == 0;
        v68 = v66 + v67;
        if (__OFADD__(v66, v67))
        {
          goto LABEL_56;
        }

        if (v40[3] >= v68)
        {
          if ((v80 & 1) == 0)
          {
            v69 = v64;
            specialized _NativeDictionary.copy()();
            goto LABEL_36;
          }

          v72 = v82;
          if (v64)
          {
            goto LABEL_45;
          }

LABEL_37:
          v40 = *&v89[0];
          *(*&v89[0] + 8 * (v65 >> 6) + 64) |= 1 << v65;
          v73 = (v40[6] + 16 * v65);
          *v73 = v81;
          v73[1] = v72;
          outlined init with take of Any(&v93, (v40[7] + 32 * v65));
          v74 = v40[2];
          v60 = __OFADD__(v74, 1);
          v75 = v74 + 1;
          if (v60)
          {
            goto LABEL_58;
          }

          v40[2] = v75;
        }

        else
        {
          v69 = v64;
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v68, v80);
          v70 = specialized __RawDictionaryStorage.find<A>(_:)(v81, v82);
          if ((v69 & 1) != (v71 & 1))
          {
            goto LABEL_61;
          }

          v65 = v70;
LABEL_36:
          v72 = v82;
          if ((v69 & 1) == 0)
          {
            goto LABEL_37;
          }

LABEL_45:

          v40 = *&v89[0];
          v78 = (*(*&v89[0] + 56) + 32 * v65);
          __swift_destroy_boxed_opaque_existential_0Tm(v78);
          outlined init with take of Any(&v93, v78);
        }

        v77 = v98;
        goto LABEL_47;
      }

      outlined init with take of CATType(&v93, v90);
      outlined init with copy of Mirror.DisplayStyle?(&v99, &v96, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
      v47 = v97;
      if (!v97)
      {
        goto LABEL_60;
      }

      v80 = *(&v91 + 1);
      v81 = v92;
      v82 = v96;
      __swift_project_boxed_opaque_existential_1(v90, *(&v91 + 1));
      v48 = dispatch thunk of CATType.toDictionary.getter();
      *(&v94 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      *&v93 = v48;
      outlined init with take of Any(&v93, v89);
      LODWORD(v80) = swift_isUniquelyReferenced_nonNull_native();
      v88 = v40;
      v81 = v47;
      v50 = specialized __RawDictionaryStorage.find<A>(_:)(v82, v47);
      v51 = v40[2];
      v52 = (v49 & 1) == 0;
      v53 = v51 + v52;
      if (__OFADD__(v51, v52))
      {
        goto LABEL_55;
      }

      if (v40[3] < v53)
      {
        break;
      }

      if ((v80 & 1) == 0)
      {
        v54 = v49;
        specialized _NativeDictionary.copy()();
        goto LABEL_28;
      }

      v57 = v81;
      if ((v49 & 1) == 0)
      {
LABEL_29:
        v40 = v88;
        v88[(v50 >> 6) + 8] |= 1 << v50;
        v58 = (v40[6] + 16 * v50);
        *v58 = v82;
        v58[1] = v57;
        outlined init with take of Any(v89, (v40[7] + 32 * v50));
        v59 = v40[2];
        v60 = __OFADD__(v59, 1);
        v61 = v59 + 1;
        if (v60)
        {
          goto LABEL_57;
        }

        v40[2] = v61;
        goto LABEL_42;
      }

LABEL_41:

      v40 = v88;
      v76 = (v88[7] + 32 * v50);
      __swift_destroy_boxed_opaque_existential_0Tm(v76);
      outlined init with take of Any(v89, v76);
LABEL_42:
      __swift_destroy_boxed_opaque_existential_0Tm(v98);
      v77 = v90;
LABEL_47:
      __swift_destroy_boxed_opaque_existential_0Tm(v77);
      outlined destroy of Mirror.DisplayStyle?(&v99, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
      dispatch thunk of _AnyIteratorBoxBase.next()();
      if (!*(&v103 + 1))
      {
        goto LABEL_53;
      }
    }

    v54 = v49;
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v53, v80);
    v55 = specialized __RawDictionaryStorage.find<A>(_:)(v82, v81);
    if ((v54 & 1) != (v56 & 1))
    {
      goto LABEL_61;
    }

    v50 = v55;
LABEL_28:
    v57 = v81;
    if ((v54 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_41;
  }

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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized GeoCATModel.getParams()(char a1)
{
  v2 = type metadata accessor for Mirror.DisplayStyle();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v83 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSg_AEtMd, &_ss6MirrorV12DisplayStyleOSg_AEtMR);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v79 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v84 = (&v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __chkstk_darwin(v13);
  v17 = &v79 - v16;
  __chkstk_darwin(v15);
  v19 = &v79 - v18;
  v20 = type metadata accessor for Mirror();
  v21 = *(v20 - 8);
  v85 = v20;
  v86 = v21;
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v82 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v79 - v25;
  *(&v105 + 1) = &type metadata for LocationServices;
  LOBYTE(v104) = a1;
  Mirror.init(reflecting:)();
  v87 = v26;
  Mirror.displayStyle.getter();
  (*(v3 + 104))(v17, enum case for Mirror.DisplayStyle.enum(_:), v2);
  (*(v3 + 56))(v17, 0, 1, v2);
  v27 = *(v7 + 56);
  outlined init with copy of Mirror.DisplayStyle?(v19, v10, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  outlined init with copy of Mirror.DisplayStyle?(v17, &v10[v27], &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v28 = v3;
  v29 = *(v3 + 48);
  if (v29(v10, 1, v2) == 1)
  {
    outlined destroy of Mirror.DisplayStyle?(v17, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
    outlined destroy of Mirror.DisplayStyle?(v19, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
    if (v29(&v10[v27], 1, v2) == 1)
    {
      outlined destroy of Mirror.DisplayStyle?(v10, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  outlined init with copy of Mirror.DisplayStyle?(v10, v84, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  if (v29(&v10[v27], 1, v2) == 1)
  {
    outlined destroy of Mirror.DisplayStyle?(v17, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
    outlined destroy of Mirror.DisplayStyle?(v19, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
    (*(v28 + 8))(v84, v2);
LABEL_6:
    outlined destroy of Mirror.DisplayStyle?(v10, &_ss6MirrorV12DisplayStyleOSg_AEtMd, &_ss6MirrorV12DisplayStyleOSg_AEtMR);
LABEL_11:
    v40 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
    (*(v86 + 8))(v87, v85);
    return v40;
  }

  v30 = v83;
  (*(v28 + 32))(v83, &v10[v27], v2);
  v31 = v84;
  LODWORD(v81) = dispatch thunk of static Equatable.== infix(_:_:)();
  v32 = *(v28 + 8);
  v32(v30, v2);
  outlined destroy of Mirror.DisplayStyle?(v17, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  outlined destroy of Mirror.DisplayStyle?(v19, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v32(v31, v2);
  outlined destroy of Mirror.DisplayStyle?(v10, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  if ((v81 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v33 = Mirror.children.getter();
  v34 = v33[2];
  v35 = v33[3];
  v36 = v33[4];
  v37 = v33[5];
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v38 = dispatch thunk of _AnyIndexBox._typeID.getter();
  swift_getObjectType();
  if (v38 == dispatch thunk of _AnyIndexBox._typeID.getter())
  {
    v39 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    if (v39)
    {
      swift_unknownObjectRelease();

      goto LABEL_11;
    }

    dispatch thunk of _AnyCollectionBox.subscript.getter();
    swift_unknownObjectRelease();

    v104 = v101;
    v105 = v102;
    v106 = v103;
    outlined init with copy of Mirror.DisplayStyle?(&v104, &v101, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);

    v42 = v82;
    Mirror.init(reflecting:)();
    v43 = Mirror.children.getter();
    v44 = v86 + 8;
    v84 = *(v86 + 8);
    (v84)(v42, v85);

    dispatch thunk of _AnySequenceBox._makeIterator()();
    v83 = v43;

    dispatch thunk of _AnyIteratorBoxBase.next()();
    if (!*(&v103 + 1))
    {
      v40 = &_swiftEmptyDictionarySingleton;
LABEL_53:

      outlined destroy of Mirror.DisplayStyle?(&v104, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
      (v84)(v87, v85);
      return v40;
    }

    v40 = &_swiftEmptyDictionarySingleton;
    v86 = v44;
    while (1)
    {
      while (1)
      {
        v45 = v101;
        v99 = v101;
        outlined init with take of Any(&v102, &v100);
        if (*(&v45 + 1))
        {
          v46 = v45 == 0xD000000000000016 && *(&v45 + 1) == 0x80000000000BFD90;
          if (!v46 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            break;
          }
        }

        outlined destroy of Mirror.DisplayStyle?(&v99, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
        dispatch thunk of _AnyIteratorBoxBase.next()();
        if (!*(&v103 + 1))
        {
          goto LABEL_53;
        }
      }

      outlined init with copy of Mirror.DisplayStyle?(&v99, &v96, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine7CATType_pMd, &_s16SiriDialogEngine7CATType_pMR);
      if (!swift_dynamicCast())
      {
        v95 = 0;
        v93 = 0u;
        v94 = 0u;
        outlined destroy of Mirror.DisplayStyle?(&v93, &_s16SiriDialogEngine7CATType_pSgMd, &_s16SiriDialogEngine7CATType_pSgMR);
        outlined init with copy of Mirror.DisplayStyle?(&v99, &v96, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
        v62 = v97;
        if (!v97)
        {
          goto LABEL_59;
        }

        v63 = v96;
        outlined init with copy of Mirror.DisplayStyle?(&v99, v90, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);

        outlined init with take of Any(&v91, &v93);
        LODWORD(v80) = swift_isUniquelyReferenced_nonNull_native();
        *&v89[0] = v40;
        v81 = v63;
        v82 = v62;
        v65 = specialized __RawDictionaryStorage.find<A>(_:)(v63, v62);
        v66 = v40[2];
        v67 = (v64 & 1) == 0;
        v68 = v66 + v67;
        if (__OFADD__(v66, v67))
        {
          goto LABEL_56;
        }

        if (v40[3] >= v68)
        {
          if ((v80 & 1) == 0)
          {
            v69 = v64;
            specialized _NativeDictionary.copy()();
            goto LABEL_36;
          }

          v72 = v82;
          if (v64)
          {
            goto LABEL_45;
          }

LABEL_37:
          v40 = *&v89[0];
          *(*&v89[0] + 8 * (v65 >> 6) + 64) |= 1 << v65;
          v73 = (v40[6] + 16 * v65);
          *v73 = v81;
          v73[1] = v72;
          outlined init with take of Any(&v93, (v40[7] + 32 * v65));
          v74 = v40[2];
          v60 = __OFADD__(v74, 1);
          v75 = v74 + 1;
          if (v60)
          {
            goto LABEL_58;
          }

          v40[2] = v75;
        }

        else
        {
          v69 = v64;
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v68, v80);
          v70 = specialized __RawDictionaryStorage.find<A>(_:)(v81, v82);
          if ((v69 & 1) != (v71 & 1))
          {
            goto LABEL_61;
          }

          v65 = v70;
LABEL_36:
          v72 = v82;
          if ((v69 & 1) == 0)
          {
            goto LABEL_37;
          }

LABEL_45:

          v40 = *&v89[0];
          v78 = (*(*&v89[0] + 56) + 32 * v65);
          __swift_destroy_boxed_opaque_existential_0Tm(v78);
          outlined init with take of Any(&v93, v78);
        }

        v77 = v98;
        goto LABEL_47;
      }

      outlined init with take of CATType(&v93, v90);
      outlined init with copy of Mirror.DisplayStyle?(&v99, &v96, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
      v47 = v97;
      if (!v97)
      {
        goto LABEL_60;
      }

      v80 = *(&v91 + 1);
      v81 = v92;
      v82 = v96;
      __swift_project_boxed_opaque_existential_1(v90, *(&v91 + 1));
      v48 = dispatch thunk of CATType.toDictionary.getter();
      *(&v94 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      *&v93 = v48;
      outlined init with take of Any(&v93, v89);
      LODWORD(v80) = swift_isUniquelyReferenced_nonNull_native();
      v88 = v40;
      v81 = v47;
      v50 = specialized __RawDictionaryStorage.find<A>(_:)(v82, v47);
      v51 = v40[2];
      v52 = (v49 & 1) == 0;
      v53 = v51 + v52;
      if (__OFADD__(v51, v52))
      {
        goto LABEL_55;
      }

      if (v40[3] < v53)
      {
        break;
      }

      if ((v80 & 1) == 0)
      {
        v54 = v49;
        specialized _NativeDictionary.copy()();
        goto LABEL_28;
      }

      v57 = v81;
      if ((v49 & 1) == 0)
      {
LABEL_29:
        v40 = v88;
        v88[(v50 >> 6) + 8] |= 1 << v50;
        v58 = (v40[6] + 16 * v50);
        *v58 = v82;
        v58[1] = v57;
        outlined init with take of Any(v89, (v40[7] + 32 * v50));
        v59 = v40[2];
        v60 = __OFADD__(v59, 1);
        v61 = v59 + 1;
        if (v60)
        {
          goto LABEL_57;
        }

        v40[2] = v61;
        goto LABEL_42;
      }

LABEL_41:

      v40 = v88;
      v76 = (v88[7] + 32 * v50);
      __swift_destroy_boxed_opaque_existential_0Tm(v76);
      outlined init with take of Any(v89, v76);
LABEL_42:
      __swift_destroy_boxed_opaque_existential_0Tm(v98);
      v77 = v90;
LABEL_47:
      __swift_destroy_boxed_opaque_existential_0Tm(v77);
      outlined destroy of Mirror.DisplayStyle?(&v99, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
      dispatch thunk of _AnyIteratorBoxBase.next()();
      if (!*(&v103 + 1))
      {
        goto LABEL_53;
      }
    }

    v54 = v49;
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v53, v80);
    v55 = specialized __RawDictionaryStorage.find<A>(_:)(v82, v81);
    if ((v54 & 1) != (v56 & 1))
    {
      goto LABEL_61;
    }

    v50 = v55;
LABEL_28:
    v57 = v81;
    if ((v54 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_41;
  }

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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t GeoCATModel.getParams()(uint64_t a1)
{
  v2 = type metadata accessor for Mirror.DisplayStyle();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  (__chkstk_darwin)();
  v82 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSg_AEtMd, &_ss6MirrorV12DisplayStyleOSg_AEtMR) - 8);
  v7 = (*(*v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v9 = &v78 - v8;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR) - 8) + 64);
  v11 = (__chkstk_darwin)();
  v83 = (&v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin(v11);
  v15 = &v78 - v14;
  __chkstk_darwin(v13);
  v17 = &v78 - v16;
  v18 = type metadata accessor for Mirror();
  v19 = *(v18 - 8);
  v84 = v18;
  v85 = v19;
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v81 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v78 - v23;
  *(&v104 + 1) = a1;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v103);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_0, v86, a1);
  Mirror.init(reflecting:)();
  v86 = v24;
  Mirror.displayStyle.getter();
  (*(v3 + 104))(v15, enum case for Mirror.DisplayStyle.enum(_:), v2);
  (*(v3 + 56))(v15, 0, 1, v2);
  v26 = v6[14];
  outlined init with copy of Mirror.DisplayStyle?(v17, v9, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  outlined init with copy of Mirror.DisplayStyle?(v15, &v9[v26], &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v27 = *(v3 + 48);
  if (v27(v9, 1, v2) == 1)
  {
    outlined destroy of Mirror.DisplayStyle?(v15, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
    outlined destroy of Mirror.DisplayStyle?(v17, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
    if (v27(&v9[v26], 1, v2) == 1)
    {
      outlined destroy of Mirror.DisplayStyle?(v9, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  outlined init with copy of Mirror.DisplayStyle?(v9, v83, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  if (v27(&v9[v26], 1, v2) == 1)
  {
    outlined destroy of Mirror.DisplayStyle?(v15, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
    outlined destroy of Mirror.DisplayStyle?(v17, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
    (*(v3 + 8))(v83, v2);
LABEL_6:
    outlined destroy of Mirror.DisplayStyle?(v9, &_ss6MirrorV12DisplayStyleOSg_AEtMd, &_ss6MirrorV12DisplayStyleOSg_AEtMR);
LABEL_11:
    v39 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
    (*(v85 + 8))(v86, v84);
    return v39;
  }

  v28 = &v9[v26];
  v29 = v82;
  (*(v3 + 32))(v82, v28, v2);
  v30 = v83;
  LODWORD(v80) = dispatch thunk of static Equatable.== infix(_:_:)();
  v31 = *(v3 + 8);
  v31(v29, v2);
  outlined destroy of Mirror.DisplayStyle?(v15, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  outlined destroy of Mirror.DisplayStyle?(v17, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v31(v30, v2);
  outlined destroy of Mirror.DisplayStyle?(v9, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  if ((v80 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v32 = Mirror.children.getter();
  v33 = v32[2];
  v34 = v32[3];
  v35 = v32[4];
  v36 = v32[5];
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v37 = dispatch thunk of _AnyIndexBox._typeID.getter();
  swift_getObjectType();
  if (v37 == dispatch thunk of _AnyIndexBox._typeID.getter())
  {
    v38 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    if (v38)
    {
      swift_unknownObjectRelease();

      goto LABEL_11;
    }

    dispatch thunk of _AnyCollectionBox.subscript.getter();
    swift_unknownObjectRelease();

    v103 = v100;
    v104 = v101;
    v105 = v102;
    outlined init with copy of Mirror.DisplayStyle?(&v103, &v100, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);

    v41 = v81;
    Mirror.init(reflecting:)();
    v42 = Mirror.children.getter();
    v43 = v85 + 8;
    v83 = *(v85 + 8);
    (v83)(v41, v84);

    dispatch thunk of _AnySequenceBox._makeIterator()();
    v82 = v42;

    dispatch thunk of _AnyIteratorBoxBase.next()();
    if (!*(&v102 + 1))
    {
      v39 = &_swiftEmptyDictionarySingleton;
LABEL_53:

      outlined destroy of Mirror.DisplayStyle?(&v103, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
      (v83)(v86, v84);
      return v39;
    }

    v39 = &_swiftEmptyDictionarySingleton;
    v85 = v43;
    while (1)
    {
      while (1)
      {
        v44 = v100;
        v98 = v100;
        outlined init with take of Any(&v101, &v99);
        if (*(&v44 + 1))
        {
          v45 = v44 == 0xD000000000000016 && *(&v44 + 1) == 0x80000000000BFD90;
          if (!v45 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            break;
          }
        }

        outlined destroy of Mirror.DisplayStyle?(&v98, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
        dispatch thunk of _AnyIteratorBoxBase.next()();
        if (!*(&v102 + 1))
        {
          goto LABEL_53;
        }
      }

      outlined init with copy of Mirror.DisplayStyle?(&v98, &v95, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine7CATType_pMd, &_s16SiriDialogEngine7CATType_pMR);
      if (!swift_dynamicCast())
      {
        v94 = 0;
        v92 = 0u;
        v93 = 0u;
        outlined destroy of Mirror.DisplayStyle?(&v92, &_s16SiriDialogEngine7CATType_pSgMd, &_s16SiriDialogEngine7CATType_pSgMR);
        outlined init with copy of Mirror.DisplayStyle?(&v98, &v95, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
        v61 = v96;
        if (!v96)
        {
          goto LABEL_59;
        }

        v62 = v95;
        outlined init with copy of Mirror.DisplayStyle?(&v98, v89, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);

        outlined init with take of Any(&v90, &v92);
        LODWORD(v79) = swift_isUniquelyReferenced_nonNull_native();
        *&v88[0] = v39;
        v80 = v62;
        v81 = v61;
        v64 = specialized __RawDictionaryStorage.find<A>(_:)(v62, v61);
        v65 = v39[2];
        v66 = (v63 & 1) == 0;
        v67 = v65 + v66;
        if (__OFADD__(v65, v66))
        {
          goto LABEL_56;
        }

        if (v39[3] >= v67)
        {
          if ((v79 & 1) == 0)
          {
            v68 = v63;
            specialized _NativeDictionary.copy()();
            goto LABEL_36;
          }

          v71 = v81;
          if (v63)
          {
            goto LABEL_45;
          }

LABEL_37:
          v39 = *&v88[0];
          *(*&v88[0] + 8 * (v64 >> 6) + 64) |= 1 << v64;
          v72 = (v39[6] + 16 * v64);
          *v72 = v80;
          v72[1] = v71;
          outlined init with take of Any(&v92, (v39[7] + 32 * v64));
          v73 = v39[2];
          v59 = __OFADD__(v73, 1);
          v74 = v73 + 1;
          if (v59)
          {
            goto LABEL_58;
          }

          v39[2] = v74;
        }

        else
        {
          v68 = v63;
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v67, v79);
          v69 = specialized __RawDictionaryStorage.find<A>(_:)(v80, v81);
          if ((v68 & 1) != (v70 & 1))
          {
            goto LABEL_61;
          }

          v64 = v69;
LABEL_36:
          v71 = v81;
          if ((v68 & 1) == 0)
          {
            goto LABEL_37;
          }

LABEL_45:

          v39 = *&v88[0];
          v77 = (*(*&v88[0] + 56) + 32 * v64);
          __swift_destroy_boxed_opaque_existential_0Tm(v77);
          outlined init with take of Any(&v92, v77);
        }

        v76 = v97;
        goto LABEL_47;
      }

      outlined init with take of CATType(&v92, v89);
      outlined init with copy of Mirror.DisplayStyle?(&v98, &v95, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
      v46 = v96;
      if (!v96)
      {
        goto LABEL_60;
      }

      v79 = *(&v90 + 1);
      v80 = v91;
      v81 = v95;
      __swift_project_boxed_opaque_existential_1(v89, *(&v90 + 1));
      v47 = dispatch thunk of CATType.toDictionary.getter();
      *(&v93 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      *&v92 = v47;
      outlined init with take of Any(&v92, v88);
      LODWORD(v79) = swift_isUniquelyReferenced_nonNull_native();
      v87 = v39;
      v80 = v46;
      v49 = specialized __RawDictionaryStorage.find<A>(_:)(v81, v46);
      v50 = v39[2];
      v51 = (v48 & 1) == 0;
      v52 = v50 + v51;
      if (__OFADD__(v50, v51))
      {
        goto LABEL_55;
      }

      if (v39[3] < v52)
      {
        break;
      }

      if ((v79 & 1) == 0)
      {
        v53 = v48;
        specialized _NativeDictionary.copy()();
        goto LABEL_28;
      }

      v56 = v80;
      if ((v48 & 1) == 0)
      {
LABEL_29:
        v39 = v87;
        v87[(v49 >> 6) + 8] |= 1 << v49;
        v57 = (v39[6] + 16 * v49);
        *v57 = v81;
        v57[1] = v56;
        outlined init with take of Any(v88, (v39[7] + 32 * v49));
        v58 = v39[2];
        v59 = __OFADD__(v58, 1);
        v60 = v58 + 1;
        if (v59)
        {
          goto LABEL_57;
        }

        v39[2] = v60;
        goto LABEL_42;
      }

LABEL_41:

      v39 = v87;
      v75 = (v87[7] + 32 * v49);
      __swift_destroy_boxed_opaque_existential_0Tm(v75);
      outlined init with take of Any(v88, v75);
LABEL_42:
      __swift_destroy_boxed_opaque_existential_0Tm(v97);
      v76 = v89;
LABEL_47:
      __swift_destroy_boxed_opaque_existential_0Tm(v76);
      outlined destroy of Mirror.DisplayStyle?(&v98, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
      dispatch thunk of _AnyIteratorBoxBase.next()();
      if (!*(&v102 + 1))
      {
        goto LABEL_53;
      }
    }

    v53 = v48;
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v52, v79);
    v54 = specialized __RawDictionaryStorage.find<A>(_:)(v81, v80);
    if ((v53 & 1) != (v55 & 1))
    {
      goto LABEL_61;
    }

    v49 = v54;
LABEL_28:
    v56 = v80;
    if ((v53 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_41;
  }

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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    outlined destroy of Mirror.DisplayStyle?(a1, &_sypSgMd, &_sypSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v10);

    return outlined destroy of Mirror.DisplayStyle?(v10, &_sypSgMd, &_sypSgMR);
  }

  return result;
}

uint64_t GeoCATModel.getBehaviorAfterSpeaking()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v57 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow21BehaviorAfterSpeakingOSgMd, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMR);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v60 = &v55 - v7;
  v8 = type metadata accessor for Mirror.DisplayStyle();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v56 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSg_AEtMd, &_ss6MirrorV12DisplayStyleOSg_AEtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v55 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v58 = (&v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __chkstk_darwin(v19);
  v23 = &v55 - v22;
  __chkstk_darwin(v21);
  v25 = &v55 - v24;
  v59 = type metadata accessor for Mirror();
  v61 = *(v59 - 8);
  v26 = *(v61 + 64);
  v27 = __chkstk_darwin(v59);
  v55 = &v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v55 - v29;
  *(&v70 + 1) = a1;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v69);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_0, v3, a1);
  Mirror.init(reflecting:)();
  v62 = v30;
  Mirror.displayStyle.getter();
  (*(v9 + 104))(v23, enum case for Mirror.DisplayStyle.enum(_:), v8);
  (*(v9 + 56))(v23, 0, 1, v8);
  v32 = *(v13 + 56);
  outlined init with copy of Mirror.DisplayStyle?(v25, v16, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  outlined init with copy of Mirror.DisplayStyle?(v23, &v16[v32], &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v33 = *(v9 + 48);
  if (v33(v16, 1, v8) != 1)
  {
    outlined init with copy of Mirror.DisplayStyle?(v16, v58, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
    if (v33(&v16[v32], 1, v8) != 1)
    {
      v34 = v56;
      (*(v9 + 32))(v56, &v16[v32], v8);
      v35 = v58;
      v36 = dispatch thunk of static Equatable.== infix(_:_:)();
      v37 = *(v9 + 8);
      v37(v34, v8);
      outlined destroy of Mirror.DisplayStyle?(v23, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
      outlined destroy of Mirror.DisplayStyle?(v25, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
      v37(v35, v8);
      outlined destroy of Mirror.DisplayStyle?(v16, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
      if ((v36 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    outlined destroy of Mirror.DisplayStyle?(v23, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
    outlined destroy of Mirror.DisplayStyle?(v25, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
    (*(v9 + 8))(v58, v8);
LABEL_6:
    outlined destroy of Mirror.DisplayStyle?(v16, &_ss6MirrorV12DisplayStyleOSg_AEtMd, &_ss6MirrorV12DisplayStyleOSg_AEtMR);
    goto LABEL_11;
  }

  outlined destroy of Mirror.DisplayStyle?(v23, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  outlined destroy of Mirror.DisplayStyle?(v25, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  if (v33(&v16[v32], 1, v8) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of Mirror.DisplayStyle?(v16, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
LABEL_8:
  v38 = Mirror.children.getter();
  v39 = v38[2];
  v40 = v38[3];
  v41 = v38[4];
  v42 = v38[5];
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v43 = dispatch thunk of _AnyIndexBox._typeID.getter();
  swift_getObjectType();
  result = dispatch thunk of _AnyIndexBox._typeID.getter();
  if (v43 != result)
  {
    __break(1u);
    return result;
  }

  v45 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
  swift_unknownObjectRelease();
  if ((v45 & 1) == 0)
  {
    dispatch thunk of _AnyCollectionBox.subscript.getter();
    swift_unknownObjectRelease();

    v69 = v66;
    v70 = v67;
    v71 = v68;
    outlined init with copy of Mirror.DisplayStyle?(&v69, &v66, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);

    v48 = v55;
    Mirror.init(reflecting:)();
    Mirror.children.getter();
    v49 = *(v61 + 8);
    v61 += 8;
    v58 = v49;
    (v49)(v48, v59);

    dispatch thunk of _AnySequenceBox._makeIterator()();

    dispatch thunk of _AnyIteratorBoxBase.next()();
    while (*(&v68 + 1))
    {
      v52 = v66;
      v64 = v66;
      outlined init with take of Any(&v67, &v65);
      if (*(&v52 + 1))
      {
        v53 = v52 == 0xD000000000000016 && *(&v52 + 1) == 0x80000000000BFD90;
        if (v53 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          outlined init with copy of Mirror.DisplayStyle?(&v64, v63, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);

          v50 = type metadata accessor for BehaviorAfterSpeaking();
          v51 = v60;
          if (swift_dynamicCast())
          {

            outlined destroy of Mirror.DisplayStyle?(&v69, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
            (v58)(v62, v59);
            v54 = *(v50 - 8);
            (*(v54 + 56))(v51, 0, 1, v50);
            (*(v54 + 32))(v57, v51, v50);
            return outlined destroy of Mirror.DisplayStyle?(&v64, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
          }

          (*(*(v50 - 8) + 56))(v51, 1, 1, v50);
          outlined destroy of Mirror.DisplayStyle?(v51, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMd, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMR);
        }
      }

      outlined destroy of Mirror.DisplayStyle?(&v64, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
      dispatch thunk of _AnyIteratorBoxBase.next()();
    }

    outlined destroy of Mirror.DisplayStyle?(&v69, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
    (v58)(v62, v59);
    goto LABEL_12;
  }

  swift_unknownObjectRelease();

LABEL_11:
  (*(v61 + 8))(v62, v59);
LABEL_12:
  v46 = enum case for BehaviorAfterSpeaking.defaultBehavior(_:);
  v47 = type metadata accessor for BehaviorAfterSpeaking();
  return (*(*(v47 - 8) + 104))(v57, v46, v47);
}

uint64_t default argument 1 of ShareETA.disambiguateContactsHandles(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for BehaviorAfterSpeaking.listen(_:);
  v3 = type metadata accessor for BehaviorAfterSpeaking();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

Swift::Int LocationAccessLevelFor.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LocationServices()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LocationServices()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t default argument 1 of FlowHelperImpl.init(device:rchFlowFactory:catGlobals:aceService:outputPublisher:catService:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for GeoRCHFlowFactoryImpl();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &protocol witness table for GeoRCHFlowFactoryImpl;
  *a1 = result;
  return result;
}

uint64_t variable initialization expression of ShareETAPromptForContactStrategy.weightedPromptResponseTargets()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_B7D60;
  v1 = type metadata accessor for AddressOntologyNode.OccupantNode();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  AddressOntologyNode.OccupantNode.init(name:multicardinal:)();
  v4 = specialized OntologyNode.javaClassName.getter(&type metadata accessor for AddressOntologyNode.OccupantNode);
  v6 = v5;

  *(v0 + 32) = v4;
  *(v0 + 40) = v6;
  static AddressOntologyNode.OccupantNode.occupantFullNameNode.getter();
  v7 = specialized OntologyNode.javaClassName.getter(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR, &lazy protocol witness table cache variable for type TerminalOntologyNode<String> and conformance TerminalOntologyNode<A>);
  v9 = v8;

  *(v0 + 48) = v7;
  *(v0 + 56) = v9;
  if (one-time initialization token for confirmationNode != -1)
  {
    swift_once();
  }

  *(v0 + 64) = specialized OntologyNode.javaClassName.getter(&_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ17ConfirmationValueOGMd, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ17ConfirmationValueOGMR, &lazy protocol witness table cache variable for type TerminalOntologyNode<LocationSearchIntent.LocationSearchConfirmationValue> and conformance TerminalOntologyNode<A>);
  *(v0 + 72) = v10;
  return v0;
}

unint64_t specialized OntologyNode.javaClassName.getter()
{
  return specialized OntologyNode.javaClassName.getter(&type metadata accessor for AddressOntologyNode.OccupantNode);
}

{
  return specialized OntologyNode.javaClassName.getter(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR, &lazy protocol witness table cache variable for type TerminalOntologyNode<String> and conformance TerminalOntologyNode<A>);
}

{
  return specialized OntologyNode.javaClassName.getter(&_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ17ConfirmationValueOGMd, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ17ConfirmationValueOGMR, &lazy protocol witness table cache variable for type TerminalOntologyNode<LocationSearchIntent.LocationSearchConfirmationValue> and conformance TerminalOntologyNode<A>);
}

{
  return specialized OntologyNode.javaClassName.getter(&type metadata accessor for DomainOntologyNode);
}

{
  return specialized OntologyNode.javaClassName.getter(&_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ17IncidentTypeValueOGMd, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ17IncidentTypeValueOGMR, &lazy protocol witness table cache variable for type TerminalOntologyNode<LocationSearchIntent.LocationSearchIncidentTypeValue> and conformance TerminalOntologyNode<A>);
}

{
  return specialized OntologyNode.javaClassName.getter(&_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ14ReferenceValueOGMd, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ14ReferenceValueOGMR, &lazy protocol witness table cache variable for type TerminalOntologyNode<LocationSearchIntent.LocationSearchReferenceValue> and conformance TerminalOntologyNode<A>);
}

{
  return specialized OntologyNode.javaClassName.getter(&type metadata accessor for AddressOntologyNode.PersonPlaceNode);
}

unint64_t specialized OntologyNode.javaClassName.getter(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  lazy protocol witness table accessor for type TerminalOntologyNode<LocationSearchIntent.LocationSearchIncidentTypeValue> and conformance TerminalOntologyNode<A>(a3, a1, a2);
  v6 = dispatch thunk of OntologyNode.name.getter();
  specialized Collection.first.getter(v6, v7);
  v9 = v8;

  if (v9)
  {
    v10 = Character.uppercased()();
    countAndFlagsBits = v10._countAndFlagsBits;
    object = v10._object;
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  v13._countAndFlagsBits = countAndFlagsBits;
  v13._object = object;
  String.append(_:)(v13);

  v14 = dispatch thunk of OntologyNode.name.getter();
  specialized Collection.dropFirst(_:)(1, v14, v15);

  lazy protocol witness table accessor for type Substring and conformance Substring();
  String.append<A>(contentsOf:)();

  return 0xD000000000000012;
}

unint64_t specialized OntologyNode.javaClassName.getter(void (*a1)(void))
{
  a1(0);
  v1 = dispatch thunk of OntologyNode.name.getter();
  specialized Collection.first.getter(v1, v2);
  v4 = v3;

  if (v4)
  {
    v5 = Character.uppercased()();
    countAndFlagsBits = v5._countAndFlagsBits;
    object = v5._object;
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  v8._countAndFlagsBits = countAndFlagsBits;
  v8._object = object;
  String.append(_:)(v8);

  v9 = dispatch thunk of OntologyNode.name.getter();
  specialized Collection.dropFirst(_:)(1, v9, v10);

  lazy protocol witness table accessor for type Substring and conformance Substring();
  String.append<A>(contentsOf:)();

  return 0xD000000000000012;
}

id variable initialization expression of CATService.bundle()
{
  type metadata accessor for CATService();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];

  return v1;
}

uint64_t variable initialization expression of ShareETAContactDisambiguationStrategy.weightedPromptResponseTargets()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_B7D70;
  if (one-time initialization token for referenceNode != -1)
  {
    swift_once();
  }

  *(v0 + 32) = specialized OntologyNode.javaClassName.getter(&_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ14ReferenceValueOGMd, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ14ReferenceValueOGMR, &lazy protocol witness table cache variable for type TerminalOntologyNode<LocationSearchIntent.LocationSearchReferenceValue> and conformance TerminalOntologyNode<A>);
  *(v0 + 40) = v1;
  if (one-time initialization token for confirmationNode != -1)
  {
    swift_once();
  }

  *(v0 + 48) = specialized OntologyNode.javaClassName.getter(&_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ17ConfirmationValueOGMd, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ17ConfirmationValueOGMR, &lazy protocol witness table cache variable for type TerminalOntologyNode<LocationSearchIntent.LocationSearchConfirmationValue> and conformance TerminalOntologyNode<A>);
  *(v0 + 56) = v2;
  v3 = type metadata accessor for AddressOntologyNode.PersonPlaceNode();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  AddressOntologyNode.PersonPlaceNode.init(name:multicardinal:)();
  v6 = specialized OntologyNode.javaClassName.getter(&type metadata accessor for AddressOntologyNode.PersonPlaceNode);
  v8 = v7;

  *(v0 + 64) = v6;
  *(v0 + 72) = v8;
  v9 = type metadata accessor for AddressOntologyNode.OccupantNode();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  AddressOntologyNode.OccupantNode.init(name:multicardinal:)();
  v12 = specialized OntologyNode.javaClassName.getter(&type metadata accessor for AddressOntologyNode.OccupantNode);
  v14 = v13;

  *(v0 + 80) = v12;
  *(v0 + 88) = v14;
  static AddressOntologyNode.OccupantNode.occupantFullNameNode.getter();
  v15 = specialized OntologyNode.javaClassName.getter(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR, &lazy protocol witness table cache variable for type TerminalOntologyNode<String> and conformance TerminalOntologyNode<A>);
  v17 = v16;

  *(v0 + 96) = v15;
  *(v0 + 104) = v17;
  type metadata accessor for PersonOntologyNode();
  static PersonOntologyNode.personFullNameNode.getter();
  v18 = specialized OntologyNode.javaClassName.getter(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR, &lazy protocol witness table cache variable for type TerminalOntologyNode<String> and conformance TerminalOntologyNode<A>);
  v20 = v19;

  *(v0 + 112) = v18;
  *(v0 + 120) = v20;
  return v0;
}

uint64_t default argument 0 of ContactHandleResolver.init(contactService:)()
{
  type metadata accessor for ContactService();
  swift_allocObject();
  return ContactService.init()();
}

uint64_t default argument 4 of ContactResolutionFlow.init(occupantNode:disambiguationStrategy:confirmationStrategy:contactResolver:flowHelper:handleResolver:intentType:)@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for FlowHelperImpl;
  a1[4] = &protocol witness table for FlowHelperImpl;
  v2 = swift_allocObject();
  *a1 = v2;
  return FlowHelperImpl.init()((v2 + 16));
}

uint64_t default argument 0 of GeoFlowDelegatePlugin.init(with:)()
{
  static Device.current.getter();
  v8 = type metadata accessor for GeoRCHFlowFactoryImpl();
  v9 = &protocol witness table for GeoRCHFlowFactoryImpl;
  v7 = swift_allocObject();
  v10 = static DialogHelper.globals.getter();
  static AceService.currentAsync.getter();
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  type metadata accessor for CATService();
  v0 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  type metadata accessor for OS_os_log();
  *(v0 + 32) = OS_os_log.init(subsystem:category:)();
  *(v0 + 16) = 0;
  v11 = v0;
  type metadata accessor for FlowSelector();
  v2 = swift_allocObject();
  outlined init with copy of FlowHelperImpl(v6, v5);
  v3 = specialized FlowSelector.init(with:)(v5, v2);
  outlined destroy of FlowHelperImpl(v6);
  return v3;
}

unint64_t variable initialization expression of LocationSearchIntentBuilder.locationSearchVerbMap()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchVerbO_21GeoFlowDelegatePlugin0jK6IntentC0jkL5ValueOtGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchVerbO_21GeoFlowDelegatePlugin0jK6IntentC0jkL5ValueOtGMR);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchVerbO_21GeoFlowDelegatePlugin0gH6IntentC0ghI5ValueOtMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchVerbO_21GeoFlowDelegatePlugin0gH6IntentC0ghI5ValueOtMR);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_B7D70;
  v4 = v3 + v2;
  v5 = *(v0 + 48);
  v6 = enum case for Apple_Parsec_Siri_V2alpha_LocationSearchVerb.unknown(_:);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchVerb();
  v8 = *(*(v7 - 8) + 104);
  v8(v4, v6, v7);
  *(v4 + v5) = 0;
  v9 = *(v0 + 48);
  v8(v4 + v1, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchVerb.share(_:), v7);
  *(v4 + v1 + v9) = 1;
  v10 = *(v0 + 48);
  v8(v4 + 2 * v1, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchVerb.stopShare(_:), v7);
  *(v4 + 2 * v1 + v10) = 2;
  v11 = *(v0 + 48);
  v8(v4 + 3 * v1, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchVerb.report(_:), v7);
  *(v4 + 3 * v1 + v11) = 3;
  v12 = *(v0 + 48);
  v8(v4 + 4 * v1, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchVerb.confirmReport(_:), v7);
  *(v4 + 4 * v1 + v12) = 5;
  v13 = v4 + 5 * v1;
  v14 = *(v0 + 48);
  v8(v13, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchVerb.clearReport(_:), v7);
  *(v13 + v14) = 4;
  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchVerbO_21GeoFlowDelegatePlugin0iJ6IntentC0ijK5ValueOTt0g5Tf4g_n(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v15;
}

unint64_t variable initialization expression of LocationSearchIntentBuilder.locationSearchNounMap()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchNounO_21GeoFlowDelegatePlugin0jK6IntentC0jkL5ValueOtGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchNounO_21GeoFlowDelegatePlugin0jK6IntentC0jkL5ValueOtGMR);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchNounO_21GeoFlowDelegatePlugin0gH6IntentC0ghI5ValueOtMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchNounO_21GeoFlowDelegatePlugin0gH6IntentC0ghI5ValueOtMR);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_B7D80;
  v4 = v3 + v2;
  v5 = *(v0 + 48);
  v6 = enum case for Apple_Parsec_Siri_V2alpha_LocationSearchNoun.unknown(_:);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNoun();
  v8 = *(*(v7 - 8) + 104);
  v8(v4, v6, v7);
  *(v4 + v5) = 0;
  v9 = v4 + v1;
  v10 = *(v0 + 48);
  v8(v9, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchNoun.eta(_:), v7);
  *(v9 + v10) = 6;
  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchNounO_21GeoFlowDelegatePlugin0iJ6IntentC0ijK5ValueOTt0g5Tf4g_n(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v11;
}

unint64_t variable initialization expression of LocationSearchIntentBuilder.locationSearchConfirmationMap()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchConfirmationO_21GeoFlowDelegatePlugin0jK6IntentC0jkL5ValueOtGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchConfirmationO_21GeoFlowDelegatePlugin0jK6IntentC0jkL5ValueOtGMR);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchConfirmationO_21GeoFlowDelegatePlugin0gH6IntentC0ghI5ValueOtMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchConfirmationO_21GeoFlowDelegatePlugin0gH6IntentC0ghI5ValueOtMR);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = 2 * v1;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_B7D60;
  v5 = v4 + v2;
  v6 = *(v0 + 48);
  v7 = enum case for Apple_Parsec_Siri_V2alpha_LocationSearchConfirmation.yes(_:);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchConfirmation();
  v9 = *(*(v8 - 8) + 104);
  v9(v5, v7, v8);
  *(v5 + v6) = 0;
  v10 = v5 + v1;
  v11 = *(v0 + 48);
  v9(v10, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchConfirmation.no(_:), v8);
  *(v10 + v11) = 1;
  v12 = *(v0 + 48);
  v9(v5 + v3, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchConfirmation.cancel(_:), v8);
  *(v5 + v3 + v12) = 2;
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchConfirmationO_21GeoFlowDelegatePlugin0iJ6IntentC0ijK5ValueOTt0g5Tf4g_n(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v13;
}

unint64_t variable initialization expression of LocationSearchIntentBuilder.locationSearchIncidentTypeMap()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchIncidentTypeO_21GeoFlowDelegatePlugin0jK6IntentC0jklM5ValueOtGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchIncidentTypeO_21GeoFlowDelegatePlugin0jK6IntentC0jklM5ValueOtGMR);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchIncidentTypeO_21GeoFlowDelegatePlugin0gH6IntentC0ghiJ5ValueOtMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchIncidentTypeO_21GeoFlowDelegatePlugin0gH6IntentC0ghiJ5ValueOtMR);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_B7D90;
  v4 = v3 + v2;
  v5 = *(v0 + 48);
  v6 = enum case for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType.accident(_:);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType();
  v8 = *(*(v7 - 8) + 104);
  v8(v4, v6, v7);
  *(v4 + v5) = 0;
  v9 = *(v0 + 48);
  v8(v4 + v1, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType.hazard(_:), v7);
  *(v4 + v1 + v9) = 2;
  v10 = *(v0 + 48);
  v8(v4 + 2 * v1, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType.incident(_:), v7);
  *(v4 + 2 * v1 + v10) = 1;
  v11 = *(v0 + 48);
  v8(v4 + 3 * v1, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType.laneClosed(_:), v7);
  *(v4 + 3 * v1 + v11) = 5;
  v12 = *(v0 + 48);
  v8(v4 + 4 * v1, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType.problem(_:), v7);
  *(v4 + 4 * v1 + v12) = 8;
  v13 = *(v0 + 48);
  v8(v4 + 5 * v1, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType.redLightCamera(_:), v7);
  *(v4 + 5 * v1 + v13) = 7;
  v14 = *(v0 + 48);
  v8(v4 + 6 * v1, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType.roadClosed(_:), v7);
  *(v4 + 6 * v1 + v14) = 6;
  v15 = 8 * v1;
  v16 = *(v0 + 48);
  v8(v4 + 7 * v1, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType.roadwork(_:), v7);
  *(v4 + v15 - v1 + v16) = 4;
  v17 = *(v0 + 48);
  v8(v4 + 8 * v1, enum case for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType.speedCheck(_:), v7);
  *(v4 + v15 + v17) = 3;
  v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchIncidentTypeO_21GeoFlowDelegatePlugin0iJ6IntentC0ijkL5ValueOTt0g5Tf4g_n(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v18;
}

uint64_t variable initialization expression of LocationFetchFlow.exitValue()
{
  type metadata accessor for RuntimeError();
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000019;
  *(v0 + 24) = 0x80000000000C0190;
  lazy protocol witness table accessor for type RuntimeError and conformance RuntimeError(&lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError, type metadata accessor for RuntimeError);
  result = swift_allocError();
  *v2 = v0;
  return result;
}

uint64_t variable initialization expression of TrafficIncidentNeedsDisambiguationStrategy.weightedPromptResponseTargets()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_B7D60;
  if (one-time initialization token for incidentTypeNode != -1)
  {
    swift_once();
  }

  *(v0 + 32) = specialized OntologyNode.javaClassName.getter(&_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ17IncidentTypeValueOGMd, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ17IncidentTypeValueOGMR, &lazy protocol witness table cache variable for type TerminalOntologyNode<LocationSearchIntent.LocationSearchIncidentTypeValue> and conformance TerminalOntologyNode<A>);
  *(v0 + 40) = v1;
  if (one-time initialization token for referenceNode != -1)
  {
    swift_once();
  }

  *(v0 + 48) = specialized OntologyNode.javaClassName.getter(&_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ14ReferenceValueOGMd, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ14ReferenceValueOGMR, &lazy protocol witness table cache variable for type TerminalOntologyNode<LocationSearchIntent.LocationSearchReferenceValue> and conformance TerminalOntologyNode<A>);
  *(v0 + 56) = v2;
  if (one-time initialization token for confirmationNode != -1)
  {
    swift_once();
  }

  *(v0 + 64) = specialized OntologyNode.javaClassName.getter(&_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ17ConfirmationValueOGMd, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ17ConfirmationValueOGMR, &lazy protocol witness table cache variable for type TerminalOntologyNode<LocationSearchIntent.LocationSearchConfirmationValue> and conformance TerminalOntologyNode<A>);
  *(v0 + 72) = v3;
  return v0;
}

uint64_t default argument 0 of TemplatingResult.getDialogAsSimpleOutputFlow(_:)@<X0>(uint64_t *a1@<X8>)
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  a1[3] = &type metadata for FlowHelperImpl;
  a1[4] = &protocol witness table for FlowHelperImpl;
  v2 = swift_allocObject();
  *a1 = v2;

  return outlined init with copy of FlowHelperImpl(static FlowHelperImpl.instance, v2 + 16);
}

uint64_t variable initialization expression of LocationSearchIntent.domainOntologyNode(void *a1, uint64_t *a2)
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

uint64_t variable initialization expression of TrafficIncidentRequestSupportedCheckFlow.exitValue()
{
  type metadata accessor for RuntimeError();
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD00000000000002CLL;
  *(v0 + 24) = 0x80000000000C02B0;
  lazy protocol witness table accessor for type RuntimeError and conformance RuntimeError(&lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError, type metadata accessor for RuntimeError);
  result = swift_allocError();
  *v2 = v0;
  return result;
}

uint64_t variable initialization expression of FlowHelperImpl.catService(char a1)
{
  type metadata accessor for CATService();
  v2 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v2 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  type metadata accessor for OS_os_log();
  *(v2 + 32) = OS_os_log.init(subsystem:category:)();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t variable initialization expression of ShareETAContactConfirmationStrategy.weightedPromptResponseTargets()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_B7D60;
  if (one-time initialization token for confirmationNode != -1)
  {
    swift_once();
  }

  *(v0 + 32) = specialized OntologyNode.javaClassName.getter(&_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ17ConfirmationValueOGMd, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ17ConfirmationValueOGMR, &lazy protocol witness table cache variable for type TerminalOntologyNode<LocationSearchIntent.LocationSearchConfirmationValue> and conformance TerminalOntologyNode<A>);
  *(v0 + 40) = v1;
  v2 = type metadata accessor for AddressOntologyNode.OccupantNode();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  AddressOntologyNode.OccupantNode.init(name:multicardinal:)();
  v5 = specialized OntologyNode.javaClassName.getter(&type metadata accessor for AddressOntologyNode.OccupantNode);
  v7 = v6;

  *(v0 + 48) = v5;
  *(v0 + 56) = v7;
  static AddressOntologyNode.OccupantNode.occupantFullNameNode.getter();
  v8 = specialized OntologyNode.javaClassName.getter(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR, &lazy protocol witness table cache variable for type TerminalOntologyNode<String> and conformance TerminalOntologyNode<A>);
  v10 = v9;

  *(v0 + 64) = v8;
  *(v0 + 72) = v10;
  return v0;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance INPersonHandleLabel(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance INPersonHandleLabel(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance INPersonHandleLabel@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance INTrafficIncidentType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance INTrafficIncidentType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Error._domain.getter in conformance related decl e for AFLocationServiceErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RuntimeError and conformance RuntimeError(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode);

  return Error<>._domain.getter(a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance related decl e for AFLocationServiceErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RuntimeError and conformance RuntimeError(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode);

  return Error<>._code.getter(a1, v2);
}

uint64_t protocol witness for Error._getEmbeddedNSError() in conformance related decl e for AFLocationServiceErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RuntimeError and conformance RuntimeError(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

void *_sSo21INTrafficIncidentTypeVSYSCSY8rawValuexSg03RawE0Qz_tcfCTW_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t protocol witness for CustomNSError.errorCode.getter in conformance related decl e for AFLocationServiceErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RuntimeError and conformance RuntimeError(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t protocol witness for CustomNSError.errorUserInfo.getter in conformance related decl e for AFLocationServiceErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RuntimeError and conformance RuntimeError(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t protocol witness for _ObjectiveCBridgeableError.init(_bridgedNSError:) in conformance related decl e for AFLocationServiceErrorCode(void *a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type RuntimeError and conformance RuntimeError(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance related decl e for AFLocationServiceErrorCode(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type RuntimeError and conformance RuntimeError(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance related decl e for AFLocationServiceErrorCode()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance INPersonHandleLabel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance INPersonHandleLabel@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance INPersonHandleLabel(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RuntimeError and conformance RuntimeError(&lazy protocol witness table cache variable for type INPersonHandleLabel and conformance INPersonHandleLabel, type metadata accessor for INPersonHandleLabel);
  v3 = lazy protocol witness table accessor for type RuntimeError and conformance RuntimeError(&lazy protocol witness table cache variable for type INPersonHandleLabel and conformance INPersonHandleLabel, type metadata accessor for INPersonHandleLabel);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance related decl e for AFLocationServiceErrorCode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type RuntimeError and conformance RuntimeError(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance INPersonHandleLabel()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance INPersonHandleLabel()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance INPersonHandleLabel()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance INPersonHandleLabel(uint64_t *a1, uint64_t *a2)
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

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    outlined init with take of Any((*(v12 + 56) + 32 * v9), a3);
    specialized _NativeDictionary._delete(at:)(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType();
  lazy protocol witness table accessor for type RuntimeError and conformance RuntimeError(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType and conformance Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType, &type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5, &type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType, &lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType and conformance Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType, &type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType, &protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType);
}

{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchConfirmation();
  lazy protocol witness table accessor for type RuntimeError and conformance RuntimeError(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_LocationSearchConfirmation and conformance Apple_Parsec_Siri_V2alpha_LocationSearchConfirmation, &type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchConfirmation);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5, &type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchConfirmation, &lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_LocationSearchConfirmation and conformance Apple_Parsec_Siri_V2alpha_LocationSearchConfirmation, &type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchConfirmation, &protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LocationSearchConfirmation);
}

{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNoun();
  lazy protocol witness table accessor for type RuntimeError and conformance RuntimeError(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_LocationSearchNoun and conformance Apple_Parsec_Siri_V2alpha_LocationSearchNoun, &type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNoun);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5, &type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNoun, &lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_LocationSearchNoun and conformance Apple_Parsec_Siri_V2alpha_LocationSearchNoun, &type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNoun, &protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LocationSearchNoun);
}

{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchVerb();
  lazy protocol witness table accessor for type RuntimeError and conformance RuntimeError(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_LocationSearchVerb and conformance Apple_Parsec_Siri_V2alpha_LocationSearchVerb, &type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchVerb);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5, &type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchVerb, &lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_LocationSearchVerb and conformance Apple_Parsec_Siri_V2alpha_LocationSearchVerb, &type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchVerb, &protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LocationSearchVerb);
}

{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(Swift::UInt a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(__int16 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  FlowSelector.FlowSelectorKey.hash(into:)(v6, a1);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
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

{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      lazy protocol witness table accessor for type RuntimeError and conformance RuntimeError(v24, v25);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      outlined destroy of AnyHashable(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

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

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(__int16 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v27 = ~v3;
    while (1)
    {
      v8 = (*(v2 + 48) + 2 * v4);
      v9 = *v8;
      v10 = v8[1];
      if (v9 > 4)
      {
        if (*v8 <= 6u)
        {
          if (v9 == 5)
          {
            v12 = 0x526D7269666E6F63;
            v11 = 0xED000074726F7065;
          }

          else
          {
            v11 = 0xE400000000000000;
            v12 = 1684957542;
          }
        }

        else if (v9 == 7)
        {
          v11 = 0xE600000000000000;
          v12 = 0x796669646F6DLL;
        }

        else if (v9 == 8)
        {
          v11 = 0xE600000000000000;
          v12 = 0x6574656C6564;
        }

        else
        {
          v11 = 0xE400000000000000;
          v12 = 1819042147;
        }
      }

      else if (*v8 <= 1u)
      {
        if (*v8)
        {
          v11 = 0xE500000000000000;
          v12 = 0x6572616873;
        }

        else
        {
          v11 = 0xE300000000000000;
          v12 = 7958113;
        }
      }

      else if (v9 == 2)
      {
        v12 = 0x72616853706F7473;
        v11 = 0xE900000000000065;
      }

      else if (v9 == 3)
      {
        v11 = 0xE600000000000000;
        v12 = 0x74726F706572;
      }

      else
      {
        v12 = 0x7065527261656C63;
        v11 = 0xEB0000000074726FLL;
      }

      v13 = 0x6574656C6564;
      if (a1 == 8)
      {
        v14 = 0xE600000000000000;
      }

      else
      {
        v13 = 1819042147;
        v14 = 0xE400000000000000;
      }

      if (a1 == 7)
      {
        v13 = 0x796669646F6DLL;
        v14 = 0xE600000000000000;
      }

      v15 = 0x526D7269666E6F63;
      if (a1 != 5)
      {
        v15 = 1684957542;
      }

      v16 = 0xED000074726F7065;
      if (a1 != 5)
      {
        v16 = 0xE400000000000000;
      }

      if (a1 <= 6u)
      {
        v13 = v15;
        v14 = v16;
      }

      v17 = 0x7065527261656C63;
      if (a1 == 3)
      {
        v17 = 0x74726F706572;
      }

      v18 = 0xEB0000000074726FLL;
      if (a1 == 3)
      {
        v18 = 0xE600000000000000;
      }

      if (a1 == 2)
      {
        v17 = 0x72616853706F7473;
        v18 = 0xE900000000000065;
      }

      v19 = 0x6572616873;
      if (!a1)
      {
        v19 = 7958113;
      }

      v20 = 0xE300000000000000;
      if (a1)
      {
        v20 = 0xE500000000000000;
      }

      if (a1 <= 1u)
      {
        v17 = v19;
        v18 = v20;
      }

      v21 = a1 <= 4u ? v17 : v13;
      v22 = a1 <= 4u ? v18 : v14;
      if (v12 == v21 && v11 == v22)
      {
        break;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v23)
      {
        goto LABEL_59;
      }

LABEL_6:
      v4 = (v4 + 1) & v27;
      if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

LABEL_59:
    if (v10 > 3)
    {
      if (v10 > 5)
      {
        if (v10 == 6)
        {
          v24 = 0xE300000000000000;
          v25 = 6386789;
        }

        else
        {
          v24 = 0xE500000000000000;
          v25 = 0x6574756F72;
        }
      }

      else if (v10 == 4)
      {
        v24 = 0xE700000000000000;
        v25 = 0x63696666617274;
      }

      else
      {
        v24 = 0xE800000000000000;
        v25 = 0x746E656469636E69;
      }
    }

    else if (v10 > 1)
    {
      if (v10 == 2)
      {
        v24 = 0xE800000000000000;
        v25 = 0x65636E6174736964;
      }

      else
      {
        v25 = 0x6F69746365726964;
        v24 = 0xEA0000000000736ELL;
      }
    }

    else if (v10)
    {
      v24 = 0xE800000000000000;
      v25 = 0x6E6F697461727564;
    }

    else
    {
      v24 = 0xE300000000000000;
      v25 = 7958113;
    }

    if (HIBYTE(a1) > 3u)
    {
      if (HIBYTE(a1) > 5u)
      {
        if (HIBYTE(a1) != 6)
        {
          v6 = 0xE500000000000000;
          if (v25 != 0x6574756F72)
          {
            goto LABEL_5;
          }

          goto LABEL_4;
        }

        v6 = 0xE300000000000000;
        if (v25 == 6386789)
        {
          goto LABEL_4;
        }
      }

      else if (HIBYTE(a1) == 4)
      {
        v6 = 0xE700000000000000;
        if (v25 == 0x63696666617274)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v6 = 0xE800000000000000;
        if (v25 == 0x746E656469636E69)
        {
          goto LABEL_4;
        }
      }
    }

    else if (HIBYTE(a1) > 1u)
    {
      if (HIBYTE(a1) == 2)
      {
        v6 = 0xE800000000000000;
        if (v25 == 0x65636E6174736964)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v6 = 0xEA0000000000736ELL;
        if (v25 == 0x6F69746365726964)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      if (!HIBYTE(a1))
      {
        v6 = 0xE300000000000000;
        if (v25 != 7958113)
        {
          goto LABEL_5;
        }

LABEL_4:
        if (v24 == v6)
        {

          return v4;
        }

        goto LABEL_5;
      }

      v6 = 0xE800000000000000;
      if (v25 == 0x6E6F697461727564)
      {
        goto LABEL_4;
      }
    }

LABEL_5:
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return v4;
    }

    goto LABEL_6;
  }

  return v4;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        outlined init with take of Any(v25, v37);
      }

      else
      {
        outlined init with copy of Any(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = outlined init with take of Any(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSgSaySo8INPersonCGGMd, &_ss18_DictionaryStorageCySSSgSaySo8INPersonCGGMR);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 56) + 8 * v20);
      v34 = *(*(v5 + 48) + 16 * v20);
      v22 = *(*(v5 + 48) + 16 * v20 + 8);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      if (v22)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v34;
      *(*(v8 + 56) + 8 * v16) = v21;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_38;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_38:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21GeoFlowDelegatePlugin0D8SelectorC0dG3KeyV07SiriKitD003AnyD0CSgAC20LocationSearchIntentCcGMd, &_ss18_DictionaryStorageCy21GeoFlowDelegatePlugin0D8SelectorC0dG3KeyV07SiriKitD003AnyD0CSgAC20LocationSearchIntentCcGMR);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_19:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 2 * v24);
      v26 = *v25;
      v27 = v25[1];
      v36 = *(*(v5 + 56) + 16 * v24);
      if ((v35 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      String.hash(into:)();

      result = Hasher._finalize()();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v16) >> 6;
        while (++v18 != v30 || (v29 & 1) == 0)
        {
          v31 = v18 == v30;
          if (v18 == v30)
          {
            v18 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v18);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v18 << 6);
            goto LABEL_11;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = (*(v8 + 48) + 2 * v19);
      *v20 = v26;
      v20[1] = v27;
      *(*(v8 + 56) + 16 * v19) = v36;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_19;
      }
    }

    if (v35)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v20 = *v5;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);

    return outlined init with take of Any(a1, v23);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v22);
  }
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
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

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of Any(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t specialized Collection.dropFirst(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return String.subscript.getter();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  v6 = String.index(_:offsetBy:limitedBy:)();
  if (v7)
  {
    v6 = v5;
  }

  if (4 * v3 < v6 >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of Mirror.DisplayStyle?(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t outlined init with take of CATType(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
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

uint64_t sub_1019C()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v1 = v0[12];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  v2 = v0[23];

  return _swift_deallocObject(v0, 192, 7);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchVerbO_21GeoFlowDelegatePlugin0iJ6IntentC0ijK5ValueOTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchVerbO_21GeoFlowDelegatePlugin0gH6IntentC0ghI5ValueOtMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchVerbO_21GeoFlowDelegatePlugin0gH6IntentC0ghI5ValueOtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchVerbO21GeoFlowDelegatePlugin0iJ6IntentC0ijK5ValueOGMd, &_ss18_DictionaryStorageCy10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchVerbO21GeoFlowDelegatePlugin0iJ6IntentC0ijK5ValueOGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Mirror.DisplayStyle?(v10, v6, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchVerbO_21GeoFlowDelegatePlugin0gH6IntentC0ghI5ValueOtMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchVerbO_21GeoFlowDelegatePlugin0gH6IntentC0ghI5ValueOtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchVerb();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + v14) = v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchNounO_21GeoFlowDelegatePlugin0iJ6IntentC0ijK5ValueOTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchNounO_21GeoFlowDelegatePlugin0gH6IntentC0ghI5ValueOtMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchNounO_21GeoFlowDelegatePlugin0gH6IntentC0ghI5ValueOtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchNounO21GeoFlowDelegatePlugin0iJ6IntentC0ijK5ValueOGMd, &_ss18_DictionaryStorageCy10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchNounO21GeoFlowDelegatePlugin0iJ6IntentC0ijK5ValueOGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Mirror.DisplayStyle?(v10, v6, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchNounO_21GeoFlowDelegatePlugin0gH6IntentC0ghI5ValueOtMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_LocationSearchNounO_21GeoFlowDelegatePlugin0gH6IntentC0ghI5ValueOtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNoun();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + v14) = v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchConfirmationO_21GeoFlowDelegatePlugin0iJ6IntentC0ijK5ValueOTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchConfirmationO_21GeoFlowDelegatePlugin0gH6IntentC0ghI5ValueOtMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchConfirmationO_21GeoFlowDelegatePlugin0gH6IntentC0ghI5ValueOtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchConfirmationO21GeoFlowDelegatePlugin0iJ6IntentC0ijK5ValueOGMd, &_ss18_DictionaryStorageCy10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchConfirmationO21GeoFlowDelegatePlugin0iJ6IntentC0ijK5ValueOGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Mirror.DisplayStyle?(v10, v6, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchConfirmationO_21GeoFlowDelegatePlugin0gH6IntentC0ghI5ValueOtMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchConfirmationO_21GeoFlowDelegatePlugin0gH6IntentC0ghI5ValueOtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchConfirmation();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + v14) = v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchIncidentTypeO_21GeoFlowDelegatePlugin0iJ6IntentC0ijkL5ValueOTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchIncidentTypeO_21GeoFlowDelegatePlugin0gH6IntentC0ghiJ5ValueOtMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchIncidentTypeO_21GeoFlowDelegatePlugin0gH6IntentC0ghiJ5ValueOtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchIncidentTypeO21GeoFlowDelegatePlugin0iJ6IntentC0ijkL5ValueOGMd, &_ss18_DictionaryStorageCy10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchIncidentTypeO21GeoFlowDelegatePlugin0iJ6IntentC0ijkL5ValueOGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Mirror.DisplayStyle?(v10, v6, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchIncidentTypeO_21GeoFlowDelegatePlugin0gH6IntentC0ghiJ5ValueOtMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_LocationSearchIncidentTypeO_21GeoFlowDelegatePlugin0gH6IntentC0ghiJ5ValueOtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchIncidentType();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + v14) = v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t lazy protocol witness table accessor for type LocationServices and conformance LocationServices()
{
  result = lazy protocol witness table cache variable for type LocationServices and conformance LocationServices;
  if (!lazy protocol witness table cache variable for type LocationServices and conformance LocationServices)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationServices and conformance LocationServices);
  }

  return result;
}

void type metadata completion function for ShareETA()
{
  type metadata accessor for (ifStopShareETA: Bool, mode: Int)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (ifStopShareETA: Bool, recipient: DialogPerson, mode: Int)();
    if (v1 <= 0x3F)
    {
      type metadata accessor for (recipient: DialogPerson)(319, &lazy cache variable for type metadata for (recipient: DialogPerson), &type metadata accessor for DialogPerson);
      if (v2 <= 0x3F)
      {
        type metadata accessor for (recipient: DialogPerson, behaviourAfterSpeaking: BehaviorAfterSpeaking)();
        if (v3 <= 0x3F)
        {
          type metadata accessor for (directInvocation: Bool, behaviourAfterSpeaking: BehaviorAfterSpeaking)();
          if (v4 <= 0x3F)
          {
            type metadata accessor for (ifStopShareETA: Bool)();
            if (v5 <= 0x3F)
            {
              type metadata accessor for (recipient: DialogPerson)(319, &lazy cache variable for type metadata for (behaviourAfterSpeaking: BehaviorAfterSpeaking), &type metadata accessor for BehaviorAfterSpeaking);
              if (v6 <= 0x3F)
              {
                type metadata accessor for (device: Int)();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for (ifStopShareETA: Bool, mode: Int)()
{
  if (!lazy cache variable for type metadata for (ifStopShareETA: Bool, mode: Int))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ifStopShareETA: Bool, mode: Int));
    }
  }
}

void type metadata accessor for (ifStopShareETA: Bool, recipient: DialogPerson, mode: Int)()
{
  if (!lazy cache variable for type metadata for (ifStopShareETA: Bool, recipient: DialogPerson, mode: Int))
  {
    type metadata accessor for DialogPerson();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (ifStopShareETA: Bool, recipient: DialogPerson, mode: Int));
    }
  }
}

void type metadata accessor for (recipient: DialogPerson, behaviourAfterSpeaking: BehaviorAfterSpeaking)()
{
  if (!lazy cache variable for type metadata for (recipient: DialogPerson, behaviourAfterSpeaking: BehaviorAfterSpeaking))
  {
    type metadata accessor for DialogPerson();
    type metadata accessor for BehaviorAfterSpeaking();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (recipient: DialogPerson, behaviourAfterSpeaking: BehaviorAfterSpeaking));
    }
  }
}

void type metadata accessor for (directInvocation: Bool, behaviourAfterSpeaking: BehaviorAfterSpeaking)()
{
  if (!lazy cache variable for type metadata for (directInvocation: Bool, behaviourAfterSpeaking: BehaviorAfterSpeaking))
  {
    type metadata accessor for BehaviorAfterSpeaking();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (directInvocation: Bool, behaviourAfterSpeaking: BehaviorAfterSpeaking));
    }
  }
}

void *type metadata accessor for (ifStopShareETA: Bool)()
{
  result = lazy cache variable for type metadata for (ifStopShareETA: Bool);
  if (!lazy cache variable for type metadata for (ifStopShareETA: Bool))
  {
    result = &type metadata for Bool;
    atomic_store(&type metadata for Bool, &lazy cache variable for type metadata for (ifStopShareETA: Bool));
  }

  return result;
}

void type metadata accessor for (recipient: DialogPerson)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *type metadata accessor for (device: Int)()
{
  result = lazy cache variable for type metadata for (device: Int);
  if (!lazy cache variable for type metadata for (device: Int))
  {
    result = &type metadata for Int;
    atomic_store(&type metadata for Int, &lazy cache variable for type metadata for (device: Int));
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactResolution(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine0B6PersonC9recipient_0A7KitFlow21BehaviorAfterSpeakingO09behaviouriJ0tMd, &_s16SiriDialogEngine0B6PersonC9recipient_0A7KitFlow21BehaviorAfterSpeakingO09behaviouriJ0tMR);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t storeEnumTagSinglePayload for ContactResolution(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine0B6PersonC9recipient_0A7KitFlow21BehaviorAfterSpeakingO09behaviouriJ0tMd, &_s16SiriDialogEngine0B6PersonC9recipient_0A7KitFlow21BehaviorAfterSpeakingO09behaviouriJ0tMR);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t type metadata completion function for ContactResolution(uint64_t a1)
{
  type metadata accessor for (recipient: DialogPerson, behaviourAfterSpeaking: BehaviorAfterSpeaking)();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = type metadata accessor for BehaviorAfterSpeaking();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      v7 = *(v5 - 8);
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v9;
    }
  }

  return v3;
}

uint64_t getEnumTag for Compass(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

void *sub_110A8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for RetrieveParkingLocation(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for RetrieveParkingLocation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for ShareETA(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for TrafficIncident()
{
  type metadata accessor for (device: Int)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (incidentTypes: [String], isUpdate: Bool)();
    if (v1 <= 0x3F)
    {
      type metadata accessor for (region: String)();
      if (v2 <= 0x3F)
      {
        type metadata accessor for (recipient: DialogPerson)(319, &lazy cache variable for type metadata for (behaviourAfterSpeaking: BehaviorAfterSpeaking), &type metadata accessor for BehaviorAfterSpeaking);
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for (incidentTypes: [String], isUpdate: Bool)()
{
  if (!lazy cache variable for type metadata for (incidentTypes: [String], isUpdate: Bool))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (incidentTypes: [String], isUpdate: Bool));
    }
  }
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

void *type metadata accessor for (region: String)()
{
  result = lazy cache variable for type metadata for (region: String);
  if (!lazy cache variable for type metadata for (region: String))
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &lazy cache variable for type metadata for (region: String));
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21GeoFlowDelegatePlugin0A5LabelO(uint64_t a1)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GeoLabel(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GeoLabel(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t destructiveInjectEnumTag for GeoLabel(uint64_t result, unsigned int a2)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for LocationSearch(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for LocationSearch(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for LocationSearch(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Common(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Common(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for EndNavigationFlow.State(void *result, int a2)
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

uint64_t getEnumTagSinglePayload for Compass(uint64_t *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Compass(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for LocationServices(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LocationServices(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type RuntimeError and conformance RuntimeError(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

unint64_t outlined copy of NavigationControl(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t outlined copy of LocationSearch(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined copy of GeoLabel(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
  }

  return result;
}

unint64_t outlined copy of Common(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t outlined copy of SaveParkingLocation(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined init with copy of TrafficIncident(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of Mirror.DisplayStyle?(v4, v13, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21INIntentSlotValueTypeV_SSTt0gq5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21INIntentSlotValueTypeVSSGMd, &_ss18_DictionaryStorageCySo21INIntentSlotValueTypeVSSGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 9);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21GeoFlowDelegatePlugin0D8SelectorC0dG3KeyV_07SiriKitD003AnyD0CSgAC20LocationSearchIntentCcTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21GeoFlowDelegatePlugin0D8SelectorC0dG3KeyV07SiriKitD003AnyD0CSgAC20LocationSearchIntentCcGMd, &_ss18_DictionaryStorageCy21GeoFlowDelegatePlugin0D8SelectorC0dG3KeyV07SiriKitD003AnyD0CSgAC20LocationSearchIntentCcGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = (a1 + 32);

    while (1)
    {
      v5 = *v4;
      v6 = v4[1];
      v13 = *(v4 + 8);

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5 | (v6 << 8));
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 2 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 24;
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

uint64_t lazy protocol witness table accessor for type TerminalOntologyNode<LocationSearchIntent.LocationSearchIncidentTypeValue> and conformance TerminalOntologyNode<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with copy of Mirror.DisplayStyle?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Mirror.DisplayStyle?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for related decl e for AFLocationServiceErrorCode(uint64_t a1, unint64_t *a2)
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

uint64_t FlowHelperImpl.device.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_0Tm(v1);

  return outlined init with take of CATType(a1, v1);
}

uint64_t FlowHelperImpl.rchFlowFactory.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 40));

  return outlined init with take of CATType(a1, v1 + 40);
}

uint64_t FlowHelperImpl.catGlobals.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t FlowHelperImpl.aceService.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 88));

  return outlined init with take of CATType(a1, v1 + 88);
}

uint64_t outlined init with copy of DeviceState(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t FlowHelperImpl.outputPublisher.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 128));

  return outlined init with take of CATType(a1, v1 + 128);
}

uint64_t FlowHelperImpl.catService.setter(uint64_t a1)
{
  v3 = *(v1 + 168);

  *(v1 + 168) = a1;
  return result;
}

uint64_t FlowHelperImpl.init()@<X0>(void *a1@<X8>)
{
  static Device.current.getter();
  v2 = type metadata accessor for GeoRCHFlowFactoryImpl();
  v3 = swift_allocObject();
  a1[8] = v2;
  a1[9] = &protocol witness table for GeoRCHFlowFactoryImpl;
  a1[5] = v3;
  a1[10] = static DialogHelper.globals.getter();
  static AceService.currentAsync.getter();
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  type metadata accessor for CATService();
  v4 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v4 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  *(v4 + 32) = result;
  *(v4 + 16) = 0;
  a1[21] = v4;
  return result;
}

void *FlowHelperImpl.instance.unsafeMutableAddressor()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  return static FlowHelperImpl.instance;
}

uint64_t static FlowHelperImpl.instance.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (one-time initialization token for instance != -1)
  {
    swift_once();
    v2 = a1;
  }

  return outlined init with copy of FlowHelperImpl(static FlowHelperImpl.instance, v2);
}

uint64_t default argument 5 of FlowHelperImpl.init(device:rchFlowFactory:catGlobals:aceService:outputPublisher:catService:)()
{
  type metadata accessor for CATService();
  v0 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  type metadata accessor for OS_os_log();
  *(v0 + 32) = OS_os_log.init(subsystem:category:)();
  *(v0 + 16) = 0;
  return v0;
}

uint64_t FlowHelperImpl.init(device:rchFlowFactory:catGlobals:aceService:outputPublisher:catService:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  outlined init with take of CATType(a1, a7);
  outlined init with take of CATType(a2, a7 + 40);
  *(a7 + 80) = a3;
  outlined init with take of CATType(a4, a7 + 88);
  result = outlined init with take of CATType(a5, a7 + 128);
  *(a7 + 168) = a6;
  return result;
}

uint64_t FlowHelper.makeDialogOnlyOutput(model:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v5[17] = swift_task_alloc();
  v7 = type metadata accessor for TemplatingResult();
  v5[18] = v7;
  v8 = *(v7 - 8);
  v5[19] = v8;
  v9 = *(v8 + 64) + 15;
  v5[20] = swift_task_alloc();

  return _swift_task_switch(FlowHelper.makeDialogOnlyOutput(model:), 0, 0);
}

uint64_t FlowHelper.makeDialogOnlyOutput(model:)()
{
  v1 = v0[15];
  v2 = v0[14];
  v3 = (*(v1 + 128))(v2, v1);
  v0[21] = v3;
  v4 = (*(v1 + 80))(v2, v1);
  v0[22] = v4;
  v5 = *(*v3 + 112);
  v11 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[23] = v7;
  *v7 = v0;
  v7[1] = FlowHelper.makeDialogOnlyOutput(model:);
  v8 = v0[20];
  v9 = v0[13];

  return v11(v8, v9, v4);
}

{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v8 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = FlowHelper.makeDialogOnlyOutput(model:);
  }

  else
  {
    v6 = *(v2 + 168);
    v5 = *(v2 + 176);

    v4 = FlowHelper.makeDialogOnlyOutput(model:);
  }

  return _swift_task_switch(v4, 0, 0);
}

{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 128);
  v6 = *(v0 + 96);
  (*(*(v0 + 120) + 32))(*(v0 + 112));
  v7 = type metadata accessor for NLContextUpdate();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = type metadata accessor for AceOutput();
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  v6[3] = v8;
  v6[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_0(v6);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of Mirror.DisplayStyle?(v0 + 56, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of Mirror.DisplayStyle?(v4, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  (*(v2 + 8))(v1, v3);
  v9 = *(v0 + 160);
  v10 = *(v0 + 136);

  v11 = *(v0 + 8);

  return v11();
}

{
  v1 = v0[24];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[12];

  type metadata accessor for EmptyOutput();
  static EmptyOutput.instance.getter();

  v5 = v0[20];
  v6 = v0[17];

  v7 = v0[1];

  return v7();
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
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
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t getEnumTagSinglePayload for FlowHelperImpl(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for FlowHelperImpl(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t GeoFlowDelegatePlugin.flowSelector.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t GeoFlowDelegatePlugin.flowSelector.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t ShareETAPromptForContactStrategy.locationSearchIntent.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
}

uint64_t ShareETAPromptForContactStrategy.locationSearchIntent.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

uint64_t ShareETAPromptForContactStrategy.directInvocation.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

uint64_t ShareETAPromptForContactStrategy.flowHelper.setter(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 56));
  outlined init with take of CATType(a1, v1 + 56);
  return swift_endAccess();
}

uint64_t ShareETAPromptForContactStrategy.isPOMMES.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 96) = a1;
  return result;
}

uint64_t outlined init with copy of ShareETA(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareETA(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ShareETAPromptForContactStrategy.__allocating_init(isPommes:directInvocation:flowHelper:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = type metadata accessor for ShareETA(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  outlined init with copy of DeviceState(a3, v17);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSb16directInvocation_11SiriKitFlow21BehaviorAfterSpeakingO09behaviourgH0tMd, &_sSb16directInvocation_11SiriKitFlow21BehaviorAfterSpeakingO09behaviourgH0tMR) + 48);
  *v10 = a2;
  v12 = enum case for BehaviorAfterSpeaking.listen(_:);
  v13 = type metadata accessor for BehaviorAfterSpeaking();
  (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
  swift_storeEnumTagMultiPayload();
  v14 = (*(v3 + 264))(a1, a2, v17, v10);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  return v14;
}

uint64_t ShareETAPromptForContactStrategy.__allocating_init(isPommes:directInvocation:flowHelper:catModel:)(char a1, char a2, __int128 *a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v11 + 16) = OS_os_log.init(subsystem:category:)();
  type metadata accessor for CATService();
  v12 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v12 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *(v12 + 32) = OS_os_log.init(subsystem:category:)();
  *(v12 + 16) = 0;
  *(v11 + 24) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_B7D60;
  v15 = type metadata accessor for AddressOntologyNode.OccupantNode();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  AddressOntologyNode.OccupantNode.init(name:multicardinal:)();
  v18 = specialized OntologyNode.javaClassName.getter();
  v20 = v19;

  *(v14 + 32) = v18;
  *(v14 + 40) = v20;
  static AddressOntologyNode.OccupantNode.occupantFullNameNode.getter();
  v21 = specialized OntologyNode.javaClassName.getter();
  v23 = v22;

  *(v14 + 48) = v21;
  *(v14 + 56) = v23;
  if (one-time initialization token for confirmationNode != -1)
  {
    swift_once();
  }

  *(v14 + 64) = specialized OntologyNode.javaClassName.getter();
  *(v14 + 72) = v24;
  *(v11 + 32) = v14;
  *(v11 + 40) = 0;
  *(v11 + 48) = 0;
  *(v11 + 96) = 0;
  swift_beginAccess();
  *(v11 + 96) = a1 & 1;
  swift_beginAccess();
  *(v11 + 48) = a2 & 1;
  outlined init with take of CATType(a3, v11 + 56);
  outlined init with take of ShareETA(a4, v11 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin32ShareETAPromptForContactStrategy_catModel);
  return v11;
}

uint64_t ShareETAPromptForContactStrategy.init(isPommes:directInvocation:flowHelper:catModel:)(char a1, char a2, __int128 *a3, uint64_t a4)
{
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v4 + 16) = OS_os_log.init(subsystem:category:)();
  type metadata accessor for CATService();
  v9 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v9 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *(v9 + 32) = OS_os_log.init(subsystem:category:)();
  *(v9 + 16) = 0;
  *(v4 + 24) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_B7D60;
  v12 = type metadata accessor for AddressOntologyNode.OccupantNode();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  AddressOntologyNode.OccupantNode.init(name:multicardinal:)();
  v15 = specialized OntologyNode.javaClassName.getter();
  v17 = v16;

  *(v11 + 32) = v15;
  *(v11 + 40) = v17;
  static AddressOntologyNode.OccupantNode.occupantFullNameNode.getter();
  v18 = specialized OntologyNode.javaClassName.getter();
  v20 = v19;

  *(v11 + 48) = v18;
  *(v11 + 56) = v20;
  if (one-time initialization token for confirmationNode != -1)
  {
    swift_once();
  }

  *(v11 + 64) = specialized OntologyNode.javaClassName.getter();
  *(v11 + 72) = v21;
  *(v4 + 32) = v11;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 96) = 0;
  swift_beginAccess();
  *(v4 + 96) = a1 & 1;
  swift_beginAccess();
  *(v4 + 48) = a2 & 1;
  outlined init with take of CATType(a3, v4 + 56);
  outlined init with take of ShareETA(a4, v4 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin32ShareETAPromptForContactStrategy_catModel);
  return v4;
}

uint64_t ShareETAPromptForContactStrategy.actionForInput(_:)(uint64_t a1)
{
  v2 = v1;
  v31 = type metadata accessor for Parse();
  v4 = *(v31 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v31);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Input();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v2[2];
  (*(v9 + 16))(v12, a1, v8);
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = v7;
    v16 = v15;
    v27 = swift_slowAlloc();
    v32 = v27;
    *v16 = 136315138;
    lazy protocol witness table accessor for type Input and conformance Input();
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v13;
    v18 = v17;
    v30 = v4;
    v20 = v19;
    (*(v9 + 8))(v12, v8);
    v21 = v28;
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v32);
    v4 = v30;

    *(v16 + 4) = v22;
    _os_log_impl(&dword_0, v21, v14, "actionForInput %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);

    v7 = v29;
  }

  else
  {
    (*(v9 + 8))(v12, v8);
  }

  Input.parse.getter();
  v23 = (*(v4 + 88))(v7, v31);
  if (v23 == enum case for Parse.NLv3IntentOnly(_:) || v23 == enum case for Parse.directInvocation(_:))
  {
    static os_log_type_t.info.getter();
    goto LABEL_7;
  }

  if (v23 != enum case for Parse.pommesResponse(_:))
  {
    v25 = enum case for Parse.uso(_:);
    v26 = v23;
    static os_log_type_t.info.getter();
    if (v26 != v25)
    {
      os_log(_:dso:log:_:_:)();
      static ActionForInput.ignore()();
      return (*(v4 + 8))(v7, v31);
    }

LABEL_7:
    os_log(_:dso:log:_:_:)();
    (*(*v2 + 280))(a1);
    return (*(v4 + 8))(v7, v31);
  }

  (*(v4 + 8))(v7, v31);
  static os_log_type_t.info.getter();
  os_log(_:dso:log:_:_:)();
  return (*(*v2 + 280))(a1);
}

uint64_t ShareETAPromptForContactStrategy.handleParse(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for Input();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v35 - v9;
  v11 = type metadata accessor for Parse();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GeoParse();
  Input.parse.getter();
  static GeoParse.getDomainIntent(parse:)(v15, v40);
  (*(v12 + 8))(v15, v11);
  outlined init with copy of GeoIntent?(v40, v39);
  if (!v39[3])
  {
    outlined destroy of Mirror.DisplayStyle?(v39, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMd, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMR);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21GeoFlowDelegatePlugin0A6Intent_pMd, &_s21GeoFlowDelegatePlugin0A6Intent_pMR);
  type metadata accessor for LocationSearchIntent();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v24 = static os_log_type_t.info.getter();
    isa = v36[2].isa;
    (*(v4 + 16))(v8, a1, v3);
    if (os_log_type_enabled(isa, v24))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v39[0] = v27;
      *v26 = 136315138;
      Input.parse.getter();
      v28 = String.init<A>(describing:)();
      v30 = v29;
      (*(v4 + 8))(v8, v3);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v39);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_0, isa, v24, "ignoring parse %s as it is not LocationSearchIntent", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
    }

    else
    {
      (*(v4 + 8))(v8, v3);
    }

    static ActionForInput.ignore()();
    return outlined destroy of Mirror.DisplayStyle?(v40, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMd, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMR);
  }

  if ((*(*v38 + 152))() == 2)
  {
    v16 = static os_log_type_t.info.getter();
    v17 = v36[2].isa;
    (*(v4 + 16))(v10, a1, v3);
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v39[0] = v19;
      *v18 = 136315138;
      v36 = v17;
      Input.parse.getter();
      v20 = String.init<A>(describing:)();
      v22 = v21;
      (*(v4 + 8))(v10, v3);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v39);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_0, v36, v16, "cancelling for parse %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
    }

    else
    {
      (*(v4 + 8))(v10, v3);
    }

    static ActionForInput.cancel()();
  }

  else
  {
    v32 = *(v36->isa + 22);

    v32(v33);
    static ActionForInput.handle()();
  }

  return outlined destroy of Mirror.DisplayStyle?(v40, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMd, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMR);
}

uint64_t ShareETAPromptForContactStrategy.parseValueResponse(input:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology18OccupantIntentNodeVSgMd, &_s12SiriOntology18OccupantIntentNodeVSgMR) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = type metadata accessor for Input();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(ShareETAPromptForContactStrategy.parseValueResponse(input:), 0, 0);
}

uint64_t ShareETAPromptForContactStrategy.parseValueResponse(input:)()
{
  v33 = v0;
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  v6 = static os_log_type_t.info.getter();
  v7 = *(v4 + 16);
  (*(v2 + 16))(v1, v5, v3);
  v8 = os_log_type_enabled(v7, v6);
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v32 = v13;
    *v12 = 136315138;
    lazy protocol witness table accessor for type Input and conformance Input();
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v32);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_0, v7, v6, "parse response value %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
  }

  else
  {
    v18 = (*(v10 + 8))(v0[7], v0[5]);
  }

  v19 = (*(*v0[3] + 168))(v18);
  if (v19)
  {
    v20 = v19;
    v21 = v0[4];
    (*(*v19 + 208))(v19);
    v22 = type metadata accessor for OccupantIntentNode();
    v23 = (*(*(v22 - 8) + 48))(v21, 1, v22);
    outlined destroy of Mirror.DisplayStyle?(v21, &_s12SiriOntology18OccupantIntentNodeVSgMd, &_s12SiriOntology18OccupantIntentNodeVSgMR);
    if (v23 == 1)
    {
      static os_log_type_t.info.getter();
      os_log(_:dso:log:_:_:)();

      v20 = 0;
    }

    v24 = v0[7];
    v25 = v0[4];

    v26 = v0[1];

    return v26(v20);
  }

  else
  {
    v28 = v0[7];
    v29 = v0[4];
    static os_log_type_t.info.getter();
    os_log(_:dso:log:_:_:)();
    lazy protocol witness table accessor for type Errors and conformance Errors();
    swift_allocError();
    *v30 = 0xD000000000000021;
    *(v30 + 8) = 0x80000000000C0570;
    *(v30 + 16) = 0;
    swift_willThrow();

    v31 = v0[1];

    return v31();
  }
}

uint64_t ShareETAPromptForContactStrategy.makePromptForValue()(uint64_t a1)
{
  v2[38] = a1;
  v2[39] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v2[40] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR) - 8) + 64) + 15;
  v2[41] = swift_task_alloc();
  v5 = type metadata accessor for ActivityType();
  v2[42] = v5;
  v6 = *(v5 - 8);
  v2[43] = v6;
  v7 = *(v6 + 64) + 15;
  v2[44] = swift_task_alloc();
  v8 = type metadata accessor for PommesContext.Source();
  v2[45] = v8;
  v9 = *(v8 - 8);
  v2[46] = v9;
  v10 = *(v9 + 64) + 15;
  v2[47] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR) - 8) + 64) + 15;
  v2[48] = swift_task_alloc();
  v12 = type metadata accessor for Siri_Nlu_External_SystemPrompted();
  v2[49] = v12;
  v13 = *(v12 - 8);
  v2[50] = v13;
  v14 = *(v13 + 64) + 15;
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v15 = type metadata accessor for NLContextUpdate();
  v2[53] = v15;
  v16 = *(v15 - 8);
  v2[54] = v16;
  v17 = *(v16 + 64) + 15;
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v18 = type metadata accessor for TemplatingResult();
  v2[57] = v18;
  v19 = *(v18 - 8);
  v2[58] = v19;
  v20 = *(v19 + 64) + 15;
  v2[59] = swift_task_alloc();

  return _swift_task_switch(ShareETAPromptForContactStrategy.makePromptForValue(), 0, 0);
}

uint64_t ShareETAPromptForContactStrategy.makePromptForValue()()
{
  v1 = v0[39];
  v2 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin32ShareETAPromptForContactStrategy_catModel;
  v3 = (*(*v1 + 144))();
  v0[60] = v3;
  v0[5] = type metadata accessor for ShareETA(0);
  v0[6] = &protocol witness table for ShareETA;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  v5 = outlined init with copy of ShareETA(v1 + v2, boxed_opaque_existential_0);
  v6 = *(*v1 + 216);
  v7 = (*v1 + 216) & 0xFFFFFFFFFFFFLL | 0x80BC000000000000;
  v0[61] = v6;
  v0[62] = v7;
  v6(v5);
  v8 = v0[10];
  v9 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v8);
  v10 = (*(v9 + 80))(v8, v9);
  v0[63] = v10;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v11 = *(*v3 + 112);
  v16 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[64] = v13;
  *v13 = v0;
  v13[1] = ShareETAPromptForContactStrategy.makePromptForValue();
  v14 = v0[59];

  return v16(v14, v0 + 2, v10);
}

{
  v2 = *v1;
  v3 = (*v1)[64];
  v10 = *v1;
  (*v1)[65] = v0;

  if (v0)
  {
    v4 = v2[63];
    v5 = v2[60];

    v6 = ShareETAPromptForContactStrategy.makePromptForValue();
  }

  else
  {
    v7 = v2[63];
    v8 = v2[60];

    __swift_destroy_boxed_opaque_existential_0Tm(v2 + 2);
    v6 = ShareETAPromptForContactStrategy.makePromptForValue();
  }

  return _swift_task_switch(v6, 0, 0);
}

{
  v1 = v0[59];
  v3 = v0[55];
  v2 = v0[56];
  v5 = v0[51];
  v4 = v0[52];
  v7 = v0[47];
  v6 = v0[48];
  v8 = v0[44];
  v9 = v0[41];
  v13 = v0[40];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v10 = v0[1];
  v11 = v0[65];

  return v10();
}

id ShareETAPromptForContactStrategy.makePromptForValue()()
{
  v91 = v0;
  v1 = *(v0 + 472);
  v2 = *(v0 + 312);
  TemplatingResult.shouldListenAfterSpeaking(defaultBehavior:)(0);
  v3 = static os_log_type_t.info.getter();
  v4 = *(v2 + 16);
  if (os_log_type_enabled(v4, v3))
  {
    v5 = *(v0 + 312);

    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = (*(*v5 + 192))() & 1;

    _os_log_impl(&dword_0, v4, v3, "directInvocation: %{BOOL}d", v6, 8u);
  }

  v7 = *(v0 + 448);
  v8 = *(v0 + 312);
  v9 = NLContextUpdate.init()();
  v10 = (*(*v8 + 192))(v9);
  v11 = *(v0 + 448);
  if (v10)
  {
    v89 = *(v0 + 448);
    v12 = *(v0 + 408);
    v13 = *(v0 + 416);
    v14 = *(v0 + 392);
    v15 = *(v0 + 400);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
    v16 = *(type metadata accessor for Siri_Nlu_External_SystemDialogAct() - 8);
    v17 = *(v16 + 72);
    v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    *(swift_allocObject() + 16) = xmmword_B89E0;
    v19 = type metadata accessor for UsoTaskBuilder_noVerb_common_Person();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v22 = UsoTaskBuilder_noVerb_common_Person.init()();
    v23 = type metadata accessor for UsoEntityBuilder_common_Person();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    UsoEntityBuilder_common_Person.init()();
    dispatch thunk of Uso_VerbTemplateBuilder_NoVerb.setEntity(value:)();
    static Siri_Nlu_External_SystemPrompted.from(_:)(v22, v13);
    Siri_Nlu_External_SystemDialogAct.init()();
    (*(v15 + 16))(v12, v13, v14);
    Siri_Nlu_External_SystemDialogAct.prompted.setter();

    (*(v15 + 8))(v13, v14);
    NLContextUpdate.nluSystemDialogActs.setter();
  }

  else
  {
    v27 = *(v0 + 432);
    v26 = *(v0 + 440);
    v28 = *(v0 + 424);
    v29 = *(*(v0 + 312) + 32);
    static GeoNLContextUtils.makeNLContextFor(weightedPromptResponseTargets:)();
    (*(v27 + 40))(v11, v26, v28);
    v30 = type metadata accessor for MachineUtteranceBuilder();
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    swift_allocObject();
    MachineUtteranceBuilder.init()();
    if (one-time initialization token for nounNode != -1)
    {
      swift_once();
    }

    TerminalOntologyNode.name.getter();
    dispatch thunk of MachineUtteranceBuilder.addMapping(node:value:)();

    if (one-time initialization token for verbNode != -1)
    {
      swift_once();
    }

    v33 = *(v0 + 448);
    TerminalOntologyNode.name.getter();
    dispatch thunk of MachineUtteranceBuilder.addMapping(node:value:)();

    dispatch thunk of MachineUtteranceBuilder.build()();

    NLContextUpdate.nlInput.setter();
    v34 = static os_log_type_t.info.getter();
    v35 = os_log_type_enabled(v4, v34);
    if (v35)
    {
      v36 = *(v0 + 312);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v90 = v38;
      *v37 = 136315138;
      v39 = (*(*v36 + 240))();
      v40 = (v39 & 1) == 0;
      if (v39)
      {
        v41 = 1702195828;
      }

      else
      {
        v41 = 0x65736C6166;
      }

      if (v40)
      {
        v42 = 0xE500000000000000;
      }

      else
      {
        v42 = 0xE400000000000000;
      }

      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v90);

      *(v37 + 4) = v43;
      _os_log_impl(&dword_0, v4, v34, "updating nl context if true, isPommes: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
    }

    if ((*(**(v0 + 312) + 240))(v35))
    {
      v44 = *(v0 + 448);
      v45 = *(v0 + 384);
      (*(*(v0 + 368) + 104))(*(v0 + 376), enum case for PommesContext.Source.pluginDefined(_:), *(v0 + 360));
      PommesContext.init(source:domain:listenAfterSpeaking:)();
      v46 = type metadata accessor for PommesContext();
      (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
      NLContextUpdate.pommesContext.setter();
      v47 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v4, v47))
      {
        v49 = *(v0 + 440);
        v48 = *(v0 + 448);
        v50 = *(v0 + 424);
        v51 = *(v0 + 432);
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v90 = v53;
        *v52 = 136315138;
        swift_beginAccess();
        (*(v51 + 16))(v49, v48, v50);
        v54 = String.init<A>(describing:)();
        v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, &v90);

        *(v52 + 4) = v56;
        _os_log_impl(&dword_0, v4, v47, "updated nl context with pommes context. nl context = %s", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v53);
      }
    }
  }

  v58 = *(v0 + 344);
  v57 = *(v0 + 352);
  v59 = *(v0 + 336);
  static SiriKitEventSender.current.getter();
  v88 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  (*(v58 + 104))(v57, enum case for ActivityType.promptForData(_:), v59);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INShareETAIntent, INShareETAIntent_ptr);
  result = [swift_getObjCClassFromMetadata() typeName];
  if (result)
  {
    v61 = result;
    v74 = *(v0 + 488);
    v75 = *(v0 + 496);
    v80 = *(v0 + 472);
    v81 = *(v0 + 464);
    v62 = *(v0 + 432);
    v82 = *(v0 + 456);
    v83 = *(v0 + 440);
    v77 = *(v0 + 448);
    v78 = *(v0 + 424);
    v84 = *(v0 + 416);
    v85 = *(v0 + 408);
    v86 = *(v0 + 384);
    v87 = *(v0 + 376);
    v63 = *(v0 + 352);
    v64 = *(v0 + 328);
    v76 = *(v0 + 320);
    v73 = *(v0 + 312);
    v79 = *(v0 + 304);
    type metadata accessor for SiriKitEvent();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v65 = enum case for SiriKitReliabilityCodes.normal(_:);
    v66 = type metadata accessor for SiriKitReliabilityCodes();
    v67 = *(v66 - 8);
    (*(v67 + 104))(v64, v65, v66);
    (*(v67 + 56))(v64, 0, 1, v66);
    SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
    dispatch thunk of SiriKitEventSending.send(_:)();

    v68 = __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
    v74(v68);
    v69 = *(v0 + 160);
    v70 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1((v0 + 136), v69);
    (*(v70 + 32))(v69, v70);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
    swift_beginAccess();
    (*(v62 + 16))(v76, v77, v78);
    (*(v62 + 56))(v76, 0, 1, v78);
    v71 = type metadata accessor for AceOutput();
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0;
    *(v0 + 216) = 0u;
    v79[3] = v71;
    v79[4] = &protocol witness table for AceOutput;
    __swift_allocate_boxed_opaque_existential_0(v79);
    static AceOutputHelper.makeSummaryViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    outlined destroy of Mirror.DisplayStyle?(v0 + 216, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
    outlined destroy of Mirror.DisplayStyle?(v76, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 176));
    (*(v81 + 8))(v80, v82);
    (*(v62 + 8))(v77, v78);

    v72 = *(v0 + 8);

    return v72();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ShareETAPromptForContactStrategy.makeFlowCancelledResponse()(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v4 = type metadata accessor for TemplatingResult();
  v2[25] = v4;
  v5 = *(v4 - 8);
  v2[26] = v5;
  v6 = *(v5 + 64) + 15;
  v2[27] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v8 = type metadata accessor for ActivityType();
  v2[29] = v8;
  v9 = *(v8 - 8);
  v2[30] = v9;
  v10 = *(v9 + 64) + 15;
  v2[31] = swift_task_alloc();

  return _swift_task_switch(ShareETAPromptForContactStrategy.makeFlowCancelledResponse(), 0, 0);
}

id ShareETAPromptForContactStrategy.makeFlowCancelledResponse()()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  v4 = v0[23];
  static os_log_type_t.info.getter();
  v5 = *(v4 + 16);
  os_log(_:dso:log:_:_:)();
  static SiriKitEventSender.current.getter();
  v21 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  (*(v2 + 104))(v1, enum case for ActivityType.canceled(_:), v3);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INShareETAIntent, INShareETAIntent_ptr);
  result = [swift_getObjCClassFromMetadata() typeName];
  if (result)
  {
    v7 = result;
    v8 = v0[31];
    v9 = v0[28];
    v10 = v0[23];
    type metadata accessor for SiriKitEvent();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = enum case for SiriKitReliabilityCodes.rejectParameter(_:);
    v12 = type metadata accessor for SiriKitReliabilityCodes();
    v13 = *(v12 - 8);
    (*(v13 + 104))(v9, v11, v12);
    (*(v13 + 56))(v9, 0, 1, v12);
    SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
    dispatch thunk of SiriKitEventSending.send(_:)();

    v14 = __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    v15 = (*(*v10 + 144))(v14);
    v0[32] = v15;
    v0[10] = &type metadata for Common;
    v0[11] = &protocol witness table for Common;
    v0[7] = 0;
    v16 = static DialogHelper.globals.getter();
    v0[33] = v16;
    v17 = *(*v15 + 112);
    v22 = (v17 + *v17);
    v18 = v17[1];
    v19 = swift_task_alloc();
    v0[34] = v19;
    *v19 = v0;
    v19[1] = ShareETAPromptForContactStrategy.makeFlowCancelledResponse();
    v20 = v0[27];

    return (v22)(v20, v0 + 7, v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ShareETAPromptForContactStrategy.makeFlowCancelledResponse()()
{
  v2 = *v1;
  v3 = (*v1)[34];
  v10 = *v1;
  (*v1)[35] = v0;

  if (v0)
  {
    v5 = v2[32];
    v4 = v2[33];

    v6 = ShareETAPromptForContactStrategy.makeFlowCancelledResponse();
  }

  else
  {
    v7 = v2[32];
    v8 = v2[33];

    __swift_destroy_boxed_opaque_existential_0Tm(v2 + 7);
    v6 = ShareETAPromptForContactStrategy.makeFlowCancelledResponse();
  }

  return _swift_task_switch(v6, 0, 0);
}

{
  v1 = *(v0 + 248);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = *(v0 + 200);
  v5 = *(v0 + 208);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);
  v8 = type metadata accessor for NLContextUpdate();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  static Device.current.getter();
  TemplatingResult.shouldListenAfterSpeaking(defaultBehavior:)(0);
  v9 = type metadata accessor for AceOutput();
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  *(v0 + 136) = 0u;
  v7[3] = v9;
  v7[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_0(v7);
  static AceOutputHelper.makeSummaryViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of Mirror.DisplayStyle?(v0 + 136, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  outlined destroy of Mirror.DisplayStyle?(v6, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v5 + 8))(v2, v4);

  v10 = *(v0 + 8);

  return v10();
}

{
  v1 = v0[31];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[24];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);

  v5 = v0[1];
  v6 = v0[35];

  return v5();
}

uint64_t ShareETAPromptForContactStrategy.makeErrorResponse(_:)()
{
  *(v1 + 16) = v0;
  return _swift_task_switch(ShareETAPromptForContactStrategy.makeErrorResponse(_:), 0, 0);
}

{
  v1 = *(v0 + 16);
  static os_log_type_t.info.getter();
  v2 = *(v1 + 16);
  os_log(_:dso:log:_:_:)();
  lazy protocol witness table accessor for type Errors and conformance Errors();
  swift_allocError();
  *v3 = 0xD000000000000029;
  *(v3 + 8) = 0x80000000000C05F0;
  *(v3 + 16) = 0;
  swift_willThrow();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t ShareETAPromptForContactStrategy.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  outlined destroy of ShareETA(v0 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin32ShareETAPromptForContactStrategy_catModel);
  return v0;
}

uint64_t ShareETAPromptForContactStrategy.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  outlined destroy of ShareETA(v0 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin32ShareETAPromptForContactStrategy_catModel);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance ShareETAPromptForContactStrategy(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  v5 = *(*v2 + 288);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance ShareETAPromptForContactStrategy;

  return v9(a2);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance ShareETAPromptForContactStrategy(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makePromptForValue() in conformance ShareETAPromptForContactStrategy(uint64_t a1)
{
  v4 = *(*v1 + 296);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v8(a1);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse()(a1, a2, a3);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnLowConfidence() in conformance ShareETAPromptForContactStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to PromptForValueFlowStrategyAsync.makeRepromptOnLowConfidence()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return PromptForValueFlowStrategyAsync.makeRepromptOnLowConfidence()(a1, a2, a3);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy(uint64_t a1)
{
  v4 = *(*v1 + 304);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return v8(a1);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeErrorResponse(_:) in conformance ShareETAPromptForContactStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 312);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v10(a1, a2);
}

uint64_t outlined init with take of ShareETA(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareETA(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t closure #1 in OSLogArguments.append(_:)(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
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
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for DisplayHint();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
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
    v10 = &_swiftEmptyArrayStorage;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SiriGeo28EnhancedMSPSharedTripContactVGMd, &_ss23_ContiguousArrayStorageCy7SiriGeo28EnhancedMSPSharedTripContactVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}