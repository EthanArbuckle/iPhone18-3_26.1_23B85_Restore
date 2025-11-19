uint64_t instantiation function for generic protocol witness table for Date.ComponentsFormatStyle(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle, MEMORY[0x1E69694D0]);
  *(a1 + 8) = result;
  return result;
}

{
  result = _s10Foundation4DateV11FormatStyleVAeadAWlTm_0(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle, MEMORY[0x1E69694D0]);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle, MEMORY[0x1E69694D0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t Duration.UnitsFormatStyle.withSizeVariant(_:)(uint64_t a1, uint64_t *a2)
{
  v5 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SizeAdaptiveFormatStyle?(0, &lazy cache variable for type metadata for Duration.UnitsFormatStyle.UnitWidth?, MEMORY[0x1E696A1E8]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v63 = &v52 - v9;
  v10 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v65 = &v52 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v62 = &v52 - v20;
  v21 = type metadata accessor for Duration.UnitsFormatStyle();
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a2;
  v28 = *(v23 + 16);
  if (!v27)
  {
    v28(a1, v2, v24);
    return 1;
  }

  v52 = v6;
  v53 = v5;
  v55 = v23;
  v56 = v22;
  v57 = a1;
  v28(v26, v2, v24);
  v64 = (v11 + 16);
  v29 = (v11 + 8);
  v58 = (v11 + 48);
  v59 = (v11 + 32);
  v60 = (v11 + 56);
  v61 = v26;
  while (1)
  {
    v30 = v65;
    Duration.UnitsFormatStyle.unitWidth.getter();
    v31 = *v64;
    (*v64)(v16, v30, v10);
    static Duration.UnitsFormatStyle.UnitWidth.wide.getter();
    lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.UnitWidth and conformance Duration.UnitsFormatStyle.UnitWidth, MEMORY[0x1E696A1E8]);
    v32 = dispatch thunk of static Equatable.== infix(_:_:)();
    v33 = *v29;
    (*v29)(v13, v10);
    if (v32)
    {
      v33(v16, v10);
      v34 = v63;
      static Duration.UnitsFormatStyle.UnitWidth.condensedAbbreviated.getter();
      v35 = 0;
      goto LABEL_5;
    }

    static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    v33(v13, v10);
    if ((v36 & 1) == 0)
    {
      static Duration.UnitsFormatStyle.UnitWidth.condensedAbbreviated.getter();
      v37 = dispatch thunk of static Equatable.== infix(_:_:)();
      v33(v13, v10);
      if ((v37 & 1) == 0)
      {
        break;
      }
    }

    v33(v16, v10);
    v34 = v63;
    static Duration.UnitsFormatStyle.UnitWidth.narrow.getter();
    v33(v65, v10);
    (*v60)(v34, 0, 1, v10);
LABEL_10:
    v38 = v62;
    (*v59)(v62, v34, v10);
    v31(v13, v38, v10);
    v39 = v61;
    Duration.UnitsFormatStyle.unitWidth.setter();
    result = (v33)(v38, v10);
    v41 = __OFSUB__(v27--, 1);
    if (v41)
    {
      __break(1u);
      goto LABEL_31;
    }

    if (!v27)
    {
      (*(v55 + 32))(v57, v39, v56);
      return 1;
    }
  }

  static Duration.UnitsFormatStyle.UnitWidth.narrow.getter();
  dispatch thunk of static Equatable.== infix(_:_:)();
  v33(v13, v10);
  v33(v16, v10);
  v35 = 1;
  v34 = v63;
LABEL_5:
  v33(v65, v10);
  (*v60)(v34, v35, 1, v10);
  if ((*v58)(v34, 1, v10) != 1)
  {
    goto LABEL_10;
  }

  outlined destroy of SizeAdaptiveFormatStyle?(v34, &lazy cache variable for type metadata for Duration.UnitsFormatStyle.UnitWidth?, MEMORY[0x1E696A1E8]);
  v42 = v54;
  v43 = v61;
  Duration.UnitsFormatStyle.fractionalPartDisplay.getter();
  v44 = Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.maximumLength.getter();
  (*(v52 + 8))(v42, v53);
  if (v44 >= 1)
  {
    v45 = Duration.UnitsFormatStyle.fractionalPartDisplay.modify();
    Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.maximumLength.setter();
    result = v45(v66, 0);
    v41 = __OFSUB__(v27--, 1);
    if (v41)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (!v27)
    {
      (*(v55 + 32))(v57, v43, v56);
      return 1;
    }
  }

  v46 = Duration.UnitsFormatStyle.maximumUnitCount.getter();
  if (v47)
  {
    v48 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v48 = v46;
  }

  v49 = *(Duration.UnitsFormatStyle.allowedUnits.getter() + 16);

  if (v49 >= v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = v49;
  }

  if (v27 >= v50)
  {
    Duration.UnitsFormatStyle.maximumUnitCount.setter();
    (*(v55 + 32))(v57, v43, v56);
    return 0;
  }

  result = v50 - v27;
  v51 = v57;
  if (!__OFSUB__(v50, v27))
  {
    Duration.UnitsFormatStyle.maximumUnitCount.setter();
    (*(v55 + 32))(v51, v43, v56);
    return 1;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t instantiation function for generic protocol witness table for Duration.UnitsFormatStyle(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle and conformance Duration.UnitsFormatStyle, MEMORY[0x1E696A218]);
  *(a1 + 8) = result;
  return result;
}

{
  result = _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle and conformance Duration.UnitsFormatStyle, MEMORY[0x1E696A218]);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle and conformance Duration.UnitsFormatStyle, MEMORY[0x1E696A218]);
  *(a1 + 8) = result;
  return result;
}

uint64_t Duration.UnitsFormatStyle.Attributed.withSizeVariant(_:)(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SizeAdaptiveFormatStyle?(0, &lazy cache variable for type metadata for Duration.UnitsFormatStyle.UnitWidth?, MEMORY[0x1E696A1E8]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v59 = &v48 - v8;
  v9 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v61 = &v48 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v58 = &v48 - v19;
  v20 = type metadata accessor for Duration.UnitsFormatStyle.Attributed();
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a2;
  v27 = *(v22 + 16);
  if (!*a2)
  {
    v27(a1, v60, v23);
    return 1;
  }

  v48 = v5;
  v49 = v4;
  v51 = v22;
  v52 = v21;
  v53 = a1;
  v27(v25, v60, v23);
  v60 = (v10 + 16);
  v28 = (v10 + 8);
  v54 = (v10 + 48);
  v55 = (v10 + 32);
  v56 = (v10 + 56);
  v57 = v25;
  while (1)
  {
    swift_getKeyPath();
    v29 = v61;
    Duration.UnitsFormatStyle.Attributed.subscript.getter();

    v30 = *v60;
    (*v60)(v15, v29, v9);
    static Duration.UnitsFormatStyle.UnitWidth.wide.getter();
    lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.UnitWidth and conformance Duration.UnitsFormatStyle.UnitWidth, MEMORY[0x1E696A1E8]);
    v31 = dispatch thunk of static Equatable.== infix(_:_:)();
    v32 = *v28;
    (*v28)(v12, v9);
    if (v31)
    {
      v32(v15, v9);
      v33 = v59;
      static Duration.UnitsFormatStyle.UnitWidth.condensedAbbreviated.getter();
      v34 = 0;
      goto LABEL_5;
    }

    static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
    v35 = dispatch thunk of static Equatable.== infix(_:_:)();
    v32(v12, v9);
    if ((v35 & 1) == 0)
    {
      static Duration.UnitsFormatStyle.UnitWidth.condensedAbbreviated.getter();
      v36 = dispatch thunk of static Equatable.== infix(_:_:)();
      v32(v12, v9);
      if ((v36 & 1) == 0)
      {
        break;
      }
    }

    v32(v15, v9);
    v33 = v59;
    static Duration.UnitsFormatStyle.UnitWidth.narrow.getter();
    v32(v61, v9);
    (*v56)(v33, 0, 1, v9);
LABEL_10:
    v37 = v58;
    (*v55)(v58, v33, v9);
    swift_getKeyPath();
    v30(v12, v37, v9);
    v38 = v57;
    Duration.UnitsFormatStyle.Attributed.subscript.setter();
    result = (v32)(v37, v9);
    v40 = __OFSUB__(v26--, 1);
    if (v40)
    {
      __break(1u);
      goto LABEL_30;
    }

    if (!v26)
    {
      (*(v51 + 32))(v53, v38, v52);
      return 1;
    }
  }

  static Duration.UnitsFormatStyle.UnitWidth.narrow.getter();
  dispatch thunk of static Equatable.== infix(_:_:)();
  v32(v12, v9);
  v32(v15, v9);
  v34 = 1;
  v33 = v59;
LABEL_5:
  v32(v61, v9);
  (*v56)(v33, v34, 1, v9);
  if ((*v54)(v33, 1, v9) != 1)
  {
    goto LABEL_10;
  }

  outlined destroy of SizeAdaptiveFormatStyle?(v33, &lazy cache variable for type metadata for Duration.UnitsFormatStyle.UnitWidth?, MEMORY[0x1E696A1E8]);
  swift_getKeyPath();
  v41 = v50;
  v42 = v57;
  Duration.UnitsFormatStyle.Attributed.subscript.getter();

  v43 = Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.maximumLength.getter();
  (*(v48 + 8))(v41, v49);
  if (v43 >= 1)
  {
    swift_getKeyPath();
    v44 = Duration.UnitsFormatStyle.Attributed.subscript.modify();
    Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.maximumLength.setter();
    v44(&v62, 0);

    v40 = __OFSUB__(v26--, 1);
    if (v40)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (!v26)
    {
      (*(v51 + 32))(v53, v42, v52);
      return 1;
    }
  }

  swift_getKeyPath();
  Duration.UnitsFormatStyle.Attributed.subscript.getter();

  if (v63)
  {
    v45 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v45 = v62;
  }

  swift_getKeyPath();
  Duration.UnitsFormatStyle.Attributed.subscript.getter();

  v46 = *(v62 + 16);

  if (v46 >= v45)
  {
    v46 = v45;
  }

  result = swift_getKeyPath();
  if (v26 >= v46)
  {
    v62 = 1;
    v63 = 0;
    Duration.UnitsFormatStyle.Attributed.subscript.setter();
    (*(v51 + 32))(v53, v42, v52);
    return 0;
  }

  v47 = v53;
  if (!__OFSUB__(v46, v26))
  {
    v62 = v46 - v26;
    v63 = 0;
    Duration.UnitsFormatStyle.Attributed.subscript.setter();
    (*(v51 + 32))(v47, v42, v52);
    return 1;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t key path setter for Duration.UnitsFormatStyle.fractionalPartDisplay : Duration.UnitsFormatStyle(uint64_t a1)
{
  v2 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return Duration.UnitsFormatStyle.fractionalPartDisplay.setter();
}

uint64_t instantiation function for generic protocol witness table for Duration.UnitsFormatStyle.Attributed(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Attributed and conformance Duration.UnitsFormatStyle.Attributed, MEMORY[0x1E696A1A8]);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Attributed and conformance Duration.UnitsFormatStyle.Attributed, MEMORY[0x1E696A1A8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t Date.AnchoredRelativeFormatStyle.withSizeVariant(_:)(char *a1, uint64_t *a2)
{
  v3 = v2;
  type metadata accessor for SizeAdaptiveFormatStyle?(0, &lazy cache variable for type metadata for Date.RelativeFormatStyle.UnitsStyle?, MEMORY[0x1E69693C0]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v49 = &v40 - v7;
  v8 = type metadata accessor for Date.RelativeFormatStyle.UnitsStyle();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v51 = &v40 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v48 = &v40 - v18;
  v19 = type metadata accessor for Date.AnchoredRelativeFormatStyle();
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a2;
  v26 = *(v21 + 16);
  if (v25)
  {
    v41 = v21;
    v42 = v20;
    v43 = a1;
    v26(v24, v3, v22);
    v50 = (v9 + 16);
    v27 = (v9 + 8);
    v45 = (v9 + 48);
    v46 = (v9 + 56);
    v44 = (v9 + 32);
    v47 = v24;
    v28 = v48;
    while (1)
    {
      v29 = v51;
      Date.AnchoredRelativeFormatStyle.unitsStyle.getter();
      v30 = *v50;
      (*v50)(v14, v29, v8);
      static Date.RelativeFormatStyle.UnitsStyle.spellOut.getter();
      lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle(&lazy protocol witness table cache variable for type Date.RelativeFormatStyle.UnitsStyle and conformance Date.RelativeFormatStyle.UnitsStyle, MEMORY[0x1E69693C0]);
      v31 = dispatch thunk of static Equatable.== infix(_:_:)();
      v32 = *v27;
      (*v27)(v11, v8);
      if (v31)
      {
        break;
      }

      static Date.RelativeFormatStyle.UnitsStyle.wide.getter();
      v34 = dispatch thunk of static Equatable.== infix(_:_:)();
      v32(v11, v8);
      if (v34)
      {
        v32(v14, v8);
        v33 = v49;
        static Date.RelativeFormatStyle.UnitsStyle.abbreviated.getter();
        goto LABEL_9;
      }

      static Date.RelativeFormatStyle.UnitsStyle.abbreviated.getter();
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      v32(v11, v8);
      if (v35)
      {
        v32(v14, v8);
        v33 = v49;
        static Date.RelativeFormatStyle.UnitsStyle.narrow.getter();
        goto LABEL_9;
      }

      static Date.RelativeFormatStyle.UnitsStyle.narrow.getter();
      dispatch thunk of static Equatable.== infix(_:_:)();
      v32(v11, v8);
      v32(v14, v8);
      v36 = 1;
      v33 = v49;
LABEL_10:
      v32(v51, v8);
      (*v46)(v33, v36, 1, v8);
      if ((*v45)(v33, 1, v8) == 1)
      {
        outlined destroy of SizeAdaptiveFormatStyle?(v33, &lazy cache variable for type metadata for Date.RelativeFormatStyle.UnitsStyle?, MEMORY[0x1E69693C0]);
        (*(v41 + 32))(v43, v47, v42);
        return 0;
      }

      (*v44)(v28, v33, v8);
      v30(v11, v28, v8);
      v37 = v47;
      Date.AnchoredRelativeFormatStyle.unitsStyle.setter();
      result = (v32)(v28, v8);
      if (__OFSUB__(v25--, 1))
      {
        __break(1u);
        return result;
      }

      if (!v25)
      {
        (*(v41 + 32))(v43, v37, v42);
        return 1;
      }
    }

    v32(v14, v8);
    v33 = v49;
    static Date.RelativeFormatStyle.UnitsStyle.wide.getter();
LABEL_9:
    v36 = 0;
    goto LABEL_10;
  }

  v26(a1, v3, v22);
  return 1;
}

uint64_t instantiation function for generic protocol witness table for Date.AnchoredRelativeFormatStyle(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle(&lazy protocol witness table cache variable for type Date.AnchoredRelativeFormatStyle and conformance Date.AnchoredRelativeFormatStyle, MEMORY[0x1E6969510]);
  *(a1 + 8) = result;
  return result;
}

{
  result = _s10Foundation4DateV11FormatStyleVAeadAWlTm_0(&lazy protocol witness table cache variable for type Date.AnchoredRelativeFormatStyle and conformance Date.AnchoredRelativeFormatStyle, MEMORY[0x1E6969510]);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Date.RelativeFormatStyle and conformance Date.RelativeFormatStyle(&lazy protocol witness table cache variable for type Date.AnchoredRelativeFormatStyle and conformance Date.AnchoredRelativeFormatStyle, MEMORY[0x1E6969510]);
  *(a1 + 8) = result;
  return result;
}

{
  result = _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(&lazy protocol witness table cache variable for type Date.AnchoredRelativeFormatStyle and conformance Date.AnchoredRelativeFormatStyle, MEMORY[0x1E6969510]);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Date.AnchoredRelativeFormatStyle and conformance Date.AnchoredRelativeFormatStyle, MEMORY[0x1E6969510]);
  *(a1 + 8) = result;
  return result;
}

uint64_t SystemFormatStyle.Timer.withSizeVariant(_:)(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  _s7SwiftUI17SystemFormatStyleO13DateReferenceVWOcTm_0(v2, a1, type metadata accessor for SystemFormatStyle.Timer);
  result = type metadata accessor for SystemFormatStyle.Timer();
  v6 = *(result + 44);
  v7 = *(a1 + v6);
  v8 = __OFADD__(v7, v4);
  v9 = v7 + v4;
  if (v8)
  {
    __break(1u);
    goto LABEL_19;
  }

  *(a1 + v6) = v9;
  v10 = *(v2 + *(result + 44));
  if (__OFSUB__(v10, 2))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = (v10 - 2) & ~((v10 - 2) >> 63);
  v8 = __OFSUB__(v4, v11);
  v12 = v4 - v11;
  if (v8)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v9 < 3)
  {
    return 1;
  }

  v13 = *(result + 32);
  v14 = *(v2 + v13);
  if (v10 < 3)
  {
LABEL_11:
    v17 = *(a1 + v13);
    v8 = __OFADD__(v17, 2);
    v18 = v17 + 2;
    if (!v8)
    {
      v8 = __OFSUB__(v18, v9);
      v19 = v18 - v9;
      if (!v8)
      {
        if (v19 <= 1)
        {
          v19 = 1;
        }

        v8 = __OFSUB__(v14, v19);
        v20 = v14 - v19;
        if (!v8)
        {
          return v20 == v12;
        }

        goto LABEL_23;
      }

LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = __OFADD__(v14, 2);
  v15 = v14 + 2;
  if (v8)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = __OFSUB__(v15, v10);
  v16 = v15 - v10;
  if (!v8)
  {
    if (v16 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v16;
    }

    goto LABEL_11;
  }

LABEL_25:
  __break(1u);
  return result;
}

BOOL protocol witness for SizeAdaptiveFormatStyle.withSizeVariant(_:) in conformance SystemFormatStyle.Stopwatch(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v5;
  _s7SwiftUI17SystemFormatStyleO13DateReferenceVWOcTm_0(v1, v4, type metadata accessor for SystemFormatStyle.Stopwatch);
  v10 = v6;
  outlined destroy of SystemFormatStyle.Stopwatch(v4, type metadata accessor for SystemFormatStyle.Timer);
  SystemFormatStyle.Timer.withSizeVariant(_:)(v4, &v10);
  _s7SwiftUI17SystemFormatStyleO13DateReferenceVWOcTm_0(v4, a1, type metadata accessor for SystemFormatStyle.Stopwatch);
  v7 = *&v4[*(type metadata accessor for SystemFormatStyle.Timer() + 44)] < 6;
  outlined destroy of SystemFormatStyle.Stopwatch(v4, type metadata accessor for SystemFormatStyle.Stopwatch);
  return v7;
}

uint64_t instantiation function for generic protocol witness table for SystemFormatStyle.Stopwatch(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle(&lazy protocol witness table cache variable for type SystemFormatStyle.Stopwatch and conformance SystemFormatStyle.Stopwatch, type metadata accessor for SystemFormatStyle.Stopwatch);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for SystemFormatStyle.Timer(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle(&lazy protocol witness table cache variable for type SystemFormatStyle.Timer and conformance SystemFormatStyle.Timer, type metadata accessor for SystemFormatStyle.Timer);
  *(a1 + 8) = result;
  return result;
}

uint64_t SystemFormatStyle.DateOffset.withSizeVariant(_:)(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = *a2;
  _s7SwiftUI17SystemFormatStyleO13DateReferenceVWOcTm_0(v4, a1, a3);
  result = a4(0);
  v9 = *(result + 32);
  v10 = *(a1 + v9);
  v11 = __OFADD__(v10, v7);
  v12 = v10 + v7;
  if (v11)
  {
    __break(1u);
    goto LABEL_19;
  }

  *(a1 + v9) = v12;
  v13 = *(v4 + *(result + 32));
  if (__OFSUB__(v13, 2))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14 = (v13 - 2) & ~((v13 - 2) >> 63);
  v11 = __OFSUB__(v7, v14);
  v15 = v7 - v14;
  if (v11)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v12 < 3)
  {
    return 1;
  }

  v16 = *(result + 24);
  v17 = *(v4 + v16);
  if (v13 < 3)
  {
LABEL_11:
    v20 = *(a1 + v16);
    v11 = __OFADD__(v20, 2);
    v21 = v20 + 2;
    if (!v11)
    {
      v11 = __OFSUB__(v21, v12);
      v22 = v21 - v12;
      if (!v11)
      {
        if (v22 <= 1)
        {
          v22 = 1;
        }

        v11 = __OFSUB__(v17, v22);
        v23 = v17 - v22;
        if (!v11)
        {
          return v23 == v15;
        }

        goto LABEL_23;
      }

LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v11 = __OFADD__(v17, 2);
  v18 = v17 + 2;
  if (v11)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v11 = __OFSUB__(v18, v13);
  v19 = v18 - v13;
  if (!v11)
  {
    if (v19 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v19;
    }

    goto LABEL_11;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t outlined destroy of SystemFormatStyle.Stopwatch(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of SizeAdaptiveFormatStyle?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  type metadata accessor for SizeAdaptiveFormatStyle?(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for SizeAdaptiveFormatStyle?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t static AnyGesture._makeGesture(gesture:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, _DWORD *a3@<X8>)
{
  v22 = a3;
  v42 = *MEMORY[0x1E69E9840];
  v3 = a2[5];
  v4 = a2[3];
  v31 = a2[4];
  v32 = v3;
  v5 = a2[5];
  v33[0] = a2[6];
  *(v33 + 12) = *(a2 + 108);
  v6 = a2[1];
  v27 = *a2;
  v28 = v6;
  v7 = a2[3];
  v9 = *a2;
  v8 = a2[1];
  v29 = a2[2];
  v30 = v7;
  v38 = v31;
  v39 = v5;
  v40[0] = a2[6];
  *(v40 + 12) = *(a2 + 108);
  v34 = v9;
  v35 = v8;
  v10 = *a1;
  v36 = v29;
  v37 = v4;
  _GestureInputs.makeIndirectOutputs<A>()(v23);
  *&v26[68] = v31;
  *&v26[84] = v32;
  *&v26[100] = v33[0];
  *&v26[112] = *(v33 + 12);
  *&v26[4] = v27;
  *&v26[20] = v28;
  *&v26[36] = v29;
  v11 = *v23;
  v12 = *&v23[4];
  v13 = *&v23[8];
  v14 = *&v23[16];
  *&v26[52] = v30;
  v15 = AGSubgraphGetCurrent();
  if (!v15)
  {
    __break(1u);
  }

  *&v23[68] = *&v26[64];
  *&v23[84] = *&v26[80];
  *&v23[100] = *&v26[96];
  *&v23[116] = *&v26[112];
  *&v23[4] = *v26;
  *&v23[20] = *&v26[16];
  *&v23[36] = *&v26[32];
  *&v23[52] = *&v26[48];
  *v23 = v10;
  *&v23[136] = v11;
  *&v23[140] = v12;
  *&v24 = v13;
  DWORD2(v24) = v14;
  memset(v25 + 8, 0, 20);
  *&v25[0] = v15;
  MEMORY[0x1EEE9AC00](v15);
  v21[2] = type metadata accessor for AnyGestureInfo.Value();
  v16 = type metadata accessor for AnyGestureInfo();
  v21[3] = v16;
  v21[4] = swift_getWitnessTable();
  outlined init with copy of _GestureInputs(&v27, &v34);
  v17 = type metadata accessor for Attribute();

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v23, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, v21, v16, MEMORY[0x1E69E73E0], v17, MEMORY[0x1E69E7410], v18);
  v40[2] = *&v23[128];
  v40[3] = v24;
  v41[0] = v25[0];
  *(v41 + 12) = *(v25 + 12);
  v38 = *&v23[64];
  v39 = *&v23[80];
  v40[0] = *&v23[96];
  v40[1] = *&v23[112];
  v34 = *v23;
  v35 = *&v23[16];
  v36 = *&v23[32];
  v37 = *&v23[48];
  (*(*(v16 - 8) + 8))(&v34, v16);
  AGGraphGetFlags();
  AGGraphSetFlags();
  *v23 = v11;
  *&v23[4] = v12;
  *&v23[8] = v13;
  *&v23[16] = v14;
  type metadata accessor for _GestureOutputs();
  v26[0] = 0;
  result = _GestureOutputs.setIndirectDependency(_:)();
  v20 = v22;
  *v22 = v11;
  v20[1] = v12;
  *(v20 + 1) = v13;
  v20[4] = v14;
  return result;
}

uint64_t AnyGesture.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = specialized AnyGesture.init<A>(_:)(a1, a2, a3);
  (*(*(a3 - 8) + 8))(a1, a3);
  return v5;
}

double AnyGestureStorage.makeChild(uniqueId:container:inputs:)@<D0>(unsigned int a1@<W0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = *v4;
  v7 = *(a3 + 80);
  v41 = *(a3 + 64);
  v42 = v7;
  v43 = *(a3 + 96);
  v44 = *(a3 + 112);
  v8 = *(a3 + 16);
  v37 = *a3;
  v38 = v8;
  v9 = *(a3 + 48);
  v39 = *(a3 + 32);
  v40 = v9;
  v10 = *(a3 + 120);
  v11 = *(v6 + 120);
  v12 = *(v6 + 128);
  *&v28 = __PAIR64__(a1, a2);
  v25 = v11;
  v26 = type metadata accessor for AnyGestureChild();
  WitnessTable = swift_getWitnessTable();
  v13 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v28, closure #1 in Attribute.init<A>(_:)partial apply, v24, v26, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v14);
  _GraphValue.init(_:)(LODWORD(v22[0]), &v21);
  v33 = v42;
  v34 = v43;
  v28 = v37;
  v29 = v38;
  v30 = v39;
  v35 = v44;
  v31 = v40;
  v32 = v41;
  v36 = v10;
  (*(v12 + 32))(v22, &v21, &v28, v11, v12);
  if ((v10 & 8) != 0 && (!swift_conformsToProtocol2() || !v11))
  {
    _gestureModifierProtocolDescriptor();
    v15 = swift_conformsToProtocol();
    v33 = v42;
    v34 = v43;
    v28 = v37;
    v29 = v38;
    v30 = v39;
    if (v15)
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }

    LOBYTE(v21) = v16;
    v35 = v44;
    v31 = v40;
    v32 = v41;
    v36 = v10;
    swift_getAssociatedTypeWitness();
    type metadata accessor for _GestureOutputs();
    v17 = _GestureOutputs.debugData.getter();
    _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(v11, &v21, 0x100000000, &v28, v17 | ((HIDWORD(v17) & 1) << 32), 0x100000000);
  }

  v18 = v22[1];
  v19 = v23;
  result = *v22;
  *a4 = v22[0];
  *(a4 + 8) = v18;
  *(a4 + 16) = v19;
  return result;
}

uint64_t AnyGestureStorage.updateChild(context:)(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(*v1 + 120);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v10[-v5];
  (*(v3 + 16))(&v10[-v5], v1 + *(v7 + 136), v2, v4);
  v12 = v2;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v6, partial apply for closure #1 in RuleContext.value.setter, v11, v2, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v8);
  return (*(v3 + 8))(v6, v2);
}

void AnyGestureInfo.updateValue()(uint64_t a1)
{
  v2 = v1;
  v26 = *MEMORY[0x1E69E9840];
  v4 = *(v1 + 168);
  v5 = *(v1 + 184);
  if (!v4)
  {
    type metadata accessor for AnyGesture();
    v23 = 0;
    v12 = 0;
LABEL_6:
    v22 = v5;
    v8 = *(v2 + 176);
    AGGraphGetValue();

    v10 = AnyGestureInfo.makeItem(_:uniqueId:)(v14, v12);
    v16 = v15;
    v5 = v17;

    v11 = v16;
    v9 = v11;
    goto LABEL_7;
  }

  v6 = *(v1 + 176);
  outlined copy of AnyGestureInfo<A>.Value?<A>(v4, v6);
  type metadata accessor for AnyGesture();
  Value = AGGraphGetValue();
  if (((*(*v4 + 88))(*Value) & 1) == 0)
  {

    v13 = v6;
    AnyGestureInfo.eraseItem(info:)();

    v12 = v5 + 1;
    v23 = *(v2 + 168);
    v5 = *(v2 + 184);
    goto LABEL_6;
  }

  v8 = *(v1 + 176);
  v23 = *(v1 + 168);
  v22 = *(v1 + 184);
  v9 = v6;
  v10 = *AGGraphGetValue();

LABEL_7:
  v24[0] = v10;
  v24[1] = v9;
  v25 = v5;
  MEMORY[0x1EEE9AC00](v11);
  v21[2] = a1;
  v21[3] = swift_getWitnessTable();
  v18 = type metadata accessor for AnyGestureInfo.Value();

  v19 = v9;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v24, partial apply for closure #1 in StatefulRule.value.setter, v21, v18, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v20);

  outlined consume of AnyGestureInfo<()>.Value?(v23, v8);
  *(v2 + 168) = v10;
  *(v2 + 176) = v19;
  *(v2 + 184) = v5;
}

uint64_t AnyGestureInfo.eraseItem(info:)()
{
  type metadata accessor for _GestureOutputs();

  _GestureOutputs.detachIndirectOutputs()();

  AGSubgraphRef.willInvalidate(isInserted:)(1);

  return AGSubgraphInvalidate();
}

uint64_t AnyGestureInfo.makeItem(_:uniqueId:)(uint64_t a1, unsigned int a2)
{
  v5 = AGSubgraphGetGraph();
  v6 = AGSubgraphCreate();

  AGSubgraphAddChild();
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    AGGraphClearUpdate();
    v9 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    closure #1 in AnyGestureInfo.makeItem(_:uniqueId:)(v2, v8, a1, a2, v6, &v10);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    return v10;
  }

  return result;
}

id closure #1 in AnyGestureInfo.makeItem(_:uniqueId:)@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v62 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 24);
  v10 = *(a1 + 72);
  v11 = *(a1 + 104);
  v53[5] = *(a1 + 88);
  v54[0] = v11;
  *(v54 + 12) = *(a1 + 116);
  v12 = *(a1 + 8);
  v13 = *(a1 + 40);
  v53[1] = v9;
  v53[2] = v13;
  v53[3] = *(a1 + 56);
  v53[4] = v10;
  v14 = v9;
  v52 = v12;
  v53[0] = v12;
  v15 = *(a1 + 48);
  v46 = *(a1 + 32);
  v16 = *(a1 + 64);
  v17 = *(a1 + 80);
  v18 = *(a1 + 96);
  v51 = *(a1 + 112);
  v49 = v17;
  v50 = v18;
  v47 = v15;
  v48 = v16;
  v19 = *(&v54[1] + 4);
  v33 = *(&v54[1] + 4);
  swift_beginAccess();
  v20 = v14[3];
  v55[1] = v14[2];
  v55[2] = v20;
  v21 = v14[5];
  v55[3] = v14[4];
  v55[4] = v21;
  v55[0] = v14[1];
  _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_3(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v34 = swift_allocObject();
  memmove((v34 + 16), v14 + 1, 0x50uLL);
  outlined init with copy of _GestureInputs(v53, &v60);
  outlined init with copy of CachedEnvironment(v55, &v60);

  LODWORD(v60) = *(a1 + 120);
  DWORD1(v60) = a2;
  v44 = type metadata accessor for AnyResetSeed();
  WitnessTable = swift_getWitnessTable();
  _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_3(0, &lazy cache variable for type metadata for Attribute<UInt32>, MEMORY[0x1E69E7668], MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v60, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_14, v43, v44, MEMORY[0x1E69E73E0], v22, MEMORY[0x1E69E7410], v23);
  v56 = v52;
  *&v57[40] = v48;
  *&v57[56] = v49;
  v24 = v58[0];
  *&v57[72] = v50;
  *v57 = v34;
  *&v57[88] = v51;
  *&v57[8] = v46;
  *&v57[24] = v47;
  *&v57[96] = v58[0];
  *&v57[100] = v19;
  *&v61[92] = *&v57[92];
  *&v61[48] = *&v57[48];
  *&v61[64] = *&v57[64];
  *&v61[80] = *&v57[80];
  v60 = v52;
  *v61 = *v57;
  *&v61[16] = *&v57[16];
  *&v61[32] = *&v57[32];
  v25 = *(*a3 + 96);
  outlined init with copy of _GestureInputs(&v56, v58);
  v25(&v40, a4, a2, &v60);
  v58[4] = *&v61[48];
  v58[5] = *&v61[64];
  v59[0] = *&v61[80];
  *(v59 + 12) = *&v61[92];
  v58[0] = v60;
  v58[1] = *v61;
  v58[2] = *&v61[16];
  v58[3] = *&v61[32];
  outlined destroy of _GestureInputs(v58);
  v26 = v41;
  v27 = v42;
  v28 = v40;
  v29 = *(a1 + 144);
  v30 = *(a1 + 152);
  v40 = *(a1 + 136);
  v41 = v29;
  v42 = v30;
  v38[0] = v28;
  v38[1] = v26;
  v39 = v27;
  type metadata accessor for _GestureOutputs();

  _GestureOutputs.attachIndirectOutputs(_:)(v38);

  v60 = v52;
  *&v61[40] = v48;
  *&v61[56] = v49;
  *&v61[72] = v50;
  *&v61[8] = v46;
  *v61 = v34;
  *&v61[88] = v51;
  *&v61[24] = v47;
  *&v61[96] = v24;
  *&v61[100] = v33;
  outlined destroy of _GestureInputs(&v60);

  *a6 = a3;
  *(a6 + 8) = a5;
  *(a6 + 16) = a4;

  return a5;
}

uint64_t AnyResetSeed.info.getter()
{
  type metadata accessor for AnyGestureInfo.Value();
  Value = AGGraphGetValue();
  v1 = *Value;
  v2 = Value[1];

  v3 = v2;
  return v1;
}

void protocol witness for static StatefulRule.initialValue.getter in conformance AnyGestureInfo<A>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t AnyResetSeed.value.getter()
{
  v0 = *AGGraphGetValue();
  AnyResetSeed.info.getter();
  v2 = v1;
  v4 = v3;

  return (v4 + v0);
}

uint64_t AnyGestureChild.info.getter()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for AnyGestureInfo.Value();
  Value = AGGraphGetValue();
  v1 = *Value;
  v2 = Value[1];

  v3 = v2;
  return v1;
}

uint64_t protocol witness for Rule.value.getter in conformance AnyResetSeed<A>@<X0>(_DWORD *a1@<X8>)
{
  result = AnyResetSeed.value.getter();
  *a1 = result;
  return result;
}

void AnyGestureChild.updateValue()()
{
  v1 = *(v0 + 4);
  AnyGestureChild.info.getter();
  v3 = v2;
  v5 = v4;

  if (v1 == v5)
  {
    v6 = AnyGestureChild.info.getter();

    if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
    {
      __break(1u);
    }

    else
    {
      (*(*v6 + 104))();
    }
  }
}

uint64_t specialized AnyGesture.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AnyGestureStorage();
  (*(v5 + 16))(v7, a1, a3);
  return AnyGestureStorage.__allocating_init(gesture:)(v7);
}

uint64_t instantiation function for generic protocol witness table for AnyGesture<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void destroy for AnyGestureInfo(uint64_t a1)
{

  if (*(a1 + 168))
  {

    v2 = *(a1 + 176);
  }
}

uint64_t initializeWithCopy for AnyGestureInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v4;
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  v6 = *(a2 + 96);
  v7 = a2 + 168;
  v15 = *(a2 + 168);
  v8 = *(a2 + 104);
  *(a1 + 96) = v6;
  *(a1 + 104) = v8;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  v9 = *(a2 + 160);
  *(a1 + 160) = v9;

  v10 = v6;

  v11 = v9;
  if (v15)
  {
    v12 = *(a2 + 176);
    *(a1 + 168) = v15;
    *(a1 + 176) = v12;
    *(a1 + 184) = *(a2 + 184);

    v13 = v12;
  }

  else
  {
    *(a1 + 168) = *v7;
    *(a1 + 184) = *(v7 + 16);
  }

  return a1;
}

uint64_t assignWithCopy for AnyGestureInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  v4 = *(a2 + 96);
  v5 = *(a1 + 96);
  *(a1 + 96) = v4;
  v6 = v4;

  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);
  v7 = *(a2 + 160);
  v8 = *(a1 + 160);
  *(a1 + 160) = v7;
  v9 = v7;

  v10 = *(a2 + 168);
  if (!*(a1 + 168))
  {
    if (v10)
    {
      *(a1 + 168) = v10;
      v14 = *(a2 + 176);
      *(a1 + 176) = v14;
      *(a1 + 184) = *(a2 + 184);

      v15 = v14;
      return a1;
    }

LABEL_7:
    v17 = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 168) = v17;
    return a1;
  }

  if (!v10)
  {
    v16 = type metadata accessor for AnyGestureInfo.Value();
    (*(*(v16 - 8) + 8))(a1 + 168, v16);
    goto LABEL_7;
  }

  *(a1 + 168) = v10;

  v11 = *(a2 + 176);
  v12 = *(a1 + 176);
  *(a1 + 176) = v11;
  v13 = v11;

  *(a1 + 184) = *(a2 + 184);
  return a1;
}

__n128 __swift_memcpy188_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 172) = *(a2 + 172);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t assignWithTake for AnyGestureInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  v4 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v4;
  v5 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);
  v6 = *(a1 + 160);
  *(a1 + 160) = *(a2 + 160);

  v7 = *(a2 + 168);
  if (!*(a1 + 168))
  {
    goto LABEL_5;
  }

  if (!v7)
  {
    v9 = type metadata accessor for AnyGestureInfo.Value();
    (*(*(v9 - 8) + 8))(a1 + 168, v9);
LABEL_5:
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    return a1;
  }

  *(a1 + 168) = v7;

  v8 = *(a1 + 176);
  *(a1 + 176) = *(a2 + 176);

  *(a1 + 184) = *(a2 + 184);
  return a1;
}

uint64_t getEnumTagSinglePayload for AnyGestureInfo(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 188))
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

uint64_t storeEnumTagSinglePayload for AnyGestureInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
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
    *(result + 184) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 188) = 1;
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

    *(result + 188) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void destroy for AnyGestureInfo.Value(uint64_t a1)
{

  v2 = *(a1 + 8);
}

uint64_t initializeBufferWithCopyOfBuffer for AnyGestureInfo.Value(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);

  v4 = v3;
  return a1;
}

uint64_t assignWithCopy for AnyGestureInfo.Value(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  v6 = v4;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for AnyGestureInfo.Value(uint64_t a1, uint64_t a2)
{

  v4 = *(a1 + 8);
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

id outlined copy of AnyGestureInfo<A>.Value?<A>(id result, void *a2)
{
  if (result)
  {

    return a2;
  }

  return result;
}

uint64_t SubscriptionLifetime.shouldAcceptCompletion(for:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = type metadata accessor for SubscriptionLifetime.StateType();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v18 - v10;
  v12 = *(v3 + 104);
  swift_beginAccess();
  (*(v6 + 16))(v11, v1 + v12, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
    strcpy(&v18[-6], "to subscriber subscription subscriptionID ");
    v18[1] = v4;
    v18[2] = type metadata accessor for AnyCancellable();
    v18[3] = type metadata accessor for Subscription();
    v18[4] = MEMORY[0x1E69E6530];
    TupleTypeMetadata = swift_getTupleTypeMetadata();

    v15 = *(TupleTypeMetadata + 64);
    v16 = *&v11[*(TupleTypeMetadata + 80)];
    __swift_destroy_boxed_opaque_existential_1(&v11[v15]);
    (*(*(v4 - 8) + 8))(v11, v4);
    result = 0;
    if (v16 == a1)
    {
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      (*(v6 + 40))(v1 + v12, v8, v5);
      swift_endAccess();
      return 1;
    }
  }

  else
  {
    (*(v6 + 8))(v11, v5);
    return 0;
  }

  return result;
}

uint64_t SubscriptionLifetime.Connection.receive(completion:)(uint64_t a1, uint64_t a2)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    if (SubscriptionLifetime.shouldAcceptCompletion(for:)(*(v2 + *(a2 + 60))))
    {
      dispatch thunk of Subscriber.receive(completion:)();
    }
  }

  return result;
}

uint64_t protocol witness for CustomCombineIdentifierConvertible.combineIdentifier.getter in conformance SubscriptionLifetime<A>.Connection<A1>@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CombineIdentifier();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t initializeBufferWithCopyOfBuffer for SubscriptionLifetime.Connection(void *a1, void *a2, uint64_t a3)
{
  v6 = *(type metadata accessor for CombineIdentifier() - 8);
  v7 = *(*(*(a3 + 24) - 8) + 80);
  LOBYTE(v6) = *(v6 + 80);
  *a1 = *a2;
  v8 = (v6 | v7) & 0xF8 | 7u;
  return  + ((v8 + 16) & ~v8);
}

uint64_t assignWithCopy for SubscriptionLifetime.Connection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CombineIdentifier();
  v7 = *(v6 - 8) + 24;
  (*v7)(a1, a2, v6);
  v8 = (*(v7 + 40) + 7 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_weakCopyAssign();
  v10 = *(*(a3 + 24) - 8);
  v11 = v10 + 24;
  v12 = *(v10 + 80);
  v13 = (v12 + 8 + v9) & ~v12;
  v14 = (v12 + 8 + v8) & ~v12;
  (*(v10 + 24))(v13, v14);
  *((*(v11 + 40) + 7 + v13) & 0xFFFFFFFFFFFFFFF8) = *((*(v11 + 40) + 7 + v14) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for SubscriptionLifetime.Connection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CombineIdentifier();
  v7 = *(v6 - 8) + 40;
  (*v7)(a1, a2, v6);
  v8 = (*(v7 + 24) + 7 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_weakTakeAssign();
  v10 = *(*(a3 + 24) - 8);
  v11 = v10 + 40;
  v12 = *(v10 + 80);
  v13 = (v12 + 8 + v9) & ~v12;
  v14 = (v12 + 8 + v8) & ~v12;
  (*(v10 + 40))(v13, v14);
  *((*(v11 + 24) + 7 + v13) & 0xFFFFFFFFFFFFFFF8) = *((*(v11 + 24) + 7 + v14) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for SubscriptionLifetime.StateType(uint64_t *__dst, uint64_t *a2, uint64_t a3)
{
  v3 = __dst;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = (((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = v6 + 8;
  v8 = ((v6 + 47) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 <= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v4 + 80);
  if ((v10 & 0x1000F8) != 0 || (v9 | 1) > 0x18)
  {
    v12 = *a2;
    *v3 = *a2;
    v3 = (v12 + (((v10 & 0xF8) + 23) & ~(v10 & 0xF8) & 0x1F8));
LABEL_19:

    return v3;
  }

  v13 = *(a2 + v9);
  if (v9)
  {
    v14 = v13 >= 2;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    v13 = *a2 + 2;
  }

  if (v13 == 1)
  {
    (*(v4 + 16))(__dst);
    v20 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v21 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v21 = *v20;
    v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
    v23 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
    v24 = *(v23 + 24);
    *(v22 + 24) = v24;
    *(v22 + 32) = *(v23 + 32);
    v25 = **(v24 - 8);

    v25(v22, v23, v24);
    *((v22 + 47) & 0xFFFFFFFFFFFFFFF8) = *((v23 + 47) & 0xFFFFFFFFFFFFFFF8);
    *(v3 + v9) = 1;
    return v3;
  }

  if (!v13)
  {
    (*(v4 + 16))(__dst);
    v16 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v17 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v16 = *v17;
    *((v16 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
    *(v3 + v9) = 0;
    goto LABEL_19;
  }

  return memcpy(__dst, a2, v9 | 1);
}

unsigned __int8 *assignWithCopy for SubscriptionLifetime.StateType(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v8 + 8;
  v10 = ((v8 + 47) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = __dst[v11];
  if (v12 >= 2 && v11 != 0)
  {
    v12 = *__dst + 2;
  }

  if (v12 == 1)
  {
    (*(v6 + 8))(__dst, v5);

    __swift_destroy_boxed_opaque_existential_1(((&__dst[v7 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  else if (!v12)
  {
    (*(v6 + 8))(__dst, v5);
  }

  v14 = __src[v11];
  if (v11)
  {
    v15 = v14 >= 2;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    v14 = *__src + 2;
  }

  if (v14 == 1)
  {
    (*(v6 + 16))(__dst, __src, v5);
    v18 = (&__src[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
    v19 = (&__dst[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
    *v19 = *v18;
    v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
    v21 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
    v22 = *(v21 + 24);
    *(v20 + 24) = v22;
    *(v20 + 32) = *(v21 + 32);
    v23 = **(v22 - 8);

    v23(v20, v21, v22);
    *((v20 + 47) & 0xFFFFFFFFFFFFFFF8) = *((v21 + 47) & 0xFFFFFFFFFFFFFFF8);
    __dst[v11] = 1;
    return __dst;
  }

  if (!v14)
  {
    (*(v6 + 16))(__dst, __src, v5);
    v16 = (&__dst[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
    v17 = (&__src[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
    *v16 = *v17;
    *((v16 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
    __dst[v11] = 0;

    return __dst;
  }

  return memcpy(__dst, __src, v11 | 1);
}

_BYTE *initializeWithTake for SubscriptionLifetime.StateType(_BYTE *a1, _DWORD *a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = (((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v5 + 8;
  v7 = ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 <= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(a2 + v8);
  if (v9 >= 2 && v8 != 0)
  {
    v9 = *a2 + 2;
  }

  if (v9 == 1)
  {
    v11 = a1;
    (*(v3 + 32))();
    v16 = (&v11[v4 + 7] & 0xFFFFFFFFFFFFFFF8);
    v17 = ((a2 + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v16 = *v17;
    v18 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
    v19 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
    v21 = *v19;
    v20 = *(v19 + 16);
    *(v18 + 32) = *(v19 + 32);
    *v18 = v21;
    *(v18 + 16) = v20;
    *((v18 + 47) & 0xFFFFFFFFFFFFFFF8) = *((v19 + 47) & 0xFFFFFFFFFFFFFFF8);
    v11[v8] = 1;
    return v11;
  }

  if (!v9)
  {
    v11 = a1;
    (*(v3 + 32))();
    v13 = (&v11[v4 + 7] & 0xFFFFFFFFFFFFFFF8);
    v14 = ((a2 + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v13 = *v14;
    *((v13 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
    v11[v8] = 0;
    return v11;
  }

  return memcpy(a1, a2, v8 | 1);
}

uint64_t getEnumTagSinglePayload for SubscriptionLifetime.StateType(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v3 = (((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = v3 + 8;
  v5 = ((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v5 <= v4)
  {
    v5 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_27;
  }

  v6 = v5 | 1;
  if ((v5 | 1) <= 3)
  {
    v7 = ((a2 + 2) >> 8) + 1;
  }

  else
  {
    v7 = 2;
  }

  if (v7 >= 0x10000)
  {
    v8 = 4;
  }

  else
  {
    v8 = 2;
  }

  if (v7 < 0x100)
  {
    v8 = 1;
  }

  if (v7 >= 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v10 = *&a1[v6];
      if (*&a1[v6])
      {
        goto LABEL_23;
      }
    }

    else
    {
      v10 = *&a1[v6];
      if (v10)
      {
        goto LABEL_23;
      }
    }

LABEL_27:
    v14 = a1[v5];
    if (v14 >= 3)
    {
      return (v14 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v9)
  {
    goto LABEL_27;
  }

  v10 = a1[v6];
  if (!a1[v6])
  {
    goto LABEL_27;
  }

LABEL_23:
  v12 = (v10 - 1) << (8 * v6);
  if (v6 <= 3)
  {
    v13 = *a1;
  }

  else
  {
    v12 = 0;
    v13 = *a1;
  }

  return (v13 | v12) + 254;
}

void storeEnumTagSinglePayload for SubscriptionLifetime.StateType(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = (((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v5 + 8;
  v7 = ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 <= v6)
  {
    v7 = v6;
  }

  v8 = v7 | 1;
  if (a3 < 0xFE)
  {
    v11 = 0;
    if (a2 > 0xFD)
    {
      goto LABEL_16;
    }

LABEL_24:
    if (v11 > 1)
    {
      if (v11 != 2)
      {
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      *&a1[v8] = 0;
    }

    else if (v11)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_34:
      a1[v7] = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v8 <= 3)
  {
    v9 = ((a3 + 2) >> 8) + 1;
  }

  else
  {
    v9 = 2;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (a2 <= 0xFD)
  {
    goto LABEL_24;
  }

LABEL_16:
  v12 = a2 - 254;
  v13 = (a2 - 254) >> 8;
  bzero(a1, v7 | 1);
  if (v8 <= 3)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = 1;
  }

  if (v8 <= 3)
  {
    *a1 = v12;
    if (v11 > 1)
    {
LABEL_21:
      if (v11 == 2)
      {
        *&a1[v8] = v14;
      }

      else
      {
        *&a1[v8] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v12;
    if (v11 > 1)
    {
      goto LABEL_21;
    }
  }

  if (v11)
  {
    a1[v8] = v14;
  }
}

uint64_t getEnumTag for SubscriptionLifetime.StateType(_DWORD *a1, uint64_t a2)
{
  v2 = (((*(*(*(a2 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v3 = v2 + 8;
  v4 = ((v2 + 47) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v4 <= v3)
  {
    v4 = v3;
  }

  v5 = v4;
  v6 = *(a1 + v4);
  if (v6 >= 2 && v5 != 0)
  {
    return (*a1 + 2);
  }

  return v6;
}

void destructiveInjectEnumTag for SubscriptionLifetime.StateType(unsigned int *a1, unsigned int a2, uint64_t a3)
{
  v3 = (((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = v3 + 8;
  v5 = ((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v5 <= v4)
  {
    v5 = v4;
  }

  if (a2 > 1)
  {
    if (v5)
    {
      v6 = 2;
    }

    else
    {
      v6 = a2;
    }

    *(a1 + v5) = v6;
    if (v5)
    {
      v7 = a2 - 2;
      bzero(a1, v5);
      *a1 = v7;
    }
  }

  else
  {
    *(a1 + v5) = a2;
  }
}

double _s7SwiftUI11Map2GestureV05_makeD08modifier6inputs4bodyAA01_D7OutputsVyq0_GAA11_GraphValueVyACyxq_q0_GG_AA01_D6InputsVAIyxGAPXEtFZAA13TappableEventV_AA08ModifierD0VyAA015CoordinateSpaceD0Vy12CoreGraphics7CGFloatVGAA08DistanceD0VGASTt3B503_s7a4UI15od4V05_e24D07gesture6inputsAA01_D7i3Vy5k8QzGAA06_j13I0VyACyxq_GG_z3_D6l30VtFZAHy04BodyI0QzGAQXEfU0_AA04c8D0VyAA13mn9VACyAA015pq6D0Vy12r9Graphics7t6VGAA08U147D0VGAXG_ACyAVyAxCyAA08DurationD0VyAXGAA0O8ListenerVyAXGGAXGACyAA09DependentD033_8687835E41FEE17B108D67665C1D2D0BLLVyAXGACyAA03MapD0VyA2XGA12_GGGTG5ALyAUyACyASA2_ASGAUyACyAsUyAA08DurationD0VyASGAA0N8ListenerVyASGGASGAUyAA09DependentD033_8687835E41FEE17B108D67665C1D2D0BLLVyASGAUyAA03MapD0VyA2SGA10_GGGGGTf1nnnc_n@<D0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  AGGraphCreateOffsetAttribute2();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  _s7SwiftUI11Map2GestureV05_makeD08modifier6inputs4bodyAA01_D7OutputsVyq0_GAA11_GraphValueVyACyxq_q0_GG_AA01_D6InputsVAIyxGAPXEtFZAA13TappableEventV_AA08ModifierD0VyAA08DurationD0VyASGAA0N8ListenerVyASGGASTt3B503_s7a4UI15od4V05_e24D07gesture6inputsAA01_D7i3Vy5k8QzGAA06_j13I0VyACyxq_GG_v3_D6l15VtFZAHy04BodyI0y13GAQXEfU0_AA04c8D0VyAA13mn8VACyAA08p12D0VyAXGAA0O8Q96VyAXGGAXG_ACyAA09DependentD033_8687835E41FEE17B108D67665C1D2D0BLLVyAXGACyAA03MapD0VyA2XGA2_GGTG5ALyAUyACyASA0_ASGAUyAA09DependentD033_8687835E41FEE17B108D67665C1D2D0BLLVyASGAUyAA03MapD0VyA2SGA_GGGGTf1nnnc_n(OffsetAttribute2, a2, &v39);
  v6 = v39;
  v26 = HIDWORD(v39);
  v31 = v40;
  v30 = v41;
  AGGraphCreateOffsetAttribute2();
  _s7SwiftUI15ModifierGestureV05_makeD07gesture6inputsAA01_D7OutputsVy5ValueQzGAA06_GraphI0VyACyxq_GG_AA01_D6InputsVtFZAA015CoordinateSpaceD0Vy12CoreGraphics7CGFloatVG_AA08DistanceD0VTt2B5(a2, &v39);
  v7 = v39;
  v25 = HIDWORD(v39);
  v29 = v40;
  v27 = *(a2 + 120);
  v28 = v41;
  v45 = &type metadata for TappableEvent;
  type metadata accessor for ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>();
  v46 = v8;
  v47 = &type metadata for TappableEvent;
  v48 = lazy protocol witness table accessor for type Focus<Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent>, (_:_:)> and conformance Focus<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>);
  KeyPath = swift_getKeyPath();
  LODWORD(v39) = a1;
  v40 = KeyPath;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI12GesturePhaseOyAA13TappableEventVGAF_ACy12CoreGraphics7CGFloatVGtcMaTm_1(0, &lazy cache variable for type metadata for (_:_:), &lazy cache variable for type metadata for GesturePhase<CGFloat>, MEMORY[0x1E69E7DE0]);
  type metadata accessor for Focus<Map2Gesture<TappableEvent, ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, TappableEvent>, (_:_:)>();
  lazy protocol witness table accessor for type Focus<Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent>, (_:_:)> and conformance Focus<A, B>(&lazy protocol witness table cache variable for type Focus<Map2Gesture<TappableEvent, ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, TappableEvent>, (_:_:)> and conformance Focus<A, B>, type metadata accessor for Focus<Map2Gesture<TappableEvent, ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, TappableEvent>, (_:_:)>);

  v10 = Attribute.init<A>(body:value:flags:update:)();

  v11 = *(a2 + 112);
  v39 = __PAIR64__(v6, v10);
  v40 = __PAIR64__(v11, v7);
  LODWORD(v41) = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI12GesturePhaseOyytGMaTm_0(0, &lazy cache variable for type metadata for GesturePhase<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for GesturePhase);
  type metadata accessor for Map2Phase<TappableEvent, CGFloat, TappableEvent>(0, &lazy cache variable for type metadata for Map2Phase<TappableEvent, CGFloat, TappableEvent>);
  lazy protocol witness table accessor for type Map2Phase<TappableEvent, Double, TappableEvent> and conformance Map2Phase<A, B, C>(&lazy protocol witness table cache variable for type Map2Phase<TappableEvent, CGFloat, TappableEvent> and conformance Map2Phase<A, B, C>, &lazy cache variable for type metadata for Map2Phase<TappableEvent, CGFloat, TappableEvent>);
  v12 = Attribute.init<A>(body:value:flags:update:)();
  v13 = *MEMORY[0x1E698D3F8];
  v14 = MEMORY[0x1E69E7CC0];
  v35 = MEMORY[0x1E69E7CC0];
  v36 = 0;
  v34 = COERCE_DOUBLE(__PAIR64__(v13, v12));
  if ((v27 & 8) != 0)
  {
    v15 = v26 == v13;
    if (v26 == v13)
    {
      v16 = 0;
    }

    else
    {
      v16 = v26;
    }

    v17 = v25 == v13;
    if (v17)
    {
      v18 = 0;
    }

    else
    {
      v18 = v25;
    }

    LOBYTE(v39) = v17;
    _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA04Map2C0VyA1_AA08ModifierC0VyAA015CoordinateSpaceC0Vy12CoreGraphics7CGFloatVGAA08DistanceC0VGA1_GTtB5(4, 0x100000000, a2, v16 | (v15 << 32), v18 | (v17 << 32));
  }

  v43 = v14;
  v44 = 0;
  v39 = v31;
  LODWORD(v40) = v30;
  v41 = v29;
  v42 = v28;
  v19 = *(a2 + 96);
  v37 = v19;
  v38 = *(a2 + 104);
  v20 = *(v19 + 16);
  if (v20)
  {
    outlined init with copy of PreferencesInputs(&v37, v33);
    v21 = (v19 + 40);
    do
    {
      static PreferenceKey.visitKey<A>(_:)(&v39, *(v21 - 1), &type metadata for PairwisePreferenceCombinerVisitor, *v21, &protocol witness table for PairwisePreferenceCombinerVisitor);
      v21 += 2;
      --v20;
    }

    while (v20);
  }

  else
  {
    outlined init with copy of PreferencesInputs(&v37, v33);
  }

  v22 = v43;
  v23 = v44;

  result = v34;
  *a3 = v34;
  *(a3 + 8) = v22;
  *(a3 + 16) = v23;
  return result;
}

double _s7SwiftUI11Map2GestureV05_makeD08modifier6inputs4bodyAA01_D7OutputsVyq0_GAA11_GraphValueVyACyxq_q0_GG_AA01_D6InputsVAIyxGAPXEtFZAA13TappableEventV_AA08ModifierD0VyAA08DurationD0VyASGAA0N8ListenerVyASGGASTt3B503_s7a4UI15od4V05_e24D07gesture6inputsAA01_D7i3Vy5k8QzGAA06_j13I0VyACyxq_GG_v3_D6l15VtFZAHy04BodyI0y13GAQXEfU0_AA04c8D0VyAA13mn8VACyAA08p12D0VyAXGAA0O8Q96VyAXGGAXG_ACyAA09DependentD033_8687835E41FEE17B108D67665C1D2D0BLLVyAXGACyAA03MapD0VyA2XGA2_GGTG5ALyAUyACyASA0_ASGAUyAA09DependentD033_8687835E41FEE17B108D67665C1D2D0BLLVyASGAUyAA03MapD0VyA2SGA_GGGGTf1nnnc_n@<D0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = *MEMORY[0x1E69E9840];
  AGGraphCreateOffsetAttribute2();
  _s7SwiftUI15ModifierGestureV05_makeD07gesture6inputsAA01_D7OutputsVy5ValueQzGAA06_GraphI0VyACyxq_GG_AA01_D6InputsVtFZAA09DependentD033_8687835E41FEE17B108D67665C1D2D0BLLVyAA13TappableEventVG_ACyAA03MapD0VyA2VGAA0U8ListenerVyAVGGTt2B5(a2, &v38);
  v5 = v38;
  v25 = HIDWORD(v38);
  v30 = v39;
  v29 = v40;
  AGGraphCreateOffsetAttribute2();
  _s7SwiftUI15ModifierGestureV05_makeD07gesture6inputsAA01_D7OutputsVy5ValueQzGAA06_GraphI0VyACyxq_GG_AA01_D6InputsVtFZAA08DurationD0VyAA13TappableEventVG_AA0N8ListenerVyAUGTt2B5(a2, &v38);
  v6 = v38;
  v24 = HIDWORD(v38);
  v28 = v39;
  v26 = *(a2 + 120);
  v27 = v40;
  v44 = &type metadata for TappableEvent;
  type metadata accessor for ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>();
  v45 = v7;
  v46 = &type metadata for TappableEvent;
  v47 = lazy protocol witness table accessor for type Focus<Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent>, (_:_:)> and conformance Focus<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>);
  KeyPath = swift_getKeyPath();
  LODWORD(v38) = a1;
  v39 = KeyPath;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI12GesturePhaseOyAA13TappableEventVGAF_ACy12CoreGraphics7CGFloatVGtcMaTm_1(0, &lazy cache variable for type metadata for (_:_:), &lazy cache variable for type metadata for GesturePhase<Double>, MEMORY[0x1E69E63B0]);
  type metadata accessor for Focus<Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent>, (_:_:)>();
  lazy protocol witness table accessor for type Focus<Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent>, (_:_:)> and conformance Focus<A, B>(&lazy protocol witness table cache variable for type Focus<Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent>, (_:_:)> and conformance Focus<A, B>, type metadata accessor for Focus<Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent>, (_:_:)>);

  v9 = Attribute.init<A>(body:value:flags:update:)();

  v10 = *(a2 + 112);
  v38 = __PAIR64__(v5, v9);
  v39 = __PAIR64__(v10, v6);
  LODWORD(v40) = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI12GesturePhaseOyytGMaTm_0(0, &lazy cache variable for type metadata for GesturePhase<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for GesturePhase);
  type metadata accessor for Map2Phase<TappableEvent, CGFloat, TappableEvent>(0, &lazy cache variable for type metadata for Map2Phase<TappableEvent, Double, TappableEvent>);
  lazy protocol witness table accessor for type Map2Phase<TappableEvent, Double, TappableEvent> and conformance Map2Phase<A, B, C>(&lazy protocol witness table cache variable for type Map2Phase<TappableEvent, Double, TappableEvent> and conformance Map2Phase<A, B, C>, &lazy cache variable for type metadata for Map2Phase<TappableEvent, Double, TappableEvent>);
  v11 = Attribute.init<A>(body:value:flags:update:)();
  v12 = *MEMORY[0x1E698D3F8];
  v13 = MEMORY[0x1E69E7CC0];
  v34 = MEMORY[0x1E69E7CC0];
  v35 = 0;
  v33 = COERCE_DOUBLE(__PAIR64__(v12, v11));
  if ((v26 & 8) != 0)
  {
    v14 = v25 == v12;
    if (v25 == v12)
    {
      v15 = 0;
    }

    else
    {
      v15 = v25;
    }

    v16 = v24 == v12;
    if (v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = v24;
    }

    LOBYTE(v38) = v16;
    _s7SwiftUI15_GestureOutputsVAAE10reallyWrap33_40D5679141F478561068F8E300838A67LL_4kind10properties6inputs4datayqd__m_AA0C5DebugO4KindO14AttributeGraph0R0VyAA16ArrayWith2InlineVySS_SStGGSgAA01_C6InputsVAPyAK4DataVGSg_A_ttlFAA13TappableEventV_AA04Map2C0VyA1_AA08ModifierC0VyAA08DurationC0VyA1_GAA0Z8ListenerVyA1_GGA1_GTtB5(4, 0x100000000, a2, v15 | (v14 << 32), v17 | (v16 << 32));
  }

  v42 = v13;
  v43 = 0;
  v38 = v30;
  LODWORD(v39) = v29;
  v40 = v28;
  v41 = v27;
  v18 = *(a2 + 96);
  v36 = v18;
  v37 = *(a2 + 104);
  v19 = *(v18 + 16);
  if (v19)
  {
    outlined init with copy of PreferencesInputs(&v36, v32);
    v20 = (v18 + 40);
    do
    {
      static PreferenceKey.visitKey<A>(_:)(&v38, *(v20 - 1), &type metadata for PairwisePreferenceCombinerVisitor, *v20, &protocol witness table for PairwisePreferenceCombinerVisitor);
      v20 += 2;
      --v19;
    }

    while (v19);
  }

  else
  {
    outlined init with copy of PreferencesInputs(&v36, v32);
  }

  v21 = v42;
  v22 = v43;

  result = v33;
  *a3 = v33;
  *(a3 + 8) = v21;
  *(a3 + 16) = v22;
  return result;
}

uint64_t static Map2Gesture._makeGesture(modifier:inputs:body:)@<X0>(__int32 *a1@<X0>, __int128 *a2@<X1>, void (*a3)(int32x2_t *__return_ptr, _BYTE *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, int32x2_t *a8@<X8>)
{
  *&v51 = a6;
  *(&v51 + 1) = a7;
  v57 = a8;
  v92 = *MEMORY[0x1E69E9840];
  v10 = a2[3];
  v11 = a2[1];
  v88 = a2[2];
  v89 = v10;
  v12 = a2[3];
  v13 = a2[5];
  v90 = a2[4];
  v91 = v13;
  v14 = a2[1];
  v86 = *a2;
  v87 = v14;
  v77 = v88;
  v78 = v12;
  v15 = a2[5];
  v79 = v90;
  v80 = v15;
  v16 = *a1;
  v17 = *(a2 + 12);
  v18 = *(a2 + 13);
  v19 = *(a2 + 28);
  v20 = *(a2 + 29);
  v21 = *(a2 + 30);
  *v76 = v86;
  *&v76[16] = v11;
  v81 = v17;
  v82 = v18;
  v83 = v19;
  v84 = v20;
  v85 = v21;
  a3(&v70, v76);
  v22 = v70;
  v56 = v71;
  v55 = v72;
  v73 = a4;
  v74 = a5;
  v75 = v51;
  v53 = v16;
  v66.i32[0] = v16;
  v54 = a4;
  *v76 = a4;
  *&v76[8] = a5;
  *&v76[16] = v51;
  v49 = type metadata accessor for Map2Gesture();
  v52 = type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in static Map2Gesture._makeGesture(modifier:inputs:body:), a5, v64);
  v77 = v88;
  v78 = v89;
  v79 = v90;
  v80 = v91;
  *v76 = v86;
  *&v76[16] = v87;
  v60 = v17;
  v81 = v17;
  v82 = v18;
  v59 = v19;
  v83 = v19;
  v50 = v20;
  v84 = v20;
  v85 = v21;
  v23 = (*(*(&v51 + 1) + 32))(&v70, v64, v76, a5, *(&v51 + 1));
  v58 = v21;
  if ((v21 & 8) != 0)
  {
    v23 = swift_conformsToProtocol2();
    if (!v23 || !a5)
    {
      _gestureModifierProtocolDescriptor();
      if (swift_conformsToProtocol())
      {
        v24 = 2;
      }

      else
      {
        v24 = 1;
      }

      LOBYTE(v64[0]) = v24;
      v77 = v88;
      v78 = v89;
      v79 = v90;
      v80 = v91;
      *v76 = v86;
      *&v76[16] = v87;
      v81 = v60;
      v82 = v18;
      v83 = v59;
      v84 = v50;
      v85 = v58;
      swift_getAssociatedTypeWitness();
      type metadata accessor for _GestureOutputs();
      v25 = _GestureOutputs.debugData.getter();
      v69[0] = 1;
      v23 = _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(a5, v64, 0x100000000, v76, v25 | ((HIDWORD(v25) & 1) << 32), 0x100000000);
    }
  }

  v48 = v18;
  v26 = v70;
  v62 = v71;
  v61 = v72;
  MEMORY[0x1EEE9AC00](v23);
  v47 = *(&v51 + 1);
  KeyPath = swift_getKeyPath();
  *v76 = v53;
  _GraphValue.subscript.getter(KeyPath, &v70);

  v28 = v70.i32[0];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *v76 = v28;
  *&v76[4] = vzip1_s32(v22, v26);
  v30 = v59;
  *&v76[12] = v59;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v44[2] = type metadata accessor for GesturePhase();
  v45 = type metadata accessor for Map2Phase();
  WitnessTable = swift_getWitnessTable();
  v31 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v76, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, v44, v45, MEMORY[0x1E69E73E0], v31, MEMORY[0x1E69E7410], v32);
  _GestureOutputs.init(phase:)(v70.u32[0], &v70);
  v33 = v60;
  v34 = v56;
  v35 = v55;
  if ((v58 & 8) != 0)
  {
    v69[0] = 4;
    v77 = v88;
    v78 = v89;
    v79 = v90;
    v80 = v91;
    *v76 = v86;
    *&v76[16] = v87;
    v81 = v60;
    v82 = v48;
    v83 = v30;
    v84 = v50;
    v85 = v58;
    v66 = v22;
    v67 = v56;
    v68 = v55;
    type metadata accessor for _GestureOutputs();
    v36 = _GestureOutputs.debugData.getter();
    v64[0] = v26;
    v64[1] = v62;
    v65 = v61;
    type metadata accessor for _GestureOutputs();
    v37 = _GestureOutputs.debugData.getter();
    type metadata accessor for _GestureOutputs();
    v63 = 1;
    _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(v49, v69, 0x100000000, v76, v36 | ((HIDWORD(v36) & 1) << 32), v37 | ((HIDWORD(v37) & 1) << 32));
  }

  *&v77 = MEMORY[0x1E69E7CC0];
  DWORD2(v77) = 0;
  *v76 = v34;
  *&v76[8] = v35;
  *&v76[16] = v62;
  *&v76[24] = v61;
  v38 = *(v33 + 16);
  if (v38)
  {

    v39 = (v33 + 40);
    do
    {
      static PreferenceKey.visitKey<A>(_:)(v76, *(v39 - 1), &type metadata for PairwisePreferenceCombinerVisitor, *v39, &protocol witness table for PairwisePreferenceCombinerVisitor);
      v39 += 2;
      --v38;
    }

    while (v38);
  }

  else
  {
  }

  v40 = v77;
  v41 = DWORD2(v77);

  v43 = v57;
  *v57 = v70;
  v43[1] = v40;
  v43[2].i32[0] = v41;
  return result;
}

uint64_t closure #1 in static Map2Gesture._makeGesture(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v10[2] = type metadata accessor for Map2Gesture();
  v10[3] = a3;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v10, a3, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v11;
}

uint64_t key path getter for Map2Gesture.body : <A, B, C>Map2Gesture<A, B, C>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Map2Gesture() + 52));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t key path setter for Map2Gesture.body : <A, B, C>Map2Gesture<A, B, C>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Map2Gesture() + 52));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Map2Phase.updateValue()(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v24 = *(a1 + 24);
  v2 = type metadata accessor for GesturePhase();
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v22 - v3;
  v5 = type metadata accessor for GesturePhase();
  v25 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  v8 = type metadata accessor for GesturePhase();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  swift_getWitnessTable();
  result = ResettableGestureRule.resetIfNeeded()();
  if (result)
  {
    v22 = v8;
    v23 = v9;
    v13 = specialized Map2Phase.body.getter();

    Value = AGGraphGetValue();
    v15 = v25;
    (*(v25 + 16))(v7, Value, v5);
    v16 = v27;
    v17 = AGGraphGetValue();
    v18 = v26;
    (*(v26 + 16))(v4, v17, v16);
    v13(v7, v4);

    (*(v18 + 8))(v4, v16);
    v19 = (*(v15 + 8))(v7, v5);
    MEMORY[0x1EEE9AC00](v19);
    *(&v22 - 2) = a1;
    *(&v22 - 1) = swift_getWitnessTable();
    v20 = v22;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v11, partial apply for closure #1 in StatefulRule.value.setter, (&v22 - 4), v22, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v21);
    return (*(v23 + 8))(v11, v20);
  }

  return result;
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance Map2Phase<A, B, C>@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GesturePhase();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t Gesture.combined<A, B>(with:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v29 = a9;
  v26[1] = a7;
  v27 = a2;
  v28 = a3;
  v26[0] = a1;
  v13 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = AssociatedTypeWitness;
  v31 = a5;
  v32 = a6;
  v33 = a8;
  v17 = type metadata accessor for Map2Gesture();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = v26 - v20;
  (*(v13 + 16))(v15, v26[0], a5, v19);
  (*(v13 + 32))(v21, v15, a5);
  v30 = AssociatedTypeWitness;
  v31 = a5;
  v32 = a6;
  v33 = a8;
  v22 = &v21[*(type metadata accessor for Map2Gesture() + 52)];
  v23 = v28;
  *v22 = v27;
  *(v22 + 1) = v23;
  swift_getWitnessTable();
  Gesture.modifier<A>(_:)(v21, a4, v17, v29);
  v24 = *(v18 + 8);

  return v24(v21, v17);
}

uint64_t Gesture.zip<A>(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  Gesture.combined<A, B>(with:body:)(a1, partial apply for closure #1 in Gesture.zip<A>(with:), v12, a2, a3, TupleTypeMetadata2, a4, a5, a6);
}

uint64_t closure #1 in Gesture.zip<A>(with:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for GesturePhase();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return GesturePhase.and<A>(_:)(a1, v4, AssociatedTypeWitness, a2);
}

uint64_t GesturePhase.and<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10[2] = *(a2 + 16);
  v10[3] = a3;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return GesturePhase.and<A, B>(_:value:)(a1, partial apply for closure #1 in GesturePhase.and<A>(_:), v10, a2, a3, TupleTypeMetadata2, a4);
}

{
  v5[2] = *(a2 + 16);
  v5[3] = a3;
  return GesturePhase.and<A, B>(_:value:)(a1, _ViewInputs.base.modify, v5, a2, a3, MEMORY[0x1E69E7CA8] + 8, a4);
}

uint64_t closure #1 in Gesture.gated<A>(by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for GesturePhase();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  (*(v7 + 16))(&v13 - v9, a2, v6, v8);
  LODWORD(a2) = swift_getEnumCaseMultiPayload();
  (*(v7 + 8))(v10, v6);
  swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for GesturePhase();
  if (a2 == 3)
  {
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    return (*(*(v11 - 8) + 16))(a3, a1);
  }
}

uint64_t Gesture.gated<A>(by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  Gesture.combined<A, B>(with:body:)(a1, a6, v14, a2, a3, AssociatedTypeWitness, a4, a5, a7);
}

uint64_t closure #1 in Gesture.enabled<A>(by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for GesturePhase();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  (*(v7 + 16))(&v15 - v9, a2, v6, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      swift_getAssociatedTypeWitness();
      type metadata accessor for GesturePhase();
      return swift_storeEnumTagMultiPayload();
    }

    else
    {
      swift_getAssociatedTypeWitness();
      v14 = type metadata accessor for GesturePhase();
      GesturePhase.unwrapped.getter(v14, a3);
      swift_storeEnumTagMultiPayload();
      return (*(v7 + 8))(v10, v6);
    }
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    swift_getAssociatedTypeWitness();
    v12 = type metadata accessor for GesturePhase();
    return (*(*(v12 - 8) + 16))(a3, a1, v12);
  }
}

uint64_t Gesture.ended<A>(by:advanceImmediately:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = a5;
  *(v14 + 40) = a6;
  *(v14 + 48) = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  Gesture.combined<A, B>(with:body:)(a1, partial apply for closure #1 in Gesture.ended<A>(by:advanceImmediately:), v14, a3, a4, AssociatedTypeWitness, a5, a6, a7);
}

uint64_t closure #1 in Gesture.ended<A>(by:advanceImmediately:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char *a4@<X8>)
{
  v29 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for GesturePhase();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - v9;
  swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for GesturePhase();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - v14;
  (*(v12 + 16))(&v27 - v14, a2, v11, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) < 2)
  {
    (*(v12 + 8))(v15, v11);
    return (*(v8 + 16))(a4, a1, v7);
  }

  if (EnumCaseMultiPayload)
  {
    return swift_storeEnumTagMultiPayload();
  }

  v18 = a4;
  v19 = a1;
  v20 = v10;
  v21 = v8;
  v22 = v7;
  if (v29)
  {
    goto LABEL_5;
  }

  swift_beginAccess();
  if ((static CoreTesting.isRunning & 1) == 0)
  {
    swift_beginAccess();
    v24 = static GestureContainerFeature.isEnabledOverride;
    if (static GestureContainerFeature.isEnabledOverride == 2)
    {
      if (one-time initialization token for envValue != -1)
      {
        swift_once();
      }

      v24 = static GestureContainerFeature.envValue;
      if (static GestureContainerFeature.envValue == 2)
      {
        if (one-time initialization token for userDefaultsValue != -1)
        {
          swift_once();
        }

        v24 = static GestureContainerFeature.userDefaultsValue;
        if (static GestureContainerFeature.userDefaultsValue == 2)
        {
          v31 = &type metadata for GestureContainerFeature.IOSFeature;
          v32 = lazy protocol witness table accessor for type GestureContainerFeature.IOSFeature and conformance GestureContainerFeature.IOSFeature();
          v25 = isFeatureEnabled(_:)();
          __swift_destroy_boxed_opaque_existential_1(v30);
          if (v25)
          {
            if (one-time initialization token for v6 != -1)
            {
              swift_once();
            }

            v26 = static Semantics.v6;
            if (one-time initialization token for forced != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            if (byte_1ED53C51C)
            {
              if (dyld_program_sdk_at_least())
              {
                goto LABEL_26;
              }
            }

            else if (static Semantics.forced >= v26)
            {
              goto LABEL_26;
            }
          }

LABEL_5:
          v23 = *(v21 + 16);
          v23(v20, v19, v22);
          if (swift_getEnumCaseMultiPayload() == 2)
          {
            (*(*(AssociatedTypeWitness - 8) + 32))(v18, v20);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            v23(v18, v19, v22);
            (*(v21 + 8))(v20, v22);
          }

          return (*(v12 + 8))(v15, v11);
        }
      }
    }

    if ((v24 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

LABEL_26:
  GesturePhase.paused()(v22, v18);
  return (*(v12 + 8))(v15, v11);
}

uint64_t GesturePhase.and<A, B>(_:value:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v46[1] = a3;
  v47 = a2;
  v54 = a7;
  v13 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = *(a4 + 16);
  v51 = v46 - v15;
  v52 = v14;
  v16 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v50 = v46 - v17;
  v55 = a6;
  v53 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v48 = v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for GesturePhase();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v22 = *(TupleTypeMetadata2 - 8);
  v23.n128_f64[0] = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v25 = v46 - v24;
  v27 = *(v26 + 48);
  v28 = *(a4 - 8);
  v29 = *(v28 + 16);
  v49 = v8;
  v29(v46 - v24, v8, a4, v23);
  v30 = *(v20 - 8);
  v31 = *(v30 + 16);
  v46[0] = a1;
  v31(&v25[v27], a1, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    (*(v30 + 8))(&v25[v27], v20);
LABEL_5:
    type metadata accessor for GesturePhase();
    return swift_storeEnumTagMultiPayload();
  }

  v33 = EnumCaseMultiPayload;
  v34 = swift_getEnumCaseMultiPayload();
  if (v34 == 3)
  {
    (*(v28 + 8))(v25, a4);
    goto LABEL_5;
  }

  if (!v33)
  {
    (*(v28 + 8))(v25, a4);
    (*(v30 + 8))(&v25[v27], v20);
    goto LABEL_13;
  }

  if (v34 != 2)
  {
    if (!v34)
    {
      (*(v30 + 8))(&v25[v27], v20);
      (*(v28 + 8))(v25, a4);
LABEL_13:
      (*(v53 + 56))(v54, 1, 1, v55);
      type metadata accessor for GesturePhase();
      return swift_storeEnumTagMultiPayload();
    }

    goto LABEL_16;
  }

  if (v33 != 2)
  {
LABEL_16:
    (*(v22 + 8))(v25, TupleTypeMetadata2);
    v36 = 1;
    goto LABEL_17;
  }

  (*(v28 + 8))(v25, a4);
  (*(v30 + 8))(&v25[v27], v20);
  v36 = 2;
LABEL_17:
  v38 = v50;
  v37 = v51;
  GesturePhase.unwrapped.getter(a4, v50);
  v39 = v52;
  v40 = *(v52 - 8);
  result = (*(v40 + 48))(v38, 1, v52);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    GesturePhase.unwrapped.getter(v20, v37);
    v41 = *(a5 - 8);
    result = (*(v41 + 48))(v37, 1, a5);
    if (result != 1)
    {
      v42 = v48;
      v47(v38, v37);
      (*(v41 + 8))(v37, a5);
      v43 = (*(v40 + 8))(v38, v39);
      v56 = 0;
      v57 = v36;
      MEMORY[0x1EEE9AC00](v43);
      v46[-4] = v39;
      v46[-3] = a5;
      v44 = v55;
      v46[-2] = v55;
      v46[-1] = v42;
      _s7SwiftUI12GesturePhaseOyytGMaTm_0(0, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GesturePhase);
      GesturePhase.withValue<A>(_:)(v45, v44, v54);
      return (*(v53 + 8))(v42, v44);
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in GesturePhase.and<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(a3 - 8) + 16))(a5, a1, a3);
  v11 = *(*(a4 - 8) + 16);

  return v11(a5 + v10, a2, a4);
}

uint64_t type metadata completion function for Map2Gesture()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for Map2Gesture(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = v10[1];
    v12 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v10;
    v12[1] = v11;
  }

  return v3;
}

uint64_t destroy for Map2Gesture(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 24) - 8) + 8))();
}

uint64_t initializeWithCopy for Map2Gesture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;

  return a1;
}

uint64_t assignWithCopy for Map2Gesture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;

  return a1;
}

uint64_t initializeWithTake for Map2Gesture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 32;
  (*v5)();
  *((*(v5 + 32) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for Map2Gesture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 40;
  (*v5)();
  *((*(v5 + 24) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 24) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for Map2Gesture(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *storeEnumTagSinglePayload for Map2Gesture(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 24) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void type metadata accessor for Focus<Map2Gesture<TappableEvent, ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, TappableEvent>, (_:_:)>()
{
  if (!lazy cache variable for type metadata for Focus<Map2Gesture<TappableEvent, ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, TappableEvent>, (_:_:)>)
  {
    type metadata accessor for Map2Gesture<TappableEvent, ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, TappableEvent>(255, &lazy cache variable for type metadata for Map2Gesture<TappableEvent, ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, TappableEvent>, type metadata accessor for ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, &lazy protocol witness table cache variable for type ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>);
    _s7SwiftUI12GesturePhaseOyAA13TappableEventVGAF_ACy12CoreGraphics7CGFloatVGtcMaTm_1(255, &lazy cache variable for type metadata for (_:_:), &lazy cache variable for type metadata for GesturePhase<CGFloat>, MEMORY[0x1E69E7DE0]);
    v0 = type metadata accessor for Focus();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Focus<Map2Gesture<TappableEvent, ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, TappableEvent>, (_:_:)>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Map2Phase<TappableEvent, Double, TappableEvent> and conformance Map2Phase<A, B, C>(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Map2Phase<TappableEvent, CGFloat, TappableEvent>(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Focus<Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent>, (_:_:)> and conformance Focus<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s7SwiftUI12GesturePhaseOyAA13TappableEventVGAF_ACy12CoreGraphics7CGFloatVGtcMaTm_1(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a2;
  if (!*a2)
  {
    _s7SwiftUI12GesturePhaseOyytGMaTm_0(255, &lazy cache variable for type metadata for GesturePhase<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for GesturePhase);
    _s7SwiftUI12GesturePhaseOyytGMaTm_0(255, a3, a4, type metadata accessor for GesturePhase);
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, a2);
  }

  return result;
}

void type metadata accessor for Focus<Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent>, (_:_:)>()
{
  if (!lazy cache variable for type metadata for Focus<Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent>, (_:_:)>)
  {
    type metadata accessor for Map2Gesture<TappableEvent, ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, TappableEvent>(255, &lazy cache variable for type metadata for Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent>, type metadata accessor for ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, &lazy protocol witness table cache variable for type ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>);
    _s7SwiftUI12GesturePhaseOyAA13TappableEventVGAF_ACy12CoreGraphics7CGFloatVGtcMaTm_1(255, &lazy cache variable for type metadata for (_:_:), &lazy cache variable for type metadata for GesturePhase<Double>, MEMORY[0x1E69E63B0]);
    v0 = type metadata accessor for Focus();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Focus<Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent>, (_:_:)>);
    }
  }
}

void type metadata accessor for Map2Gesture<TappableEvent, ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, TappableEvent>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    lazy protocol witness table accessor for type Focus<Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent>, (_:_:)> and conformance Focus<A, B>(a4, a5);
    v8 = type metadata accessor for Map2Gesture();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for Map2Phase<TappableEvent, CGFloat, TappableEvent>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Map2Phase();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t instantiation function for generic protocol witness table for Map2Phase<A, B, C>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t specialized Map2Phase.description.getter()
{
  v0 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v0);

  return 0x9286E2203270614DLL;
}

uint64_t specialized Map2Phase.body.getter()
{
  type metadata accessor for GesturePhase();
  type metadata accessor for GesturePhase();
  type metadata accessor for GesturePhase();
  swift_getFunctionTypeMetadata2();
  return *AGGraphGetValue();
}

uint64_t Gesture.duration(minimum:maximum:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  swift_getAssociatedTypeWitness();
  *v10 = a3;
  *&v10[1] = a4;
  v11 = 0;
  v8 = type metadata accessor for DurationGesture();
  swift_getWitnessTable();
  return Gesture.modifier<A>(_:)(v10, a1, v8, a2);
}

uint64_t DurationGesture.init(minimumDuration:maximumDuration:trackFromEventStart:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = result;
  return result;
}

uint64_t static DurationGesture._makeGesture(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(void *__return_ptr, __int128 *)@<X2>, uint64_t a4@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = a2[3];
  v27 = a2[2];
  v28 = v6;
  v29 = a2[4];
  v7 = a2[1];
  v25 = *a2;
  v26 = v7;
  v8 = *(a2 + 20);
  v9 = *(a2 + 21);
  v32 = *(a2 + 88);
  v33 = *(a2 + 13);
  v10 = *(a2 + 30);
  v30 = v8;
  v31 = v9;
  v34 = *(a2 + 14);
  v18 = v34;
  v35 = v10;
  a3(v20, &v25);
  v11 = v20[1];
  v12 = v21;
  v13 = type metadata accessor for DurationPhase();
  v19 = v20[0];
  *&v25 = __PAIR64__(v20[0], v5);
  *(&v25 + 1) = __PAIR64__(v18, v9);
  LOBYTE(v26) = (v10 & 0x10) != 0;
  *(&v26 + 1) = 0;
  LOBYTE(v27) = 1;
  DWORD1(v27) = 0;
  v23 = v13;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<GesturePhase<Double>>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v25, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_9, v22, v13, MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v15);
  v16 = v20[0];
  *&v25 = v19;
  *(&v25 + 1) = v11;
  LODWORD(v26) = v12;
  type metadata accessor for _GestureOutputs();
  _GestureOutputs.withPhase<A>(_:)(v16, a4);
}

uint64_t DurationPhase.updateValue()()
{
  v1 = v0;
  v33 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for GesturePhase();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  swift_getWitnessTable();
  result = ResettableGestureRule.resetIfNeeded()();
  if (result)
  {
    if (v0[2])
    {
      v10 = v0[1];
      v30 = *v0;
      v31 = v10;
      v32 = *(v0 + 4);
      DelayedPhase.childPhase.getter(v8);
      v11 = GesturePhase.isActive.getter(v2);
      (*(v3 + 8))(v8, v2);
      if (v11 || (type metadata accessor for DurationGesture(), *(AGGraphGetValue() + 16) == 1))
      {
        v12 = 0;
        *(v1 + 3) = *AGGraphGetValue();
        *(v1 + 32) = 0;
      }

      else
      {
        v12 = 1;
      }

      v14 = 0.0;
    }

    else
    {
      v13 = *(v0 + 3);
      v12 = 0;
      v14 = *AGGraphGetValue() - v13;
    }

    v15 = v1[1];
    v30 = *v1;
    v31 = v15;
    v32 = *(v1 + 4);
    DelayedPhase.childPhase.getter(v5);
    result = swift_getEnumCaseMultiPayload();
    if (result > 1)
    {
      if (result != 2)
      {
LABEL_26:
        v17 = 0;
        v16 = 3;
        v14 = 0.0;
        goto LABEL_37;
      }

      if ((v12 & 1) == 0)
      {
        type metadata accessor for DurationGesture();
        v18.n128_u64[0] = *AGGraphGetValue();
        if (v18.n128_f64[0] <= v14)
        {
          v18.n128_u64[0] = *(AGGraphGetValue() + 8);
          if (v18.n128_f64[0] > v14)
          {
            (*(v3 + 8))(v5, v2);
            v17 = 0;
            v16 = 2;
            goto LABEL_37;
          }
        }

LABEL_25:
        (*(v3 + 8))(v5, v2, v18);
        goto LABEL_26;
      }

      __break(1u);
    }

    else
    {
      if (!result)
      {
        v16 = 0;
        v17 = v12;
        goto LABEL_22;
      }

      if ((v12 & 1) == 0)
      {
        type metadata accessor for DurationGesture();
        if (*AGGraphGetValue() > v14)
        {
          v17 = 0;
          v16 = 0;
          goto LABEL_22;
        }

        v18.n128_u64[0] = *(AGGraphGetValue() + 8);
        if (v18.n128_f64[0] > v14)
        {
          v17 = 0;
          v16 = 1;
LABEL_22:
          (*(v3 + 8))(v5, v2);
          if ((v1[2] & 1) == 0)
          {
            v19 = *(v1 + 3);
            if (v12)
            {
              type metadata accessor for DurationGesture();
            }

            else
            {
              type metadata accessor for DurationGesture();
              if (*AGGraphGetValue() > v14)
              {
                v20 = *(v1 + 16);
                v21 = v19 + *AGGraphGetValue();
                if (v20)
                {
LABEL_33:
                  specialized static GraphHost.currentHost.getter();
                  type metadata accessor for GestureGraph();
                  v25 = swift_dynamicCastClassUnconditional();
                  v26 = *(v25 + 272);
                  if (v21 < v26)
                  {
                    v26 = v21;
                  }

                  *(v25 + 272) = v26;
LABEL_36:

                  goto LABEL_37;
                }

LABEL_29:
                specialized static GraphHost.currentHost.getter();
                type metadata accessor for ViewGraph();
                v22 = swift_dynamicCastClassUnconditional();
                swift_beginAccess();
                v23 = *(v22 + 408);
                if (v21 < v23)
                {
                  v23 = v21;
                }

                *(v22 + 408) = v23;
                goto LABEL_36;
              }
            }

            v24 = *(v1 + 16);
            v21 = v19 + *(AGGraphGetValue() + 8);
            if (v24)
            {
              goto LABEL_33;
            }

            goto LABEL_29;
          }

LABEL_37:
          v27 = v14;
          v28 = v17;
          v29 = v16;
          type metadata accessor for GesturePhase<Double>();
          return AGGraphSetOutputValue();
        }

        goto LABEL_25;
      }
    }

    __break(1u);
  }

  return result;
}

void type metadata accessor for GesturePhase<Double>()
{
  if (!lazy cache variable for type metadata for GesturePhase<Double>)
  {
    v0 = type metadata accessor for GesturePhase();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GesturePhase<Double>);
    }
  }
}

void type metadata accessor for Attribute<GesturePhase<Double>>()
{
  if (!lazy cache variable for type metadata for Attribute<GesturePhase<Double>>)
  {
    type metadata accessor for GesturePhase<Double>();
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<GesturePhase<Double>>);
    }
  }
}

uint64_t instantiation function for generic protocol witness table for DurationPhase<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t Gesture.category(_:includeChildren:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getAssociatedTypeWitness();
  v10 = v7;
  v11 = a2;
  v8 = type metadata accessor for CategoryGesture();
  swift_getWitnessTable();
  return Gesture.modifier<A>(_:)(&v10, a3, v8, a4);
}

uint64_t Gesture.categoryReader(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  v10[0] = a1;
  v10[1] = a2;
  v8 = type metadata accessor for GestureCategoryReader();
  swift_getWitnessTable();
  Gesture.modifier<A>(_:)(v10, a3, v8, a4);
}

uint64_t GestureCategoryReader.init(callback:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

unint64_t static CategoryGesture._makeGesture(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, _OWORD *)@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{

  return static CategoryGesture._makeGesture(modifier:inputs:body:)(a1, a2, a3, a4, type metadata accessor for CategoryGesture.Combiner, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_15, a5);
}

uint64_t *CategoryGesture.Combiner.value.getter@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for CategoryGesture();
  v4 = *(AGGraphGetValue() + 8);
  result = AGGraphGetValue();
  v6 = *result;
  if (v4 == 1)
  {
    result = HIDWORD(a1);
    if (*MEMORY[0x1E698D3F8] == HIDWORD(a1))
    {
      v7 = 0;
    }

    else
    {
      result = AGGraphGetValue();
      v7 = *result;
    }

    v6 |= v7;
  }

  *a2 = v6;
  return result;
}

uint64_t key path setter for GestureCategoryReader.callback : <A>GestureCategoryReader<A>(uint64_t *a1, uint64_t (**a2)())
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@inout CGRect) -> (@out ());
  a2[1] = v5;
  return result;
}

uint64_t GestureCategoryReader.callback.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t GestureCategoryReader.callback.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

unint64_t static GestureCategoryReader._makeGesture(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, _OWORD *)@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{

  return static CategoryGesture._makeGesture(modifier:inputs:body:)(a1, a2, a3, a4, type metadata accessor for GestureCategoryReader.Reader, closure #1 in Attribute.init<A>(_:)partial apply, a5);
}

unint64_t static CategoryGesture._makeGesture(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, _OWORD *)@<X2>, uint64_t a4@<X4>, uint64_t (*a5)(void, uint64_t, uint64_t, double)@<X5>, uint64_t a6@<X7>, void *a7@<X8>)
{
  v25 = a6;
  v31 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = *(a2 + 48);
  v27[2] = *(a2 + 32);
  v27[3] = v10;
  v11 = *(a2 + 80);
  v27[4] = *(a2 + 64);
  v27[5] = v11;
  v12 = *(a2 + 16);
  v27[0] = *a2;
  v27[1] = v12;
  v13 = *(a2 + 96);
  v29 = *(a2 + 104);
  v30 = *(a2 + 120);
  v28 = v13;
  a3(a7, v27);
  v14 = type metadata accessor for _GestureOutputs();
  v15 = _GestureOutputs.subscript.getter(&type metadata for GestureCategory.Key, v14, &type metadata for GestureCategory.Key, &protocol witness table for GestureCategory.Key);
  *&v27[0] = v13;
  result = PreferenceKeys._index(of:)(&type metadata for GestureCategory.Key);
  v17 = *(v13 + 16);
  if (result != v17)
  {
    if (result >= v17)
    {
      __break(1u);
    }

    if (*(v13 + 16 * result + 32) == &type metadata for GestureCategory.Key)
    {
      v18 = *MEMORY[0x1E698D3F8];
      if ((v15 & 0x100000000) == 0)
      {
        v18 = v15;
      }

      *&v27[0] = __PAIR64__(v18, v9);
      v19 = MEMORY[0x1EEE9AC00](result);
      v23 = a5(0, a4, a4, v19);
      WitnessTable = swift_getWitnessTable();
      type metadata accessor for Attribute<GestureCategory>();
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v27, v25, &v22, v23, MEMORY[0x1E69E73E0], v20, MEMORY[0x1E69E7410], v21);
      LOBYTE(v27[0]) = 0;
      return PreferencesOutputs.subscript.setter(v26, &type metadata for GestureCategory.Key, &protocol witness table for GestureCategory.Key);
    }
  }

  return result;
}

uint64_t GestureCategoryReader.Reader.modifier.getter@<X0>(void *a1@<X8>)
{
  type metadata accessor for GestureCategoryReader();
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = v4;
  a1[1] = v3;
}

uint64_t *GestureCategoryReader.Reader.value.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = a1;
  v8 = HIDWORD(a1);
  v12 = 17;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 32) = v6;
  *(v9 + 36) = v8;
  static Update.enqueueAction(reason:_:)(&v12, partial apply for closure #1 in GestureCategoryReader.Reader.value.getter, v9);

  if (*MEMORY[0x1E698D3F8] == v8)
  {
    v11 = 0;
  }

  else
  {
    result = AGGraphGetValue();
    v11 = *result;
  }

  *a4 = v11;
  return result;
}

uint64_t closure #1 in GestureCategoryReader.Reader.value.getter(uint64_t a1)
{
  v1 = HIDWORD(a1);
  GestureCategoryReader.Reader.modifier.getter(&v6);
  v2 = v6;
  if (*MEMORY[0x1E698D3F8] == v1)
  {
    v3 = 0;
  }

  else
  {
    v3 = *AGGraphGetValue();
  }

  v5 = v3;
  v2(&v5);
}

void type metadata accessor for Attribute<GestureCategory>()
{
  if (!lazy cache variable for type metadata for Attribute<GestureCategory>)
  {
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<GestureCategory>);
    }
  }
}

uint64_t Path.isEmpty.getter()
{
  v1 = *v0;
  v2 = *(v0 + 32);
  if (v2 > 2)
  {
    if (v2 == 5)
    {
      if (*(v1 + 16))
      {
        if (*(v1 + 16) != 1)
        {
          v8 = one-time initialization token for bufferCallbacks;

          if (v8 != -1)
          {
            swift_once();
          }

          goto LABEL_16;
        }

LABEL_7:

LABEL_16:
        IsEmpty = RBPathIsEmpty();
        outlined destroy of Path(v0);
        return IsEmpty;
      }

      if (*(v1 + 24))
      {
        goto LABEL_7;
      }

      __break(1u);
    }

    else if (v2 == 6)
    {
      return 1;
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (v2 >= 2)
  {
    v5 = *(v1 + 16);
    v6 = *(v1 + 24);
    v3 = *(v1 + 32);
    v4 = *(v1 + 40);
  }

  else
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = *v0;
    v6 = *(v0 + 8);
  }

  return CGRectIsNull(*&v5);
}

BOOL Path.isInfinite.getter()
{
  v1 = *v0;
  v2 = *(v0 + 32);
  if (v2 >= 2)
  {
    if (v2 != 2)
    {
      return 0;
    }

    v6 = v1[2];
    v5 = v1 + 3;
    v4 = v1 + 4;
    v3 = v1 + 5;
  }

  else
  {
    v3 = (v0 + 24);
    v4 = (v0 + 16);
    v5 = (v0 + 8);
    v6 = *v0;
  }

  v7 = *v3;
  v8 = *v4;
  v9 = *v5;
  return CGRectIsInfinite(*&v6);
}

int8x16_t Path.init(_:)@<Q0>(int8x16_t *a1@<X8>, double a2@<D0>, uint64_t a3@<D1>, double a4@<D2>, uint64_t a5@<D3>)
{
  IsNull = CGRectIsNull(*&a2);
  *v7.i64 = a2;
  v7.i64[1] = a3;
  *v8.i64 = a4;
  v8.i64[1] = a5;
  if (IsNull)
  {
    v9 = -1;
  }

  else
  {
    v9 = 0;
  }

  v10 = vdupq_n_s64(v9);
  if (IsNull)
  {
    v11 = 6;
  }

  else
  {
    v11 = 0;
  }

  v12 = vbicq_s8(v7, v10);
  result = vbicq_s8(v8, v10);
  *a1 = v12;
  a1[1] = result;
  a1[2].i8[0] = v11;
  return result;
}

double Path.init()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 6;
  return result;
}

Swift::Void __swiftcall Path.addEllipse(in:transform:)(__C::CGRect in, CGAffineTransform *transform)
{

  Path.addEllipse(in:transform:)(&transform->a, 1, 7u, in.origin.x, in.origin.y, in.size.width, in.size.height);
}

void Path.contains(points:eoFill:origin:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v61 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    goto LABEL_44;
  }

  v7 = a4;
  v9 = *v5;
  v10 = *(v5 + 32);
  if (v10 <= 2)
  {
    v11 = *(v5 + 8);
    v12 = *(v5 + 16);
    v13 = *(v5 + 24);
    if (*(v5 + 32))
    {
      if (v10 == 1)
      {
        v14 = 0;
        if (a1)
        {
          v15 = 0;
          v16 = v9;
          v17 = v11;
          v18 = v12;
          v19 = v13;
          v20 = 16 * a2;
          v21 = (a1 + 8);
          v50 = v12;
          v51 = v16;
          while (1)
          {
            v22 = *v21;
            v23 = *(v21 - 1) - v7;
            v63.origin.x = v16;
            v63.origin.y = v17;
            v63.size.width = v18;
            v63.size.height = v19;
            Width = CGRectGetWidth(v63);
            v64.origin.x = v16;
            v64.origin.y = v17;
            v64.size.width = v18;
            v64.size.height = v19;
            if (Width == CGRectGetHeight(v64))
            {
              v25 = v16;
            }

            else
            {
              v65.origin.x = v16;
              v65.origin.y = v17;
              v65.size.width = v18;
              v65.size.height = v19;
              Height = CGRectGetHeight(v65);
              v66.origin.x = v16;
              v66.origin.y = v17;
              v66.size.width = v18;
              v66.size.height = v19;
              v27 = Height / CGRectGetWidth(v66);
              v25 = v27 * v16;
              v18 = v27 * v18;
              v23 = v23 * v27;
            }

            v67.origin.x = v25;
            v67.origin.y = v17;
            v67.size.width = v18;
            v67.size.height = v19;
            v28 = v25 + CGRectGetWidth(v67) * 0.5;
            v68.origin.x = v25;
            v68.origin.y = v17;
            v68.size.width = v18;
            v68.size.height = v19;
            v29 = v22 - a5 - (CGRectGetHeight(v68) * 0.5 + v17);
            v69.origin.x = v25;
            v69.origin.y = v17;
            v69.size.width = v18;
            v69.size.height = v19;
            v30 = CGRectGetWidth(v69) * 0.5;
            v31 = (v23 - v28) * (v23 - v28) + v29 * v29;
            v32 = v30 * v30;
            if (v15 < 0x41)
            {
              v7 = a4;
              if (v15 == 64)
              {
                v33 = 0;
              }

              else
              {
                v33 = 1 << v15;
              }

              v18 = v50;
              v16 = v51;
              if (v31 >= v32)
              {
LABEL_18:
                v14 &= ~v33;
                goto LABEL_8;
              }
            }

            else
            {
              v33 = 0;
              v7 = a4;
              v18 = v50;
              v16 = v51;
              if (v31 >= v32)
              {
                goto LABEL_18;
              }
            }

            v14 |= v33;
LABEL_8:
            v21 += 2;
            ++v15;
            v20 -= 16;
            if (!v20)
            {
              goto LABEL_36;
            }
          }
        }

        goto LABEL_36;
      }

      v43 = *(*&v9 + 48);
      v44 = *(*&v9 + 56);
      v45 = *(*&v9 + 64);
      v53 = *(*&v9 + 32);
      v55 = *(*&v9 + 16);
      CGAffineTransformMakeTranslation(&v59, -a4, -a5);

      RBPathStorageInit();
      v56[1] = v53;
      v56[0] = v55;
      v57 = v43;
      v58 = v44;
      if (v45)
      {
        v46 = 9;
      }

      else
      {
        v46 = 8;
      }

      MEMORY[0x193AC35E0](v60, v46, v56, 0);
      if (one-time initialization token for temporaryPathCallbacks == -1)
      {
        if (a1)
        {
LABEL_42:
          v47 = RBPathContainsPoints();
          MEMORY[0x193AC3610](v60);
          *a3 = v47;
          outlined destroy of Path(v5);
          return;
        }
      }

      else
      {
        swift_once();
        if (a1)
        {
          goto LABEL_42;
        }
      }

      __break(1u);
      goto LABEL_52;
    }

    v14 = 0;
    if (!a1)
    {
LABEL_36:
      *a3 = v14;
      return;
    }

    v34 = 0;
    v35 = v13;
    v36 = v12;
    v37 = v11;
    v38 = v9;
    v39 = 16 * a2;
    v40 = (a1 + 8);
    while (1)
    {
      v62.x = *(v40 - 1) - v7;
      v62.y = *v40 - a5;
      v70.origin.x = v38;
      v70.origin.y = v37;
      v70.size.width = v36;
      v70.size.height = v35;
      v41 = CGRectContainsPoint(v70, v62);
      if (v34 < 0x41)
      {
        if (v34 == 64)
        {
          v42 = 0;
          if (!v41)
          {
LABEL_33:
            v14 &= ~v42;
            goto LABEL_27;
          }
        }

        else
        {
          v42 = 1 << v34;
          if (!v41)
          {
            goto LABEL_33;
          }
        }
      }

      else
      {
        v42 = 0;
        if (!v41)
        {
          goto LABEL_33;
        }
      }

      v14 |= v42;
LABEL_27:
      v40 += 2;
      ++v34;
      v39 -= 16;
      if (!v39)
      {
        goto LABEL_36;
      }
    }
  }

  if (v10 == 5)
  {
    CGAffineTransformMakeTranslation(&v59, -a4, -a5);
    if (*(*&v9 + 16))
    {
      if (*(*&v9 + 16) != 1)
      {
        v48 = one-time initialization token for bufferCallbacks;

        if (v48 != -1)
        {
LABEL_52:
          swift_once();
        }

LABEL_48:
        if (a1)
        {
          v49 = RBPathContainsPoints();
          outlined destroy of Path(v5);
          *a3 = v49;
          return;
        }

        __break(1u);
        goto LABEL_54;
      }
    }

    else if (!*(*&v9 + 24))
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    goto LABEL_48;
  }

  if (v10 == 6)
  {
LABEL_44:
    *a3 = 0;
    return;
  }

LABEL_55:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t Path.formTrivialUnion(_:)(uint64_t result)
{
  v2 = result;
  v3 = *result;
  v4 = *(result + 16);
  v5 = *(result + 24);
  v6 = *(result + 32);
  if (v6 > 2)
  {
    if (v6 == 5)
    {
      v47 = *(result + 8);
      if (*(v3 + 16))
      {
        if (*(v3 + 16) != 1)
        {
          v11 = one-time initialization token for bufferCallbacks;

          if (v11 != -1)
          {
            swift_once();
          }

LABEL_17:
          IsEmpty = RBPathIsEmpty();
          result = outlined destroy of Path(v2);
          if (IsEmpty)
          {
            return result;
          }

LABEL_18:
          v14 = *v1;
          v13 = *(v1 + 8);
          v15 = *(v1 + 16);
          v16 = *(v1 + 32);
          if (v16 == 2)
          {
            v43 = *(v1 + 24);
            v44 = *(v1 + 16);
            v46 = v1;
            v17 = *(v14 + 16);
            v18 = *(v14 + 24);
            v19 = *(v14 + 32);
            v22 = *(v14 + 40);
            v20 = *(v14 + 48);
            v21 = *(v14 + 56);
            v45 = *(v14 + 64);
          }

          else if (v16 == 1)
          {
            v19 = *(v1 + 16);
            v22 = *(v1 + 24);
            if (vabdd_f64(v15, v22) >= 0.001)
            {
              goto LABEL_26;
            }

            v43 = *(v1 + 24);
            v44 = *(v1 + 16);
            v46 = v1;
            v45 = SwiftUI_RoundedCornerStyle_circular;
            v18 = *(v1 + 8);
            v17 = *v1;
            v20 = v15 * 0.5;
            v21 = v15 * 0.5;
          }

          else
          {
            if (*(v1 + 32))
            {
              goto LABEL_26;
            }

            v46 = v1;
            v45 = SwiftUI_RoundedCornerStyle_circular;
            v17 = *v1;
            v18 = *(v1 + 8);
            v43 = *(v1 + 24);
            v44 = *(v1 + 16);
            v19 = *&v44;
            v20 = 0.0;
            v21 = 0.0;
            v22 = *&v43;
          }

          Path.roundedRect()(&v49);
          style = v49.value.style;
          if (v49.value.style != SwiftUI_RoundedCornerStyle_unknownDefault)
          {
            v42 = v13;
            width = v49.value.cornerSize.width;
            height = v49.value.cornerSize.height;
            v26 = v19;
            v27 = *&v17;
            v28 = v22;
            v29 = v18;
            v31 = v49.value.rect.size.width;
            v30 = v49.value.rect.size.height;
            v32 = v20;
            v33 = v21;
            x = v49.value.rect.origin.x;
            y = v49.value.rect.origin.y;
            v49.value.rect.origin.x = v27;
            v49.value.rect.origin.y = v29;
            v40 = v28;
            v41 = v26;
            v49.value.rect.size.width = v26;
            v49.value.rect.size.height = v28;
            v38 = v33;
            v39 = v32;
            v49.value.cornerSize.width = v32;
            v49.value.cornerSize.height = v33;
            v49.value.style = v45;
            v48.rect.origin.x = x;
            v48.rect.origin.y = y;
            v48.rect.size.width = v31;
            v48.rect.size.height = v30;
            v48.cornerSize.width = width;
            v48.cornerSize.height = height;
            v36 = style & 1;
            v48.style = style & 1;
            result = FixedRoundedRect.contains(_:)(&v48);
            if (result)
            {
              return result;
            }

            v49.value.rect.origin.x = x;
            v49.value.rect.origin.y = y;
            v49.value.rect.size.width = v31;
            v49.value.rect.size.height = v30;
            v49.value.cornerSize.width = width;
            v49.value.cornerSize.height = height;
            v49.value.style = v36;
            v48.rect.origin.x = v27;
            v48.rect.origin.y = v29;
            v48.rect.size.width = v41;
            v48.rect.size.height = v40;
            v48.cornerSize.width = v39;
            v48.cornerSize.height = v38;
            v48.style = v45;
            if (FixedRoundedRect.contains(_:)(&v48))
            {
              outlined consume of Path.Storage(v14, v42, v44, v43, v16);
              v37 = *(v2 + 16);
              *v46 = *v2;
              *(v46 + 16) = v37;
              *(v46 + 32) = *(v2 + 32);

              return outlined copy of Path.Storage(v3, v47, v4, v5, v6);
            }
          }

LABEL_26:
          v49.value.rect.origin.x = 1.0;
          v49.value.rect.origin.y = 0.0;
          v49.value.rect.size.width = 0.0;
          v49.value.rect.size.height = 1.0;
          v49.value.cornerSize.width = 0.0;
          v49.value.cornerSize.height = 0.0;
          return Path.addPath(_:transform:)(v2, &v49.value.rect.origin.x);
        }

LABEL_7:

        goto LABEL_17;
      }
    }

    else
    {
      if (v6 == 6)
      {
        return result;
      }

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    if (!*(v3 + 24))
    {
      __break(1u);
      return result;
    }

    goto LABEL_7;
  }

  v47 = *(result + 8);
  if (v6 >= 2)
  {
    v10 = *(v3 + 16);
    v9 = *(v3 + 24);
    v8 = *(v3 + 32);
    v7 = *(v3 + 40);
  }

  else
  {
    v7 = *(result + 24);
    v8 = *(result + 16);
    v9 = *(result + 8);
    v10 = *result;
  }

  result = CGRectIsNull(*&v10);
  if ((result & 1) == 0)
  {
    goto LABEL_18;
  }

  return result;
}

double Path.init(_:)@<D0>(uint64_t a1@<X8>)
{
  v2 = RBPathRetain();
  v4 = v3;
  type metadata accessor for Path.PathBox();
  v5 = swift_allocObject();
  result = 0.0;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 88) = 0u;
  *(v5 + 104) = 0u;
  *(v5 + 16) = 1;
  *(v5 + 24) = v2;
  *(v5 + 32) = v4;
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 5;
  return result;
}

void __swiftcall Path.rect()(__C::CGRect_optional *__return_ptr retstr)
{
  v2 = *(v1 + 32);
  v3 = 0;
  v4 = 0;
  if (!*(v1 + 32))
  {
    v3 = *v1;
    v4 = *(v1 + 16);
  }

  retstr->value.origin = v3;
  retstr->value.size = v4;
  retstr->is_nil = v2 != 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Path.PathBox.Kind()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Path.PathBox.Kind()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

unsigned __int8 *protocol witness for RawRepresentable.init(rawValue:) in conformance Path.PathBox.Kind@<X0>(unsigned __int8 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 <= 3)
  {
    v3 = 0x2010003u >> (8 * v2);
  }

  else
  {
    v3 = 3;
  }

  *a2 = v3;
  return result;
}

double Path.PathBox.__allocating_init(takingPath:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  result = 0.0;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0u;
  *(v4 + 16) = 1;
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  return result;
}

uint64_t Path.PathBox.init(takingPath:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 104) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 16) = 1;
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return v2;
}

uint64_t Path.PathBox.deinit()
{
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      RBPathRelease();
    }

    else
    {
      MEMORY[0x193AC3610](v0 + 24);
    }

    return v0;
  }

  v1 = *(v0 + 24);
  if (v1)
  {

    return v0;
  }

  __break(1u);
  return result;
}

void Path.PathBox.prepareBuffer()()
{
  if (*(v0 + 16))
  {
    if (*(v0 + 16) != 1)
    {
      return;
    }
  }

  else
  {
    v1 = *(v0 + 24);
    if (!v1)
    {
      __break(1u);
      return;
    }

    RBPathMakeWithCGPath();
  }

  RBPathStorageInit();
  RBPathStorageAppendPath();
  *(v0 + 16) = 2;

  RBPathRelease();
}

__n128 Path.storage.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  outlined consume of Path.Storage(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  result = *a1;
  v5 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v5;
  *(v1 + 32) = v3;
  return result;
}

__n128 Path.init(storage:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = v2;
  return result;
}

uint64_t Path.init(box:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 5;
  return result;
}

uint64_t Path.init(roundedRect:cornerSize:style:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>, double a7@<D4>, double a8@<D5>)
{
  v13 = *a1;
  IsNull = CGRectIsNull(*&a3);
  v15 = 0uLL;
  if (IsNull)
  {
    result = 0;
    v17 = 6;
    a6 = 0.0;
  }

  else if (a7 == 0.0 && a8 == 0.0 || (v20.origin.x = a3, v20.size.width = a5, v20.origin.y = a4, v20.size.height = a6, CGRectIsInfinite(v20)))
  {
    v17 = 0;
    result = *&a3;
    *&v15 = a4;
    *(&v15 + 1) = a5;
  }

  else
  {
    result = swift_allocObject();
    *(result + 16) = a3;
    *(result + 24) = a4;
    *(result + 32) = a5;
    *(result + 40) = a6;
    *(result + 48) = a7;
    *(result + 56) = a8;
    v17 = 2;
    a6 = 0.0;
    *(result + 64) = v13;
    v15 = 0uLL;
  }

  *a2 = result;
  *(a2 + 8) = v15;
  *(a2 + 24) = a6;
  *(a2 + 32) = v17;
  return result;
}

double Path.init(roundedRect:cornerRadii:style:)@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>, double a9@<D6>, double a10@<D7>)
{
  specialized Path.init(roundedRect:cornerRadii:style:)(a1, v13, a3, a4, a5, a6, a7, a8, a9, a10);
  result = *v13;
  v12 = v13[1];
  *a2 = v13[0];
  *(a2 + 16) = v12;
  *(a2 + 32) = v14;
  return result;
}

BOOL Path.init(ellipseIn:)@<W0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  result = CGRectIsNull(*&a2);
  if (result)
  {
    v7 = 0uLL;
    v8 = 6;
    v9 = 0uLL;
  }

  else
  {
    v14.origin.x = a2;
    v14.origin.y = a3;
    v14.size.height = a5;
    v14.size.width = a4;
    result = CGRectIsInfinite(v14);
    *&v7 = a2;
    *(&v7 + 1) = a3;
    *&v9 = a4;
    *(&v9 + 1) = a5;
    v8 = !result;
  }

  *a1 = v7;
  *(a1 + 16) = v9;
  *(a1 + 32) = v8;
  return result;
}

double Path.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  specialized Path.init(_:)(a1, a2, v6);
  result = *v6;
  v5 = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = v5;
  *(a3 + 32) = v7;
  return result;
}

uint64_t Path.description.getter()
{
  v0 = Path.cgPath.getter();
  v1 = _CGPathCopyDescription(v0, 0.0);

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v2;
}

void *Path.withMutableBuffer(do:)(void (*a1)(uint64_t))
{
  v2 = v1;
  v3 = a1;
  v4 = *v1;
  v5 = (v1 + 8);
  v6 = *(v1 + 8);
  v7 = *(v1 + 32);
  if (v7 == 5)
  {
    v8 = *v1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Path.PathBox();
      v8 = swift_allocObject();
      *(v8 + 24) = 0u;
      result = (v8 + 24);
      *(v8 + 40) = 0u;
      *(v8 + 56) = 0u;
      *(v8 + 72) = 0u;
      *(v8 + 88) = 0u;
      *(v8 + 104) = 0u;
      v10 = *(v4 + 16);
      *(v8 + 16) = v10;
      if (v10)
      {
        if (v10 == 1)
        {

          *(v8 + 24) = RBPathRetain();
          *(v8 + 32) = v11;
        }

        else
        {
          RBPathStorageInit();
        }
      }

      else
      {
        v15 = *(v4 + 24);
        if (!v15)
        {
          __break(1u);
          return result;
        }

        *result = v15;
        v16 = v15;
      }
    }

    v4 = 0;
    v6 = 0;
    v12 = 0;
    v13 = 0;
    LOBYTE(v7) = 6;
  }

  else
  {
    v12 = *(v1 + 16);
    v13 = *(v1 + 24);
    type metadata accessor for Path.PathBox();
    v8 = swift_allocObject();
    *(v8 + 24) = 0u;
    *(v8 + 40) = 0u;
    *(v8 + 56) = 0u;
    *(v8 + 72) = 0u;
    *(v8 + 88) = 0u;
    *(v8 + 104) = 0u;
    *(v8 + 16) = 2;
    RBPathStorageInit();
    v14 = *(v8 + 16);

    if (v14 != 2)
    {
      Path.PathBox.prepareBuffer()();
    }

    Path.append(to:)(v8 + 24);
    v3 = a1;
  }

  outlined consume of Path.Storage(v4, v6, v12, v13, v7);
  *v2 = v8;
  v5[1] = 0;
  v5[2] = 0;
  *v5 = 0;
  *(v2 + 32) = 5;
  if (*(v8 + 16) != 2)
  {
    Path.PathBox.prepareBuffer()();
  }

  v3(v8 + 24);
}

Swift::Bool __swiftcall Path.contains(_:eoFill:)(CGPoint _, Swift::Bool eoFill)
{
  y = _.y;
  x = _.x;
  v24 = *MEMORY[0x1E69E9840];
  v5 = *v2;
  v6 = *(v2 + 32);
  if (v6 > 2)
  {
    if (v6 == 5)
    {
      if (*(v5 + 16))
      {
        if (*(v5 + 16) != 1)
        {
          v17 = one-time initialization token for bufferCallbacks;

          if (v17 != -1)
          {
            swift_once();
          }

          goto LABEL_24;
        }

LABEL_10:

LABEL_24:
        v16 = RBPathContainsPoint();
LABEL_25:
        outlined destroy of Path(v2);
        return v16;
      }

      if (*(v5 + 24))
      {
        goto LABEL_10;
      }

      __break(1u);
    }

    else if (v6 == 6)
    {
      return 0;
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (!*(v2 + 32))
  {
    v26.x = _.x;
    v26.y = _.y;
    return CGRectContainsPoint(*v2, v26);
  }

  if (v6 != 1)
  {
    v12 = *(v5 + 48);
    v13 = *(v5 + 56);
    v14 = *(v5 + 64);

    v18 = *(v5 + 32);
    v19 = *(v5 + 16);
    RBPathStorageInit();
    v20[1] = v18;
    v20[0] = v19;
    v21 = v12;
    v22 = v13;
    if (v14)
    {
      v15 = 9;
    }

    else
    {
      v15 = 8;
    }

    MEMORY[0x193AC35E0](v23, v15, v20, 0);
    if (one-time initialization token for temporaryPathCallbacks != -1)
    {
      swift_once();
    }

    v16 = RBPathContainsPoint();
    MEMORY[0x193AC3610](v23);
    goto LABEL_25;
  }

  v7 = *v2;
  v8 = *(v2 + 8);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);

  return ellipseContains(in:contains:)(v7, v8, v9, v10, x, y);
}

BOOL ellipseContains(in:contains:)(double a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6)
{
  v11 = a1;
  Width = CGRectGetWidth(*&a1);
  v19.origin.x = v11;
  v19.origin.y = a2;
  v19.size.width = a3;
  v19.size.height = a4;
  if (Width != CGRectGetHeight(v19))
  {
    v20.origin.x = v11;
    v20.origin.y = a2;
    v20.size.width = a3;
    v20.size.height = a4;
    Height = CGRectGetHeight(v20);
    v21.origin.x = v11;
    v21.origin.y = a2;
    v21.size.width = a3;
    v21.size.height = a4;
    v14 = Height / CGRectGetWidth(v21);
    v11 = v14 * v11;
    a3 = v14 * a3;
    a5 = v14 * a5;
  }

  v22.origin.x = v11;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  v15 = v11 + CGRectGetWidth(v22) * 0.5;
  v23.origin.x = v11;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  v16 = a6 - (CGRectGetHeight(v23) * 0.5 + a2);
  v24.origin.x = v11;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  v17 = CGRectGetWidth(v24);
  return (a5 - v15) * (a5 - v15) + v16 * v16 < v17 * 0.5 * (v17 * 0.5);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Path.Element(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return specialized static Path.Element.== infix(_:_:)(v5, v7) & 1;
}

uint64_t Path.canMix(with:)()
{
  Path.retainRBPath()();
  Path.retainRBPath()();
  CanInterpolate = RBPathCanInterpolate();
  RBPathRelease();
  RBPathRelease();
  return CanInterpolate;
}

double protocol witness for LosslessStringConvertible.init(_:) in conformance Path@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  specialized Path.init(_:)(a1, a2, v6);
  result = *v6;
  v5 = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = v5;
  *(a3 + 32) = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Path()
{
  v0 = Path.cgPath.getter();
  v1 = _CGPathCopyDescription(v0, 0.0);

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v2;
}

__n128 Path.path(in:)@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v3;
  v8 = *(v1 + 32);
  outlined init with copy of Path.Storage(v7, v6);
  result = *v1;
  v5 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v5;
  *(a1 + 32) = *(v1 + 32);
  return result;
}

void Path.encode(to:)()
{
  v4 = *(v0 + 32);
  if (v4 > 2)
  {
    if (v4 == 5)
    {
      Path.retainRBPath()();
      v10 = RBPathCopyData();
      if (!v10)
      {
LABEL_22:
        RBPathRelease();
        return;
      }

      v1 = v10;
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v2 = v11;
      v3 = v12;
      v13 = v12 >> 62;
      if ((v12 >> 62) <= 1)
      {
        if (!v13)
        {
          if ((v12 & 0xFF000000000000) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        v14 = v11;
        v15 = v11 >> 32;
        goto LABEL_19;
      }
    }

    else
    {
      if (v4 == 6)
      {
        return;
      }

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    if (v13 != 2)
    {
      goto LABEL_21;
    }

    v14 = *(v2 + 16);
    v15 = *(v2 + 24);
LABEL_19:
    if (v14 != v15)
    {
LABEL_20:
      ProtobufEncoder.encodeVarint(_:)(0x22uLL);
      specialized Data._Representation.withUnsafeBytes<A>(_:)(v2, v3);
    }

LABEL_21:
    outlined consume of Data._Representation(v2, v3);

    goto LABEL_22;
  }

  v6 = *(v0 + 8);
  v5 = *(v0 + 16);
  v7 = *(v0 + 24);
  if (!*(v0 + 32))
  {
    v8 = *v0;
    v9 = 10;
    goto LABEL_12;
  }

  if (v4 == 1)
  {
    v8 = *v0;
    v9 = 18;
LABEL_12:
    ProtobufEncoder.encodeVarint(_:)(v9);
    specialized ProtobufEncoder.encodeMessage<A>(_:)(v8, v6, v5, v7);
    return;
  }

  specialized ProtobufEncoder.messageField<A>(_:_:)(3);
}

double Path.init(from:)@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  specialized Path.init(from:)(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

double protocol witness for ProtobufDecodableMessage.init(from:) in conformance Path@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  specialized Path.init(from:)(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t StrokedPath.init(path:style:)(uint64_t a1, uint64_t a2)
{
  outlined destroy of StrokeStyle(a2);

  return outlined destroy of Path(a1);
}

Swift::Void __swiftcall Path.addQuadCurve(to:control:)(CGPoint to, CGPoint control)
{
  v3 = v2;
  y = control.y;
  x = control.x;
  v6 = to.y;
  v7 = to.x;
  v22 = *MEMORY[0x1E69E9840];
  v8 = *v2;
  v10 = (v2 + 8);
  v9 = *(v2 + 8);
  v11 = *(v2 + 32);
  if (v11 == 5)
  {
    v12 = *v2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Path.PathBox();
      v12 = swift_allocObject();
      *(v12 + 24) = 0u;
      *(v12 + 40) = 0u;
      *(v12 + 56) = 0u;
      *(v12 + 72) = 0u;
      *(v12 + 88) = 0u;
      *(v12 + 104) = 0u;
      v13 = *(v8 + 16);
      *(v12 + 16) = v13;
      if (v13)
      {
        if (v13 == 1)
        {

          *(v12 + 24) = RBPathRetain();
          *(v12 + 32) = v14;
        }

        else
        {
          RBPathStorageInit();
        }
      }

      else
      {
        v18 = *(v8 + 24);
        if (!v18)
        {
          __break(1u);
          return;
        }

        *(v12 + 24) = v18;
        v19 = v18;
      }
    }

    v8 = 0;
    v9 = 0;
    v15 = 0;
    v16 = 0;
    LOBYTE(v11) = 6;
  }

  else
  {
    v15 = *(v2 + 16);
    v16 = *(v2 + 24);
    type metadata accessor for Path.PathBox();
    v12 = swift_allocObject();
    *(v12 + 24) = 0u;
    *(v12 + 40) = 0u;
    *(v12 + 56) = 0u;
    *(v12 + 72) = 0u;
    *(v12 + 88) = 0u;
    *(v12 + 104) = 0u;
    *(v12 + 16) = 2;
    RBPathStorageInit();
    v17 = *(v12 + 16);

    if (v17 != 2)
    {
      Path.PathBox.prepareBuffer()();
    }

    v20[4] = v8;
    v20[5] = v9;
    v20[6] = v15;
    v20[7] = v16;
    v21 = v11;
    Path.append(to:)(v12 + 24);
  }

  outlined consume of Path.Storage(v8, v9, v15, v16, v11);
  *v3 = v12;
  v10[1] = 0;
  v10[2] = 0;
  *v10 = 0;
  *(v3 + 32) = 5;
  if (*(v12 + 16) != 2)
  {
    Path.PathBox.prepareBuffer()();
  }

  *v20 = x;
  *&v20[1] = y;
  *&v20[2] = v7;
  *&v20[3] = v6;
  MEMORY[0x193AC35E0](v12 + 24, 2, v20, 0);
}

Swift::Void __swiftcall Path.closeSubpath()()
{
  v1 = v0;
  v2 = *v0;
  v4 = (v0 + 8);
  v3 = *(v0 + 8);
  v5 = *(v0 + 32);
  if (v5 == 5)
  {
    v6 = *v0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Path.PathBox();
      v6 = swift_allocObject();
      *(v6 + 24) = 0u;
      *(v6 + 40) = 0u;
      *(v6 + 56) = 0u;
      *(v6 + 72) = 0u;
      *(v6 + 88) = 0u;
      *(v6 + 104) = 0u;
      v7 = *(v2 + 16);
      *(v6 + 16) = v7;
      if (v7)
      {
        if (v7 == 1)
        {

          *(v6 + 24) = RBPathRetain();
          *(v6 + 32) = v8;
        }

        else
        {
          RBPathStorageInit();
        }
      }

      else
      {
        v12 = *(v2 + 24);
        if (!v12)
        {
          __break(1u);
          return;
        }

        *(v6 + 24) = v12;
        v13 = v12;
      }
    }

    v2 = 0;
    v3 = 0;
    v9 = 0;
    v10 = 0;
    LOBYTE(v5) = 6;
  }

  else
  {
    v9 = *(v0 + 16);
    v10 = *(v0 + 24);
    type metadata accessor for Path.PathBox();
    v6 = swift_allocObject();
    *(v6 + 24) = 0u;
    *(v6 + 40) = 0u;
    *(v6 + 56) = 0u;
    *(v6 + 72) = 0u;
    *(v6 + 88) = 0u;
    *(v6 + 104) = 0u;
    *(v6 + 16) = 2;
    RBPathStorageInit();
    v11 = *(v6 + 16);

    if (v11 != 2)
    {
      Path.PathBox.prepareBuffer()();
    }

    Path.append(to:)(v6 + 24);
  }

  outlined consume of Path.Storage(v2, v3, v9, v10, v5);
  *v1 = v6;
  v4[1] = 0;
  v4[2] = 0;
  *v4 = 0;
  *(v1 + 32) = 5;
  if (*(v6 + 16) != 2)
  {
    Path.PathBox.prepareBuffer()();
  }

  MEMORY[0x193AC35E0](v6 + 24, 4, 0, 0);
}

Swift::Void __swiftcall Path.addRect(_:transform:)(__C::CGRect _, CGAffineTransform *transform)
{

  Path.addEllipse(in:transform:)(&transform->a, 0, 5u, _.origin.x, _.origin.y, _.size.width, _.size.height);
}

void Path.addEllipse(in:transform:)(double *a1, char a2, unsigned __int8 a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v42 = *MEMORY[0x1E69E9840];
  v13 = *a1;
  v14 = a1[1];
  v15 = a1[2];
  v16 = a1[3];
  v17 = a1[4];
  v18 = a1[5];
  if (!CGRectIsNull(*&a4))
  {
    v19 = *v7;
    v20 = (v7 + 8);
    v21 = *(v7 + 8);
    v22 = *(v7 + 32);
    if (v22 == 5)
    {
      v25 = *v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Path.PathBox();
        v25 = swift_allocObject();
        *(v25 + 24) = 0u;
        *(v25 + 40) = 0u;
        *(v25 + 56) = 0u;
        *(v25 + 72) = 0u;
        *(v25 + 88) = 0u;
        *(v25 + 104) = 0u;
        v27 = *(v19 + 16);
        *(v25 + 16) = v27;
        if (v27)
        {
          if (v27 == 1)
          {

            *(v25 + 24) = RBPathRetain();
            *(v25 + 32) = v28;
          }

          else
          {
            RBPathStorageInit();
          }
        }

        else
        {
          v29 = *(v19 + 24);
          if (!v29)
          {
            __break(1u);
            return;
          }

          *(v25 + 24) = v29;
          v30 = v29;
        }
      }

      v19 = 0;
      v21 = 0;
      v23 = 0;
      v24 = 0;
      LOBYTE(v22) = 6;
    }

    else
    {
      v23 = *(v7 + 16);
      v24 = *(v7 + 24);
      if (v22 == 6 && !(v21 | v19 | v23 | v24) && (v14 == 0.0 && v15 == 0.0 || v13 == 0.0 && v16 == 0.0))
      {
        v36.a = v13;
        v36.b = v14;
        v36.c = v15;
        v36.d = v16;
        v36.tx = v17;
        v36.ty = v18;
        v43.origin.x = a4;
        v43.origin.y = a5;
        v43.size.width = a6;
        v43.size.height = a7;
        *v7 = CGRectApplyAffineTransform(v43, &v36);
        *(v7 + 32) = a2;
        return;
      }

      v32 = v7;
      type metadata accessor for Path.PathBox();
      v25 = swift_allocObject();
      *(v25 + 24) = 0u;
      *(v25 + 40) = 0u;
      *(v25 + 56) = 0u;
      *(v25 + 72) = 0u;
      *(v25 + 88) = 0u;
      *(v25 + 104) = 0u;
      *(v25 + 16) = 2;
      RBPathStorageInit();
      v26 = *(v25 + 16);

      if (v26 != 2)
      {
        Path.PathBox.prepareBuffer()();
      }

      v37 = v19;
      v38 = v21;
      v39 = v23;
      v40 = v24;
      v41 = v22;
      Path.append(to:)(v25 + 24);
      v7 = v32;
    }

    outlined consume of Path.Storage(v19, v21, v23, v24, v22);
    *v7 = v25;
    v20[1] = 0;
    v20[2] = 0;
    *v20 = 0;
    *(v7 + 32) = 5;
    if (*(v25 + 16) != 2)
    {
      Path.PathBox.prepareBuffer()();
    }

    v31 = *(a1 + 1);
    *&v36.a = *a1;
    *&v36.c = v31;
    *&v36.tx = *(a1 + 2);
    *v35 = a4;
    *&v35[1] = a5;
    *&v35[2] = a6;
    *&v35[3] = a7;
    MEMORY[0x193AC35E0](v25 + 24, a3, v35, &v36);
  }
}

Swift::Void __swiftcall Path.addRoundedRect(in:cornerSize:style:transform:)(__C::CGRect in, CGSize cornerSize, SwiftUI::RoundedCornerStyle style, CGAffineTransform *transform)
{
  v42.width = cornerSize.width;
  v42.height = cornerSize.height;
  y = in.origin.y;
  x = in.origin.x;
  v50 = *MEMORY[0x1E69E9840];
  a = transform->a;
  b = transform->b;
  c = transform->c;
  d = transform->d;
  tx = transform->tx;
  ty = transform->ty;
  v14 = *style;
  width = in.size.width;
  height = in.size.height;
  if (CGRectIsNull(in))
  {
    return;
  }

  v15 = *v4;
  v17 = (v4 + 8);
  v16 = *(v4 + 8);
  v18 = *(v4 + 32);
  if (v18 == 5)
  {
    v21 = *v4;
    v23 = v42.height;
    v24 = v42.width;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Path.PathBox();
      v21 = swift_allocObject();
      *(v21 + 24) = 0u;
      *(v21 + 40) = 0u;
      *(v21 + 56) = 0u;
      *(v21 + 72) = 0u;
      *(v21 + 88) = 0u;
      *(v21 + 104) = 0u;
      v25 = *(v15 + 16);
      *(v21 + 16) = v25;
      if (v25)
      {
        if (v25 == 1)
        {

          *(v21 + 24) = RBPathRetain();
          *(v21 + 32) = v26;
        }

        else
        {
          RBPathStorageInit();
        }
      }

      else
      {
        v32 = *(v15 + 24);
        if (!v32)
        {
          __break(1u);
          return;
        }

        *(v21 + 24) = v32;
        v33 = v32;
      }
    }

    v15 = 0;
    v16 = 0;
    v19 = 0;
    v20 = 0;
    LOBYTE(v18) = 6;
  }

  else
  {
    v19 = *(v4 + 16);
    v20 = *(v4 + 24);
    if (v18 == 6 && !(v16 | v15 | v19 | v20) && (b == 0.0 && c == 0.0 || a == 0.0 && d == 0.0))
    {
      v44.a = a;
      v44.b = b;
      v44.c = c;
      v44.d = d;
      v44.tx = tx;
      v44.ty = ty;
      v51.origin.x = x;
      v51.origin.y = y;
      v51.size.width = width;
      v51.size.height = height;
      v52 = CGRectApplyAffineTransform(v51, &v44);
      v39 = v52.origin.y;
      v41 = v52.origin.x;
      v27 = v52.size.width;
      v28 = v52.size.height;
      if ((*&v42.width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v42.height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        v31 = v42.height;
        v30 = v42.width;
      }

      else
      {
        v44.a = a;
        v44.b = b;
        v44.c = c;
        v44.d = d;
        v44.tx = tx;
        v44.ty = ty;
        v29 = CGSizeApplyAffineTransform(v42, &v44);
        v30 = copysign(v29.width, v42.width);
        v31 = copysign(v29.height, v42.height);
      }

      v36 = swift_allocObject();
      *(v36 + 16) = v41;
      *(v36 + 24) = v39;
      *(v36 + 32) = v27;
      *(v36 + 40) = v28;
      *(v36 + 48) = v30;
      *(v36 + 56) = v31;
      *(v36 + 64) = v14;
      *v4 = v36;
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      *v17 = 0;
      *(v4 + 32) = 2;
      return;
    }

    v37 = v4;
    type metadata accessor for Path.PathBox();
    v21 = swift_allocObject();
    *(v21 + 24) = 0u;
    *(v21 + 40) = 0u;
    *(v21 + 56) = 0u;
    *(v21 + 72) = 0u;
    *(v21 + 88) = 0u;
    *(v21 + 104) = 0u;
    *(v21 + 16) = 2;
    RBPathStorageInit();
    v22 = *(v21 + 16);

    if (v22 != 2)
    {
      Path.PathBox.prepareBuffer()();
    }

    v45 = v15;
    v46 = v16;
    v47 = v19;
    v48 = v20;
    v49 = v18;
    Path.append(to:)(v21 + 24);
    v4 = v37;
    v23 = v42.height;
    v24 = v42.width;
  }

  outlined consume of Path.Storage(v15, v16, v19, v20, v18);
  *v4 = v21;
  v17[1] = 0;
  v17[2] = 0;
  *v17 = 0;
  *(v4 + 32) = 5;
  if (*(v21 + 16) != 2)
  {
    Path.PathBox.prepareBuffer()();
  }

  v34 = *&transform->c;
  *&v44.a = *&transform->a;
  *&v44.c = v34;
  *&v44.tx = *&transform->tx;
  *v43 = x;
  *&v43[1] = y;
  *&v43[2] = width;
  *&v43[3] = height;
  if (v14)
  {
    v35 = 9;
  }

  else
  {
    v35 = 8;
  }

  *&v43[4] = v24;
  *&v43[5] = v23;
  MEMORY[0x193AC35E0](v21 + 24, v35, v43, &v44);
}

Swift::Void __swiftcall Path.addRects(_:transform:)(Swift::OpaquePointer _, CGAffineTransform *transform)
{
  v3 = *(_._rawValue + 2);
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = *(_._rawValue + 4);
      v5 = *(_._rawValue + 5);
      v6 = *(_._rawValue + 6);
      v7 = *(_._rawValue + 7);

      Path.addRect(_:transform:)(*&v4, transform);
    }

    else
    {
      v8 = *v2;
      v9 = (v2 + 8);
      v10 = *(v2 + 8);
      v11 = *(v2 + 32);
      if (v11 == 5)
      {
        v12 = *v2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Path.PathBox();
          v12 = swift_allocObject();
          *(v12 + 24) = 0u;
          *(v12 + 40) = 0u;
          *(v12 + 56) = 0u;
          *(v12 + 72) = 0u;
          *(v12 + 88) = 0u;
          *(v12 + 104) = 0u;
          v13 = *(v8 + 16);
          *(v12 + 16) = v13;
          if (v13)
          {
            if (v13 == 1)
            {

              *(v12 + 24) = RBPathRetain();
              *(v12 + 32) = v14;
            }

            else
            {
              RBPathStorageInit();
            }
          }

          else
          {
            v19 = *(v8 + 24);
            if (!v19)
            {
              __break(1u);
              return;
            }

            *(v12 + 24) = v19;
            v20 = v19;
          }
        }

        v8 = 0;
        v10 = 0;
        v15 = 0;
        v16 = 0;
        LOBYTE(v11) = 6;
      }

      else
      {
        v15 = *(v2 + 16);
        v16 = *(v2 + 24);
        v17 = v2;
        type metadata accessor for Path.PathBox();
        v12 = swift_allocObject();
        *(v12 + 24) = 0u;
        *(v12 + 40) = 0u;
        *(v12 + 56) = 0u;
        *(v12 + 72) = 0u;
        *(v12 + 88) = 0u;
        *(v12 + 104) = 0u;
        *(v12 + 16) = 2;
        RBPathStorageInit();
        v18 = *(v12 + 16);

        if (v18 != 2)
        {
          Path.PathBox.prepareBuffer()();
        }

        Path.append(to:)(v12 + 24);
        v2 = v17;
      }

      outlined consume of Path.Storage(v8, v10, v15, v16, v11);
      *v2 = v12;
      v9[1] = 0;
      v9[2] = 0;
      *v9 = 0;
      *(v2 + 32) = 5;
      if (*(v12 + 16) != 2)
      {
        Path.PathBox.prepareBuffer()();
      }

      closure #1 in Path.addRects(_:transform:)(v12 + 24, _._rawValue, transform);
    }
  }
}

uint64_t closure #1 in Path.addRects(_:transform:)(uint64_t result, uint64_t a2, _OWORD *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 16);
  if (v3)
  {
    v5 = result;
    v6 = (a2 + 48);
    do
    {
      v7 = *v6;
      v10[0] = *(v6 - 1);
      v10[1] = v7;
      v8 = a3[1];
      v9[0] = *a3;
      v9[1] = v8;
      v9[2] = a3[2];
      result = MEMORY[0x193AC35E0](v5, 5, v10, v9);
      v6 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

Swift::Void __swiftcall Path.addLines(_:)(Swift::OpaquePointer a1)
{
  if (*(a1._rawValue + 2))
  {
    v3 = *v1;
    v5 = (v1 + 8);
    v4 = *(v1 + 8);
    v6 = *(v1 + 32);
    if (v6 == 5)
    {
      v7 = *v1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Path.PathBox();
        v7 = swift_allocObject();
        *(v7 + 24) = 0u;
        *(v7 + 40) = 0u;
        *(v7 + 56) = 0u;
        *(v7 + 72) = 0u;
        *(v7 + 88) = 0u;
        *(v7 + 104) = 0u;
        v8 = *(v3 + 16);
        *(v7 + 16) = v8;
        if (v8)
        {
          if (v8 == 1)
          {

            *(v7 + 24) = RBPathRetain();
            *(v7 + 32) = v9;
          }

          else
          {
            RBPathStorageInit();
          }
        }

        else
        {
          v13 = *(v3 + 24);
          if (!v13)
          {
            __break(1u);
            return;
          }

          *(v7 + 24) = v13;
          v14 = v13;
        }
      }

      v3 = 0;
      v4 = 0;
      v10 = 0;
      v11 = 0;
      LOBYTE(v6) = 6;
    }

    else
    {
      v10 = *(v1 + 16);
      v11 = *(v1 + 24);
      v15 = v1;
      type metadata accessor for Path.PathBox();
      v7 = swift_allocObject();
      *(v7 + 24) = 0u;
      *(v7 + 40) = 0u;
      *(v7 + 56) = 0u;
      *(v7 + 72) = 0u;
      *(v7 + 88) = 0u;
      *(v7 + 104) = 0u;
      *(v7 + 16) = 2;
      RBPathStorageInit();
      v12 = *(v7 + 16);

      if (v12 != 2)
      {
        Path.PathBox.prepareBuffer()();
      }

      Path.append(to:)(v7 + 24);
      v1 = v15;
    }

    outlined consume of Path.Storage(v3, v4, v10, v11, v6);
    *v1 = v7;
    v5[1] = 0;
    v5[2] = 0;
    *v5 = 0;
    *(v1 + 32) = 5;
    if (*(v7 + 16) != 2)
    {
      Path.PathBox.prepareBuffer()();
    }

    closure #1 in Path.addLines(_:)(v7 + 24, a1._rawValue);
  }
}

uint64_t closure #1 in Path.addLines(_:)(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 16);
  if (!v2)
  {
    __break(1u);
  }

  v10 = *(a2 + 32);
  result = MEMORY[0x193AC35E0](a1, 0, &v10, 0);
  v6 = v2 - 1;
  if (v6)
  {
    v7 = (a2 + 48);
    do
    {
      v8 = *v7++;
      v9 = v8;
      result = MEMORY[0x193AC35E0](a1, 1, &v9, 0);
      --v6;
    }

    while (v6);
  }

  return result;
}

void *Path.addRelativeArc(center:radius:startAngle:delta:transform:)(_OWORD *a1, double a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v8 = a1;
  v32 = *MEMORY[0x1E69E9840];
  v14 = *v6;
  v15 = (v6 + 8);
  v16 = *(v6 + 8);
  v17 = *(v6 + 32);
  if (v17 == 5)
  {
    v18 = *v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Path.PathBox();
      v18 = swift_allocObject();
      *(v18 + 24) = 0u;
      result = (v18 + 24);
      *(v18 + 40) = 0u;
      *(v18 + 56) = 0u;
      *(v18 + 72) = 0u;
      *(v18 + 88) = 0u;
      *(v18 + 104) = 0u;
      v20 = *(v14 + 16);
      *(v18 + 16) = v20;
      if (v20)
      {
        if (v20 == 1)
        {

          *(v18 + 24) = RBPathRetain();
          *(v18 + 32) = v21;
        }

        else
        {
          RBPathStorageInit();
        }
      }

      else
      {
        v25 = *(v14 + 24);
        if (!v25)
        {
          __break(1u);
          return result;
        }

        *result = v25;
        v26 = v25;
      }
    }

    v14 = 0;
    v16 = 0;
    v22 = 0;
    v23 = 0;
    LOBYTE(v17) = 6;
  }

  else
  {
    v22 = *(v6 + 16);
    v23 = *(v6 + 24);
    type metadata accessor for Path.PathBox();
    v18 = swift_allocObject();
    *(v18 + 24) = 0u;
    *(v18 + 40) = 0u;
    *(v18 + 56) = 0u;
    *(v18 + 72) = 0u;
    *(v18 + 88) = 0u;
    *(v18 + 104) = 0u;
    *(v18 + 16) = 2;
    RBPathStorageInit();
    v24 = *(v18 + 16);

    if (v24 != 2)
    {
      Path.PathBox.prepareBuffer()();
    }

    v30[5] = v14;
    v30[6] = v16;
    v30[7] = v22;
    v30[8] = v23;
    v31 = v17;
    Path.append(to:)(v18 + 24);
    v8 = a1;
  }

  outlined consume of Path.Storage(v14, v16, v22, v23, v17);
  *v7 = v18;
  v15[1] = 0;
  v15[2] = 0;
  *v15 = 0;
  *(v7 + 32) = 5;
  if (*(v18 + 16) != 2)
  {
    Path.PathBox.prepareBuffer()();
  }

  *v30 = a2;
  *&v30[1] = a3;
  *&v30[2] = a4;
  *&v30[3] = a5;
  *&v30[4] = a6;
  v27 = v8[1];
  v29[0] = *v8;
  v29[1] = v27;
  v29[2] = v8[2];
  MEMORY[0x193AC35E0](v18 + 24, 12, v30, v29);
}

void *Path.addArc(center:radius:startAngle:endAngle:clockwise:transform:)(char a1, _OWORD *a2, double a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v9 = a1;
  v35 = *MEMORY[0x1E69E9840];
  v15 = *v7;
  v16 = (v7 + 8);
  v17 = *(v7 + 8);
  v18 = *(v7 + 32);
  if (v18 == 5)
  {
    v19 = *v7;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Path.PathBox();
      v19 = swift_allocObject();
      *(v19 + 24) = 0u;
      result = (v19 + 24);
      *(v19 + 40) = 0u;
      *(v19 + 56) = 0u;
      *(v19 + 72) = 0u;
      *(v19 + 88) = 0u;
      *(v19 + 104) = 0u;
      v21 = *(v15 + 16);
      *(v19 + 16) = v21;
      if (v21)
      {
        if (v21 == 1)
        {

          *(v19 + 24) = RBPathRetain();
          *(v19 + 32) = v22;
        }

        else
        {
          RBPathStorageInit();
        }
      }

      else
      {
        v26 = *(v15 + 24);
        if (!v26)
        {
          __break(1u);
          return result;
        }

        *result = v26;
        v27 = v26;
      }
    }

    v15 = 0;
    v17 = 0;
    v23 = 0;
    v24 = 0;
    LOBYTE(v18) = 6;
  }

  else
  {
    v23 = *(v7 + 16);
    v24 = *(v7 + 24);
    type metadata accessor for Path.PathBox();
    v19 = swift_allocObject();
    *(v19 + 24) = 0u;
    *(v19 + 40) = 0u;
    *(v19 + 56) = 0u;
    *(v19 + 72) = 0u;
    *(v19 + 88) = 0u;
    *(v19 + 104) = 0u;
    *(v19 + 16) = 2;
    RBPathStorageInit();
    v25 = *(v19 + 16);

    if (v25 != 2)
    {
      Path.PathBox.prepareBuffer()();
    }

    v33[5] = v15;
    v33[6] = v17;
    v33[7] = v23;
    v33[8] = v24;
    v34 = v18;
    Path.append(to:)(v19 + 24);
    v9 = a1;
  }

  outlined consume of Path.Storage(v15, v17, v23, v24, v18);
  *v8 = v19;
  v16[1] = 0;
  v16[2] = 0;
  *v16 = 0;
  *(v8 + 32) = 5;
  if (*(v19 + 16) != 2)
  {
    Path.PathBox.prepareBuffer()();
  }

  *v33 = a3;
  *&v33[1] = a4;
  *&v33[2] = a5;
  *&v33[3] = a6;
  *&v33[4] = a7;
  v28 = a2[1];
  v32[0] = *a2;
  v32[1] = v28;
  if (v9)
  {
    v29 = 13;
  }

  else
  {
    v29 = 14;
  }

  v32[2] = a2[2];
  MEMORY[0x193AC35E0](v19 + 24, v29, v33, v32);
}

void *Path.addArc(tangent1End:tangent2End:radius:transform:)(_OWORD *a1, double a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v8 = a1;
  v32 = *MEMORY[0x1E69E9840];
  v14 = *v6;
  v15 = (v6 + 8);
  v16 = *(v6 + 8);
  v17 = *(v6 + 32);
  if (v17 == 5)
  {
    v18 = *v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Path.PathBox();
      v18 = swift_allocObject();
      *(v18 + 24) = 0u;
      result = (v18 + 24);
      *(v18 + 40) = 0u;
      *(v18 + 56) = 0u;
      *(v18 + 72) = 0u;
      *(v18 + 88) = 0u;
      *(v18 + 104) = 0u;
      v20 = *(v14 + 16);
      *(v18 + 16) = v20;
      if (v20)
      {
        if (v20 == 1)
        {

          *(v18 + 24) = RBPathRetain();
          *(v18 + 32) = v21;
        }

        else
        {
          RBPathStorageInit();
        }
      }

      else
      {
        v25 = *(v14 + 24);
        if (!v25)
        {
          __break(1u);
          return result;
        }

        *result = v25;
        v26 = v25;
      }
    }

    v14 = 0;
    v16 = 0;
    v22 = 0;
    v23 = 0;
    LOBYTE(v17) = 6;
  }

  else
  {
    v22 = *(v6 + 16);
    v23 = *(v6 + 24);
    type metadata accessor for Path.PathBox();
    v18 = swift_allocObject();
    *(v18 + 24) = 0u;
    *(v18 + 40) = 0u;
    *(v18 + 56) = 0u;
    *(v18 + 72) = 0u;
    *(v18 + 88) = 0u;
    *(v18 + 104) = 0u;
    *(v18 + 16) = 2;
    RBPathStorageInit();
    v24 = *(v18 + 16);

    if (v24 != 2)
    {
      Path.PathBox.prepareBuffer()();
    }

    v30[5] = v14;
    v30[6] = v16;
    v30[7] = v22;
    v30[8] = v23;
    v31 = v17;
    Path.append(to:)(v18 + 24);
    v8 = a1;
  }

  outlined consume of Path.Storage(v14, v16, v22, v23, v17);
  *v7 = v18;
  v15[1] = 0;
  v15[2] = 0;
  *v15 = 0;
  *(v7 + 32) = 5;
  if (*(v18 + 16) != 2)
  {
    Path.PathBox.prepareBuffer()();
  }

  *v30 = a2;
  *&v30[1] = a3;
  *&v30[2] = a4;
  *&v30[3] = a5;
  *&v30[4] = a6;
  v27 = v8[1];
  v29[0] = *v8;
  v29[1] = v27;
  v29[2] = v8[2];
  MEMORY[0x193AC35E0](v18 + 24, 15, v30, v29);
}

uint64_t Path.currentPoint.getter()
{
  result = *v0;
  if (*(v0 + 32))
  {
    if (*(v0 + 32) == 6 && !(v0[3] | v0[2] | result | v0[1]))
    {
      return 0;
    }

    v2 = Path.cgPath.getter();
    if (CGPathIsEmpty(v2))
    {

      return 0;
    }

    v3 = *&CGPathGetCurrentPoint(v2);

    return v3;
  }

  return result;
}

uint64_t Path.dilatedGlyphPath(with:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2 == 0.0 && a3 == 0.0)
  {
    v7 = *(v3 + 32);
    v12 = *(v3 + 16);
    v14[0] = *v3;
    v11 = v14[0];
    v14[1] = v12;
    v15 = v7;
    result = outlined init with copy of Path.Storage(v14, v13);
    v9 = v11;
  }

  else
  {
    type metadata accessor for Path.PathBox();
    v10 = swift_allocObject();
    *(v10 + 40) = 0u;
    *(v10 + 56) = 0u;
    *(v10 + 72) = 0u;
    *(v10 + 88) = 0u;
    *(v10 + 104) = 0u;
    v12 = 0u;
    *(v10 + 24) = 0u;
    *(v10 + 16) = 2;
    RBPathStorageInit();
    *v14 = a2;
    *(v14 + 1) = a3;
    MEMORY[0x193AC35E0](v10 + 24, 22, v14, 0);
    Path.append(to:)(v10 + 24);
    result = MEMORY[0x193AC35E0](v10 + 24, 16, 0, 0);
    v9 = v10;
    v7 = 5;
  }

  *a1 = v9;
  *(a1 + 16) = v12;
  *(a1 + 32) = v7;
  return result;
}

uint64_t Path.normalized(eoFill:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  type metadata accessor for Path.PathBox();
  v4 = swift_allocObject();
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 16) = 2;
  RBPathStorageInit();
  v6[0] = 0;
  v6[1] = a1;
  MEMORY[0x193AC35E0](v4 + 24, 20, 0, v6);
  Path.append(to:)(v4 + 24);
  result = MEMORY[0x193AC35E0](v4 + 24, 16, 0, 0);
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 5;
  return result;
}

uint64_t Path.intersection(_:eoFill:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{

  return Path.intersection(_:eoFill:)(a1, a2, 1, a3);
}

uint64_t Path.union(_:eoFill:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{

  return Path.intersection(_:eoFill:)(a1, a2, 2, a3);
}

uint64_t Path.subtracting(_:eoFill:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{

  return Path.intersection(_:eoFill:)(a1, a2, 3, a3);
}

uint64_t Path.symmetricDifference(_:eoFill:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{

  return Path.intersection(_:eoFill:)(a1, a2, 4, a3);
}

uint64_t Path.lineIntersection(_:eoFill:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{

  return Path.intersection(_:eoFill:)(a1, a2, 5, a3);
}

uint64_t Path.lineSubtraction(_:eoFill:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{

  return Path.intersection(_:eoFill:)(a1, a2, 6, a3);
}

uint64_t Path.intersection(_:eoFill:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  type metadata accessor for Path.PathBox();
  v8 = swift_allocObject();
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0u;
  *(v8 + 72) = 0u;
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0u;
  *(v8 + 24) = 0u;
  *(v8 + 16) = 2;
  RBPathStorageInit();
  v11[0] = a3;
  v11[1] = a2;
  MEMORY[0x193AC35E0](v8 + 24, 20, 0, v11);
  Path.append(to:)(v8 + 24);
  v9 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v9;
  v14 = *(a1 + 32);
  outlined init with copy of Path.Storage(v13, v12);
  MEMORY[0x193AC35E0](v8 + 24, 21, 0, 0);
  Path.append(to:)(v8 + 24);
  outlined destroy of Path(a1);
  result = MEMORY[0x193AC35E0](v8 + 24, 16, 0, 0);
  *a4 = v8;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 5;
  return result;
}

uint64_t Path.mapPoints(_:)@<X0>(uint64_t result@<X0>, int8x16_t *a2@<X8>, __n128 a3@<Q0>)
{
  v4 = result;
  v67 = *MEMORY[0x1E69E9840];
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2].u8[0];
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v28 = *(v6.i64[0] + 16);
      v29 = *(v6.i64[0] + 24);
      v30 = *(v6.i64[0] + 32);
      v31 = *(v6.i64[0] + 40);
      v32 = *(v6.i64[0] + 56);
      v58.f64[0] = *(v6.i64[0] + 48);
      *&v57.f64[0] = v32;
      v33 = *(v6.i64[0] + 64);
      type metadata accessor for _ContiguousArrayStorage<CGPoint>();
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_18DDACA80;
      *(v34 + 32) = v28;
      *(v34 + 40) = v29;
      *(v34 + 48) = v28 + v30;
      *(v34 + 56) = v29;
      *(v34 + 64) = v28 + v30;
      *(v34 + 72) = v29 + v31;
      *(v34 + 80) = v28;
      *(v34 + 88) = v29 + v31;
      *&v61 = v34;
      v4(&v61);
      result = specialized CGRect.init(exactCornerPoints:)(v61, &v64);
      if ((v66 & 1) == 0)
      {
        v35 = v64;
        v36 = v65;
        v37 = v64.f64[1];
        v56.n128_u64[0] = *&v64.f64[0];
        v68 = v65;
        Width = CGRectGetWidth(*v35.f64);
        v74.origin.x = v28;
        v74.origin.y = v29;
        v74.size.width = v30;
        v74.size.height = v31;
        if (Width == CGRectGetWidth(v74))
        {
          *&v75.origin.x = v56.n128_u64[0];
          v75.origin.y = v35.f64[1];
          v75.size = v36;
          Height = CGRectGetHeight(v75);
          v76.origin.x = v28;
          v76.origin.y = v29;
          v76.size.width = v30;
          v76.size.height = v31;
          if (Height == CGRectGetHeight(v76))
          {
            result = swift_allocObject();
            *(result + 16) = v56.n128_u64[0];
            *(result + 24) = v35.f64[1];
            *(result + 32) = v36;
            v40 = *&v57.f64[0];
            *(result + 48) = v58.f64[0];
            *(result + 56) = v40;
            v7 = 0uLL;
            *(result + 64) = v33;
            v18 = 2;
            v6 = result;
            goto LABEL_30;
          }
        }
      }
    }

    else
    {
      v19 = vorrq_s8(v6, v7);
      v20 = vorr_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL));
      if (v8 == 6 && *&v20 == 0)
      {
        v18 = 6;
        goto LABEL_30;
      }
    }

LABEL_24:
    v60 = MEMORY[0x1E69E7CC0];
    MEMORY[0x1EEE9AC00](result);
    v53 = &v60;
    v41 = swift_allocObject();
    *(v41 + 16) = partial apply for closure #1 in Path.mapPoints(_:);
    *(v41 + 24) = v52;
    Path.retainRBPath()();
    *&v61 = partial apply for specialized closure #1 in StatefulRule<>.update<A>(modify:create:);
    *(&v61 + 1) = v41;

    RBPathApply();

    RBPathRelease();
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v4(&v60);
      Mutable = CGPathCreateMutable();
      v59 = 0;
      MEMORY[0x1EEE9AC00](Mutable);
      v52[0] = v44;
      v52[1] = &v60;
      v53 = &v59;
      v45 = swift_allocObject();
      *(v45 + 16) = partial apply for closure #2 in Path.mapPoints(_:);
      *(v45 + 24) = &v51;
      Path.retainRBPath()();
      *&v61 = partial apply for specialized closure #1 in StatefulRule<>.update<A>(modify:create:);
      *(&v61 + 1) = v45;

      RBPathApply();

      RBPathRelease();
      v46 = swift_isEscapingClosureAtFileLocation();

      if ((v46 & 1) == 0)
      {
        if (CGPathIsEmpty(Mutable))
        {

          v47 = 0;
          v18 = 6;
        }

        else
        {
          type metadata accessor for Path.PathBox();
          v47 = swift_allocObject();
          *(v47 + 32) = 0u;
          *(v47 + 48) = 0u;
          *(v47 + 64) = 0u;
          *(v47 + 80) = 0u;
          *(v47 + 96) = 0u;
          *(v47 + 112) = 0;
          *(v47 + 16) = 0;
          v18 = 5;
          *(v47 + 24) = Mutable;
        }

        v7 = 0uLL;
        v6 = v47;
        goto LABEL_30;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

  if (v3[2].i8[0])
  {
    if (v8 == 1)
    {
      a3.n128_u64[0] = v3->u64[1];
      v56 = a3;
      v9 = *&v7.i64[1];
      v57 = v6;
      v58 = v7;
      type metadata accessor for _ContiguousArrayStorage<CGPoint>();
      v10 = swift_allocObject();
      v11 = v57;
      *(v10 + 16) = xmmword_18DDACA80;
      *(v10 + 32) = v11;
      v12 = v58.f64[0] + *v11.i64;
      *(v10 + 48) = v58.f64[0] + *v11.i64;
      *(v10 + 56) = v11.i64[1];
      v13 = v9 + v56.n128_f64[0];
      *(v10 + 64) = v12;
      *(v10 + 72) = v13;
      *(v10 + 80) = v11.i64[0];
      *(v10 + 88) = v13;
      *&v61 = v10;
      v4(&v61);
      result = specialized CGRect.init(exactCornerPoints:)(v61, &v64);
      if ((v66 & 1) == 0)
      {
        v69.origin.x = v64.f64[0];
        v69.size.width = v65.width;
        v14 = v64.f64[1];
        v15 = v65.height;
        v54 = v64;
        v69.origin.y = v64.f64[1];
        v55 = v65;
        v69.size.height = v65.height;
        v16 = CGRectGetWidth(v69);
        v70.origin.x = v57.f64[0];
        *&v70.origin.y = v56.n128_u64[0];
        v70.size.width = v58.f64[0];
        v70.size.height = v9;
        if (v16 == CGRectGetWidth(v70))
        {
          v71.origin.x = v54.f64[0];
          v71.origin.y = v14;
          v71.size.width = v55.width;
          v71.size.height = v15;
          v17 = CGRectGetHeight(v71);
          v72.origin.x = v57.f64[0];
          *&v72.origin.y = v56.n128_u64[0];
          v72.size.width = v58.f64[0];
          v72.size.height = v9;
          if (v17 == CGRectGetHeight(v72))
          {
            v73.origin.x = v54.f64[0];
            v73.origin.y = v14;
            v73.size.width = v55.width;
            v73.size.height = v15;
            result = CGRectIsNull(v73);
            if (result)
            {
              v6 = 0uLL;
              v18 = 6;
              v7 = 0uLL;
            }

            else
            {
              v78.origin.x = v54.f64[0];
              v78.origin.y = v14;
              v78.size.width = v55.width;
              v78.size.height = v15;
              result = CGRectIsInfinite(v78);
              v18 = result ^ 1;
              v6 = v54;
              v7 = v55;
            }

            goto LABEL_30;
          }
        }
      }
    }

    goto LABEL_24;
  }

  v57 = *v3;
  v58 = v7;
  type metadata accessor for _ContiguousArrayStorage<CGPoint>();
  v22 = swift_allocObject();
  v23 = v57;
  v22[1] = xmmword_18DDACA80;
  v22[2] = v23;
  v24 = vaddq_f64(v58, v23);
  v25.x = v24.f64[0];
  v25.y = v23.f64[1];
  v22[3] = v25;
  v22[4] = v24;
  v23.f64[1] = v24.f64[1];
  v22[5] = v23;
  v60 = v22;
  v4(&v60);
  v26 = v60;

  specialized CGRect.init(exactCornerPoints:)(v27, &v64);
  if (v66)
  {
    v61 = 0u;
    v62 = 0u;
    v63 = 6;
    if (*&v26[1].x)
    {
      Path.move(to:)(v26[2]);
      if (*&v26[1].x >= 4uLL)
      {
        Path.addLine(to:)(v26[3]);
        Path.addLine(to:)(v26[4]);
        Path.addLine(to:)(v26[5]);
        Path.closeSubpath()();

        v6 = v61;
        v7 = v62;
        v18 = v63;
        goto LABEL_30;
      }

LABEL_42:
      __break(1u);
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v77.origin.x = v64.f64[0];
  v77.size.width = v65.width;
  v57 = v65;
  v58 = v64;
  v77.origin.y = v64.f64[1];
  v77.size.height = v65.height;
  IsNull = CGRectIsNull(v77);

  if (IsNull)
  {
    v18 = 6;
  }

  else
  {
    v18 = 0;
  }

  if (IsNull)
  {
    v49 = -1;
  }

  else
  {
    v49 = 0;
  }

  v50 = vdupq_n_s64(v49);
  v7 = vbicq_s8(v57, v50);
  v6 = vbicq_s8(v58, v50);
LABEL_30:
  *a2 = v6;
  a2[1] = v7;
  a2[2].i8[0] = v18;
  return result;
}

uint64_t closure #1 in Path.mapPoints(_:)(uint64_t result, char **a2)
{
  v3 = *(result + 48);
  if (v3 <= 1)
  {
    v28 = *result;
    v12 = *a2;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v12;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
      v12 = result;
      *a2 = result;
    }

    v16 = v28;
    v14 = *(v12 + 2);
    v17 = *(v12 + 3);
    v15 = v14 + 1;
    if (v14 < v17 >> 1)
    {
      goto LABEL_22;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v14 + 1, 1, v12);
    v16 = v28;
    v12 = result;
    goto LABEL_26;
  }

  if (v3 == 2)
  {
    v26 = *(result + 16);
    v29 = *result;
    v18 = *a2;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v18;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 16) + 1, 1, v18);
      v18 = result;
      *a2 = result;
    }

    v20 = *(v18 + 16);
    v19 = *(v18 + 24);
    v22 = v26;
    v21 = v29;
    if (v20 >= v19 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v18);
      v22 = v26;
      v21 = v29;
      v18 = result;
      *a2 = result;
    }

    *(v18 + 16) = v20 + 1;
    *(v18 + 16 * v20 + 32) = v21;
    v12 = *a2;
    v14 = *(*a2 + 2);
    v23 = *(*a2 + 3);
    v15 = v14 + 1;
    if (v14 < v23 >> 1)
    {
      v16 = v22;
      goto LABEL_22;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v14 + 1, 1, *a2);
    v12 = result;
    v16 = v26;
LABEL_26:
    *a2 = v12;
    goto LABEL_22;
  }

  if (v3 != 3)
  {
    return result;
  }

  v25 = *(result + 16);
  v27 = *result;
  v24 = *(result + 32);
  v4 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v4;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
    v4 = result;
    *a2 = result;
  }

  v6 = v25;
  v5 = v27;
  v8 = *(v4 + 2);
  v7 = *(v4 + 3);
  if (v8 >= v7 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v4);
    v6 = v25;
    v5 = v27;
    v4 = result;
    *a2 = result;
  }

  *(v4 + 2) = v8 + 1;
  *&v4[16 * v8 + 32] = v5;
  v9 = *a2;
  v11 = *(*a2 + 2);
  v10 = *(*a2 + 3);
  if (v11 >= v10 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v9);
    v6 = v25;
    v9 = result;
    *a2 = result;
  }

  *(v9 + 2) = v11 + 1;
  *&v9[16 * v11 + 32] = v6;
  v12 = *a2;
  v14 = *(*a2 + 2);
  v13 = *(*a2 + 3);
  v15 = v14 + 1;
  if (v14 >= v13 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, *a2);
    v12 = result;
    v16 = v24;
    goto LABEL_26;
  }

  v16 = v24;
LABEL_22:
  *(v12 + 2) = v15;
  *&v12[16 * v14 + 32] = v16;
  return result;
}

void closure #2 in Path.mapPoints(_:)(uint64_t a1, CGMutablePathRef path, uint64_t a3, uint64_t *a4)
{
  v5 = *(a1 + 48);
  if (v5 <= 1)
  {
    if (*(a1 + 48))
    {
      v35 = *a4;
      if (*a4 < 0)
      {
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (v35 >= *(*a3 + 16))
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v36 = *a3 + 16 * v35;
      v37 = *(v36 + 32);
      v38 = *(v36 + 40);
      v39.a = 1.0;
      v39.b = 0.0;
      v39.c = 0.0;
      v39.d = 1.0;
      v39.tx = 0.0;
      v39.ty = 0.0;
      CGMutablePathRef.addLine(to:transform:)(__PAIR128__(v38, v37), &v39);
    }

    else
    {
      v21 = *a4;
      if (*a4 < 0)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= *(*a3 + 16))
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v22 = *a3 + 16 * v21;
      v23 = *(v22 + 32);
      v24 = *(v22 + 40);
      v39.a = 1.0;
      v39.b = 0.0;
      v39.c = 0.0;
      v39.d = 1.0;
      v39.tx = 0.0;
      v39.ty = 0.0;
      CGMutablePathRef.move(to:transform:)(__PAIR128__(v24, v23), &v39);
    }

    v20 = *a4 + 1;
    goto LABEL_24;
  }

  if (v5 == 2)
  {
    v25 = *a4;
    if ((*a4 & 0x8000000000000000) == 0)
    {
      v26 = *(*a3 + 16);
      if (v25 < v26)
      {
        v27 = v25 + 1;
        if (v25 + 1 < v26)
        {
          v28 = *a3 + 32;
          v29 = (v28 + 16 * v25);
          v30 = *v29;
          v31 = v29[1];
          v32 = (v28 + 16 * v27);
          v33 = *v32;
          v34 = v32[1];
          v39.a = 1.0;
          v39.b = 0.0;
          v39.c = 0.0;
          v39.d = 1.0;
          v39.tx = 0.0;
          v39.ty = 0.0;
          CGMutablePathRef.addQuadCurve(to:control:transform:)(__PAIR128__(v31, v30), __PAIR128__(v34, v33), &v39);
          v20 = *a4 + 2;
          goto LABEL_24;
        }

        goto LABEL_33;
      }

      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_26;
  }

  if (v5 == 3)
  {
    v6 = *a4;
    if ((*a4 & 0x8000000000000000) == 0)
    {
      v7 = *(*a3 + 16);
      if (v6 < v7)
      {
        v8 = v6 + 1;
        if (v6 + 1 < v7)
        {
          v9 = v6 + 2;
          if (v6 + 2 < v7)
          {
            v10 = *a3 + 32;
            v11 = (v10 + 16 * v6);
            v12 = *v11;
            v13 = v11[1];
            v14 = (v10 + 16 * v8);
            v15 = *v14;
            v16 = v14[1];
            v17 = (v10 + 16 * v9);
            v18 = *v17;
            v19 = v17[1];
            v39.a = 1.0;
            v39.b = 0.0;
            v39.c = 0.0;
            v39.d = 1.0;
            v39.tx = 0.0;
            v39.ty = 0.0;
            CGMutablePathRef.addCurve(to:control1:control2:transform:)(__PAIR128__(v13, v12), __PAIR128__(v16, v15), __PAIR128__(v19, v18), &v39);
            v20 = *a4 + 3;
LABEL_24:
            *a4 = v20;
            return;
          }

          goto LABEL_35;
        }

LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        return;
      }

      goto LABEL_30;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  CGPathCloseSubpath(path);
}

uint64_t static RBPath.withTemporaryPath<A>(do:builder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  closure #1 in static RBPath.withTemporaryPath<A>(do:builder:)(v13, 128, 128, v8, v9, v10);
  return (*(v5 + 32))(a3, v7, a2);
}

uint64_t closure #1 in static RBPath.withTemporaryPath<A>(do:builder:)(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  if (result)
  {
    v8 = result;
    RBPathStorageInit();
    a4(v8);
    if (one-time initialization token for temporaryPathCallbacks != -1)
    {
      swift_once();
    }

    a6(v8, temporaryPathCallbacks);
    return MEMORY[0x193AC3610](v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double one-time initialization function for temporaryPathCallbacks()
{
  v0 = swift_slowAlloc();
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 8) = @objc closure #1 in closure #1 in variable initialization expression of temporaryPathCallbacks;
  *(v0 + 16) = @objc closure #2 in closure #1 in variable initialization expression of temporaryPathCallbacks;
  *(v0 + 24) = @objc closure #3 in closure #1 in variable initialization expression of temporaryPathCallbacks;
  *(v0 + 32) = @objc closure #4 in closure #1 in variable initialization expression of temporaryPathCallbacks;
  *(v0 + 40) = @objc closure #5 in closure #1 in variable initialization expression of temporaryPathCallbacks;
  *(v0 + 48) = @objc closure #6 in closure #1 in variable initialization expression of temporaryPathCallbacks;
  *(v0 + 64) = @objc closure #7 in closure #1 in variable initialization expression of temporaryPathCallbacks;
  *(v0 + 72) = @objc closure #8 in closure #1 in variable initialization expression of temporaryPathCallbacks;
  *(v0 + 80) = 0;
  temporaryPathCallbacks = v0;
  return result;
}

id @objc closure #8 in closure #1 in variable initialization expression of temporaryPathCallbacks()
{
  result = MEMORY[0x193AC3650]();
  if (result)
  {
    v1 = result;

    return v1;
  }

  return result;
}

void Path.length(flatness:)()
{
  if (*(v0 + 32) <= 1u)
  {
    v2 = *(v0 + 8);
    v1 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *v0;
    v5 = *v0;
    v6 = v2;
    v7 = v1;
    v8 = v3;
    if (*(v0 + 32))
    {
      CGRectGetWidth(*&v5);
      v10.origin.x = v4;
      v10.origin.y = v2;
      v10.size.width = v1;
      v10.size.height = v3;
      CGRectGetHeight(v10);
    }

    else
    {
      CGRectGetWidth(*&v5);
      v9.origin.x = v4;
      v9.origin.y = v2;
      v9.size.width = v1;
      v9.size.height = v3;
      CGRectGetHeight(v9);
    }
  }

  else if (*(v0 + 32) - 2 < 4)
  {
    Path.retainRBPath()();
    RBPathApplyLines();
  }
}

uint64_t closure #1 in closure #1 in Path.LengthAccumulator.measure(_:flatness:)(uint64_t a1, char a2, double *a3)
{
  if (a2 == 1)
  {
    v4 = *a3;
    v5 = a3[1];
    *a1 = hypot(*a3 - *(a1 + 8), v5 - *(a1 + 16)) + *a1;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    return 1;
  }

  else if (a2)
  {
    return 0;
  }

  else
  {
    *(a1 + 8) = *a3;
    return 1;
  }
}

uint64_t specialized static Path.Element.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 48);
  if (v3 <= 1)
  {
    if (*(a1 + 48))
    {
      if (*(a2 + 48) != 1)
      {
        return 0;
      }
    }

    else if (*(a2 + 48))
    {
      return 0;
    }

    return v2.f64[1] == *(a2 + 8) && v2.f64[0] == *a2;
  }

  v4 = *(a1 + 16);
  if (v3 != 2)
  {
    if (v3 == 3)
    {
      if (*(a2 + 48) == 3)
      {
        v5 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v2, *a2), vceqq_f64(v4, *(a2 + 16)))));
        v6 = *(a1 + 32) == *(a2 + 32);
        if (*(a1 + 40) != *(a2 + 40))
        {
          v6 = 0;
        }

        return (v5 & 1) != 0 && v6;
      }
    }

    else if (*(a2 + 48) == 4)
    {
      v10 = vorrq_s8(*(a2 + 16), *(a2 + 32));
      if (!(*&vorr_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL)) | *(a2 + 8) | *a2))
      {
        return 1;
      }
    }

    return 0;
  }

  if (*(a2 + 48) != 2)
  {
    return 0;
  }

  v8 = v4.f64[0] == *(a2 + 16);
  if (v4.f64[1] != *(a2 + 24))
  {
    v8 = 0;
  }

  return v2.f64[0] == *a2 && v2.f64[1] == *(a2 + 8) && v8;
}

uint64_t specialized Path.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  Mutable = CGPathCreateMutable();
  v7 = MEMORY[0x193ABEC20](a1, a2);

  v8 = [v7 UTF8String];
  v9 = v7;
  if (v8 && _CGPathParseString(Mutable, v8))
  {
    type metadata accessor for Path.PathBox();
    result = swift_allocObject();
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0;
    *(result + 16) = 0;
    v11 = 5;
    *(result + 24) = Mutable;
  }

  else
  {

    result = 0;
    v11 = -1;
  }

  *a3 = result;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = v11;
  return result;
}

uint64_t assignWithTake for Path(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v8;
  v9 = *(a1 + 32);
  *(a1 + 32) = v3;
  outlined consume of Path.Storage(v4, v6, v5, v7, v9);
  return a1;
}

uint64_t storeEnumTagSinglePayload for Path(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for Path.Storage(uint64_t a1)
{
  if (*(a1 + 32) <= 5u)
  {
    return *(a1 + 32);
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t destructiveInjectEnumTag for Path.Storage(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for Path.Element(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 49))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 48);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Path.Element(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for Path.Element(uint64_t a1)
{
  if (*(a1 + 48) <= 3u)
  {
    return *(a1 + 48);
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t destructiveInjectEnumTag for Path.Element(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 48) = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type Path.PathBox.Kind and conformance Path.PathBox.Kind()
{
  result = lazy protocol witness table cache variable for type Path.PathBox.Kind and conformance Path.PathBox.Kind;
  if (!lazy protocol witness table cache variable for type Path.PathBox.Kind and conformance Path.PathBox.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Path.PathBox.Kind and conformance Path.PathBox.Kind);
  }

  return result;
}

uint64_t withAnimation<A>(_:completionCriteria:_:completion:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *a2;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(&v17, a1);

  v16 = v13;
  Transaction.addAnimationCompletion(criteria:_:)(&v16, a5, a6);

  withTransaction<A>(_:_:)(v14, a3, a4, a7);
}

uint64_t Transaction.addAnimationCompletion(criteria:_:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a2;
    *(v5 + 24) = a3;
    v6 = swift_allocObject();
    *(v6 + 16) = partial apply for closure #2 in Transaction.addAnimationCompletion(criteria:_:);
    *(v6 + 24) = v5;
    type metadata accessor for AllFinishedListener();
    v7 = swift_allocObject();
    *(v7 + 32) = 0;
    *(v7 + 40) = 0;
    *(v7 + 48) = 0;
    *(v7 + 16) = partial apply for closure #1 in Transaction.addAnimationListener(allFinished:);
    *(v7 + 24) = v6;

    Transaction.addAnimationListener(_:)(v7);
  }

  else
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    *(v8 + 24) = a3;
    v9 = swift_allocObject();
    *(v9 + 16) = partial apply for closure #1 in Transaction.addAnimationCompletion(criteria:_:);
    *(v9 + 24) = v8;
    type metadata accessor for AllFinishedListener();
    v10 = swift_allocObject();
    *(v10 + 32) = 0;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 16) = partial apply for closure #1 in Transaction.addAnimationListener(allFinished:);
    *(v10 + 24) = v9;

    Transaction.addAnimationLogicalListener(_:)(v10);
  }
}

Swift::Int AnimationCompletionCriteria.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t partial apply for closure #2 in Transaction.addAnimationCompletion(criteria:_:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = 6;
  return static Update.enqueueAction(reason:_:)(&v4, v1, v2);
}

uint64_t partial apply for closure #1 in Transaction.addAnimationCompletion(criteria:_:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = 5;
  return static Update.enqueueAction(reason:_:)(&v4, v1, v2);
}

unint64_t lazy protocol witness table accessor for type AnimationCompletionCriteria and conformance AnimationCompletionCriteria()
{
  result = lazy protocol witness table cache variable for type AnimationCompletionCriteria and conformance AnimationCompletionCriteria;
  if (!lazy protocol witness table cache variable for type AnimationCompletionCriteria and conformance AnimationCompletionCriteria)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationCompletionCriteria and conformance AnimationCompletionCriteria);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimationCompletionCriteria.Storage and conformance AnimationCompletionCriteria.Storage()
{
  result = lazy protocol witness table cache variable for type AnimationCompletionCriteria.Storage and conformance AnimationCompletionCriteria.Storage;
  if (!lazy protocol witness table cache variable for type AnimationCompletionCriteria.Storage and conformance AnimationCompletionCriteria.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationCompletionCriteria.Storage and conformance AnimationCompletionCriteria.Storage);
  }

  return result;
}

SwiftUI::RoundedRectangle __swiftcall RoundedRectangle.init(cornerSize:style:)(CGSize cornerSize, SwiftUI::RoundedCornerStyle style)
{
  *v2 = cornerSize.width;
  *(v2 + 8) = cornerSize.height;
  *(v2 + 16) = *style;
  result.cornerSize.height = cornerSize.height;
  result.cornerSize.width = cornerSize.width;
  result.style = style;
  return result;
}

_BYTE *RoundedRectangle.init(cornerRadius:style:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  *(a2 + 8) = a3;
  *(a2 + 16) = *result;
  return result;
}

__n128 (*RoundedRectangle.animatableData.modify(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = *v1;
  return protocol witness for Animatable.animatableData.modify in conformance CGPoint;
}

_BYTE *UnevenRoundedRectangle.init(cornerRadii:style:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = *result;
  return result;
}

void UnevenRoundedRectangle.cornerRadii.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t UnevenRoundedRectangle.path(in:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v21[6] = *MEMORY[0x1E69E9840];
  v16 = v5[1];
  v17 = *v5;
  v11 = *(v5 + 32);
  result = CGRectIsNull(*&a2);
  if (result)
  {
    v13 = 0;
    v14 = 6;
  }

  else
  {
    type metadata accessor for Path.PathBox();
    v13 = swift_allocObject();
    *(v13 + 40) = 0u;
    *(v13 + 56) = 0u;
    *(v13 + 72) = 0u;
    *(v13 + 88) = 0u;
    *(v13 + 104) = 0u;
    *(v13 + 24) = 0u;
    *(v13 + 16) = 2;
    RBPathStorageInit();
    v21[0] = 0x3FF0000000000000;
    v21[1] = 0;
    v21[2] = 0;
    v21[3] = 0x3FF0000000000000;
    v21[4] = 0;
    v21[5] = 0;
    *v18 = a2;
    *&v18[1] = a3;
    *&v18[2] = a4;
    *&v18[3] = a5;
    if (v11)
    {
      v15 = 11;
    }

    else
    {
      v15 = 10;
    }

    v20 = v16;
    v19 = v17;
    result = MEMORY[0x193AC35E0](v13 + 24, v15, v18, v21);
    v14 = 5;
  }

  *a1 = v13;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v14;
  return result;
}

uint64_t (*UnevenRoundedRectangle.animatableData.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = v1[1];
  *v3 = *v1;
  *(v3 + 16) = v4;
  return UnevenRoundedRectangle.animatableData.modify;
}

uint64_t static UnevenRoundedRectangle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))))))
  {
    return (*(a2 + 32) ^ *(a1 + 32) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance UnevenRoundedRectangle(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = v1[1];
  *v3 = *v1;
  *(v3 + 16) = v4;
  return protocol witness for Animatable.animatableData.modify in conformance UnevenRoundedRectangle;
}

BOOL Ellipse.path(in:)@<W0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  result = CGRectIsNull(*&a2);
  if (result)
  {
    v7 = 0uLL;
    v8 = 6;
    v9 = 0uLL;
  }

  else
  {
    v14.origin.x = a2;
    v14.origin.y = a3;
    v14.size.height = a5;
    v14.size.width = a4;
    result = CGRectIsInfinite(v14);
    *&v7 = a2;
    *(&v7 + 1) = a3;
    *&v9 = a4;
    *(&v9 + 1) = a5;
    v8 = !result;
  }

  *a1 = v7;
  *(a1 + 16) = v9;
  *(a1 + 32) = v8;
  return result;
}

BOOL protocol witness for Shape.path(in:) in conformance Ellipse@<W0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  result = CGRectIsNull(*&a2);
  if (result)
  {
    v7 = 0uLL;
    v8 = 6;
    v9 = 0uLL;
  }

  else
  {
    v14.origin.x = a2;
    v14.origin.y = a3;
    v14.size.height = a5;
    v14.size.width = a4;
    result = CGRectIsInfinite(v14);
    *&v7 = a2;
    *(&v7 + 1) = a3;
    *&v9 = a4;
    *(&v9 + 1) = a5;
    v8 = !result;
  }

  *a1 = v7;
  *(a1 + 16) = v9;
  *(a1 + 32) = v8;
  return result;
}

double Circle.path(in:)@<D0>(uint64_t a1@<X8>, double a2@<D0>, CGFloat a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  specialized Circle.path(in:)(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

double Circle.sizeThatFits(_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  result = *&a3;
  v5 = 10.0;
  if ((a4 & 1) == 0)
  {
    v5 = *&a3;
  }

  if (*&a3 >= *&a1)
  {
    result = *&a1;
  }

  if (a4)
  {
    result = *&a1;
  }

  if (a2)
  {
    return v5;
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Ellipse(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Ellipse and conformance Ellipse();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Ellipse and conformance Ellipse();
  *(a1 + 8) = result;
  return result;
}

uint64_t DisplayList.ViewRenderer.__allocating_init(definition:)(unint64_t a1)
{
  (*(a1 + 80))(&v5);
  v2 = v5 | a1;
  v3 = swift_allocObject();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 1;
  *(v3 + 24) = 0;
  *(v3 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  *(v3 + 96) = 1;
  *(v3 + 16) = v2;
  return v3;
}

double DisplayList.ViewRenderer.render(rootView:from:time:nextTime:version:maxVersion:environment:)@<D0>(void *a1@<X0>, uint64_t *a2@<X1>, double *a3@<X2>, double *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, double *a8@<X8>)
{
  v10 = *a2;
  v11 = *(a2 + 4);
  v12 = *(a2 + 3);
  v13 = *a3;
  v14 = *a4;
  v15 = *a5;
  v16 = *a6;
  v17 = *a7;
  specialized DisplayList.ViewRenderer.updateRenderer(rootView:)(a1);
  v19 = v18;
  swift_beginAccess();
  if (!*(v8 + 48))
  {
    v17 = *(v8 + 40);
  }

  ObjectType = swift_getObjectType();
  v30 = v10;
  v31 = v11;
  v32 = v12;
  v29 = v13;
  v27 = v16;
  v28 = v15;
  v26 = v17;
  v21 = *(v19 + 24);
  swift_unknownObjectRetain();
  v21(&v33, a1, &v30, &v29, &v28, &v27, &v26, ObjectType, v19);
  swift_unknownObjectRelease();
  v22 = v33;
  if (v14 < v33)
  {
    v22 = v14;
  }

  v23 = v22 - v13;
  if (*(v8 + 32) > v23)
  {
    v23 = *(v8 + 32);
  }

  result = v13 + v23;
  *a8 = result;
  return result;
}

uint64_t DisplayList.ViewRenderer.renderAsync(to:time:nextTime:targetTimestamp:version:maxVersion:)@<X0>(uint64_t result@<X0>, double *a2@<X1>, double *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, double *a7@<X8>)
{
  if ((*(v7 + 96) & 1) != 0 || !*(v7 + 80))
  {
    *a7 = 0.0;
    goto LABEL_6;
  }

  v25 = a7;
  v8 = *result;
  v9 = *(result + 8);
  v10 = *(result + 12);
  v11 = *a2;
  v12 = *a3;
  v13 = *a4;
  v14 = *(a4 + 8);
  v15 = *a5;
  v16 = *a6;
  v17 = *(v7 + 88);
  ObjectType = swift_getObjectType();
  v26 = v8;
  v27 = v9;
  v28 = v10;
  v33 = v11;
  v30 = v15;
  v31 = v13;
  v32 = v14;
  v29 = v16;
  v18 = *(v17 + 32);
  swift_unknownObjectRetain();
  v18(&v34, &v26, &v33, &v31, &v30, &v29, ObjectType, v17);
  result = swift_unknownObjectRelease();
  if (v35)
  {
    a7 = v25;
    *v25 = v34;
LABEL_6:
    v19 = 1;
    goto LABEL_7;
  }

  v20 = v34;
  if (v12 < v34)
  {
    v20 = v12;
  }

  v21 = v20 - v11;
  result = swift_beginAccess();
  v19 = 0;
  v22 = *(v23 + 32);
  if (v22 <= v21)
  {
    v22 = v21;
  }

  a7 = v25;
  *v25 = v11 + v22;
LABEL_7:
  *(a7 + 8) = v19;
  return result;
}

uint64_t DisplayList.ViewRenderer.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
}

uint64_t key path getter for DisplayList.ViewRenderer.configuration : DisplayList.ViewRenderer@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = *(v3 + 48);
  *a2 = *(v3 + 24);
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
}

uint64_t key path setter for DisplayList.ViewRenderer.configuration : DisplayList.ViewRenderer(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *a2;
  swift_beginAccess();
  *(v6 + 24) = v2;
  *(v6 + 32) = v3;
  *(v6 + 40) = v4;
  *(v6 + 48) = v5;

  *(v6 + 96) = 1;
  return result;
}

uint64_t DisplayList.ViewRenderer.configuration.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 48) = v5;

  *(v1 + 96) = 1;
  return result;
}

uint64_t (*DisplayList.ViewRenderer.configuration.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DisplayList.ViewRenderer.configuration.modify;
}

uint64_t DisplayList.ViewRenderer.configuration.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    *(*(a1 + 24) + 96) = 1;
  }

  return result;
}

uint64_t DisplayList.ViewRenderer.host.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 64) = a2;
  swift_unknownObjectWeakAssign();
  result = swift_unknownObjectRelease();
  *(v2 + 96) = 1;
  return result;
}

void (*DisplayList.ViewRenderer.host.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 64);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return DisplayList.ViewRenderer.host.modify;
}

void DisplayList.ViewRenderer.host.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 64) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v4 = v3[5];
    swift_endAccess();
    swift_unknownObjectRelease();
    *(v4 + 96) = 1;
  }

  free(v3);
}

uint64_t DisplayList.ViewRenderer.__allocating_init(platform:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  v3 = *a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 1;
  *(v2 + 24) = 0;
  *(v2 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 1;
  *(v2 + 16) = v3;
  return v2;
}

uint64_t DisplayList.ViewRenderer.init(platform:)(uint64_t *a1)
{
  v2 = *a1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 1;
  *(v1 + 24) = 0;
  *(v1 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = 1;
  *(v1 + 16) = v2;
  return v1;
}

uint64_t DisplayList.ViewRenderer.viewCacheIsEmpty.getter()
{
  if (!*(v0 + 80))
  {
    return 1;
  }

  v1 = *(v0 + 88);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 48);
  swift_unknownObjectRetain();
  v4 = v3(ObjectType, v1);
  swift_unknownObjectRelease();
  return v4 & 1;
}

uint64_t DisplayList.ViewRenderer.deinit()
{

  outlined destroy of weak GestureGraphDelegate?(v0 + 56);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t closure #1 in closure #1 in DisplayList.ViewRasterizer.drawingContent(list:time:)(uint64_t a1, double a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(*(*(v5 + 16) + 8) + 24))(ObjectType, a2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t DisplayList.ViewRasterizer.__deallocating_deinit()
{
  outlined destroy of weak GestureGraphDelegate?(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ViewRendererBase.destroy(rootView:) in conformance DisplayList.ViewRasterizer()
{
  v1 = *(v0 + 16);
  result = swift_beginAccess();
  v3 = *(v0 + 40);
  if (v3)
  {
    return CoreViewRemoveFromSuperview(v1 & 3, v3);
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type DisplayList.ViewRenderer.State and conformance DisplayList.ViewRenderer.State()
{
  result = lazy protocol witness table cache variable for type DisplayList.ViewRenderer.State and conformance DisplayList.ViewRenderer.State;
  if (!lazy protocol witness table cache variable for type DisplayList.ViewRenderer.State and conformance DisplayList.ViewRenderer.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.ViewRenderer.State and conformance DisplayList.ViewRenderer.State);
  }

  return result;
}

uint64_t outlined destroy of ViewGraphRenderObserver?(uint64_t a1)
{
  type metadata accessor for ViewGraphRenderObserver?(0, &lazy cache variable for type metadata for ViewGraphRenderObserver?, type metadata accessor for ViewGraphRenderObserver, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

void type metadata accessor for ViewGraphRenderObserver?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t View.caFilter<A>(provider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _AnyCAFilterProvider();
  (*(v6 + 16))(v8, a1, a3);
  v11 = GradientBox.__allocating_init(_:)(v8);
  View.modifier<A>(_:)(&v11, a2, &type metadata for CAFilterEffect);
}

uint64_t VisualEffect.caFilter<A>(provider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _AnyCAFilterProvider();
  (*(v10 + 16))(v12, a1, a3);
  v15 = GradientBox.__allocating_init(_:)(v12);
  lazy protocol witness table accessor for type CAFilterEffect and conformance CAFilterEffect();
  VisualEffect.rendererEffect<A>(_:)(&v15, a2, &type metadata for CAFilterEffect, a4, a5);
}

unint64_t lazy protocol witness table accessor for type CAFilterEffect and conformance CAFilterEffect()
{
  result = lazy protocol witness table cache variable for type CAFilterEffect and conformance CAFilterEffect;
  if (!lazy protocol witness table cache variable for type CAFilterEffect and conformance CAFilterEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFilterEffect and conformance CAFilterEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CAFilterEffect and conformance CAFilterEffect;
  if (!lazy protocol witness table cache variable for type CAFilterEffect and conformance CAFilterEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFilterEffect and conformance CAFilterEffect);
  }

  return result;
}

void type metadata accessor for RendererVisualEffect<CAFilterEffect>()
{
  if (!lazy cache variable for type metadata for RendererVisualEffect<CAFilterEffect>)
  {
    lazy protocol witness table accessor for type CAFilterEffect and conformance CAFilterEffect();
    v0 = type metadata accessor for RendererVisualEffect();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for RendererVisualEffect<CAFilterEffect>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type RendererVisualEffect<CAFilterEffect> and conformance RendererVisualEffect<A>()
{
  result = lazy protocol witness table cache variable for type RendererVisualEffect<CAFilterEffect> and conformance RendererVisualEffect<A>;
  if (!lazy protocol witness table cache variable for type RendererVisualEffect<CAFilterEffect> and conformance RendererVisualEffect<A>)
  {
    type metadata accessor for RendererVisualEffect<CAFilterEffect>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererVisualEffect<CAFilterEffect> and conformance RendererVisualEffect<A>);
  }

  return result;
}

uint64_t protocol witness for _RendererEffect.effectValue(size:) in conformance CAFilterEffect@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *&v9[0] = v3;
  _s7SwiftUI14GraphicsFilterOWOi21_(v9);
  v5 = v9[5];
  v4[5] = v9[4];
  v4[6] = v5;
  v4[7] = v10[0];
  *(v4 + 124) = *(v10 + 12);
  v6 = v9[1];
  v4[1] = v9[0];
  v4[2] = v6;
  v7 = v9[3];
  v4[3] = v9[2];
  v4[4] = v7;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
}

unint64_t instantiation function for generic protocol witness table for CAFilterEffect(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFilterEffect and conformance CAFilterEffect();
  *(a1 + 8) = result;
  return result;
}

uint64_t InsettableShape.strokeBorder<A>(_:lineWidth:antialiased:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v9[0] = a8;
  v9[1] = 0.0;
  v9[2] = 10.0;
  *&v9[3] = MEMORY[0x1E69E7CC0];
  v9[4] = 0.0;
  return InsettableShape.strokeBorder<A>(_:style:antialiased:)(a1, v9, a2, a3, a4, a5, a6, a7);
}

uint64_t InsettableShape.strokeBorder<A>(_:style:antialiased:)@<X0>(uint64_t a1@<X0>, double *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v21 = a4;
  v25 = a5;
  v26 = a7;
  v22 = a3;
  v23 = a8;
  v24 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v20 - v12;
  swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for _StrokedShape();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v20 - v16;
  (*(a6 + 32))(v21, a6, *a2 * 0.5);
  Shape.stroke(style:)(a2, AssociatedTypeWitness, v17);
  (*(v11 + 8))(v13, AssociatedTypeWitness);
  swift_getWitnessTable();
  if (v22)
  {
    v18 = 256;
  }

  else
  {
    v18 = 0;
  }

  Shape.fill<A>(_:style:)(v24, v18, v14, v25, v23);
  return (*(v15 + 8))(v17, v14);
}

uint64_t InsettableShape.strokeBorder(style:antialiased:)@<X0>(double *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v17 = a3;
  v18 = a2;
  v19 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v17 - v9;
  swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for _StrokedShape();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - v13;
  (*(a4 + 32))(v17, a4, *a1 * 0.5);
  Shape.stroke(style:)(a1, AssociatedTypeWitness, v14);
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  swift_getWitnessTable();
  if (v18)
  {
    v15 = 256;
  }

  else
  {
    v15 = 0;
  }

  Shape.fill(style:)(v15, v11, v19);
  return (*(v12 + 8))(v14, v11);
}

uint64_t InsettableShape.strokeBorder(lineWidth:antialiased:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v6[0] = a5;
  v6[1] = 0.0;
  v6[2] = 10.0;
  *&v6[3] = MEMORY[0x1E69E7CC0];
  v6[4] = 0.0;
  return InsettableShape.strokeBorder(style:antialiased:)(v6, a1, a2, a3, a4);
}

int8x16_t Rectangle._Inset.path(in:)@<Q0>(int8x16_t *a1@<X8>, double a2@<D0>, CGFloat a3@<D4>)
{
  v19 = CGRectInset(*&a2, a3, a3);
  y = v19.origin.y;
  x = v19.origin.x;
  width = v19.size.width;
  height = v19.size.height;
  IsNull = CGRectIsNull(v19);
  *v8.i64 = x;
  *&v8.i64[1] = y;
  *v9.i64 = width;
  *&v9.i64[1] = height;
  if (IsNull)
  {
    v10 = -1;
  }

  else
  {
    v10 = 0;
  }

  v11 = vdupq_n_s64(v10);
  if (IsNull)
  {
    v12 = 6;
  }

  else
  {
    v12 = 0;
  }

  v13 = vbicq_s8(v8, v11);
  result = vbicq_s8(v9, v11);
  *a1 = v13;
  a1[1] = result;
  a1[2].i8[0] = v12;
  return result;
}

uint64_t (*Rectangle._Inset.animatableData.modify(void *a1))()
{
  a1[1] = v1;
  *a1 = *v1;
  return protocol witness for Animatable.animatableData.modify in conformance _ContrastEffect;
}

void RoundedRectangle.inset(by:)(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = a2;
}

uint64_t RoundedRectangle._Inset.init(base:amount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *(result + 16);
  *a2 = *result;
  *(a2 + 16) = v3;
  *(a2 + 24) = a3;
  return result;
}

__n128 RoundedRectangle._Inset.base.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 RoundedRectangle._Inset.base.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u8[0] = v2;
  return result;
}

void RoundedRectangle._Inset.animatableData.setter(double a1, double a2, double a3)
{
  *v3 = a1;
  v3[1] = a2;
  v3[3] = a3;
}

double (*RoundedRectangle._Inset.animatableData.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 24) = v1;
  v2 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 16) = v2;
  return RoundedRectangle._Inset.animatableData.modify;
}

double RoundedRectangle._Inset.animatableData.modify(uint64_t a1)
{
  v1 = *(a1 + 24);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 24) = result;
  return result;
}

double RoundedRectangle._Inset.inset(by:)@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  *a1 = *v2;
  *(a1 + 16) = v3;
  result = v4 + a2;
  *(a1 + 24) = result;
  return result;
}

double protocol witness for InsettableShape.inset(by:) in conformance RoundedRectangle._Inset@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  *a1 = *v2;
  *(a1 + 16) = v3;
  result = v4 + a2;
  *(a1 + 24) = result;
  return result;
}

double protocol witness for Animatable.animatableData.setter in conformance RoundedRectangle._Inset(uint64_t a1)
{
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 24) = result;
  return result;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance RoundedRectangle._Inset(uint64_t a1))()
{
  *(a1 + 24) = v1;
  v2 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 16) = v2;
  return protocol witness for Animatable.animatableData.modify in conformance RoundedRectangle._Inset;
}

void UnevenRoundedRectangle.inset(by:)(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v4;
  *(a1 + 32) = v3;
  *(a1 + 40) = a2;
}

uint64_t UnevenRoundedRectangle._Inset.init(base:amount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *(result + 32);
  v4 = *(result + 16);
  *a2 = *result;
  *(a2 + 16) = v4;
  *(a2 + 32) = v3;
  *(a2 + 40) = a3;
  return result;
}

__n128 UnevenRoundedRectangle._Inset.base.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 UnevenRoundedRectangle._Inset.base.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  *(v1 + 32) = v2;
  return result;
}

double UnevenRoundedRectangle._Inset.path(in:)@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v7 = *v5;
  v8 = *(v5 + 8);
  v9 = *(v5 + 16);
  v10 = *(v5 + 24);
  v11 = *(v5 + 32);
  v12 = *(v5 + 40);
  v22 = CGRectInset(*&a2, v12, v12);
  v13 = v7 - v12;
  v14 = 0.0;
  if (v7 - v12 <= 0.0)
  {
    v13 = 0.0;
  }

  v15 = v8 - v12;
  if (v8 - v12 <= 0.0)
  {
    v15 = 0.0;
  }

  v16 = v9 - v12;
  if (v9 - v12 <= 0.0)
  {
    v16 = 0.0;
  }

  if (v10 - v12 > 0.0)
  {
    v14 = v10 - v12;
  }

  v19 = v11;
  specialized Path.init(roundedRect:cornerRadii:style:)(&v19, v20, v22.origin.x, v22.origin.y, v22.size.width, v22.size.height, v13, v15, v16, v14);
  result = *v20;
  v18 = v20[1];
  *a1 = v20[0];
  *(a1 + 16) = v18;
  *(a1 + 32) = v21;
  return result;
}

double UnevenRoundedRectangle._Inset.animatableData.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 32) = result;
  return result;
}

double UnevenRoundedRectangle._Inset.animatableData.setter(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v3;
  *(v1 + 40) = result;
  return result;
}

uint64_t (*UnevenRoundedRectangle._Inset.animatableData.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  v4 = *(v1 + 40);
  v5 = *(v1 + 16);
  *v3 = *v1;
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  return UnevenRoundedRectangle._Inset.animatableData.modify;
}

double UnevenRoundedRectangle._Inset.inset(by:)@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v5 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  result = v4 + a2;
  *(a1 + 40) = result;
  return result;
}

double protocol witness for InsettableShape.inset(by:) in conformance UnevenRoundedRectangle._Inset@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v5 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  result = v4 + a2;
  *(a1 + 40) = result;
  return result;
}

double protocol witness for Shape.path(in:) in conformance UnevenRoundedRectangle._Inset@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  UnevenRoundedRectangle._Inset.path(in:)(v5, a2);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

double protocol witness for Animatable.animatableData.getter in conformance UnevenRoundedRectangle._Inset@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 32) = result;
  return result;
}

double protocol witness for Animatable.animatableData.setter in conformance UnevenRoundedRectangle._Inset(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v3;
  *(v1 + 40) = result;
  return result;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance UnevenRoundedRectangle._Inset(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  v4 = *(v1 + 40);
  v5 = *(v1 + 16);
  *v3 = *v1;
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  return protocol witness for Animatable.animatableData.modify in conformance UnevenRoundedRectangle._Inset;
}

double UnevenRoundedRectangle._Inset.animatableData.modify(void **a1)
{
  v1 = *a1;
  v2 = v1[5];
  v3 = v1[4];
  v4 = *(v1 + 1);
  *v2 = *v1;
  *(v2 + 16) = v4;
  *(v2 + 40) = v3;
  free(v1);
  return result;
}

void protocol witness for InsettableShape.inset(by:) in conformance UnevenRoundedRectangle(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v4;
  *(a1 + 32) = v3;
  *(a1 + 40) = a2;
}

double Capsule._Inset.path(in:)@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, CGFloat a6@<D4>)
{
  if (one-time initialization token for v5 != -1)
  {
    swift_once();
  }

  v12 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (static Semantics.forced < v12)
  {
    goto LABEL_10;
  }

  *&a6 &= ~1uLL;
LABEL_10:
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  v18 = CGRectInset(v17, a6, a6);
  Capsule.path(in:)(v15, v18.origin.x, v18.origin.y, v18.size.width, v18.size.height);
  result = *v15;
  v14 = v15[1];
  *a1 = v15[0];
  *(a1 + 16) = v14;
  *(a1 + 32) = v16;
  return result;
}

uint64_t (*Capsule._Inset.animatableData.modify(unint64_t *a1))(uint64_t result)
{
  v2 = *v1;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = v2 & 0xFFFFFFFFFFFFFFFELL;
  return Capsule._Inset.animatableData.modify;
}

double protocol witness for InsettableShape.inset(by:) in conformance Capsule._Inset@<D0>(unint64_t *a1@<X8>, double a2@<D0>)
{
  result = COERCE_DOUBLE(*v2 & 0xFFFFFFFFFFFFFFFELL) + a2;
  *a1 = *&result & 0xFFFFFFFFFFFFFFFELL | *v2 & 1;
  return result;
}

double protocol witness for Shape.path(in:) in conformance Capsule._Inset@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  Capsule._Inset.path(in:)(v9, a2, a3, a4, a5, *v5);
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance Capsule._Inset(unint64_t *a1))()
{
  v2 = *v1;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = v2 & 0xFFFFFFFFFFFFFFFELL;
  return protocol witness for Animatable.animatableData.modify in conformance Capsule._Inset;
}

BOOL Ellipse._Inset.path(in:)@<W0>(uint64_t a1@<X8>, double a2@<D0>, CGFloat a3@<D4>)
{
  v15 = CGRectInset(*&a2, a3, a3);
  x = v15.origin.x;
  y = v15.origin.y;
  height = v15.size.height;
  rect = v15.size.width;
  result = CGRectIsNull(v15);
  if (result)
  {
    v8 = 0uLL;
    v9 = 6;
    v10 = 0uLL;
  }

  else
  {
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.height = height;
    v16.size.width = rect;
    result = CGRectIsInfinite(v16);
    *&v8 = x;
    *(&v8 + 1) = y;
    *&v10 = rect;
    *(&v10 + 1) = height;
    v9 = !result;
  }

  *a1 = v8;
  *(a1 + 16) = v10;
  *(a1 + 32) = v9;
  return result;
}

uint64_t (*Ellipse._Inset.animatableData.modify(void *a1))()
{
  a1[1] = v1;
  *a1 = *v1;
  return protocol witness for Animatable.animatableData.modify in conformance _ContrastEffect;
}

BOOL protocol witness for Shape.path(in:) in conformance Ellipse._Inset@<W0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v15 = CGRectInset(*&a2, *v5, *v5);
  x = v15.origin.x;
  y = v15.origin.y;
  height = v15.size.height;
  rect = v15.size.width;
  result = CGRectIsNull(v15);
  if (result)
  {
    v8 = 0uLL;
    v9 = 6;
    v10 = 0uLL;
  }

  else
  {
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.height = height;
    v16.size.width = rect;
    result = CGRectIsInfinite(v16);
    *&v8 = x;
    *(&v8 + 1) = y;
    *&v10 = rect;
    *(&v10 + 1) = height;
    v9 = !result;
  }

  *a1 = v8;
  *(a1 + 16) = v10;
  *(a1 + 32) = v9;
  return result;
}

double Circle._Inset.path(in:)@<D0>(uint64_t a1@<X8>, double a2@<D0>, CGFloat a3@<D4>)
{
  v11 = CGRectInset(*&a2, a3, a3);
  specialized Circle.path(in:)(v9, v11.origin.x, v11.origin.y, v11.size.width, v11.size.height);
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

double (*Circle._Inset.animatableData.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return ViewSize.width.modify;
}

double protocol witness for Shape.path(in:) in conformance Circle._Inset@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v11 = CGRectInset(*&a2, *v5, *v5);
  specialized Circle.path(in:)(v9, v11.origin.x, v11.origin.y, v11.size.width, v11.size.height);
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

double Rectangle.outset(by:)@<D0>(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = -a2;
  a1[1] = -a3;
  result = -a5;
  a1[2] = -a4;
  a1[3] = -a5;
  return result;
}

int8x16_t protocol witness for Shape.path(in:) in conformance Rectangle.AsymmetricalInset@<Q0>(int8x16_t *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v19.origin.x = CGRect.inset(by:)(*v5, v5[1], v5[2], v5[3], a2, a3, a4, a5);
  y = v19.origin.y;
  x = v19.origin.x;
  width = v19.size.width;
  height = v19.size.height;
  IsNull = CGRectIsNull(v19);
  *v8.i64 = x;
  *&v8.i64[1] = y;
  *v9.i64 = width;
  *&v9.i64[1] = height;
  if (IsNull)
  {
    v10 = -1;
  }

  else
  {
    v10 = 0;
  }

  v11 = vdupq_n_s64(v10);
  if (IsNull)
  {
    v12 = 6;
  }

  else
  {
    v12 = 0;
  }

  v13 = vbicq_s8(v8, v11);
  result = vbicq_s8(v9, v11);
  *a1 = v13;
  a1[1] = result;
  a1[2].i8[0] = v12;
  return result;
}

unint64_t instantiation function for generic protocol witness table for UnevenRoundedRectangle._Inset(uint64_t a1)
{
  result = lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for Capsule._Inset(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Capsule._Inset and conformance Capsule._Inset();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Capsule._Inset and conformance Capsule._Inset();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for Ellipse._Inset(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Ellipse._Inset and conformance Ellipse._Inset();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Ellipse._Inset and conformance Ellipse._Inset();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for RoundedRectangle._Inset(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RoundedRectangle._Inset(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnevenRoundedRectangle._Inset(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 48))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for UnevenRoundedRectangle._Inset(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Rectangle.AsymmetricalInset(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Rectangle.AsymmetricalInset and conformance Rectangle.AsymmetricalInset();
  *(a1 + 8) = result;
  return result;
}

Swift::Int _VAlignment.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](a1);
  return Hasher._finalize()();
}

double _AlignmentLayout.placement(of:in:)@<D0>(int *a1@<X1>, unsigned int a2@<W2>, uint64_t a3@<X8>)
{
  v3 = a2;
  v5 = *a1;
  v6 = a2 >> 8;
  v26 = *(a1 + 1);
  v27 = a1[3];
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  v30 = *(a1 + 2);
  v9 = *(a1 + 48);
  v25 = v5;
  v28 = v7;
  v29 = v8;
  v31 = v9;
  PlacementContext.proposedSize.getter(&v21);
  v10 = v21;
  v11 = v22;
  v12 = v23;
  v13 = v24;
  v14 = dbl_18DDECEF0[v3];
  v15 = dbl_18DDECEF0[v6];
  if (v9)
  {
    v16 = v21;
    InputValue = AGGraphGetInputValue();
    v10 = v16;
    v18 = *InputValue;
    v19 = InputValue[1];
  }

  else
  {
    v18 = v7;
    v19 = v8;
  }

  result = v14 * v18;
  *a3 = v10;
  *(a3 + 8) = v11;
  *(a3 + 16) = v12;
  *(a3 + 24) = v13;
  *(a3 + 32) = v14;
  *(a3 + 40) = v15;
  *(a3 + 48) = result;
  *(a3 + 56) = v15 * v19;
  return result;
}

double _AlignmentLayout.sizeThatFits(in:context:child:)(uint64_t a1, uint64_t a2, uint64_t *a3, __int16 a4)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  if (a4 != 3 && (a4 & 0xFF00) != 0x300 && (*(a1 + 8) & 1) == 0 && (*(a1 + 24) & 1) == 0)
  {
    return *a1;
  }

  v9 = a4 == 3;
  v10 = *(a3 + 2);
  v15 = *a3;
  v16 = v10;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  LayoutProxy.size(in:)(&v11);
  if (((v9 | v5) & 1) == 0)
  {
    return v4;
  }

  return result;
}