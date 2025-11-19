__n128 NamedImage._BitmapInfo.init<A>(_:contents:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for NamedImage._BitmapInfo();
  v9 = v8[10];
  *(a4 + v9) = 2;
  v10 = a4 + v8[11];
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 2;
  (*(*(a3 - 8) + 32))(a4, a2, a3);
  v11 = type metadata accessor for NamedImage._BitmapInfo();
  *(a4 + v8[7]) = *(a1 + v11[7]);
  *(a4 + v8[8]) = *(a1 + v11[8]);
  *(a4 + v8[9]) = *(a1 + v11[9]);
  *(a4 + v9) = *(a1 + v11[10]);
  v12 = a1 + v11[11];
  v13 = *(v12 + 32);
  v15 = *(v12 + 16);
  v16 = *v12;
  (*(*(v11 - 1) + 8))(a1, v11);
  result = v16;
  *v10 = v16;
  *(v10 + 16) = v15;
  *(v10 + 32) = v13;
  return result;
}

id NamedImage.DecodedInfo.contents.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return outlined copy of GraphicsImage.Contents(v2, v3);
}

void NamedImage.DecodedInfo.contents.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  outlined consume of GraphicsImage.Contents(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
}

Swift::Int NamedImage.Errors.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t NamedImage.Cache.__allocating_init(archiveDelegate:)(uint64_t a1)
{
  swift_allocObject();
  v2 = specialized NamedImage.Cache.init(archiveDelegate:)(a1);

  return v2;
}

uint64_t _s7SwiftUI10NamedImageO5CacheCySo10CUICatalogC_Sb6retaintSgSo8NSBundleCcigAGSgAE4Data33_8E7DCD4CEB1ACDE07B249BFF4CBC75C0LLVzYuYTXEfU_@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 24);
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v6 & 1) != 0))
  {
    outlined init with copy of NamedImage.Key(*(v4 + 56) + 8 * v5, &v9, type metadata accessor for WeakBox<CUICatalog>);
    v10 = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    result = outlined destroy of Text.Style?(&v9, &lazy cache variable for type metadata for WeakBox<CUICatalog>?, type metadata accessor for WeakBox<CUICatalog>);
  }

  else
  {
    v9 = 0;
    v10 = 1;
    result = outlined destroy of Text.Style?(&v9, &lazy cache variable for type metadata for WeakBox<CUICatalog>?, type metadata accessor for WeakBox<CUICatalog>);
    Strong = 0;
  }

  *a3 = Strong;
  return result;
}

uint64_t NamedImage.Cache.deinit()
{

  outlined destroy of NamedImage.Cache.Data(v0 + 32);
  return v0;
}

uint64_t static NamedImage.sharedCache.getter()
{
  if (one-time initialization token for sharedCache != -1)
  {
    swift_once();
  }
}

id Image.Location.catalog.getter()
{
  v1 = *v0;
  if (!*v0)
  {
    if (one-time initialization token for systemAssetManager != -1)
    {
      swift_once();
    }

    v2 = static Image.Location.systemAssetManager;
    goto LABEL_9;
  }

  if (v1 == 1)
  {
    if (one-time initialization token for privateSystemAssetManager != -1)
    {
      swift_once();
    }

    v2 = static Image.Location.privateSystemAssetManager;
LABEL_9:
    v3 = v2;
    return v2;
  }

  if (one-time initialization token for sharedCache != -1)
  {
    v5 = *v0;
    swift_once();
    v1 = v5;
  }

  return NamedImage.Cache.subscript.getter(v1);
}

uint64_t Image.Location.findShapeAndFillVariantName<A>(_:base:body:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v66 = a5;
  v67 = a4;
  v13 = type metadata accessor for Optional();
  v60 = *(v13 - 8);
  v61 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v59 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v57 - v16;
  v64 = a6;
  v65 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v57 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v57 - v21;
  v23 = *a1;
  v24 = a1[1];
  v25 = *v7;
  LOBYTE(v70) = *a1;
  BYTE1(v70) = v24;
  v62 = a2;
  v63 = a3;
  v26._countAndFlagsBits = a2;
  v26._object = a3;
  v27 = SymbolVariants.shapeVariantName(name:)(v26);
  if (v27.value._object)
  {
    v58 = a7;
    v70 = v25;
    v28 = specialized Image.Location.aliasedName(_:)(v27.value._countAndFlagsBits, v27.value._object);
    v30 = v29;

    v70 = v25;
    LOBYTE(v68) = v23;
    BYTE1(v68) = v24;
    v31 = Image.Location.fillVariant(_:name:)(&v68, v28, v30);
    if (v32)
    {
      v33 = v31;
      v34 = v32;

      v28 = v33;
      v30 = v34;
    }

    v35 = v64;
    v67(v28, v30);

    v36 = v65;
    if ((*(v65 + 48))(v17, 1, v35) != 1)
    {
      v53 = *(v36 + 32);
      v53(v22, v17, v35);
      v54 = v58;
      v53(v58, v22, v35);
      return (*(v36 + 56))(v54, 0, 1, v35);
    }

    (*(v60 + 8))(v17, v61);
    a7 = v58;
  }

  v70 = v25;
  LOBYTE(v69) = v23;
  HIBYTE(v69) = v24;
  v68 = v25;
  v38 = v62;
  v37 = v63;
  v39 = specialized Image.Location.aliasedName(_:)(v62, v63);
  v41 = v40;

  v42 = Image.Location.fillVariant(_:name:)(&v69, v39, v41);
  v44 = v43;

  v45 = a7;
  if (!v44)
  {
LABEL_9:
    v70 = v25;
    v49 = specialized Image.Location.aliasedName(_:)(v38, v37);
    v51 = v50;

    v67(v49, v51);
  }

  v46 = v59;
  v67(v42, v44);

  v47 = v64;
  v48 = v65;
  if ((*(v65 + 48))(v46, 1, v64) == 1)
  {
    (*(v60 + 8))(v46, v61);
    goto LABEL_9;
  }

  v55 = *(v48 + 32);
  v56 = v57;
  v55(v57, v46, v47);
  v55(v45, v56, v47);
  return (*(v48 + 56))(v45, 0, 1, v47);
}

uint64_t Image.Location.findName<A>(_:base:body:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v34 = a5;
  v14 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v29 - v17;
  v19 = *a1;
  v20 = a1[1];
  v21 = *v7;
  if ((v19 & 4) != 0)
  {
    v22 = ((v19 & 1) == 0) | v19 & 0xFB;
  }

  else
  {
    v22 = v19;
  }

  if ((v19 & 4) != 0)
  {
    v23 = 3;
  }

  else
  {
    v23 = v20;
  }

  if ((v22 & 2) == 0)
  {
    goto LABEL_10;
  }

  v29 = v16;
  v30 = v15;
  v32 = a3;
  v33 = a7;
  v37 = 0x6873616C732ELL;
  v38 = 0xE600000000000000;
  v31 = a2;
  v35 = a2;
  v36 = a3;

  v35 = String.init<A>(_:)();
  v36 = v24;
  String.append<A>(contentsOf:)();
  v25 = v35;
  v37 = v21;
  LOBYTE(v35) = v22;
  BYTE1(v35) = v23;
  Image.Location.findShapeAndFillVariantName<A>(_:base:body:)(&v35, v25, v36, a4, v34, a6, v18);

  v26 = *(a6 - 8);
  if ((*(v26 + 48))(v18, 1, a6) == 1)
  {
    (*(v29 + 8))(v18, v30);
    a3 = v32;
    a7 = v33;
    a2 = v31;
LABEL_10:
    v37 = v21;
    LOBYTE(v35) = v22;
    BYTE1(v35) = v23;
    return Image.Location.findShapeAndFillVariantName<A>(_:base:body:)(&v35, a2, a3, a4, v34, a6, a7);
  }

  v28 = v33;
  (*(v26 + 32))(v33, v18, a6);
  return (*(v26 + 56))(v28, 0, 1, a6);
}

uint64_t static Image.Location.systemAssetManager.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for systemAssetManager != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = static Image.Location.systemAssetManager;
  v2 = off_1ED530E10;
  v3 = off_1ED530E18;
  v4 = unk_1ED530E20;
  *a1 = static Image.Location.systemAssetManager;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  v5 = v1;
}

uint64_t static Image.Location.privateSystemAssetManager.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for privateSystemAssetManager != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = static Image.Location.privateSystemAssetManager;
  v2 = off_1ED52C9C8;
  v3 = off_1ED52C9D0;
  v4 = unk_1ED52C9D8;
  *a1 = static Image.Location.privateSystemAssetManager;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  v5 = v1;
}

uint64_t Image.Location.hash(into:)()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v4.n128_f64[0] = MEMORY[0x1EEE9AC00](v1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  if (!*v0)
  {
    v8 = 1;
    return MEMORY[0x193AC11A0](v8, v4);
  }

  if (v7 == 1)
  {
    v8 = 2;
    return MEMORY[0x193AC11A0](v8, v4);
  }

  v10 = v3;
  MEMORY[0x193AC11A0](0, v4.n128_f64[0]);
  v11 = [v7 bundleURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL.hash(into:)();
  return (*(v2 + 8))(v6, v10);
}

Swift::Int Image.Location.hashValue.getter()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  Hasher.init(_seed:)();
  if (v5)
  {
    if (v5 != 1)
    {
      MEMORY[0x193AC11A0](0);
      v7 = [v5 bundleURL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL.hash(into:)();
      (*(v2 + 8))(v4, v1);
      return Hasher._finalize()();
    }

    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  MEMORY[0x193AC11A0](v6);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Image.Location()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v4.n128_f64[0] = MEMORY[0x1EEE9AC00](v1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  if (!*v0)
  {
    v8 = 1;
    return MEMORY[0x193AC11A0](v8, v4);
  }

  if (v7 == 1)
  {
    v8 = 2;
    return MEMORY[0x193AC11A0](v8, v4);
  }

  v10 = v3;
  MEMORY[0x193AC11A0](0, v4.n128_f64[0]);
  v11 = [v7 bundleURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL.hash(into:)();
  return (*(v2 + 8))(v6, v10);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Image.Location()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  v5 = *v0;
  if (*v0)
  {
    if (v5 != 1)
    {
      MEMORY[0x193AC11A0](0);
      v7 = [v5 bundleURL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL.hash(into:)();
      (*(v2 + 8))(v4, v1);
      return Hasher._finalize()();
    }

    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  MEMORY[0x193AC11A0](v6);
  return Hasher._finalize()();
}

__n128 Image.NamedImageProvider.init(name:value:location:label:decorative:backupLocation:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, __n128 *a5@<X4>, char a6@<W5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v10 = *a4;
  v15 = *a5;
  v11 = a5[1].n128_u64[0];
  v12 = a5[1].n128_u64[1];
  v13 = *a7;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 20) = BYTE4(a3) & 1;
  *(a8 + 24) = v10;
  outlined consume of Image.Location?(2);
  *(a8 + 32) = v13;
  outlined consume of AccessibilityImageLabel?(0, 0, 0x1FFFFFFFELL);
  result = v15;
  *(a8 + 40) = v15;
  *(a8 + 56) = v11;
  *(a8 + 64) = v12;
  *(a8 + 72) = a6;
  return result;
}

double Image.init(decorative:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (!a3)
  {
    v3 = [objc_opt_self() mainBundle];
  }

  outlined consume of Image.Location?(2);
  outlined consume of AccessibilityImageLabel?(0, 0, 0x1FFFFFFFELL);
  type metadata accessor for ImageProviderBox<Image.NamedImageProvider>(0, &lazy cache variable for type metadata for ImageProviderBox<Image.NamedImageProvider>, lazy protocol witness table accessor for type Image.NamedImageProvider and conformance Image.NamedImageProvider);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = 0;
  *(v6 + 36) = 1;
  *(v6 + 40) = v3;
  *(v6 + 48) = 2;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *&result = 0x1FFFFFFFELL;
  *(v6 + 72) = xmmword_18DD85530;
  *(v6 + 88) = 1;
  return result;
}

uint64_t Image.NamedImageProvider.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Image.NamedImageProvider.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Image.NamedImageProvider.value.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

id Image.NamedImageProvider.location.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  return outlined copy of Image.Location(v2);
}

void Image.NamedImageProvider.location.setter(uint64_t *a1)
{
  v2 = *a1;
  outlined consume of Image.Location(*(v1 + 24));
  *(v1 + 24) = v2;
}

id Image.NamedImageProvider.backupLocation.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  return outlined copy of Image.Location?(v2);
}

void Image.NamedImageProvider.backupLocation.setter(uint64_t *a1)
{
  v2 = *a1;
  outlined consume of Image.Location?(*(v1 + 32));
  *(v1 + 32) = v2;
}

uint64_t Image.NamedImageProvider.label.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return outlined copy of AccessibilityImageLabel?(v2, v3, v4);
}

__n128 Image.NamedImageProvider.label.setter(uint64_t a1)
{
  outlined consume of AccessibilityImageLabel?(v1[5], v1[6], v1[7]);
  result = *a1;
  *(v1 + 7) = *(a1 + 16);
  *(v1 + 5) = result;
  return result;
}

double Image.init(systemName:variableValue:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, __n128 a5)
{
  if (a4)
  {
    v8 = 0.0;
  }

  else
  {
    v7 = *&a3;
    v8 = v7;
  }

  v12 = a4 & 1;

  outlined consume of Image.Location?(2);
  outlined consume of AccessibilityImageLabel?(0, 0, 0x1FFFFFFFELL);
  type metadata accessor for ImageProviderBox<Image.NamedImageProvider>(0, &lazy cache variable for type metadata for ImageProviderBox<Image.NamedImageProvider>, lazy protocol witness table accessor for type Image.NamedImageProvider and conformance Image.NamedImageProvider);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = v8;
  *(v9 + 36) = v12;
  *(v9 + 40) = a5;
  *(v9 + 56) = a1;
  *(v9 + 64) = a2;
  result = -0.0;
  *(v9 + 72) = xmmword_18DD85510;
  *(v9 + 88) = 0;
  return result;
}

double Image.init(_:variableValue:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  type metadata accessor for LocalizedTextStorage();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = 0;
  v11 = MEMORY[0x1E69E7CC0];
  *(v10 + 40) = MEMORY[0x1E69E7CC0];
  *(v10 + 48) = 0;
  *(v10 + 56) = 0;
  *(v10 + 64) = a5;
  if (a5)
  {

    v12 = a5;
  }

  else
  {
    v13 = objc_opt_self();

    v12 = [v13 mainBundle];
  }

  v15 = a4 & 1;
  if (a4)
  {
    v16 = 0.0;
  }

  else
  {
    v14 = *&a3;
    v16 = v14;
  }

  v20 = v15;
  v17 = a5;
  outlined consume of Image.Location?(2);
  outlined consume of AccessibilityImageLabel?(0, 0, 0x1FFFFFFFELL);
  type metadata accessor for ImageProviderBox<Image.NamedImageProvider>(0, &lazy cache variable for type metadata for ImageProviderBox<Image.NamedImageProvider>, lazy protocol witness table accessor for type Image.NamedImageProvider and conformance Image.NamedImageProvider);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = v16;
  *(v18 + 36) = v20;
  *(v18 + 40) = v12;
  *(v18 + 48) = 2;
  *(v18 + 56) = v10;
  result = 0.0;
  *(v18 + 64) = xmmword_18DD85550;
  *(v18 + 80) = v11;
  *(v18 + 88) = 0;
  return result;
}

uint64_t Image.init(_:variableValue:bundle:label:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  v12 = a5;
  if (!a5)
  {
    v12 = [objc_opt_self() mainBundle];
  }

  v18 = a4 & 1;
  if (a4)
  {
    v19 = 0.0;
  }

  else
  {
    v17 = *&a3;
    v19 = v17;
  }

  v21 = v18;
  outlined consume of Image.Location?(2);
  outlined consume of AccessibilityImageLabel?(0, 0, 0x1FFFFFFFELL);
  type metadata accessor for ImageProviderBox<Image.NamedImageProvider>(0, &lazy cache variable for type metadata for ImageProviderBox<Image.NamedImageProvider>, lazy protocol witness table accessor for type Image.NamedImageProvider and conformance Image.NamedImageProvider);
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = v19;
  *(result + 36) = v21;
  *(result + 40) = v12;
  *(result + 48) = 2;
  *(result + 56) = a6;
  *(result + 64) = a7;
  *(result + 72) = a8 & 1;
  *(result + 80) = a9;
  *(result + 88) = 0;
  return result;
}

double Image.init(decorative:variableValue:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v5 = a5;
  if (!a5)
  {
    v5 = [objc_opt_self() mainBundle];
  }

  v11 = a4 & 1;
  if (a4)
  {
    v12 = 0.0;
  }

  else
  {
    v10 = *&a3;
    v12 = v10;
  }

  v15 = v11;
  outlined consume of Image.Location?(2);
  outlined consume of AccessibilityImageLabel?(0, 0, 0x1FFFFFFFELL);
  type metadata accessor for ImageProviderBox<Image.NamedImageProvider>(0, &lazy cache variable for type metadata for ImageProviderBox<Image.NamedImageProvider>, lazy protocol witness table accessor for type Image.NamedImageProvider and conformance Image.NamedImageProvider);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = v12;
  *(v13 + 36) = v15;
  *(v13 + 40) = v5;
  *(v13 + 48) = 2;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *&result = 0x1FFFFFFFELL;
  *(v13 + 72) = xmmword_18DD85530;
  *(v13 + 88) = 1;
  return result;
}

int64_t Image.Location.encode(to:)(uint64_t a1)
{
  v4 = v1;
  v6 = *v4;
  if (*v4)
  {
    if (v6 != 1)
    {
      v18 = [v6 bundlePath];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v19;

      ProtobufEncoder.encodeVarint(_:)(0xAuLL);
      v3 = *(a1 + 8);
      v12 = *(a1 + 24);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        goto LABEL_18;
      }

      goto LABEL_25;
    }

    ProtobufEncoder.encodeVarint(_:)(0x1AuLL);
    v7 = *(a1 + 8);
    v8 = *(a1 + 24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    if (v10 >= v9 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v8);
    }

    *(v8 + 2) = v10 + 1;
    *&v8[8 * v10 + 32] = v7;
    *(a1 + 24) = v8;
    v11 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  ProtobufEncoder.encodeVarint(_:)(0x12uLL);
  v12 = *(a1 + 8);
  v13 = *(a1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
  }

  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  v16 = v15 + 1;
  if (v15 >= v14 >> 1)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v13);
  }

  *(v13 + 2) = v16;
  *&v13[8 * v15 + 32] = v12;
  *(a1 + 24) = v13;
  v11 = v12 + 1;
  if (!__OFADD__(v12, 1))
  {
LABEL_15:
    *(a1 + 8) = v11;
    return ProtobufEncoder.endLengthDelimited()();
  }

  __break(1u);
LABEL_25:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 16) + 1, 1, v12);
  v12 = result;
LABEL_18:
  v21 = *(v12 + 16);
  v20 = *(v12 + 24);
  if (v21 >= v20 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v12);
    v12 = result;
  }

  *(v12 + 16) = v21 + 1;
  *(v12 + 8 * v21 + 32) = v3;
  *(a1 + 24) = v12;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + 8) = v3 + 1;

    specialized ProtobufEncoder.encodeAttachedValue<A>(key:data:)(v16, v13, a1, v16, v13);
    if (!v2)
    {
      swift_bridgeObjectRelease_n();
      return ProtobufEncoder.endLengthDelimited()();
    }

    return swift_bridgeObjectRelease_n();
  }

  return result;
}

void Image.Location.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[1];
  v6 = a1[2];
  if (v5 < v6)
  {
    v7 = 2;
    while (1)
    {
      v8 = a1[3];
      if (v8)
      {
        v9 = a1[4];
        if (v5 < v9)
        {
          goto LABEL_11;
        }

        if (v9 < v5)
        {
          goto LABEL_74;
        }

        a1[3] = 0;
      }

      v10 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        goto LABEL_76;
      }

      v8 = v10;
      if (v10 < 8)
      {
LABEL_74:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
LABEL_75:
        swift_willThrow();
        outlined consume of Image.Location?(v7);
        return;
      }

LABEL_11:
      v11 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        outlined consume of Image.Location?(v7);
        v29 = v8 & 7;
        if (v29 > 1)
        {
          if (v29 == 2)
          {
            v34 = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return;
            }

            if (v34 < 0)
            {
              goto LABEL_85;
            }

            v30 = a1[1] + v34;
          }

          else
          {
            if (v29 != 5)
            {
              goto LABEL_73;
            }

            v30 = a1[1] + 4;
          }

          goto LABEL_62;
        }

        if ((v8 & 7) != 0)
        {
          if (v29 != 1)
          {
            goto LABEL_73;
          }

          v30 = a1[1] + 8;
LABEL_62:
          if (v6 < v30)
          {
            goto LABEL_73;
          }

          a1[1] = v30;
          v7 = 1;
          goto LABEL_4;
        }

        ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return;
        }

        v7 = 1;
      }

      else if (v11 == 2)
      {
        outlined consume of Image.Location?(v7);
        v27 = v8 & 7;
        if (v27 > 1)
        {
          if (v27 == 2)
          {
            v33 = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return;
            }

            if (v33 < 0)
            {
              goto LABEL_84;
            }

            v28 = a1[1] + v33;
          }

          else
          {
            if (v27 != 5)
            {
              goto LABEL_73;
            }

            v28 = a1[1] + 4;
          }

          goto LABEL_55;
        }

        if ((v8 & 7) != 0)
        {
          if (v27 != 1)
          {
            goto LABEL_73;
          }

          v28 = a1[1] + 8;
LABEL_55:
          if (v6 < v28)
          {
            goto LABEL_73;
          }

          v7 = 0;
          a1[1] = v28;
          goto LABEL_4;
        }

        ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return;
        }

        v7 = 0;
      }

      else
      {
        if (v11 == 1)
        {
          if ((v8 & 7) != 2)
          {
            goto LABEL_74;
          }

          v12 = a1[5];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
          }

          v14 = *(v12 + 2);
          v13 = *(v12 + 3);
          if (v14 >= v13 >> 1)
          {
            v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v12);
          }

          *(v12 + 2) = v14 + 1;
          *&v12[8 * v14 + 32] = v6;
          a1[5] = v12;
          v15 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
LABEL_76:
            outlined consume of Image.Location?(v7);
            return;
          }

          if (v15 < 0)
          {
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
            __break(1u);
            v39 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
            v40 = *(v39 + 2);
            if (v40)
            {
              v36 = v40 - 1;
              v37 = *&v39[8 * v36 + 32];
              *(v39 + 2) = v36;
              outlined consume of Image.Location?(v7);
              a1[5] = v39;
              a1[2] = v37;
            }

            else
            {
              __break(1u);
            }

            return;
          }

          v16 = a1[1] + v15;
          if (v6 < v16)
          {
            goto LABEL_74;
          }

          a1[2] = v16;
          v17 = _s7SwiftUI15ProtobufDecoderV19decodeAttachedValue2as9generatorxxm_x10Foundation4DataVKXEtKlFAA5ImageV8LocationOAAE10BundlePath33_8E7DCD4CEB1ACDE07B249BFF4CBC75C0LLV_Tt0g503_s7a3UI5l2V8m6OAAE10n8Path33_8pqrstuvw13LLV4fromAhA15cd23Vz_tKcfcAH10Foundation4K7VKXEfU_Tf1cn_n(a1);
          v19 = a1[5];
          if (!*(v19 + 2))
          {
            goto LABEL_83;
          }

          v20 = v17;
          v21 = v18;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v22 = *(v19 + 2);
            if (!v22)
            {
              goto LABEL_71;
            }
          }

          else
          {
            v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
            v22 = *(v19 + 2);
            if (!v22)
            {
LABEL_71:
              __break(1u);
              break;
            }
          }

          v23 = v22 - 1;
          v6 = *&v19[8 * v23 + 32];
          *(v19 + 2) = v23;
          a1[5] = v19;
          a1[2] = v6;
          v24 = objc_allocWithZone(MEMORY[0x1E696AAE8]);

          v25 = MEMORY[0x193ABEC20](v20, v21);

          v26 = [v24 initWithPath_];

          if (!v26)
          {
            lazy protocol witness table accessor for type Image.Location.Error and conformance Image.Location.Error();
            swift_allocError();
            *v38 = v20;
            v38[1] = v21;
            goto LABEL_75;
          }

          outlined consume of Image.Location?(v7);

          v7 = v26;
          goto LABEL_4;
        }

        v31 = v8 & 7;
        if (v31 > 1)
        {
          if (v31 == 2)
          {
            v35 = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_76;
            }

            if (v35 < 0)
            {
              goto LABEL_86;
            }

            v32 = a1[1] + v35;
            if (v6 < v32)
            {
              goto LABEL_74;
            }
          }

          else
          {
            if (v31 != 5)
            {
              goto LABEL_74;
            }

            v32 = a1[1] + 4;
            if (v6 < v32)
            {
              goto LABEL_74;
            }
          }
        }

        else
        {
          if ((v8 & 7) == 0)
          {
            ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_76;
            }

            goto LABEL_4;
          }

          if (v31 != 1)
          {
            goto LABEL_74;
          }

          v32 = a1[1] + 8;
          if (v6 < v32)
          {
            goto LABEL_74;
          }
        }

        a1[1] = v32;
      }

LABEL_4:
      v5 = a1[1];
      if (v5 >= v6)
      {
        a1[3] = 0;
        if (v7 == 2)
        {
          goto LABEL_73;
        }

        *a2 = v7;
        return;
      }
    }
  }

  a1[3] = 0;
LABEL_73:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
}

uint64_t protocol witness for ProtobufEncodableMessage.encode(to:) in conformance Image.Location.BundlePath(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];

  specialized ProtobufEncoder.encodeAttachedValue<A>(key:data:)(v4, v3, a1, v4, v3);
}

uint64_t protocol witness for ProtobufDecodableMessage.init(from:) in conformance Image.Location.BundlePath@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI15ProtobufDecoderV19decodeAttachedValue2as9generatorxxm_x10Foundation4DataVKXEtKlFAA5ImageV8LocationOAAE10BundlePath33_8E7DCD4CEB1ACDE07B249BFF4CBC75C0LLV_Tt0g503_s7a3UI5l2V8m6OAAE10n8Path33_8pqrstuvw13LLV4fromAhA15cd23Vz_tKcfcAH10Foundation4K7VKXEfU_Tf1cn_n(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

double Font.Weight.glyphContinuousWeight.getter(double a1)
{
  v1 = Font.Weight.glyphWeight.getter(a1);
  if (v1 > 9)
  {
    v2 = MEMORY[0x1E6999448];
  }

  else
  {
    v2 = qword_1E7243F08[v1];
  }

  return *v2;
}

double Image.HashableScale.circleDotFillSize(pointSize:weight:)(double a1, double a2)
{
  v3 = 1 << *v2;
  if ((v3 & 0x52) != 0)
  {
    if (a2 == 0.0)
    {
      v4 = 99.61;
      return v4 * 0.01 * a1;
    }

    v5 = 99.61;
    if (a2 < 0.0)
    {
      v6 = 94.63;
LABEL_15:
      v4 = v6 + (a2 + 0.8) / 0.8 * (v5 - v6);
      return v4 * 0.01 * a1;
    }

    v7 = 106.64;
LABEL_19:
    v4 = v5 + a2 / 0.62 * (v7 - v5);
    return v4 * 0.01 * a1;
  }

  if ((v3 & 9) == 0)
  {
    if (a2 == 0.0)
    {
      v4 = 127.2;
      return v4 * 0.01 * a1;
    }

    v5 = 127.2;
    if (a2 < 0.0)
    {
      v6 = 121.66;
      goto LABEL_15;
    }

    v7 = 135.89;
    goto LABEL_19;
  }

  if (a2 != 0.0)
  {
    v5 = 78.86;
    if (a2 < 0.0)
    {
      v6 = 74.46;
      goto LABEL_15;
    }

    v7 = 83.98;
    goto LABEL_19;
  }

  v4 = 78.86;
  return v4 * 0.01 * a1;
}

double Image.HashableScale.maxRadius(diameter:)(double a1)
{
  v2 = *v1;
  v3 = a1 * 0.5;
  v4 = v2 >= 3;
  v5 = v2 - 3;
  if (v4)
  {
    if (v5 >= 3)
    {
      v9 = 1.1;
      return v3 * v9;
    }

    v6 = [objc_opt_self() standardUserDefaults];
    v7 = MEMORY[0x193ABEC20](0xD000000000000018, 0x800000018DD7CAC0);
    v8 = [v6 valueForKey_];

    if (v8)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
    }

    v14[0] = v12;
    v14[1] = v13;
    if (*(&v13 + 1))
    {
      if (swift_dynamicCast())
      {
        v9 = v11;
        return v3 * v9;
      }
    }

    else
    {
      _sypSgWOhTm_9(v14, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    }

    v9 = 1.2;
    return v3 * v9;
  }

  return v3;
}

Swift::Int Image.HashableScale.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t closure #1 in closure #1 in RadiusAccumulator.addPath(_:)(float32x2_t *a1, unsigned __int8 a2, float64x2_t *a3)
{
  if (a2 <= 1u)
  {
    v3 = vsub_f32(vmul_n_f32(vcvt_f32_f64(*a3), a1[1].f32[0]), *a1);
    v4 = vaddv_f32(vmul_f32(v3, v3));
    if (a1[1].f32[1] < v4)
    {
      a1[1].f32[1] = v4;
    }
  }

  return 1;
}

uint64_t Image.NamedImageProvider.placeholderVectorInfo(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s7SwiftUI4TextV5StyleVSgMaTm_0(0, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21[-v5];
  v7 = type metadata accessor for NamedImage.VectorKey(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (one-time initialization token for systemAssetManager != -1)
  {
    swift_once();
  }

  v10 = static Image.Location.systemAssetManager;
  v11 = *a1;
  v12 = *(a1 + 8);
  v23[0] = *a1;
  v23[1] = v12;
  v24 = 0;
  v13 = type metadata accessor for ImageResolutionContext();
  outlined init with copy of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(a1 + *(v13 + 24), v6, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style, MEMORY[0x1E69E6720], _s7SwiftUI4TextV5StyleVSgMaTm_0);
  if (v12)
  {

    swift_retain_n();
    v14 = v10;
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt1g5(v11, &v22);

    v15 = v22;
  }

  else
  {
    v16 = v10;

    v18 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0g5(v17);
    if (v18)
    {
      v15 = *(v18 + 72);
    }

    else
    {
      v15 = 6;
    }
  }

  v22 = v15;
  v19 = ViewGraphHost.Idiom.cuiDeviceClass.getter();
  NamedImage.VectorKey.init(name:location:in:textStyle:idiom:)(0x662E656C63726963, 0xEB000000006C6C69, &v24, v23, v6, v19, v9);
  if (one-time initialization token for sharedCache != -1)
  {
    swift_once();
  }

  NamedImage.Cache.subscript.getter(v9, v10, a2);

  return outlined destroy of NamedImage.BitmapKey(v9, type metadata accessor for NamedImage.VectorKey);
}

uint64_t Image.init(uuid:size:label:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v14 = type metadata accessor for UUIDImageProvider(0);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UUID();
  (*(*(v18 - 8) + 32))(v17, a1, v18);
  v19 = &v17[*(v15 + 28)];
  *v19 = a6;
  v19[1] = a7;
  v20 = &v17[*(v15 + 32)];
  *v20 = a2;
  *(v20 + 1) = a3;
  *(v20 + 2) = a4;
  *(v20 + 3) = a5;
  type metadata accessor for ImageProviderBox<UUIDImageProvider>();
  v21 = swift_allocObject();
  outlined init with take of NamedImage.BitmapKey(v17, v21 + *(*v21 + 128), type metadata accessor for UUIDImageProvider);
  return v21;
}

uint64_t Image.ResolvedUUID.init(cgImage:scale:orientation:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a2;
  return result;
}

uint64_t UUIDImageProvider.resolve(in:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *a1;
  v7 = a1[1];
  *&v84 = *a1;
  *(&v84 + 1) = v7;
  LOBYTE(v60) = 2;

  v8 = EnvironmentValues.imageIsTemplate(renderingMode:)(&v60);

  if ((*(a1 + *(type metadata accessor for ImageResolutionContext() + 40)) & 2) != 0)
  {
    type metadata accessor for NamedImage.Key(0);
    v9 = swift_allocBox();
    v12 = v11;
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 16))(v12, v3, v13);
    swift_storeEnumTagMultiPayload();
    v10 = 5;
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_18DDE3FC0;
    *(v9 + 32) = 2143289344;
    v10 = 4;
  }

  v14 = type metadata accessor for UUIDImageProvider(0);
  v52 = v3;
  v15 = (v3 + *(v14 + 20));
  v16 = *v15;
  v17 = v15[1];
  v55 = v10;
  outlined copy of GraphicsImage.Contents?(v9, v10);
  outlined consume of GraphicsImage.Contents?(0, 0xFFu);
  if (v8)
  {
    v18 = 0x3F8000003F800000;
  }

  else
  {
    v18 = 0;
  }

  if (v8)
  {
    v19 = 2143289344;
  }

  else
  {
    v19 = 0;
  }

  v56 = (v8 & 1) == 0;
  v88 = v56;
  if (!v7)
  {
    v84 = v6;

    v28 = specialized static ShouldRedactContentKey.value(in:)(&v84);

    if (v28)
    {
      goto LABEL_12;
    }

LABEL_16:
    v23 = v9;
    v27 = v55;
    goto LABEL_17;
  }

  ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA019ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5(v6);

  if ((ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  v21 = *a1;
  v22 = a1[1];
  v23 = swift_allocObject();
  if (one-time initialization token for foreground != -1)
  {
    swift_once();
  }

  *&v84 = v21;
  *(&v84 + 1) = v22;
  (*(*static Color.foreground + 120))(&v93, &v84);
  v24 = v96;
  v25 = v94;
  v26 = v95 * 0.16;
  *(v23 + 16) = v93;
  *(v23 + 24) = v25;
  *(v23 + 28) = v26;
  *(v23 + 32) = v24;
  outlined consume of GraphicsImage.Contents?(v9, v55);
  v27 = 4;
LABEL_17:
  *&v84 = v23;
  BYTE8(v84) = v27;
  *&v85 = 0x3FF0000000000000;
  *(&v85 + 1) = v16;
  *v86 = v17;
  v86[8] = 0;
  *&v86[12] = v18;
  *&v86[20] = v18;
  *&v86[28] = v19;
  v87[0] = v56;
  memset(&v87[8], 0, 32);
  *&v87[40] = 65794;
  v29 = (v52 + *(v14 + 24));
  v30 = v29[3];
  v54 = v19;
  v51 = v27;
  v50 = v18;
  if (v30)
  {
    v31 = v29[1];
    v32 = *v29;
    v33 = v29[2] & 1;
    outlined copy of Text.Storage(*v29, v31, v29[2] & 1);
  }

  else
  {
    v32 = 0;
    v31 = 0;
    v33 = 0x1FFFFFFFELL;
  }

  v82 = *v87;
  v83[0] = *&v87[16];
  *(v83 + 12) = *&v87[28];
  v78 = v84;
  v79 = v85;
  v80 = *v86;
  v81 = *&v86[16];
  outlined init with copy of GraphicsImage(&v84, &v60);
  outlined consume of AccessibilityImageLabel?(0, 0, 0x1FFFFFFFELL);
  if (BYTE8(v84) == 2)
  {
    v37 = *(v84 + 32);
    v53 = v9;
    v38 = v33;
    v39 = v32;
    v40 = v31;
    v41 = *(v84 + 48);
    v42 = *(v84 + 16);
    outlined copy of Image.Location(v37);
    v43 = v41;
    v31 = v40;
    v32 = v39;
    v33 = v38;
    v44 = v43;
    outlined copy of Image.Location(v37);
    v45 = [v42 styleMask];
    v60 = v37;
    _ShapeStyle_ResolverMode.init(rbSymbolStyleMask:location:)(v45, &v60, &v57);
    outlined consume of GraphicsImage.Contents?(v53, v55);

    outlined consume of Image.Location(v37);
    v36 = v57;
    v35 = v58;
    v34 = v59 & 0xFD;
  }

  else if (BYTE8(v84) == 255)
  {
    outlined consume of GraphicsImage.Contents?(v9, v55);
    v34 = 0;
    v35 = 0;
    v36 = 0;
  }

  else
  {
    outlined consume of GraphicsImage.Contents?(v9, v55);
    v34 = 0;
    v36 = 0;
    v35 = (v87[0] & 1) == 0;
  }

  v77 = 1;
  v46 = v83[0];
  *(a2 + 64) = v82;
  *(a2 + 80) = v46;
  *(a2 + 96) = v83[1];
  v47 = v79;
  *a2 = v78;
  *(a2 + 16) = v47;
  v48 = v81;
  *(a2 + 32) = v80;
  *(a2 + 48) = v48;
  *(a2 + 112) = v32;
  *(a2 + 120) = v31;
  *(a2 + 128) = v33;
  *(a2 + 136) = v30;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = v30 == 0;
  *(a2 + 161) = 3;
  *(a2 + 164) = 0;
  *(a2 + 168) = 1;
  *(a2 + 176) = v36;
  *(a2 + 184) = v35;
  *(a2 + 186) = v34;
  v60 = v23;
  v61 = v51;
  *v62 = *v92;
  *&v62[3] = *&v92[3];
  v63 = 0x3FF0000000000000;
  v64 = v16;
  v65 = v17;
  v66 = 0;
  v68 = v91;
  v67 = v90;
  v69 = v50;
  v70 = v50;
  v71 = v54;
  v72 = v56;
  *&v73[3] = *&v89[3];
  *v73 = *v89;
  v74 = 0u;
  v75 = 0u;
  v76 = 65794;
  return outlined destroy of GraphicsImage(&v60);
}

uint64_t Image.init(_systemName:colorPalette:)(uint64_t a1, uint64_t a2, __n128 a3)
{

  specialized Image.init(systemName:)(a1, a2, a3);
  v6 = v5;
  type metadata accessor for ImageProviderBox<Image.NamedImageProvider>(0, &lazy cache variable for type metadata for ImageProviderBox<Image.RenderingModeProvider>, lazy protocol witness table accessor for type Image.RenderingModeProvider and conformance Image.RenderingModeProvider);
  result = swift_allocObject();
  *(result + 16) = v6;
  *(result + 24) = 1;
  return result;
}

uint64_t NamedImage.Key.encode(to:)(void *a1)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NamedImage.BitmapKey(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NamedImage.Key(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NamedImage.Key(v1, v13, type metadata accessor for NamedImage.Key);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v7, v13, v4);
    ProtobufEncoder.encodeVarint(_:)(0x12uLL);
    v14 = a1[1];
    v15 = a1[3];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
    }

    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    v10 = (v17 + 1);
    if (v17 >= v16 >> 1)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v15);
    }

    *(v15 + 2) = v10;
    *&v15[8 * v17 + 32] = v14;
    a1[3] = v15;
    if (!__OFADD__(v14, 1))
    {
      a1[1] = v14 + 1;
      UUID.encode(to:)();
      v18 = (v5 + 8);
      if (!v2)
      {
        ProtobufEncoder.endLengthDelimited()();
      }

      return (*v18)(v7, v4);
    }

    __break(1u);
    goto LABEL_18;
  }

  outlined init with take of NamedImage.BitmapKey(v13, v10, type metadata accessor for NamedImage.BitmapKey);
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  v7 = a1[1];
  v15 = a1[3];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_18:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
    v15 = result;
  }

  v21 = *(v15 + 2);
  v20 = *(v15 + 3);
  if (v21 >= v20 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v15);
    v15 = result;
  }

  *(v15 + 2) = v21 + 1;
  *&v15[8 * v21 + 32] = v7;
  a1[3] = v15;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    a1[1] = v7 + 1;
    NamedImage.BitmapKey.encode(to:)(a1);
    if (!v2)
    {
      ProtobufEncoder.endLengthDelimited()();
    }

    return outlined destroy of NamedImage.BitmapKey(v10, type metadata accessor for NamedImage.BitmapKey);
  }

  return result;
}

uint64_t NamedImage.Key.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  _s7SwiftUI4TextV5StyleVSgMaTm_0(0, &lazy cache variable for type metadata for NamedImage.Key?, type metadata accessor for NamedImage.Key, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v52 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v46 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v46 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  v15 = type metadata accessor for NamedImage.Key(0);
  v47 = *(v15 - 8);
  v16 = *(v47 + 56);
  v50 = v47 + 56;
  v51 = v16;
  v16(v14, 1, 1, v15);
  v17 = a1[1];
  v18 = a1[2];
  if (v17 >= v18)
  {
LABEL_49:
    a1[3] = 0;
    v39 = v48;
    outlined init with copy of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(v14, v48, &lazy cache variable for type metadata for NamedImage.Key?, type metadata accessor for NamedImage.Key, MEMORY[0x1E69E6720], _s7SwiftUI4TextV5StyleVSgMaTm_0);
    if ((*(v47 + 48))(v39, 1, v15) == 1)
    {
      outlined destroy of Text.Style?(v39, &lazy cache variable for type metadata for NamedImage.Key?, type metadata accessor for NamedImage.Key);
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
      v40 = v14;
      return outlined destroy of Text.Style?(v40, &lazy cache variable for type metadata for NamedImage.Key?, type metadata accessor for NamedImage.Key);
    }

    else
    {
      outlined destroy of Text.Style?(v14, &lazy cache variable for type metadata for NamedImage.Key?, type metadata accessor for NamedImage.Key);
      return outlined init with take of NamedImage.BitmapKey(v39, v46, type metadata accessor for NamedImage.Key);
    }
  }

  v49 = v14;
  while (1)
  {
    v25 = a1[3];
    if (v25)
    {
      v26 = a1[4];
      if (v17 < v26)
      {
        goto LABEL_13;
      }

      if (v26 < v17)
      {
        goto LABEL_52;
      }

      a1[3] = 0;
    }

    v25 = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      goto LABEL_53;
    }

    if (v25 < 8)
    {
LABEL_52:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
LABEL_53:
      v40 = v49;
      return outlined destroy of Text.Style?(v40, &lazy cache variable for type metadata for NamedImage.Key?, type metadata accessor for NamedImage.Key);
    }

LABEL_13:
    v27 = v25 & 7;
    if (v25 >> 3 == 2)
    {
      break;
    }

    if (v25 >> 3 == 1)
    {
      if (v27 != 2)
      {
        goto LABEL_55;
      }

      ProtobufDecoder.beginMessage()();
      if (v2)
      {
        v40 = v14;
        return outlined destroy of Text.Style?(v40, &lazy cache variable for type metadata for NamedImage.Key?, type metadata accessor for NamedImage.Key);
      }

      NamedImage.BitmapKey.init(from:)(a1, v9);
      v19 = a1[5];
      if (!*(v19 + 2))
      {
        goto LABEL_62;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v20 = *(v19 + 2);
        if (!v20)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
        v20 = *(v19 + 2);
        if (!v20)
        {
          goto LABEL_63;
        }
      }

      v21 = v20 - 1;
      v18 = *&v19[8 * v21 + 32];
      *(v19 + 2) = v21;
      a1[5] = v19;
      v3 = type metadata accessor for NamedImage.Key;
      outlined destroy of Text.Style?(v14, &lazy cache variable for type metadata for NamedImage.Key?, type metadata accessor for NamedImage.Key);
      a1[2] = v18;
      swift_storeEnumTagMultiPayload();
      v51(v9, 0, 1, v15);
      v22 = MEMORY[0x1E69E6720];
      v23 = v9;
      v24 = v14;
LABEL_5:
      outlined init with take of NamedImage.VectorInfo?(v23, v24, &lazy cache variable for type metadata for NamedImage.Key?, type metadata accessor for NamedImage.Key, v22, _s7SwiftUI4TextV5StyleVSgMaTm_0);
      v2 = 0;
      goto LABEL_6;
    }

    if ((v25 & 7) > 1)
    {
      if (v27 == 2)
      {
        v38 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_53;
        }

        if (v38 < 0)
        {
          goto LABEL_66;
        }

        v37 = a1[1] + v38;
        if (v18 < v37)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v27 != 5)
        {
          goto LABEL_52;
        }

        v37 = a1[1] + 4;
        if (v18 < v37)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_48;
    }

    if ((v25 & 7) != 0)
    {
      if (v27 != 1)
      {
        goto LABEL_52;
      }

      v37 = a1[1] + 8;
      if (v18 < v37)
      {
        goto LABEL_52;
      }

LABEL_48:
      a1[1] = v37;
      goto LABEL_6;
    }

    ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      goto LABEL_53;
    }

LABEL_6:
    v17 = a1[1];
    if (v17 >= v18)
    {
      goto LABEL_49;
    }
  }

  if (v27 != 2)
  {
LABEL_55:
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    swift_willThrow();
    v40 = v14;
    return outlined destroy of Text.Style?(v40, &lazy cache variable for type metadata for NamedImage.Key?, type metadata accessor for NamedImage.Key);
  }

  v28 = a1[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
  }

  v30 = *(v28 + 2);
  v29 = *(v28 + 3);
  v3 = (v30 + 1);
  if (v30 >= v29 >> 1)
  {
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v28);
  }

  *(v28 + 2) = v3;
  *&v28[8 * v30 + 32] = v18;
  a1[5] = v28;
  v31 = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    goto LABEL_53;
  }

  if ((v31 & 0x8000000000000000) == 0)
  {
    v32 = a1[1] + v31;
    if (v18 < v32)
    {
      goto LABEL_52;
    }

    a1[2] = v32;
    UUID.init(from:)(a1);
    v33 = a1[5];
    if (!*(v33 + 2))
    {
      goto LABEL_64;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = specialized _ArrayBuffer._consumeAndCreateNew()(v33);
    }

    v14 = v49;
    v34 = *(v33 + 2);
    if (!v34)
    {
      goto LABEL_65;
    }

    v35 = v34 - 1;
    v18 = *&v33[8 * v35 + 32];
    *(v33 + 2) = v35;
    a1[5] = v33;
    v3 = type metadata accessor for NamedImage.Key;
    outlined destroy of Text.Style?(v14, &lazy cache variable for type metadata for NamedImage.Key?, type metadata accessor for NamedImage.Key);
    a1[2] = v18;
    v36 = v52;
    swift_storeEnumTagMultiPayload();
    v51(v36, 0, 1, v15);
    v22 = MEMORY[0x1E69E6720];
    v23 = v36;
    v24 = v14;
    goto LABEL_5;
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
  __break(1u);
  v42 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
  v43 = *(v42 + 2);
  if (v43)
  {
LABEL_60:
    v44 = v43 - 1;
    v45 = *&v42[8 * v44 + 32];
    *(v42 + 2) = v44;
    a1[5] = v42;
    result = outlined destroy of Text.Style?(v49, &lazy cache variable for type metadata for NamedImage.Key?, type metadata accessor for NamedImage.Key);
    a1[2] = v45;
    return result;
  }

  __break(1u);
  v42 = a1[5];
  if (!*(v42 + 2))
  {
    __break(1u);
LABEL_69:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v42);
    v42 = result;
    v43 = *(result + 16);
    if (!v43)
    {
      goto LABEL_70;
    }

    goto LABEL_60;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_69;
  }

  v43 = *(v42 + 2);
  if (v43)
  {
    goto LABEL_60;
  }

LABEL_70:
  __break(1u);
  return result;
}

uint64_t NamedImage.BitmapKey.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for String.Encoding();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = v1[1];
  v11 = a1;
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  if (v10)
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  result = specialized ProtobufEncoder.encodeMessage<A>(_:)(v12 | v9);
  if (!v2)
  {
    v14 = *(v3 + 1);
    if ((v14 || *(v3 + 2) != 0xE000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      ProtobufEncoder.encodeVarint(_:)(0x12uLL);
      static String.Encoding.utf8.getter();
      v11 = String.data(using:allowLossyConversion:)();
      v14 = v15;
      (*(v6 + 8))(v8, v5);
      if (v14 >> 60 == 15)
      {
        lazy protocol witness table accessor for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError();
        swift_allocError();
        return swift_willThrow();
      }

      specialized Data._Representation.withUnsafeBytes<A>(_:)(v11, v14);
      outlined consume of Data?(v11, v14);
    }

    v16 = *(v3 + 3);
    if (v16 != 1.0)
    {
      v17 = 0;
      v18 = fabs(v16);
      if (v18 >= 65536.0)
      {
        v19 = 25;
      }

      else
      {
        v19 = 29;
      }

      v11 = a1;
      ProtobufEncoder.encodeVarint(_:)(v19);
      if (v18 >= 65536.0)
      {
        v22 = a1[1];
        isUniquelyReferenced_nonNull_native = v22 + 8;
        if (__OFADD__(v22, 8))
        {
          goto LABEL_50;
        }

        if (a1[2] < isUniquelyReferenced_nonNull_native)
        {
          v11 = a1;
          *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v16;
        }

        else
        {
          a1[1] = isUniquelyReferenced_nonNull_native;
          *(*a1 + v22) = v16;
        }
      }

      else
      {
        v20 = a1[1];
        isUniquelyReferenced_nonNull_native = v20 + 4;
        if (__OFADD__(v20, 4))
        {
          goto LABEL_49;
        }

        *&v16 = v16;
        if (a1[2] < isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_51;
        }

        a1[1] = isUniquelyReferenced_nonNull_native;
        *(*a1 + v20) = LODWORD(v16);
      }
    }

    while (1)
    {
      v23 = *(v3 + 4);
      if (v23)
      {
        v11 = a1;
        result = specialized ProtobufEncoder.messageField<A>(_:_:)(4, v23);
        if (v2)
        {
          return result;
        }
      }

      if (v3[40])
      {
        v11 = a1;
        ProtobufEncoder.encodeVarint(_:)(0x28uLL);
        ProtobufEncoder.encodeVarint(_:)(1uLL);
      }

      v24 = type metadata accessor for NamedImage.BitmapKey(0);
      if (v3[v24[10]])
      {
        v11 = a1;
        ProtobufEncoder.encodeVarint(_:)(0x30uLL);
        ProtobufEncoder.encodeVarint(_:)(1uLL);
      }

      v25 = *&v3[v24[11]];
      if (v25)
      {
        v11 = a1;
        ProtobufEncoder.encodeVarint(_:)(0x38uLL);
        ProtobufEncoder.encodeVarint(_:)((2 * v25) ^ (v25 >> 63));
      }

      v26 = *&v3[v24[12]];
      if (v26)
      {
        v11 = a1;
        ProtobufEncoder.encodeVarint(_:)(0x40uLL);
        ProtobufEncoder.encodeVarint(_:)((2 * v26) ^ (v26 >> 63));
      }

      v27 = v3[v24[13]];
      if ((v27 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v3[v24[13]])
      {
        v11 = a1;
        ProtobufEncoder.encodeVarint(_:)(0x48uLL);
        ProtobufEncoder.encodeVarint(_:)(v27);
      }

      v28 = v3[v24[14]];
      if ((v28 & 0x8000000000000000) != 0)
      {
        goto LABEL_46;
      }

      if (v3[v24[14]])
      {
        ProtobufEncoder.encodeVarint(_:)(0x50uLL);
        ProtobufEncoder.encodeVarint(_:)(v28);
      }

      ProtobufEncoder.encodeVarint(_:)(0x5AuLL);
      v14 = a1[1];
      v11 = a1[3];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_47;
      }

LABEL_40:
      v30 = *(v11 + 16);
      v29 = *(v11 + 24);
      v17 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v11);
        v11 = isUniquelyReferenced_nonNull_native;
      }

      *(v11 + 16) = v17;
      *(v11 + 8 * v30 + 32) = v14;
      a1[3] = v11;
      if (!__OFADD__(v14, 1))
      {
        a1[1] = v14 + 1;
        result = Locale.encode(to:)();
        if (!v2)
        {
          return ProtobufEncoder.endLengthDelimited()();
        }

        return result;
      }

      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      v11 = a1;
      v2 = v17;
      *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = LODWORD(v16);
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1, v11);
    v11 = isUniquelyReferenced_nonNull_native;
    goto LABEL_40;
  }

  return result;
}

void NamedImage.BitmapKey.init(from:)(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v112 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI4TextV5StyleVSgMaTm_0(0, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v109 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v113 = &v98 - v14;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v98 - v17;
  v110 = *(v6 + 7);
  v111 = v6 + 56;
  v110(&v98 - v17, 1, 1, v5, v16);
  v19 = *(a1 + 8);
  v20 = *(a1 + 16);
  if (v19 >= v20)
  {
    v21 = 0;
    *(a1 + 24) = 0;
    goto LABEL_162;
  }

  v100 = v8;
  v101 = v6;
  v102 = v5;
  v103 = 0;
  v99 = a2;
  v104 = 0;
  v105 = 0;
  v106 = 0;
  v107 = 0;
  v21 = 0;
  v108 = 2;
  v22 = 0xE000000000000000;
  v23 = 1.0;
  while (1)
  {
    v24 = *(a1 + 24);
    if (v24)
    {
      v25 = *(a1 + 32);
      if (v19 < v25)
      {
        goto LABEL_12;
      }

      if (v25 < v19)
      {
        goto LABEL_161;
      }

      *(a1 + 24) = 0;
    }

    v24 = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      goto LABEL_159;
    }

    if (v24 < 8)
    {
      goto LABEL_161;
    }

LABEL_12:
    v26 = v24 >> 3;
    if (v24 >> 3 <= 5)
    {
      break;
    }

    if (v24 >> 3 > 8)
    {
      switch(v26)
      {
        case 9uLL:
          if ((v24 & 7) != 0)
          {
            if ((v24 & 7) != 2)
            {
              goto LABEL_161;
            }

            v74 = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_159;
            }

            if (v74 < 0)
            {
              goto LABEL_196;
            }

            v75 = *(a1 + 8) + v74;
            if (v20 < v75)
            {
              goto LABEL_161;
            }

            *(a1 + 24) = 72;
            *(a1 + 32) = v75;
          }

          v76 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_159;
          }

          if (v76 < 0)
          {
            goto LABEL_183;
          }

          LODWORD(v104) = v76;
          goto LABEL_5;
        case 0xAuLL:
          if ((v24 & 7) != 0)
          {
            if ((v24 & 7) != 2)
            {
              goto LABEL_161;
            }

            v66 = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_159;
            }

            if (v66 < 0)
            {
              goto LABEL_192;
            }

            v67 = *(a1 + 8) + v66;
            if (v20 < v67)
            {
              goto LABEL_161;
            }

            *(a1 + 24) = 80;
            *(a1 + 32) = v67;
          }

          v68 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_159;
          }

          if (v68 < 0)
          {
            goto LABEL_184;
          }

          HIDWORD(v104) = v68;
          goto LABEL_5;
        case 0xBuLL:
          if ((v24 & 7) != 2)
          {
            goto LABEL_161;
          }

          v6 = *(a1 + 40);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
          }

          v34 = *(v6 + 2);
          v33 = *(v6 + 3);
          if (v34 >= v33 >> 1)
          {
            v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v6);
          }

          *(v6 + 2) = v34 + 1;
          *&v6[8 * v34 + 32] = v20;
          *(a1 + 40) = v6;
          v35 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_167;
          }

          if (v35 < 0)
          {
            goto LABEL_182;
          }

          v36 = *(a1 + 8) + v35;
          if (v20 < v36)
          {
            goto LABEL_161;
          }

          *(a1 + 16) = v36;
          Locale.init(from:)(a1);
          v6 = *(a1 + 40);
          if (!*(v6 + 2))
          {
            goto LABEL_186;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v37 = *(v6 + 2);
            if (!v37)
            {
              goto LABEL_158;
            }
          }

          else
          {
            v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
            v37 = *(v6 + 2);
            if (!v37)
            {
LABEL_158:
              __break(1u);
LABEL_159:
              outlined destroy of Text.Style?(v18, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770]);

              outlined consume of Image.Location(v21);
              return;
            }
          }

          v38 = v37 - 1;
          v20 = *&v6[8 * v38 + 32];
          *(v6 + 2) = v38;
          *(a1 + 40) = v6;
          v6 = MEMORY[0x1E6969770];
          outlined destroy of Text.Style?(v18, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770]);
          *(a1 + 16) = v20;
          v39 = v113;
          (v110)(v113, 0, 1, v102);
          outlined init with take of NamedImage.VectorInfo?(v39, v18, &lazy cache variable for type metadata for Locale?, v6, MEMORY[0x1E69E6720], _s7SwiftUI4TextV5StyleVSgMaTm_0);
          goto LABEL_5;
      }
    }

    else
    {
      switch(v26)
      {
        case 6uLL:
          if ((v24 & 7) != 0)
          {
            if ((v24 & 7) != 2)
            {
              goto LABEL_161;
            }

            v71 = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_159;
            }

            if (v71 < 0)
            {
              goto LABEL_195;
            }

            v72 = *(a1 + 8) + v71;
            if (v20 < v72)
            {
              goto LABEL_161;
            }

            *(a1 + 24) = 48;
            *(a1 + 32) = v72;
          }

          v73 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_159;
          }

          HIDWORD(v105) = v73 == 1;
          goto LABEL_5;
        case 7uLL:
          if ((v24 & 7) != 0)
          {
            if ((v24 & 7) != 2)
            {
              goto LABEL_161;
            }

            v63 = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_159;
            }

            if (v63 < 0)
            {
              goto LABEL_194;
            }

            v64 = *(a1 + 8) + v63;
            if (v20 < v64)
            {
              goto LABEL_161;
            }

            *(a1 + 24) = 56;
            *(a1 + 32) = v64;
          }

          v65 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_159;
          }

          v106 = -(v65 & 1) ^ (v65 >> 1);
          goto LABEL_5;
        case 8uLL:
          if ((v24 & 7) != 0)
          {
            if ((v24 & 7) != 2)
            {
              goto LABEL_161;
            }

            v27 = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_159;
            }

            if (v27 < 0)
            {
              goto LABEL_193;
            }

            v28 = *(a1 + 8) + v27;
            if (v20 < v28)
            {
              goto LABEL_161;
            }

            *(a1 + 24) = 64;
            *(a1 + 32) = v28;
          }

          v29 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_159;
          }

          v107 = -(v29 & 1) ^ (v29 >> 1);
          goto LABEL_5;
      }
    }

LABEL_127:
    v77 = v24 & 7;
    if (v77 > 1)
    {
      if (v77 == 2)
      {
        v84 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_159;
        }

        if (v84 < 0)
        {
          goto LABEL_199;
        }

        v78 = *(a1 + 8) + v84;
        if (v20 < v78)
        {
          goto LABEL_161;
        }
      }

      else
      {
        if (v77 != 5)
        {
          goto LABEL_161;
        }

        v78 = *(a1 + 8) + 4;
        if (v20 < v78)
        {
          goto LABEL_161;
        }
      }
    }

    else
    {
      if ((v24 & 7) == 0)
      {
        ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_159;
        }

        goto LABEL_5;
      }

      if (v77 != 1)
      {
        goto LABEL_161;
      }

      v78 = *(a1 + 8) + 8;
      if (v20 < v78)
      {
        goto LABEL_161;
      }
    }

    *(a1 + 8) = v78;
LABEL_5:
    v19 = *(a1 + 8);
    if (v19 >= v20)
    {
      *(a1 + 24) = 0;
      if (v108 != 2)
      {
        v85 = v109;
        outlined init with copy of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(v18, v109, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770], MEMORY[0x1E69E6720], _s7SwiftUI4TextV5StyleVSgMaTm_0);
        v87 = v101;
        v86 = v102;
        v88 = *(v101 + 6);
        if (v88(v85, 1, v102) == 1)
        {
          v89 = v100;
          static Locale.current.getter();
          outlined destroy of Text.Style?(v18, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770]);
          if (v88(v85, 1, v86) != 1)
          {
            outlined destroy of Text.Style?(v85, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770]);
          }
        }

        else
        {
          outlined destroy of Text.Style?(v18, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770]);
          v90 = *(v87 + 4);
          v89 = v100;
          v90(v100, v85, v86);
        }

        v91 = BYTE1(v108);
        v92 = v99;
        *v99 = v108 & 1;
        v92[1] = v91 & 1;
        *(v92 + 1) = v103;
        *(v92 + 2) = v22;
        *(v92 + 3) = v23;
        *(v92 + 4) = v21;
        v92[40] = v105 & 1;
        v93 = type metadata accessor for NamedImage.BitmapKey(0);
        (*(v101 + 4))(&v92[v93[9]], v89, v86);
        v92[v93[10]] = BYTE4(v105) & 1;
        v94 = v107;
        *&v92[v93[11]] = v106;
        *&v92[v93[12]] = v94;
        LOBYTE(v94) = BYTE4(v104);
        v92[v93[13]] = v104;
        v92[v93[14]] = v94;
        return;
      }

LABEL_161:

LABEL_162:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
      goto LABEL_163;
    }
  }

  if (v24 >> 3 <= 2)
  {
    if (v26 == 1)
    {
      if ((v24 & 7) != 2)
      {
        goto LABEL_161;
      }

      v6 = *(a1 + 40);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      }

      v51 = *(v6 + 2);
      v50 = *(v6 + 3);
      if (v51 >= v50 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v6);
      }

      *(v6 + 2) = v51 + 1;
      *&v6[8 * v51 + 32] = v20;
      *(a1 + 40) = v6;
      v52 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        goto LABEL_167;
      }

      if (v52 < 0)
      {
        goto LABEL_180;
      }

      v53 = *(a1 + 8) + v52;
      if (v20 < v53)
      {
        goto LABEL_161;
      }

      *(a1 + 16) = v53;
      CatalogKey.init(from:)(a1, v114);
      v6 = *(a1 + 40);
      if (!*(v6 + 2))
      {
        goto LABEL_185;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v54 = *(v6 + 2);
        if (!v54)
        {
          goto LABEL_188;
        }
      }

      else
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
        v54 = *(v6 + 2);
        if (!v54)
        {
          goto LABEL_188;
        }
      }

      v55 = v54 - 1;
      v20 = *&v6[8 * v55 + 32];
      *(v6 + 2) = v55;
      *(a1 + 40) = v6;
      *(a1 + 16) = v20;
      if (v114[1])
      {
        v56 = 256;
      }

      else
      {
        v56 = 0;
      }

      v108 = v56 | v114[0];
      goto LABEL_5;
    }

    if (v26 == 2)
    {
      v40 = v24;

      if ((v40 & 7) != 2)
      {
        goto LABEL_162;
      }

      v41 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        goto LABEL_163;
      }

      v6 = v41;
      if (v41 < 0)
      {
        goto LABEL_181;
      }

      v42 = *(a1 + 8);
      if (v20 < v42 + v41)
      {
        goto LABEL_162;
      }

      *(a1 + 8) = v42 + v41;
      if (v41)
      {
        v43 = v21;
        v21 = v18;
        v44 = v42 - [*a1 bytes];
        v45 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v46;
        if (__OFADD__(v44, v6))
        {
          goto LABEL_190;
        }

        if (&v6[v44] < v44)
        {
          goto LABEL_191;
        }

        v47 = v45;
        v48 = Data._Representation.subscript.getter();
        v6 = v49;
        outlined consume of Data._Representation(v47, v18);
        v18 = v21;
        v21 = v43;
      }

      else
      {
        v48 = 0;
        v6 = 0xC000000000000000;
      }

      static String.Encoding.utf8.getter();
      v79 = String.init(data:encoding:)();
      if (!v80)
      {
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
        outlined consume of Data._Representation(v48, v6);
LABEL_163:
        outlined consume of Image.Location(v21);
        outlined destroy of Text.Style?(v18, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770]);
        return;
      }

      v22 = v80;
      v103 = v79;
      outlined consume of Data._Representation(v48, v6);
      goto LABEL_5;
    }

    goto LABEL_127;
  }

  if (v26 == 3)
  {
    v69 = v24 & 7;
    if (v69 == 5)
    {
      v82 = *(a1 + 8);
      if (v20 < (v82 + 1))
      {
        goto LABEL_161;
      }

      v83 = *v82;
      *(a1 + 8) = v82 + 1;
      v23 = v83;
    }

    else
    {
      if (v69 == 2)
      {
        v81 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_159;
        }

        if (v81 < 0)
        {
          goto LABEL_198;
        }

        v70 = *(a1 + 8);
        if (v20 < v70 + v81)
        {
          goto LABEL_161;
        }

        *(a1 + 24) = 25;
        *(a1 + 32) = v70 + v81;
      }

      else
      {
        if (v69 != 1)
        {
          goto LABEL_161;
        }

        v70 = *(a1 + 8);
      }

      if (v20 < (v70 + 1))
      {
        goto LABEL_161;
      }

      v23 = *v70;
      *(a1 + 8) = v70 + 1;
    }

    goto LABEL_5;
  }

  if (v26 != 4)
  {
    if (v26 == 5)
    {
      if ((v24 & 7) != 0)
      {
        if ((v24 & 7) != 2)
        {
          goto LABEL_161;
        }

        v30 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_159;
        }

        if (v30 < 0)
        {
          goto LABEL_197;
        }

        v31 = *(a1 + 8) + v30;
        if (v20 < v31)
        {
          goto LABEL_161;
        }

        *(a1 + 24) = 40;
        *(a1 + 32) = v31;
      }

      v32 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        goto LABEL_159;
      }

      LODWORD(v105) = v32 != 0;
      goto LABEL_5;
    }

    goto LABEL_127;
  }

  if ((v24 & 7) != 2)
  {
    goto LABEL_161;
  }

  v6 = *(a1 + 40);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
  }

  v58 = *(v6 + 2);
  v57 = *(v6 + 3);
  if (v58 >= v57 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v6);
  }

  *(v6 + 2) = v58 + 1;
  *&v6[8 * v58 + 32] = v20;
  *(a1 + 40) = v6;
  v59 = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
LABEL_167:

    goto LABEL_163;
  }

  if ((v59 & 0x8000000000000000) == 0)
  {
    v60 = *(a1 + 8) + v59;
    if (v20 < v60)
    {
      goto LABEL_161;
    }

    *(a1 + 16) = v60;
    Image.Location.init(from:)(a1, &v115);
    v6 = *(a1 + 40);
    if (!*(v6 + 2))
    {
      goto LABEL_187;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v61 = *(v6 + 2);
      if (!v61)
      {
        goto LABEL_189;
      }
    }

    else
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
      v61 = *(v6 + 2);
      if (!v61)
      {
        goto LABEL_189;
      }
    }

    v62 = v61 - 1;
    v20 = *&v6[8 * v62 + 32];
    *(v6 + 2) = v62;
    outlined consume of Image.Location(v21);
    *(a1 + 40) = v6;
    *(a1 + 16) = v20;
    v21 = v115;
    goto LABEL_5;
  }

  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
  __break(1u);
LABEL_200:
  __break(1u);
  do
  {
    __break(1u);
    v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    v95 = *(v6 + 2);
    if (v95)
    {
      goto LABEL_177;
    }

    __break(1u);

    v6 = *(a1 + 40);
    if (!*(v6 + 2))
    {
      goto LABEL_200;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v95 = *(v6 + 2);
      if (v95)
      {
        goto LABEL_177;
      }
    }

    else
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
      v95 = *(v6 + 2);
      if (v95)
      {
        goto LABEL_177;
      }
    }

    __break(1u);

    v6 = *(a1 + 40);
  }

  while (!*(v6 + 2));
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v95 = *(v6 + 2);
    if (v95)
    {
LABEL_177:
      v96 = v95 - 1;
      v97 = *&v6[8 * v96 + 32];
      *(v6 + 2) = v96;
      *(a1 + 40) = v6;
      outlined destroy of Text.Style?(v18, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770]);
      outlined consume of Image.Location(v21);
      *(a1 + 16) = v97;
      return;
    }
  }

  else
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    v95 = *(v6 + 2);
    if (v95)
    {
      goto LABEL_177;
    }
  }

  __break(1u);
}

uint64_t Image.init(_:)(uint64_t a1)
{
  v2 = type metadata accessor for NamedResource();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ResourceReference();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  MEMORY[0x193ABE110](v8);
  if ((*(v7 + 88))(v10, v6) == *MEMORY[0x1E6966780])
  {
    (*(v7 + 96))(v10, v6);
    v11 = (*(v3 + 32))(v5, v10, v2);
    v12 = MEMORY[0x193ABE130](v11);
    v14 = v13;
    v15 = NamedResource.bundle.getter();
    type metadata accessor for LocalizedTextStorage();
    v16 = swift_allocObject();
    *(v16 + 16) = v12;
    *(v16 + 24) = v14;
    *(v16 + 32) = 0;
    v17 = MEMORY[0x1E69E7CC0];
    *(v16 + 40) = MEMORY[0x1E69E7CC0];
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = v15;
    v24 = 1;

    v18 = v15;
    outlined consume of Image.Location?(2);
    outlined consume of AccessibilityImageLabel?(0, 0, 0x1FFFFFFFELL);
    v19 = v24;
    type metadata accessor for ImageProviderBox<Image.NamedImageProvider>(0, &lazy cache variable for type metadata for ImageProviderBox<Image.NamedImageProvider>, lazy protocol witness table accessor for type Image.NamedImageProvider and conformance Image.NamedImageProvider);
    v20 = swift_allocObject();
    *(v20 + 16) = v12;
    *(v20 + 24) = v14;
    *(v20 + 32) = 0;
    *(v20 + 36) = v19;
    *(v20 + 37) = v25;
    *(v20 + 39) = v26;
    *(v20 + 40) = v15;
    *(v20 + 48) = 2;
    *(v20 + 56) = v16;
    *(v20 + 64) = xmmword_18DD85550;
    *(v20 + 80) = v17;
    *(v20 + 88) = 0;
    v21 = type metadata accessor for ImageResource();
    (*(*(v21 - 8) + 8))(v23, v21);
    (*(v3 + 8))(v5, v2);
    return v20;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

ValueMetadata *EnvironmentValues.layerStackBitmapProvider.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE031CorePlatfromProvidersDefinitionI033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt1g5(v1);
  }

  else if (!_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE031CorePlatfromProvidersDefinitionS033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt0g5(*v0) && one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  static CorePlatformProvidersDefinition.providers.getter(v3);
  if (v4)
  {
    return v4;
  }

  else
  {
    return &type metadata for DefaultLayerStackBitmapProvider;
  }
}

double static DefaultLayerStackBitmapProvider.resolveLayerStackBitmap(name:location:context:)@<D0>(_OWORD *a1@<X8>)
{
  _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(v8);
  v2 = v16;
  a1[8] = v15;
  a1[9] = v2;
  a1[10] = v17[0];
  *(a1 + 171) = *(v17 + 11);
  v3 = v12;
  a1[4] = v11;
  a1[5] = v3;
  v4 = v14;
  a1[6] = v13;
  a1[7] = v4;
  v5 = v8[1];
  *a1 = v8[0];
  a1[1] = v5;
  result = *&v9;
  v7 = v10;
  a1[2] = v9;
  a1[3] = v7;
  return result;
}

double protocol witness for static LayerStackBitmapProvider.resolveLayerStackBitmap(name:location:context:) in conformance DefaultLayerStackBitmapProvider@<D0>(_OWORD *a1@<X8>)
{
  _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(v8);
  v2 = v16;
  a1[8] = v15;
  a1[9] = v2;
  a1[10] = v17[0];
  *(a1 + 171) = *(v17 + 11);
  v3 = v12;
  a1[4] = v11;
  a1[5] = v3;
  v4 = v14;
  a1[6] = v13;
  a1[7] = v4;
  v5 = v8[1];
  *a1 = v8[0];
  a1[1] = v5;
  result = *&v9;
  v7 = v10;
  a1[2] = v9;
  a1[3] = v7;
  return result;
}

id @nonobjc CUICatalog.init(url:)(uint64_t a1)
{
  v2 = v1;
  v15 = *MEMORY[0x1E69E9840];
  URL._bridgeToObjectiveC()(v15);
  v5 = v4;
  v14 = 0;
  v6 = [v2 initWithURL:v4 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

unint64_t lazy protocol witness table accessor for type NamedImage.Errors and conformance NamedImage.Errors()
{
  result = lazy protocol witness table cache variable for type NamedImage.Errors and conformance NamedImage.Errors;
  if (!lazy protocol witness table cache variable for type NamedImage.Errors and conformance NamedImage.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NamedImage.Errors and conformance NamedImage.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NamedImage.Errors and conformance NamedImage.Errors;
  if (!lazy protocol witness table cache variable for type NamedImage.Errors and conformance NamedImage.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NamedImage.Errors and conformance NamedImage.Errors);
  }

  return result;
}

void specialized _NativeDictionary.filter(_:)(uint64_t a1)
{
  v2 = a1;
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v7 = swift_slowAlloc();
      _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy10Foundation3URLV7SwiftUI7WeakBoxVySo10CUICatalogCGG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab26VKXEfU_10Foundation3URLV_7k3UI7mn6VySo10O5CGTG5AQxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjPIsgnndzo_Tf1nc_n03_s7k27UI10NamedImageO5CacheCySo10o90C_Sb6retaintSgSo8NSBundleCcigyAE4Data33_8E7DCD4CEB1ACDE07B249BFF4CBC75C0LLVzYuYTXEfU0_Sb10w12URLV3key_AA7mnZ17AGG5valuet_tXEfU_Tf1nnc_n(v7, v4, v2);
      MEMORY[0x193AC4820](v7, -1, -1);
      return;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v6 = v8 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  specialized closure #1 in _NativeDictionary.filter(_:)(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }
}

void specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, void *a3)
{
  v39 = a2;
  v40 = a1;
  type metadata accessor for (key: URL, value: WeakBox<CUICatalog>)();
  v49 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v39 - v8;
  v9 = type metadata accessor for URL();
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = 0;
  v14 = 0;
  v50 = a3;
  v17 = a3[8];
  v16 = a3 + 8;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v45 = v10 + 16;
  v46 = v21;
  v47 = v10;
  v43 = (v10 + 8);
  v44 = v6;
  v22 = v48;
  while (v20)
  {
    v23 = __clz(__rbit64(v20));
    v51 = (v20 - 1) & v20;
LABEL_11:
    v26 = v23 | (v14 << 6);
    v27 = v50;
    v28 = *(v47 + 16);
    v28(v13, v50[6] + *(v47 + 72) * v26, v9, v11);
    v29 = v27[7];
    v42 = v26;
    outlined init with copy of NamedImage.Key(v29 + 8 * v26, v52, type metadata accessor for WeakBox<CUICatalog>);
    v30 = v13;
    (v28)(v22, v13, v9);
    v31 = v9;
    v32 = v49;
    outlined init with copy of NamedImage.Key(v52, v22 + *(v49 + 48), type metadata accessor for WeakBox<CUICatalog>);
    v33 = v44;
    outlined init with copy of NamedImage.Key(v22, v44, type metadata accessor for (key: URL, value: WeakBox<CUICatalog>));
    v34 = *(v32 + 48);
    Strong = swift_unknownObjectWeakLoadStrong();
    outlined destroy of NamedImage.BitmapKey(v22, type metadata accessor for (key: URL, value: WeakBox<CUICatalog>));
    outlined destroy of NamedImage.BitmapKey(v33 + v34, type metadata accessor for WeakBox<CUICatalog>);
    if (Strong)
    {

      v37 = *v43;
      (*v43)(v33, v31);
      outlined destroy of NamedImage.BitmapKey(v52, type metadata accessor for WeakBox<CUICatalog>);
      v37(v30, v31);
      *(v40 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
      v38 = __OFADD__(v41++, 1);
      v9 = v31;
      v13 = v30;
      v21 = v46;
      v20 = v51;
      if (v38)
      {
        __break(1u);
LABEL_16:
        specialized _NativeDictionary.extractDictionary(using:count:)(v40, v39, v41, v50);
        return;
      }
    }

    else
    {
      v36 = *v43;
      (*v43)(v33, v31);
      outlined destroy of NamedImage.BitmapKey(v52, type metadata accessor for WeakBox<CUICatalog>);
      v36(v30, v31);
      v9 = v31;
      v13 = v30;
      v21 = v46;
      v20 = v51;
    }
  }

  v24 = v14;
  while (1)
  {
    v14 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v14 >= v21)
    {
      goto LABEL_16;
    }

    v25 = v16[v14];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v51 = (v25 - 1) & v25;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy10Foundation3URLV7SwiftUI7WeakBoxVySo10CUICatalogCGG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab26VKXEfU_10Foundation3URLV_7k3UI7mn6VySo10O5CGTG5AQxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjPIsgnndzo_Tf1nc_n03_s7k27UI10NamedImageO5CacheCySo10o90C_Sb6retaintSgSo8NSBundleCcigyAE4Data33_8E7DCD4CEB1ACDE07B249BFF4CBC75C0LLVzYuYTXEfU0_Sb10w12URLV3key_AA7mnZ17AGG5valuet_tXEfU_Tf1nnc_n(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    specialized closure #1 in _NativeDictionary.filter(_:)(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

BOOL specialized static NamedImage.BitmapKey.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0)
  {
    v5 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
    if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(a1 + 3) == *(a2 + 3) && (v6 = *(a1 + 4), v9 = *(a2 + 4), v10 = v6, outlined copy of Image.Location(v6), outlined copy of Image.Location(v9), v7 = specialized static Image.Location.== infix(_:_:)(&v10, &v9), outlined consume of Image.Location(v9), outlined consume of Image.Location(v10), (v7) && a1[40] == a2[40] && (v8 = type metadata accessor for NamedImage.BitmapKey(0), (MEMORY[0x193ABDB20](&a1[v8[9]], &a2[v8[9]])) && a1[v8[10]] == a2[v8[10]] && *&a1[v8[11]] == *&a2[v8[11]] && *&a1[v8[12]] == *&a2[v8[12]] && a1[v8[13]] == a2[v8[13]])
    {
      return a1[v8[14]] == a2[v8[14]];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t specialized static NamedImage.Key.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v25 = type metadata accessor for UUID();
  v3 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NamedImage.BitmapKey(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NamedImage.Key(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  type metadata accessor for (NamedImage.Key, NamedImage.Key)();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 + 56);
  outlined init with copy of NamedImage.Key(a1, v17, type metadata accessor for NamedImage.Key);
  outlined init with copy of NamedImage.Key(v26, &v17[v19], type metadata accessor for NamedImage.Key);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of NamedImage.Key(v17, v11, type metadata accessor for NamedImage.Key);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = v25;
      (*(v3 + 32))(v5, &v17[v19], v25);
      v21 = static UUID.== infix(_:_:)();
      v22 = *(v3 + 8);
      v22(v5, v20);
      v22(v11, v20);
LABEL_9:
      v23 = type metadata accessor for NamedImage.Key;
      goto LABEL_10;
    }

    (*(v3 + 8))(v11, v25);
  }

  else
  {
    outlined init with copy of NamedImage.Key(v17, v14, type metadata accessor for NamedImage.Key);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of NamedImage.BitmapKey(&v17[v19], v8, type metadata accessor for NamedImage.BitmapKey);
      v21 = specialized static NamedImage.BitmapKey.== infix(_:_:)(v14, v8);
      outlined destroy of NamedImage.BitmapKey(v8, type metadata accessor for NamedImage.BitmapKey);
      outlined destroy of NamedImage.BitmapKey(v14, type metadata accessor for NamedImage.BitmapKey);
      goto LABEL_9;
    }

    outlined destroy of NamedImage.BitmapKey(v14, type metadata accessor for NamedImage.BitmapKey);
  }

  v21 = 0;
  v23 = type metadata accessor for (NamedImage.Key, NamedImage.Key);
LABEL_10:
  outlined destroy of NamedImage.BitmapKey(v17, v23);
  return v21 & 1;
}

BOOL specialized static NamedImage.VectorKey.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0)
  {
    v5 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
    if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(a1 + 3) == *(a2 + 3) && a1[32] == a2[32] && (v6 = type metadata accessor for NamedImage.VectorKey(0), (MEMORY[0x193ABDB20](&a1[v6[8]], &a2[v6[8]])) && *&a1[v6[9]] == *&a2[v6[9]] && a1[v6[10]] == a2[v6[10]] && *&a1[v6[11]] == *&a2[v6[11]] && (v7 = v6[12], v8 = *&a1[v7], v10 = *&a2[v7], v11 = v8, outlined copy of Image.Location(v8), outlined copy of Image.Location(v10), v9 = specialized static Image.Location.== infix(_:_:)(&v11, &v10), outlined consume of Image.Location(v10), outlined consume of Image.Location(v11), (v9))
    {
      return *&a1[v6[13]] == *&a2[v6[13]];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL specialized static UUIDImageProvider.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for UUIDImageProvider(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  if (v6 != *v8 || v7 != v8[1])
  {
    return 0;
  }

  v10 = *(v4 + 24);
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 24);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 24);
  if (!v12)
  {
    return !v14;
  }

  if (!v14)
  {
    return 0;
  }

  v15 = *v11;
  v16 = v11[2];
  v17 = *v13;
  v18 = v13[1];
  v19 = v13[2];
  if (v16)
  {
    if (v19)
    {
      v20 = *(*v15 + 96);
      v21 = 1;
      outlined copy of Text.Storage(*v13, v13[1], 1);

      if (v20(v17))
      {
        goto LABEL_26;
      }

      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v19)
  {
LABEL_16:
    v21 = v16 ^ 1;
    outlined copy of Text?(*v13, v13[1], v13[2], v14);
LABEL_17:
    outlined consume of Text.Storage(v17, v18, v21 & 1);

    return 0;
  }

  v23 = v11[1];
  if (v15 == v17 && v23 == v18)
  {
    outlined copy of Text.Storage(*v11, v23, 0);

    goto LABEL_26;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
  outlined copy of Text.Storage(v17, v18, 0);

  v21 = 0;
  if ((v25 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_26:
  v26 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV8ModifierO_Tt1g5(v12, v14);
  outlined consume of Text.Storage(v17, v18, v19 & 1);

  return (v26 & 1) != 0;
}

unint64_t lazy protocol witness table accessor for type Image.Location.Error and conformance Image.Location.Error()
{
  result = lazy protocol witness table cache variable for type Image.Location.Error and conformance Image.Location.Error;
  if (!lazy protocol witness table cache variable for type Image.Location.Error and conformance Image.Location.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.Location.Error and conformance Image.Location.Error);
  }

  return result;
}

void type metadata accessor for ImageProviderBox<UUIDImageProvider>()
{
  if (!lazy cache variable for type metadata for ImageProviderBox<UUIDImageProvider>)
  {
    type metadata accessor for UUIDImageProvider(255);
    lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type UUIDImageProvider and conformance UUIDImageProvider, type metadata accessor for UUIDImageProvider);
    v0 = type metadata accessor for ImageProviderBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ImageProviderBox<UUIDImageProvider>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Image.Location and conformance Image.Location()
{
  result = lazy protocol witness table cache variable for type Image.Location and conformance Image.Location;
  if (!lazy protocol witness table cache variable for type Image.Location and conformance Image.Location)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.Location and conformance Image.Location);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Image.HashableScale and conformance Image.HashableScale()
{
  result = lazy protocol witness table cache variable for type Image.HashableScale and conformance Image.HashableScale;
  if (!lazy protocol witness table cache variable for type Image.HashableScale and conformance Image.HashableScale)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.HashableScale and conformance Image.HashableScale);
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for NamedImage.VectorKey(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v15 = *a2;
    *v4 = *a2;
    v4 = (v15 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    v7 = a2[2];
    *(a1 + 8) = a2[1];
    *(a1 + 16) = v7;
    *(a1 + 24) = a2[3];
    *(a1 + 32) = *(a2 + 32);
    v8 = a3[8];
    v9 = type metadata accessor for Locale();
    v10 = *(*(v9 - 8) + 16);

    v10(&v4[v8], a2 + v8, v9);
    v11 = a3[10];
    *&v4[a3[9]] = *(a2 + a3[9]);
    v4[v11] = *(a2 + v11);
    v12 = a3[12];
    *&v4[a3[11]] = *(a2 + a3[11]);
    v13 = *(a2 + v12);
    if (v13 >= 2)
    {
      v14 = v13;
    }

    *&v4[v12] = v13;
    *&v4[a3[13]] = *(a2 + a3[13]);
  }

  return v4;
}

uint64_t assignWithCopy for NamedImage.VectorKey(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v6 = a3[8];
  v7 = type metadata accessor for Locale();
  (*(*(v7 - 8) + 24))(a1 + v6, a2 + v6, v7);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + a3[11]) = *(a2 + a3[11]);
  v8 = a3[12];
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 >= 2)
  {
    if (v10 >= 2)
    {
      *(a1 + v8) = v10;
      v12 = v10;

      goto LABEL_8;
    }

    v10 = *(a2 + v8);
    goto LABEL_6;
  }

  if (v10 < 2)
  {
LABEL_6:
    *(a1 + v8) = v10;
    goto LABEL_8;
  }

  *(a1 + v8) = v10;
  v11 = v10;
LABEL_8:
  *(a1 + a3[13]) = *(a2 + a3[13]);
  return a1;
}

uint64_t initializeWithTake for NamedImage.VectorKey(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v6 = a3[8];
  v7 = type metadata accessor for Locale();
  (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
  v8 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v8) = *(a2 + v8);
  v9 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  *(a1 + v9) = *(a2 + v9);
  *(a1 + a3[13]) = *(a2 + a3[13]);
  return a1;
}

uint64_t assignWithTake for NamedImage.VectorKey(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v6 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v6;

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v7 = a3[8];
  v8 = type metadata accessor for Locale();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  v9 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v9) = *(a2 + v9);
  v10 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (v11 >= 2)
  {
    if (v12 >= 2)
    {
      *(a1 + v10) = v12;
    }

    else
    {

      *(a1 + v10) = *(a2 + v10);
    }
  }

  else
  {
    *(a1 + v10) = v12;
  }

  *(a1 + a3[13]) = *(a2 + a3[13]);
  return a1;
}

_WORD *initializeBufferWithCopyOfBuffer for NamedImage.BitmapKey(_WORD *a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v14 = *a2;
    *v4 = *a2;
    v4 = (v14 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    v7 = a2[2];
    *(v4 + 1) = a2[1];
    *(v4 + 2) = v7;
    v8 = a2[4];
    *(v4 + 3) = a2[3];

    if (v8 >= 2)
    {
      v9 = v8;
    }

    *(v4 + 4) = v8;
    *(v4 + 40) = *(a2 + 40);
    v10 = a3[9];
    v11 = type metadata accessor for Locale();
    (*(*(v11 - 8) + 16))(v4 + v10, a2 + v10, v11);
    v12 = a3[11];
    *(v4 + a3[10]) = *(a2 + a3[10]);
    *(v4 + v12) = *(a2 + v12);
    v13 = a3[13];
    *(v4 + a3[12]) = *(a2 + a3[12]);
    *(v4 + v13) = *(a2 + v13);
    *(v4 + a3[14]) = *(a2 + a3[14]);
  }

  return v4;
}

uint64_t assignWithCopy for NamedImage.BitmapKey(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  v6 = *(a1 + 32);
  v7 = *(a2 + 32);
  if (v6 >= 2)
  {
    if (v7 >= 2)
    {
      *(a1 + 32) = v7;
      v9 = v7;

      goto LABEL_8;
    }

    v7 = *(a2 + 32);
    goto LABEL_6;
  }

  if (v7 < 2)
  {
LABEL_6:
    *(a1 + 32) = v7;
    goto LABEL_8;
  }

  *(a1 + 32) = v7;
  v8 = v7;
LABEL_8:
  *(a1 + 40) = *(a2 + 40);
  v10 = a3[9];
  v11 = type metadata accessor for Locale();
  (*(*(v11 - 8) + 24))(a1 + v10, a2 + v10, v11);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + a3[11]) = *(a2 + a3[11]);
  *(a1 + a3[12]) = *(a2 + a3[12]);
  *(a1 + a3[13]) = *(a2 + a3[13]);
  *(a1 + a3[14]) = *(a2 + a3[14]);
  return a1;
}

uint64_t initializeWithTake for NamedImage.BitmapKey(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v6 = a3[9];
  v7 = type metadata accessor for Locale();
  (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
  v8 = a3[11];
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + v8) = *(a2 + v8);
  v9 = a3[13];
  *(a1 + a3[12]) = *(a2 + a3[12]);
  *(a1 + v9) = *(a2 + v9);
  *(a1 + a3[14]) = *(a2 + a3[14]);
  return a1;
}

uint64_t assignWithTake for NamedImage.BitmapKey(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v6 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v6;

  *(a1 + 24) = *(a2 + 24);
  v7 = *(a1 + 32);
  v8 = *(a2 + 32);
  if (v7 >= 2)
  {
    if (v8 >= 2)
    {
      *(a1 + 32) = v8;

      goto LABEL_6;
    }
  }

  *(a1 + 32) = v8;
LABEL_6:
  *(a1 + 40) = *(a2 + 40);
  v9 = a3[9];
  v10 = type metadata accessor for Locale();
  (*(*(v10 - 8) + 40))(a1 + v9, a2 + v9, v10);
  v11 = a3[11];
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + v11) = *(a2 + v11);
  v12 = a3[13];
  *(a1 + a3[12]) = *(a2 + a3[12]);
  *(a1 + v12) = *(a2 + v12);
  *(a1 + a3[14]) = *(a2 + a3[14]);
  return a1;
}

uint64_t assignWithCopy for NamedImage.WeakOrStrongImageContents(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 9);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {
      v5 = *(a1 + 8);
      if (v5 >= 3)
      {
        v5 = *a1 + 3;
      }

      if (v5 == 2)
      {
        swift_weakDestroy();
      }

      else
      {
        MEMORY[0x193AC4950](a1);
      }
    }

    else
    {
      outlined consume of GraphicsImage.Contents(*a1, *(a1 + 8));
    }

    v6 = *(a2 + 9);
    if (v6 >= 2)
    {
      v6 = *a2 + 2;
    }

    if (v6 == 1)
    {
      v7 = *(a2 + 8);
      if (v7 >= 3)
      {
        v7 = *a2 + 3;
      }

      if (v7 == 2)
      {
        swift_weakCopyInit();
        v8 = 2;
      }

      else if (v7 == 1)
      {
        swift_unknownObjectWeakCopyInit();
        v8 = 1;
      }

      else
      {
        swift_unknownObjectWeakCopyInit();
        v8 = 0;
      }

      *(a1 + 8) = v8;
      v11 = 1;
    }

    else
    {
      v9 = *a2;
      v10 = *(a2 + 8);
      outlined copy of GraphicsImage.Contents(v9, v10);
      v11 = 0;
      *a1 = v9;
      *(a1 + 8) = v10;
    }

    *(a1 + 9) = v11;
  }

  return a1;
}

uint64_t assignWithTake for NamedImage.WeakOrStrongImageContents(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 9);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {
      v5 = *(a1 + 8);
      if (v5 >= 3)
      {
        v5 = *a1 + 3;
      }

      if (v5 == 2)
      {
        swift_weakDestroy();
      }

      else
      {
        MEMORY[0x193AC4950](a1);
      }
    }

    else
    {
      outlined consume of GraphicsImage.Contents(*a1, *(a1 + 8));
    }

    v6 = *(a2 + 9);
    if (v6 >= 2)
    {
      v6 = *a2 + 2;
    }

    if (v6 == 1)
    {
      v7 = *(a2 + 8);
      if (v7 >= 3)
      {
        v7 = *a2 + 3;
      }

      if (v7 == 2)
      {
        swift_weakTakeInit();
        v8 = 2;
      }

      else if (v7 == 1)
      {
        swift_unknownObjectWeakTakeInit();
        v8 = 1;
      }

      else
      {
        swift_unknownObjectWeakTakeInit();
        v8 = 0;
      }

      *(a1 + 8) = v8;
      v9 = 1;
    }

    else
    {
      v9 = 0;
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
    }

    *(a1 + 9) = v9;
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for NamedImage.WeakOrStrongImageContents(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NamedImage.WeakOrStrongImageContents(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for NamedImage.WeakOrStrongImageContents(uint64_t a1)
{
  result = *(a1 + 9);
  if (result >= 2)
  {
    return (*a1 + 2);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for NamedImage.WeakOrStrongImageContents(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 9) = a2;
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for NamedImage._BitmapInfo(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 33 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v10 = *v11;
    *(v10 + 8) = *(v11 + 8);
    v12 = (v3 + v5 + 23) & 0xFFFFFFFFFFFFFFF8;
    v13 = (a2 + v5 + 23) & 0xFFFFFFFFFFFFFFF8;
    *v12 = *v13;
    *(v12 + 16) = *(v13 + 16);
    v14 = (v3 + v5 + 47) & 0xFFFFFFFFFFFFFFF8;
    v15 = (a2 + v5 + 47) & 0xFFFFFFFFFFFFFFF8;
    v17 = *v15;
    v16 = *(v15 + 16);
    *(v14 + 32) = *(v15 + 32);
    *v14 = v17;
    *(v14 + 16) = v16;
  }

  return v3;
}

uint64_t assignWithCopy for NamedImage._BitmapInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);
  v11 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v11 = *v12;
  *(v11 + 8) = *(v12 + 8);
  *(v11 + 16) = *(v12 + 16);
  v13 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v16 = *v14;
  v15 = *(v14 + 16);
  *(v13 + 32) = *(v14 + 32);
  *v13 = v16;
  *(v13 + 16) = v15;
  return a1;
}

uint64_t assignWithTake for NamedImage._BitmapInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);
  v11 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v11 = *v12;
  *(v11 + 8) = *(v12 + 8);
  *(v11 + 16) = *(v12 + 16);
  v13 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v16 = *v14;
  v15 = *(v14 + 16);
  *(v13 + 32) = *(v14 + 32);
  *v13 = v16;
  *(v13 + 16) = v15;
  return a1;
}

void storeEnumTagSinglePayload for NamedImage._BitmapInfo(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFD)
  {
    v8 = 253;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 47) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0xFD)
      {
        *((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 32) = a2 + 2;
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 47) & 0xFFFFFFFFFFFFFFF8) + 33);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t initializeWithCopy for NamedImage.DecodedInfo(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of GraphicsImage.Contents(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithCopy for NamedImage.DecodedInfo(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of GraphicsImage.Contents(*a2, v5);
  v6 = *a1;
  *a1 = v4;
  v7 = *(a1 + 8);
  *(a1 + 8) = v5;
  outlined consume of GraphicsImage.Contents(v6, v7);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for NamedImage.DecodedInfo(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *a1;
  *a1 = *a2;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  outlined consume of GraphicsImage.Contents(v5, v6);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for NamedImage.DecodedInfo(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 41))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 8);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for NamedImage.DecodedInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for NamedImage.Key(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = v7 + ((v5 + 16) & ~v5);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = type metadata accessor for UUID();
      (*(*(v6 - 8) + 16))(a1, a2, v6);
    }

    else
    {
      *a1 = *a2;
      v8 = a2[2];
      *(a1 + 8) = a2[1];
      *(a1 + 16) = v8;
      v9 = a2[4];
      *(a1 + 24) = a2[3];

      if (v9 >= 2)
      {
        v10 = v9;
      }

      *(a1 + 32) = v9;
      *(a1 + 40) = *(a2 + 40);
      v11 = type metadata accessor for NamedImage.BitmapKey(0);
      v12 = v11[9];
      v13 = type metadata accessor for Locale();
      (*(*(v13 - 8) + 16))(a1 + v12, a2 + v12, v13);
      *(a1 + v11[10]) = *(a2 + v11[10]);
      *(a1 + v11[11]) = *(a2 + v11[11]);
      *(a1 + v11[12]) = *(a2 + v11[12]);
      *(a1 + v11[13]) = *(a2 + v11[13]);
      *(a1 + v11[14]) = *(a2 + v11[14]);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t destroy for NamedImage.Key(uint64_t a1)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = type metadata accessor for UUID();
  }

  else
  {

    v3 = *(a1 + 32);
    if (v3 >= 2)
    {
    }

    a1 += *(type metadata accessor for NamedImage.BitmapKey(0) + 36);
    v2 = type metadata accessor for Locale();
  }

  v4 = *(*(v2 - 8) + 8);

  return v4(a1, v2);
}

uint64_t initializeWithCopy for NamedImage.Key(uint64_t a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for UUID();
    (*(*(v4 - 8) + 16))(a1, a2, v4);
  }

  else
  {
    *a1 = *a2;
    v5 = *(a2 + 16);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = v5;
    v6 = *(a2 + 32);
    *(a1 + 24) = *(a2 + 24);

    if (v6 >= 2)
    {
      v7 = v6;
    }

    *(a1 + 32) = v6;
    *(a1 + 40) = *(a2 + 40);
    v8 = type metadata accessor for NamedImage.BitmapKey(0);
    v9 = v8[9];
    v10 = type metadata accessor for Locale();
    (*(*(v10 - 8) + 16))(a1 + v9, a2 + v9, v10);
    *(a1 + v8[10]) = *(a2 + v8[10]);
    *(a1 + v8[11]) = *(a2 + v8[11]);
    *(a1 + v8[12]) = *(a2 + v8[12]);
    *(a1 + v8[13]) = *(a2 + v8[13]);
    *(a1 + v8[14]) = *(a2 + v8[14]);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithCopy for NamedImage.Key(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of NamedImage.BitmapKey(a1, type metadata accessor for NamedImage.Key);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = type metadata accessor for UUID();
      (*(*(v4 - 8) + 16))(a1, a2, v4);
    }

    else
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      v5 = *(a2 + 32);

      if (v5 >= 2)
      {
        v6 = v5;
      }

      *(a1 + 32) = v5;
      *(a1 + 40) = *(a2 + 40);
      v7 = type metadata accessor for NamedImage.BitmapKey(0);
      v8 = v7[9];
      v9 = type metadata accessor for Locale();
      (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
      *(a1 + v7[10]) = *(a2 + v7[10]);
      *(a1 + v7[11]) = *(a2 + v7[11]);
      *(a1 + v7[12]) = *(a2 + v7[12]);
      *(a1 + v7[13]) = *(a2 + v7[13]);
      *(a1 + v7[14]) = *(a2 + v7[14]);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t initializeWithTake for NamedImage.Key(uint64_t a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for UUID();
    (*(*(v4 - 8) + 32))(a1, a2, v4);
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    v5 = type metadata accessor for NamedImage.BitmapKey(0);
    v6 = v5[9];
    v7 = type metadata accessor for Locale();
    (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
    *(a1 + v5[10]) = *(a2 + v5[10]);
    *(a1 + v5[11]) = *(a2 + v5[11]);
    *(a1 + v5[12]) = *(a2 + v5[12]);
    *(a1 + v5[13]) = *(a2 + v5[13]);
    *(a1 + v5[14]) = *(a2 + v5[14]);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithTake for NamedImage.Key(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of NamedImage.BitmapKey(a1, type metadata accessor for NamedImage.Key);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = type metadata accessor for UUID();
      (*(*(v4 - 8) + 32))(a1, a2, v4);
    }

    else
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      v5 = type metadata accessor for NamedImage.BitmapKey(0);
      v6 = v5[9];
      v7 = type metadata accessor for Locale();
      (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
      *(a1 + v5[10]) = *(a2 + v5[10]);
      *(a1 + v5[11]) = *(a2 + v5[11]);
      *(a1 + v5[12]) = *(a2 + v5[12]);
      *(a1 + v5[13]) = *(a2 + v5[13]);
      *(a1 + v5[14]) = *(a2 + v5[14]);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void destroy for Image.Location(void **a1)
{
  v1 = *a1;
  if (v1 >= 0xFFFFFFFF)
  {
  }
}

void **assignWithCopy for Image.Location(void **a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  if (*a1 < 0xFFFFFFFF)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      *a1 = v4;
      v6 = v4;
      return a1;
    }

LABEL_7:
    *a1 = v4;
    return a1;
  }

  if (v4 < 0xFFFFFFFF)
  {

    v4 = *a2;
    goto LABEL_7;
  }

  *a1 = v4;
  v5 = v4;

  return a1;
}

void **assignWithTake for Image.Location(void **result, unint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  if (*result < 0xFFFFFFFF)
  {
    *result = v3;
  }

  else if (v3 < 0xFFFFFFFF)
  {
    v5 = result;

    result = v5;
    *v5 = v3;
  }

  else
  {
    *result = v3;
    v4 = result;

    return v4;
  }

  return result;
}

uint64_t destroy for Image.Location.SystemAssetManager(id *a1)
{
}

void *initializeWithCopy for Image.Location.SystemAssetManager(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a2 + 24);
  a1[2] = *(a2 + 16);
  a1[3] = v5;
  v6 = v3;

  return a1;
}

uint64_t assignWithCopy for Image.Location.SystemAssetManager(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithTake for Image.Location.SystemAssetManager(uint64_t a1, _OWORD *a2)
{
  *a1 = *a2;

  *(a1 + 16) = a2[1];

  return a1;
}

uint64_t initializeWithCopy for Image.NamedImageProvider(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  v5 = *(a2 + 24);

  if (v5 >= 2)
  {
    v6 = v5;
  }

  *(a1 + 24) = v5;
  v7 = *(a2 + 32);
  if (v7 >= 2)
  {
    if (v7 != 2)
    {
      *(a1 + 32) = v7;
      v8 = v7;
      goto LABEL_8;
    }

    v7 = 2;
  }

  *(a1 + 32) = v7;
LABEL_8:
  v9 = *(a2 + 56);
  if (v9 >> 1 == 0xFFFFFFFF)
  {
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
  }

  else
  {
    v10 = *(a2 + 40);
    v11 = *(a2 + 48);
    v12 = *(a2 + 64);
    outlined copy of AccessibilityImageLabel(v10, v11, *(a2 + 56));
    *(a1 + 40) = v10;
    *(a1 + 48) = v11;
    *(a1 + 56) = v9;
    *(a1 + 64) = v12;
  }

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t assignWithCopy for Image.NamedImageProvider(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 16) = v4;
  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5 < 2)
  {
    if (v6 >= 2)
    {
      *(a1 + 24) = v6;
      v7 = v6;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (v6 < 2)
  {

    v6 = *(a2 + 24);
LABEL_6:
    *(a1 + 24) = v6;
    goto LABEL_8;
  }

  *(a1 + 24) = v6;
  v8 = v6;

LABEL_8:
  v9 = (a1 + 32);
  v10 = *(a1 + 32);
  v11 = *(a2 + 32);
  if (v10 == 2)
  {
    if (v11 < 2)
    {
LABEL_15:
      *v9 = v11;
      goto LABEL_16;
    }

    if (v11 == 2)
    {
      v11 = 2;
      goto LABEL_15;
    }

    goto LABEL_23;
  }

  if (v11 == 2)
  {
    outlined destroy of Image.Location((a1 + 32));
LABEL_14:
    v11 = *(a2 + 32);
    goto LABEL_15;
  }

  if (v10 < 2)
  {
    if (v11 < 2)
    {
      goto LABEL_15;
    }

LABEL_23:
    *v9 = v11;
    v16 = v11;
    goto LABEL_16;
  }

  if (v11 < 2)
  {

    goto LABEL_14;
  }

  *v9 = v11;
  v27 = v11;

LABEL_16:
  v12 = *(a2 + 56);
  v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
  if (*(a1 + 56) >> 1 == 0xFFFFFFFFLL)
  {
    if (v13 == 0x1FFFFFFFELL)
    {
      v14 = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 40) = v14;
    }

    else
    {
      v17 = *(a2 + 40);
      v18 = *(a2 + 48);
      v19 = *(a2 + 64);
      outlined copy of AccessibilityImageLabel(v17, v18, *(a2 + 56));
      *(a1 + 40) = v17;
      *(a1 + 48) = v18;
      *(a1 + 56) = v12;
      *(a1 + 64) = v19;
    }
  }

  else if (v13 == 0x1FFFFFFFELL)
  {
    outlined destroy of AccessibilityImageLabel(a1 + 40);
    v15 = *(a2 + 56);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = v15;
  }

  else
  {
    v20 = *(a2 + 40);
    v21 = *(a2 + 48);
    v22 = *(a2 + 64);
    outlined copy of AccessibilityImageLabel(v20, v21, *(a2 + 56));
    v23 = *(a1 + 40);
    v24 = *(a1 + 48);
    v25 = *(a1 + 56);
    *(a1 + 40) = v20;
    *(a1 + 48) = v21;
    *(a1 + 56) = v12;
    *(a1 + 64) = v22;
    outlined consume of AccessibilityImageLabel(v23, v24, v25);
  }

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

id *outlined destroy of Image.Location(id *result)
{
  if (*result >= 0xFFFFFFFF)
  {
    v1 = result;

    return v1;
  }

  return result;
}

uint64_t assignWithTake for Image.NamedImageProvider(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5 < 2)
  {
    goto LABEL_4;
  }

  if (v6 < 2)
  {

LABEL_4:
    *(a1 + 24) = v6;
    goto LABEL_6;
  }

  *(a1 + 24) = v6;

LABEL_6:
  v8 = (a1 + 32);
  v7 = *(a1 + 32);
  v9 = *(a2 + 32);
  if (v7 == 2)
  {
    if (v9 != 2)
    {
      *v8 = v9;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v9 == 2)
  {
    outlined destroy of Image.Location((a1 + 32));
LABEL_11:
    *v8 = 2;
    goto LABEL_12;
  }

  if (v7 >= 2)
  {
    if (v9 >= 2)
    {
      *v8 = v9;
    }

    else
    {

      *v8 = v9;
    }
  }

  else
  {
    *v8 = v9;
  }

LABEL_12:
  v10 = *(a1 + 56);
  if (v10 >> 1 != 0xFFFFFFFF)
  {
    v11 = *(a2 + 56);
    if (v11 >> 1 != 0xFFFFFFFF)
    {
      v12 = *(a2 + 64);
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v11;
      *(a1 + 64) = v12;
      outlined consume of AccessibilityImageLabel(v13, v14, v10);
      goto LABEL_19;
    }

    outlined destroy of AccessibilityImageLabel(a1 + 40);
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
LABEL_19:
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t getEnumTagSinglePayload for Image.NamedImageProvider(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Image.NamedImageProvider(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for Image.ResolvedUUID(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for Image.ResolvedUUID(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for UUIDImageProvider(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = (v14 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 24);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
    v9 = a1 + v8;
    v10 = a2 + v8;
    if (*(a2 + v8 + 24))
    {
      v11 = *v10;
      v12 = *(v10 + 1);
      v13 = v10[16];
      outlined copy of Text.Storage(*v10, v12, v13);
      *v9 = v11;
      *(v9 + 1) = v12;
      v9[16] = v13;
      *(v9 + 3) = *(v10 + 3);
    }

    else
    {
      v15 = *(v10 + 1);
      *v9 = *v10;
      *(v9 + 1) = v15;
    }
  }

  return a1;
}

uint64_t destroy for UUIDImageProvider(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  result = (*(*(v4 - 8) + 8))(a1, v4);
  v6 = a1 + *(a2 + 24);
  if (*(v6 + 24))
  {
    outlined consume of Text.Storage(*v6, *(v6 + 8), *(v6 + 16));
  }

  return result;
}

uint64_t initializeWithCopy for UUIDImageProvider(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  v8 = a1 + v7;
  v9 = a2 + v7;
  if (*(a2 + v7 + 24))
  {
    v10 = *v9;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    outlined copy of Text.Storage(*v9, v11, v12);
    *v8 = v10;
    *(v8 + 8) = v11;
    *(v8 + 16) = v12;
    *(v8 + 24) = *(v9 + 24);
  }

  else
  {
    v13 = *(v9 + 16);
    *v8 = *v9;
    *(v8 + 16) = v13;
  }

  return a1;
}

uint64_t assignWithCopy for UUIDImageProvider(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  *v8 = *v9;
  v8[1] = v9[1];
  v10 = *(a3 + 24);
  v11 = a1 + v10;
  v12 = a2 + v10;
  v13 = *(a1 + v10 + 24);
  v14 = *(a2 + v10 + 24);
  if (v13)
  {
    if (v14)
    {
      v15 = *v12;
      v16 = *(v12 + 8);
      v17 = *(v12 + 16);
      outlined copy of Text.Storage(*v12, v16, v17);
      v18 = *v11;
      v19 = *(v11 + 8);
      v20 = *(v11 + 16);
      *v11 = v15;
      *(v11 + 8) = v16;
      *(v11 + 16) = v17;
      outlined consume of Text.Storage(v18, v19, v20);
      *(v11 + 24) = *(v12 + 24);
    }

    else
    {
      outlined destroy of Text(v11);
      v24 = *(v12 + 16);
      *v11 = *v12;
      *(v11 + 16) = v24;
    }
  }

  else if (v14)
  {
    v21 = *v12;
    v22 = *(v12 + 8);
    v23 = *(v12 + 16);
    outlined copy of Text.Storage(*v12, v22, v23);
    *v11 = v21;
    *(v11 + 8) = v22;
    *(v11 + 16) = v23;
    *(v11 + 24) = *(v12 + 24);
  }

  else
  {
    v25 = *(v12 + 16);
    *v11 = *v12;
    *(v11 + 16) = v25;
  }

  return a1;
}

uint64_t initializeWithTake for UUIDImageProvider(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;
  return a1;
}

uint64_t assignWithTake for UUIDImageProvider(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  v8 = a1 + v7;
  v9 = a2 + v7;
  if (!*(a1 + v7 + 24))
  {
    goto LABEL_5;
  }

  if (!*(v9 + 24))
  {
    outlined destroy of Text(a1 + v7);
LABEL_5:
    v14 = *(v9 + 16);
    *v8 = *v9;
    *(v8 + 16) = v14;
    return a1;
  }

  v10 = *(v9 + 16);
  v11 = *v8;
  v12 = *(v8 + 8);
  v13 = *(v8 + 16);
  *v8 = *v9;
  *(v8 + 16) = v10;
  outlined consume of Text.Storage(v11, v12, v13);
  *(v8 + 24) = *(v9 + 24);

  return a1;
}

uint64_t type metadata completion function for UUIDImageProvider()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void destroy for NamedImage.VectorInfo(id *a1)
{

  JUMPOUT(0x193AC4950);
}

uint64_t assignWithCopy for NamedImage.VectorInfo(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  swift_unknownObjectWeakCopyAssign();
  return a1;
}

uint64_t assignWithTake for NamedImage.VectorInfo(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v5 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v5;
  v6 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v6;
  swift_unknownObjectWeakTakeAssign();
  return a1;
}

uint64_t instantiation function for generic protocol witness table for UUIDImageProvider(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type UUIDImageProvider and conformance UUIDImageProvider, type metadata accessor for UUIDImageProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t outlined assign with copy of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NamedImage.VectorInfo?(0, &lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>, &type metadata for NamedImage.WeakOrStrongImageContents, type metadata accessor for NamedImage._BitmapInfo);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (key: URL, value: WeakBox<CUICatalog>)()
{
  if (!lazy cache variable for type metadata for (key: URL, value: WeakBox<CUICatalog>))
  {
    type metadata accessor for URL();
    type metadata accessor for WeakBox<CUICatalog>(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (key: URL, value: WeakBox<CUICatalog>));
    }
  }
}

void type metadata accessor for (NamedImage.Key, NamedImage.Key)()
{
  if (!lazy cache variable for type metadata for (NamedImage.Key, NamedImage.Key))
  {
    type metadata accessor for NamedImage.Key(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (NamedImage.Key, NamedImage.Key));
    }
  }
}

unint64_t lazy protocol witness table accessor for type Image.Location.BundlePath.Error and conformance Image.Location.BundlePath.Error()
{
  result = lazy protocol witness table cache variable for type Image.Location.BundlePath.Error and conformance Image.Location.BundlePath.Error;
  if (!lazy protocol witness table cache variable for type Image.Location.BundlePath.Error and conformance Image.Location.BundlePath.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.Location.BundlePath.Error and conformance Image.Location.BundlePath.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Image.Location.BundlePath.Error and conformance Image.Location.BundlePath.Error;
  if (!lazy protocol witness table cache variable for type Image.Location.BundlePath.Error and conformance Image.Location.BundlePath.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.Location.BundlePath.Error and conformance Image.Location.BundlePath.Error);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Image.Location.BundlePath and conformance Image.Location.BundlePath()
{
  result = lazy protocol witness table cache variable for type Image.Location.BundlePath and conformance Image.Location.BundlePath;
  if (!lazy protocol witness table cache variable for type Image.Location.BundlePath and conformance Image.Location.BundlePath)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.Location.BundlePath and conformance Image.Location.BundlePath);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Image.Location.BundlePath and conformance Image.Location.BundlePath;
  if (!lazy protocol witness table cache variable for type Image.Location.BundlePath and conformance Image.Location.BundlePath)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.Location.BundlePath and conformance Image.Location.BundlePath);
  }

  return result;
}

uint64_t mix<A>(_:_:by:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>, double a4@<D0>)
{
  (*(*(a1 - 8) + 16))(a3);
  dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
  (*(a2 + 16))(a1, a2, a4);
  return dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
}

uint64_t specialized Array.reserveCapacity(_:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
LABEL_8:
    __CocoaSet.count.getter();
LABEL_9:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v3 = result;
    goto LABEL_10;
  }

  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v1 = v3;
  return result;
}

unint64_t specialized Collection.prefix(_:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (__OFSUB__(a3, a2))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (result && a3 - a2 < result)
  {
LABEL_9:
    if (a3 >= a2)
    {
      return a2;
    }

    goto LABEL_13;
  }

  v3 = a2 + result;
  if (!__OFADD__(a2, result))
  {
    if (v3 < a2)
    {
      goto LABEL_15;
    }

    v4 = v3 <= a3;
    a3 = a2 + result;
    if (!v4)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

unint64_t specialized Collection.prefix(_:)(unint64_t result, uint64_t a2, uint64_t a3, int64_t a4, unint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = a5 >> 1;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!result || (v6 = a5 >> 1, (a5 >> 1) - a4 >= result))
  {
    v6 = a4 + result;
    if (__OFADD__(a4, result))
    {
      goto LABEL_17;
    }
  }

  if (v6 < a4)
  {
    goto LABEL_13;
  }

  if (v5 < a4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v5 >= v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      return a2;
    }

    goto LABEL_16;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t specialized Collection.prefix(_:)(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

BOOL specialized ShapeStyledLeafView.contentPath(size:)@<W0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>)
{
  v7 = 0.0;
  v8 = 0.0;
  if (*(v3 + 104) == 2)
  {
    v9 = *(v3 + 16);
    v10 = *(v3 + 152);
    a2 = 0.0;
    if (v10)
    {
      v7 = *(v10 + 48);
      v8 = *(v10 + 56);
    }

    if (v9 == 0.0)
    {
      a3 = 0.0;
    }

    else
    {
      v11 = *(v3 + 24);
      if (*(v3 + 40) <= 3u)
      {
        v12 = *(v3 + 32);
      }

      else
      {
        v12 = *(v3 + 24);
      }

      if (*(v3 + 40) > 3u)
      {
        v11 = *(v3 + 32);
      }

      v13 = 1.0 / v9;
      a2 = v13 * v11;
      a3 = v13 * v12;
    }
  }

  v20.origin.x = v7;
  v20.origin.y = v8;
  v20.size.width = a2;
  v20.size.height = a3;
  result = CGRectIsNull(v20);
  if (result)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v7;
  }

  if (result)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v8;
  }

  if (result)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = a2;
  }

  if (result)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = a3;
  }

  *a1 = v15;
  *(a1 + 8) = v16;
  if (result)
  {
    v19 = 6;
  }

  else
  {
    v19 = 0;
  }

  *(a1 + 16) = v17;
  *(a1 + 24) = v18;
  *(a1 + 32) = v19;
  return result;
}

uint64_t specialized ShapeStyledLeafView.contentPath(size:)@<X0>(__int16 a1@<W0>, uint64_t (*a2)(__int128 *, void)@<X1>, uint64_t a3@<X8>)
{
  result = a2(&v26, a1 & 0x101);
  if (v29 >> 29)
  {
    v13 = v5;
    v16 = v8;
    v19 = v7;
    v12 = v6;
    IsNull = CGRectIsNull(*&v5);
    result = outlined destroy of _ShapeStyle_RenderedShape.Shape(&v26);
    if (IsNull)
    {
      v10 = 0uLL;
      LOBYTE(IsNull) = 6;
      v9 = 0uLL;
    }

    else
    {
      *&v9 = v19;
      *(&v9 + 1) = v16;
      *&v10 = v13;
      *(&v10 + 1) = v12;
    }
  }

  else
  {
    v10 = v26;
    v9 = v27;
    LOBYTE(IsNull) = v28;
    v23 = v26;
    v24 = v27;
    v25 = v28;
    if (v5 != 0.0 || v6 != 0.0)
    {
      v14 = v26;
      v17 = v27;
      CGAffineTransformMakeTranslation(&v22, v5, v6);
      outlined copy of Path.Storage(v14, *(&v14 + 1), v17, *(&v17 + 1), IsNull);
      Path.applying(_:)(&v22.a, v20);
      v15 = v20[0];
      v18 = v20[1];
      LOBYTE(IsNull) = v21;
      outlined destroy of _ShapeStyle_RenderedShape.Shape(&v26);
      result = outlined destroy of _ShapeStyle_RenderedShape.Shape(&v26);
      v10 = v15;
      v9 = v18;
    }
  }

  *a3 = v10;
  *(a3 + 16) = v9;
  *(a3 + 32) = IsNull;
  return result;
}

uint64_t _ViewList_ID.canonicalID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v5[0] = *v1;
  v5[1] = v3;

  return _ViewList_ID.Canonical.init(id:)(v5, a1);
}

uint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  if (v4 < a3 || (a3 | result) < 0 || v4 < result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - result;
  if (a2 >= 1)
  {
    if (v5 < 0 || v5 >= a2)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v5 <= 0 && v5 > a2)
  {
    return 0;
  }

LABEL_11:
  v6 = __OFADD__(result, a2);
  result += a2;
  if (v6)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (result < 0 || v4 < result)
  {
    goto LABEL_17;
  }

  return result;
}

{
  v5 = *(v3 + 48);
  v4 = *(v3 + 56);
  if (v4 < a3 || v5 > a3 || v5 > result || v4 < result)
  {
    __break(1u);
    goto LABEL_24;
  }

  v9 = a3 - result;
  if (__OFSUB__(a3, result))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (a2 >= 1)
  {
    if (v9 < 0 || v9 >= a2)
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (v9 <= 0 && v9 > a2)
  {
    return 0;
  }

LABEL_19:
  v10 = __OFADD__(result, a2);
  result += a2;
  if (v10)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  if (result < v5 || v4 < result)
  {
    goto LABEL_26;
  }

  return result;
}

{
  v5 = *v3;
  v4 = v3[1];
  if (v4 < a3 || v5 > a3 || v5 > result || v4 < result)
  {
    __break(1u);
    goto LABEL_24;
  }

  v9 = a3 - result;
  if (__OFSUB__(a3, result))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (a2 >= 1)
  {
    if (v9 < 0 || v9 >= a2)
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (v9 <= 0 && v9 > a2)
  {
    return 0;
  }

LABEL_19:
  v10 = __OFADD__(result, a2);
  result += a2;
  if (v10)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  if (result < v5 || v4 < result)
  {
    goto LABEL_26;
  }

  return result;
}

{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24) >> 1;
  v6 = __OFSUB__(v5, v4);
  v7 = v5 - v4;
  if (v6)
  {
    __break(1u);
    goto LABEL_25;
  }

  v8 = *(v3 + 32);
  v6 = __OFADD__(v8, v7);
  v9 = v8 + v7;
  if (v6)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v9 < a3 || v8 > a3 || v8 > result || v9 < result)
  {
    goto LABEL_26;
  }

  v13 = a3 - result;
  if (a2 >= 1)
  {
    if (v13 < 0 || v13 >= a2)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (v13 <= 0 && v13 > a2)
  {
    return 0;
  }

LABEL_20:
  v6 = __OFADD__(result, a2);
  result += a2;
  if (v6)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  if (result < v8 || v9 < result)
  {
    goto LABEL_28;
  }

  return result;
}

{
  v4 = *(v3 + 40);
  if (v4 < a3 || (a3 | result) < 0 || v4 < result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - result;
  if (a2 >= 1)
  {
    if (v5 < 0 || v5 >= a2)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v5 <= 0 && v5 > a2)
  {
    return 0;
  }

LABEL_11:
  v6 = __OFADD__(result, a2);
  result += a2;
  if (v6)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (result < 0 || v4 < result)
  {
    goto LABEL_17;
  }

  return result;
}

{
  v4 = *(v3 + 16);
  if (v4 < a3 || (a3 | result) < 0 || v4 < result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - result;
  if (a2 >= 1)
  {
    if (v5 < 0 || v5 >= a2)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v5 <= 0 && v5 > a2)
  {
    return 0;
  }

LABEL_11:
  v6 = __OFADD__(result, a2);
  result += a2;
  if (v6)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (result < 0 || v4 < result)
  {
    goto LABEL_17;
  }

  return result;
}

unint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = *(*v3 + 16);
  if (v4 < result || v4 < a3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - result;
  if (a2 >= 1)
  {
    if (v6 < 0 || v6 >= a2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v6 <= 0 && v6 > a2)
  {
    return 0;
  }

LABEL_13:
  v7 = __OFADD__(result, a2);
  result += a2;
  if (v7)
  {
    goto LABEL_16;
  }

  if (result > v4)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

{
  v4 = *(*(v3 + 48) + 16);
  if (v4 < result || v4 < a3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - result;
  if (a2 >= 1)
  {
    if (v6 < 0 || v6 >= a2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v6 <= 0 && v6 > a2)
  {
    return 0;
  }

LABEL_13:
  v7 = __OFADD__(result, a2);
  result += a2;
  if (v7)
  {
    goto LABEL_16;
  }

  if (result > v4)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

{
  v4 = *(*(v3 + 8) + 16);
  if (v4 < result || v4 < a3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - result;
  if (a2 >= 1)
  {
    if (v6 < 0 || v6 >= a2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v6 <= 0 && v6 > a2)
  {
    return 0;
  }

LABEL_13:
  v7 = __OFADD__(result, a2);
  result += a2;
  if (v7)
  {
    goto LABEL_16;
  }

  if (result > v4)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

{
  v4 = *(*(v3 + 8) + 16);
  if (v4 < result)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v4 < a3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = a3 - result;
  if (a2 >= 1)
  {
    if (v5 < 0 || v5 >= a2)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (v5 <= 0 && v5 > a2)
  {
    return 0;
  }

LABEL_10:
  v6 = __OFADD__(result, a2);
  result += a2;
  if (v6)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result > v4)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

{
  v4 = *(*(v3 + 16) + 16);
  if (v4 < result || v4 < a3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - result;
  if (a2 >= 1)
  {
    if (v6 < 0 || v6 >= a2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v6 <= 0 && v6 > a2)
  {
    return 0;
  }

LABEL_13:
  v7 = __OFADD__(result, a2);
  result += a2;
  if (v7)
  {
    goto LABEL_16;
  }

  if (result > v4)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

void specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = *v3;
  v9 = v8;
  v10 = v8;
  if (v7 == 1)
  {
    v10 = _NSTextLineFragmentGetCTLine(v8);

    if (!v10)
    {
      if (!a1)
      {
        goto LABEL_8;
      }

LABEL_27:
      __break(1u);
      goto LABEL_28;
    }
  }

  RunCount = CTLineGetRunCount();

  if (a1 < 0 || RunCount < a1)
  {
    goto LABEL_27;
  }

  if ((v7 & 1) == 0)
  {
    v12 = v9;
    goto LABEL_9;
  }

LABEL_8:
  v13 = v9;
  v12 = _NSTextLineFragmentGetCTLine(v13);

  if (v12)
  {
LABEL_9:
    v14 = CTLineGetRunCount();

    if (a3 < 0)
    {
      goto LABEL_28;
    }

    goto LABEL_12;
  }

  v14 = 0;
  if (a3 < 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_12:
  if (v14 < a3)
  {
    goto LABEL_28;
  }

  v15 = a3 - a1;
  if (a2 < 1)
  {
    if (v15 <= 0 && v15 > a2)
    {
      return;
    }
  }

  else if ((v15 & 0x8000000000000000) == 0 && v15 < a2)
  {
    return;
  }

  v16 = __OFADD__(a1, a2);
  v17 = a1 + a2;
  if (v16)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }

  v18 = v9;
  v19 = v18;
  if (!v7 || (v20 = _NSTextLineFragmentGetCTLine(v18), v19, (v19 = v20) != 0))
  {
    v20 = CTLineGetRunCount();
  }

  if (v17 < 0 || v20 < v17)
  {
    goto LABEL_30;
  }
}

void specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(CFIndex a1, uint64_t a2, CFIndex a3)
{
  v6 = CTLineGetRunAtIndex();
  GlyphCount = CTRunGetGlyphCount(v6);

  if (a1 < 0 || GlyphCount < a1)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = CTLineGetRunAtIndex();
  v9 = CTRunGetGlyphCount(v8);

  if (a3 < 0 || v9 < a3)
  {
    goto LABEL_17;
  }

  v10 = a3 - a1;
  if (a2 < 1)
  {
    if (v10 > 0 || v10 <= a2)
    {
LABEL_12:
      v11 = __OFADD__(a1, a2);
      v12 = a1 + a2;
      if (!v11)
      {
        v13 = CTLineGetRunAtIndex();
        v14 = CTRunGetGlyphCount(v13);

        if ((v12 & 0x8000000000000000) == 0 && v14 >= v12)
        {
          return;
        }

LABEL_19:
        __break(1u);
        return;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }
  }

  else if (v10 < 0 || v10 >= a2)
  {
    goto LABEL_12;
  }
}

unint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = *v3;
  result = swift_beginAccess();
  v9 = *(*(v7 + 160) + 16);
  if (v9 < a1)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v9 < a3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = a3 - a1;
  if (a2 >= 1)
  {
    if (v10 < 0 || v10 >= a2)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (v10 <= 0 && v10 > a2)
  {
    return 0;
  }

LABEL_10:
  result = a1 + a2;
  if (__OFADD__(a1, a2))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result > v9)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*a4 + 88);
  result = v7();
  if (a1 < 0 || result < a1)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = v7();
  if (a3 < 0 || result < a3)
  {
    goto LABEL_17;
  }

  v9 = a3 - a1;
  if (a2 >= 1)
  {
    if (v9 < 0 || v9 >= a2)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v9 <= 0 && v9 > a2)
  {
    return 0;
  }

LABEL_12:
  v11 = __OFADD__(a1, a2);
  v10 = a1 + a2;
  if (v11)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = v7();
  if ((v10 & 0x8000000000000000) == 0 && result >= v10)
  {
    return v10;
  }

LABEL_19:
  __break(1u);
  return result;
}

__n128 _ViewListInputs.init(_:options:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  *(a3 + 64) = *MEMORY[0x1E698D3F8];
  *(a3 + 72) = MEMORY[0x1E69E7CD0];
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  swift_weakInit();
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = -1;
  v6 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v6;
  result = *(a1 + 32);
  *(a3 + 32) = result;
  *(a3 + 48) = 0;
  *(a3 + 56) = v5;
  return result;
}

uint64_t _ViewListCountInputs.subscript.setter(uint64_t a1, Swift::Int a2, uint64_t a3, uint64_t a4)
{
  specialized _ViewListCountInputs.subscript.setter(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 8);

  return v6(a1, AssociatedTypeWitness);
}

unint64_t _ViewListInputs.traits.getter()
{
  LODWORD(v1) = *(v0 + 64);
  v2 = v1 == *MEMORY[0x1E698D3F8];
  if (v1 == *MEMORY[0x1E698D3F8])
  {
    v1 = 0;
  }

  else
  {
    v1 = v1;
  }

  return v1 | (v2 << 32);
}

__n128 _ViewListOutputs.init(_:nextImplicitID:staticCount:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v5;
  result = *(a1 + 25);
  *(a5 + 25) = result;
  *(a5 + 48) = a2;
  *(a5 + 56) = a3;
  *(a5 + 64) = a4 & 1;
  return result;
}

uint64_t _ViewListInputs.traits.setter(uint64_t result)
{
  v2 = *MEMORY[0x1E698D3F8];
  if ((result & 0x100000000) == 0)
  {
    v2 = result;
  }

  *(v1 + 64) = v2;
  return result;
}

uint64_t _s7SwiftUI29DefaultGeometryEffectProviderV7resolve6effect6origin4size15layoutDirectionAA11DisplayListV0E0Ox_So7CGPointVzSo6CGSizeVAA06LayoutL0OtFZAA010ScalePulseE033_5B41BB980C958F118A8AF82B3D90BAC0LLV_Tt4B5@<X0>(float64x2_t *a1@<X1>, char a2@<W2>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  ScalePulseEffect.effectValue(size:)(v26, a4, a5);
  if (a2)
  {
    v41 = 0xBFF0000000000000;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = xmmword_18DDAA020;
    v46 = a4;
    v47 = xmmword_18DDAB500;
    ProjectionTransform.concatenating(_:)(v26, v31);
    v37[0] = 0xBFF0000000000000;
    memset(&v37[1], 0, 24);
    v38 = xmmword_18DDAA020;
    v39 = a4;
    v40 = xmmword_18DDAB500;
    v13 = v32;
    ProjectionTransform.concatenating(_:)(v37, v32);
    v11 = v34;
    v12 = v33;
    v9 = v36;
    v10 = v35;
  }

  else
  {
    v9 = v30;
    v10 = v29;
    v12 = v27;
    v11 = v28;
    v13 = v26;
  }

  v14 = *v13;
  v24 = v9;
  v25 = v10;
  v22 = v11;
  v23 = v12;
  v21 = *v13;
  if (v12.f64[1] != 0.0 || v10.f64[0] != 0.0 || v9.f64[1] != 1.0)
  {
    v18 = vmulq_f64(vextq_s8(v9, v10, 8uLL), vextq_s8(v11, v9, 8uLL));
    v19 = vmulq_n_f64(v9, v11.f64[0]);
    v20 = vmulq_f64(v12, vsubq_f64(vextq_s8(v19, v19, 8uLL), vmulq_f64(v10, vzip2q_s64(v10, v11))));
    if (v20.f64[1] + v14 * vsubq_f64(v18, vdupq_laneq_s64(v18, 1)).f64[0] - v20.f64[0] != 0.0)
    {
      result = swift_allocObject();
      *(result + 16) = v21;
      *(result + 24) = v23;
      *(result + 40) = v22;
      *(result + 56) = v25;
      *(result + 72) = v24;
      v17 = 9;
      *(result + 88) = 1;
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (vmuld_lane_f64(v14, v11, 1) - vmuld_n_f64(v12.f64[0], v11.f64[0]) == 0.0)
  {
LABEL_11:
    _StringGuts.grow(_:)(28);
    MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD78650);
    _print_unlocked<A, B>(_:_:)();
    specialized static Log.externalWarning(_:)(0, 0xE000000000000000);

    result = 0;
LABEL_12:
    v17 = 20;
    goto LABEL_14;
  }

  v15.f64[0] = v12.f64[0];
  v15.f64[1] = *v13;
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v15, xmmword_18DDAB500), vceqq_f64(v11, xmmword_18DDAB500))))) & 1) == 0)
  {
    result = 0;
    *a1 = vaddq_f64(vextq_s8(v10, v9, 8uLL), *a1);
    goto LABEL_12;
  }

  result = swift_allocObject();
  *(result + 16) = v21;
  *(result + 24) = v23.f64[0];
  *(result + 32) = v22;
  *(result + 48) = vextq_s8(v25, v24, 8uLL);
  *(result + 88) = 0;
  v17 = 9;
LABEL_14:
  *a3 = result;
  *(a3 + 8) = 0;
  *(a3 + 12) = v17;
  return result;
}

uint64_t _s7SwiftUI29DefaultGeometryEffectProviderV7resolve6effect6origin4size15layoutDirectionAA11DisplayListV0E0Ox_So7CGPointVzSo6CGSizeVAA06LayoutL0OtFZAA17FlexStateModifier33_404CBE866CEDD57705E9BEB28E77402CLLV_Tt4B5@<X0>(double *a1@<X0>, float64x2_t *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[3];
  txa = a1[2];
  v13 = a5 * 0.5;
  v14 = a6 * 0.5;
  CGAffineTransformMakeTranslation(&t1, -(a5 * 0.5), -(a6 * 0.5));
  v16 = t1.tx;
  ty = t1.ty;
  v40 = *&t1.c;
  v43 = *&t1.a;
  CGAffineTransformMakeScale(&t1, v10, v11);
  v17 = *&t1.a;
  v18 = *&t1.c;
  v19 = *&t1.tx;
  *&t1.a = v43;
  *&t1.c = v40;
  t1.tx = v16;
  t1.ty = ty;
  *&t2.a = v17;
  *&t2.c = v18;
  *&t2.tx = v19;
  CGAffineTransformConcat(&v52, &t1, &t2);
  v20 = v52.tx;
  v21 = v52.ty;
  v41 = *&v52.c;
  v44 = *&v52.a;
  CGAffineTransformMakeTranslation(&t1, v13, v14);
  v22 = *&t1.a;
  v23 = *&t1.c;
  v24 = *&t1.tx;
  *&t1.a = v44;
  *&t1.c = v41;
  t1.tx = v20;
  t1.ty = v21;
  *&t2.a = v22;
  *&t2.c = v23;
  *&t2.tx = v24;
  CGAffineTransformConcat(&v52, &t1, &t2);
  v25 = v52.tx;
  v26 = v52.ty;
  v42 = *&v52.c;
  v45 = *&v52.a;
  CGAffineTransformMakeTranslation(&t1, txa, v12);
  v27 = *&t1.a;
  v28 = *&t1.c;
  v29 = *&t1.tx;
  *&t1.a = v45;
  *&t1.c = v42;
  t1.tx = v25;
  t1.ty = v26;
  *&t2.a = v27;
  *&t2.c = v28;
  *&t2.tx = v29;
  CGAffineTransformConcat(&v52, &t1, &t2);
  a = v52.a;
  b = v52.b;
  c = v52.c;
  d = v52.d;
  v34 = *&v52.tx;
  t2.a = v52.a;
  t2.b = v52.b;
  t2.c = 0.0;
  t2.d = v52.c;
  t2.tx = v52.d;
  t2.ty = 0.0;
  v56 = *&v52.tx;
  v57 = 0x3FF0000000000000;
  if (a3)
  {
    t1.a = -1.0;
    memset(&t1.b, 0, 24);
    *&t1.tx = xmmword_18DDAA020;
    v59 = a5;
    v60 = xmmword_18DDAB500;
    ProjectionTransform.concatenating(_:)(&t2, v48);
    v52.a = -1.0;
    memset(&v52.b, 0, 24);
    *&v52.tx = xmmword_18DDAA020;
    v53 = a5;
    v54 = xmmword_18DDAB500;
    ProjectionTransform.concatenating(_:)(&v52, v49);
    a = *v49;
    b = *&v49[1];
    v36 = *&v49[2];
    c = *&v49[3];
    d = *&v49[4];
    v37 = *&v49[5];
    v34 = v50;
    v35 = v51;
  }

  else
  {
    v35 = 1.0;
    v36 = 0.0;
    v37 = 0.0;
  }

  *tx = v34;
  if (v36 != 0.0 || v37 != 0.0 || v35 != 1.0)
  {
    if (v36 * (vmuld_lane_f64(c, v34, 1) - d * v34.f64[0]) + a * (d * v35 - vmuld_lane_f64(v37, v34, 1)) - b * (c * v35 - v37 * v34.f64[0]) != 0.0)
    {
      result = swift_allocObject();
      *(result + 16) = a;
      *(result + 24) = b;
      *(result + 32) = v36;
      *(result + 40) = c;
      *(result + 48) = d;
      *(result + 56) = v37;
      *(result + 64) = *tx;
      *(result + 80) = v35;
      v39 = 9;
      *(result + 88) = 1;
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (a * d - b * c == 0.0)
  {
LABEL_14:
    _StringGuts.grow(_:)(28);
    MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD78650);
    _print_unlocked<A, B>(_:_:)();
    specialized static Log.externalWarning(_:)(0, 0xE000000000000000);

    result = 0;
    v39 = 20;
    goto LABEL_17;
  }

  if (a == 1.0 && b == 0.0 && c == 0.0 && d == 1.0)
  {
    result = 0;
    *a2 = vaddq_f64(v34, *a2);
    v39 = 20;
  }

  else
  {
    result = swift_allocObject();
    *(result + 16) = a;
    *(result + 24) = b;
    *(result + 32) = c;
    *(result + 40) = d;
    *(result + 48) = *tx;
    v39 = 9;
    *(result + 88) = 0;
  }

LABEL_17:
  *a4 = result;
  *(a4 + 8) = 0;
  *(a4 + 12) = v39;
  return result;
}

uint64_t _s7SwiftUI29DefaultGeometryEffectProviderV7resolve6effect6origin4size15layoutDirectionAA11DisplayListV0E0Ox_So7CGPointVzSo6CGSizeVAA06LayoutL0OtFZAA020GlassAppearanceScaleE033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt4B5@<X0>(float64x2_t *a1@<X1>, char a2@<W2>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  GlassAppearanceScaleEffect.effectValue(size:)(v26, a4, a5);
  if (a2)
  {
    v41 = 0xBFF0000000000000;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = xmmword_18DDAA020;
    v46 = a4;
    v47 = xmmword_18DDAB500;
    ProjectionTransform.concatenating(_:)(v26, v31);
    v37[0] = 0xBFF0000000000000;
    memset(&v37[1], 0, 24);
    v38 = xmmword_18DDAA020;
    v39 = a4;
    v40 = xmmword_18DDAB500;
    v13 = v32;
    ProjectionTransform.concatenating(_:)(v37, v32);
    v11 = v34;
    v12 = v33;
    v9 = v36;
    v10 = v35;
  }

  else
  {
    v9 = v30;
    v10 = v29;
    v12 = v27;
    v11 = v28;
    v13 = v26;
  }

  v14 = *v13;
  v24 = v9;
  v25 = v10;
  v22 = v11;
  v23 = v12;
  v21 = *v13;
  if (v12.f64[1] != 0.0 || v10.f64[0] != 0.0 || v9.f64[1] != 1.0)
  {
    v18 = vmulq_f64(vextq_s8(v9, v10, 8uLL), vextq_s8(v11, v9, 8uLL));
    v19 = vmulq_n_f64(v9, v11.f64[0]);
    v20 = vmulq_f64(v12, vsubq_f64(vextq_s8(v19, v19, 8uLL), vmulq_f64(v10, vzip2q_s64(v10, v11))));
    if (v20.f64[1] + v14 * vsubq_f64(v18, vdupq_laneq_s64(v18, 1)).f64[0] - v20.f64[0] != 0.0)
    {
      result = swift_allocObject();
      *(result + 16) = v21;
      *(result + 24) = v23;
      *(result + 40) = v22;
      *(result + 56) = v25;
      *(result + 72) = v24;
      v17 = 9;
      *(result + 88) = 1;
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (vmuld_lane_f64(v14, v11, 1) - vmuld_n_f64(v12.f64[0], v11.f64[0]) == 0.0)
  {
LABEL_11:
    _StringGuts.grow(_:)(28);
    MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD78650);
    _print_unlocked<A, B>(_:_:)();
    specialized static Log.externalWarning(_:)(0, 0xE000000000000000);

    result = 0;
LABEL_12:
    v17 = 20;
    goto LABEL_14;
  }

  v15.f64[0] = v12.f64[0];
  v15.f64[1] = *v13;
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v15, xmmword_18DDAB500), vceqq_f64(v11, xmmword_18DDAB500))))) & 1) == 0)
  {
    result = 0;
    *a1 = vaddq_f64(vextq_s8(v10, v9, 8uLL), *a1);
    goto LABEL_12;
  }

  result = swift_allocObject();
  *(result + 16) = v21;
  *(result + 24) = v23.f64[0];
  *(result + 32) = v22;
  *(result + 48) = vextq_s8(v25, v24, 8uLL);
  *(result + 88) = 0;
  v17 = 9;
LABEL_14:
  *a3 = result;
  *(a3 + 8) = 0;
  *(a3 + 12) = v17;
  return result;
}

uint64_t _s7SwiftUI29DefaultGeometryEffectProviderV7resolve6effect6origin4size15layoutDirectionAA11DisplayListV0E0Ox_So7CGPointVzSo6CGSizeVAA06LayoutL0OtFZAA010_TransformE0V_Tt4B5@<X0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v8 = a1->f64[0];
  v7 = a1->f64[1];
  v10 = a1[1].f64[0];
  v9 = a1[1].f64[1];
  v11 = a1[2];
  v27[0] = *&a1->f64[0];
  *&v27[1] = v7;
  v27[2] = 0;
  *&v27[3] = v10;
  *&v27[4] = v9;
  v27[5] = 0;
  v28 = v11;
  v29 = 0x3FF0000000000000;
  if (a3)
  {
    v30 = 0xBFF0000000000000;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = xmmword_18DDAA020;
    v35 = a5;
    v36 = xmmword_18DDAB500;
    ProjectionTransform.concatenating(_:)(v27, v19);
    v23[0] = 0xBFF0000000000000;
    memset(&v23[1], 0, 24);
    v24 = xmmword_18DDAA020;
    v25 = a5;
    v26 = xmmword_18DDAB500;
    ProjectionTransform.concatenating(_:)(v23, v20);
    v8 = *v20;
    v7 = *&v20[1];
    v13 = *&v20[2];
    v10 = *&v20[3];
    v9 = *&v20[4];
    v14 = *&v20[5];
    v11 = v21;
    v12 = v22;
  }

  else
  {
    v12 = 1.0;
    v13 = 0.0;
    v14 = 0.0;
  }

  v18 = v11;
  if (v13 != 0.0 || v14 != 0.0 || v12 != 1.0)
  {
    if (v13 * (vmuld_lane_f64(v10, v11, 1) - v9 * v11.f64[0]) + v8 * (v9 * v12 - vmuld_lane_f64(v14, v11, 1)) - v7 * (v10 * v12 - v14 * v11.f64[0]) != 0.0)
    {
      result = swift_allocObject();
      *(result + 16) = v8;
      *(result + 24) = v7;
      *(result + 32) = v13;
      *(result + 40) = v10;
      *(result + 48) = v9;
      *(result + 56) = v14;
      *(result + 64) = v18;
      *(result + 80) = v12;
      v17 = 9;
      *(result + 88) = 1;
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (v8 * v9 - v7 * v10 == 0.0)
  {
LABEL_14:
    _StringGuts.grow(_:)(28);
    MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD78650);
    _print_unlocked<A, B>(_:_:)();
    specialized static Log.externalWarning(_:)(0, 0xE000000000000000);

    result = 0;
    v17 = 20;
    goto LABEL_17;
  }

  if (v8 == 1.0 && v7 == 0.0 && v10 == 0.0 && v9 == 1.0)
  {
    result = 0;
    *a2 = vaddq_f64(v11, *a2);
    v17 = 20;
  }

  else
  {
    result = swift_allocObject();
    *(result + 16) = v8;
    *(result + 24) = v7;
    *(result + 32) = v10;
    *(result + 40) = v9;
    *(result + 48) = v18;
    v17 = 9;
    *(result + 88) = 0;
  }

LABEL_17:
  *a4 = result;
  *(a4 + 8) = 0;
  *(a4 + 12) = v17;
  return result;
}

uint64_t _ViewListInputs.subscript.setter(uint64_t a1, Swift::Int a2, uint64_t a3, uint64_t a4)
{
  specialized _ViewInputs.subscript.setter(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 8);

  return v6(a1, AssociatedTypeWitness);
}

uint64_t _ViewListCountInputs.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0;
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 36);
  v4 = *(a1 + 56);

  result = outlined destroy of _ViewListInputs(a1);
  *(a2 + 8) = v4;
  return result;
}

uint64_t _ViewList_ID.init(implicitID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = MEMORY[0x1E69E7CC0];
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    *(a2 + 4) = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t *specialized RendererEffectDisplayList.value.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E698D3F8];
  v6 = MEMORY[0x1E69E7CC0];
  if (v2[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v8 = *Value;
    v44 = *(Value + 12) << 32;
    v7 = *(Value + 8) | 0x40000000;

    if (*(v8 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    *a2 = v6;
    *(a2 + 8) = 0;
    *(a2 + 12) = 0;
    return result;
  }

  v44 = 0;
  v7 = 0x40000000;
  v8 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v5)
  {
    __break(1u);
  }

  v42 = v7;
  v10 = AGCreateWeakAttribute();
  v39 = v9;
  v11 = v10;
  v38 = HIDWORD(v10);
  v12 = AGCreateWeakAttribute();
  v41 = a1;
  v13 = v12;
  v37 = HIDWORD(v12);
  v14 = AGCreateWeakAttribute();
  v15 = v14;
  v36 = HIDWORD(v14);
  v16 = AGCreateWeakAttribute();
  v17 = v16;
  v43 = a2;
  v18 = HIDWORD(v16);
  v19 = AGCreateWeakAttribute();
  v20 = v19;
  v21 = HIDWORD(v19);
  v22 = AGCreateWeakAttribute();
  v23 = v22;
  v40 = v8;
  v24 = HIDWORD(v22);
  _threadGeometryProxyData();
  *&v53 = __PAIR64__(v38, v11);
  *(&v53 + 1) = __PAIR64__(v37, v13);
  *&v54 = __PAIR64__(v36, v15);
  *(&v54 + 1) = __PAIR64__(v18, v17);
  *&v55 = __PAIR64__(v21, v20);
  *(&v55 + 1) = __PAIR64__(v24, v23);
  LODWORD(v56[0]) = v39;
  _setThreadGeometryProxyData();
  v25 = *AGGraphGetValue();
  AGGraphGetValue();
  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v26 = AGGraphGetValue();
  v27 = *v26;
  v28 = v26[1];
  v29 = AGGraphGetValue();
  v30 = v27 - *v29;
  v31 = v28 - v29[1];
  v32 = AGGraphGetValue();
  v33 = *v2;
  *&v47 = v30;
  *(&v47 + 1) = v31;
  v48 = *v32;
  *v50 = v41;
  *&v50[8] = v40;
  *&v50[16] = v42 | v44;
  *&v50[24] = v33;
  *&v49 = v39;
  *(&v49 + 1) = v25;
  LOBYTE(v53) = *(v2 + 36);
  DisplayList.Item.canonicalize(options:)(&v53);
  v51[2] = v49;
  v52[0] = *v50;
  *(v52 + 12) = *&v50[12];
  v51[0] = v47;
  v51[1] = v48;
  v45[2] = v49;
  v46[0] = *v50;
  *(v46 + 12) = *&v50[12];
  v45[0] = v47;
  v45[1] = v48;
  outlined init with copy of DisplayList.Item(v51, &v53);
  DisplayList.init(_:)(v45, v43);
  v55 = v49;
  v56[0] = *v50;
  *(v56 + 12) = *&v50[12];
  v53 = v47;
  v54 = v48;
  return outlined destroy of DisplayList.Item(&v53);
}

uint64_t *specialized RendererEffectDisplayList.value.getter@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v73 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E698D3F8];
  v5 = MEMORY[0x1E69E7CC0];
  if (v2[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v8 = *Value;
    v6 = *(Value + 12) << 32;
    v7 = *(Value + 8) | 0x40000000;

    if (*(v8 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    *a2 = v5;
    *(a2 + 8) = 0;
    *(a2 + 12) = 0;
    return result;
  }

  v6 = 0;
  v7 = 0x40000000;
  v8 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v4)
  {
    __break(1u);
  }

  v44 = a1;
  v10 = AGCreateWeakAttribute();
  v43 = v9;
  v11 = v10;
  v42 = HIDWORD(v10);
  v12 = AGCreateWeakAttribute();
  v13 = v12;
  v41 = HIDWORD(v12);
  v14 = AGCreateWeakAttribute();
  v15 = v14;
  v40 = HIDWORD(v14);
  v16 = AGCreateWeakAttribute();
  v45 = v6;
  v46 = v7;
  v17 = v16;
  v18 = HIDWORD(v16);
  v19 = AGCreateWeakAttribute();
  v20 = v19;
  v47 = v8;
  v21 = HIDWORD(v19);
  v22 = AGCreateWeakAttribute();
  v23 = v22;
  v24 = HIDWORD(v22);
  _threadGeometryProxyData();
  *&v69 = __PAIR64__(v42, v11);
  *(&v69 + 1) = __PAIR64__(v41, v13);
  *&v70 = __PAIR64__(v40, v15);
  *(&v70 + 1) = __PAIR64__(v18, v17);
  *&v71 = __PAIR64__(v21, v20);
  *(&v71 + 1) = __PAIR64__(v24, v23);
  LODWORD(v72[0]) = v43;
  _setThreadGeometryProxyData();
  v25 = AGGraphGetValue();
  v51 = v25[2];
  v52 = v25[3];
  v53 = v25[4];
  v49 = *v25;
  v50 = v25[1];
  AGGraphGetValue();
  v26 = swift_allocObject();
  v62 = v51;
  v63 = v52;
  v64 = v53;
  v60 = v49;
  v61 = v50;
  LOBYTE(v65) = v44;
  _s7SwiftUI14GraphicsFilterOWOi5_(&v60);
  v27 = v65;
  v26[5] = v64;
  v26[6] = v27;
  v26[7] = v66[0];
  *(v26 + 124) = *(v66 + 12);
  v28 = v61;
  v26[1] = v60;
  v26[2] = v28;
  v29 = v63;
  v26[3] = v62;
  v26[4] = v29;
  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v30 = AGGraphGetValue();
  v31 = *v30;
  v32 = v30[1];
  v33 = AGGraphGetValue();
  v34 = v31 - *v33;
  v35 = v32 - v33[1];

  v36 = AGGraphGetValue();
  v37 = *v2;
  *&v56 = v34;
  *(&v56 + 1) = v35;
  v57 = *v36;
  *v59 = 0xA00000000;
  *&v59[8] = v47;
  *&v59[16] = v46 | v45;
  *&v59[24] = v37;
  *&v58 = v43;
  *(&v58 + 1) = v26;
  LOBYTE(v69) = *(v2 + 36);
  DisplayList.Item.canonicalize(options:)(&v69);
  v67[2] = v58;
  v68[0] = *v59;
  *(v68 + 12) = *&v59[12];
  v67[0] = v56;
  v67[1] = v57;
  v54[2] = v58;
  v55[0] = *v59;
  *(v55 + 12) = *&v59[12];
  v54[0] = v56;
  v54[1] = v57;
  outlined init with copy of DisplayList.Item(v67, &v69);
  DisplayList.init(_:)(v54, a2);

  v71 = v58;
  v72[0] = *v59;
  *(v72 + 12) = *&v59[12];
  v69 = v56;
  v70 = v57;
  return outlined destroy of DisplayList.Item(&v69);
}

uint64_t *specialized RendererEffectDisplayList.value.getter@<X0>(void (*a1)(_OWORD *)@<X1>, uint64_t a2@<X8>)
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E698D3F8];
  v5 = MEMORY[0x1E69E7CC0];
  if (v2[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v8 = *Value;
    v6 = *(Value + 12) << 32;
    v7 = *(Value + 8) | 0x40000000;

    if (*(v8 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    *a2 = v5;
    *(a2 + 8) = 0;
    *(a2 + 12) = 0;
    return result;
  }

  v6 = 0;
  v7 = 0x40000000;
  v8 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v4)
  {
    __break(1u);
  }

  v43 = a1;
  v10 = AGCreateWeakAttribute();
  v42 = v9;
  v11 = v10;
  v41 = HIDWORD(v10);
  v12 = AGCreateWeakAttribute();
  v13 = v12;
  v40 = HIDWORD(v12);
  v14 = AGCreateWeakAttribute();
  v15 = v14;
  v39 = HIDWORD(v14);
  v16 = AGCreateWeakAttribute();
  v44 = v7;
  v45 = v6;
  v17 = v16;
  v18 = HIDWORD(v16);
  v19 = AGCreateWeakAttribute();
  v20 = v19;
  v46 = v8;
  v21 = HIDWORD(v19);
  v22 = AGCreateWeakAttribute();
  v23 = v22;
  v24 = HIDWORD(v22);
  _threadGeometryProxyData();
  *&v58 = __PAIR64__(v41, v11);
  *(&v58 + 1) = __PAIR64__(v40, v13);
  *&v59 = __PAIR64__(v39, v15);
  *(&v59 + 1) = __PAIR64__(v18, v17);
  *&v60 = __PAIR64__(v21, v20);
  *(&v60 + 1) = __PAIR64__(v24, v23);
  LODWORD(v61[0]) = v42;
  _setThreadGeometryProxyData();
  AGGraphGetValue();
  AGGraphGetValue();
  v25 = swift_allocObject();
  v43(v54);
  v26 = v54[5];
  v25[5] = v54[4];
  v25[6] = v26;
  v25[7] = v55[0];
  *(v25 + 124) = *(v55 + 12);
  v27 = v54[1];
  v25[1] = v54[0];
  v25[2] = v27;
  v28 = v54[3];
  v25[3] = v54[2];
  v25[4] = v28;
  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v29 = AGGraphGetValue();
  v30 = *v29;
  v31 = v29[1];
  v32 = AGGraphGetValue();
  v33 = v30 - *v32;
  v34 = v31 - v32[1];

  v35 = AGGraphGetValue();
  v36 = *v2;
  *&v50 = v33;
  *(&v50 + 1) = v34;
  v51 = *v35;
  *v53 = 0xA00000000;
  *&v53[8] = v46;
  *&v53[16] = v44 | v45;
  *&v53[24] = v36;
  *&v52 = v42;
  *(&v52 + 1) = v25;
  LOBYTE(v58) = *(v2 + 36);
  DisplayList.Item.canonicalize(options:)(&v58);
  v56[2] = v52;
  v57[0] = *v53;
  *(v57 + 12) = *&v53[12];
  v56[0] = v50;
  v56[1] = v51;
  v48[2] = v52;
  v49[0] = *v53;
  *(v49 + 12) = *&v53[12];
  v48[0] = v50;
  v48[1] = v51;
  outlined init with copy of DisplayList.Item(v56, &v58);
  DisplayList.init(_:)(v48, a2);

  v60 = v52;
  v61[0] = *v53;
  *(v61 + 12) = *&v53[12];
  v58 = v50;
  v59 = v51;
  return outlined destroy of DisplayList.Item(&v58);
}

{
  v63 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E698D3F8];
  v5 = MEMORY[0x1E69E7CC0];
  if (v2[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v8 = *Value;
    v6 = *(Value + 12) << 32;
    v7 = *(Value + 8) | 0x40000000;

    if (*(v8 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    *a2 = v5;
    *(a2 + 8) = 0;
    *(a2 + 12) = 0;
    return result;
  }

  v6 = 0;
  v7 = 0x40000000;
  v8 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v4)
  {
    __break(1u);
  }

  v44 = a1;
  v10 = AGCreateWeakAttribute();
  v43 = v9;
  v11 = v10;
  v42 = HIDWORD(v10);
  v12 = AGCreateWeakAttribute();
  v13 = v12;
  v41 = HIDWORD(v12);
  v14 = AGCreateWeakAttribute();
  v15 = v14;
  v40 = HIDWORD(v14);
  v16 = AGCreateWeakAttribute();
  v45 = v7;
  v46 = v6;
  v17 = v16;
  v18 = HIDWORD(v16);
  v19 = AGCreateWeakAttribute();
  v20 = v19;
  v47 = v8;
  v21 = HIDWORD(v19);
  v22 = AGCreateWeakAttribute();
  v23 = v22;
  v24 = HIDWORD(v22);
  _threadGeometryProxyData();
  *&v59 = __PAIR64__(v42, v11);
  *(&v59 + 1) = __PAIR64__(v41, v13);
  *&v60 = __PAIR64__(v40, v15);
  *(&v60 + 1) = __PAIR64__(v18, v17);
  *&v61 = __PAIR64__(v21, v20);
  *(&v61 + 1) = __PAIR64__(v24, v23);
  LODWORD(v62[0]) = v43;
  _setThreadGeometryProxyData();
  v25 = *AGGraphGetValue();
  AGGraphGetValue();
  v26 = swift_allocObject();
  *&v55[0] = v25;
  v44(v55);
  v27 = v55[5];
  v26[5] = v55[4];
  v26[6] = v27;
  v26[7] = v56[0];
  *(v26 + 124) = *(v56 + 12);
  v28 = v55[1];
  v26[1] = v55[0];
  v26[2] = v28;
  v29 = v55[3];
  v26[3] = v55[2];
  v26[4] = v29;
  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v30 = AGGraphGetValue();
  v31 = *v30;
  v32 = v30[1];
  v33 = AGGraphGetValue();
  v34 = v31 - *v33;
  v35 = v32 - v33[1];

  v36 = AGGraphGetValue();
  v37 = *v2;
  *&v51 = v34;
  *(&v51 + 1) = v35;
  v52 = *v36;
  *v54 = 0xA00000000;
  *&v54[8] = v47;
  *&v54[16] = v45 | v46;
  *&v54[24] = v37;
  *&v53 = v43;
  *(&v53 + 1) = v26;
  LOBYTE(v59) = *(v2 + 36);
  DisplayList.Item.canonicalize(options:)(&v59);
  v57[2] = v53;
  v58[0] = *v54;
  *(v58 + 12) = *&v54[12];
  v57[0] = v51;
  v57[1] = v52;
  v49[2] = v53;
  v50[0] = *v54;
  *(v50 + 12) = *&v54[12];
  v49[0] = v51;
  v49[1] = v52;
  outlined init with copy of DisplayList.Item(v57, &v59);
  DisplayList.init(_:)(v49, a2);

  v61 = v53;
  v62[0] = *v54;
  *(v62 + 12) = *&v54[12];
  v59 = v51;
  v60 = v52;
  return outlined destroy of DisplayList.Item(&v59);
}

double specialized closure #1 in RendererEffectDisplayList.value.getter@<D0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 16);
  v9 = *Value;
  AGGraphGetValue();
  v4 = swift_allocObject();
  v10 = v9;
  LODWORD(v11) = v3;
  _s7SwiftUI14GraphicsFilterOWOi15_(&v10);
  v5 = v15;
  v4[5] = v14;
  v4[6] = v5;
  v4[7] = v16[0];
  *(v4 + 124) = *(v16 + 12);
  v6 = v11;
  v4[1] = v10;
  v4[2] = v6;
  result = *&v12;
  v8 = v13;
  v4[3] = v12;
  v4[4] = v8;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return result;
}

uint64_t _ViewListCountInputs.base.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 4);
  static _GraphInputs.invalid.getter(a1);

  *a1 = v3;
  *(a1 + 36) = v4;
  return result;
}

uint64_t specialized CoordinateSpaceEvents.value.getter()
{
  type metadata accessor for [EventID : EventType]();
  v17 = *AGGraphGetValue();
  v0 = MEMORY[0x1E69E7DE0];
  type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for CoordinateSpaceGesture<CGFloat>, MEMORY[0x1E69E7DE0], type metadata accessor for CoordinateSpaceGesture);

  Value = AGGraphGetValue();
  outlined init with copy of [GlassContainer.Item](Value, v16, &lazy cache variable for type metadata for CoordinateSpaceGesture<CGFloat>, v0, type metadata accessor for CoordinateSpaceGesture);
  outlined init with copy of CoordinateSpace(v16, &v18);
  if (!LOBYTE(v21))
  {
    outlined destroy of CoordinateSpace(&v18);
LABEL_6:
    AGGraphClearUpdate();
    v2 = AGGraphGetValue();
    v3 = *v2;
    v4 = *(v2 + 8);
    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    v7 = *(v2 + 32);
    v8 = *(v2 + 40);

    AGGraphSetUpdate();
    AGGraphClearUpdate();
    type metadata accessor for CGPoint(0);
    v9 = AGGraphGetValue();
    v10 = *v9;
    v11 = v9[1];
    AGGraphSetUpdate();
    outlined init with copy of CoordinateSpace(v16, v13);
    v18 = v3;
    *&v19 = v4;
    *(&v19 + 1) = v10;
    *&v20 = v11;
    *(&v20 + 1) = v7 - (v10 - v5);
    v21 = v8 - (v11 - v6);
    specialized defaultConvertEventLocations<A>(_:coordinateSpace:transform:)(&v17, v13, &v18);
    outlined destroy of [GlassContainer.Item](v13, &lazy cache variable for type metadata for CoordinateSpace?, &type metadata for CoordinateSpace, MEMORY[0x1E69E6720], type metadata accessor for [_ViewList_ID]);

    goto LABEL_7;
  }

  if (LOBYTE(v21) == 1 || v20 | *(&v20 + 1) | v18 | *(&v19 + 1) | v19)
  {
    goto LABEL_6;
  }

  v14 = 0;
  memset(v13, 0, sizeof(v13));
  v15 = -1;
  v18 = 1;
  v19 = 0u;
  v20 = 0u;
  v21 = 0.0;
  specialized defaultConvertEventLocations<A>(_:coordinateSpace:transform:)(&v17, v13, &v18);
  outlined destroy of [GlassContainer.Item](v13, &lazy cache variable for type metadata for CoordinateSpace?, &type metadata for CoordinateSpace, MEMORY[0x1E69E6720], type metadata accessor for [_ViewList_ID]);
LABEL_7:
  outlined destroy of CoordinateSpace(v16);
  return v17;
}

__n128 specialized GestureDebug.Value.value.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  type metadata accessor for CGPoint(0);
  v33 = *AGGraphGetValue();
  v29.n128_u64[0] = 0;
  v27 = 0u;
  v28 = 0u;
  v29.n128_u8[8] = 2;
  Value = AGGraphGetValue();
  v6 = Value[1];
  v5 = Value[2];
  v34[0] = *Value;
  v34[1] = v6;
  v34[2] = v5;
  outlined init with copy of ViewTransform(v34, __src);
  specialized ApplyViewTransform.convert(to:transform:)(&v27, v34);
  outlined destroy of ViewTransform(v34);
  outlined destroy of CoordinateSpace(&v27);
  specialized GestureDebug.Value.childData.getter(__src);
  v7 = *(v1 + 20);
  type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for GesturePhase<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for GesturePhase);
  v8 = AGGraphGetValue();
  v9 = *(v8 + 33);
  if ((v9 - 1) >= 2)
  {
    v32 = !*(v8 + 33) && *(v8 + 16) == 1;
  }

  v10 = v32;
  v11 = *AGGraphGetValue();
  v12 = v33;
  v25 = *AGGraphGetValue();
  if (*(v2 + 16) == *MEMORY[0x1E698D3F8])
  {
    v13 = 3;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
  }

  else
  {
    type metadata accessor for ArrayWith2Inline<(String, String)>(0);
    v14 = AGGraphGetValue();
    v27 = *v14;
    v16 = *(v14 + 32);
    v15 = *(v14 + 48);
    v17 = *(v14 + 16);
    v31 = *(v14 + 64);
    v29 = v16;
    v30 = v15;
    v28 = v17;
    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(&v27, v26, type metadata accessor for ArrayWith2Inline<(String, String)>);
    v21 = v27;
    v22 = v30;
    v23 = v29;
    v24 = v28;
    v13 = v31;
  }

  v18 = *(v2 + 8);
  *a1 = *v2;
  *(a1 + 8) = v18;
  v19 = swift_allocObject();
  memcpy((v19 + 16), __src, 0x121uLL);
  *(a1 + 136) = v19;
  *(a1 + 16) = v10;
  *(a1 + 17) = v9;
  *(a1 + 20) = v7;
  *(a1 + 24) = v11;
  *(a1 + 32) = v12;
  *(a1 + 48) = v25;
  *(a1 + 64) = v21;
  *(a1 + 80) = v24;
  result = v23;
  *(a1 + 96) = v23;
  *(a1 + 112) = v22;
  *(a1 + 128) = v13;
  return result;
}

{
  v2 = v1;
  type metadata accessor for CGPoint(0);
  v33 = *AGGraphGetValue();
  v29.n128_u64[0] = 0;
  v27 = 0u;
  v28 = 0u;
  v29.n128_u8[8] = 2;
  Value = AGGraphGetValue();
  v6 = Value[1];
  v5 = Value[2];
  v34[0] = *Value;
  v34[1] = v6;
  v34[2] = v5;
  outlined init with copy of ViewTransform(v34, __src);
  specialized ApplyViewTransform.convert(to:transform:)(&v27, v34);
  outlined destroy of ViewTransform(v34);
  outlined destroy of CoordinateSpace(&v27);
  specialized GestureDebug.Value.childData.getter(__src);
  v7 = *(v1 + 20);
  type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for GesturePhase<SpatialEvent>, &type metadata for SpatialEvent, type metadata accessor for GesturePhase);
  v8 = AGGraphGetValue();
  v9 = *(v8 + 81);
  if ((v9 - 1) >= 2)
  {
    v32 = !*(v8 + 81) && *(v8 + 16) == 1;
  }

  v10 = v32;
  v11 = *AGGraphGetValue();
  v12 = v33;
  v25 = *AGGraphGetValue();
  if (*(v2 + 16) == *MEMORY[0x1E698D3F8])
  {
    v13 = 3;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
  }

  else
  {
    type metadata accessor for ArrayWith2Inline<(String, String)>(0);
    v14 = AGGraphGetValue();
    v27 = *v14;
    v16 = *(v14 + 32);
    v15 = *(v14 + 48);
    v17 = *(v14 + 16);
    v31 = *(v14 + 64);
    v29 = v16;
    v30 = v15;
    v28 = v17;
    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(&v27, v26, type metadata accessor for ArrayWith2Inline<(String, String)>);
    v21 = v27;
    v22 = v30;
    v23 = v29;
    v24 = v28;
    v13 = v31;
  }

  v18 = *(v2 + 8);
  *a1 = *v2;
  *(a1 + 8) = v18;
  v19 = swift_allocObject();
  memcpy((v19 + 16), __src, 0x121uLL);
  *(a1 + 136) = v19;
  *(a1 + 16) = v10;
  *(a1 + 17) = v9;
  *(a1 + 20) = v7;
  *(a1 + 24) = v11;
  *(a1 + 32) = v12;
  *(a1 + 48) = v25;
  *(a1 + 64) = v21;
  *(a1 + 80) = v24;
  result = v23;
  *(a1 + 96) = v23;
  *(a1 + 112) = v22;
  *(a1 + 128) = v13;
  return result;
}

{
  v2 = v1;
  type metadata accessor for CGPoint(0);
  v33 = *AGGraphGetValue();
  v29.n128_u64[0] = 0;
  v27 = 0u;
  v28 = 0u;
  v29.n128_u8[8] = 2;
  Value = AGGraphGetValue();
  v6 = Value[1];
  v5 = Value[2];
  v34[0] = *Value;
  v34[1] = v6;
  v34[2] = v5;
  outlined init with copy of ViewTransform(v34, __src);
  specialized ApplyViewTransform.convert(to:transform:)(&v27, v34);
  outlined destroy of ViewTransform(v34);
  outlined destroy of CoordinateSpace(&v27);
  specialized GestureDebug.Value.childData.getter(__src);
  v7 = *(v1 + 20);
  type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GesturePhase);
  v8 = AGGraphGetValue();
  v9 = v8[1];
  if ((v9 - 1) >= 2)
  {
    if (v8[1] || (*v8 & 1) != 0)
    {
      v32 = *v8;
    }

    else
    {
      v32 = 0;
    }
  }

  v10 = v32;
  v11 = *AGGraphGetValue();
  v12 = v33;
  v25 = *AGGraphGetValue();
  if (*(v2 + 16) == *MEMORY[0x1E698D3F8])
  {
    v13 = 3;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
  }

  else
  {
    type metadata accessor for ArrayWith2Inline<(String, String)>(0);
    v14 = AGGraphGetValue();
    v27 = *v14;
    v16 = *(v14 + 32);
    v15 = *(v14 + 48);
    v17 = *(v14 + 16);
    v31 = *(v14 + 64);
    v29 = v16;
    v30 = v15;
    v28 = v17;
    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(&v27, v26, type metadata accessor for ArrayWith2Inline<(String, String)>);
    v21 = v27;
    v22 = v30;
    v23 = v29;
    v24 = v28;
    v13 = v31;
  }

  v18 = *(v2 + 8);
  *a1 = *v2;
  *(a1 + 8) = v18;
  v19 = swift_allocObject();
  memcpy((v19 + 16), __src, 0x121uLL);
  *(a1 + 136) = v19;
  *(a1 + 16) = v10;
  *(a1 + 17) = v9;
  *(a1 + 20) = v7;
  *(a1 + 24) = v11;
  *(a1 + 32) = v12;
  *(a1 + 48) = v25;
  *(a1 + 64) = v21;
  *(a1 + 80) = v24;
  result = v23;
  *(a1 + 96) = v23;
  *(a1 + 112) = v22;
  *(a1 + 128) = v13;
  return result;
}

double specialized GestureDebug.Value.value.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = specialized GestureDebug.Value.value.getter(&lazy cache variable for type metadata for GesturePhase<CGFloat>, MEMORY[0x1E69E7DE0], a1).n128_u64[0];
  return result;
}

{
  *&result = specialized GestureDebug.Value.value.getter(&lazy cache variable for type metadata for GesturePhase<Double>, MEMORY[0x1E69E63B0], a1).n128_u64[0];
  return result;
}

__n128 specialized GestureDebug.Value.value.getter@<Q0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v3;
  type metadata accessor for CGPoint(0);
  v37 = *AGGraphGetValue();
  v33.n128_u64[0] = 0;
  v31 = 0u;
  v32 = 0u;
  v33.n128_u8[8] = 2;
  Value = AGGraphGetValue();
  v10 = Value[1];
  v9 = Value[2];
  v38[0] = *Value;
  v38[1] = v10;
  v38[2] = v9;
  outlined init with copy of ViewTransform(v38, __src);
  specialized ApplyViewTransform.convert(to:transform:)(&v31, v38);
  outlined destroy of ViewTransform(v38);
  outlined destroy of CoordinateSpace(&v31);
  specialized GestureDebug.Value.childData.getter(__src);
  v11 = *(v3 + 20);
  type metadata accessor for [_ViewList_ID](0, a1, a2, type metadata accessor for GesturePhase);
  v12 = AGGraphGetValue();
  v13 = *(v12 + 9);
  if ((v13 - 1) >= 2)
  {
    v36 = !*(v12 + 9) && (*(v12 + 8) & 1) != 0;
  }

  v14 = v36;
  v15 = *AGGraphGetValue();
  v16 = v37;
  v29 = *AGGraphGetValue();
  if (*(v6 + 16) == *MEMORY[0x1E698D3F8])
  {
    v17 = 3;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
  }

  else
  {
    type metadata accessor for ArrayWith2Inline<(String, String)>(0);
    v18 = AGGraphGetValue();
    v31 = *v18;
    v20 = *(v18 + 32);
    v19 = *(v18 + 48);
    v21 = *(v18 + 16);
    v35 = *(v18 + 64);
    v33 = v20;
    v34 = v19;
    v32 = v21;
    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(&v31, v30, type metadata accessor for ArrayWith2Inline<(String, String)>);
    v25 = v31;
    v26 = v34;
    v27 = v33;
    v28 = v32;
    v17 = v35;
  }

  v22 = *(v6 + 8);
  *a3 = *v6;
  *(a3 + 8) = v22;
  v23 = swift_allocObject();
  memcpy((v23 + 16), __src, 0x121uLL);
  *(a3 + 136) = v23;
  *(a3 + 16) = v14;
  *(a3 + 17) = v13;
  *(a3 + 20) = v11;
  *(a3 + 24) = v15;
  *(a3 + 32) = v16;
  *(a3 + 48) = v29;
  *(a3 + 64) = v25;
  *(a3 + 80) = v28;
  result = v27;
  *(a3 + 96) = v27;
  *(a3 + 112) = v26;
  *(a3 + 128) = v17;
  return result;
}

void *specialized GestureDebug.Value.childData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *MEMORY[0x1E698D3F8];
  if (*(v1 + 40) == *MEMORY[0x1E698D3F8])
  {
    _s7SwiftUI12GestureDebugO4DataVSgWOi0_(&v62);
  }

  else
  {
    Value = AGGraphGetValue();
    v53 = *Value;
    v5 = Value[4];
    v7 = Value[1];
    v6 = Value[2];
    v56 = Value[3];
    v57 = v5;
    v54 = v7;
    v55 = v6;
    v8 = Value[8];
    v10 = Value[5];
    v9 = Value[6];
    v60 = Value[7];
    v61 = v8;
    v58 = v10;
    v59 = v9;
    memmove(v34, Value, 0x90uLL);
    _ViewInputs.base.modify(v34, v11);
    outlined init with copy of GestureDebug.Data(&v53, &v62);
    v68 = v34[6];
    v69 = v34[7];
    v70 = v34[8];
    v64 = v34[2];
    v65 = v34[3];
    v66 = v34[4];
    v67 = v34[5];
    v62 = v34[0];
    v63 = v34[1];
  }

  if (*(v1 + 44) == v3)
  {
    _s7SwiftUI12GestureDebugO4DataVSgWOi0_(&v53);
  }

  else
  {
    v12 = AGGraphGetValue();
    v44 = *v12;
    v13 = v12[4];
    v15 = v12[1];
    v14 = v12[2];
    v47 = v12[3];
    v48 = v13;
    v45 = v15;
    v46 = v14;
    v16 = v12[8];
    v18 = v12[5];
    v17 = v12[6];
    v51 = v12[7];
    v52 = v16;
    v49 = v18;
    v50 = v17;
    memmove(v34, v12, 0x90uLL);
    _ViewInputs.base.modify(v34, v19);
    outlined init with copy of GestureDebug.Data(&v44, &v53);
    v59 = v34[6];
    v60 = v34[7];
    v61 = v34[8];
    v55 = v34[2];
    v56 = v34[3];
    v57 = v34[4];
    v58 = v34[5];
    v53 = v34[0];
    v54 = v34[1];
  }

  v50 = v68;
  v51 = v69;
  v52 = v70;
  v46 = v64;
  v47 = v65;
  v48 = v66;
  v49 = v67;
  v44 = v62;
  v45 = v63;
  if (_s7SwiftUI15ModifiedContentVyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0eF0O6EffectVGAK15DisplayMaterialV2IDVACyAA0eK4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA010TransitionY3KeyVGGGGAA0eF18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGSgWOg(&v44) == 1)
  {
    v41 = v59;
    v42 = v60;
    v43 = v61;
    v37 = v55;
    v38 = v56;
    v39 = v57;
    v40 = v58;
    v35 = v53;
    v36 = v54;
    if (_s7SwiftUI15ModifiedContentVyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0eF0O6EffectVGAK15DisplayMaterialV2IDVACyAA0eK4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA010TransitionY3KeyVGGGGAA0eF18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGSgWOg(&v35) == 1)
    {
      _s7SwiftUI16ArrayWith2InlineV7StorageOyAA12GestureDebugO4DataV_GWOi2_(v34);
      return memcpy(a1, v34, 0x121uLL);
    }

    v34[6] = v41;
    v34[7] = v42;
    v34[8] = v43;
    v34[2] = v37;
    v34[3] = v38;
    v34[4] = v39;
    v34[5] = v40;
    v21 = v35;
    v20 = v36;
LABEL_13:
    v34[0] = v21;
    v34[1] = v20;
    _s7SwiftUI16ArrayWith2InlineV7StorageOyAA12GestureDebugO4DataV_GWOi_(v34);
    return memcpy(a1, v34, 0x121uLL);
  }

  v41 = v59;
  v42 = v60;
  v43 = v61;
  v37 = v55;
  v38 = v56;
  v39 = v57;
  v40 = v58;
  v35 = v53;
  v36 = v54;
  if (_s7SwiftUI15ModifiedContentVyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0eF0O6EffectVGAK15DisplayMaterialV2IDVACyAA0eK4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA010TransitionY3KeyVGGGGAA0eF18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGSgWOg(&v35) == 1)
  {
    v34[6] = v50;
    v34[7] = v51;
    v34[8] = v52;
    v34[2] = v46;
    v34[3] = v47;
    v34[4] = v48;
    v34[5] = v49;
    v21 = v44;
    v20 = v45;
    goto LABEL_13;
  }

  v23 = v51;
  a1[6] = v50;
  a1[7] = v23;
  v24 = v47;
  a1[2] = v46;
  a1[3] = v24;
  v25 = v49;
  a1[4] = v48;
  a1[5] = v25;
  v26 = v45;
  *a1 = v44;
  a1[1] = v26;
  v27 = v41;
  v28 = v42;
  v29 = v39;
  a1[14] = v40;
  a1[15] = v27;
  v30 = v43;
  a1[16] = v28;
  a1[17] = v30;
  v31 = v37;
  v32 = v38;
  v33 = v35;
  a1[10] = v36;
  a1[11] = v31;
  a1[12] = v32;
  a1[13] = v29;
  a1[8] = v52;
  a1[9] = v33;
  return _s7SwiftUI16ArrayWith2InlineV7StorageOyAA12GestureDebugO4DataV_GWOi0_(a1);
}

Swift::Void __swiftcall _ViewList_IteratorStyle.alignToNextGranularityMultiple(_:)(Swift::Int *a1)
{
  v2 = *v1 >> 1;
  if (v2 != 1)
  {
    if (*v1 < 2uLL)
    {
      __break(1u);
    }

    else
    {
      v3 = *a1;
      v4 = *a1 % v2;
      if (!v4)
      {
        return;
      }

      v5 = __OFSUB__(v2, v4);
      v6 = v2 - v4;
      if (!v5)
      {
        v5 = __OFADD__(v3, v6);
        v7 = v3 + v6;
        if (!v5)
        {
          *a1 = v7;
          return;
        }

LABEL_10:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_10;
  }
}

Swift::Void __swiftcall _ViewList_IteratorStyle.alignToPreviousGranularityMultiple(_:)(Swift::Int *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *v1 >> 1;
    if (v3 != 1)
    {
      if (v3)
      {
        v4 = v2 % v3;
        v5 = __OFSUB__(v2, v4);
        v6 = v2 - v4;
        if (!v5)
        {
          *a1 = v6;
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }
}

__n128 _ViewListInputs.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 64) = *MEMORY[0x1E698D3F8];
  *(a2 + 72) = MEMORY[0x1E69E7CD0];
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  swift_weakInit();
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = -1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

uint64_t ViewList.applyIDs(from:transform:to:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v11 = 2;
  v9 = v6;
  v10 = v7;
  return ViewList.applyIDs(from:style:listAttribute:transform:to:)(a1, &v11, 0x100000000uLL, &v9, a3, a4, a5, a6) & 1;
}

unint64_t _ViewList_Sublist.appendViewIDs(into:)(unint64_t result)
{
  v2 = *v1;
  if (*v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = v1[1];
  if (v3 < 0xFFFFFFFF80000000)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v3 > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v3 < v2)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v4 = v1[3];
  v9[0] = v1[2];
  v9[1] = v4;

  v5 = _ViewList_ID.Canonical.init(id:)(v9, v10);
  if (!v11)
  {
    return HeterogeneousViewIDsAccumulator.appendWithoutExplicitID(indices:implicitID:)(v2 | (v3 << 32), -1);
  }

  (*(*v11 + 104))(v12, v5);

  outlined init with take of AnyTrackedValue(v12, v13);
  v6 = v14;
  v7 = v15;
  v8 = __swift_project_boxed_opaque_existential_1(v13, v14);
  HeterogeneousViewIDsAccumulator.append<A>(indices:implicitID:explicitID:)(v2 | (v3 << 32), -1, v8, v6, v7);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t _ViewList_Section.appendViewIDs(into:)(uint64_t result)
{
  v2 = result;
  v3 = *(v1 + 8);
  if (*(v1 + 24) == 1)
  {
    if (*(v3 + 16))
    {
      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v3 + 32, v15, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
      outlined init with take of AnyTrackedValue(v15, v11);
      v4 = v12;
      v5 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      (*(v5 + 48))(v2, v4, v5);
      return __swift_destroy_boxed_opaque_existential_1(v11);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v6 = *(v3 + 16);
    if (v6)
    {
      v7 = v3 + 32;
      do
      {
        outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v7, v15, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
        v8 = v16;
        outlined init with take of AnyTrackedValue(v15, v11);
        v14 = v8;
        v9 = v12;
        v10 = v13;
        __swift_project_boxed_opaque_existential_1(v11, v12);
        (*(v10 + 48))(v2, v9, v10);
        result = outlined destroy of (list: ViewList, attribute: Attribute<ViewList>)(v11, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
        v7 += 48;
        --v6;
      }

      while (v6);
    }
  }

  return result;
}

float64x2_t specialized UnaryPositionAwareChildGeometry.value.getter@<Q0>(double a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v5 = CurrentAttribute;
    v40 = *MEMORY[0x1E698D3F8];
    v6 = *AGGraphGetValue();

    Value = AGGraphGetValue();
    v20 = *Value;
    v21 = Value[1];
    if (one-time initialization token for lockAssertionsAreEnabled == -1)
    {
      goto LABEL_3;
    }
  }

  v43 = v20;
  v39 = v21;
  swift_once();
  v21 = v39;
  v20 = v43;
LABEL_3:
  v23 = lockAssertionsAreEnabled;
  if (lockAssertionsAreEnabled)
  {
    v37 = v21;
    v42 = v20;
    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    IsOwner = _MovableLockIsOwner(static Update._lock);
    v20 = v42;
    v21 = v37;
    if (!IsOwner)
    {
      goto LABEL_16;
    }
  }

  v45[0] = v20;
  v45[1] = v21;
  v44[0] = v5;
  v44[1] = v5;
  v44[2] = a2;
  v44[3] = HIDWORD(a3);
  v44[4] = a3;
  v44[5] = HIDWORD(a2);
  v44[6] = HIDWORD(a4);
  (*(*v6 + 160))(&v46, v45, v44);

  v7 = v46;
  v8 = v47;
  a1 = v48;
  LODWORD(v6) = v49;
  v10 = v50;
  v11 = v51;
  v12 = v52;
  v13 = v53;
  v9 = *AGGraphGetValue();
  LODWORD(a2) = *AGGraphGetValue();
  if (v40 == a4)
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    InputValue = &static LayoutComputer.defaultValue;
  }

  else
  {
    InputValue = AGGraphGetInputValue();
  }

  a3 = *InputValue;
  a4 = *(InputValue + 1);
  if (!v23)
  {
    goto LABEL_17;
  }

  v26 = one-time initialization token for _lock;

  if (v26 != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
LABEL_16:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_17:
  }

  v46 = v7;
  v47 = v8;
  v48 = a1;
  v49 = v6;
  v28 = (*(*a3 + 120))(&v46);
  v29 = v27;
  if (v8)
  {
    v30 = NAN;
  }

  else
  {
    v30 = v7;
  }

  v31 = a1;
  v32 = v12 - v10 * v28;
  v33 = v13 - v11 * v27;
  *a5 = v32;
  *(a5 + 8) = v33;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = v28;
  *(a5 + 40) = v29;
  if (v6)
  {
    v31 = NAN;
  }

  *(a5 + 48) = v30;
  *(a5 + 56) = v31;
  v41 = v33;
  if (a2)
  {
    v38 = v9 - CGRectGetMaxX(*(&v28 - 2));
    *a5 = v38;
  }

  else
  {
    v38 = v12 - v10 * v28;
  }

  type metadata accessor for CGPoint(0);
  v34 = AGGraphGetValue();
  v35.f64[0] = v38;
  v35.f64[1] = v41;
  result = vaddq_f64(v35, *v34);
  *a5 = result;
  return result;
}

uint64_t _ViewList_SubgraphElements.count.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t _ViewList_Elements.makeAllElements(inputs:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v11 = *(a1 + 48);
  v16[2] = *(a1 + 32);
  v16[3] = v11;
  v16[4] = *(a1 + 64);
  v17 = *(a1 + 80);
  v12 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v19 = 0;
  v15[2] = partial apply for thunk for @callee_guaranteed (@in_guaranteed _ViewInputs, @guaranteed @escaping @callee_guaranteed (@in_guaranteed _ViewInputs) -> (@out _ViewOutputs)) -> (@out _ViewOutputs?);
  v15[3] = v13;
  (*(a5 + 16))(&v18, &v19, v16, 0, _s7SwiftUI18_ViewList_ElementsPAAE07makeAllE06inputs11indirectMap4bodyAA01_C7OutputsVSgAA01_C6InputsV_AA017IndirectAttributeJ0CSgAjL_AiLctXEtFA2jL_AiLctcXEfU_AJ_SbtAL_AiLctXEfU_TA_0, v15, a4, a5);
  *a6 = v18;
  LOBYTE(a5) = swift_isEscapingClosureAtFileLocation();

  if (a5)
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized SecondaryChild.value.getter@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for ObservationTracking._AccessList();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v49 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v49 - v12;
  _s2os6LoggerVSgMaTm_1(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v60 = &v49 - v20;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v21 = static ObservationCenter._current;
  swift_beginAccess();
  v22 = pthread_getspecific(v21[2]);
  if (!v22)
  {
    v23 = swift_slowAlloc();
    pthread_setspecific(v21[2], v23);
    *(&v62 + 1) = type metadata accessor for ObservationCenter();
    v2 = v21[3];
    *&v61 = v2;
    outlined init with take of Any(&v61, v23);

    v22 = v23;
  }

  outlined init with copy of Any(v22, &v61);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v24 = v66;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v47 = *(a1 + 2);

    v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47 + 1, 1, a1);
    *(v24 + 24) = v48;

    a1 = v48;
    goto LABEL_9;
  }

  v2 = CurrentAttribute;
  v57 = a2;
  swift_beginAccess();
  v56 = *(v24 + 24);
  *(v24 + 24) = MEMORY[0x1E69E7CC0];
  (*(v6 + 56))(v18, 1, 1, v5);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v27 = *(StatusReg + 848);
  *(StatusReg + 848) = v18;
  specialized closure #1 in SecondaryChild.value.getter(a1, &v61);
  *(StatusReg + 848) = v27;
  v53 = *(&v61 + 1);
  v54 = v61;
  v55 = v62;
  v52 = v63;
  v51 = v64;
  v50 = v65;
  v28 = MEMORY[0x1E69E81D0];
  v29 = v18;
  v30 = v60;
  _s7SwiftUI10NamedImageO11_BitmapInfoVy_AC012WeakOrStrongD8ContentsOGWObTm_2(v29, v60, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], _s2os6LoggerVSgMaTm_1);
  _s2os6LoggerVSgWOcTm_0(v30, v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, v28);
  v31 = (*(v6 + 48))(v15, 1, v5);
  a2 = v57;
  if (v31 == 1)
  {
    _s2os6LoggerVSgWOhTm_0(v30, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0]);
    v32 = v15;
    goto LABEL_12;
  }

  v33 = v59;
  v49 = *(v6 + 32);
  v49(v59, v15, v5);
  (*(v6 + 16))(v58, v33, v5);
  swift_beginAccess();
  a1 = *(v24 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v24 + 24) = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v36 = *(a1 + 2);
  v35 = *(a1 + 3);
  if (v36 >= v35 >> 1)
  {
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v35 > 1, v36 + 1, 1, a1);
  }

  *(a1 + 2) = v36 + 1;
  v49(&a1[((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v36], v58, v5);
  *(v24 + 24) = a1;
  swift_endAccess();
  (*(v6 + 8))(v59, v5);
  v32 = v60;
LABEL_12:
  _s2os6LoggerVSgWOhTm_0(v32, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0]);
  v37 = v53;
  *a2 = v54;
  *(a2 + 8) = v37;
  *(a2 + 16) = v55;
  v38 = v51;
  *(a2 + 32) = v52;
  *(a2 + 40) = v38;
  *(a2 + 48) = v50;
  v39 = *(v24 + 24);
  v40 = *(v39 + 16);
  if (v40)
  {
    v43 = *(v6 + 16);
    v42 = v6 + 16;
    v41 = v43;
    v44 = v39 + ((*(v42 + 64) + 32) & ~*(v42 + 64));
    v45 = *(v42 + 56);
    v60 = *(v24 + 24);

    do
    {
      v41(v8, v44, v5);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v2, v8);
      (*(v42 - 8))(v8, v5);
      v44 += v45;
      --v40;
    }

    while (v40);
  }

  *(v24 + 24) = v56;
}

uint64_t specialized closure #1 in SecondaryChild.value.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = HIDWORD(a1);
  v32 = a1;
  type metadata accessor for _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>();
  Value = AGGraphGetValue();
  isEscapingClosureAtFileLocation = *Value;
  v5 = *(Value + 8);
  v29[0] = *Value;
  v29[1] = v5;
  v30 = *(Value + 16);
  if ((v7 & 2) != 0)
  {
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    MEMORY[0x1EEE9AC00](Value);
    v24[2] = &v37;
    v24[3] = partial apply for specialized closure #1 in closure #1 in SecondaryChild.value.getter;
    v24[4] = &v31;
    v24[5] = v29;
    v9 = objc_opt_self();

    if ([v9 isMainThread])
    {
      if (*MEMORY[0x1E698D3F8] == v3)
      {
        v10 = MEMORY[0x1E69E7CC0];
LABEL_14:
        v28 = v10;
        (isEscapingClosureAtFileLocation)(&v33, &v28);

        v27 = v33;
        v26 = v34;
        v25 = v35;
        v17 = v36;
        result = outlined consume of ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>?(v37, *(&v37 + 1), v38);
        v37 = v27;
        v38 = v26;
        v39 = v25;
        v40 = v17;
LABEL_15:
        v18 = v38;
        if (v38)
        {
          v20 = *(&v39 + 1);
          v19 = v40;
          v22 = *(&v38 + 1);
          v21 = v39;
          v23 = v37;
          *a2 = v37;
          *(a2 + 16) = v18;
          *(a2 + 24) = v22;
          *(a2 + 32) = v21;
          *(a2 + 40) = v20;
          *(a2 + 48) = v19;

          outlined consume of ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>?(v23, *(&v23 + 1), v18);
        }

        else
        {
          __break(1u);
        }

        return result;
      }
    }

    else
    {
      v12 = swift_allocObject();
      *(v12 + 16) = partial apply for specialized closure #1 in Attribute.syncMainIfReferences<A>(do:);
      *(v12 + 24) = v24;
      v13 = AGSubgraphGetCurrent();
      CurrentAttribute = AGGraphGetCurrentAttribute();
      *&v33 = partial apply for thunk for @callee_guaranteed () -> ();
      *(&v33 + 1) = v12;
      *&v34 = v13;
      DWORD2(v34) = CurrentAttribute;
      v15 = one-time initialization token for _lock;

      if (v15 != -1)
      {
        swift_once();
      }

      _MovableLockSyncMain(static Update._lock, &v33, @objc closure #1 in closure #1 in closure #1 in static Update.syncMain(_:));
      v16 = v34;

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for [Text.LayoutKey.AnchoredLayout], &type metadata for Text.LayoutKey.AnchoredLayout, MEMORY[0x1E69E62F8]);
    v10 = *AGGraphGetValue();

    goto LABEL_14;
  }

  if (*MEMORY[0x1E698D3F8] == v3)
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    type metadata accessor for [_ViewList_ID](0, &lazy cache variable for type metadata for [Text.LayoutKey.AnchoredLayout], &type metadata for Text.LayoutKey.AnchoredLayout, MEMORY[0x1E69E62F8]);
    v8 = *AGGraphGetValue();
  }

  *&v37 = v8;
  (isEscapingClosureAtFileLocation)(&v37);
}

void *_ViewList_SubgraphElements.retain()()
{

  v0 = _ViewList_SublistSubgraphStorage.retain()();

  return v0;
}

uint64_t ViewList.allViewIDs.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 40))();
  if (!result)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    MEMORY[0x1EEE9AC00](0);
    v6[2] = &v8;
    v10 = 2;
    v9 = 1;
    ViewList.applySublists(from:style:list:to:)(&v7, &v10, 0x100000000, partial apply for closure #1 in ViewList.allViewIDs.getter, v6, a1, a2);
    v5 = v8;
    type metadata accessor for _ViewList_ID._Views<[_ViewList_ID]>();
    result = swift_allocObject();
    *(result + 24) = v5;
    *(result + 16) = 1;
  }

  return result;
}

uint64_t ViewList.applyIDs(from:listAttribute:to:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = 2;
  v7 = 0;
  v8 = 0;
  return ViewList.applyIDs(from:style:listAttribute:transform:to:)(a1, &v9, a2 | ((BYTE4(a2) & 1) << 32), &v7, a3, a4, a5, a6) & 1;
}

uint64_t ViewList.firstOffset(of:)(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  v5 = 2;
  return ViewList.firstOffset(of:style:)(v6, &v5, a2, a3);
}

uint64_t static _ViewListOutputs.makeModifiedList(list:modifier:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
    lazy protocol witness table accessor for type _ViewListOutputs.ApplyModifiers and conformance _ViewListOutputs.ApplyModifiers();

    a1 = Attribute.init<A>(body:value:flags:update:)();
  }

  return a1;
}

__n128 specialized ContentResponderPathDataRule.value.getter@<Q0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = *AGGraphGetValue();
  }

  AGGraphGetValue();
  type metadata accessor for CGSize(0);

  Value = AGGraphGetValue();
  specialized ContentResponder.contentPath(size:kind:)(v5, v16, *Value, Value[1]);
  v14 = v16[1];
  v15 = v16[0];
  v7 = v17;

  v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v8);
  }

  if (v5 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v5;
  }

  v8[2] = v10 + 1;
  v12 = &v8[7 * v10];
  v12[4] = v11;
  result = v15;
  *(v12 + 7) = v14;
  *(v12 + 5) = v15;
  *(v12 + 72) = v7;
  *(v12 + 76) = a1;
  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = HIDWORD(a1);
  *(a3 + 12) = 0;
  *(a3 + 16) = v8;
  return result;
}

{
  if (*MEMORY[0x1E698D3F8] == a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = *AGGraphGetValue();
  }

  type metadata accessor for _ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>();
  Value = AGGraphGetValue();
  v7 = *Value;
  v8 = Value[1];
  v9 = Value[2];
  v10 = Value[3];
  type metadata accessor for CGSize(0);
  v11 = AGGraphGetValue();
  v12 = *v11;
  v13 = v11[1];
  if (v5 == 1)
  {
    goto LABEL_5;
  }

  if (one-time initialization token for v3 != -1)
  {
    swift_once();
  }

  v15 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    if (dyld_program_sdk_at_least())
    {
      goto LABEL_14;
    }

LABEL_5:
    specialized Shape.effectivePath(in:)(v24, 0.0, 0.0, v12, v13, v7, v8, v9, v10);
    v22 = v24[1];
    v23 = v24[0];
    v14 = v25;
    goto LABEL_15;
  }

  if (static Semantics.forced < v15)
  {
    goto LABEL_5;
  }

LABEL_14:
  v22 = 0u;
  v23 = 0u;
  v14 = 6;
LABEL_15:
  v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v18 = v16[2];
  v17 = v16[3];
  if (v18 >= v17 >> 1)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v16);
  }

  if (v5 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = v5;
  }

  v16[2] = v18 + 1;
  v20 = &v16[7 * v18];
  v20[4] = v19;
  result = v23;
  *(v20 + 7) = v22;
  *(v20 + 5) = v23;
  *(v20 + 72) = v14;
  *(v20 + 76) = a1;
  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = HIDWORD(a1);
  *(a3 + 12) = 0;
  *(a3 + 16) = v16;
  return result;
}

{
  if (*MEMORY[0x1E698D3F8] == a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = *AGGraphGetValue();
  }

  Value = AGGraphGetValue();
  v7 = Value[3];
  v9 = *Value;
  v8 = Value[1];
  v31[2] = Value[2];
  v31[3] = v7;
  v31[0] = v9;
  v31[1] = v8;
  v10 = Value[7];
  v12 = Value[4];
  v11 = Value[5];
  v31[6] = Value[6];
  v31[7] = v10;
  v31[4] = v12;
  v31[5] = v11;
  v14 = Value[9];
  v13 = Value[10];
  v15 = Value[8];
  *(v32 + 11) = *(Value + 171);
  v31[9] = v14;
  v32[0] = v13;
  v31[8] = v15;
  type metadata accessor for CGSize(0);
  outlined init with copy of Image.Resolved(v31, v29);
  v16 = AGGraphGetValue();
  v17 = *v16;
  v18 = v16[1];
  if (v5 == 1)
  {
    goto LABEL_5;
  }

  if (one-time initialization token for v3 != -1)
  {
    swift_once();
  }

  v20 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    if (dyld_program_sdk_at_least())
    {
      goto LABEL_14;
    }

LABEL_5:
    specialized ShapeStyledLeafView.contentPath(size:)(v29, v17, v18);
    v27 = v29[1];
    v28 = v29[0];
    v19 = v30;
    goto LABEL_15;
  }

  if (static Semantics.forced < v20)
  {
    goto LABEL_5;
  }

LABEL_14:
  v27 = 0u;
  v28 = 0u;
  v19 = 6;
LABEL_15:
  outlined destroy of Image.Resolved(v31);
  v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v23 = v21[2];
  v22 = v21[3];
  if (v23 >= v22 >> 1)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v21);
  }

  if (v5 <= 1)
  {
    v24 = 1;
  }

  else
  {
    v24 = v5;
  }

  v21[2] = v23 + 1;
  v25 = &v21[7 * v23];
  v25[4] = v24;
  result = v28;
  *(v25 + 7) = v27;
  *(v25 + 5) = v28;
  *(v25 + 72) = v19;
  *(v25 + 76) = a1;
  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = HIDWORD(a1);
  *(a3 + 12) = 0;
  *(a3 + 16) = v21;
  return result;
}

{
  if (*MEMORY[0x1E698D3F8] == a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = *AGGraphGetValue();
  }

  v6 = *(AGGraphGetValue() + 8);
  type metadata accessor for CGSize(0);

  Value = AGGraphGetValue();
  specialized ContentResponder.contentPath(size:kind:)(v5, v6, v17, *Value, Value[1]);
  v15 = v17[1];
  v16 = v17[0];
  v8 = v18;

  v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v9);
  }

  if (v5 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v5;
  }

  v9[2] = v11 + 1;
  v13 = &v9[7 * v11];
  v13[4] = v12;
  result = v16;
  *(v13 + 7) = v15;
  *(v13 + 5) = v16;
  *(v13 + 72) = v8;
  *(v13 + 76) = a1;
  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = HIDWORD(a1);
  *(a3 + 12) = 0;
  *(a3 + 16) = v9;
  return result;
}

{
  if (*MEMORY[0x1E698D3F8] == a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = *AGGraphGetValue();
  }

  type metadata accessor for _ShapeView<CombinedContentShape, ForegroundStyle>();
  v6 = *AGGraphGetValue();
  type metadata accessor for CGSize(0);

  Value = AGGraphGetValue();
  v8 = *Value;
  v9 = Value[1];
  if (v5 == 1)
  {
    goto LABEL_5;
  }

  if (one-time initialization token for v3 != -1)
  {
    swift_once();
  }

  v11 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    if (dyld_program_sdk_at_least())
    {
      goto LABEL_14;
    }

LABEL_5:
    specialized Shape.effectivePath(in:)(v6, v20, 0.0, 0.0, v8, v9);
    v18 = v20[1];
    v19 = v20[0];
    v10 = v21;
    goto LABEL_15;
  }

  if (static Semantics.forced < v11)
  {
    goto LABEL_5;
  }

LABEL_14:
  v18 = 0u;
  v19 = 0u;
  v10 = 6;
LABEL_15:

  v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v14 = v12[2];
  v13 = v12[3];
  if (v14 >= v13 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v12);
  }

  if (v5 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v5;
  }

  v12[2] = v14 + 1;
  v16 = &v12[7 * v14];
  v16[4] = v15;
  result = v19;
  *(v16 + 7) = v18;
  *(v16 + 5) = v19;
  *(v16 + 72) = v10;
  *(v16 + 76) = a1;
  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = HIDWORD(a1);
  *(a3 + 12) = 0;
  *(a3 + 16) = v12;
  return result;
}

{
  if (*MEMORY[0x1E698D3F8] == a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = *AGGraphGetValue();
  }

  type metadata accessor for _ShapeView<Rectangle._Inset, ForegroundStyle>();
  v6 = *AGGraphGetValue();
  type metadata accessor for CGSize(0);
  Value = AGGraphGetValue();
  v8 = *Value;
  v9 = *(Value + 8);
  if (v5 != 1)
  {
    if (one-time initialization token for v3 != -1)
    {
      swift_once();
    }

    v12 = static Semantics.v3;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      if (dyld_program_sdk_at_least())
      {
        goto LABEL_15;
      }
    }

    else if (static Semantics.forced >= v12)
    {
      goto LABEL_15;
    }
  }

  v25.origin.x = 0.0;
  v25.origin.y = 0.0;
  v25.size.width = v8;
  v25.size.height = v9;
  v26 = CGRectInset(v25, v6, v6);
  width = v26.size.width;
  x = v26.origin.x;
  height = v26.size.height;
  y = v26.origin.y;
  if (!CGRectIsNull(v26))
  {
    v10 = 0;
    v11.n128_f64[0] = width;
    v11.n128_f64[1] = height;
    v22 = v11;
    v11.n128_f64[0] = x;
    v11.n128_f64[1] = y;
    v24 = v11;
    goto LABEL_16;
  }

LABEL_15:
  v22 = 0u;
  v24 = 0u;
  v10 = 6;
LABEL_16:
  v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v15 = v13[2];
  v14 = v13[3];
  if (v15 >= v14 >> 1)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v13);
  }

  if (v5 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v5;
  }

  v13[2] = v15 + 1;
  v17 = &v13[7 * v15];
  v17[4] = v16;
  result = v24;
  *(v17 + 7) = v22;
  *(v17 + 5) = v24;
  *(v17 + 72) = v10;
  *(v17 + 76) = a1;
  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = HIDWORD(a1);
  *(a3 + 12) = 0;
  *(a3 + 16) = v13;
  return result;
}

{
  if (*MEMORY[0x1E698D3F8] == a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = *AGGraphGetValue();
  }

  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for AnimatedShape<Rectangle._Inset>, lazy protocol witness table accessor for type Rectangle._Inset and conformance Rectangle._Inset, &type metadata for Rectangle._Inset, type metadata accessor for AnimatedShape);
  v6 = *AGGraphGetValue();
  type metadata accessor for CGSize(0);
  Value = AGGraphGetValue();
  v8 = *Value;
  v9 = *(Value + 8);
  if (v5 != 1)
  {
    if (one-time initialization token for v3 != -1)
    {
      swift_once();
    }

    v12 = static Semantics.v3;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      if (dyld_program_sdk_at_least())
      {
        goto LABEL_15;
      }
    }

    else if (static Semantics.forced >= v12)
    {
      goto LABEL_15;
    }
  }

  v25.origin.x = 0.0;
  v25.origin.y = 0.0;
  v25.size.width = v8;
  v25.size.height = v9;
  v26 = CGRectInset(v25, v6, v6);
  width = v26.size.width;
  x = v26.origin.x;
  height = v26.size.height;
  y = v26.origin.y;
  if (!CGRectIsNull(v26))
  {
    v10 = 0;
    v11.n128_f64[0] = width;
    v11.n128_f64[1] = height;
    v22 = v11;
    v11.n128_f64[0] = x;
    v11.n128_f64[1] = y;
    v24 = v11;
    goto LABEL_16;
  }

LABEL_15:
  v22 = 0u;
  v24 = 0u;
  v10 = 6;
LABEL_16:
  v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v15 = v13[2];
  v14 = v13[3];
  if (v15 >= v14 >> 1)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v13);
  }

  if (v5 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v5;
  }

  v13[2] = v15 + 1;
  v17 = &v13[7 * v15];
  v17[4] = v16;
  result = v24;
  *(v17 + 7) = v22;
  *(v17 + 5) = v24;
  *(v17 + 72) = v10;
  *(v17 + 76) = a1;
  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = HIDWORD(a1);
  *(a3 + 12) = 0;
  *(a3 + 16) = v13;
  return result;
}

{
  if (*MEMORY[0x1E698D3F8] == a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = *AGGraphGetValue();
  }

  type metadata accessor for _ShapeView<AnyShape, ForegroundStyle>();
  v6 = *AGGraphGetValue();
  type metadata accessor for CGSize(0);

  v7 = *AGGraphGetValue();
  if (v5 == 1)
  {
    goto LABEL_5;
  }

  if (one-time initialization token for v3 != -1)
  {
    swift_once();
  }

  v9 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    if (dyld_program_sdk_at_least())
    {
      goto LABEL_14;
    }

LABEL_5:
    specialized Shape.effectivePath(in:)(v6, v18, v7);
    v16 = v18[1];
    v17 = v18[0];
    v8 = v19;
    goto LABEL_15;
  }

  if (static Semantics.forced < v9)
  {
    goto LABEL_5;
  }

LABEL_14:
  v16 = 0u;
  v17 = 0u;
  v8 = 6;
LABEL_15:

  v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v12 = v10[2];
  v11 = v10[3];
  if (v12 >= v11 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
  }

  if (v5 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v5;
  }

  v10[2] = v12 + 1;
  v14 = &v10[7 * v12];
  v14[4] = v13;
  result = v17;
  *(v14 + 7) = v16;
  *(v14 + 5) = v17;
  *(v14 + 72) = v8;
  *(v14 + 76) = a1;
  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = HIDWORD(a1);
  *(a3 + 12) = 0;
  *(a3 + 16) = v10;
  return result;
}

{
  if (*MEMORY[0x1E698D3F8] == a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = *AGGraphGetValue();
  }

  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for AnimatedShape<AnyShape>, lazy protocol witness table accessor for type AnyShape and conformance AnyShape, &type metadata for AnyShape, type metadata accessor for AnimatedShape);
  v6 = *AGGraphGetValue();
  type metadata accessor for CGSize(0);

  v7 = *AGGraphGetValue();
  if (v5 == 1)
  {
    goto LABEL_5;
  }

  if (one-time initialization token for v3 != -1)
  {
    swift_once();
  }

  v9 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    if (dyld_program_sdk_at_least())
    {
      goto LABEL_14;
    }

LABEL_5:
    specialized Shape.effectivePath(in:)(v6, v18, v7);
    v16 = v18[1];
    v17 = v18[0];
    v8 = v19;
    goto LABEL_15;
  }

  if (static Semantics.forced < v9)
  {
    goto LABEL_5;
  }

LABEL_14:
  v16 = 0u;
  v17 = 0u;
  v8 = 6;
LABEL_15:

  v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v12 = v10[2];
  v11 = v10[3];
  if (v12 >= v11 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
  }

  if (v5 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v5;
  }

  v10[2] = v12 + 1;
  v14 = &v10[7 * v12];
  v14[4] = v13;
  result = v17;
  *(v14 + 7) = v16;
  *(v14 + 5) = v17;
  *(v14 + 72) = v8;
  *(v14 + 76) = a1;
  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = HIDWORD(a1);
  *(a3 + 12) = 0;
  *(a3 + 16) = v10;
  return result;
}

{
  if (*MEMORY[0x1E698D3F8] == a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = *AGGraphGetValue();
  }

  type metadata accessor for _ShapeView<Ellipse._Inset, ForegroundStyle>();
  v6 = *AGGraphGetValue();
  type metadata accessor for CGSize(0);
  Value = AGGraphGetValue();
  v8 = *Value;
  v9 = *(Value + 8);
  if (v5 != 1)
  {
    if (one-time initialization token for v3 != -1)
    {
      swift_once();
    }

    v13 = static Semantics.v3;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      if (dyld_program_sdk_at_least())
      {
        goto LABEL_15;
      }
    }

    else if (static Semantics.forced >= v13)
    {
      goto LABEL_15;
    }
  }

  v26.origin.x = 0.0;
  v26.origin.y = 0.0;
  v26.size.width = v8;
  v26.size.height = v9;
  v27 = CGRectInset(v26, v6, v6);
  width = v27.size.width;
  x = v27.origin.x;
  height = v27.size.height;
  y = v27.origin.y;
  if (!CGRectIsNull(v27))
  {
    v28.size.width = width;
    v28.origin.x = x;
    v28.size.height = height;
    v28.origin.y = y;
    IsInfinite = CGRectIsInfinite(v28);
    v11.n128_f64[0] = width;
    v11.n128_f64[1] = height;
    v23 = v11;
    v11.n128_f64[0] = x;
    v11.n128_f64[1] = y;
    v25 = v11;
    v12 = !IsInfinite;
    goto LABEL_16;
  }

LABEL_15:
  v23 = 0u;
  v25 = 0u;
  v12 = 6;
LABEL_16:
  v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v14);
  }

  if (v5 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v5;
  }

  v14[2] = v16 + 1;
  v18 = &v14[7 * v16];
  v18[4] = v17;
  result = v25;
  *(v18 + 7) = v23;
  *(v18 + 5) = v25;
  *(v18 + 72) = v12;
  *(v18 + 76) = a1;
  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = HIDWORD(a1);
  *(a3 + 12) = 0;
  *(a3 + 16) = v14;
  return result;
}

{
  if (*MEMORY[0x1E698D3F8] == a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = *AGGraphGetValue();
  }

  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for AnimatedShape<Ellipse._Inset>, lazy protocol witness table accessor for type Ellipse._Inset and conformance Ellipse._Inset, &type metadata for Ellipse._Inset, type metadata accessor for AnimatedShape);
  v6 = *AGGraphGetValue();
  type metadata accessor for CGSize(0);
  Value = AGGraphGetValue();
  v8 = *Value;
  v9 = *(Value + 8);
  if (v5 != 1)
  {
    if (one-time initialization token for v3 != -1)
    {
      swift_once();
    }

    v13 = static Semantics.v3;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      if (dyld_program_sdk_at_least())
      {
        goto LABEL_15;
      }
    }

    else if (static Semantics.forced >= v13)
    {
      goto LABEL_15;
    }
  }

  v26.origin.x = 0.0;
  v26.origin.y = 0.0;
  v26.size.width = v8;
  v26.size.height = v9;
  v27 = CGRectInset(v26, v6, v6);
  width = v27.size.width;
  x = v27.origin.x;
  height = v27.size.height;
  y = v27.origin.y;
  if (!CGRectIsNull(v27))
  {
    v28.size.width = width;
    v28.origin.x = x;
    v28.size.height = height;
    v28.origin.y = y;
    IsInfinite = CGRectIsInfinite(v28);
    v11.n128_f64[0] = width;
    v11.n128_f64[1] = height;
    v23 = v11;
    v11.n128_f64[0] = x;
    v11.n128_f64[1] = y;
    v25 = v11;
    v12 = !IsInfinite;
    goto LABEL_16;
  }

LABEL_15:
  v23 = 0u;
  v25 = 0u;
  v12 = 6;
LABEL_16:
  v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v14);
  }

  if (v5 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v5;
  }

  v14[2] = v16 + 1;
  v18 = &v14[7 * v16];
  v18[4] = v17;
  result = v25;
  *(v18 + 7) = v23;
  *(v18 + 5) = v25;
  *(v18 + 72) = v12;
  *(v18 + 76) = a1;
  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = HIDWORD(a1);
  *(a3 + 12) = 0;
  *(a3 + 16) = v14;
  return result;
}

{
  if (*MEMORY[0x1E698D3F8] == a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = *AGGraphGetValue();
  }

  type metadata accessor for _ShapeView<Capsule._Inset, ForegroundStyle>();
  Value = AGGraphGetValue();
  v7 = *(Value + 8);
  v8 = *(Value + 9);
  type metadata accessor for CGSize(0);
  AGGraphGetValue();
  if (v5 != 1)
  {
    if (one-time initialization token for v3 != -1)
    {
      swift_once();
    }

    v11 = static Semantics.v3;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if (static Semantics.forced < v11)
    {
      goto LABEL_5;
    }

    v18 = 0u;
    v19 = 0u;
    v10 = 6;
    goto LABEL_18;
  }

LABEL_5:
  if (v8)
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  specialized ShapeStyledLeafView.contentPath(size:)(v9 | v7, specialized AnimatedShape.shape(in:), v20);
  v18 = v20[1];
  v19 = v20[0];
  v10 = v21;
LABEL_18:
  v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v14 = v12[2];
  v13 = v12[3];
  if (v14 >= v13 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v12);
  }

  if (v5 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v5;
  }

  v12[2] = v14 + 1;
  v16 = &v12[7 * v14];
  v16[4] = v15;
  result = v19;
  *(v16 + 7) = v18;
  *(v16 + 5) = v19;
  *(v16 + 72) = v10;
  *(v16 + 76) = a1;
  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = HIDWORD(a1);
  *(a3 + 12) = 0;
  *(a3 + 16) = v12;
  return result;
}

{
  if (*MEMORY[0x1E698D3F8] == a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = *AGGraphGetValue();
  }

  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for AnimatedShape<Capsule._Inset>, lazy protocol witness table accessor for type Capsule._Inset and conformance Capsule._Inset, &type metadata for Capsule._Inset, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v7 = *(Value + 8);
  v8 = *(Value + 9);
  type metadata accessor for CGSize(0);
  AGGraphGetValue();
  if (v5 != 1)
  {
    if (one-time initialization token for v3 != -1)
    {
      swift_once();
    }

    v11 = static Semantics.v3;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if (static Semantics.forced < v11)
    {
      goto LABEL_5;
    }

    v18 = 0u;
    v19 = 0u;
    v10 = 6;
    goto LABEL_18;
  }

LABEL_5:
  if (v8)
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  specialized ShapeStyledLeafView.contentPath(size:)(v9 | v7, specialized AnimatedShape.shape(in:), v20);
  v18 = v20[1];
  v19 = v20[0];
  v10 = v21;
LABEL_18:
  v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v14 = v12[2];
  v13 = v12[3];
  if (v14 >= v13 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v12);
  }

  if (v5 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v5;
  }

  v12[2] = v14 + 1;
  v16 = &v12[7 * v14];
  v16[4] = v15;
  result = v19;
  *(v16 + 7) = v18;
  *(v16 + 5) = v19;
  *(v16 + 72) = v10;
  *(v16 + 76) = a1;
  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = HIDWORD(a1);
  *(a3 + 12) = 0;
  *(a3 + 16) = v12;
  return result;
}

{
  if (*MEMORY[0x1E698D3F8] == a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = *AGGraphGetValue();
  }

  type metadata accessor for _ShapeView<Circle._Inset, ForegroundStyle>();
  v6 = *AGGraphGetValue();
  type metadata accessor for CGSize(0);
  Value = AGGraphGetValue();
  v8 = *Value;
  v9 = *(Value + 8);
  if (v5 == 1)
  {
    goto LABEL_5;
  }

  if (one-time initialization token for v3 != -1)
  {
    swift_once();
  }

  v11 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    if (dyld_program_sdk_at_least())
    {
      goto LABEL_14;
    }

LABEL_5:
    v22.origin.x = 0.0;
    v22.origin.y = 0.0;
    v22.size.width = v8;
    v22.size.height = v9;
    v23 = CGRectInset(v22, v6, v6);
    specialized Circle.path(in:)(v20, v23.origin.x, v23.origin.y, v23.size.width, v23.size.height);
    v18 = v20[1];
    v19 = v20[0];
    v10 = v21;
    goto LABEL_15;
  }

  if (static Semantics.forced < v11)
  {
    goto LABEL_5;
  }

LABEL_14:
  v18 = 0u;
  v19 = 0u;
  v10 = 6;
LABEL_15:
  v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v14 = v12[2];
  v13 = v12[3];
  if (v14 >= v13 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v12);
  }

  if (v5 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v5;
  }

  v12[2] = v14 + 1;
  v16 = &v12[7 * v14];
  v16[4] = v15;
  result = v19;
  *(v16 + 7) = v18;
  *(v16 + 5) = v19;
  *(v16 + 72) = v10;
  *(v16 + 76) = a1;
  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = HIDWORD(a1);
  *(a3 + 12) = 0;
  *(a3 + 16) = v12;
  return result;
}

{
  if (*MEMORY[0x1E698D3F8] == a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = *AGGraphGetValue();
  }

  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for AnimatedShape<Circle._Inset>, lazy protocol witness table accessor for type Circle._Inset and conformance Circle._Inset, &type metadata for Circle._Inset, type metadata accessor for AnimatedShape);
  v6 = *AGGraphGetValue();
  type metadata accessor for CGSize(0);
  Value = AGGraphGetValue();
  v8 = *Value;
  v9 = *(Value + 8);
  if (v5 == 1)
  {
    goto LABEL_5;
  }

  if (one-time initialization token for v3 != -1)
  {
    swift_once();
  }

  v11 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    if (dyld_program_sdk_at_least())
    {
      goto LABEL_14;
    }

LABEL_5:
    v22.origin.x = 0.0;
    v22.origin.y = 0.0;
    v22.size.width = v8;
    v22.size.height = v9;
    v23 = CGRectInset(v22, v6, v6);
    specialized Circle.path(in:)(v20, v23.origin.x, v23.origin.y, v23.size.width, v23.size.height);
    v18 = v20[1];
    v19 = v20[0];
    v10 = v21;
    goto LABEL_15;
  }

  if (static Semantics.forced < v11)
  {
    goto LABEL_5;
  }

LABEL_14:
  v18 = 0u;
  v19 = 0u;
  v10 = 6;
LABEL_15:
  v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v14 = v12[2];
  v13 = v12[3];
  if (v14 >= v13 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v12);
  }

  if (v5 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v5;
  }

  v12[2] = v14 + 1;
  v16 = &v12[7 * v14];
  v16[4] = v15;
  result = v19;
  *(v16 + 7) = v18;
  *(v16 + 5) = v19;
  *(v16 + 72) = v10;
  *(v16 + 76) = a1;
  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = HIDWORD(a1);
  *(a3 + 12) = 0;
  *(a3 + 16) = v12;
  return result;
}

{
  if (*MEMORY[0x1E698D3F8] == a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = *AGGraphGetValue();
  }

  type metadata accessor for _ShapeView<Path, ForegroundStyle>();
  Value = AGGraphGetValue();
  v7 = *Value;
  v8 = *(Value + 8);
  v9 = *(Value + 16);
  v10 = *(Value + 24);
  v11 = *(Value + 32);
  type metadata accessor for CGSize(0);
  outlined copy of Path.Storage(v7, v8, v9, v10, v11);
  v12 = *AGGraphGetValue();
  if (v5 == 1)
  {
    goto LABEL_5;
  }

  if (one-time initialization token for v3 != -1)
  {
    swift_once();
  }

  v14 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    if (dyld_program_sdk_at_least())
    {
      goto LABEL_14;
    }

LABEL_5:
    v25 = v7;
    v26 = v8;
    v27 = v9;
    v28 = v10;
    v29 = v11;
    specialized Shape.effectivePath(in:)(v23, v12);
    v21 = v23[1];
    v22 = v23[0];
    v13 = v24;
    goto LABEL_15;
  }

  if (static Semantics.forced < v14)
  {
    goto LABEL_5;
  }

LABEL_14:
  v21 = 0u;
  v22 = 0u;
  v13 = 6;
LABEL_15:
  outlined consume of Path.Storage(v7, v8, v9, v10, v11);
  v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v17 = v15[2];
  v16 = v15[3];
  if (v17 >= v16 >> 1)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v15);
  }

  if (v5 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v5;
  }

  v15[2] = v17 + 1;
  v19 = &v15[7 * v17];
  v19[4] = v18;
  result = v22;
  *(v19 + 7) = v21;
  *(v19 + 5) = v22;
  *(v19 + 72) = v13;
  *(v19 + 76) = a1;
  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = HIDWORD(a1);
  *(a3 + 12) = 0;
  *(a3 + 16) = v15;
  return result;
}

{
  if (*MEMORY[0x1E698D3F8] == a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = *AGGraphGetValue();
  }

  type metadata accessor for _ShapeView<PartialContainerRelativeShape, ForegroundStyle>();
  Value = AGGraphGetValue();
  v7 = Value[13];
  v44 = Value[12];
  v45 = v7;
  v46 = Value[14];
  v8 = Value[9];
  v40 = Value[8];
  v41 = v8;
  v9 = Value[11];
  v42 = Value[10];
  v43 = v9;
  v10 = Value[5];
  v36 = Value[4];
  v37 = v10;
  v11 = Value[7];
  v38 = Value[6];
  v39 = v11;
  v12 = Value[1];
  v32 = *Value;
  v33 = v12;
  v13 = Value[3];
  v34 = Value[2];
  v35 = v13;
  type metadata accessor for CGSize(0);
  v14 = AGGraphGetValue();
  v18 = *v14;
  v19 = *(v14 + 1);
  if (v5 == 1)
  {
    goto LABEL_5;
  }

  if (one-time initialization token for v3 != -1)
  {
    swift_once();
  }

  v21 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    if (dyld_program_sdk_at_least())
    {
      goto LABEL_14;
    }

LABEL_5:
    v15.n128_u64[0] = 0;
    v16.n128_u64[0] = 0;
    v17.n128_u64[0] = v19;
    specialized Shape.effectivePath(in:)(v30, v15, v16, v18, v17);
    v28 = v30[1];
    v29 = v30[0];
    v20 = v31;
    goto LABEL_15;
  }

  if (static Semantics.forced < v21)
  {
    goto LABEL_5;
  }

LABEL_14:
  v28 = 0u;
  v29 = 0u;
  v20 = 6;
LABEL_15:
  v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v24 = v22[2];
  v23 = v22[3];
  if (v24 >= v23 >> 1)
  {
    v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v22);
  }

  if (v5 <= 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = v5;
  }

  v22[2] = v24 + 1;
  v26 = &v22[7 * v24];
  v26[4] = v25;
  result = v29;
  *(v26 + 7) = v28;
  *(v26 + 5) = v29;
  *(v26 + 72) = v20;
  *(v26 + 76) = a1;
  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = HIDWORD(a1);
  *(a3 + 12) = 0;
  *(a3 + 16) = v22;
  return result;
}

{
  if (*MEMORY[0x1E698D3F8] == a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = *AGGraphGetValue();
  }

  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for AnimatedShape<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v7 = Value[13];
  v44 = Value[12];
  v45 = v7;
  v46 = Value[14];
  v8 = Value[9];
  v40 = Value[8];
  v41 = v8;
  v9 = Value[11];
  v42 = Value[10];
  v43 = v9;
  v10 = Value[5];
  v36 = Value[4];
  v37 = v10;
  v11 = Value[7];
  v38 = Value[6];
  v39 = v11;
  v12 = Value[1];
  v32 = *Value;
  v33 = v12;
  v13 = Value[3];
  v34 = Value[2];
  v35 = v13;
  type metadata accessor for CGSize(0);
  v14 = AGGraphGetValue();
  v18 = *v14;
  v19 = *(v14 + 1);
  if (v5 == 1)
  {
    goto LABEL_5;
  }

  if (one-time initialization token for v3 != -1)
  {
    swift_once();
  }

  v21 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    if (dyld_program_sdk_at_least())
    {
      goto LABEL_14;
    }

LABEL_5:
    v15.n128_u64[0] = 0;
    v16.n128_u64[0] = 0;
    v17.n128_u64[0] = v19;
    specialized Shape.effectivePath(in:)(v30, v15, v16, v18, v17);
    v28 = v30[1];
    v29 = v30[0];
    v20 = v31;
    goto LABEL_15;
  }

  if (static Semantics.forced < v21)
  {
    goto LABEL_5;
  }

LABEL_14:
  v28 = 0u;
  v29 = 0u;
  v20 = 6;
LABEL_15:
  v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v24 = v22[2];
  v23 = v22[3];
  if (v24 >= v23 >> 1)
  {
    v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v22);
  }

  if (v5 <= 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = v5;
  }

  v22[2] = v24 + 1;
  v26 = &v22[7 * v24];
  v26[4] = v25;
  result = v29;
  *(v26 + 7) = v28;
  *(v26 + 5) = v29;
  *(v26 + 72) = v20;
  *(v26 + 76) = a1;
  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = HIDWORD(a1);
  *(a3 + 12) = 0;
  *(a3 + 16) = v22;
  return result;
}

{
  if (*MEMORY[0x1E698D3F8] == a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = *AGGraphGetValue();
  }

  type metadata accessor for _ShapeView<UnevenRoundedRectangle, ForegroundStyle>();
  Value = AGGraphGetValue();
  v7 = *(Value + 16);
  v23 = *Value;
  v24 = v7;
  v25 = *(Value + 32);
  type metadata accessor for CGSize(0);
  v8 = AGGraphGetValue();
  v9 = *v8;
  v10 = v8[1];
  if (v5 == 1)
  {
    goto LABEL_5;
  }

  if (one-time initialization token for v3 != -1)
  {
    swift_once();
  }

  v12 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    if (dyld_program_sdk_at_least())
    {
      goto LABEL_14;
    }

LABEL_5:
    specialized Shape.effectivePath(in:)(v21, 0.0, 0.0, v9, v10);
    v19 = v21[1];
    v20 = v21[0];
    v11 = v22;
    goto LABEL_15;
  }

  if (static Semantics.forced < v12)
  {
    goto LABEL_5;
  }

LABEL_14:
  v19 = 0u;
  v20 = 0u;
  v11 = 6;
LABEL_15:
  v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v15 = v13[2];
  v14 = v13[3];
  if (v15 >= v14 >> 1)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v13);
  }

  if (v5 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v5;
  }

  v13[2] = v15 + 1;
  v17 = &v13[7 * v15];
  v17[4] = v16;
  result = v20;
  *(v17 + 7) = v19;
  *(v17 + 5) = v20;
  *(v17 + 72) = v11;
  *(v17 + 76) = a1;
  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = HIDWORD(a1);
  *(a3 + 12) = 0;
  *(a3 + 16) = v13;
  return result;
}

{
  if (*MEMORY[0x1E698D3F8] == a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = *AGGraphGetValue();
  }

  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for AnimatedShape<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v7 = *(Value + 16);
  v23 = *Value;
  v24 = v7;
  v25 = *(Value + 32);
  type metadata accessor for CGSize(0);
  v8 = AGGraphGetValue();
  v9 = *v8;
  v10 = v8[1];
  if (v5 == 1)
  {
    goto LABEL_5;
  }

  if (one-time initialization token for v3 != -1)
  {
    swift_once();
  }

  v12 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    if (dyld_program_sdk_at_least())
    {
      goto LABEL_14;
    }

LABEL_5:
    specialized Shape.effectivePath(in:)(v21, 0.0, 0.0, v9, v10);
    v19 = v21[1];
    v20 = v21[0];
    v11 = v22;
    goto LABEL_15;
  }

  if (static Semantics.forced < v12)
  {
    goto LABEL_5;
  }

LABEL_14:
  v19 = 0u;
  v20 = 0u;
  v11 = 6;
LABEL_15:
  v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v15 = v13[2];
  v14 = v13[3];
  if (v15 >= v14 >> 1)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v13);
  }

  if (v5 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v5;
  }

  v13[2] = v15 + 1;
  v17 = &v13[7 * v15];
  v17[4] = v16;
  result = v20;
  *(v17 + 7) = v19;
  *(v17 + 5) = v20;
  *(v17 + 72) = v11;
  *(v17 + 76) = a1;
  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = HIDWORD(a1);
  *(a3 + 12) = 0;
  *(a3 + 16) = v13;
  return result;
}

{
  if (*MEMORY[0x1E698D3F8] == a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = *AGGraphGetValue();
  }

  type metadata accessor for _ShapeView<UnevenRoundedRectangle._Inset, ForegroundStyle>();
  Value = AGGraphGetValue();
  v7 = Value[1];
  v21 = *Value;
  v22 = v7;
  v23 = Value[2];
  type metadata accessor for CGSize(0);
  v8 = *AGGraphGetValue();
  if (v5 == 1)
  {
    goto LABEL_5;
  }

  if (one-time initialization token for v3 != -1)
  {
    swift_once();
  }

  v10 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    if (dyld_program_sdk_at_least())
    {
      goto LABEL_14;
    }

LABEL_5:
    specialized Shape.effectivePath(in:)(v19, 0.0, v8);
    v17 = v19[1];
    v18 = v19[0];
    v9 = v20;
    goto LABEL_15;
  }

  if (static Semantics.forced < v10)
  {
    goto LABEL_5;
  }

LABEL_14:
  v17 = 0u;
  v18 = 0u;
  v9 = 6;
LABEL_15:
  v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v13 = v11[2];
  v12 = v11[3];
  if (v13 >= v12 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v11);
  }

  if (v5 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v5;
  }

  v11[2] = v13 + 1;
  v15 = &v11[7 * v13];
  v15[4] = v14;
  result = v18;
  *(v15 + 7) = v17;
  *(v15 + 5) = v18;
  *(v15 + 72) = v9;
  *(v15 + 76) = a1;
  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = HIDWORD(a1);
  *(a3 + 12) = 0;
  *(a3 + 16) = v11;
  return result;
}

{
  if (*MEMORY[0x1E698D3F8] == a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = *AGGraphGetValue();
  }

  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for AnimatedShape<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v7 = Value[1];
  v21 = *Value;
  v22 = v7;
  v23 = Value[2];
  type metadata accessor for CGSize(0);
  v8 = *AGGraphGetValue();
  if (v5 == 1)
  {
    goto LABEL_5;
  }

  if (one-time initialization token for v3 != -1)
  {
    swift_once();
  }

  v10 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    if (dyld_program_sdk_at_least())
    {
      goto LABEL_14;
    }

LABEL_5:
    specialized Shape.effectivePath(in:)(v19, 0.0, v8);
    v17 = v19[1];
    v18 = v19[0];
    v9 = v20;
    goto LABEL_15;
  }

  if (static Semantics.forced < v10)
  {
    goto LABEL_5;
  }

LABEL_14:
  v17 = 0u;
  v18 = 0u;
  v9 = 6;
LABEL_15:
  v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v13 = v11[2];
  v12 = v11[3];
  if (v13 >= v12 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v11);
  }

  if (v5 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v5;
  }

  v11[2] = v13 + 1;
  v15 = &v11[7 * v13];
  v15[4] = v14;
  result = v18;
  *(v15 + 7) = v17;
  *(v15 + 5) = v18;
  *(v15 + 72) = v9;
  *(v15 + 76) = a1;
  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = HIDWORD(a1);
  *(a3 + 12) = 0;
  *(a3 + 16) = v11;
  return result;
}

{
  if (*MEMORY[0x1E698D3F8] == a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = *AGGraphGetValue();
  }

  type metadata accessor for _ShapeView<ContainerRelativeShape._Inset, ForegroundStyle>();
  v6 = *AGGraphGetValue();
  type metadata accessor for CGSize(0);
  v7 = *AGGraphGetValue();
  if (v5 == 1)
  {
    goto LABEL_5;
  }

  if (one-time initialization token for v3 != -1)
  {
    swift_once();
  }

  v9 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    if (dyld_program_sdk_at_least())
    {
      goto LABEL_14;
    }

LABEL_5:
    specialized Shape.effectivePath(in:)(v18, 0.0, v7, v6);
    v16 = v18[1];
    v17 = v18[0];
    v8 = v19;
    goto LABEL_15;
  }

  if (static Semantics.forced < v9)
  {
    goto LABEL_5;
  }

LABEL_14:
  v16 = 0u;
  v17 = 0u;
  v8 = 6;
LABEL_15:
  v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v12 = v10[2];
  v11 = v10[3];
  if (v12 >= v11 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
  }

  if (v5 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v5;
  }

  v10[2] = v12 + 1;
  v14 = &v10[7 * v12];
  v14[4] = v13;
  result = v17;
  *(v14 + 7) = v16;
  *(v14 + 5) = v17;
  *(v14 + 72) = v8;
  *(v14 + 76) = a1;
  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = HIDWORD(a1);
  *(a3 + 12) = 0;
  *(a3 + 16) = v10;
  return result;
}

{
  if (*MEMORY[0x1E698D3F8] == a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = *AGGraphGetValue();
  }

  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for AnimatedShape<ContainerRelativeShape._Inset>, lazy protocol witness table accessor for type ContainerRelativeShape._Inset and conformance ContainerRelativeShape._Inset, &type metadata for ContainerRelativeShape._Inset, type metadata accessor for AnimatedShape);
  v6 = *AGGraphGetValue();
  type metadata accessor for CGSize(0);
  v7 = *AGGraphGetValue();
  if (v5 == 1)
  {
    goto LABEL_5;
  }

  if (one-time initialization token for v3 != -1)
  {
    swift_once();
  }

  v9 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    if (dyld_program_sdk_at_least())
    {
      goto LABEL_14;
    }

LABEL_5:
    specialized Shape.effectivePath(in:)(v18, 0.0, v7, v6);
    v16 = v18[1];
    v17 = v18[0];
    v8 = v19;
    goto LABEL_15;
  }

  if (static Semantics.forced < v9)
  {
    goto LABEL_5;
  }

LABEL_14:
  v16 = 0u;
  v17 = 0u;
  v8 = 6;
LABEL_15:
  v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v12 = v10[2];
  v11 = v10[3];
  if (v12 >= v11 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
  }

  if (v5 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v5;
  }

  v10[2] = v12 + 1;
  v14 = &v10[7 * v12];
  v14[4] = v13;
  result = v17;
  *(v14 + 7) = v16;
  *(v14 + 5) = v17;
  *(v14 + 72) = v8;
  *(v14 + 76) = a1;
  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = HIDWORD(a1);
  *(a3 + 12) = 0;
  *(a3 + 16) = v10;
  return result;
}

{
  if (*MEMORY[0x1E698D3F8] == a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = *AGGraphGetValue();
  }

  type metadata accessor for _ShapeView<ConcentricRectangle, ForegroundStyle>();
  Value = AGGraphGetValue();
  memcpy(__dst, Value, sizeof(__dst));
  type metadata accessor for CGSize(0);
  v7 = AGGraphGetValue();
  v8 = *v7;
  v9 = v7[1];
  if (v5 == 1)
  {
    goto LABEL_5;
  }

  if (one-time initialization token for v3 != -1)
  {
    swift_once();
  }

  v11 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    if (dyld_program_sdk_at_least())
    {
      goto LABEL_14;
    }

LABEL_5:
    specialized Shape.effectivePath(in:)(v20, 0.0, 0.0, v8, v9);
    v18 = v20[1];
    v19 = v20[0];
    v10 = v21;
    goto LABEL_15;
  }

  if (static Semantics.forced < v11)
  {
    goto LABEL_5;
  }

LABEL_14:
  v18 = 0u;
  v19 = 0u;
  v10 = 6;
LABEL_15:
  v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v14 = v12[2];
  v13 = v12[3];
  if (v14 >= v13 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v12);
  }

  if (v5 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v5;
  }

  v12[2] = v14 + 1;
  v16 = &v12[7 * v14];
  v16[4] = v15;
  result = v19;
  *(v16 + 7) = v18;
  *(v16 + 5) = v19;
  *(v16 + 72) = v10;
  *(v16 + 76) = a1;
  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = HIDWORD(a1);
  *(a3 + 12) = 0;
  *(a3 + 16) = v12;
  return result;
}

{
  if (*MEMORY[0x1E698D3F8] == a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = *AGGraphGetValue();
  }

  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for AnimatedShape<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  memcpy(__dst, Value, sizeof(__dst));
  type metadata accessor for CGSize(0);
  v7 = AGGraphGetValue();
  v8 = *v7;
  v9 = v7[1];
  if (v5 == 1)
  {
    goto LABEL_5;
  }

  if (one-time initialization token for v3 != -1)
  {
    swift_once();
  }

  v11 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    if (dyld_program_sdk_at_least())
    {
      goto LABEL_14;
    }

LABEL_5:
    specialized Shape.effectivePath(in:)(v20, 0.0, 0.0, v8, v9);
    v18 = v20[1];
    v19 = v20[0];
    v10 = v21;
    goto LABEL_15;
  }

  if (static Semantics.forced < v11)
  {
    goto LABEL_5;
  }

LABEL_14:
  v18 = 0u;
  v19 = 0u;
  v10 = 6;
LABEL_15:
  v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v14 = v12[2];
  v13 = v12[3];
  if (v14 >= v13 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v12);
  }

  if (v5 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v5;
  }

  v12[2] = v14 + 1;
  v16 = &v12[7 * v14];
  v16[4] = v15;
  result = v19;
  *(v16 + 7) = v18;
  *(v16 + 5) = v19;
  *(v16 + 72) = v10;
  *(v16 + 76) = a1;
  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = HIDWORD(a1);
  *(a3 + 12) = 0;
  *(a3 + 16) = v12;
  return result;
}

{
  if (*MEMORY[0x1E698D3F8] == a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = *AGGraphGetValue();
  }

  type metadata accessor for _ShapeView<RoundedRectangle, ForegroundStyle>();
  Value = AGGraphGetValue();
  v7 = *Value;
  v8 = *(Value + 8);
  v9 = *(Value + 16);
  v10 = *(Value + 17);
  v11 = *(Value + 18);
  type metadata accessor for CGSize(0);
  v12 = AGGraphGetValue();
  if (v10)
  {
    v15 = 256;
  }

  else
  {
    v15 = 0;
  }

  if (v11)
  {
    v16 = 0x10000;
  }

  else
  {
    v16 = 0;
  }

  v13.n128_u64[0] = *v12;
  v14.n128_u64[0] = v12[1];
  specialized ContentResponder.contentPath(size:kind:)(v26, v5, v15 | v9 | v16, v13, v14, v7, v8);
  v24 = v26[1];
  v25 = v26[0];
  v17 = v27;
  v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v20 = v18[2];
  v19 = v18[3];
  if (v20 >= v19 >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v18);
  }

  if (v5 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = v5;
  }

  v18[2] = v20 + 1;
  v22 = &v18[7 * v20];
  v22[4] = v21;
  result = v25;
  *(v22 + 7) = v24;
  *(v22 + 5) = v25;
  *(v22 + 72) = v17;
  *(v22 + 76) = a1;
  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = HIDWORD(a1);
  *(a3 + 12) = 0;
  *(a3 + 16) = v18;
  return result;
}

{
  if (*MEMORY[0x1E698D3F8] == a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = *AGGraphGetValue();
  }

  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v7 = *Value;
  v8 = *(Value + 8);
  v9 = *(Value + 16);
  v10 = *(Value + 17);
  v11 = *(Value + 18);
  type metadata accessor for CGSize(0);
  v12 = AGGraphGetValue();
  if (v10)
  {
    v15 = 256;
  }

  else
  {
    v15 = 0;
  }

  if (v11)
  {
    v16 = 0x10000;
  }

  else
  {
    v16 = 0;
  }

  v13.n128_u64[0] = *v12;
  v14.n128_u64[0] = v12[1];
  specialized ContentResponder.contentPath(size:kind:)(v26, v5, v15 | v9 | v16, v13, v14, v7, v8);
  v24 = v26[1];
  v25 = v26[0];
  v17 = v27;
  v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v20 = v18[2];
  v19 = v18[3];
  if (v20 >= v19 >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v18);
  }

  if (v5 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = v5;
  }

  v18[2] = v20 + 1;
  v22 = &v18[7 * v20];
  v22[4] = v21;
  result = v25;
  *(v22 + 7) = v24;
  *(v22 + 5) = v25;
  *(v22 + 72) = v17;
  *(v22 + 76) = a1;
  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = HIDWORD(a1);
  *(a3 + 12) = 0;
  *(a3 + 16) = v18;
  return result;
}

{
  if (*MEMORY[0x1E698D3F8] == a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = *AGGraphGetValue();
  }

  type metadata accessor for _ShapeView<RoundedRectangle._Inset, ForegroundStyle>();
  AGGraphGetValue();
  type metadata accessor for CGSize(0);
  AGGraphGetValue();
  if (v5 == 1)
  {
    goto LABEL_5;
  }

  if (one-time initialization token for v3 != -1)
  {
    swift_once();
  }

  v7 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    if (dyld_program_sdk_at_least())
    {
      goto LABEL_14;
    }

LABEL_5:
    RoundedRectangle._Inset.path(in:)(v16, 0.0);
    v14 = v16[1];
    v15 = v16[0];
    v6 = v17;
    goto LABEL_15;
  }

  if (static Semantics.forced < v7)
  {
    goto LABEL_5;
  }

LABEL_14:
  v14 = 0u;
  v15 = 0u;
  v6 = 6;
LABEL_15:
  v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v8);
  }

  if (v5 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v5;
  }

  v8[2] = v10 + 1;
  v12 = &v8[7 * v10];
  v12[4] = v11;
  result = v15;
  *(v12 + 7) = v14;
  *(v12 + 5) = v15;
  *(v12 + 72) = v6;
  *(v12 + 76) = a1;
  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = HIDWORD(a1);
  *(a3 + 12) = 0;
  *(a3 + 16) = v8;
  return result;
}

{
  if (*MEMORY[0x1E698D3F8] == a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = *AGGraphGetValue();
  }

  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatedShape);
  AGGraphGetValue();
  type metadata accessor for CGSize(0);
  AGGraphGetValue();
  if (v5 == 1)
  {
    goto LABEL_5;
  }

  if (one-time initialization token for v3 != -1)
  {
    swift_once();
  }

  v7 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    if (dyld_program_sdk_at_least())
    {
      goto LABEL_14;
    }

LABEL_5:
    RoundedRectangle._Inset.path(in:)(v16, 0.0);
    v14 = v16[1];
    v15 = v16[0];
    v6 = v17;
    goto LABEL_15;
  }

  if (static Semantics.forced < v7)
  {
    goto LABEL_5;
  }

LABEL_14:
  v14 = 0u;
  v15 = 0u;
  v6 = 6;
LABEL_15:
  v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v8);
  }

  if (v5 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v5;
  }

  v8[2] = v10 + 1;
  v12 = &v8[7 * v10];
  v12[4] = v11;
  result = v15;
  *(v12 + 7) = v14;
  *(v12 + 5) = v15;
  *(v12 + 72) = v6;
  *(v12 + 76) = a1;
  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = HIDWORD(a1);
  *(a3 + 12) = 0;
  *(a3 + 16) = v8;
  return result;
}