uint64_t specialized CanvasElement.apply(_:)(double *a1)
{
  v35 = a1[5];
  v36 = a1[4];
  v2 = off_1F4F5A660;
  type metadata accessor for PaperDocumentPage(0);
  v33 = *(a1 + 1);
  v34 = *a1;
  v3 = v2();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  off_1F4F5A5D0();
  v11 = v10;
  v31 = v5 - v9 * 0.0;
  v32 = v3 - v7 * 0.0;
  v40.origin.x = v3;
  v40.origin.y = v5;
  v40.size.width = v7;
  v29 = v7;
  v30 = v9;
  v40.size.height = v9;
  MidX = CGRectGetMidX(v40);
  v41.origin.x = v3;
  v41.origin.y = v5;
  v41.size.width = v7;
  v41.size.height = v9;
  MidY = CGRectGetMidY(v41);
  CGAffineTransformMakeRotation(&t1, v11);
  tx = t1.tx;
  ty = t1.ty;
  v25 = *&t1.c;
  v27 = *&t1.a;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v20 = t1.tx;
  v21 = t1.ty;
  *&t2.a = v27;
  *&t2.c = v25;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v37, &t1, &t2);
  v22 = v37.tx;
  v23 = v37.ty;
  v26 = *&v37.c;
  v28 = *&v37.a;
  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = v20;
  t1.ty = v21;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.c = v26;
  *&t1.a = v28;
  t1.tx = v22;
  t1.ty = v23;
  CGAffineTransformConcat(&v37, &t1, &t2);
  t1.a = v29;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = v30;
  t1.tx = v32;
  t1.ty = v31;
  t2 = v37;
  CGAffineTransformConcat(&v37, &t1, &t2);
  t2 = v37;
  *&v37.a = v34;
  *&v37.c = v33;
  v37.tx = v36;
  v37.ty = v35;
  CGAffineTransformConcat(&t1, &t2, &v37);
  return specialized CanvasElement.coordinateSpace.setter();
}

void specialized Sequence.forEach(_:)(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1DA6CE0C0](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

id AKControllerDelegateHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AKControllerDelegateHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static AnnotationImporter.translateStrokedAnnotation(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v345 = a2;
  v3 = type metadata accessor for ShapeType(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v337 = &v319 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v338 = &v319 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v336 = &v319 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v330 = &v319 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v331 = &v319 - v13;
  v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v334 = *(v335 - 8);
  MEMORY[0x1EEE9AC00](v335);
  v326 = &v319 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v324 = &v319 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v322 = &v319 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v321 = &v319 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v327 = &v319 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v325 = &v319 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v319 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v347 = (&v319 - v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v346 = &v319 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v319 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v332 = &v319 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v333 = &v319 - v38;
  MEMORY[0x1EEE9AC00](v39);
  *&v348 = &v319 - v40;
  MEMORY[0x1EEE9AC00](v41);
  *&v349 = &v319 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v319 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v319 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9ShapeTypeOSgMd);
  MEMORY[0x1EEE9AC00](v49 - 8);
  v342 = &v319 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v320 = (&v319 - v52);
  MEMORY[0x1EEE9AC00](v53);
  v323 = (&v319 - v54);
  MEMORY[0x1EEE9AC00](v55);
  v57 = (&v319 - v56);
  v58 = type metadata accessor for Shape(0);
  v344 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v319 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  Shape.init()(v60);
  v343 = v4;
  v61 = *(v4 + 56);
  v350 = v57;
  v351 = v3;
  v340 = v4 + 56;
  v339 = v61;
  v61(v57, 1, 1, v3);
  [a1 drawingBounds];
  v353.a = v62;
  v353.b = v63;
  v353.c = v64;
  v353.d = v65;
  v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.setter();
  v66 = [a1 strokeColor];
  v352 = v58;
  if (v66)
  {
    v67 = v66;
    Color.init(cgColor:)([v67 CGColor], v45);

    v68 = type metadata accessor for Color(0);
    v69 = (*(v68 - 8) + 48);
    v70 = (*v69)(v45, 1, v68);
    v71 = (v69 + 1);
    v329 = v27;
    v328 = a1;
    if (v70)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v45, &_s8PaperKit5ColorVSgMd);
      v72 = 1;
    }

    else
    {
      outlined init with take of AnnotationImporter.ImportedElement(v45, v48, type metadata accessor for Color);
      v72 = 0;
    }

    (*v71)(v48, v72, 1, v68);
    v73 = v349;
    outlined init with copy of Date?(v48, *&v349, &_s8PaperKit5ColorVSgMd);
    outlined init with copy of Date?(*&v73, *&v348, &_s8PaperKit5ColorVSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
    CRRegister.wrappedValue.setter();

    outlined destroy of StocksKitCurrencyCache.Provider?(*&v73, &_s8PaperKit5ColorVSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v48, &_s8PaperKit5ColorVSgMd);
    v27 = v329;
    a1 = v328;
  }

  [a1 strokeWidth];
  v353.a = v74;
  v75 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd));
  CRRegister.wrappedValue.setter();
  v76 = a1;
  _s8PaperKit11StrokeStyleO3forACx_tcSo27AKStrokedAnnotationProtocolRzlufCSo0fG0C_Tt1g5Tm(v76, v34);
  v77 = type metadata accessor for StrokeStyle(0);
  (*(*(v77 - 8) + 56))(v34, 0, 1, v77);
  outlined init with copy of Date?(v34, v346, &_s8PaperKit11StrokeStyleOSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMd);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_s8PaperKit11StrokeStyleOSgMd);
  if ([v76 hasShadow])
  {
    [v76 originalModelBaseScaleFactor];
    v79 = v78;
    v80 = type metadata accessor for Shadow();
    v81 = *(v80 + 24);
    v82 = v351;
    v83 = v347;
    if (one-time initialization token for defaultShadowColor != -1)
    {
      swift_once();
    }

    v84 = type metadata accessor for Color(0);
    v85 = __swift_project_value_buffer(v84, static UIConstants.defaultShadowColor);
    outlined init with copy of AnnotationImporter.ImportedElement(v85, v83 + v81, type metadata accessor for Color);
    *v83 = v79 * 0.0;
    v83[1] = v79 * 3.0;
    v83[2] = v79 * 3.0;
    outlined assign with copy of Color(v85, v83 + v81);
    (*(*(v80 - 8) + 56))(v83, 0, 1, v80);
  }

  else
  {
    v86 = type metadata accessor for Shadow();
    v83 = v347;
    (*(*(v86 - 8) + 56))(v347, 1, 1, v86);
    v82 = v351;
  }

  v87 = v352;
  outlined init with copy of Date?(v83, v27, &_s8PaperKit6ShadowVSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMd);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v83, &_s8PaperKit6ShadowVSgMd);
  v354 = &unk_1F4FF8798;
  v88 = swift_dynamicCastObjCProtocolConditional();
  if (v88)
  {
    v89 = v88;
    v90 = v76;
    [v89 rectangle];
    v353.a = v91;
    v353.b = v92;
    v353.c = v93;
    v353.d = v94;
    CRRegister.wrappedValue.setter();
  }

  objc_opt_self();
  v95 = swift_dynamicCastObjCClass();
  v96 = v350;
  if (!v95)
  {
    goto LABEL_103;
  }

  v97 = v95;
  v98 = v76;
  v99 = [v97 fillColor];
  if (v99)
  {
    v347 = v98;
    v100 = v99;
    v101 = [v100 CGColor];
    v102 = v332;
    Color.init(cgColor:)(v101, v332);

    v103 = type metadata accessor for Color(0);
    v104 = (*(v103 - 8) + 48);
    v105 = (*v104)(v102, 1, v103);
    v106 = (v104 + 1);
    v107 = v75;
    if (v105)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v102, &_s8PaperKit5ColorVSgMd);
      v108 = 1;
      v109 = v333;
    }

    else
    {
      v109 = v333;
      outlined init with take of AnnotationImporter.ImportedElement(v102, v333, type metadata accessor for Color);
      v108 = 0;
    }

    (*v106)(v109, v108, 1, v103);
    v110 = v349;
    outlined init with copy of Date?(v109, *&v349, &_s8PaperKit5ColorVSgMd);
    outlined init with copy of Date?(*&v110, *&v348, &_s8PaperKit5ColorVSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
    CRRegister.wrappedValue.setter();

    outlined destroy of StocksKitCurrencyCache.Provider?(*&v110, &_s8PaperKit5ColorVSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v109, &_s8PaperKit5ColorVSgMd);
    v75 = v107;
    v98 = v347;
  }

  objc_opt_self();
  v111 = swift_dynamicCastObjCClass();
  if (v111)
  {
    v112 = v111;
    v113 = COERCE_DOUBLE(v98);
    [v112 rotationAngle];
    v115 = v114;
    CRRegister.value.getter();
    if (vabdd_f64(v353.a, v115) > 0.01)
    {
      v353.a = v115;
      CRRegister.value.setter();
    }

    v116 = [v112 typingAttributes];
    v96 = v350;
    v82 = v351;
    if (!v116)
    {
      goto LABEL_51;
    }

    v117 = v116;
    v118 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v119 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v118);

    if (!v119)
    {
      goto LABEL_51;
    }

    v348 = v75;
    *&v353.a = v119;
    [*&v113 originalModelBaseScaleFactor];
    Dictionary<>.scaleBy(_:)(v120);
    v121 = [v112 annotationText];
    v349 = v113;
    if (!v121)
    {
      if (![v112 shouldUsePlaceholderText])
      {
        goto LABEL_50;
      }

      if (!object_getClass(*&v349))
      {
        goto LABEL_50;
      }

      swift_getObjCClassMetadata();
      v152 = [swift_getObjCClassFromMetadata() defaultPlaceholderText];
      if (!v152)
      {
        goto LABEL_50;
      }

      v153 = v152;
      [*&v349 originalModelBaseScaleFactor];
      v154 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      type metadata accessor for NSAttributedStringKey(0);
      lazy protocol witness table accessor for type PKDrawingStruct and conformance PKDrawingStruct(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      [v154 initWithString:v153 attributes:isa];

      MEMORY[0x1EEE9AC00](v156);
      lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
      v157 = v321;
      CRAttributedString.init(_:transformAttributes:)();
      v158 = *(v352 + 52);
      v159 = v334;
      v160 = v335;
      (*(v334 + 40))(&v60[v158], v157, v335);
      v161 = v322;
      (*(v159 + 16))(v322, &v60[v158], v160);
      v162 = CRAttributedString.attributedString.getter();
      v163 = [v162 string];

      v164 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v166 = v165;

      if (!v164 && v166 == 0xE000000000000000)
      {

        (*(v334 + 8))(v161, v335);
LABEL_50:
        v210 = v331;
        CRAttributedString.Attributes<>.init(nsAttributes:darkMode:)(*&v353.a, 0, v331);
        v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
        (*(*(v211 - 8) + 56))(v210, 0, 1, v211);
        outlined init with copy of Date?(v210, v330, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
        CRRegister.wrappedValue.setter();
        outlined destroy of StocksKitCurrencyCache.Provider?(v210, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        v75 = v348;
        v113 = v349;
LABEL_51:
        Shape.maximumNumberOfCharacters.setter([v112 maximumNumberOfCharacters]);
        objc_opt_self();
        v212 = swift_dynamicCastObjCClass();
        if (v212)
        {
          [v212 cornerRadius];
          if (v213 <= 0.0)
          {
            outlined destroy of StocksKitCurrencyCache.Provider?(v96, &_s8PaperKit9ShapeTypeOSgMd);
          }

          else
          {
            v214 = v213;
            [v112 rectangle];
            Width = CGRectGetWidth(v375);
            [v112 rectangle];
            v217 = v216;
            v219 = v218;
            v221 = v220;
            v223 = v222;

            v376.origin.x = v217;
            v376.origin.y = v219;
            v376.size.width = v221;
            v376.size.height = v223;
            Height = CGRectGetHeight(v376);

            outlined destroy of StocksKitCurrencyCache.Provider?(v96, &_s8PaperKit9ShapeTypeOSgMd);
            if (Height >= Width)
            {
              v225 = Width;
            }

            else
            {
              v225 = Height;
            }

            v226 = v214 / v225;
            if (v226 > 0.5)
            {
              v226 = 0.5;
            }

            if (v226 < 0.0)
            {
              v226 = 0.0;
            }

            *v96 = v226;
          }

          goto LABEL_75;
        }

        objc_opt_self();
        v227 = swift_dynamicCastObjCClass();
        v228 = v113;
        if (v227)
        {
          v229 = v227;
          outlined destroy of StocksKitCurrencyCache.Provider?(v96, &_s8PaperKit9ShapeTypeOSgMd);
          swift_storeEnumTagMultiPayload();
          v339(v96, 0, 1, v82);
          *&v353.a = 3;
          v87 = v352;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
          CRRegister.wrappedValue.setter();
          v228 = COERCE_DOUBLE(*&v228);
          if ([v229 textIsFixedWidth])
          {
            v231 = CRRegister.wrappedValue.modify();
            if (*v230)
            {
              *v230 &= ~1uLL;
            }

            v231(&v353, 0);
          }

          if ([v229 textIsFixedHeight])
          {
            v233 = CRRegister.wrappedValue.modify();
            if ((*v232 & 2) != 0)
            {
              *v232 &= ~2uLL;
            }

            v233(&v353, 0);
          }

          v234 = [v229 textContentType];

          if (v234)
          {
            v353.a = 0.0;
            v353.b = 0.0;
            static String._conditionallyBridgeFromObjectiveC(_:result:)();

            b = v353.b;
            if (*&v353.b)
            {
              a = v353.a;
              FormContentType.init(_:)(*(&b - 1));
              Shape.formContentType.setter(&v353);
            }
          }

          goto LABEL_73;
        }

        objc_opt_self();
        v237 = swift_dynamicCastObjCClass();
        v87 = v352;
        if (v237)
        {
          goto LABEL_77;
        }

        objc_opt_self();
        v238 = swift_dynamicCastObjCClass();
        if (v238)
        {
          v239 = v238;
          v348 = v75;
          v240 = *&v113;
          v241 = [v239 pointCount];
          outlined destroy of StocksKitCurrencyCache.Provider?(v96, &_s8PaperKit9ShapeTypeOSgMd);
          v242 = 3;
          if (v241 > 3)
          {
            v242 = v241;
          }

          if (v242 >= 12)
          {
            v242 = 12;
          }

          v243 = v323;
          *v323 = v242;
          swift_storeEnumTagMultiPayload();
          v339(v243, 0, 1, v82);
          outlined init with take of Range<AttributedString.Index>(v243, v96, &_s8PaperKit9ShapeTypeOSgMd);
          objc_opt_self();
          v244 = swift_dynamicCastObjCClass();
          if (!v244)
          {

            if ([v239 pointCount] == 6)
            {
              CRRegister.value.getter();
              v87 = v352;
              if (fabs(v353.a + -0.523598776) > 0.01)
              {
                v353.a = 0.523598776;
                CRRegister.value.setter();
              }
            }

            else
            {

              v87 = v352;
            }

            goto LABEL_103;
          }

          v206 = v244;
          v205 = v240;
          v122 = [v206 pointCount];
          if (one-time initialization token for defaultInnerRadius == -1)
          {
            goto LABEL_86;
          }

          goto LABEL_128;
        }

        objc_opt_self();
        v275 = swift_dynamicCastObjCClass();
        if (!v275)
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            objc_opt_self();
            if (!swift_dynamicCastObjCClass() || (objc_opt_self(), (v302 = swift_dynamicCastObjCClass()) == 0))
            {
LABEL_73:

              goto LABEL_103;
            }

            v303 = v302;
            v304 = *&v228;
            CRRegister.wrappedValue.getter();
            v305 = v353.a;
            v306 = v353.b;
            c = v353.c;
            d = v353.d;
            [v303 pointyBitPoint];
            v310 = v309;
            v312 = v311;
            v379.origin.x = v305;
            v379.origin.y = v306;
            v379.size.width = c;
            v379.size.height = d;
            v313 = v310 - CGRectGetMinX(v379);
            v380.origin.x = v305;
            v380.origin.y = v306;
            v380.size.width = c;
            v380.size.height = d;
            v314 = v313 / CGRectGetWidth(v380);
            v381.origin.x = v305;
            v381.origin.y = v306;
            v381.size.width = c;
            v381.size.height = d;
            v315 = v312 - CGRectGetMinY(v381);
            v382.origin.x = v305;
            v382.origin.y = v306;
            v382.size.width = c;
            v382.size.height = d;
            v316 = 1.0 - v315 / CGRectGetHeight(v382);
            [v303 pointyBitBaseWidthAngle];
            v318 = v317;

            outlined destroy of StocksKitCurrencyCache.Provider?(v96, &_s8PaperKit9ShapeTypeOSgMd);
            *v96 = v314;
            v96[1] = v316;
            v96[2] = v318 * 3.14159265 / 180.0 * 0.5;
LABEL_78:
            swift_storeEnumTagMultiPayload();
            v339(v96, 0, 1, v82);
            goto LABEL_103;
          }

LABEL_77:

          outlined destroy of StocksKitCurrencyCache.Provider?(v96, &_s8PaperKit9ShapeTypeOSgMd);
          goto LABEL_78;
        }

        v276 = v275;
        v277 = *&v228;
        v278 = [v276 path];
        if (!v278)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v96, &_s8PaperKit9ShapeTypeOSgMd);

          outlined destroy of AnnotationImporter.ImportedElement(v60, type metadata accessor for Shape);
          goto LABEL_105;
        }

        v279 = v278;
        v280 = v277;
        [v276 rectangle];
        v281 = 1.0 / CGRectGetWidth(v377);
        [v276 rectangle];
        v283 = v282;
        v285 = v284;
        v287 = v286;
        v289 = v288;

        v378.origin.x = v283;
        v378.origin.y = v285;
        v378.size.width = v287;
        v378.size.height = v289;
        v290 = CGRectGetHeight(v378);
        CGAffineTransformMakeScale(&v353, v281, -1.0 / v290);
        [v279 applyTransform_];
        [v279 bounds];
        CGAffineTransformMakeTranslation(&v353, -v291, -v292);
        [v279 applyTransform_];
        v293 = [v276 path];
        if (v293)
        {
          v294 = v293;
          v295 = [v293 CGPath];

          outlined destroy of StocksKitCurrencyCache.Provider?(v96, &_s8PaperKit9ShapeTypeOSgMd);
          v296 = v320;
          *v320 = v295;
          swift_storeEnumTagMultiPayload();
          v339(v296, 0, 1, v82);
          outlined init with take of Range<AttributedString.Index>(v296, v96, &_s8PaperKit9ShapeTypeOSgMd);
          goto LABEL_103;
        }

        goto LABEL_130;
      }

      v297 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*(v334 + 8))(v161, v335);
      if (v297)
      {
        goto LABEL_50;
      }

      v298 = CRAttributedString.attributedString.getter();
      v299 = [v298 length];

      if (__OFSUB__(v299, 1))
      {
        __break(1u);
LABEL_130:
        __break(1u);
        goto LABEL_131;
      }

      v300 = v331;
      CRAttributedString.attributes(at:effectiveRange:)();
      v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
      (*(*(v301 - 8) + 56))(v300, 0, 1, v301);
      outlined init with copy of Date?(v300, v330, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
      CRRegister.wrappedValue.setter();
      v209 = v300;
LABEL_49:
      outlined destroy of StocksKitCurrencyCache.Provider?(v209, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      goto LABEL_50;
    }

    v122 = v121;
    v123 = [*&v113 originalModelBaseScaleFactor];
    MEMORY[0x1EEE9AC00](v123);
    lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
    v124 = v325;
    CRAttributedString.init(_:transformAttributes:)();
    v125 = *(v352 + 52);
    v126 = v334;
    v127 = v335;
    (*(v334 + 40))(&v60[v125], v124, v335);
    (*(v126 + 16))(v327, &v60[v125], v127);
    v128 = CRAttributedString.attributedString.getter();
    v129 = [v128 string];

    v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v132 = v131;

    if (!v130 && v132 == 0xE000000000000000)
    {

      (*(v334 + 8))(v327, v335);
LABEL_43:

      goto LABEL_50;
    }

    v204 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*(v334 + 8))(v327, v335);
    if (v204)
    {
      goto LABEL_43;
    }

    v205 = CRAttributedString.attributedString.getter();
    v206 = [v205 length];

    if (!__OFSUB__(v206, 1))
    {
      v207 = v331;
      CRAttributedString.attributes(at:effectiveRange:)();
      v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
      (*(*(v208 - 8) + 56))(v207, 0, 1, v208);
      outlined init with copy of Date?(v207, v330, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
      CRRegister.wrappedValue.setter();

      v209 = v207;
      goto LABEL_49;
    }

    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    swift_once();
LABEL_86:
    [v206 innerRadiusFactor];
    v246 = v245;

    outlined destroy of StocksKitCurrencyCache.Provider?(v96, &_s8PaperKit9ShapeTypeOSgMd);
    *v96 = v122;
    *(v96 + 1) = v246;
LABEL_75:
    swift_storeEnumTagMultiPayload();
    v339(v96, 0, 1, v82);
    v87 = v352;
    goto LABEL_103;
  }

  objc_opt_self();
  v133 = swift_dynamicCastObjCClass();
  v82 = v351;
  if (!v133)
  {

    v96 = v350;
    v87 = v352;
LABEL_103:
    v269 = v342;
    outlined init with copy of Date?(v96, v342, &_s8PaperKit9ShapeTypeOSgMd);
    if ((*(v343 + 48))(v269, 1, v82) != 1)
    {
      v272 = v336;
      outlined init with take of AnnotationImporter.ImportedElement(v269, v336, type metadata accessor for ShapeType);
      v273 = v338;
      outlined init with copy of AnnotationImporter.ImportedElement(v272, v338, type metadata accessor for ShapeType);
      outlined init with copy of AnnotationImporter.ImportedElement(v273, v337, type metadata accessor for ShapeType);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
      CRRegister.wrappedValue.setter();
      outlined destroy of AnnotationImporter.ImportedElement(v273, type metadata accessor for ShapeType);
      outlined destroy of AnnotationImporter.ImportedElement(v272, type metadata accessor for ShapeType);
      outlined destroy of StocksKitCurrencyCache.Provider?(v96, &_s8PaperKit9ShapeTypeOSgMd);
      v271 = v345;
      outlined init with take of AnnotationImporter.ImportedElement(v60, v345, type metadata accessor for Shape);
      v270 = 0;
      return (*(v344 + 56))(v271, v270, 1, v87);
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v96, &_s8PaperKit9ShapeTypeOSgMd);
    outlined destroy of AnnotationImporter.ImportedElement(v60, type metadata accessor for Shape);
    outlined destroy of StocksKitCurrencyCache.Provider?(v269, &_s8PaperKit9ShapeTypeOSgMd);
LABEL_105:
    v270 = 1;
    v271 = v345;
    return (*(v344 + 56))(v271, v270, 1, v87);
  }

  v122 = v133;
  objc_opt_self();
  v134 = swift_dynamicCastObjCClass();
  v96 = v350;
  if (v134)
  {
    v135 = v134;
    [v98 strokeWidth];
    v137 = v136 * 4.0;
    CRRegister.wrappedValue.getter();
    v355.origin.x = v353.a;
    v355.origin.y = v353.b;
    v355.size.width = v353.c;
    v355.size.height = v353.d;
    v356 = CGRectInset(v355, v137, v137);
    v353.a = v356.origin.x;
    v353.b = v356.origin.y;
    v353.c = v356.size.width;
    v353.d = v356.size.height;
    CRRegister.wrappedValue.setter();
    CRRegister.wrappedValue.getter();
    v357.origin.x = v353.a;
    v357.origin.y = v353.b;
    v357.size.width = v353.c;
    v357.size.height = v353.d;
    MaxX = CGRectGetMaxX(v357);
    [v135 arrowHeadLength];
    v140 = MaxX - v139;
    CRRegister.wrappedValue.getter();
    v358.origin.x = v353.a;
    v358.origin.y = v353.b;
    v358.size.width = v353.c;
    v358.size.height = v353.d;
    MidY = CGRectGetMidY(v358);
    [v135 arrowLineWidth];
    v143 = MidY + v142 * 0.5;
    CRRegister.wrappedValue.getter();
    v144 = v353.a;
    v145 = v353.b;
    v146 = v353.c;
    v147 = v353.d;
    v359.origin.x = v353.a;
    v359.origin.y = v353.b;
    v359.size.width = v353.c;
    v359.size.height = v353.d;
    v148 = v140 - CGRectGetMinX(v359);
    v360.origin.x = v144;
    v360.origin.y = v145;
    v360.size.width = v146;
    v360.size.height = v147;
    v149 = v148 / CGRectGetWidth(v360);
    v361.origin.x = v144;
    v361.origin.y = v145;
    v361.size.width = v146;
    v361.size.height = v147;
    v150 = v143 - CGRectGetMinY(v361);
    v362.origin.x = v144;
    v362.origin.y = v145;
    v362.size.width = v146;
    v362.size.height = v147;
    v151 = CGRectGetHeight(v362);
    outlined destroy of StocksKitCurrencyCache.Provider?(v96, &_s8PaperKit9ShapeTypeOSgMd);
    *v96 = v149;
    v96[1] = 1.0 - v150 / v151;
    swift_storeEnumTagMultiPayload();
    v339(v96, 0, 1, v82);
    v87 = v352;
    goto LABEL_90;
  }

  v167 = v98;
  CRRegister.wrappedValue.getter();
  v168 = v353.a;
  v169 = v353.b;
  v170 = v353.c;
  v171 = v353.d;
  [v122 startPoint];
  v173 = v172;
  v175 = v174;
  v363.origin.x = v168;
  v363.origin.y = v169;
  v363.size.width = v170;
  v363.size.height = v171;
  v176 = v173 - CGRectGetMinX(v363);
  v364.origin.x = v168;
  v364.origin.y = v169;
  v364.size.width = v170;
  v364.size.height = v171;
  v349 = v176 / CGRectGetWidth(v364);
  v365.origin.x = v168;
  v365.origin.y = v169;
  v365.size.width = v170;
  v365.size.height = v171;
  v177 = v175 - CGRectGetMinY(v365);
  v366.origin.x = v168;
  v366.origin.y = v169;
  v366.size.width = v170;
  v366.size.height = v171;
  v348 = 1.0 - v177 / CGRectGetHeight(v366);
  CRRegister.wrappedValue.getter();
  v178 = v353.a;
  v179 = v353.b;
  v180 = v353.c;
  v181 = v353.d;
  [v122 midPoint];
  v183 = v182;
  v185 = v184;
  v367.origin.x = v178;
  v367.origin.y = v179;
  v367.size.width = v180;
  v367.size.height = v181;
  v186 = v183 - CGRectGetMinX(v367);
  v368.origin.x = v178;
  v368.origin.y = v179;
  v368.size.width = v180;
  v368.size.height = v181;
  v187 = v186 / CGRectGetWidth(v368);
  v369.origin.x = v178;
  v369.origin.y = v179;
  v369.size.width = v180;
  v369.size.height = v181;
  v188 = v185 - CGRectGetMinY(v369);
  v370.origin.x = v178;
  v370.origin.y = v179;
  v370.size.width = v180;
  v370.size.height = v181;
  v189 = 1.0 - v188 / CGRectGetHeight(v370);
  CRRegister.wrappedValue.getter();
  v190 = v353.a;
  v191 = v353.b;
  v192 = v353.c;
  v193 = v353.d;
  [v122 endPoint];
  v195 = v194;
  v197 = v196;
  v371.origin.x = v190;
  v371.origin.y = v191;
  v371.size.width = v192;
  v371.size.height = v193;
  v198 = v195 - CGRectGetMinX(v371);
  v372.origin.x = v190;
  v372.origin.y = v191;
  v372.size.width = v192;
  v372.size.height = v193;
  v199 = v198 / CGRectGetWidth(v372);
  v373.origin.x = v190;
  v373.origin.y = v191;
  v373.size.width = v192;
  v373.size.height = v193;
  v200 = v197 - CGRectGetMinY(v373);
  v374.origin.x = v190;
  v374.origin.y = v191;
  v374.size.width = v192;
  v374.size.height = v193;
  v201 = CGRectGetHeight(v374);
  outlined destroy of StocksKitCurrencyCache.Provider?(v96, &_s8PaperKit9ShapeTypeOSgMd);
  v202 = v348;
  *v96 = v349;
  v96[1] = v202;
  v96[2] = v187;
  v96[3] = v189;
  v96[4] = v199;
  v96[5] = 1.0 - v200 / v201;
  swift_storeEnumTagMultiPayload();
  v339(v96, 0, 1, v82);
  v203 = [v122 arrowHeadStyle];
  v87 = v352;
  if (v203 > 1)
  {
    if (v203 == 2)
    {
      *&v353.a = 8;
      LOBYTE(v353.b) = 0;
      goto LABEL_46;
    }

    if (v203 == 3)
    {
      *&v353.a = 8;
      LOBYTE(v353.b) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
      CRRegister.wrappedValue.setter();
      *&v353.a = 8;
      LOBYTE(v353.b) = 0;
      goto LABEL_89;
    }
  }

  else
  {
    if (!v203)
    {
      goto LABEL_90;
    }

    if (v203 == 1)
    {
      *&v353.a = 8;
      LOBYTE(v353.b) = 0;
LABEL_46:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
LABEL_89:
      CRRegister.wrappedValue.setter();
LABEL_90:
      v247 = [v122 annotationText];
      if (!v247)
      {
LABEL_99:
        v262 = [v122 typingAttributes];
        if (v262 && (v263 = v262, v264 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v263, v265 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v264), , v265))
        {
          *&v353.a = v265;
          [v98 originalModelBaseScaleFactor];
          Dictionary<>.scaleBy(_:)(v266);
          v267 = v331;
          CRAttributedString.Attributes<>.init(nsAttributes:darkMode:)(*&v353.a, 0, v331);
          v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
          (*(*(v268 - 8) + 56))(v267, 0, 1, v268);
          outlined init with copy of Date?(v267, v330, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
          CRRegister.wrappedValue.setter();

          outlined destroy of StocksKitCurrencyCache.Provider?(v267, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
        }

        else
        {
        }

        goto LABEL_103;
      }

      v206 = v247;
      v347 = v98;
      v248 = [v98 originalModelBaseScaleFactor];
      MEMORY[0x1EEE9AC00](v248);
      lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
      v249 = v324;
      CRAttributedString.init(_:transformAttributes:)();
      v250 = *(v87 + 52);
      v251 = v334;
      v252 = v335;
      (*(v334 + 40))(&v60[v250], v249, v335);
      (*(v251 + 16))(v326, &v60[v250], v252);
      v253 = CRAttributedString.attributedString.getter();
      v254 = [v253 string];

      v255 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v257 = v256;

      if (v255 || v257 != 0xE000000000000000)
      {
        v258 = _stringCompareWithSmolCheck(_:_:expecting:)();

        (*(v334 + 8))(v326, v335);
        if ((v258 & 1) == 0)
        {
          v205 = CRAttributedString.attributedString.getter();
          v259 = [v205 length];

          if (__OFSUB__(v259, 1))
          {
            goto LABEL_127;
          }

          v260 = v331;
          CRAttributedString.attributes(at:effectiveRange:)();
          v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
          (*(*(v261 - 8) + 56))(v260, 0, 1, v261);
          outlined init with copy of Date?(v260, v330, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
          CRRegister.wrappedValue.setter();

          outlined destroy of StocksKitCurrencyCache.Provider?(v260, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
          goto LABEL_98;
        }
      }

      else
      {

        (*(v334 + 8))(v326, v335);
      }

LABEL_98:
      v98 = v347;
      goto LABEL_99;
    }
  }

LABEL_131:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _s8PaperKit11StrokeStyleO3forACx_tcSo27AKStrokedAnnotationProtocolRzlufCSo0fG0C_Tt1g5Tm@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 brushStyle];
  if (!v4)
  {
    if ([a1 isDashed])
    {
      [a1 strokeWidth];
      v12 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatVGMd);
      v8 = swift_allocObject();
      v9.f64[0] = v12;
      v9.f64[1] = v12 * 3.0;
      *(v8 + 16) = xmmword_1D405C990;
      *(v8 + 32) = vdivq_f64(vaddq_f64(v9, xmmword_1D405FFD0), vdupq_lane_s64(*&v12, 0));

      *a2 = 1.0 / v12;
      *(a2 + 8) = v8;
    }

    else
    {

      v10 = MEMORY[0x1E69E7CC0];
      *a2 = 0;
      *(a2 + 8) = v10;
    }

    *(a2 + 16) = 2;
    goto LABEL_18;
  }

  v5 = v4;

  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v6 = 3;
      goto LABEL_16;
    }

    if (v5 == 4)
    {
      v6 = 4;
      goto LABEL_16;
    }
  }

  else
  {
    if (v5 == 1)
    {
      *a2 = 1;
      *(a2 + 8) = 0;
      goto LABEL_18;
    }

    if (v5 == 2)
    {
      v6 = 2;
LABEL_16:
      *a2 = v6;
      goto LABEL_17;
    }
  }

  *a2 = 0;
LABEL_17:
  *(a2 + 8) = 0;
LABEL_18:
  type metadata accessor for StrokeStyle(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMd);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (1)
  {
    if (!v4)
    {
      while (1)
      {
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v10 >= v5)
        {

          return v1;
        }

        v4 = *(a1 + 64 + 8 * v10);
        ++v8;
        if (v4)
        {
          v8 = v10;
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_29;
    }

LABEL_15:
    v11 = __clz(__rbit64(v4)) | (v8 << 6);
    outlined init with copy of AnyHashable(*(a1 + 48) + 40 * v11, v31);
    outlined init with copy of Any(*(a1 + 56) + 32 * v11, v32 + 8);
    v29[0] = v32[0];
    v29[1] = v32[1];
    v30 = v33;
    v28[0] = v31[0];
    v28[1] = v31[1];
    outlined init with copy of AnyHashable(v28, v25);
    type metadata accessor for NSAttributedStringKey(0);
    if (!swift_dynamicCast())
    {
      break;
    }

    v12 = v24;
    outlined init with copy of Any(v29 + 8, v26 + 8);
    outlined destroy of StocksKitCurrencyCache.Provider?(v28, &_ss11AnyHashableV3key_yp5valuetMd);
    outlined init with take of Any((v26 + 8), v23);
    v13 = v12;
    outlined init with take of Any(v23, v27);
    outlined init with take of Any(v27, v26);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v14 = Hasher._finalize()();

    v15 = -1 << *(v1 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v6 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v6 + 8 * v17);
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

LABEL_29:
      __break(1u);
      return result;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*(v6 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v13;
    result = outlined init with take of Any(v26, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v28, &_ss11AnyHashableV3key_yp5valuetMd);

  return 0;
}

uint64_t static AnnotationImporter.translateDoodleAnnotation(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v169 = *(v170 - 8);
  MEMORY[0x1EEE9AC00](v170);
  v168 = &v124 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v182 = *(v5 - 8);
  v183 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v147 = &v124 - v6;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v166 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v165 = &v124 - v7;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v164 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v163 = &v124 - v8;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v162 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v161 = &v124 - v9;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v160 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v158 = &v124 - v10;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd);
  MEMORY[0x1EEE9AC00](v157);
  v171 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v156 = &v124 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v179 = &v124 - v15;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd);
  MEMORY[0x1EEE9AC00](v155);
  v181 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v180 = &v124 - v18;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v153);
  v152 = (&v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v151 = &v124 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v159 = &v124 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v177 = &v124 - v25;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v176);
  v149 = &v124 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v124 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v124 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v124 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v185 = &v124 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v186 = &v124 - v39;
  v184 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v184);
  v150 = (&v124 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v124 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = (&v124 - v45);
  v47 = type metadata accessor for Shape(0);
  v174 = *(v47 - 1);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v124 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v51 = MEMORY[0x1EEE9AC00](v50).n128_u64[0];
  v187 = &v124 - v52;
  v53 = [a1 path];
  if (v53)
  {
    v129 = v29;
    v145 = a1;
    v146 = a2;
    v54 = v53;
    [v53 bounds];
    v55 = 1.0 / CGRectGetWidth(v190);
    [v54 bounds];
    Height = CGRectGetHeight(v191);
    CGAffineTransformMakeScale(&v188, v55, -1.0 / Height);
    [v54 applyTransform_];
    [v54 bounds];
    CGAffineTransformMakeTranslation(&v188, -v57, -v58);
    [v54 applyTransform_];
    v144 = v54;
    v59 = [v54 CGPath];
    v172 = v46;
    *v46 = v59;
    swift_storeEnumTagMultiPayload();
    v60 = type metadata accessor for Color(0);
    v125 = *(v60 - 8);
    v61 = v125 + 56;
    v62 = *(v125 + 56);
    v62(v186, 1, 1, v60);
    v62(v185, 1, 1, v60);
    (*(v182 + 56))(v177, 1, 1, v183);
    type metadata accessor for CGRect(0);
    v142 = v63;
    v141 = lazy protocol witness table accessor for type PKDrawingStruct and conformance PKDrawingStruct(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
    memset(&v188, 0, 32);
    CRRegister.init(wrappedValue:)();
    v188.a = 0.0;
    v131 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    CRRegister.init(_:)();
    v143 = v47[6];
    v62(v35, 1, 1, v60);
    v130 = v43;
    outlined init with copy of Date?(v35, v32, &_s8PaperKit5ColorVSgMd);
    v138 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v35, &_s8PaperKit5ColorVSgMd);
    v140 = v47[7];
    v148 = v60;
    v127 = v61;
    v126 = v62;
    v62(v35, 1, 1, v60);
    v173 = v35;
    outlined init with copy of Date?(v35, v32, &_s8PaperKit5ColorVSgMd);
    v128 = v32;
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v35, &_s8PaperKit5ColorVSgMd);
    v137 = v47[8];
    v188.a = 5.0;
    CRRegister.init(wrappedValue:)();
    v134 = v47[9];
    v64 = v130;
    swift_storeEnumTagMultiPayload();
    v135 = type metadata accessor for ShapeType;
    outlined init with copy of AnnotationImporter.ImportedElement(v64, v150, type metadata accessor for ShapeType);
    v133 = lazy protocol witness table accessor for type PKDrawingStruct and conformance PKDrawingStruct(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, type metadata accessor for ShapeType);
    CRRegister.init(wrappedValue:)();
    outlined destroy of AnnotationImporter.ImportedElement(v64, type metadata accessor for ShapeType);
    v188.a = 1.0;
    CRRegister.init(wrappedValue:)();
    v188.a = 0.0;
    LOBYTE(v188.b) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
    CRRegister.init(wrappedValue:)();
    v188.a = 0.0;
    LOBYTE(v188.b) = 0;
    CRRegister.init(wrappedValue:)();
    v65 = v47[13];
    lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
    v124 = v65;
    CRAttributedString.init(_:)();
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
    v67 = v151;
    (*(*(v66 - 8) + 56))(v151, 1, 1, v66);
    outlined init with copy of Date?(v67, v152, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v67, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    v68 = v47[15];
    v188.a = 0.0;
    v69 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
    v136 = v68;
    v132 = v69;
    CRRegister.init(wrappedValue:)();
    v188.a = 0.0;
    lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
    CRRegister.init(wrappedValue:)();
    v70 = type metadata accessor for StrokeStyle(0);
    v71 = *(v70 - 8);
    v72 = *(v71 + 56);
    v73 = v180;
    v153 = v70;
    v152 = v72;
    v151 = (v71 + 56);
    (v72)(v180, 1, 1);
    outlined init with copy of Date?(v73, v181, &_s8PaperKit11StrokeStyleOSgMd);
    lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v73, &_s8PaperKit11StrokeStyleOSgMd);
    v74 = type metadata accessor for Shadow();
    v75 = *(v74 - 8);
    v76 = *(v75 + 56);
    v77 = v179;
    v155 = v74;
    v150 = v76;
    v139 = v75 + 56;
    (v76)(v179, 1, 1);
    outlined init with copy of Date?(v77, v156, &_s8PaperKit6ShadowVSgMd);
    lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v77, &_s8PaperKit6ShadowVSgMd);
    memset(&v188, 0, sizeof(v188));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
    lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    v157 = v47;
    UnknownProperties.init()();
    memset(&v188, 0, 32);
    v78 = v158;
    CRRegister.init(_:)();
    (*(v160 + 40))(v49, v78, v178);
    outlined init with copy of AnnotationImporter.ImportedElement(v172, v64, v135);
    v79 = v161;
    CRRegister.init(_:)();
    (*(v162 + 40))(&v49[v134], v79, v154);
    v188.a = 5.0;
    v80 = v163;
    v81 = v175;
    CRRegister.init(_:)();
    (*(v164 + 40))(&v49[v137], v80, v167);
    v82 = v173;
    outlined init with copy of Date?(v186, v173, &_s8PaperKit5ColorVSgMd);
    v83 = v165;
    CRRegister.init(_:)();
    v84 = *(v166 + 40);
    v84(&v49[v140], v83, v81);
    outlined init with copy of Date?(v185, v82, &_s8PaperKit5ColorVSgMd);
    CRRegister.init(_:)();
    v84(&v49[v143], v83, v81);
    v85 = v177;
    v86 = v159;
    outlined init with copy of Date?(v177, v159, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    if ((*(v182 + 48))(v86, 1, v183) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v86, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    }

    else
    {
      v89 = v182;
      v90 = v147;
      v91 = v86;
      v92 = v85;
      v93 = v183;
      (*(v182 + 32))(v147, v91, v183);
      v94 = v93;
      v85 = v92;
      (*(v89 + 40))(&v49[v124], v90, v94);
    }

    v95 = v145;
    v96 = v171;
    v188.a = 0.0;
    v97 = v168;
    CRRegister.init(_:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v85, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v185, &_s8PaperKit5ColorVSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v186, &_s8PaperKit5ColorVSgMd);
    outlined destroy of AnnotationImporter.ImportedElement(v172, type metadata accessor for ShapeType);
    (*(v169 + 40))(&v49[v136], v97, v170);
    outlined init with take of AnnotationImporter.ImportedElement(v49, v187, type metadata accessor for Shape);
    [v95 rectangle];
    v188.a = v98;
    v188.b = v99;
    v188.c = v100;
    v188.d = v101;
    CRRegister.wrappedValue.setter();
    [v95 rotationAngle];
    v103 = v102;
    v104 = v157;
    CRRegister.value.getter();
    v105 = v181;
    if (vabdd_f64(v188.a, v103) > 0.01)
    {
      v188.a = v103;
      CRRegister.value.setter();
    }

    v106 = [v95 hasShadow];
    v107 = v173;
    v108 = v155;
    if (v106)
    {
      *v96 = xmmword_1D405FFE0;
      *(v96 + 16) = 0x4008000000000000;
      v109 = *(v108 + 24);
      v110 = v179;
      if (one-time initialization token for defaultShadowColor != -1)
      {
        swift_once();
      }

      v111 = __swift_project_value_buffer(v148, static UIConstants.defaultShadowColor);
      outlined init with copy of AnnotationImporter.ImportedElement(v111, v96 + v109, type metadata accessor for Color);
      v112 = 0;
    }

    else
    {
      v112 = 1;
      v110 = v179;
    }

    v150(v96, v112, 1, v108);
    outlined init with copy of Date?(v96, v110, &_s8PaperKit6ShadowVSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMd);
    CRRegister.wrappedValue.setter();
    outlined destroy of StocksKitCurrencyCache.Provider?(v96, &_s8PaperKit6ShadowVSgMd);
    v113 = v95;
    v114 = v180;
    _s8PaperKit11StrokeStyleO3forACx_tcSo27AKStrokedAnnotationProtocolRzlufCSo0fG0C_Tt1g5Tm(v113, v180);
    (v152)(v114, 0, 1, v153);
    outlined init with copy of Date?(v114, v105, &_s8PaperKit11StrokeStyleOSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMd);
    CRRegister.wrappedValue.setter();
    outlined destroy of StocksKitCurrencyCache.Provider?(v114, &_s8PaperKit11StrokeStyleOSgMd);
    v115 = [v113 strokeColor];
    if (v115)
    {
      v116 = v115;
      v117 = [v116 CGColor];
      v118 = v149;
      Color.init(cgColor:)(v117, v149);

      v119 = v148;
      if ((*(v125 + 48))(v118, 1, v148))
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v118, &_s8PaperKit5ColorVSgMd);
        v120 = 1;
        v121 = v187;
        v122 = v129;
      }

      else
      {
        v122 = v129;
        outlined init with take of AnnotationImporter.ImportedElement(v118, v129, type metadata accessor for Color);
        v120 = 0;
        v121 = v187;
      }

      v126(v122, v120, 1, v119);
      [v113 pathIsPrestroked];
      outlined init with copy of Date?(v122, v107, &_s8PaperKit5ColorVSgMd);
      outlined init with copy of Date?(v107, v128, &_s8PaperKit5ColorVSgMd);
      CRRegister.wrappedValue.setter();

      outlined destroy of StocksKitCurrencyCache.Provider?(v107, &_s8PaperKit5ColorVSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v122, &_s8PaperKit5ColorVSgMd);
    }

    else
    {

      v121 = v187;
    }

    v123 = v146;
    outlined init with take of AnnotationImporter.ImportedElement(v121, v146, type metadata accessor for Shape);
    return (*(v174 + 56))(v123, 0, 1, v104);
  }

  else
  {
    v87 = *(v174 + 56);

    return v87(a2, 1, 1, v47);
  }
}

uint64_t static AnnotationImporter.translateSignatureAnnotation(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v105 = &v96 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v96 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v106 = &v96 - v13;
  v113 = type metadata accessor for Date();
  v115 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v109 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v96 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v110 = &v96 - v19;
  v114 = type metadata accessor for UUID();
  v20 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v22 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v96 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v112 = &v96 - v27;
  v28 = type metadata accessor for Signature(0);
  v116 = *(v28 - 8);
  *&v29 = MEMORY[0x1EEE9AC00](v28).n128_u64[0];
  v31 = &v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = a1;
  v32 = [a1 signature];
  if (v32)
  {
    v33 = v32;
    v111 = v28;
    v100 = v11;
    v101 = v6;
    v108 = a2;
    v34 = [v32 descriptionTag];
    v35 = [v33 description];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    SignatureDescription.init(tag:customDescription:)(v34, v36, v38, &v117);
    v39 = v117;
    v40 = v118;
    Signature.init()();
    v41 = [v33 uniqueID];
    if (v41)
    {
      v42 = v41;
      v102 = v39;
      v103 = v31;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v43 = v112;
      v44 = v114;
      (*(v20 + 32))(v112, v25, v114);
      v45 = [v33 creationDate];
      if (v45)
      {
        v99 = v40;
        v46 = v43;
        v47 = v45;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v48 = v115;
        v49 = v110;
        v50 = v17;
        v51 = v113;
        (*(v115 + 32))(v110, v50, v113);
        v52 = v46;
        v53 = *(v20 + 16);
        v53(v22, v52, v44);
        [v33 baselineOffset];
        v55 = v54;
        v56 = *(v48 + 16);
        v56(v109, v49, v51);
        v98 = [v33 shouldPersist];
        v97 = [v33 path];
        v57 = [v33 drawing];
        v104 = v20;
        if (v57)
        {
          v58 = v106;
          v59 = v57;
          static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

          v60 = 0;
        }

        else
        {
          v60 = 1;
          v58 = v106;
        }

        v63 = type metadata accessor for PKDrawing();
        (*(*(v63 - 8) + 56))(v58, v60, 1, v63);
        v64 = type metadata accessor for SignatureItem();
        v65 = objc_allocWithZone(v64);
        v66 = v114;
        v53(&v65[OBJC_IVAR____TtC8PaperKit13SignatureItem_uniqueID], v22, v114);
        *&v65[OBJC_IVAR____TtC8PaperKit13SignatureItem_baselineOffset] = v55;
        v67 = OBJC_IVAR____TtC8PaperKit13SignatureItem_creationDate;
        v106 = v22;
        v68 = v109;
        v69 = v113;
        v56(&v65[OBJC_IVAR____TtC8PaperKit13SignatureItem_creationDate], v109, v113);
        v70 = v115;
        (*(v115 + 56))(&v65[v67], 0, 1, v69);
        v65[OBJC_IVAR____TtC8PaperKit13SignatureItem_shouldPersist] = v98;
        v71 = &v65[OBJC_IVAR____TtC8PaperKit13SignatureItem_signatureDescription];
        v72 = v99;
        *v71 = v102;
        v71[1] = v72;
        *&v65[OBJC_IVAR____TtC8PaperKit13SignatureItem_path] = v97;
        outlined init with copy of Date?(v58, &v65[OBJC_IVAR____TtC8PaperKit13SignatureItem_drawing], &_s9PencilKit9PKDrawingVSgMd);
        v65[OBJC_IVAR____TtC8PaperKit13SignatureItem_isOwned] = 1;
        v121.receiver = v65;
        v121.super_class = v64;
        v73 = objc_msgSendSuper2(&v121, sel_init);
        outlined destroy of StocksKitCurrencyCache.Provider?(v58, &_s9PencilKit9PKDrawingVSgMd);
        v74 = *(v70 + 8);
        v115 = v70 + 8;
        v74(v68, v69);
        v75 = *(v104 + 8);
        v104 += 8;
        v75(v106, v66);
        v117 = v73;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd);
        v76 = v103;
        CRRegister.wrappedValue.setter();
        v77 = v107;
        [v107 drawingBounds];
        v117 = v78;
        v118 = v79;
        v119 = v80;
        v120 = v81;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
        CRRegister.wrappedValue.setter();
        [v77 rotationAngle];
        v117 = v82;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
        CRRegister.wrappedValue.setter();
        v83 = [v77 strokeColor];
        if (v83)
        {
          v109 = v74;
          v84 = v83;
          v85 = [v84 CGColor];
          v86 = v105;
          Color.init(cgColor:)(v85, v105);

          v87 = type metadata accessor for Color(0);
          v88 = (*(v87 - 8) + 48);
          v89 = (*v88)(v86, 1, v87);
          v90 = (v88 + 1);
          if (v89)
          {
            outlined destroy of StocksKitCurrencyCache.Provider?(v86, &_s8PaperKit5ColorVSgMd);
            v91 = 1;
            v92 = v100;
          }

          else
          {
            v92 = v100;
            outlined init with take of AnnotationImporter.ImportedElement(v86, v100, type metadata accessor for Color);
            v91 = 0;
          }

          (*v90)(v92, v91, 1, v87);
          outlined init with copy of Date?(v92, v101, &_s8PaperKit5ColorVSgMd);
          v93 = v111;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
          CRRegister.wrappedValue.setter();

          outlined destroy of StocksKitCurrencyCache.Provider?(v92, &_s8PaperKit5ColorVSgMd);
          v74 = v109;
        }

        else
        {

          v93 = v111;
        }

        v74(v110, v113);
        v75(v112, v114);
        v94 = v76;
        v95 = v108;
        outlined init with take of AnnotationImporter.ImportedElement(v94, v108, type metadata accessor for Signature);
        return (*(v116 + 56))(v95, 0, 1, v93);
      }

      outlined consume of SignatureDescription(v102, v40);
      (*(v20 + 8))(v43, v44);
      outlined destroy of AnnotationImporter.ImportedElement(v103, type metadata accessor for Signature);
    }

    else
    {
      outlined destroy of AnnotationImporter.ImportedElement(v31, type metadata accessor for Signature);

      outlined consume of SignatureDescription(v39, v40);
    }

    return (*(v116 + 56))(v108, 1, 1, v111);
  }

  v61 = *(v116 + 56);

  return v61(a2, 1, 1, v28);
}

uint64_t static AnnotationImporter.translateLoupeAnnotation(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Color(0);
  v36 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v35);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v31 - v10);
  v12 = type metadata accessor for UnknownProperties();
  v39 = *(v12 - 8);
  v40 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v38 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  UnknownProperties.init()();
  type metadata accessor for CGRect(0);
  lazy protocol witness table accessor for type PKDrawingStruct and conformance PKDrawingStruct(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
  v41 = 0u;
  v42 = 0u;
  CRRegister.init(wrappedValue:)();
  v14 = type metadata accessor for LoupeElement(0);
  v15 = v14[5];
  v41 = 0u;
  v42 = 0u;
  v37 = v15;
  CRRegister.init(wrappedValue:)();
  v16 = v14[6];
  *&v41 = 0;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v33 = v16;
  CRRegister.init(wrappedValue:)();
  v17 = v14[7];
  *&v41 = 0x3FF8000000000000;
  v34 = v17;
  CRRegister.init(wrappedValue:)();
  v18 = v4;
  v19 = *(v4 + 20);
  v20 = type metadata accessor for UnknownValueProperties();
  (*(*(v20 - 8) + 56))(v6 + v19, 1, 1, v20);
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  result = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F510A0);
  if (result)
  {
    v22 = result;
    v32 = a1;
    CGColorRef.calculateMinimumHeadroom.getter();
    result = CGColorCreateWithContentHeadroom();
    if (result)
    {
      v23 = result;

      *v6 = v23;
      Color.withAlphaComponent(_:)(v11, 0.5);
      outlined destroy of AnnotationImporter.ImportedElement(v6, type metadata accessor for Color);
      (*(v36 + 56))(v11, 0, 1, v18);
      outlined init with copy of Date?(v11, v8, &_s8PaperKit5ColorVSgMd);
      lazy protocol witness table accessor for type Color? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s8PaperKit5ColorVSgMd);
      *&v41 = 0x4004000000000000;
      CRRegister.init(wrappedValue:)();
      v24 = v14[10];
      UnknownProperties.init()();
      v41 = 0u;
      v42 = 0u;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
      CRRegister.wrappedValue.setter();
      v41 = 0u;
      v42 = 0u;
      CRRegister.wrappedValue.setter();
      *&v41 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
      CRRegister.wrappedValue.setter();
      (*(v39 + 40))(a2 + v24, v38, v40);
      v25 = v32;
      [v32 magnification];
      *&v41 = v26;
      CRRegister.wrappedValue.setter();
      [v25 rectangle];
      *&v41 = v27;
      *(&v41 + 1) = v28;
      *&v42 = v29;
      *(&v42 + 1) = v30;
      CRRegister.wrappedValue.setter();
      return (*(*(v14 - 1) + 56))(a2, 0, 1, v14);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static AnnotationImporter.addAnnotation<A>(_:from:in:id:scale:mediaBox:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, CGFloat a6@<D0>, double a7@<D2>, double a8@<D4>)
{
  v42 = a5;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v16 = *(v15 - 8);
  v40 = v15;
  v41 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v39 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18AnnotationImporterV15ImportedElementOSgMd);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v39 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v39 - v26;
  static AnnotationImporter.importElement<A>(_:from:in:id:scale:mediaBox:)(a1, a2, a3, a4, &v39 - v26, a6, a7, a8);
  outlined init with copy of Date?(v27, v24, &_s8PaperKit18AnnotationImporterV15ImportedElementOSgMd);
  v28 = type metadata accessor for AnnotationImporter.ImportedElement();
  if ((*(*(v28 - 8) + 48))(v24, 1, v28) != 1)
  {
    outlined init with copy of Date?(v24, v21, &_s8PaperKit18AnnotationImporterV15ImportedElementOSgMd);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of AnnotationImporter.ImportedElement(v21, type metadata accessor for AnnotationImporter.ImportedElement);
    }

    else
    {
      v29 = v40;
      (*(v41 + 32))(v18, v21, v40);
      objc_opt_self();
      if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
      {
        v30 = 0;
      }

      else
      {
        objc_opt_self();
        v30 = swift_dynamicCastObjCClass() == 0;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass() || ((objc_opt_self(), swift_dynamicCastObjCClass()) ? (v31 = 1) : (v31 = v30), (v31 & 1) != 0))
      {
        v32 = SharedTagged_10.subscript.modify();
        v34 = *(v33 + 24);
        v35 = *(v33 + 32);
        __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
        v36 = (*(v35 + 104))(v43, v34, v35);
        *v37 |= 0x88uLL;
        v36(v43, 0);
        v32(v44, 0);
      }

      (*(v41 + 8))(v18, v29);
    }
  }

  outlined init with take of Range<AttributedString.Index>(v27, v42, &_s8PaperKit18AnnotationImporterV15ImportedElementOSgMd);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v24, &_s8PaperKit18AnnotationImporterV15ImportedElementOSgMd);
}

uint64_t static AnnotationImporter.importElement<A>(_:from:in:id:scale:mediaBox:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, CGFloat a6@<D0>, double a7@<D2>, double a8@<D4>)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v317 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v316 = &v282 - v17;
  v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v323 = *(v324 - 8);
  MEMORY[0x1EEE9AC00](v324);
  v283 = &v282 - v18;
  v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v314 = *(v315 - 8);
  MEMORY[0x1EEE9AC00](v315);
  v313 = &v282 - v19;
  v343 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v312 = *(v343 - 8);
  MEMORY[0x1EEE9AC00](v343);
  v311 = &v282 - v20;
  v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v309 = *(v310 - 8);
  MEMORY[0x1EEE9AC00](v310);
  v308 = &v282 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v306 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v304 = &v282 - v23;
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd);
  MEMORY[0x1EEE9AC00](v303);
  v302 = &v282 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v301 = &v282 - v26;
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd);
  MEMORY[0x1EEE9AC00](v300);
  v299 = &v282 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v298 = &v282 - v29;
  v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v296);
  v295 = &v282 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v294 = &v282 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v305 = &v282 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v329 = &v282 - v36;
  v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v322);
  v291 = &v282 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v321 = &v282 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v328 = &v282 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v327 = &v282 - v43;
  v325 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v325);
  v292 = &v282 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v297 = &v282 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v326 = &v282 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9SignatureVSgMd);
  MEMORY[0x1EEE9AC00](v49 - 8);
  v319 = &v282 - v50;
  v320 = type metadata accessor for Signature(0);
  v318 = *(v320 - 8);
  MEMORY[0x1EEE9AC00](v320);
  v284 = &v282 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v285 = &v282 - v53;
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v288 = *(v289 - 8);
  MEMORY[0x1EEE9AC00](v289);
  v290 = &v282 - v54;
  v333 = type metadata accessor for PKDrawing();
  v332 = *(v333 - 8);
  MEMORY[0x1EEE9AC00](v333);
  v286 = &v282 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v287 = &v282 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd);
  MEMORY[0x1EEE9AC00](v58 - 8);
  v330 = &v282 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v331 = &v282 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit12LoupeElementVSgMd);
  MEMORY[0x1EEE9AC00](v62 - 8);
  v339 = &v282 - v63;
  v340 = type metadata accessor for LoupeElement(0);
  v338 = *(v340 - 8);
  MEMORY[0x1EEE9AC00](v340);
  v336 = &v282 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65);
  v337 = &v282 - v66;
  v67 = type metadata accessor for CRKeyPath();
  v344 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v282 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd);
  MEMORY[0x1EEE9AC00](v70 - 8);
  v335 = &v282 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v72);
  v345 = &v282 - v73;
  v74 = type metadata accessor for Shape(0);
  v346 = *(v74 - 1);
  MEMORY[0x1EEE9AC00](v74);
  v293 = &v282 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v76);
  v307 = &v282 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v334 = &v282 - v79;
  MEMORY[0x1EEE9AC00](v80);
  v342 = &v282 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v347 = (&v282 - v83);
  CGAffineTransformMakeScale(&t1, a6, a6);
  v351 = t1;
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  tx = t1.tx;
  ty = t1.ty;
  if (!a2)
  {
    memset(&t1, 0, 32);
    outlined destroy of StocksKitCurrencyCache.Provider?(&t1, &_sypSgMd);
    v341 = 0;
    goto LABEL_15;
  }

  if ([a2 valueForAnnotationKey_])
  {
    v341 = v16;
    _bridgeAnyObjectToAny(_:)();
    v16 = v341;
    swift_unknownObjectRelease();
  }

  else
  {
    memset(&t2, 0, 32);
  }

  *&t1.a = *&t2.a;
  *&t1.c = *&t2.c;
  if (!*&t2.d)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(&t1, &_sypSgMd);
    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v90 = 0;
    goto LABEL_14;
  }

  if ((LOBYTE(t2.a) & 2) == 0)
  {
    if ((LOBYTE(t2.a) & 0x40) != 0)
    {
      v90 = 2;
      if ((LOBYTE(t2.a) & 0x80) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v90 = 0;
      if ((LOBYTE(t2.a) & 0x80) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_42;
  }

  if ((LOBYTE(t2.a) & 0x40) == 0)
  {
    v90 = 1;
    if ((LOBYTE(t2.a) & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

  v90 = 3;
  if ((LOBYTE(t2.a) & 0x80) != 0)
  {
LABEL_42:
    v90 |= 4uLL;
  }

LABEL_14:
  v341 = v90 | 0x70;
LABEL_15:
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    v282 = a5;
    objc_opt_self();
    v91 = swift_dynamicCastObjCClass();
    if (v91)
    {
      v92 = v91;
      v93 = a1;
      v94 = v67;
      v95 = a4;
      v96 = v93;
      v97 = v345;
      static AnnotationImporter.translateDoodleAnnotation(_:)(v92, v345);
      if ((*(v346 + 48))(v97, 1, v74) == 1)
      {

LABEL_19:
        v98 = &_s8PaperKit5ShapeVSgMd;
        v99 = v97;
LABEL_23:
        outlined destroy of StocksKitCurrencyCache.Provider?(v99, v98);
        a5 = v282;
        goto LABEL_24;
      }

      v346 = a3;
      outlined init with take of AnnotationImporter.ImportedElement(v97, v347, type metadata accessor for Shape);
      Shape.apply(_:)(&v351);
      if (a2)
      {
        v110 = a2;
        if ([v110 hasAppearanceStream])
        {
          [v110 bounds];
          v112 = v111;
          v114 = v113;
          CRRegister.wrappedValue.getter();
          Shape.appearanceStreamOffset.setter(v112 - t1.a, v114 - t1.b);
        }
      }

      v115 = v347;
      v116 = CRRegister.wrappedValue.modify();
      v118 = v117;
      v119 = *v117;
      v120 = v117[1];
      v121 = v117[2];
      v122 = v117[3];
      v352.origin.x = *v117;
      v352.origin.y = v120;
      v352.size.width = v121;
      v352.size.height = v122;
      MinX = CGRectGetMinX(v352);
      v353.origin.x = v119;
      v353.origin.y = v120;
      v353.size.width = v121;
      v353.size.height = v122;
      v124 = a7 + a7 + a8 - CGRectGetMaxY(v353);
      v354.origin.x = v119;
      v354.origin.y = v120;
      v354.size.width = v121;
      v354.size.height = v122;
      Width = CGRectGetWidth(v354);
      v355.origin.x = v119;
      v355.origin.y = v120;
      v355.size.width = v121;
      v355.size.height = v122;
      Height = CGRectGetHeight(v355);
      *v118 = MinX;
      v118[1] = v124;
      v118[2] = Width;
      v118[3] = Height;
      v116(&t1, 0);
      CRRegister.value.getter();
      v127 = t1.a;
      CRRegister.value.getter();
      if (fabs(v127 + t1.a) > 0.01)
      {
        t1.a = -v127;
        CRRegister.value.setter();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
      v128 = CRRegister.wrappedValue.modify();
      *v129 |= v341;
      v128(&t1, 0);
      outlined init with copy of AnnotationImporter.ImportedElement(v115, v342, type metadata accessor for Shape);
      (*(v344 + 16))(v69, v95, v94);
      lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();

      v130 = v282;
      SharedTagged_10.init<A>(_:_:id:)();

      v131 = type metadata accessor for Shape;
    }

    else
    {
      v100 = v16;
      objc_opt_self();
      v101 = swift_dynamicCastObjCClass();
      if (!v101)
      {
        objc_opt_self();
        v132 = swift_dynamicCastObjCClass();
        if (v132)
        {
          v133 = v132;
          v134 = a1;
          v135 = v133;
          v97 = v335;
          static AnnotationImporter.translateStrokedAnnotation(_:)(v135, v335);
          if ((*(v346 + 48))(v97, 1, v74) == 1)
          {

            goto LABEL_19;
          }

          v346 = a3;
          v162 = v334;
          outlined init with take of AnnotationImporter.ImportedElement(v97, v334, type metadata accessor for Shape);
          Shape.apply(_:)(&v351);
          if (a2)
          {
            v163 = a2;
            if ([v163 hasAppearanceStream])
            {
              [v163 bounds];
              v165 = v164;
              v167 = v166;
              CRRegister.wrappedValue.getter();
              Shape.appearanceStreamOffset.setter(v165 - t1.a, v167 - t1.b);
            }

            v162 = v334;
          }

          v168 = CRRegister.wrappedValue.modify();
          v170 = v169;
          v171 = *v169;
          v172 = v169[1];
          v173 = v169[2];
          v174 = v169[3];
          v360.origin.x = *v169;
          v360.origin.y = v172;
          v360.size.width = v173;
          v360.size.height = v174;
          v175 = CGRectGetMinX(v360);
          v361.origin.x = v171;
          v361.origin.y = v172;
          v361.size.width = v173;
          v361.size.height = v174;
          v176 = a7 + a7 + a8 - CGRectGetMaxY(v361);
          v362.origin.x = v171;
          v362.origin.y = v172;
          v362.size.width = v173;
          v362.size.height = v174;
          v177 = CGRectGetWidth(v362);
          v363.origin.x = v171;
          v363.origin.y = v172;
          v363.size.width = v173;
          v363.size.height = v174;
          v178 = CGRectGetHeight(v363);
          *v170 = v175;
          v170[1] = v176;
          v170[2] = v177;
          v170[3] = v178;
          v168(&t1, 0);
          CRRegister.value.getter();
          v179 = t1.a;
          CRRegister.value.getter();
          if (fabs(v179 + t1.a) > 0.01)
          {
            t1.a = -v179;
            CRRegister.value.setter();
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
          v180 = CRRegister.wrappedValue.modify();
          *v181 |= v341;
          v180(&t1, 0);
          outlined init with copy of AnnotationImporter.ImportedElement(v162, v342, type metadata accessor for Shape);
          (*(v344 + 16))(v69, a4, v67);
          lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();

          v182 = v282;
          SharedTagged_10.init<A>(_:_:id:)();

          outlined destroy of AnnotationImporter.ImportedElement(v162, type metadata accessor for Shape);
          v151 = type metadata accessor for AnnotationImporter.ImportedElement();
          swift_storeEnumTagMultiPayload();
          v106 = *(*(v151 - 8) + 56);
          v107 = v182;
        }

        else
        {
          objc_opt_self();
          v152 = swift_dynamicCastObjCClass();
          if (!v152)
          {
            v345 = v22;
            v346 = a3;
            objc_opt_self();
            v183 = swift_dynamicCastObjCClass();
            if (!v183)
            {
              v335 = a1;
              v336 = a2;
              v337 = v67;
              v338 = v69;
              v339 = a4;
              swift_storeEnumTagMultiPayload();
              v188 = type metadata accessor for Color(0);
              v189 = *(v188 - 8);
              v190 = *(v189 + 56);
              v191 = v189 + 56;
              (v190)(v327, 1, 1, v188);
              (v190)(v328, 1, 1, v188);
              v320 = v191;
              v347 = v190;
              (*(v323 + 56))(v329, 1, 1, v324);
              type metadata accessor for CGRect(0);
              v333 = v192;
              v332 = lazy protocol witness table accessor for type PKDrawingStruct and conformance PKDrawingStruct(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
              memset(&t1, 0, 32);
              v193 = v293;
              CRRegister.init(wrappedValue:)();
              t1.a = 0.0;
              v340 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
              CRRegister.init(_:)();
              v334 = v74[6];
              v194 = v321;
              (v190)(v321, 1, 1, v188);
              v195 = v194;
              v196 = v194;
              v197 = v291;
              outlined init with copy of Date?(v195, v291, &_s8PaperKit5ColorVSgMd);
              v330 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
              CRRegister.init(wrappedValue:)();
              outlined destroy of StocksKitCurrencyCache.Provider?(v196, &_s8PaperKit5ColorVSgMd);
              v331 = v74[7];
              (v347)(v196, 1, 1, v188);
              outlined init with copy of Date?(v196, v197, &_s8PaperKit5ColorVSgMd);
              CRRegister.init(wrappedValue:)();
              outlined destroy of StocksKitCurrencyCache.Provider?(v196, &_s8PaperKit5ColorVSgMd);
              v320 = v74[8];
              t1.a = 5.0;
              CRRegister.init(wrappedValue:)();
              v291 = v74[9];
              v198 = v297;
              swift_storeEnumTagMultiPayload();
              v318 = type metadata accessor for ShapeType;
              outlined init with copy of AnnotationImporter.ImportedElement(v198, v292, type metadata accessor for ShapeType);
              lazy protocol witness table accessor for type PKDrawingStruct and conformance PKDrawingStruct(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, type metadata accessor for ShapeType);
              CRRegister.init(wrappedValue:)();
              outlined destroy of AnnotationImporter.ImportedElement(v198, type metadata accessor for ShapeType);
              t1.a = 1.0;
              CRRegister.init(wrappedValue:)();
              t1.a = 0.0;
              LOBYTE(t1.b) = 0;
              v347 = v74;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
              lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
              CRRegister.init(wrappedValue:)();
              t1.a = 0.0;
              LOBYTE(t1.b) = 0;
              CRRegister.init(wrappedValue:)();
              v199 = v347[13];
              lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
              v292 = v199;
              CRAttributedString.init(_:)();
              v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
              v201 = v294;
              (*(*(v200 - 8) + 56))(v294, 1, 1, v200);
              outlined init with copy of Date?(v201, v295, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
              lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
              CRRegister.init(wrappedValue:)();
              outlined destroy of StocksKitCurrencyCache.Provider?(v201, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
              v202 = v347[15];
              t1.a = 0.0;
              v203 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
              v319 = v202;
              v296 = v203;
              CRRegister.init(wrappedValue:)();
              t1.a = 0.0;
              lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
              CRRegister.init(wrappedValue:)();
              v204 = type metadata accessor for StrokeStyle(0);
              v205 = v298;
              (*(*(v204 - 8) + 56))(v298, 1, 1, v204);
              outlined init with copy of Date?(v205, v299, &_s8PaperKit11StrokeStyleOSgMd);
              lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
              CRRegister.init(wrappedValue:)();
              outlined destroy of StocksKitCurrencyCache.Provider?(v205, &_s8PaperKit11StrokeStyleOSgMd);
              v206 = type metadata accessor for Shadow();
              v207 = v301;
              (*(*(v206 - 8) + 56))(v301, 1, 1, v206);
              outlined init with copy of Date?(v207, v302, &_s8PaperKit6ShadowVSgMd);
              lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
              v208 = v193;
              CRRegister.init(wrappedValue:)();
              outlined destroy of StocksKitCurrencyCache.Provider?(v207, &_s8PaperKit6ShadowVSgMd);
              memset(&t1, 0, sizeof(t1));
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
              lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
              CRRegister.init(wrappedValue:)();
              UnknownProperties.init()();
              memset(&t1, 0, 32);
              v209 = v304;
              CRRegister.init(_:)();
              (*(v306 + 40))(v193, v209, v345);
              outlined init with copy of AnnotationImporter.ImportedElement(v326, v198, v318);
              v210 = v308;
              CRRegister.init(_:)();
              (*(v309 + 40))(v193 + v291, v210, v310);
              t1.a = 5.0;
              v211 = v311;
              CRRegister.init(_:)();
              (*(v312 + 40))(v193 + v320, v211, v343);
              v212 = v321;
              outlined init with copy of Date?(v327, v321, &_s8PaperKit5ColorVSgMd);
              v213 = v313;
              CRRegister.init(_:)();
              v214 = *(v314 + 40);
              v215 = (v193 + v331);
              v216 = v315;
              v214(v215, v213, v315);
              outlined init with copy of Date?(v328, v212, &_s8PaperKit5ColorVSgMd);
              v217 = v323;
              CRRegister.init(_:)();
              v214((v208 + v334), v213, v216);
              v218 = v324;
              v219 = v305;
              outlined init with copy of Date?(v329, v305, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
              if ((*(v217 + 48))(v219, 1, v218) == 1)
              {
                outlined destroy of StocksKitCurrencyCache.Provider?(v219, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
              }

              else
              {
                v248 = v283;
                (*(v217 + 32))(v283, v219, v218);
                (*(v217 + 40))(v208 + v292, v248, v218);
              }

              v249 = v335;
              v250 = v100;
              v251 = v307;
              t1.a = 0.0;
              v252 = v316;
              CRRegister.init(_:)();
              outlined destroy of StocksKitCurrencyCache.Provider?(v329, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
              outlined destroy of StocksKitCurrencyCache.Provider?(v328, &_s8PaperKit5ColorVSgMd);
              outlined destroy of StocksKitCurrencyCache.Provider?(v327, &_s8PaperKit5ColorVSgMd);
              outlined destroy of AnnotationImporter.ImportedElement(v326, type metadata accessor for ShapeType);
              (*(v317 + 40))(v208 + v319, v252, v250);
              outlined init with take of AnnotationImporter.ImportedElement(v208, v251, type metadata accessor for Shape);
              objc_opt_self();
              v253 = swift_dynamicCastObjCClass();
              v254 = v339;
              v255 = v337;
              if (v253)
              {
                [v253 rectangle];
              }

              else
              {
                [v249 drawingBounds];
              }

              v260 = v338;
              t1.a = v256;
              t1.b = v257;
              t1.c = v258;
              t1.d = v259;
              CRRegister.wrappedValue.setter();
              v261 = CRRegister.wrappedValue.modify();
              v372 = *v262;
              t1.a = a;
              t1.b = b;
              t1.c = c;
              t1.d = d;
              t1.tx = tx;
              t1.ty = ty;
              *v262 = CGRectApplyAffineTransform(v372, &t1);
              v261(&t2, 0);
              if (v336)
              {
                v263 = v336;
                if ([v263 hasAppearanceStream])
                {
                  [v263 bounds];
                  v265 = v264;
                  v267 = v266;
                  CRRegister.wrappedValue.getter();
                  Shape.appearanceStreamOffset.setter(v265 - t1.a, v267 - t1.b);
                }
              }

              v268 = CRRegister.wrappedValue.modify();
              v270 = v269;
              v271 = *v269;
              v272 = v269[1];
              v273 = v269[2];
              v274 = v269[3];
              v373.origin.x = *v269;
              v373.origin.y = v272;
              v373.size.width = v273;
              v373.size.height = v274;
              v275 = CGRectGetMinX(v373);
              v374.origin.x = v271;
              v374.origin.y = v272;
              v374.size.width = v273;
              v374.size.height = v274;
              v276 = a7 + a7 + a8 - CGRectGetMaxY(v374);
              v375.origin.x = v271;
              v375.origin.y = v272;
              v375.size.width = v273;
              v375.size.height = v274;
              v277 = CGRectGetWidth(v375);
              v376.origin.x = v271;
              v376.origin.y = v272;
              v376.size.width = v273;
              v376.size.height = v274;
              v278 = CGRectGetHeight(v376);
              *v270 = v275;
              v270[1] = v276;
              v270[2] = v277;
              v270[3] = v278;
              v268(&t1, 0);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
              v279 = CRRegister.wrappedValue.modify();
              *v280 |= v341;
              v279(&t1, 0);
              outlined init with copy of AnnotationImporter.ImportedElement(v251, v342, type metadata accessor for Shape);
              (*(v344 + 16))(v260, v254, v255);
              lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();

              v281 = v282;
              SharedTagged_10.init<A>(_:_:id:)();
              outlined destroy of AnnotationImporter.ImportedElement(v251, type metadata accessor for Shape);
              v151 = type metadata accessor for AnnotationImporter.ImportedElement();
              swift_storeEnumTagMultiPayload();
              v106 = *(*(v151 - 8) + 56);
              v107 = v281;
              goto LABEL_46;
            }

            v184 = v183;
            v185 = a1;
            v186 = v319;
            static AnnotationImporter.translateSignatureAnnotation(_:)(v184, v319);
            if ((*(v318 + 6))(v186, 1, v320) == 1)
            {

              v98 = &_s8PaperKit9SignatureVSgMd;
              v99 = v186;
              goto LABEL_23;
            }

            v220 = v285;
            outlined init with take of AnnotationImporter.ImportedElement(v186, v285, type metadata accessor for Signature);
            Signature.apply(_:)(&v351);
            v221 = CRRegister.wrappedValue.modify();
            v223 = v222;
            v224 = *v222;
            v225 = v222[1];
            v226 = v222[2];
            v227 = v222[3];
            v364.origin.x = *v222;
            v364.origin.y = v225;
            v364.size.width = v226;
            v364.size.height = v227;
            v228 = CGRectGetMinX(v364);
            v365.origin.x = v224;
            v365.origin.y = v225;
            v365.size.width = v226;
            v365.size.height = v227;
            v229 = a7 + a7 + a8 - CGRectGetMaxY(v365);
            v366.origin.x = v224;
            v366.origin.y = v225;
            v366.size.width = v226;
            v366.size.height = v227;
            v230 = CGRectGetWidth(v366);
            v367.origin.x = v224;
            v367.origin.y = v225;
            v367.size.width = v226;
            v367.size.height = v227;
            v231 = CGRectGetHeight(v367);
            *v223 = v228;
            v223[1] = v229;
            v223[2] = v230;
            v223[3] = v231;
            v221(&t1, 0);
            v232 = CRRegister.wrappedValue.modify();
            *v233 = -*v233;
            v232(&t1, 0);
            outlined init with copy of AnnotationImporter.ImportedElement(v220, v284, type metadata accessor for Signature);
            (*(v344 + 16))(v69, a4, v67);
            lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();

            v130 = v282;
            SharedTagged_10.init<A>(_:_:id:)();

            v149 = type metadata accessor for Signature;
            v150 = v220;
            goto LABEL_45;
          }

          v153 = v152;
          v154 = a1;
          v155 = [v153 drawing];
          if (v155)
          {
            v156 = v330;
            v157 = v155;
            static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

            v158 = 0;
            a5 = v282;
            v159 = v333;
            v160 = v332;
            v161 = v331;
          }

          else
          {
            v158 = 1;
            a5 = v282;
            v159 = v333;
            v160 = v332;
            v161 = v331;
            v156 = v330;
          }

          (*(v160 + 56))(v156, v158, 1, v159);
          outlined init with take of Range<AttributedString.Index>(v156, v161, &_s9PencilKit9PKDrawingVSgMd);
          if ((*(v160 + 48))(v161, 1, v159) == 1)
          {

            outlined destroy of StocksKitCurrencyCache.Provider?(v161, &_s9PencilKit9PKDrawingVSgMd);
            goto LABEL_24;
          }

          type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKDrawing);
          swift_dynamicCast();
          v187 = *&t1.a;
          v234 = specialized PKDrawingCoherence.__allocating_init(concreteDrawing:)();

          v235 = v234;
          [v153 rectangle];
          v236 = CGRectGetWidth(v368);
          [v235 bounds];
          v237 = v236 / CGRectGetWidth(v369);
          [v153 rectangle];
          v238 = CGRectGetHeight(v370);
          [v235 bounds];
          v239 = CGRectGetHeight(v371);
          CGAffineTransformMakeScale(&t1, v237, v238 / v239);
          v240 = *&t1.a;
          v241 = *&t1.c;
          v242 = *&t1.tx;
          t1.a = a;
          t1.b = b;
          t1.c = c;
          t1.d = d;
          t1.tx = tx;
          t1.ty = ty;
          *&t2.a = v240;
          *&t2.c = v241;
          *&t2.tx = v242;
          CGAffineTransformConcat(&v348, &t1, &t2);
          t1 = v348;
          v243 = [v235 drawingByApplyingTransform_];

          v244 = v286;
          static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

          (*(v160 + 32))(v287, v244, v159);
          type metadata accessor for PKDrawingCoherence(0);
          swift_dynamicCast();
          v245 = t1.a;
          v246 = OBJC_IVAR___PKDrawingCoherence_model;
          swift_beginAccess();
          (*(v288 + 16))(v290, *&v245 + v246, v289);
          type metadata accessor for PKDrawingStruct(0);
          lazy protocol witness table accessor for type PKDrawingStruct and conformance PKDrawingStruct(&lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct, type metadata accessor for PKDrawingStruct);

          v247 = v282;
          Ref.init<A>(_:_:)();

          v151 = type metadata accessor for AnnotationImporter.ImportedElement();
          swift_storeEnumTagMultiPayload();
          v106 = *(*(v151 - 8) + 56);
          v107 = v247;
        }

LABEL_46:
        v108 = 0;
        v105 = v151;
        return v106(v107, v108, 1, v105);
      }

      v102 = v101;
      v103 = a1;
      v104 = v339;
      static AnnotationImporter.translateLoupeAnnotation(_:)(v102, v339);
      if ((*(v338 + 6))(v104, 1, v340) == 1)
      {

        v98 = &_s8PaperKit12LoupeElementVSgMd;
        v99 = v104;
        goto LABEL_23;
      }

      v115 = v337;
      outlined init with take of AnnotationImporter.ImportedElement(v104, v337, type metadata accessor for LoupeElement);
      specialized CanvasElement.apply(_:)(&v351.a);
      v136 = CRRegister.wrappedValue.modify();
      v138 = v137;
      v139 = *v137;
      v140 = v137[1];
      v141 = v137[2];
      v142 = v137[3];
      v356.origin.x = *v137;
      v356.origin.y = v140;
      v356.size.width = v141;
      v356.size.height = v142;
      v143 = CGRectGetMinX(v356);
      v357.origin.x = v139;
      v357.origin.y = v140;
      v357.size.width = v141;
      v357.size.height = v142;
      v144 = a7 + a7 + a8 - CGRectGetMaxY(v357);
      v358.origin.x = v139;
      v358.origin.y = v140;
      v358.size.width = v141;
      v358.size.height = v142;
      v145 = CGRectGetWidth(v358);
      v359.origin.x = v139;
      v359.origin.y = v140;
      v359.size.width = v141;
      v359.size.height = v142;
      v146 = CGRectGetHeight(v359);
      *v138 = v143;
      v138[1] = v144;
      v138[2] = v145;
      v138[3] = v146;
      v136(&t1, 0);
      v147 = CRRegister.wrappedValue.modify();
      *v148 = -*v148;
      v147(&t1, 0);
      outlined init with copy of AnnotationImporter.ImportedElement(v115, v336, type metadata accessor for LoupeElement);
      (*(v344 + 16))(v69, a4, v67);
      lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();

      v130 = v282;
      SharedTagged_10.init<A>(_:_:id:)();

      v131 = type metadata accessor for LoupeElement;
    }

    v149 = v131;
    v150 = v115;
LABEL_45:
    outlined destroy of AnnotationImporter.ImportedElement(v150, v149);
    v151 = type metadata accessor for AnnotationImporter.ImportedElement();
    swift_storeEnumTagMultiPayload();
    v106 = *(*(v151 - 8) + 56);
    v107 = v130;
    goto LABEL_46;
  }

LABEL_24:
  v105 = type metadata accessor for AnnotationImporter.ImportedElement();
  v106 = *(*(v105 - 8) + 56);
  v107 = a5;
  v108 = 1;
  return v106(v107, v108, 1, v105);
}

void static AnnotationImporter._importAnnotations<A>(from:in:assetManager:scale:mediaBox:)(void *a1, uint64_t a2, uint64_t a3, CGFloat a4, double a5, double a6, double a7, double a8)
{
  v81 = a3;
  v85 = a2;
  v12 = type metadata accessor for PDFAnnotationElement(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v69 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18AnnotationImporterV15ImportedElementOSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v68 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v64 - v17;
  v84 = type metadata accessor for AnnotationImporter.ImportedElement();
  v72 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v67 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v66 = &v64 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v79 = &v64 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v78 = &v64 - v25;
  v26 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v26 - 8);
  v71 = &v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v64 - v32;
  v34 = type metadata accessor for CRKeyPath();
  v35 = *(v34 - 8);
  *&v36 = MEMORY[0x1EEE9AC00](v34).n128_u64[0];
  v38 = &v64 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = MEMORY[0x1E69E7CC0];
  v80 = a1;
  v39 = [a1 annotations];
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PDFAnnotation);
  v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v40 >> 62)
  {
    v41 = __CocoaSet.count.getter();
    if (v41)
    {
      goto LABEL_3;
    }

LABEL_34:

    swift_beginAccess();
    return;
  }

  v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v41)
  {
    goto LABEL_34;
  }

LABEL_3:
  if (v41 >= 1)
  {
    v42 = 0;
    v86 = v40 & 0xC000000000000001;
    v76 = (v35 + 48);
    v70 = (v35 + 32);
    v75 = (v35 + 16);
    v74 = (v35 + 56);
    v82 = (v72 + 48);
    v73 = (v35 + 8);
    v77 = v40;
    v83 = v41;
    v65 = v18;
    while (1)
    {
      if (v86)
      {
        v43 = MEMORY[0x1DA6CE0C0](v42, v40);
      }

      else
      {
        v43 = *(v40 + 8 * v42 + 32);
      }

      v44 = v43;
      type metadata accessor for CanvasElementPDFAnnotation();
      v45 = swift_dynamicCastClass();
      if (v45)
      {
        v46 = v45;
        v47 = v44;
        CanvasElementPDFAnnotation.decodePaperKitID()(v33);
        if ((*v76)(v33, 1, v34) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v33, &_s9Coherence9CRKeyPathVSgMd);
          v48 = [(PDFAnnotation *)v46 pdfAnnotationUUID];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v41 = v83;
          CRKeyPath.init(_:)();
        }

        else
        {
          (*v70)(v38, v33, v34);
        }

        (*v75)(v30, v38, v34);
        (*v74)(v30, 0, 1, v34);
        v49 = OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_subelementId;
        swift_beginAccess();
        outlined assign with take of CRKeyPath?(v30, v46 + v49);
        swift_endAccess();
        CanvasElementPDFAnnotation.decodeImportedElement<A>(in:assetManager:from:)(v85, v81, v80, v18);
        v50 = *v82;
        if ((*v82)(v18, 1, v84) != 1)
        {
          v53 = v78;
          outlined init with take of AnnotationImporter.ImportedElement(v18, v78, type metadata accessor for AnnotationImporter.ImportedElement);
          outlined init with copy of AnnotationImporter.ImportedElement(v53, v79, type metadata accessor for AnnotationImporter.ImportedElement);
          swift_beginAccess();
          v54 = v87;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v54[2] + 1, 1, v54);
          }

          v56 = v54[2];
          v55 = v54[3];
          if (v56 >= v55 >> 1)
          {
            v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v55 > 1, v56 + 1, 1, v54);
          }

          v54[2] = v56 + 1;
          outlined init with take of AnnotationImporter.ImportedElement(v79, v54 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v56, type metadata accessor for AnnotationImporter.ImportedElement);
          v87 = v54;
          swift_endAccess();

          outlined destroy of AnnotationImporter.ImportedElement(v78, type metadata accessor for AnnotationImporter.ImportedElement);
          (*v73)(v38, v34);
          v40 = v77;
          v41 = v83;
          goto LABEL_6;
        }

        outlined destroy of StocksKitCurrencyCache.Provider?(v18, &_s8PaperKit18AnnotationImporterV15ImportedElementOSgMd);
        v51 = v47;
        if (PDFAnnotation.shouldMirrorAsPDFAnnotationElement()())
        {
          v52 = v69;
          PDFAnnotationElement.init(_:)(v46);
          specialized addPDFAnnotationElement #1 <A>(_:) in static AnnotationImporter._importAnnotations<A>(from:in:assetManager:scale:mediaBox:)(v52, v85, v38, &v87);

          outlined destroy of AnnotationImporter.ImportedElement(v52, type metadata accessor for PDFAnnotationElement);
        }

        else
        {
          v57 = *(&v46->super.isa + OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation__akAnnotation);
          if (v57)
          {
            v58 = v57;
            v59 = v68;
            static AnnotationImporter.addAnnotation<A>(_:from:in:id:scale:mediaBox:)(v58, v46, v85, v38, v68, a4, a6, a8);

            if (v50(v59, 1, v84) == 1)
            {
              (*v73)(v38, v34);

              outlined destroy of StocksKitCurrencyCache.Provider?(v59, &_s8PaperKit18AnnotationImporterV15ImportedElementOSgMd);
            }

            else
            {
              v60 = v66;
              outlined init with take of AnnotationImporter.ImportedElement(v59, v66, type metadata accessor for AnnotationImporter.ImportedElement);
              outlined init with copy of AnnotationImporter.ImportedElement(v60, v67, type metadata accessor for AnnotationImporter.ImportedElement);
              swift_beginAccess();
              v61 = v87;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v61[2] + 1, 1, v61);
              }

              v63 = v61[2];
              v62 = v61[3];
              if (v63 >= v62 >> 1)
              {
                v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v62 > 1, v63 + 1, 1, v61);
              }

              v61[2] = v63 + 1;
              outlined init with take of AnnotationImporter.ImportedElement(v67, v61 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v63, type metadata accessor for AnnotationImporter.ImportedElement);
              v87 = v61;
              swift_endAccess();

              outlined destroy of AnnotationImporter.ImportedElement(v66, type metadata accessor for AnnotationImporter.ImportedElement);
              (*v73)(v38, v34);
            }

            v40 = v77;
            v41 = v83;
            v18 = v65;
            goto LABEL_6;
          }
        }

        (*v73)(v38, v34);
        v40 = v77;
      }

      else
      {
      }

LABEL_6:
      if (v41 == ++v42)
      {
        goto LABEL_34;
      }
    }
  }

  __break(1u);
}

uint64_t specialized addPDFAnnotationElement #1 <A>(_:) in static AnnotationImporter._importAnnotations<A>(from:in:assetManager:scale:mediaBox:)(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v36 = a4;
  v34 = a2;
  v6 = type metadata accessor for CRKeyPath();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for AnnotationImporter.ImportedElement();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v32 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v31 - v11;
  v31 = type metadata accessor for PDFAnnotationElement(0);
  MEMORY[0x1EEE9AC00](v31);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit20PDFAnnotationElementVGMd);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v31 - v17;
  outlined init with copy of AnnotationImporter.ImportedElement(a1, v14, type metadata accessor for PDFAnnotationElement);
  v19 = *(v7 + 16);
  v19(v12, a3, v6);
  (*(v7 + 56))(v12, 0, 1, v6);
  v20 = lazy protocol witness table accessor for type PKDrawingStruct and conformance PKDrawingStruct(&lazy protocol witness table cache variable for type PDFAnnotationElement and conformance PDFAnnotationElement, type metadata accessor for PDFAnnotationElement);

  MEMORY[0x1DA6CC020](v21, v14, v12, v31, v20);
  v22 = v18;
  v23 = v36;
  (*(v16 + 8))(v22, v15);
  v38 = 8;
  v24 = a3;
  v25 = v32;
  v19(v33, v24, v6);
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  SharedTagged_10.init(_:id:)();
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  v26 = *v23;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v23 = v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26[2] + 1, 1, v26);
    *v23 = v26;
  }

  v29 = v26[2];
  v28 = v26[3];
  if (v29 >= v28 >> 1)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v28 > 1, v29 + 1, 1, v26);
    *v23 = v26;
  }

  v26[2] = v29 + 1;
  outlined init with take of AnnotationImporter.ImportedElement(v25, v26 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v29, type metadata accessor for AnnotationImporter.ImportedElement);
  return swift_endAccess();
}

{
  v36 = a4;
  v34 = a2;
  v6 = type metadata accessor for CRKeyPath();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for AnnotationImporter.ImportedElement();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v32 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v31 - v11;
  v31 = type metadata accessor for PDFAnnotationElement(0);
  MEMORY[0x1EEE9AC00](v31);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit20PDFAnnotationElementVGMd);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v31 - v17;
  outlined init with copy of CRAssetOrData(a1, v14, type metadata accessor for PDFAnnotationElement);
  v19 = *(v7 + 16);
  v19(v12, a3, v6);
  (*(v7 + 56))(v12, 0, 1, v6);
  v20 = _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_2(&lazy protocol witness table cache variable for type PDFAnnotationElement and conformance PDFAnnotationElement, type metadata accessor for PDFAnnotationElement);

  MEMORY[0x1DA6CC020](v21, v14, v12, v31, v20);
  v22 = v18;
  v23 = v36;
  (*(v16 + 8))(v22, v15);
  v38 = 8;
  v24 = a3;
  v25 = v32;
  v19(v33, v24, v6);
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  SharedTagged_10.init(_:id:)();
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  v26 = *v23;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v23 = v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26[2] + 1, 1, v26);
    *v23 = v26;
  }

  v29 = v26[2];
  v28 = v26[3];
  if (v29 >= v28 >> 1)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v28 > 1, v29 + 1, 1, v26);
    *v23 = v26;
  }

  v26[2] = v29 + 1;
  _s8PaperKit5ImageVWObTm_0(v25, v26 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v29, type metadata accessor for AnnotationImporter.ImportedElement);
  return swift_endAccess();
}

uint64_t ContainerCanvasElement.addImportedElement<A>(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a1;
  v47 = a3;
  v41 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v38 - v5;
  v40 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v38 - v21;
  v23 = type metadata accessor for AnnotationImporter.ImportedElement();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AnnotationImporter.ImportedElement(v46, v25, type metadata accessor for AnnotationImporter.ImportedElement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *(v14 + 32);
    v26(v18, v25, v13);
    v27 = v48;
    v28 = v47;
    (*(v48 + 64))(v47, v48);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
      (*(v14 + 16))(v9, v18, v13);
      (*(v14 + 56))(v9, 0, 1, v13);
      (*(v27 + 72))(v9, v28, v27);
      return (*(v14 + 8))(v18, v13);
    }

    else
    {
      v26(v45, v12, v13);
      v31 = v39;
      Ref.subscript.getter();
      v33 = v42;
      v32 = v43;
      v34 = v44;
      (*(v43 + 16))(v42, v31 + *(v40 + 20), v44);
      outlined destroy of AnnotationImporter.ImportedElement(v31, type metadata accessor for PKDrawingStruct);
      v35 = v45;
      v36 = Ref.subscript.modify();
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<Ref<CRRegister<TaggedStroke>>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
      CROrderedSet.append<A>(contentsOf:)();
      (*(v32 + 8))(v33, v34);
      v36(v49, 0);
      v37 = *(v14 + 8);
      v37(v35, v13);
      return (v37)(v18, v13);
    }
  }

  else
  {
    (*(v20 + 32))(v22, v25, v19);
    v30 = (*(v48 + 104))(v49, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
    CROrderedSet.append(_:)();
    v30(v49, 0);
    return (*(v20 + 8))(v22, v19);
  }
}

uint64_t ContainerCanvasElement.addAnnotation<A>(_:from:in:id:scale:mediaBox:)(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CGFloat a7, double a8, double a9, double a10, double a11)
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18AnnotationImporterV15ImportedElementOSgMd);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v28 - v21;
  v23 = type metadata accessor for AnnotationImporter.ImportedElement();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AnnotationImporter.addAnnotation<A>(_:from:in:id:scale:mediaBox:)(a1, a2, a3, a4, v22, a7, a9, a11);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_s8PaperKit18AnnotationImporterV15ImportedElementOSgMd);
  }

  outlined init with take of AnnotationImporter.ImportedElement(v22, v26, type metadata accessor for AnnotationImporter.ImportedElement);
  ContainerCanvasElement.addImportedElement<A>(_:in:)(v26, a3, a5, a6);
  return outlined destroy of AnnotationImporter.ImportedElement(v26, type metadata accessor for AnnotationImporter.ImportedElement);
}

void ContainerCanvasElement.importAnnotations<A>(from:scale:mediaBox:in:)(double a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v19 = [objc_allocWithZone(MEMORY[0x1E69AE128]) init];
  v20 = [objc_allocWithZone(type metadata accessor for AKControllerDelegateHelper()) init];
  v21 = [objc_opt_self() controllerWithDelegate_];

  if (v21)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    v23 = [v19 readAnnotationsFromArchivedModelData:isa toController:v21];

    if (!v23)
    {
LABEL_9:
      [v21 teardown];

      return;
    }

    v24 = [v21 modelController];
    if (v24)
    {
      v25 = v24;
      v26 = [v24 pageModelControllerForPage_];

      if (v26)
      {
        v27 = [v26 annotations];
        if (v27)
        {
          v28 = v27;
          v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v30 = specialized _arrayConditionalCast<A, B>(_:)(v29, &lazy cache variable for type metadata for AKAnnotation);

          if (v30)
          {
            MEMORY[0x1EEE9AC00](v31);
            v32[2] = a9;
            v32[3] = a10;
            v32[4] = v10;
            v32[5] = a8;
            *&v32[6] = a1;
            *&v32[7] = a2;
            *&v32[8] = a3;
            *&v32[9] = a4;
            *&v32[10] = a5;
            specialized Sequence.forEach(_:)(partial apply for closure #1 in ContainerCanvasElement.importAnnotations<A>(from:scale:mediaBox:in:), v32, v30);

            [v21 teardown];
            return;
          }
        }
      }

      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 40)
  {
    outlined init with copy of FindResult(i, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit16PKCalculateToken_pMd);
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKMathRecognitionToken);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v23 = &v21 - v10;
  v11 = *(a1 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
  v12 = v25;
  if (v11)
  {
    v13 = a1 + 32;
    v21 = v4;
    v22 = (v6 + 56);
    v14 = (v6 + 32);
    while (1)
    {
      outlined init with copy of Any(v13, v24);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      (*v22)(v4, 0, 1, v5);
      v15 = *v14;
      v16 = v23;
      (*v14)(v23, v4, v5);
      v15(v8, v16, v5);
      v25 = v12;
      v17 = v8;
      v19 = *(v12 + 16);
      v18 = *(v12 + 24);
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18 > 1, v19 + 1, 1);
        v12 = v25;
      }

      *(v12 + 16) = v19 + 1;
      v15((v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v19), v17, v5);
      v13 += 32;
      --v11;
      v8 = v17;
      v4 = v21;
      if (!v11)
      {
        return v12;
      }
    }

    (*v22)(v4, 1, 1, v5);
    outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
    return 0;
  }

  return v12;
}

{
  return specialized _arrayConditionalCast<A, B>(_:)(a1, &lazy cache variable for type metadata for PDFAnnotation);
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1, unint64_t *a2)
{
  v8 = MEMORY[0x1E69E7CC0];
  v4 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v4)
  {
    return v8;
  }

  for (i = a1 + 32; ; i += 32)
  {
    outlined init with copy of Any(i, v7);
    type metadata accessor for PKMathRecognitionItemAttributes(0, a2);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v4)
    {
      return v8;
    }
  }

  return 0;
}

uint64_t closure #1 in ContainerCanvasElement.importAnnotations<A>(from:scale:mediaBox:in:)(char **a1, CGFloat a2, double a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v19 = type metadata accessor for CRKeyPath();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  static CRKeyPath.unique.getter();
  ContainerCanvasElement.addAnnotation<A>(_:from:in:id:scale:mediaBox:)(v23, 0, a8, v22, a9, a10, a2, a3, a4, a5, a6);
  return (*(v20 + 8))(v22, v19);
}

uint64_t Capsule<>.importAnnotations(from:scale:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  Capsule.callAsFunction<A>(_:)();
  return v1;
}

void closure #1 in Capsule<>.importAnnotations(from:scale:)(uint64_t a1@<X0>, char *a2@<X8>, CGFloat a3@<D0>)
{
  v31 = a2;
  v5 = type metadata accessor for Image(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Capsule.Ref.root.getter();
  v8 = Image.pdfContentsBounds.getter();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  outlined destroy of AnnotationImporter.ImportedElement(v7, type metadata accessor for Image);
  v15 = Capsule.Ref.root.modify();
  v30 = v16;
  v17 = [objc_allocWithZone(MEMORY[0x1E69AE128]) init];
  v18 = [objc_allocWithZone(type metadata accessor for AKControllerDelegateHelper()) init];
  v19 = [objc_opt_self() controllerWithDelegate_];

  if (v19)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    v21 = [v17 readAnnotationsFromArchivedModelData:isa toController:v19];

    if (!v21)
    {
      goto LABEL_9;
    }

    v22 = [v19 modelController];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 pageModelControllerForPage_];

      if (v24)
      {
        v25 = [v24 annotations];
        if (v25)
        {
          v26 = v25;
          v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v28 = specialized _arrayConditionalCast<A, B>(_:)(v27, &lazy cache variable for type metadata for AKAnnotation);

          if (v28)
          {

            specialized Sequence.forEach(_:)(v28, v30, a1, a3, v8, v10, v12, v14);

            v29 = 1;
LABEL_10:
            [v19 teardown];

            v15(v32, 0);
            *v31 = v29;
            return;
          }
        }
      }

LABEL_9:
      v29 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t type metadata accessor for AnnotationImporter.ImportedElement()
{
  result = type metadata singleton initialization cache for AnnotationImporter.ImportedElement;
  if (!type metadata singleton initialization cache for AnnotationImporter.ImportedElement)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for AnnotationImporter.ImportedElement()
{
  type metadata accessor for SharedTagged_10<TaggedCanvasElement>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Ref<PKDrawingStruct>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for SharedTagged_10<TaggedCanvasElement>()
{
  if (!lazy cache variable for type metadata for SharedTagged_10<TaggedCanvasElement>)
  {
    lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
    v0 = type metadata accessor for SharedTagged_10();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SharedTagged_10<TaggedCanvasElement>);
    }
  }
}

void type metadata accessor for Ref<PKDrawingStruct>()
{
  if (!lazy cache variable for type metadata for Ref<PKDrawingStruct>)
  {
    type metadata accessor for PKDrawingStruct(255);
    lazy protocol witness table accessor for type PKDrawingStruct and conformance PKDrawingStruct(&lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct, type metadata accessor for PKDrawingStruct);
    v0 = type metadata accessor for Ref();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Ref<PKDrawingStruct>);
    }
  }
}

uint64_t outlined assign with take of CRKeyPath?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of AnnotationImporter.ImportedElement(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of AnnotationImporter.ImportedElement(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type PKDrawingStruct and conformance PKDrawingStruct(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined assign with copy of Color(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Color(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AnnotationImporter.ImportedElement(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void specialized Sequence.forEach(_:)(unint64_t a1, _BYTE *a2, uint64_t a3, CGFloat a4, double a5, double a6, double a7, double a8)
{
  v100 = a2;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v118 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v85 = &v77[-v13];
  v84 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v77[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v82 = &v77[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v93 = &v77[-v18];
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v19 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v92 = &v77[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v101 = &v77[-v22];
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v23 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v91 = &v77[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25);
  v102 = &v77[-v26];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18AnnotationImporterV15ImportedElementOSgMd);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v99 = &v77[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v29);
  v113 = &v77[-v30];
  MEMORY[0x1EEE9AC00](v31);
  v117 = &v77[-v32];
  MEMORY[0x1EEE9AC00](v33);
  v112 = &v77[-v34];
  v114 = type metadata accessor for AnnotationImporter.ImportedElement();
  v35 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v98 = &v77[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v37);
  v111 = &v77[-v38];
  v110 = type metadata accessor for CRKeyPath();
  v39 = *(v110 - 8);
  v40 = MEMORY[0x1EEE9AC00](v110);
  v42 = &v77[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v44 = 0;
    v109 = a1 & 0xC000000000000001;
    v108 = a1 & 0xFFFFFFFFFFFFFF8;
    v116 = (v35 + 48);
    v97 = (v23 + 32);
    v96 = (v23 + 8);
    v35 = (v19 + 32);
    v88 = (v19 + 48);
    v81 = v118 + 16;
    v80 = v118 + 8;
    v87 = (v19 + 8);
    v79 = (v19 + 16);
    v78 = (v19 + 56);
    v105 = (v39 + 1);
    v95 = a3;
    v103 = a1;
    v106 = i;
    v107 = v42;
    v89 = (v19 + 32);
    while (v109)
    {
      v23 = MEMORY[0x1DA6CE0C0](v44, a1, v40);
      v46 = v113;
      v19 = v114;
      v47 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        goto LABEL_31;
      }

LABEL_9:
      v115 = v47;
      static CRKeyPath.unique.getter();
      v48 = v117;
      v118 = v23;
      _s8PaperKit18AnnotationImporterV13importElement_4from2in2id5scale8mediaBoxAC08ImportedF0OSgSo12AKAnnotationC_So13PDFAnnotationCSg9Coherence7CapsuleV3RefCyx_GAR9CRKeyPathV12CoreGraphics7CGFloatVSo6CGRectVtAR4CRDTRzlFZAA5ImageV_Tt6g5(v23, 0, a3, v42, v117, a4, a6, a8);
      v39 = &_s8PaperKit18AnnotationImporterV15ImportedElementOSgMd;
      v23 = &_s8PaperKit18AnnotationImporterV15ImportedElementOSgMR;
      outlined init with copy of Date?(v48, v46, &_s8PaperKit18AnnotationImporterV15ImportedElementOSgMd);
      v49 = *v116;
      if ((*v116)(v46, 1, v19) != 1)
      {
        v50 = v99;
        outlined init with copy of Date?(v46, v99, &_s8PaperKit18AnnotationImporterV15ImportedElementOSgMd);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          outlined destroy of AnnotationImporter.ImportedElement(v50, type metadata accessor for AnnotationImporter.ImportedElement);
        }

        else
        {
          (*v97)(v102, v50, v104);
          objc_opt_self();
          if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
          {
            v51 = 0;
          }

          else
          {
            objc_opt_self();
            v51 = swift_dynamicCastObjCClass() == 0;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass() != 0 || v51))
          {
            v52 = SharedTagged_10.subscript.modify();
            v54 = *(v53 + 24);
            v55 = *(v53 + 32);
            __swift_mutable_project_boxed_opaque_existential_1(v53, v54);
            v56 = *(v55 + 104);
            v57 = v55;
            a3 = v95;
            v58 = v56(v119, v54, v57);
            *v59 |= 0x88uLL;
            v58(v119, 0);
            v52(v120, 0);
          }

          (*v96)(v102, v104);
          a1 = v103;
          v19 = v114;
        }
      }

      v35 = v112;
      outlined init with take of Range<AttributedString.Index>(v117, v112, &_s8PaperKit18AnnotationImporterV15ImportedElementOSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v46, &_s8PaperKit18AnnotationImporterV15ImportedElementOSgMd);
      if (v49(v35, 1, v19) == 1)
      {
        v42 = v107;
        (*v105)(v107, v110);
        outlined destroy of StocksKitCurrencyCache.Provider?(v35, &_s8PaperKit18AnnotationImporterV15ImportedElementOSgMd);
      }

      else
      {
        v60 = v111;
        outlined init with take of AnnotationImporter.ImportedElement(v35, v111, type metadata accessor for AnnotationImporter.ImportedElement);
        v61 = v98;
        outlined init with copy of AnnotationImporter.ImportedElement(v60, v98, type metadata accessor for AnnotationImporter.ImportedElement);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v62 = *v89;
          v39 = v90;
          (*v89)(v101, v61, v90);
          v63 = off_1F4F5EDD0[0];
          v64 = type metadata accessor for Image(0);
          v23 = v93;
          v35 = v100;
          v94 = v64;
          v63();
          if ((*v88)(v23, 1, v39) == 1)
          {
            outlined destroy of StocksKitCurrencyCache.Provider?(v23, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
            v65 = v82;
            v66 = v101;
            (*v79)(v82, v101, v39);
            (*v78)(v65, 0, 1, v39);
            off_1F4F5EDD8(v65);
            (*v87)(v66, v39);
            a3 = v95;
          }

          else
          {
            v62(v92, v23, v39);
            v70 = v83;
            v23 = v95;
            Ref.subscript.getter();
            v71 = v85;
            v72 = v86;
            (*v81)(v85, v70 + *(v84 + 20), v86);
            outlined destroy of AnnotationImporter.ImportedElement(v70, type metadata accessor for PKDrawingStruct);
            v73 = v92;
            v74 = Ref.subscript.modify();
            lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<Ref<CRRegister<TaggedStroke>>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
            CROrderedSet.append<A>(contentsOf:)();
            v75 = v71;
            a3 = v23;
            (*v80)(v75, v72);
            v74(v120, 0);
            v35 = v87;
            v76 = *v87;
            (*v87)(v73, v39);
            v76(v101, v39);
          }
        }

        else
        {
          v67 = v91;
          v68 = v104;
          (*v97)(v91, v61, v104);
          v69 = *(type metadata accessor for Image(0) + 56);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
          v35 = &v100[v69];
          CROrderedSet.append(_:)();
          (*v96)(v67, v68);
        }

        v42 = v107;
        outlined destroy of AnnotationImporter.ImportedElement(v111, type metadata accessor for AnnotationImporter.ImportedElement);
        (*v105)(v42, v110);
        a1 = v103;
      }

      v45 = v115;

      ++v44;
      if (v45 == v106)
      {
        return;
      }
    }

    v46 = v113;
    v19 = v114;
    if (v44 >= *(v108 + 16))
    {
      goto LABEL_32;
    }

    v23 = *(a1 + 8 * v44 + 32);
    v47 = v44 + 1;
    if (!__OFADD__(v44, 1))
    {
      goto LABEL_9;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }
}

uint64_t @objc CanvasDropDelegate.dropInteraction(_:canHandle:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  v8 = specialized CanvasDropDelegate.dropInteraction(_:canHandle:)(a4);

  swift_unknownObjectRelease();
  return v8 & 1;
}

id @objc CanvasDropDelegate.dropInteraction(_:sessionDidUpdate:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  v8 = specialized CanvasDropDelegate.dropInteraction(_:sessionDidUpdate:)(a4);

  swift_unknownObjectRelease();

  return v8;
}

void @objc CanvasDropDelegate.dropInteraction(_:performDrop:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  specialized CanvasDropDelegate.dropInteraction(_:performDrop:)(a4, specialized Canvas.dropInteraction(_:performDrop:));

  swift_unknownObjectRelease();
}

id @objc CanvasDropDelegate.dropInteraction(_:previewForDropping:withDefault:)(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a1;
  v12 = specialized CanvasDropDelegate.dropInteraction(_:previewForDropping:withDefault:)(v9, v10);

  return v12;
}

uint64_t @objc CanvasDropDelegate._dropInteraction(_:delayedPreviewProviderForDropping:previewProvider:)(void *a1, int a2, void *a3, void *a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = a4;
  v12 = a1;
  specialized CanvasDropDelegate._dropInteraction(_:delayedPreviewProviderForDropping:previewProvider:)(v11, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned UITargetedDragPreview) -> (), v9);
}

void @objc CanvasDropDelegate.dropInteraction(_:item:willAnimateDropWith:)(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = a1;
  specialized CanvasDropDelegate.dropInteraction(_:item:willAnimateDropWith:)(v9, a5);

  swift_unknownObjectRelease();
}

void @objc CanvasDropDelegate.dropInteraction(_:sessionDidEnter:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = a1;
  specialized CanvasDropDelegate.dropInteraction(_:performDrop:)(v7, a5);

  swift_unknownObjectRelease();
}

id @objc CanvasDropDelegate._dropInteraction(_:dataOwnerFor:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  swift_unknownObjectRetain();
  v5 = a1;
  v6 = specialized CanvasDropDelegate._dropInteraction(_:dataOwnerFor:)();

  swift_unknownObjectRelease();
  return v6;
}

id CanvasDropDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasDropDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized CanvasDropDelegate.init(canvas:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasDropDelegate();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t specialized CanvasDropDelegate.dropInteraction(_:canHandle:)(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = specialized Canvas.dropInteraction(_:canHandle:)(a1);

    return v4 & 1;
  }

  return result;
}

id specialized CanvasDropDelegate.dropInteraction(_:sessionDidUpdate:)(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = specialized Canvas.dropInteraction(_:sessionDidUpdate:)(a1);

    return v4;
  }

  else
  {
    v6 = objc_allocWithZone(MEMORY[0x1E69DC9C0]);

    return [v6 initWithDropOperation_];
  }
}

uint64_t specialized CanvasDropDelegate.dropInteraction(_:previewForDropping:withDefault:)(void *a1, void *a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = specialized Canvas.dropInteraction(_:previewForDropping:withDefault:)(a1, a2);

    return v6;
  }

  return result;
}

void specialized CanvasDropDelegate._dropInteraction(_:delayedPreviewProviderForDropping:previewProvider:)(void *a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    specialized Canvas._dropInteraction(_:delayedPreviewProviderForDropping:previewProvider:)(a1, a2, a3);
  }
}

void specialized CanvasDropDelegate.dropInteraction(_:item:willAnimateDropWith:)(void *a1, void *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    specialized Canvas.dropInteraction(_:item:willAnimateDropWith:)(a1, a2);
  }
}

void specialized CanvasDropDelegate.dropInteraction(_:performDrop:)(uint64_t a1, void (*a2)(uint64_t))
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a2(a1);
  }
}

id specialized CanvasDropDelegate._dropInteraction(_:dataOwnerFor:)()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [result _dropDataOwner];

    return v2;
  }

  return result;
}

id CanvasGenerationToolController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasGenerationToolController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id one-time initialization function for symbolConfiguration()
{
  result = [objc_opt_self() configurationWithScale_];
  static TextToolListItemView.symbolConfiguration = result;
  return result;
}

{
  result = [objc_opt_self() configurationWithScale_];
  static FormPlusButtonView.symbolConfiguration = result;
  return result;
}

char *TextToolListItemView.init(title:image:actionIdentifier:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC8PaperKit20TextToolListItemView_titleLabel;
  *&v5[v9] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v10 = OBJC_IVAR____TtC8PaperKit20TextToolListItemView_imageView;
  *&v5[v10] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v11 = OBJC_IVAR____TtC8PaperKit20TextToolListItemView_stackView;
  *&v5[v11] = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  *&v5[OBJC_IVAR____TtC8PaperKit20TextToolListItemView_contentButton] = 0;
  *&v5[OBJC_IVAR____TtC8PaperKit20TextToolListItemView_stackViewHorizontalMargin] = 0x4030000000000000;
  *&v5[OBJC_IVAR____TtC8PaperKit20TextToolListItemView_stackViewSpacing] = 0x4034000000000000;
  *&v5[OBJC_IVAR____TtC8PaperKit20TextToolListItemView_stackViewImageContainerConstraint] = 0x4046000000000000;
  v12 = OBJC_IVAR____TtC8PaperKit20TextToolListItemView_titleLabelTextColor;
  if (one-time initialization token for defaultTintColor != -1)
  {
    swift_once();
  }

  v13 = static TextToolListItemView.defaultTintColor;
  *&v5[v12] = static TextToolListItemView.defaultTintColor;
  *&v5[OBJC_IVAR____TtC8PaperKit20TextToolListItemView_imageViewTintColor] = v13;
  *&v5[OBJC_IVAR____TtC8PaperKit20TextToolListItemView_additionalActions] = MEMORY[0x1E69E7CC0];
  *&v5[OBJC_IVAR____TtC8PaperKit20TextToolListItemView_actionIdentifier] = a4;
  v76.receiver = v5;
  v76.super_class = ObjectType;
  v14 = v13;
  v72 = a4;
  v15 = objc_msgSendSuper2(&v76, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v16 = objc_allocWithZone(MEMORY[0x1E69DCDB0]);
  v17 = v15;
  v18 = [v16 initWithDelegate_];
  [v17 addInteraction_];

  v19 = OBJC_IVAR____TtC8PaperKit20TextToolListItemView_stackView;
  [*&v17[OBJC_IVAR____TtC8PaperKit20TextToolListItemView_stackView] setAxis_];
  [*&v17[v19] setDistribution_];
  [*&v17[v19] setAlignment_];
  [*&v17[v19] setSpacing_];
  [*&v17[v19] setUserInteractionEnabled_];
  [*&v17[v19] setTranslatesAutoresizingMaskIntoConstraints_];
  v20 = *&v17[OBJC_IVAR____TtC8PaperKit20TextToolListItemView_contentButton];
  v75 = a3;
  if (v20)
  {
    v21 = *&v17[OBJC_IVAR____TtC8PaperKit20TextToolListItemView_contentButton];
  }

  else
  {
    v21 = v17;
    v20 = 0;
  }

  v22 = *&v17[v19];
  v23 = v20;
  [v21 addSubview_];

  v24 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D405B630;
  v26 = [*&v17[v19] topAnchor];
  v27 = [v17 topAnchor];

  v28 = [v26 constraintEqualToAnchor_];
  *(v25 + 32) = v28;
  v29 = [*&v17[v19] leadingAnchor];
  v30 = [v17 leadingAnchor];

  v31 = [v29 constraintEqualToAnchor:v30 constant:16.0];
  *(v25 + 40) = v31;
  v32 = [*&v17[v19] bottomAnchor];
  v33 = [v17 bottomAnchor];

  v34 = [v32 &selRef:v33 setFindInteractionEnabled:? + 5];
  *(v25 + 48) = v34;
  v35 = [*&v17[v19] trailingAnchor];
  v36 = [v17 trailingAnchor];

  v37 = [v35 constraintEqualToAnchor:v36 constant:-16.0];
  *(v25 + 56) = v37;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v24 activateConstraints_];

  v39 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v39 setTranslatesAutoresizingMaskIntoConstraints_];
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1D405B640;
  v41 = [v39 widthAnchor];
  v42 = [v41 constraintEqualToConstant_];

  *(v40 + 32) = v42;
  v43 = [v39 heightAnchor];
  v44 = [v43 constraintEqualToConstant_];

  *(v40 + 40) = v44;
  v45 = Array._bridgeToObjectiveC()().super.isa;

  [v24 activateConstraints_];

  v46 = OBJC_IVAR____TtC8PaperKit20TextToolListItemView_imageView;
  [*&v17[OBJC_IVAR____TtC8PaperKit20TextToolListItemView_imageView] setImage_];
  [*&v17[v46] setTintColor_];
  [*&v17[v46] setContentMode_];
  LODWORD(v47) = 1148846080;
  [*&v17[v46] setContentHuggingPriority:0 forAxis:v47];
  LODWORD(v48) = 1148846080;
  [*&v17[v46] setContentHuggingPriority:1 forAxis:v48];
  LODWORD(v49) = 1148846080;
  [*&v17[v46] setContentCompressionResistancePriority:0 forAxis:v49];
  LODWORD(v50) = 1148846080;
  [*&v17[v46] setContentCompressionResistancePriority:1 forAxis:v50];
  [*&v17[v46] setTranslatesAutoresizingMaskIntoConstraints_];
  [v39 addSubview_];
  [*&v17[v19] addArrangedSubview_];
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1D405B640;
  v52 = [*&v17[v46] centerYAnchor];
  v53 = [v39 centerYAnchor];
  v54 = [v52 constraintEqualToAnchor_];

  *(v51 + 32) = v54;
  v55 = [*&v17[v46] centerXAnchor];
  v56 = [v39 centerXAnchor];
  v57 = [v55 constraintEqualToAnchor_];

  *(v51 + 40) = v57;
  v58 = Array._bridgeToObjectiveC()().super.isa;

  [v24 activateConstraints_];

  v59 = OBJC_IVAR____TtC8PaperKit20TextToolListItemView_titleLabel;
  v60 = *&v17[OBJC_IVAR____TtC8PaperKit20TextToolListItemView_titleLabel];
  v61 = MEMORY[0x1DA6CCED0](a1, a2);

  [v60 setText_];

  [*&v17[v59] setTextColor_];
  v62 = *&v17[v59];
  v63 = *MEMORY[0x1E69DDCF8];
  v64 = *MEMORY[0x1E69DB978];
  v65 = *MEMORY[0x1E69DDC78];
  v66 = objc_opt_self();
  v67 = v62;
  v68 = [v66 traitCollectionWithPreferredContentSizeCategory_];
  result = [objc_opt_self() _preferredFontForTextStyle_weight_];
  if (result)
  {
    v70 = result;
    v71 = [result _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection_];

    [v67 setFont_];
    [*&v17[v59] setAdjustsFontForContentSizeCategory_];
    [*&v17[v59] setNumberOfLines_];
    [*&v17[v59] setLineBreakMode_];
    [*&v17[v59] setTranslatesAutoresizingMaskIntoConstraints_];
    [*&v17[v19] addArrangedSubview_];

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id one-time initialization function for defaultTintColor()
{
  result = [objc_opt_self() labelColor];
  static TextToolListItemView.defaultTintColor = result;
  return result;
}

Class closure #1 in TextToolListItemView.contextMenuInteraction(_:configurationForMenuAtLocation:)()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    preferredElementSize = *(result + OBJC_IVAR____TtC8PaperKit20TextToolListItemView_additionalActions);
    v2 = result;

    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIMenu);
    v3._countAndFlagsBits = 0;
    v3._object = 0xE000000000000000;
    v5.value.super.isa = 0;
    v5.is_nil = 0;
    return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v3, 0, v5, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v4).super.super.isa;
  }

  return result;
}

char *specialized static TextToolListItemView.newDescriptionListItemView(_:action:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v24._object = 0x80000001D4085890;
  v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v4.value._object = 0xEB00000000656C62;
  v5._object = 0x80000001D4085870;
  v24._countAndFlagsBits = 0xD000000000000035;
  v5._countAndFlagsBits = 0xD000000000000011;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v4, paperKitBundle, v6, v24);
  if (one-time initialization token for symbolConfiguration != -1)
  {
    swift_once();
  }

  v8 = static TextToolListItemView.symbolConfiguration;
  v9 = MEMORY[0x1DA6CCED0](0x6269737365636361, 0xED00007974696C69);
  v10 = [objc_opt_self() systemImageNamed:v9 withConfiguration:v8];

  v11 = one-time initialization token for paperKitImageDescription;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = static UIActionIdentifier.paperKitImageDescription;
  objc_allocWithZone(type metadata accessor for TextToolListItemView());
  v14 = TextToolListItemView.init(title:image:actionIdentifier:)(v7._countAndFlagsBits, v7._object, v10, v13);
  outlined init with copy of Any?(a1, v22);
  v15 = v23;
  if (v23)
  {
    v16 = __swift_project_boxed_opaque_existential_1(v22, v23);
    v17 = *(v15 - 8);
    MEMORY[0x1EEE9AC00](v16);
    v19 = v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v19);
    v20 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v17 + 8))(v19, v15);
    __swift_destroy_boxed_opaque_existential_0(v22);
  }

  else
  {
    v20 = 0;
  }

  [v14 addTarget:v20 action:a2 forControlEvents:64];

  swift_unknownObjectRelease();
  return v14;
}

char *specialized static TextToolListItemView.newAddStickerListItemView(_:action:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v24._object = 0x80000001D4085960;
  v4._countAndFlagsBits = 0x6369745320646441;
  v4._object = 0xEB0000000072656BLL;
  v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v5.value._object = 0xEB00000000656C62;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0xD000000000000034;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, paperKitBundle, v6, v24);
  if (one-time initialization token for symbolConfiguration != -1)
  {
    swift_once();
  }

  v8 = static TextToolListItemView.symbolConfiguration;
  v9 = MEMORY[0x1DA6CCED0](0x72656B63697473, 0xE700000000000000);
  v10 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  v11 = one-time initialization token for paperKitAddSticker;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = static UIActionIdentifier.paperKitAddSticker;
  objc_allocWithZone(type metadata accessor for TextToolListItemView());
  v14 = TextToolListItemView.init(title:image:actionIdentifier:)(v7._countAndFlagsBits, v7._object, v10, v13);
  outlined init with copy of Any?(a1, v22);
  v15 = v23;
  if (v23)
  {
    v16 = __swift_project_boxed_opaque_existential_1(v22, v23);
    v17 = *(v15 - 8);
    MEMORY[0x1EEE9AC00](v16);
    v19 = v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v19);
    v20 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v17 + 8))(v19, v15);
    __swift_destroy_boxed_opaque_existential_0(v22);
  }

  else
  {
    v20 = 0;
  }

  [v14 addTarget:v20 action:a2 forControlEvents:64];

  swift_unknownObjectRelease();
  return v14;
}

char *specialized static TextToolListItemView.newAddTextBoxListItemView(_:action:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v24._object = 0x80000001D4085A80;
  v4._countAndFlagsBits = 0x7478655420646441;
  v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v5.value._object = 0xEB00000000656C62;
  v24._countAndFlagsBits = 0xD000000000000035;
  v4._object = 0xE800000000000000;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, paperKitBundle, v6, v24);
  if (one-time initialization token for symbolConfiguration != -1)
  {
    swift_once();
  }

  v8 = static TextToolListItemView.symbolConfiguration;
  v9 = MEMORY[0x1DA6CCED0](0xD000000000000011, 0x80000001D4085AC0);
  v10 = [objc_opt_self() systemImageNamed:v9 withConfiguration:v8];

  v11 = one-time initialization token for paperKitAddText;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = static UIActionIdentifier.paperKitAddText;
  objc_allocWithZone(type metadata accessor for TextToolListItemView());
  v14 = TextToolListItemView.init(title:image:actionIdentifier:)(v7._countAndFlagsBits, v7._object, v10, v13);
  outlined init with copy of Any?(a1, v22);
  v15 = v23;
  if (v23)
  {
    v16 = __swift_project_boxed_opaque_existential_1(v22, v23);
    v17 = *(v15 - 8);
    MEMORY[0x1EEE9AC00](v16);
    v19 = v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v19);
    v20 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v17 + 8))(v19, v15);
    __swift_destroy_boxed_opaque_existential_0(v22);
  }

  else
  {
    v20 = 0;
  }

  [v14 addTarget:v20 action:a2 forControlEvents:64];

  swift_unknownObjectRelease();
  return v14;
}

char *specialized static TextToolListItemView.newAutoFillFormListItemView(_:action:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v24._object = 0x80000001D4085A20;
  v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v4.value._object = 0xEB00000000656C62;
  v5._countAndFlagsBits = 0x6C6C69466F747541;
  v5._object = 0xED00006D726F4620;
  v6._object = 0x80000001D4085A00;
  v24._countAndFlagsBits = 0xD00000000000002ELL;
  v6._countAndFlagsBits = 0xD00000000000001BLL;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v4, paperKitBundle, v5, v24);
  if (one-time initialization token for symbolConfiguration != -1)
  {
    swift_once();
  }

  v8 = static TextToolListItemView.symbolConfiguration;
  v9 = MEMORY[0x1DA6CCED0](0xD000000000000021, 0x80000001D4085A50);
  v10 = [objc_opt_self() systemImageNamed:v9 withConfiguration:v8];

  v11 = one-time initialization token for paperKitAutoFillForm;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = static UIActionIdentifier.paperKitAutoFillForm;
  objc_allocWithZone(type metadata accessor for TextToolListItemView());
  v14 = TextToolListItemView.init(title:image:actionIdentifier:)(v7._countAndFlagsBits, v7._object, v10, v13);
  outlined init with copy of Any?(a1, v22);
  v15 = v23;
  if (v23)
  {
    v16 = __swift_project_boxed_opaque_existential_1(v22, v23);
    v17 = *(v15 - 8);
    MEMORY[0x1EEE9AC00](v16);
    v19 = v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v19);
    v20 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v17 + 8))(v19, v15);
    __swift_destroy_boxed_opaque_existential_0(v22);
  }

  else
  {
    v20 = 0;
  }

  [v14 addTarget:v20 action:a2 forControlEvents:64];

  swift_unknownObjectRelease();
  return v14;
}

char *specialized static TextToolListItemView.newAddSignatureListItemView(_:action:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v24._object = 0x80000001D40859C0;
  v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v4.value._object = 0xEB00000000656C62;
  v5._countAndFlagsBits = 0x6E67695320646441;
  v5._object = 0xED00006572757461;
  v6._object = 0x80000001D40859A0;
  v24._countAndFlagsBits = 0xD000000000000036;
  v6._countAndFlagsBits = 0xD00000000000001BLL;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v4, paperKitBundle, v5, v24);
  if (one-time initialization token for symbolConfiguration != -1)
  {
    swift_once();
  }

  v8 = static TextToolListItemView.symbolConfiguration;
  v9 = MEMORY[0x1DA6CCED0](0x727574616E676973, 0xE900000000000065);
  v10 = [objc_opt_self() systemImageNamed:v9 withConfiguration:v8];

  v11 = one-time initialization token for paperKitAddSignature;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = static UIActionIdentifier.paperKitAddSignature;
  objc_allocWithZone(type metadata accessor for TextToolListItemView());
  v14 = TextToolListItemView.init(title:image:actionIdentifier:)(v7._countAndFlagsBits, v7._object, v10, v13);
  outlined init with copy of Any?(a1, v22);
  v15 = v23;
  if (v23)
  {
    v16 = __swift_project_boxed_opaque_existential_1(v22, v23);
    v17 = *(v15 - 8);
    MEMORY[0x1EEE9AC00](v16);
    v19 = v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v19);
    v20 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v17 + 8))(v19, v15);
    __swift_destroy_boxed_opaque_existential_0(v22);
  }

  else
  {
    v20 = 0;
  }

  [v14 addTarget:v20 action:a2 forControlEvents:64];

  swift_unknownObjectRelease();
  return v14;
}

char *specialized static TextToolListItemView.newAddShapeListItemView(_:action:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v24._object = 0x80000001D4085810;
  v4._countAndFlagsBits = 0x7061685320646441;
  v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v5.value._object = 0xEB00000000656C62;
  v24._countAndFlagsBits = 0xD000000000000032;
  v4._object = 0xE900000000000065;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, paperKitBundle, v6, v24);
  if (one-time initialization token for symbolConfiguration != -1)
  {
    swift_once();
  }

  v8 = static TextToolListItemView.symbolConfiguration;
  v9 = MEMORY[0x1DA6CCED0](0xD000000000000010, 0x80000001D4085850);
  v10 = [objc_opt_self() systemImageNamed:v9 withConfiguration:v8];

  v11 = one-time initialization token for paperKitAddShape;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = static UIActionIdentifier.paperKitAddShape;
  objc_allocWithZone(type metadata accessor for TextToolListItemView());
  v14 = TextToolListItemView.init(title:image:actionIdentifier:)(v7._countAndFlagsBits, v7._object, v10, v13);
  outlined init with copy of Any?(a1, v22);
  v15 = v23;
  if (v23)
  {
    v16 = __swift_project_boxed_opaque_existential_1(v22, v23);
    v17 = *(v15 - 8);
    MEMORY[0x1EEE9AC00](v16);
    v19 = v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v19);
    v20 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v17 + 8))(v19, v15);
    __swift_destroy_boxed_opaque_existential_0(v22);
  }

  else
  {
    v20 = 0;
  }

  [v14 addTarget:v20 action:a2 forControlEvents:64];

  swift_unknownObjectRelease();
  return v14;
}

char *specialized static TextToolListItemView.newOpacityListItemView(_:action:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v24._object = 0x80000001D40858F0;
  v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v4.value._object = 0xEB00000000656C62;
  v5._countAndFlagsBits = 0x7974696361704FLL;
  v6._object = 0x80000001D40858D0;
  v24._countAndFlagsBits = 0xD000000000000035;
  v6._countAndFlagsBits = 0xD000000000000015;
  v5._object = 0xE700000000000000;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v4, paperKitBundle, v5, v24);
  if (one-time initialization token for symbolConfiguration != -1)
  {
    swift_once();
  }

  v8 = static TextToolListItemView.symbolConfiguration;
  v9 = MEMORY[0x1DA6CCED0](0xD000000000000028, 0x80000001D4085930);
  v10 = [objc_opt_self() systemImageNamed:v9 withConfiguration:v8];

  v11 = one-time initialization token for paperKitCanvasOpacity;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = static UIActionIdentifier.paperKitCanvasOpacity;
  objc_allocWithZone(type metadata accessor for TextToolListItemView());
  v14 = TextToolListItemView.init(title:image:actionIdentifier:)(v7._countAndFlagsBits, v7._object, v10, v13);
  outlined init with copy of Any?(a1, v22);
  v15 = v23;
  if (v23)
  {
    v16 = __swift_project_boxed_opaque_existential_1(v22, v23);
    v17 = *(v15 - 8);
    MEMORY[0x1EEE9AC00](v16);
    v19 = v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v19);
    v20 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v17 + 8))(v19, v15);
    __swift_destroy_boxed_opaque_existential_0(v22);
  }

  else
  {
    v20 = 0;
  }

  [v14 addTarget:v20 action:a2 forControlEvents:64];

  swift_unknownObjectRelease();
  return v14;
}

char *specialized static TextToolListItemView.newAddLoupeListItemView(_:action:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v24._object = 0x80000001D40857B0;
  v4._countAndFlagsBits = 0x70756F4C20646441;
  v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v5.value._object = 0xEB00000000656C62;
  v24._countAndFlagsBits = 0xD000000000000032;
  v4._object = 0xE900000000000065;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, paperKitBundle, v6, v24);
  if (one-time initialization token for symbolConfiguration != -1)
  {
    swift_once();
  }

  v8 = static TextToolListItemView.symbolConfiguration;
  v9 = MEMORY[0x1DA6CCED0](0xD000000000000011, 0x80000001D40857F0);
  v10 = [objc_opt_self() systemImageNamed:v9 withConfiguration:v8];

  v11 = one-time initialization token for paperKitAddShape;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = static UIActionIdentifier.paperKitAddShape;
  objc_allocWithZone(type metadata accessor for TextToolListItemView());
  v14 = TextToolListItemView.init(title:image:actionIdentifier:)(v7._countAndFlagsBits, v7._object, v10, v13);
  outlined init with copy of Any?(a1, v22);
  v15 = v23;
  if (v23)
  {
    v16 = __swift_project_boxed_opaque_existential_1(v22, v23);
    v17 = *(v15 - 8);
    MEMORY[0x1EEE9AC00](v16);
    v19 = v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v19);
    v20 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v17 + 8))(v19, v15);
    __swift_destroy_boxed_opaque_existential_0(v22);
  }

  else
  {
    v20 = 0;
  }

  [v14 addTarget:v20 action:a2 forControlEvents:64];

  swift_unknownObjectRelease();
  return v14;
}

void specialized TextToolListItemView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC8PaperKit20TextToolListItemView_titleLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v2 = OBJC_IVAR____TtC8PaperKit20TextToolListItemView_imageView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v3 = OBJC_IVAR____TtC8PaperKit20TextToolListItemView_stackView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  *(v0 + OBJC_IVAR____TtC8PaperKit20TextToolListItemView_contentButton) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit20TextToolListItemView_stackViewHorizontalMargin) = 0x4030000000000000;
  *(v0 + OBJC_IVAR____TtC8PaperKit20TextToolListItemView_stackViewSpacing) = 0x4034000000000000;
  *(v0 + OBJC_IVAR____TtC8PaperKit20TextToolListItemView_stackViewImageContainerConstraint) = 0x4046000000000000;
  v4 = OBJC_IVAR____TtC8PaperKit20TextToolListItemView_titleLabelTextColor;
  if (one-time initialization token for defaultTintColor != -1)
  {
    swift_once();
  }

  v5 = static TextToolListItemView.defaultTintColor;
  *(v0 + v4) = static TextToolListItemView.defaultTintColor;
  *(v0 + OBJC_IVAR____TtC8PaperKit20TextToolListItemView_imageViewTintColor) = v5;
  *(v0 + OBJC_IVAR____TtC8PaperKit20TextToolListItemView_additionalActions) = MEMORY[0x1E69E7CC0];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized TextToolListItemView.pointerInteraction(_:styleFor:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit14UIPointerShapeOSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for UIPointerEffect();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView_];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17UITargetedPreviewC_5UIKit15UIPointerEffectO8TintModeO09preferredfG0Sb13prefersShadowSb0I13ScaledContenttMd);
  v14 = v13[12];
  v15 = v13[16];
  v16 = v13[20];
  *v11 = v12;
  v17 = *MEMORY[0x1E69DBF90];
  v18 = type metadata accessor for UIPointerEffect.TintMode();
  (*(*(v18 - 8) + 104))(&v11[v14], v17, v18);
  v11[v16] = 0;
  v11[v15] = 0;
  (*(v6 + 104))(v11, *MEMORY[0x1E69DBF78], v5);
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIPointerStyle);
  (*(v6 + 16))(v8, v11, v5);
  v19 = type metadata accessor for UIPointerShape();
  (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
  v20 = UIPointerStyle.init(effect:shape:)();
  (*(v6 + 8))(v11, v5);
  return v20;
}

void type metadata completion function for SegmentedGroup()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [Binding<Bool>]();
    if (v1 <= 0x3F)
    {
      type metadata accessor for State<CGFloat>();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for SegmentedGroup(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
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

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
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

    v17 = *((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
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

_BYTE *storeEnumTagSinglePayload for SegmentedGroup(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (((&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

void type metadata accessor for [Binding<Bool>]()
{
  if (!lazy cache variable for type metadata for [Binding<Bool>])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7BindingVySbGMd);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [Binding<Bool>]);
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

uint64_t SegmentedGroup.body.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA18SubviewsCollectionVAA9TupleViewVyAA7ForEachVySnySiGSiAA6ZStackVyAA08ModifiedD0VyAA7SubviewVAA23_GeometryActionModifierVySo6CGSizeVATSQ12CoreGraphicsyHCg_GGGG_APtGGMd);
  v5 = *(a1 + 24);
  v21 = v3;
  v22 = v4;
  v23 = v5;
  v24 = lazy protocol witness table accessor for type _ConditionalContent<SubviewsCollection, TupleView<(ForEach<Range<Int>, Int, ZStack<ModifiedContent<Subview, _GeometryActionModifier<CGSize>>>>, Subview)>> and conformance <> _ConditionalContent<A, B>();
  type metadata accessor for GroupElementsOfContent();
  type metadata accessor for Group();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v6 = type metadata accessor for HStack();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16[-v11];
  v17 = v3;
  v18 = v5;
  v19 = v1;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  v13 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v9, v6, v13);
  v14 = *(v7 + 8);
  v14(v9, v6);
  static ViewBuilder.buildExpression<A>(_:)(v12, v6, v13);
  return (v14)(v12, v6);
}

uint64_t closure #1 in SegmentedGroup.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a4;
  v34 = type metadata accessor for SegmentedGroup();
  v7 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v30 = v29 - v8;
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA18SubviewsCollectionVAA9TupleViewVyAA7ForEachVySnySiGSiAA6ZStackVyAA08ModifiedD0VyAA7SubviewVAA23_GeometryActionModifierVySo6CGSizeVATSQ12CoreGraphicsyHCg_GGGG_APtGGMd);
  v32 = v13;
  v31 = lazy protocol witness table accessor for type _ConditionalContent<SubviewsCollection, TupleView<(ForEach<Range<Int>, Int, ZStack<ModifiedContent<Subview, _GeometryActionModifier<CGSize>>>>, Subview)>> and conformance <> _ConditionalContent<A, B>();
  v37 = a2;
  v38 = v13;
  v39 = a3;
  v40 = v31;
  v29[2] = type metadata accessor for GroupElementsOfContent();
  v14 = type metadata accessor for Group();
  v33 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v29 - v19;
  (*(v9 + 16))(v12, a1, a2, v18);
  v21 = v30;
  v22 = a1;
  v23 = v34;
  (*(v7 + 16))(v30, v22, v34);
  v24 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = a3;
  (*(v7 + 32))(v25 + v24, v21, v23);
  Group.init<A, B>(subviews:transform:)();
  WitnessTable = swift_getWitnessTable();
  v26 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v16, v14, v26);
  v27 = *(v33 + 8);
  v27(v16, v14);
  static ViewBuilder.buildExpression<A>(_:)(v20, v14, v26);
  return (v27)(v20, v14);
}

uint64_t closure #1 in closure #1 in SegmentedGroup.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v62 = a2;
  v69 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7ForEachVySnySiGSiAA6ZStackVyAA15ModifiedContentVyAA7SubviewVAA23_GeometryActionModifierVySo6CGSizeVAPSQ12CoreGraphicsyHCg_GGGG_ALtGMd);
  MEMORY[0x1EEE9AC00](v8);
  v58 = v50 - v9;
  v57 = type metadata accessor for Subview();
  v67 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v56 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v66 = v50 - v12;
  v63 = a3;
  v64 = a4;
  v13 = type metadata accessor for SegmentedGroup();
  v61 = *(v13 - 8);
  v60 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v59 = v50 - v14;
  v15 = type metadata accessor for SubviewsCollection();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySnySiGSiAA6ZStackVyAA15ModifiedContentVyAA7SubviewVAA23_GeometryActionModifierVySo6CGSizeVANSQ12CoreGraphicsyHCg_GGGGMd);
  v54 = *(v19 - 8);
  v55 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v53 = v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v68 = v50 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA18SubviewsCollectionVAA9TupleViewVyAA7ForEachVySnySiGSiAA6ZStackVyAA08ModifiedD0VyAA7SubviewVAA23_GeometryActionModifierVySo6CGSizeVAVSQ12CoreGraphicsyHCg_GGGG_ARtG_GMd);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v50 - v24;
  lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection(&lazy protocol witness table cache variable for type SubviewsCollection and conformance SubviewsCollection);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (dispatch thunk of Collection.distance(from:to:)() <= 1)
  {
    (*(v16 + 16))(v25, a1, v15);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleView<(ForEach<Range<Int>, Int, ZStack<ModifiedContent<Subview, _GeometryActionModifier<CGSize>>>>, Subview)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA7ForEachVySnySiGSiAA6ZStackVyAA15ModifiedContentVyAA7SubviewVAA23_GeometryActionModifierVySo6CGSizeVAPSQ12CoreGraphicsyHCg_GGGG_ALtGMd);
    return _ConditionalContent<>.init(storage:)();
  }

  v52 = v13;
  v50[2] = v23;
  v51 = v25;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  result = dispatch thunk of Collection.distance(from:to:)();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (result - 1 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v27 = v15;
  v50[0] = v8;
  v70[0] = 0;
  v70[1] = result - 1;
  v50[1] = swift_getKeyPath();
  (*(v16 + 16))(v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v15);
  v28 = v61;
  v29 = v59;
  v30 = v52;
  (*(v61 + 16))(v59, v62, v52);
  v31 = *(v16 + 80);
  v65 = v27;
  v32 = (v31 + 32) & ~v31;
  v33 = (v17 + *(v28 + 80) + v32) & ~*(v28 + 80);
  v34 = swift_allocObject();
  v35 = v64;
  *(v34 + 16) = v63;
  *(v34 + 24) = v35;
  (*(v16 + 32))(v34 + v32, v18, v65);
  (*(v28 + 32))(v34 + v33, v29, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA15ModifiedContentVyAA7SubviewVAA23_GeometryActionModifierVySo6CGSizeVAKSQ12CoreGraphicsyHCg_GGGMd);
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type ZStack<ModifiedContent<Subview, _GeometryActionModifier<CGSize>>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA15ModifiedContentVyAA7SubviewVAA23_GeometryActionModifierVySo6CGSizeVAKSQ12CoreGraphicsyHCg_GGGMd);
  v36 = v68;
  ForEach<>.init(_:id:content:)();
  result = dispatch thunk of Collection.isEmpty.getter();
  if (result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  dispatch thunk of Collection.endIndex.getter();
  lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection(&lazy protocol witness table cache variable for type SubviewsCollection and conformance SubviewsCollection);
  dispatch thunk of BidirectionalCollection.index(before:)();
  v37 = dispatch thunk of Collection.subscript.read();
  v38 = v66;
  v39 = *(v67 + 16);
  v40 = v57;
  v39(v66);
  v37(v70, 0);
  v42 = v54;
  v41 = v55;
  v43 = *(v54 + 16);
  v44 = v53;
  v43(v53, v36, v55);
  v45 = v56;
  (v39)(v56, v38, v40);
  v46 = v58;
  v43(v58, v44, v41);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySnySiGSiAA6ZStackVyAA15ModifiedContentVyAA7SubviewVAA23_GeometryActionModifierVySo6CGSizeVANSQ12CoreGraphicsyHCg_GGGG_AJtMd);
  (v39)(v46 + *(v47 + 48), v45, v40);
  v48 = *(v67 + 8);
  v48(v45, v40);
  v49 = *(v42 + 8);
  v49(v44, v41);
  outlined init with copy of TupleView<(ForEach<Range<Int>, Int, ZStack<ModifiedContent<Subview, _GeometryActionModifier<CGSize>>>>, Subview)>(v46, v51);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleView<(ForEach<Range<Int>, Int, ZStack<ModifiedContent<Subview, _GeometryActionModifier<CGSize>>>>, Subview)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA7ForEachVySnySiGSiAA6ZStackVyAA15ModifiedContentVyAA7SubviewVAA23_GeometryActionModifierVySo6CGSizeVAPSQ12CoreGraphicsyHCg_GGGG_ALtGMd);
  _ConditionalContent<>.init(storage:)();
  outlined destroy of TupleView<(ForEach<Range<Int>, Int, ZStack<ModifiedContent<Subview, _GeometryActionModifier<CGSize>>>>, Subview)>(v46);
  v48(v66, v40);
  return (v49)(v68, v41);
}

uint64_t closure #1 in closure #1 in closure #1 in SegmentedGroup.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  *a5 = static Alignment.trailing.getter();
  a5[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA15ModifiedContentVyAA7SubviewVAA23_GeometryActionModifierVySo6CGSizeVAOSQ12CoreGraphicsyHCg_GGGMd);
  return closure #1 in closure #1 in closure #1 in closure #1 in SegmentedGroup.body.getter(v9, a2, a3, a4, a5 + *(v11 + 44));
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in SegmentedGroup.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for SegmentedGroup();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - v13;
  MEMORY[0x1DA6C9D00](a1, v12);
  (*(v11 + 16))(v14, a2, v10);
  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  (*(v11 + 32))(v16 + v15, v14, v10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7SubviewVAA23_GeometryActionModifierVySo6CGSizeVAISQ12CoreGraphicsyHCg_GGMd);
  v18 = (a5 + *(result + 36));
  *v18 = closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in SegmentedGroup.body.getter;
  v18[1] = 0;
  v18[2] = partial apply for closure #2 in closure #1 in closure #1 in closure #1 in closure #1 in SegmentedGroup.body.getter;
  v18[3] = v16;
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in SegmentedGroup.body.getter@<X0>(void *a1@<X8>)
{
  result = GeometryProxy.size.getter();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t closure #2 in closure #1 in closure #1 in closure #1 in closure #1 in SegmentedGroup.body.getter()
{
  type metadata accessor for SegmentedGroup();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMd);
  return State.wrappedValue.setter();
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<SubviewsCollection, TupleView<(ForEach<Range<Int>, Int, ZStack<ModifiedContent<Subview, _GeometryActionModifier<CGSize>>>>, Subview)>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<SubviewsCollection, TupleView<(ForEach<Range<Int>, Int, ZStack<ModifiedContent<Subview, _GeometryActionModifier<CGSize>>>>, Subview)>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<SubviewsCollection, TupleView<(ForEach<Range<Int>, Int, ZStack<ModifiedContent<Subview, _GeometryActionModifier<CGSize>>>>, Subview)>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA18SubviewsCollectionVAA9TupleViewVyAA7ForEachVySnySiGSiAA6ZStackVyAA08ModifiedD0VyAA7SubviewVAA23_GeometryActionModifierVySo6CGSizeVATSQ12CoreGraphicsyHCg_GGGG_APtGGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleView<(ForEach<Range<Int>, Int, ZStack<ModifiedContent<Subview, _GeometryActionModifier<CGSize>>>>, Subview)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA7ForEachVySnySiGSiAA6ZStackVyAA15ModifiedContentVyAA7SubviewVAA23_GeometryActionModifierVySo6CGSizeVAPSQ12CoreGraphicsyHCg_GGGG_ALtGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<SubviewsCollection, TupleView<(ForEach<Range<Int>, Int, ZStack<ModifiedContent<Subview, _GeometryActionModifier<CGSize>>>>, Subview)>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in SegmentedGroup.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for SegmentedGroup() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return closure #1 in closure #1 in SegmentedGroup.body.getter(a1, v8, v5, v6, a2);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in SegmentedGroup.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for SubviewsCollection() - 8);
  v8 = ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 64);
  v9 = *(type metadata accessor for SegmentedGroup() - 8);
  v10 = v2 + ((v8 + *(v9 + 80)) & ~*(v9 + 80));

  return closure #1 in closure #1 in closure #1 in SegmentedGroup.body.getter(a1, v10, v5, v6, a2);
}

uint64_t lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SubviewsCollection();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of TupleView<(ForEach<Range<Int>, Int, ZStack<ModifiedContent<Subview, _GeometryActionModifier<CGSize>>>>, Subview)>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7ForEachVySnySiGSiAA6ZStackVyAA15ModifiedContentVyAA7SubviewVAA23_GeometryActionModifierVySo6CGSizeVAPSQ12CoreGraphicsyHCg_GGGG_ALtGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TupleView<(ForEach<Range<Int>, Int, ZStack<ModifiedContent<Subview, _GeometryActionModifier<CGSize>>>>, Subview)>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7ForEachVySnySiGSiAA6ZStackVyAA15ModifiedContentVyAA7SubviewVAA23_GeometryActionModifierVySo6CGSizeVAPSQ12CoreGraphicsyHCg_GGGG_ALtGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_3()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for SegmentedGroup() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(*(v1 - 8) + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #2 in closure #1 in closure #1 in closure #1 in closure #1 in SegmentedGroup.body.getter()
{
  type metadata accessor for SegmentedGroup();

  return closure #2 in closure #1 in closure #1 in closure #1 in closure #1 in SegmentedGroup.body.getter();
}

uint64_t static FBKSInteraction.AnnotatedContent.makeCreatedImageContent(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15FeedbackService15FBKSInteractionC16AnnotatedContentV8IconTypeOSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for FBKSInteraction.Content();
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v8 + 16))(&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v15._object = 0x80000001D4085C20;
  v9._countAndFlagsBits = 0x2064657461657243;
  v9._object = 0xED00006567616D49;
  v10.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v10.value._object = 0xEB00000000656C62;
  v15._countAndFlagsBits = 0xD000000000000026;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, paperKitBundle, v11, v15);
  v12 = type metadata accessor for FBKSInteraction.AnnotatedContent.IconType();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  return FBKSInteraction.AnnotatedContent.init(payload:displayName:description:fileName:group:iconType:additionalInfo:)();
}

uint64_t static FBKSInteraction.AnnotatedContent.makeDiagnosticsContent(structuredContent:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15FeedbackService15FBKSInteractionC16AnnotatedContentV8IconTypeOSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for FBKSInteraction.Content();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FBKSInteraction.StructuredValue();
  (*(*(v9 - 8) + 16))(v8, a1, v9);
  (*(v6 + 104))(v8, *MEMORY[0x1E699C588], v5);
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v16._object = 0x80000001D4085C70;
  v10._object = 0xEB00000000736369;
  v11.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v11.value._object = 0xEB00000000656C62;
  v10._countAndFlagsBits = 0x74736F6E67616944;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0xD000000000000043;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, paperKitBundle, v12, v16);
  v13 = type metadata accessor for FBKSInteraction.AnnotatedContent.IconType();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  return FBKSInteraction.AnnotatedContent.init(payload:displayName:description:fileName:group:iconType:additionalInfo:)();
}

uint64_t static FBKSInteraction.AnnotatedContent.makeOriginalImageContent(imageData:)(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15FeedbackService15FBKSInteractionC16AnnotatedContentV8IconTypeOSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for FBKSInteraction.Content();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = a1;
  v10[1] = a2;
  (*(v11 + 104))(v10, *MEMORY[0x1E699C5F0], v8);
  outlined copy of Data._Representation(a1, a2);
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v18._object = 0x80000001D4085B50;
  v12._countAndFlagsBits = 0x6C616E696769724FLL;
  v12._object = 0xEE006567616D4920;
  v13.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v13.value._object = 0xEB00000000656C62;
  v18._countAndFlagsBits = 0xD00000000000003FLL;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, paperKitBundle, v14, v18);
  v15 = type metadata accessor for FBKSInteraction.AnnotatedContent.IconType();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  return FBKSInteraction.AnnotatedContent.init(payload:displayName:description:fileName:group:iconType:additionalInfo:)();
}

uint64_t static FBKSInteraction.AnnotatedContent.makeOriginalSketchContent(sketchData:)(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15FeedbackService15FBKSInteractionC16AnnotatedContentV8IconTypeOSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for FBKSInteraction.Content();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = a1;
  v10[1] = a2;
  (*(v11 + 104))(v10, *MEMORY[0x1E699C600], v8);
  outlined copy of Data._Representation(a1, a2);
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v18._object = 0x80000001D4085BB0;
  v12._countAndFlagsBits = 0x6C616E696769724FLL;
  v12._object = 0xEF686374656B5320;
  v13.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v13.value._object = 0xEB00000000656C62;
  v18._countAndFlagsBits = 0xD000000000000040;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, paperKitBundle, v14, v18);
  v15 = type metadata accessor for FBKSInteraction.AnnotatedContent.IconType();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  return FBKSInteraction.AnnotatedContent.init(payload:displayName:description:fileName:group:iconType:additionalInfo:)();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance FeedbackManager@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t specialized FeedbackManager.feedbackImageName(action:hasResponse:)(uint64_t a1, char a2)
{
  v4 = type metadata accessor for FBKSEvaluation.Action();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - v9;
  if (a2)
  {
    v12 = 0x6C6C69662ELL;
  }

  else
  {
    v12 = 0;
  }

  if (a2)
  {
    v13 = 0xE500000000000000;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  v14 = *(v5 + 16);
  v14(&v29 - v9, a1, v4, v10);
  v15 = (*(v5 + 88))(v11, v4);
  if (v15 == *MEMORY[0x1E699C1F0])
  {
    strcpy(v31, "hand.thumbsup");
    HIWORD(v31[1]) = -4864;
LABEL_13:
    MEMORY[0x1DA6CD010](v12, v13);

    return v31[0];
  }

  if (v15 == *MEMORY[0x1E699C1C8])
  {
    v31[0] = 0;
    v31[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v31[0] = 0x7568742E646E6168;
    v31[1] = 0xEF6E776F6473626DLL;
    goto LABEL_13;
  }

  if (v15 == *MEMORY[0x1E699C1D8])
  {
    v31[0] = 0;
    v31[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    v31[0] = 0xD000000000000016;
    v31[1] = 0x80000001D4085CC0;
    goto LABEL_13;
  }

  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, generativeLogger);
  (v14)(v7, a1, v4);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v29 = v20;
    v30 = swift_slowAlloc();
    v31[0] = v30;
    *v20 = 136315138;
    v21 = FBKSEvaluation.Action.description.getter();
    v23 = v22;
    v24 = *(v5 + 8);
    v24(v7, v4);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v31);

    v26 = v29;
    *(v29 + 1) = v25;
    v27 = v26;
    _os_log_impl(&dword_1D38C4000, v18, v19, "feedbackImageName received invalid action %s", v26, 0xCu);
    v28 = v30;
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x1DA6D0660](v28, -1, -1);
    MEMORY[0x1DA6D0660](v27, -1, -1);
  }

  else
  {

    v24 = *(v5 + 8);
    v24(v7, v4);
  }

  v24(v11, v4);
  return 0;
}

uint64_t specialized FeedbackManager.sendFeedback(action:feedbackInput:from:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15FeedbackService15FBKSInteractionC16AnnotatedContentVSgMd);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v3 = type metadata accessor for FBKSInteraction.FeatureDomain();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for FBKSEvaluation.Subject();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[12] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[13] = v6;
  v2[14] = v5;

  return MEMORY[0x1EEE6DFA0](specialized FeedbackManager.sendFeedback(action:feedbackInput:from:), v6, v5);
}

uint64_t specialized FeedbackManager.sendFeedback(action:feedbackInput:from:)()
{
  v1 = v0[10];
  v12 = v0[11];
  v13 = v0[9];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  (*(v0[7] + 104))(v0[8], *MEMORY[0x1E699C258], v0[6]);
  outlined init with copy of FBKSInteraction.AnnotatedContent?(v4, v2);
  v5 = *(type metadata accessor for FeedbackInput() + 20);
  v6 = type metadata accessor for FBKSInteraction.AnnotatedContent();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v3, v4 + v5, v6);
  (*(v7 + 56))(v3, 0, 1, v6);
  v8 = objc_allocWithZone(type metadata accessor for FBKSDonation());

  *v12 = FBKSDonation.init(featureDomain:bundleID:prefillQuestions:originalAnnotatedContent:generatedAnnotatedContent:extraContent:modelVersion:diagnostics:auxiliaryMetrics:isHighPriority:)();
  (*(v1 + 104))(v12, *MEMORY[0x1E699C218], v13);
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = specialized FeedbackManager.sendFeedback(action:feedbackInput:from:);
  v10 = v0[2];

  return MEMORY[0x1EEE03F08](v10, 1);
}

{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  *(*v1 + 128) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 112);
  v7 = *(v2 + 104);
  if (v0)
  {
    v8 = specialized FeedbackManager.sendFeedback(action:feedbackInput:from:);
  }

  else
  {
    v8 = specialized FeedbackManager.sendFeedback(action:feedbackInput:from:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, generativeLogger);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 128);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1D38C4000, v4, v5, "_remoteEvaluate failed with error: %@", v8, 0xCu);
    outlined destroy of NSObject?(v9);
    MEMORY[0x1DA6D0660](v9, -1, -1);
    MEMORY[0x1DA6D0660](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t outlined init with copy of FBKSInteraction.AnnotatedContent?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15FeedbackService15FBKSInteractionC16AnnotatedContentVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for FeedbackInput()
{
  result = type metadata singleton initialization cache for FeedbackInput;
  if (!type metadata singleton initialization cache for FeedbackInput)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata completion function for FeedbackInput()
{
  type metadata accessor for FBKSInteraction.AnnotatedContent?(319, &lazy cache variable for type metadata for FBKSInteraction.AnnotatedContent?, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for FBKSInteraction.AnnotatedContent();
    if (v1 <= 0x3F)
    {
      type metadata accessor for FBKSInteraction.AnnotatedContent?(319, &lazy cache variable for type metadata for [FBKSInteraction.AnnotatedContent], MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for FBKSInteraction.AnnotatedContent?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for FBKSInteraction.AnnotatedContent();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t SharedTagged_10<>.shape.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);

  return SharedTagged_10.tagged6.getter();
}

uint64_t SharedTagged_10<>.image.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);

  return SharedTagged_10.tagged2.getter();
}

void CanvasElement.flags.getter(void *a1@<X8>)
{
  *a1 = 0;
}

{
  CanvasElement.flags.getter(a1);
}

__C::CGRect __swiftcall CanvasElement.renderFrame(in:)(__C::CGRect_optional *in)
{
  v3 = specialized CanvasElement.renderFrame(in:)(v1, v2);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

{
  v3 = specialized CanvasElement.renderFrame(in:)(v1, v2);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGFloat CanvasElement.coordinateSpace.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = (*(*(a2 + 8) + 8))();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = (*(a2 + 32))(a1, a2);
  v35 = v8 - v12 * 0.0;
  v36 = v6 - v10 * 0.0;
  v40.origin.x = v6;
  v40.origin.y = v8;
  v40.size.width = v10;
  v33 = v10;
  v34 = v12;
  v40.size.height = v12;
  MidX = CGRectGetMidX(v40);
  v41.origin.x = v6;
  v41.origin.y = v8;
  v41.size.width = v10;
  v41.size.height = v12;
  MidY = CGRectGetMidY(v41);
  CGAffineTransformMakeRotation(&t1, v13);
  tx = t1.tx;
  ty = t1.ty;
  v29 = *&t1.c;
  v31 = *&t1.a;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v22 = t1.tx;
  v23 = t1.ty;
  *&t2.a = v31;
  *&t2.c = v29;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v37, &t1, &t2);
  v24 = v37.tx;
  v25 = v37.ty;
  v30 = *&v37.c;
  v32 = *&v37.a;
  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = v22;
  t1.ty = v23;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.c = v30;
  *&t1.a = v32;
  t1.tx = v24;
  t1.ty = v25;
  CGAffineTransformConcat(&v37, &t1, &t2);
  t1.a = v33;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = v34;
  t1.tx = v36;
  t1.ty = v35;
  t2 = v37;
  CGAffineTransformConcat(&v37, &t1, &t2);
  result = v37.a;
  v27 = *&v37.c;
  v28 = *&v37.tx;
  *a3 = *&v37.a;
  a3[1] = v27;
  a3[2] = v28;
  return result;
}

void CanvasElement.coordinateSpace.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = v5(a2, a3);
  CGAffineTransform.decompose(initialRotation:)(&v33, v6);
  v8 = v33;
  v7 = v34;
  *&v9 = v35;
  v10.n128_u64[0] = v36;
  v11 = v37;
  v12 = v33;
  v13 = v34;
  v30 = v9;
  rect = v10;
  if (fabs(CGRectGetWidth(*(&v9 - 1))) >= 1.0)
  {
    v17 = v30;
  }

  else
  {
    v39.origin.x = v8;
    v39.origin.y = v7;
    *&v39.size.width = v30;
    *&v39.size.height = rect.n128_u64[0];
    *v14.i64 = CGRectGetWidth(v39);
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v16.i64[0] = 1.0;
    v17 = vbslq_s8(vnegq_f64(v15), v16, v14);
  }

  v18 = v8;
  v19 = v7;
  v31 = v17;
  v20 = rect.n128_u64[0];
  if (fabs(CGRectGetHeight(*(&v17 - 1))) < 1.0)
  {
    v40.origin.x = v8;
    v40.origin.y = v7;
    *&v40.size.width = v31.n128_u64[0];
    *&v40.size.height = rect.n128_u64[0];
    *v21.i64 = CGRectGetHeight(v40);
    v22.i64[0] = 1.0;
    v23.f64[0] = NAN;
    v23.f64[1] = NAN;
    rect = vbslq_s8(vnegq_f64(v23), v22, v21);
  }

  v24 = (*(*(a3 + 8) + 8))(a2);
  if (!CGRect.almostEqual(_:threshold:)(v8, v7, v31.n128_f64[0], rect.n128_f64[0], 0.1, v24, v25, v26, v27))
  {
    (*(a3 + 16))(a2, a3, v8, v7, v31, rect);
  }

  if (vabdd_f64(v5(a2, a3), v11) > 0.00174532925)
  {
    v29 = *(a3 + 40);
    v28.n128_f64[0] = v11;

    v29(a2, a3, v28);
  }
}

uint64_t CanvasElement.orientation.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return UnknownCanvasElementView.flags.modify(a2, a3);
}

{
  return UnknownCanvasElementView.flags.modify(a2, a3);
}

uint64_t Capsule<>.sharedCanvasElement.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Capsule.root.getter();
  Capsule.rootID.getter();
  (*(a2 + 112))(v7, v8, a2);
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v12, v8);
}

void protocol witness for CanvasElement.renderFrame(in:) in conformance PDFAnnotationElement()
{
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = 1.0;
  v19.size.height = 1.0;
  MidX = CGRectGetMidX(v19);
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = 1.0;
  v20.size.height = 1.0;
  MidY = CGRectGetMidY(v20);
  CGAffineTransformMakeRotation(&t1, 0.0);
  tx = t1.tx;
  ty = t1.ty;
  v12 = *&t1.c;
  v14 = *&t1.a;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v8 = t1.tx;
  v9 = t1.ty;
  *&t2.a = v14;
  *&t2.c = v12;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v16, &t1, &t2);
  v10 = v16.tx;
  v11 = v16.ty;
  v13 = *&v16.c;
  v15 = *&v16.a;
  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = v8;
  t1.ty = v9;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = v15;
  *&t1.c = v13;
  t1.tx = v10;
  t1.ty = v11;
  CGAffineTransformConcat(&v16, &t1, &t2);
  t1.a = 1.0;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = 1.0;
  t1.tx = 0.0;
  t1.ty = 0.0;
  t2 = v16;
  CGAffineTransformConcat(&v16, &t1, &t2);
  t1 = v16;
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = 1.0;
  v21.size.height = 1.0;
  CGRectApplyAffineTransform(v21, &t1);
}

BOOL protocol witness for CanvasElement.apply(_:) in conformance PDFAnnotationElement(uint64_t a1)
{
  v20 = *(a1 + 40);
  v21 = *(a1 + 32);
  v25.origin.x = 0.0;
  v25.origin.y = 0.0;
  v25.size.width = 1.0;
  v25.size.height = 1.0;
  MidX = CGRectGetMidX(v25);
  v26.origin.x = 0.0;
  v26.origin.y = 0.0;
  v26.size.width = 1.0;
  v26.size.height = 1.0;
  MidY = CGRectGetMidY(v26);
  CGAffineTransformMakeRotation(&t1, 0.0);
  tx = t1.tx;
  ty = t1.ty;
  v16 = *&t1.c;
  v18 = *&t1.a;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v10 = t1.tx;
  v11 = t1.ty;
  *&t2.a = v18;
  *&t2.c = v16;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v22, &t1, &t2);
  v12 = v22.tx;
  v13 = v22.ty;
  v17 = *&v22.c;
  v19 = *&v22.a;
  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = v10;
  t1.ty = v11;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.c = v17;
  *&t1.a = v19;
  t1.tx = v12;
  t1.ty = v13;
  CGAffineTransformConcat(&v22, &t1, &t2);
  t1.a = 1.0;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = 1.0;
  t1.tx = 0.0;
  t1.ty = 0.0;
  t2 = v22;
  CGAffineTransformConcat(&v22, &t1, &t2);
  t2 = v22;
  v14 = *(a1 + 16);
  *&v22.a = *a1;
  *&v22.c = v14;
  v22.tx = v21;
  v22.ty = v20;
  CGAffineTransformConcat(&t1, &t2, &v22);
  return specialized CanvasElement.coordinateSpace.setter();
}

Swift::Void __swiftcall CanvasElement.apply(_:)(CGAffineTransform *a1)
{
  v3 = v2;
  v4 = v1;
  tx = a1->tx;
  ty = a1->ty;
  CanvasElement.coordinateSpace.getter(v1, v2, &v11);
  t1 = v11;
  v8 = *&a1->c;
  *&v9.a = *&a1->a;
  *&v9.c = v8;
  v9.tx = tx;
  v9.ty = ty;
  CGAffineTransformConcat(&v12, &t1, &v9);
  CanvasElement.coordinateSpace.setter(&v12, v4, v3);
}

uint64_t SharedTagged_10<>.graph.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);

  return SharedTagged_10.tagged3.getter();
}

uint64_t (*CanvasElement.orientation.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = CanvasElement.orientation.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocument.modify in conformance PaperTextAttachmentView;
}

uint64_t (*CanvasElement.flags.modify(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = CanvasElement.flags.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocumentExpressionSolvingBehavior.modify in conformance PaperTextAttachmentView;
}

uint64_t CanvasElement.isHidden.setter(char a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 104);
  if (a1)
  {
    v5 = v3(v8);
    if ((*v4 & 1) == 0)
    {
      v6 = *v4 | 1;
LABEL_6:
      *v4 = v6;
    }
  }

  else
  {
    v5 = v3(v8);
    if (*v4)
    {
      v6 = *v4 & 0xFFFFFFFFFFFFFFFELL;
      goto LABEL_6;
    }
  }

  return v5(v8, 0);
}

uint64_t (*CanvasElement.isHidden.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  (*(a3 + 88))(&v6, a2, a3);
  *(a1 + 24) = v6 & 1;
  return CanvasElement.isHidden.modify;
}

uint64_t CanvasElement.renderFrame.getter(uint64_t a1, uint64_t a2)
{
  memset(v3, 0, sizeof(v3));
  v4 = 1;
  return (*(a2 + 136))(v3, a1);
}

void (*CanvasElement.coordinateSpace.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0xA8uLL);
  }

  *a1 = v7;
  *(v7 + 152) = a3;
  *(v7 + 160) = v3;
  *(v7 + 144) = a2;
  CanvasElement.coordinateSpace.getter(a2, a3, (v7 + 96));
  return CanvasElement.coordinateSpace.modify;
}

void CanvasElement.coordinateSpace.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 152);
  v4 = *(*a1 + 144);
  if (a2)
  {
    v5 = *a1;
  }

  else
  {
    v5 = (*a1 + 48);
  }

  v6 = v2[7];
  *v5 = v2[6];
  v5[1] = v6;
  v5[2] = v2[8];
  CanvasElement.coordinateSpace.setter(v5, v4, v3);

  free(v2);
}

uint64_t (*ContainerCanvasElement.pdfContentsBounds.modify(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = ContainerCanvasElement.pdfContentsBounds.modify(v6, a2, a3);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocumentExpressionSolvingBehavior.modify in conformance PaperTextAttachmentView;
}

void (*ContainerCanvasElement.pdfContentsBounds.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(double **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  *(v7 + 40) = a3;
  *(v7 + 48) = v3;
  *(v7 + 32) = a2;
  *v7 = (*(a3 + 16))(a2, a3);
  v8[1] = v9;
  v8[2] = v10;
  v8[3] = v11;
  return ContainerCanvasElement.pdfContentsBounds.modify;
}

void ContainerCanvasElement.pdfContentsBounds.modify(double **a1)
{
  v1 = *a1;
  (*(*(*a1 + 5) + 24))(*(*a1 + 4), *v1, v1[1], v1[2], v1[3]);

  free(v1);
}

uint64_t ContainerCanvasElement.ensureHasDrawing<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32 - v7;
  v9 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v9);
  v37 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v36 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v32 - v18;
  v20 = *(a3 + 64);
  v39 = v3;
  v20(a2, a3, v17);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v22 = *(v21 - 8);
  v23 = (*(v22 + 48))(v19, 1, v21);
  result = outlined destroy of Ref<PKDrawingStruct>?(v19);
  if (v23 == 1)
  {
    v25 = *(MEMORY[0x1E695F050] + 16);
    v40 = *MEMORY[0x1E695F050];
    v41 = v25;
    type metadata accessor for CGRect(0);
    _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
    CRRegister.init(wrappedValue:)();
    v35 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
    v34 = a3;
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
    v33 = v8;
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
    CROrderedSet.init()();
    UnknownProperties.init()();
    v26 = v37;
    outlined init with copy of PKDrawingStruct(v13, v37, type metadata accessor for PKDrawingStruct);
    v27 = type metadata accessor for CRKeyPath();
    v28 = v33;
    (*(*(v27 - 8) + 56))(v33, 1, 1, v27);
    v29 = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct, type metadata accessor for PKDrawingStruct);

    v31 = v36;
    MEMORY[0x1DA6CC020](v30, v26, v28, v9, v29);
    (*(v22 + 56))(v31, 0, 1, v21);
    (*(v34 + 72))(v31, v35);
    return _s8PaperKit15PKDrawingStructVWOhTm_0(v13, type metadata accessor for PKDrawingStruct);
  }

  return result;
}

uint64_t specialized ContainerCanvasElement.renderable(filterBelowId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18[-v7];
  v9 = type metadata accessor for Paper(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of PKDrawingStruct(v3, v11, type metadata accessor for Paper);
  v19 = a1;
  v12 = specialized Collection.firstIndex(where:)(closure #1 in ContainerCanvasElement.renderable(filterBelowId:)partial apply, v18);
  if (v13)
  {
    _s8PaperKit15PKDrawingStructVWOhTm_0(v11, type metadata accessor for Paper);
    return outlined init with copy of PKDrawingStruct(v3, a2, type metadata accessor for Paper);
  }

  else
  {
    v15 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
    result = dispatch thunk of Collection.endIndex.getter();
    v16 = v20;
    if (v20 < v15)
    {
      __break(1u);
    }

    else
    {
      v20 = v15;
      v21 = v16;
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
      dispatch thunk of RangeReplaceableCollection.removeSubrange(_:)();
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
      (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
      off_1F4F62938(v8);
      return _s8PaperKit0A0VWObTm_0(v11, a2, type metadata accessor for Paper);
    }
  }

  return result;
}

{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18[-v7];
  v9 = type metadata accessor for PaperDocumentPage(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of PKDrawingStruct(v3, v11, type metadata accessor for PaperDocumentPage);
  v19 = a1;
  v12 = specialized Collection.firstIndex(where:)(closure #1 in ContainerCanvasElement.renderable(filterBelowId:)partial apply, v18);
  if (v13)
  {
    _s8PaperKit15PKDrawingStructVWOhTm_0(v11, type metadata accessor for PaperDocumentPage);
    return outlined init with copy of PKDrawingStruct(v3, a2, type metadata accessor for PaperDocumentPage);
  }

  else
  {
    v15 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
    result = dispatch thunk of Collection.endIndex.getter();
    v16 = v20;
    if (v20 < v15)
    {
      __break(1u);
    }

    else
    {
      v20 = v15;
      v21 = v16;
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
      dispatch thunk of RangeReplaceableCollection.removeSubrange(_:)();
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
      (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
      off_1F4F5A588(v8);
      return _s8PaperKit0A0VWObTm_0(v11, a2, type metadata accessor for PaperDocumentPage);
    }
  }

  return result;
}

{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18[-v7];
  v9 = type metadata accessor for Image(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of PKDrawingStruct(v3, v11, type metadata accessor for Image);
  v19 = a1;
  v12 = specialized Collection.firstIndex(where:)(closure #1 in ContainerCanvasElement.renderable(filterBelowId:)partial apply, v18);
  if (v13)
  {
    _s8PaperKit15PKDrawingStructVWOhTm_0(v11, type metadata accessor for Image);
    return outlined init with copy of PKDrawingStruct(v3, a2, type metadata accessor for Image);
  }

  else
  {
    v15 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
    result = dispatch thunk of Collection.endIndex.getter();
    v16 = v20;
    if (v20 < v15)
    {
      __break(1u);
    }

    else
    {
      v20 = v15;
      v21 = v16;
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
      dispatch thunk of RangeReplaceableCollection.removeSubrange(_:)();
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
      (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
      off_1F4F5EDD8(v8);
      return _s8PaperKit0A0VWObTm_0(v11, a2, type metadata accessor for Image);
    }
  }

  return result;
}

uint64_t ContainerCanvasElement.renderable(filterBelowId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v36 = &v35 - v9;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v10 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v12 = &v35 - v11;
  v13 = *(a2 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v13 + 16);
  v37 = v4;
  v18(v17, v4, a2, v15);
  v19 = *(a3 + 88);
  v40 = a2;
  v20 = a2;
  v21 = a3;
  v19(v20, a3);
  v42 = a1;
  v22 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in ContainerCanvasElement.renderable(filterBelowId:), v41);
  v24 = v23;
  (*(v10 + 8))(v12, v38);
  if (v24)
  {
    v25 = v40;
    (*(v13 + 8))(v17, v40);
    return (v18)(v39, v37, v25);
  }

  else
  {
    v27 = v21;
    v28 = *(v21 + 104);
    v30 = v39;
    v29 = v40;
    v31 = v28(v45, v40, v27);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
    result = dispatch thunk of Collection.endIndex.getter();
    v32 = v43;
    if (v43 < v22)
    {
      __break(1u);
    }

    else
    {
      v43 = v22;
      v44 = v32;
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
      dispatch thunk of RangeReplaceableCollection.removeSubrange(_:)();
      v31(v45, 0);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
      v34 = v36;
      (*(*(v33 - 8) + 56))(v36, 1, 1, v33);
      (*(v27 + 72))(v34, v29, v27);
      return (*(v13 + 32))(v30, v17, v29);
    }
  }

  return result;
}

uint64_t closure #1 in ContainerCanvasElement.renderable(filterBelowId:)()
{
  v0 = type metadata accessor for CRKeyPath();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  MEMORY[0x1DA6CB7A0](v4);
  v5 = CRKeyPath.rawValue.getter();
  v7 = v6;
  v8 = CRKeyPath.rawValue.getter();
  v10 = v9;
  v11 = specialized static Data.== infix(_:_:)(v5, v7, v8, v9);
  outlined consume of Data._Representation(v8, v10);
  outlined consume of Data._Representation(v5, v7);
  (*(v1 + 8))(v3, v0);
  return v11 & 1;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(char *), uint64_t a2)
{
  v17 = a1;
  v18 = a2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v4 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v6 = &v13 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v7 = v20;
  if (v20 == v19[0])
  {
    return 0;
  }

  v14 = (v4 + 8);
  v15 = (v4 + 16);
  while (1)
  {
    v8 = v2;
    v9 = dispatch thunk of Collection.subscript.read();
    v10 = v16;
    (*v15)(v6);
    v9(v19, 0);
    v11 = v17(v6);
    (*v14)(v6, v10);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    v2 = v8;
    dispatch thunk of Collection.formIndex(after:)();
    dispatch thunk of Collection.endIndex.getter();
    v7 = v20;
    if (v20 == v19[0])
    {
      return 0;
    }
  }

  return v7;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for GraphableExpression(0) - 8);
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

PaperKit::TaggedCanvasElement::Enum_optional __swiftcall TaggedCanvasElement.Enum.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 10;
  if (rawValue < 0xA)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t SharedTagged_10<>.paper.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);

  return MEMORY[0x1EEDF4CE0](v0);
}

uint64_t SharedTagged_10<>.textBox.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);

  return MEMORY[0x1EEDF4CF8](v0);
}

uint64_t SharedTagged_10<>.link.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);

  return SharedTagged_10.tagged5.getter();
}

uint64_t SharedTagged_10<>.signature.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);

  return SharedTagged_10.tagged7.getter();
}

uint64_t SharedTagged_10<>.documentPage.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);

  return MEMORY[0x1EEDF4D18](v0);
}

uint64_t SharedTagged_10<>.pdfAnnotation.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);

  return SharedTagged_10.tagged9.getter();
}

uint64_t SharedTagged_10<>.loupe.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);

  return SharedTagged_10.tagged10.getter();
}

uint64_t SharedTagged_10<>.init(_:)(uint64_t a1)
{
  v2 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  WeakTagged_10.tag.getter();
  MEMORY[0x1DA6CB5C0](v3);
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  SharedTagged_10.init(_:id:)();
  return (*(*(v3 - 8) + 8))(a1, v3);
}

uint64_t WeakTagged_10<>.paper.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);

  return MEMORY[0x1EEDF4B08](v0);
}

uint64_t WeakTagged_10<>.image.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);

  return WeakTagged_10.tagged2.getter();
}

uint64_t WeakTagged_10<>.graph.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);

  return WeakTagged_10.tagged3.getter();
}

uint64_t WeakTagged_10<>.textBox.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);

  return WeakTagged_10.tagged4.getter();
}

uint64_t WeakTagged_10<>.link.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);

  return WeakTagged_10.tagged5.getter();
}

uint64_t WeakTagged_10<>.shape.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);

  return WeakTagged_10.tagged6.getter();
}

uint64_t WeakTagged_10<>.signature.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);

  return WeakTagged_10.tagged7.getter();
}

uint64_t WeakTagged_10<>.documentPage.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);

  return MEMORY[0x1EEDF4B40](v0);
}

uint64_t WeakTagged_10<>.pdfAnnotation.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);

  return MEMORY[0x1EEDF4B48](v0);
}

uint64_t WeakTagged_10<>.loupe.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);

  return WeakTagged_10.tagged10.getter();
}

uint64_t WeakTagged_10<>.init(_:)(uint64_t a1)
{
  v2 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  WeakTagged_10.tag.getter();
  MEMORY[0x1DA6CB7A0](v3);
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  WeakTagged_10.init(_:id:)();
  return (*(*(v3 - 8) + 8))(a1, v3);
}

void (*protocol witness for ContainerCanvasElement.pdfContentsBounds.modify in conformance Paper(uint64_t *a1, uint64_t a2, uint64_t a3))(double **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  *(v7 + 40) = a2;
  *(v7 + 48) = a3;
  *(v7 + 32) = v3;
  *v7 = (*(a3 + 16))(a2, a3);
  v8[1] = v9;
  v8[2] = v10;
  v8[3] = v11;
  return protocol witness for ContainerCanvasElement.pdfContentsBounds.modify in conformance Paper;
}

void protocol witness for ContainerCanvasElement.pdfContentsBounds.modify in conformance Paper(double **a1)
{
  v1 = *a1;
  (*(*(v1 + 6) + 24))(*(*a1 + 5), *v1, v1[1], v1[2], v1[3]);

  free(v1);
}

double specialized CanvasElement.renderFrame(in:)(uint64_t a1, uint64_t a2)
{
  CanvasElement.coordinateSpace.getter(a1, a2, &v4);
  v3 = v4;
  v5.origin.x = 0.0;
  v5.origin.y = 0.0;
  v5.size.width = 1.0;
  v5.size.height = 1.0;
  *&result = CGRectApplyAffineTransform(v5, &v3);
  return result;
}

uint64_t dispatch thunk of CanvasElement.update<A>(use:ref:pdfAnnotation:in:capsule:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = *(a10 + 120);
  v11 = *(a4 + 32);
  v12 = *(a4 + 16);
  v14[0] = *a4;
  v14[1] = v12;
  v15 = v11;
  return v10(a1, a2, a3, v14);
}

uint64_t dispatch thunk of CanvasElement.renderFrame(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 136);
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = v4;
  return v3(v7);
}

uint64_t dispatch thunk of CanvasElement.apply(_:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 152);
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  v6[2] = a1[2];
  return v3(v6);
}

uint64_t getEnumTagSinglePayload for TaggedCanvasElement.Enum(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TaggedCanvasElement.Enum(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t outlined destroy of Ref<PKDrawingStruct>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s8PaperKit15PKDrawingStructVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s8PaperKit0A0VWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of PKDrawingStruct(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *ShapeConfiguration.fillColor.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *ShapeConfiguration.strokeColor.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void ShapeConfiguration.init(type:fillColor:strokeColor:lineWidth:)(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v9 = *a1;

  *a4 = v9;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = a5;
}

uint64_t getEnumTagSinglePayload for ShapeConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for ShapeConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

id PaperKitPDFDocument.init(url:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - v5;
  v7 = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC8PaperKit19PaperKitPDFDocument_pageProxies] = MEMORY[0x1E69E7CC0];
  v8 = OBJC_IVAR____TtC8PaperKit19PaperKitPDFDocument_pdfPageIdMap;
  *&v2[v8] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8PaperKit9PDFPageIDV_SiTt0g5Tf4g_n(v7);
  v9 = OBJC_IVAR____TtC8PaperKit19PaperKitPDFDocument_pageIdMap;
  *&v2[v9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence9CRKeyPathV_SiTt0g5Tf4g_n(v7);
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  v13 = type metadata accessor for PaperKitPDFDocument();
  v23.receiver = v2;
  v23.super_class = v13;
  v14 = objc_msgSendSuper2(&v23, sel_initWithURL_, v12);

  if (v14)
  {

    v15 = type metadata accessor for PageId(0);
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    v16 = v14;
    v17 = _sSa9repeating5countSayxGx_SitcfC8PaperKit6PageIdVSg_Tt1g5(v6, [v16 pageCount]);
    v18 = type metadata accessor for URL();
    (*(*(v18 - 8) + 8))(a1, v18);
    v19 = OBJC_IVAR____TtC8PaperKit19PaperKitPDFDocument_pageProxies;
    swift_beginAccess();
    *&v16[v19] = v17;
  }

  else
  {
    v20 = type metadata accessor for URL();
    (*(*(v20 - 8) + 8))(a1, v20);
  }

  return v14;
}

uint64_t _sSa9repeating5countSayxGx_SitcfC8PaperKit6PageIdVSg_Tt1g5(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd);
      v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v4 + 16) = a2;
      v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd) - 8);
      v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      outlined init with copy of Date?(v3, v4 + v6, &_s8PaperKit6PageIdVSgMd);
      v7 = a2 - 1;
      if (a2 != 1)
      {
        v8 = *(v5 + 72);
        v9 = v4 + v8 + v6;
        do
        {
          outlined init with copy of Date?(v3, v9, &_s8PaperKit6PageIdVSgMd);
          v9 += v8;
          --v7;
        }

        while (v7);
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v3, &_s8PaperKit6PageIdVSgMd);
    return v4;
  }

  return result;
}

id PaperKitPDFDocument.init(data:)(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  v8 = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC8PaperKit19PaperKitPDFDocument_pageProxies] = MEMORY[0x1E69E7CC0];
  v9 = OBJC_IVAR____TtC8PaperKit19PaperKitPDFDocument_pdfPageIdMap;
  *&v2[v9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8PaperKit9PDFPageIDV_SiTt0g5Tf4g_n(v8);
  v10 = OBJC_IVAR____TtC8PaperKit19PaperKitPDFDocument_pageIdMap;
  *&v2[v10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence9CRKeyPathV_SiTt0g5Tf4g_n(v8);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v12 = type metadata accessor for PaperKitPDFDocument();
  v20.receiver = v2;
  v20.super_class = v12;
  v13 = objc_msgSendSuper2(&v20, sel_initWithData_, isa);

  if (v13)
  {

    v14 = type metadata accessor for PageId(0);
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
    v15 = v13;
    v16 = _sSa9repeating5countSayxGx_SitcfC8PaperKit6PageIdVSg_Tt1g5(v7, [v15 pageCount]);
    outlined consume of Data._Representation(a1, a2);
    v17 = OBJC_IVAR____TtC8PaperKit19PaperKitPDFDocument_pageProxies;
    swift_beginAccess();
    *&v15[v17] = v16;
  }

  else
  {
    outlined consume of Data._Representation(a1, a2);
  }

  return v13;
}

uint64_t PaperKitPDFDocument.copy(with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for PaperKitPDFDocument();
  v17.receiver = v2;
  v17.super_class = v5;
  objc_msgSendSuper2(&v17, sel_copyWithZone_, a1);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v6 = OBJC_IVAR____TtC8PaperKit19PaperKitPDFDocument_pageProxies;
  swift_beginAccess();
  v7 = *&v2[v6];
  v8 = OBJC_IVAR____TtC8PaperKit19PaperKitPDFDocument_pageProxies;
  swift_beginAccess();
  *(v16 + v8) = v7;

  v9 = OBJC_IVAR____TtC8PaperKit19PaperKitPDFDocument_pdfPageIdMap;
  swift_beginAccess();
  v10 = *&v2[v9];
  v11 = OBJC_IVAR____TtC8PaperKit19PaperKitPDFDocument_pdfPageIdMap;
  swift_beginAccess();
  *(v16 + v11) = v10;

  v12 = OBJC_IVAR____TtC8PaperKit19PaperKitPDFDocument_pageIdMap;
  swift_beginAccess();
  v13 = *&v2[v12];
  v14 = OBJC_IVAR____TtC8PaperKit19PaperKitPDFDocument_pageIdMap;
  swift_beginAccess();
  *(v16 + v14) = v13;

  a2[3] = v5;
  *a2 = v16;
  return result;
}

id PaperKitPDFDocument.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v27 - v11;
  if (one-time initialization token for lock != -1)
  {
    v10 = swift_once();
  }

  v13 = static PaperKitPDFDocument.lock;
  MEMORY[0x1EEE9AC00](v10);
  v27[-2] = v2;
  v27[-1] = a1;
  MEMORY[0x1EEE9AC00](v14);
  v27[-2] = partial apply for closure #1 in PaperKitPDFDocument.subscript.getter;
  v27[-1] = v15;
  os_unfair_lock_lock(v13 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v16);
  os_unfair_lock_unlock(v13 + 4);
  v17 = type metadata accessor for PageId(0);
  v18 = *(*(v17 - 8) + 48);
  if (v18(v12, 1, v17) != 1)
  {
    v26 = v12;
    return outlined init with take of PageId(v26, a2, type metadata accessor for PageId);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s8PaperKit6PageIdVSgMd);
  result = [v3 pageAtIndex_];
  if (result)
  {
    v20 = result;
    type metadata accessor for PaperKitPDFPage(0);
    v21 = swift_dynamicCastClassUnconditional();
    v22 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
    swift_beginAccess();
    outlined init with copy of Date?(v21 + v22, v8, &_s8PaperKit6PageIdVSgMd);

    if (v18(v8, 1, v17) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s8PaperKit6PageIdVSgMd);
      v23 = type metadata accessor for PDFPageID();
      (*(*(v23 - 8) + 56))(a2, 1, 1, v23);
      v24 = *(v17 + 20);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
      return (*(*(v25 - 8) + 56))(a2 + v24, 1, 1, v25);
    }

    v26 = v8;
    return outlined init with take of PageId(v26, a2, type metadata accessor for PageId);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in PaperKitPDFDocument.subscript.getter@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - v8;
  v10 = OBJC_IVAR____TtC8PaperKit19PaperKitPDFDocument_pageProxies;
  result = swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v12 = *(a1 + v10);
  if (*(v12 + 16) <= a2)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  outlined init with copy of Date?(v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * a2, v9, &_s8PaperKit6PageIdVSgMd);
  v13 = type metadata accessor for PageId(0);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v9, 1, v13) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s8PaperKit6PageIdVSgMd);
    v15 = 1;
  }

  else
  {
    outlined init with take of PageId(v9, a3, type metadata accessor for PageId);
    v15 = 0;
  }

  return (*(v14 + 56))(a3, v15, 1, v13);
}

uint64_t PaperKitPDFDocument.subscript.setter(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v78 = a1;
  v70 = type metadata accessor for CRKeyPath();
  v5 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v73 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v76 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v80 = &v65 - v10;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
  v84 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v69 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v66 = &v65 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v71 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v72 = &v65 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v77 = &v65 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v65 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v65 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v75 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v65 - v30;
  v32 = type metadata accessor for PDFPageID();
  v82 = *(v32 - 8);
  v83 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v68 = (&v65 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34);
  v36 = (&v65 - v35);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v65 - v38;
  v40 = OBJC_IVAR____TtC8PaperKit19PaperKitPDFDocument_pageProxies;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v41 = *&v3[v40];
  if (*(v41 + 16) <= a2)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v67 = v5;
  v86 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v85 = *(v15 + 72) * a2;
  outlined init with copy of Date?(v41 + v86 + v85, v26, &_s8PaperKit6PageIdVSgMd);
  v15 = type metadata accessor for PageId(0);
  v74 = *(v15 - 8);
  v81 = *(v74 + 48);
  if (v81(v26, 1, v15))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v26, &_s8PaperKit6PageIdVSgMd);
    (*(v82 + 56))(v31, 1, 1, v83);
LABEL_6:
    outlined destroy of StocksKitCurrencyCache.Provider?(v31, &_s8PaperKit9PDFPageIDVSgMd);
    goto LABEL_7;
  }

  outlined init with copy of Date?(v26, v31, &_s8PaperKit9PDFPageIDVSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v26, &_s8PaperKit6PageIdVSgMd);
  if ((*(v82 + 48))(v31, 1, v83) == 1)
  {
    goto LABEL_6;
  }

  outlined init with take of PageId(v31, v39, type metadata accessor for PDFPageID);
  outlined init with copy of PDFPageID(v39, v36, type metadata accessor for PDFPageID);
  v62 = OBJC_IVAR____TtC8PaperKit19PaperKitPDFDocument_pdfPageIdMap;
  swift_beginAccess();
  v31 = &v3[v62];
  specialized Dictionary.subscript.setter(0, 1, v36);
  swift_endAccess();
  outlined destroy of PDFPageID(v39, type metadata accessor for PDFPageID);
LABEL_7:
  v26 = a2;
  v42 = *&v3[v40];
  v5 = v80;
  v43 = v81;
  if (*(v42 + 16) <= a2)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  outlined init with copy of Date?(v42 + v86 + v85, v23, &_s8PaperKit6PageIdVSgMd);
  if (v43(v23, 1, v15))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v23, &_s8PaperKit6PageIdVSgMd);
    v23 = v79;
    (*(v84 + 56))(v5, 1, 1, v79);
LABEL_11:
    outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
    goto LABEL_12;
  }

  outlined init with copy of Date?(&v23[*(v15 + 20)], v5, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v23, &_s8PaperKit6PageIdVSgMd);
  v23 = v79;
  if ((*(v84 + 48))(v5, 1, v79) == 1)
  {
    goto LABEL_11;
  }

  v39 = v66;
  (*(v84 + 32))(v66, v5, v23);
  v63 = v73;
  MEMORY[0x1DA6CB4C0](v23);
  v5 = OBJC_IVAR____TtC8PaperKit19PaperKitPDFDocument_pageIdMap;
  swift_beginAccess();
  v31 = v5 + v3;
  v64 = v63;
  v43 = v81;
  specialized Dictionary.subscript.setter(0, 1, v64);
  swift_endAccess();
  (*(v84 + 8))(v39, v23);
LABEL_12:
  v44 = *&v3[v40];
  if (*(v44 + 16) <= a2)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v45 = v77;
  outlined init with copy of Date?(v44 + v86 + v85, v77, &_s8PaperKit6PageIdVSgMd);
  v46 = v43(v45, 1, v15);
  outlined destroy of StocksKitCurrencyCache.Provider?(v45, &_s8PaperKit6PageIdVSgMd);
  if (v46 != 1)
  {
    v39 = v78;
    v31 = v72;
    outlined init with copy of PDFPageID(v78, v72, type metadata accessor for PageId);
    (*(v74 + 56))(v31, 0, 1, v15);
    swift_beginAccess();
    v5 = *&v3[v40];
    result = swift_isUniquelyReferenced_nonNull_native();
    *&v3[v40] = v5;
    if (result)
    {
LABEL_17:
      if (v5[2] > v26)
      {
        outlined assign with take of PageId?(v31, v5 + v86 + v85);
        *&v3[v40] = v5;
        swift_endAccess();
        goto LABEL_19;
      }

      __break(1u);
LABEL_33:
      __break(1u);
      return result;
    }

LABEL_31:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
    *&v3[v40] = result;
    goto LABEL_17;
  }

  result = [v3 pageAtIndex_];
  v39 = v78;
  if (!result)
  {
    goto LABEL_33;
  }

  v48 = result;
  type metadata accessor for PaperKitPDFPage(0);
  v49 = swift_dynamicCastClassUnconditional();
  v50 = v71;
  outlined init with copy of PDFPageID(v39, v71, type metadata accessor for PageId);
  (*(v74 + 56))(v50, 0, 1, v15);
  v51 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
  swift_beginAccess();
  outlined assign with take of PageId?(v50, v49 + v51);
  swift_endAccess();

LABEL_19:
  v52 = v84;
  v53 = v75;
  outlined init with copy of Date?(v39, v75, &_s8PaperKit9PDFPageIDVSgMd);
  if ((*(v82 + 48))(v53, 1, v83) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v53, &_s8PaperKit9PDFPageIDVSgMd);
  }

  else
  {
    v54 = v68;
    outlined init with take of PageId(v53, v68, type metadata accessor for PDFPageID);
    v55 = OBJC_IVAR____TtC8PaperKit19PaperKitPDFDocument_pdfPageIdMap;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v87 = *&v3[v55];
    *&v3[v55] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, v54, isUniquelyReferenced_nonNull_native);
    *&v3[v55] = v87;
    swift_endAccess();
    outlined destroy of PDFPageID(v54, type metadata accessor for PDFPageID);
  }

  v57 = v76;
  outlined init with copy of Date?(&v39[*(v15 + 20)], v76, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  if ((*(v52 + 48))(v57, 1, v23) == 1)
  {
    outlined destroy of PDFPageID(v39, type metadata accessor for PageId);
    return outlined destroy of StocksKitCurrencyCache.Provider?(v57, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  }

  else
  {
    v58 = v69;
    (*(v52 + 32))(v69, v57, v23);
    v59 = v73;
    MEMORY[0x1DA6CB4C0](v23);
    v60 = OBJC_IVAR____TtC8PaperKit19PaperKitPDFDocument_pageIdMap;
    swift_beginAccess();
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v87 = *&v3[v60];
    *&v3[v60] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, v59, v61);
    (v67[1])(v59, v70);
    *&v3[v60] = v87;
    swift_endAccess();
    outlined destroy of PDFPageID(v39, type metadata accessor for PageId);
    return (*(v52 + 8))(v58, v23);
  }
}

uint64_t one-time initialization function for lock()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd);
  result = swift_allocObject();
  *(result + 16) = 0;
  static PaperKitPDFDocument.lock = result;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd);
  result = swift_allocObject();
  *(result + 16) = 0;
  static PaperKitPDFPage.lock = result;
  return result;
}

void __swiftcall PaperKitPDFDocument.page(at:)(PDFPage_optional *__return_ptr retstr, Swift::Int at)
{
  v10.receiver = v2;
  v10.super_class = type metadata accessor for PaperKitPDFDocument();
  v4 = [(PDFPage_optional *)&v10 pageAtIndex:at];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for PaperKitPDFPage(0);
    v4 = swift_dynamicCastClass();
    if (!v4)
    {

      v4 = 0;
    }
  }

  if (one-time initialization token for lock != -1)
  {
    v9 = v4;
    swift_once();
    v4 = v9;
  }

  v6 = static PaperKitPDFDocument.lock;
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v7);
  os_unfair_lock_lock(v6 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v8);
  os_unfair_lock_unlock(v6 + 4);
}

void closure #1 in PaperKitPDFDocument.page(at:)(void *a1, unint64_t a2, unint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  v16 = type metadata accessor for PageId(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v32 = v19;
    v33 = v3;
    v20 = OBJC_IVAR____TtC8PaperKit19PaperKitPDFDocument_pageProxies;
    swift_beginAccess();
    if ((a3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v21 = a3;
      v22 = *(a2 + v20);
      if (*(v22 + 16) > a3)
      {
        a3 = a2;
        v31 = (*(v8 + 80) + 32) & ~*(v8 + 80);
        a2 = v21;
        v23 = *(v8 + 72) * v21;
        outlined init with copy of Date?(v22 + v31 + v23, v15, &_s8PaperKit6PageIdVSgMd);
        if ((*(v17 + 48))(v15, 1, v16) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s8PaperKit6PageIdVSgMd);
          return;
        }

        v30 = v23;
        v24 = v32;
        outlined init with take of PageId(v15, v32, type metadata accessor for PageId);
        outlined init with copy of PDFPageID(v24, v12, type metadata accessor for PageId);
        v25 = *(v17 + 56);
        v25(v12, 0, 1, v16);
        v26 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
        swift_beginAccess();
        v29 = a1;
        outlined assign with take of PageId?(v12, a1 + v26);
        swift_endAccess();
        v8 = v34;
        v25(v34, 1, 1, v16);
        swift_beginAccess();
        a1 = *(a3 + v20);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a3 + v20) = a1;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_12:
    a1 = specialized _ArrayBuffer._consumeAndCreateNew()(a1);
    *(a3 + v20) = a1;
LABEL_7:
    if (a1[2] <= a2)
    {
      __break(1u);
    }

    else
    {
      outlined assign with take of PageId?(v8, a1 + v31 + v30);
      *(a3 + v20) = a1;
      swift_endAccess();

      outlined destroy of PDFPageID(v32, type metadata accessor for PageId);
    }
  }
}

Swift::Void __swiftcall PaperKitPDFDocument.removePage(at:)(Swift::Int at)
{
  v95 = type metadata accessor for CRKeyPath();
  v92 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v94 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v90 = &v82 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v85 = &v82 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v88 = &v82 - v9;
  i = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
  v89 = *(i - 8);
  MEMORY[0x1EEE9AC00](i);
  v84 = &v82 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v82 - v12;
  v14 = type metadata accessor for PDFPageID();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v98 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v93 = &v82 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v83 = (&v82 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v82 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v82 - v25;
  v86 = type metadata accessor for PageId(0);
  MEMORY[0x1EEE9AC00](v86);
  v28 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  PaperKitPDFDocument.subscript.getter(at, v28);
  v29 = type metadata accessor for PaperKitPDFDocument();
  v99.receiver = v1;
  v99.super_class = v29;
  objc_msgSendSuper2(&v99, sel_removePageAtIndex_, at);
  swift_beginAccess();
  v97 = at;
  specialized Array.remove(at:)(at, v26);
  outlined destroy of StocksKitCurrencyCache.Provider?(v26, &_s8PaperKit6PageIdVSgMd);
  swift_endAccess();
  v87 = v28;
  outlined init with copy of Date?(v28, v13, &_s8PaperKit9PDFPageIDVSgMd);
  v96 = v15;
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s8PaperKit9PDFPageIDVSgMd);
  }

  else
  {
    outlined init with take of PageId(v13, v23, type metadata accessor for PDFPageID);
    v30 = v83;
    outlined init with copy of PDFPageID(v23, v83, type metadata accessor for PDFPageID);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(0, 1, v30);
    swift_endAccess();
    outlined destroy of PDFPageID(v23, type metadata accessor for PDFPageID);
  }

  v31 = v88;
  outlined init with copy of Date?(&v87[*(v86 + 20)], v88, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  v32 = v89;
  v33 = i;
  if ((*(v89 + 48))(v31, 1, i) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v31, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  }

  else
  {
    v34 = v84;
    (*(v32 + 32))(v84, v31, v33);
    v35 = v85;
    MEMORY[0x1DA6CB4C0](v33);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(0, 1, v35);
    swift_endAccess();
    (*(v32 + 8))(v34, v33);
  }

  v36 = OBJC_IVAR____TtC8PaperKit19PaperKitPDFDocument_pdfPageIdMap;
  swift_beginAccess();
  v86 = v1;
  v89 = v36;
  v37 = *&v1[v36];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy8PaperKit9PDFPageIDVSiGMd);
  v38 = static _DictionaryStorage.copy(original:)();
  v39 = v38;
  v40 = 0;
  v41 = 1 << *(v37 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & *(v37 + 64);
  v44 = (v41 + 63) >> 6;
  for (i = v38 + 64; v43; v39[2] = v56)
  {
    v45 = __clz(__rbit64(v43));
    v43 &= v43 - 1;
LABEL_16:
    v48 = v45 | (v40 << 6);
    v49 = *(v96 + 72) * v48;
    v50 = v93;
    outlined init with copy of PDFPageID(*(v37 + 48) + v49, v93, type metadata accessor for PDFPageID);
    v51 = *(*(v37 + 56) + 8 * v48);
    v52 = v50;
    v53 = v98;
    outlined init with take of PageId(v52, v98, type metadata accessor for PDFPageID);
    if (v51 >= v97)
    {
      v54 = __OFSUB__(v51--, 1);
      if (v54)
      {
        goto LABEL_42;
      }

      v53 = v98;
    }

    *(i + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
    outlined init with take of PageId(v53, v39[6] + v49, type metadata accessor for PDFPageID);
    *(v39[7] + 8 * v48) = v51;
    v55 = v39[2];
    v54 = __OFADD__(v55, 1);
    v56 = v55 + 1;
    if (v54)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }
  }

  v46 = v40;
  while (1)
  {
    v40 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (v40 >= v44)
    {
      break;
    }

    v47 = *(v37 + 64 + 8 * v40);
    ++v46;
    if (v47)
    {
      v45 = __clz(__rbit64(v47));
      v43 = (v47 - 1) & v47;
      goto LABEL_16;
    }
  }

  v57 = v86;
  *(v86 + v89) = v39;

  v58 = OBJC_IVAR____TtC8PaperKit19PaperKitPDFDocument_pageIdMap;
  swift_beginAccess();
  v84 = v58;
  v59 = *(v57 + v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9Coherence9CRKeyPathVSiGMd);
  v60 = static _DictionaryStorage.copy(original:)();
  v61 = 0;
  v62 = *(v59 + 64);
  v85 = (v59 + 64);
  i = v59;
  v63 = 1 << *(v59 + 32);
  v64 = -1;
  if (v63 < 64)
  {
    v64 = ~(-1 << v63);
  }

  v65 = v64 & v62;
  v66 = (v63 + 63) >> 6;
  v93 = v92 + 32;
  v98 = v60;
  v88 = v60 + 64;
  v89 = v92 + 16;
  if (!v65)
  {
LABEL_26:
    v68 = v61;
    while (1)
    {
      v61 = v68 + 1;
      if (__OFADD__(v68, 1))
      {
        goto LABEL_39;
      }

      if (v61 >= v66)
      {
        outlined destroy of PDFPageID(v87, type metadata accessor for PageId);
        *&v84[v86] = v98;

        return;
      }

      v69 = *&v85[8 * v61];
      ++v68;
      if (v69)
      {
        v67 = __clz(__rbit64(v69));
        v96 = (v69 - 1) & v69;
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v67 = __clz(__rbit64(v65));
    v96 = (v65 - 1) & v65;
LABEL_31:
    v70 = v67 | (v61 << 6);
    v71 = i;
    v72 = v92;
    v73 = *(v92 + 72) * v70;
    v74 = v90;
    v75 = v95;
    (*(v92 + 16))(v90, *(i + 48) + v73, v95);
    v76 = *(*(v71 + 56) + 8 * v70);
    v77 = *(v72 + 32);
    v78 = v94;
    v77(v94, v74, v75);
    if (v76 >= v97)
    {
      v54 = __OFSUB__(v76--, 1);
      if (v54)
      {
        goto LABEL_43;
      }

      v78 = v94;
      v75 = v95;
    }

    *(v88 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
    v79 = v98;
    v77((*(v98 + 48) + v73), v78, v75);
    *(*(v79 + 56) + 8 * v70) = v76;
    v80 = *(v79 + 16);
    v54 = __OFADD__(v80, 1);
    v81 = v80 + 1;
    if (v54)
    {
      break;
    }

    *(v98 + 16) = v81;
    v65 = v96;
    if (!v96)
    {
      goto LABEL_26;
    }
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

Swift::Void __swiftcall PaperKitPDFDocument.insert(_:at:)(PDFPage *_, Swift::Int at)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v110 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v113 = &v110 - v11;
  v135 = type metadata accessor for CRKeyPath();
  v132 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v112 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v110 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v127 = &v110 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v129 = &v110 - v19;
  v118 = type metadata accessor for PDFPageID();
  v131 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v111 = (&v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v136 = &v110 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v133 = &v110 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneVy8PaperKit6PageIdVSgGMd);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v110 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v130 = &v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v117 = &v110 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v110 - v33;
  type metadata accessor for PaperKitPDFPage(0);
  v35 = swift_dynamicCastClass();
  v121 = v34;
  if (v35)
  {
    v36 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
    v37 = v35;
    swift_beginAccess();
    v38 = v37 + v36;
    v34 = v121;
    outlined init with copy of Date?(v38, v121, &_s8PaperKit6PageIdVSgMd);
  }

  else
  {
    v39 = type metadata accessor for PageId(0);
    (*(*(v39 - 8) + 56))(v34, 1, 1, v39);
  }

  v40 = OBJC_IVAR____TtC8PaperKit19PaperKitPDFDocument_pageProxies;
  swift_beginAccess();
  if (*(*&v3[v40] + 16) < at)
  {
    goto LABEL_54;
  }

  if ((at & 0x8000000000000000) == 0)
  {
    v114 = v8;
    v115 = v10;
    v116 = v9;
    outlined init with copy of Date?(v34, v27, &_s8PaperKit6PageIdVSgMd);
    specialized Array.replaceSubrange<A>(_:with:)(at, at, v27);
    swift_endAccess();
    v41 = type metadata accessor for PaperKitPDFDocument();
    v139.receiver = v3;
    v139.super_class = v41;
    v137 = at;
    [(PDFPage *)&v139 insertPage:_ atIndex:at];
    v42 = OBJC_IVAR____TtC8PaperKit19PaperKitPDFDocument_pdfPageIdMap;
    swift_beginAccess();
    v123 = v3;
    v120 = v42;
    v43 = *&v3[v42];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy8PaperKit9PDFPageIDVSiGMd);
    v44 = static _DictionaryStorage.copy(original:)();
    v45 = v44;
    v46 = 0;
    v47 = 1 << *(v43 + 32);
    v48 = -1;
    if (v47 < 64)
    {
      v48 = ~(-1 << v47);
    }

    v49 = v48 & *(v43 + 64);
    v50 = (v47 + 63) >> 6;
    v128 = v44 + 64;
    v134 = v15;
    if (v49)
    {
      goto LABEL_9;
    }

LABEL_10:
    v52 = v46;
    while (1)
    {
      v46 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if (v46 >= v50)
      {
        break;
      }

      v53 = *(v43 + 64 + 8 * v46);
      ++v52;
      if (v53)
      {
        v51 = __clz(__rbit64(v53));
        v49 = (v53 - 1) & v53;
        while (2)
        {
          v54 = v51 | (v46 << 6);
          v55 = *(v131 + 72) * v54;
          v56 = v133;
          outlined init with copy of PDFPageID(*(v43 + 48) + v55, v133, type metadata accessor for PDFPageID);
          v57 = *(*(v43 + 56) + 8 * v54);
          v58 = v56;
          v59 = v136;
          outlined init with take of PageId(v58, v136, type metadata accessor for PDFPageID);
          if (v57 >= v137)
          {
            v60 = __OFADD__(v57++, 1);
            if (!v60)
            {
              v59 = v136;
              goto LABEL_18;
            }

LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
            goto LABEL_55;
          }

LABEL_18:
          *(v128 + ((v54 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v54;
          outlined init with take of PageId(v59, v45[6] + v55, type metadata accessor for PDFPageID);
          *(v45[7] + 8 * v54) = v57;
          v61 = v45[2];
          v60 = __OFADD__(v61, 1);
          v62 = v61 + 1;
          if (!v60)
          {
            v45[2] = v62;
            if (!v49)
            {
              goto LABEL_10;
            }

LABEL_9:
            v51 = __clz(__rbit64(v49));
            v49 &= v49 - 1;
            continue;
          }

          break;
        }

LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }
    }

    v63 = v123;
    *&v123[v120] = v45;

    v64 = OBJC_IVAR____TtC8PaperKit19PaperKitPDFDocument_pageIdMap;
    swift_beginAccess();
    v119 = v64;
    v65 = *&v63[v64];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9Coherence9CRKeyPathVSiGMd);
    v66 = static _DictionaryStorage.copy(original:)();
    v67 = 0;
    v68 = *(v65 + 64);
    v122 = v65 + 64;
    v128 = v65;
    v69 = 1 << *(v65 + 32);
    v70 = v66;
    v71 = -1;
    if (v69 < 64)
    {
      v71 = ~(-1 << v69);
    }

    v72 = v71 & v68;
    v73 = (v69 + 63) >> 6;
    v125 = v132 + 16;
    v133 = v132 + 32;
    v124 = v66 + 64;
    v126 = v66;
    while (1)
    {
      v74 = v130;
      v75 = v129;
      if (!v72)
      {
        break;
      }

      v76 = __clz(__rbit64(v72));
      v136 = (v72 - 1) & v72;
LABEL_31:
      v79 = v76 | (v67 << 6);
      v80 = v128;
      v81 = v132;
      v82 = *(v132 + 72) * v79;
      v83 = v127;
      v84 = v135;
      (*(v132 + 16))(v127, *(v128 + 48) + v82, v135);
      v85 = *(*(v80 + 56) + 8 * v79);
      v86 = *(v81 + 32);
      v87 = v134;
      v86(v134, v83, v84);
      v70 = v126;
      if (v85 >= v137)
      {
        v60 = __OFADD__(v85++, 1);
        if (v60)
        {
          goto LABEL_53;
        }

        v87 = v134;
        v84 = v135;
      }

      *(v124 + ((v79 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v79;
      v86((v70[6] + v82), v87, v84);
      *(v70[7] + 8 * v79) = v85;
      v88 = v70[2];
      v60 = __OFADD__(v88, 1);
      v89 = v88 + 1;
      if (v60)
      {
        goto LABEL_51;
      }

      v70[2] = v89;
      v72 = v136;
    }

    v77 = v67;
    while (1)
    {
      v67 = v77 + 1;
      if (__OFADD__(v77, 1))
      {
        goto LABEL_49;
      }

      if (v67 >= v73)
      {
        break;
      }

      v78 = *(v122 + 8 * v67);
      ++v77;
      if (v78)
      {
        v76 = __clz(__rbit64(v78));
        v136 = (v78 - 1) & v78;
        goto LABEL_31;
      }
    }

    v90 = v123;
    *&v123[v119] = v70;

    v91 = v121;
    v92 = v117;
    outlined init with copy of Date?(v121, v117, &_s8PaperKit6PageIdVSgMd);
    v93 = type metadata accessor for PageId(0);
    v94 = *(*(v93 - 8) + 48);
    if (v94(v92, 1, v93) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v92, &_s8PaperKit6PageIdVSgMd);
      (*(v131 + 56))(v75, 1, 1, v118);
      v95 = v114;
      v96 = v135;
    }

    else
    {
      outlined init with copy of Date?(v92, v75, &_s8PaperKit9PDFPageIDVSgMd);
      outlined destroy of PDFPageID(v92, type metadata accessor for PageId);
      v97 = (*(v131 + 48))(v75, 1, v118);
      v95 = v114;
      v96 = v135;
      if (v97 != 1)
      {
        v98 = v75;
        v99 = v111;
        outlined init with take of PageId(v98, v111, type metadata accessor for PDFPageID);
        v100 = v120;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v138 = *&v90[v100];
        *&v90[v100] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v137, v99, isUniquelyReferenced_nonNull_native);
        v91 = v121;
        *&v90[v100] = v138;
        swift_endAccess();
        outlined destroy of PDFPageID(v99, type metadata accessor for PDFPageID);
LABEL_41:
        outlined init with copy of Date?(v91, v74, &_s8PaperKit6PageIdVSgMd);
        if (v94(v74, 1, v93) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v91, &_s8PaperKit6PageIdVSgMd);
          outlined destroy of StocksKitCurrencyCache.Provider?(v74, &_s8PaperKit6PageIdVSgMd);
          (*(v115 + 56))(v95, 1, 1, v116);
        }

        else
        {
          outlined init with copy of Date?(v74 + *(v93 + 20), v95, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
          outlined destroy of PDFPageID(v74, type metadata accessor for PageId);
          v102 = v115;
          v103 = v116;
          if ((*(v115 + 48))(v95, 1, v116) != 1)
          {
            v106 = v113;
            (*(v102 + 32))(v113, v95, v103);
            v107 = v112;
            MEMORY[0x1DA6CB4C0](v103);
            v108 = v119;
            swift_beginAccess();
            v109 = swift_isUniquelyReferenced_nonNull_native();
            v138 = *&v90[v108];
            *&v90[v108] = 0x8000000000000000;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v137, v107, v109);
            (*(v132 + 8))(v107, v96);
            *&v90[v108] = v138;
            swift_endAccess();
            (*(v102 + 8))(v106, v103);
            v104 = &_s8PaperKit6PageIdVSgMd;
            v105 = v91;
            goto LABEL_47;
          }

          outlined destroy of StocksKitCurrencyCache.Provider?(v91, &_s8PaperKit6PageIdVSgMd);
        }

        v104 = &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd;
        v105 = v95;
LABEL_47:
        outlined destroy of StocksKitCurrencyCache.Provider?(v105, v104);
        return;
      }
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v75, &_s8PaperKit9PDFPageIDVSgMd);
    goto LABEL_41;
  }

LABEL_55:
  __break(1u);
}

Swift::Void __swiftcall PaperKitPDFDocument.exchangePage(at:withPageAt:)(Swift::Int at, Swift::Int withPageAt)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v20 = &v19 - v13;
  v14 = type metadata accessor for PaperKitPDFDocument();
  v21.receiver = v2;
  v21.super_class = v14;
  objc_msgSendSuper2(&v21, sel_exchangePageAtIndex_withPageAtIndex_, at, withPageAt);
  v15 = OBJC_IVAR____TtC8PaperKit19PaperKitPDFDocument_pageProxies;
  swift_beginAccess();
  if (at < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v19 = withPageAt;
  v3 = *&v2[v15];
  v5 = v3[2];
  if (v5 <= at)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v16 = *(v9 + 72);
  v9 = v16 * at;
  outlined init with copy of Date?(v3 + v4 + v16 * at, v20, &_s8PaperKit6PageIdVSgMd);
  if (v5 > v19)
  {
    v5 = v16 * v19;
    outlined init with copy of Date?(v3 + v4 + v16 * v19, v11, &_s8PaperKit6PageIdVSgMd);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v2[v15] = v3;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  __break(1u);
LABEL_11:
  v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
  *&v2[v15] = v3;
LABEL_5:
  if (v3[2] <= at)
  {
    __break(1u);
  }

  else
  {
    outlined assign with take of PageId?(v11, v3 + v4 + v9);
    *&v2[v15] = v3;
    if (v3[2] > v19)
    {
      v18 = v20;
      outlined assign with copy of PageId?(v20, v3 + v4 + v5);
      *&v2[v15] = v3;
      swift_endAccess();
      outlined destroy of StocksKitCurrencyCache.Provider?(v18, &_s8PaperKit6PageIdVSgMd);
      return;
    }
  }

  __break(1u);
}

uint64_t PaperKitPDFDocument.finishLoading(as:)(uint64_t *a1)
{
  v2 = v1;
  v80 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd);
  v78 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v77 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v79 = &v68 - v6;
  v7 = type metadata accessor for PDFPageID();
  v69 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v13 = (&v68 - v12);
  v14 = [v1 isLocked];
  if (!v14)
  {
    goto LABEL_5;
  }

  if (one-time initialization token for shared != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v15 = *(static PasswordManager.shared + 16);
    MEMORY[0x1EEE9AC00](v14);
    *(&v68 - 2) = v16;
    *(&v68 - 1) = v80;
    MEMORY[0x1EEE9AC00](v17);
    *(&v68 - 2) = partial apply for closure #1 in PasswordManager.password(for:);
    *(&v68 - 1) = v18;
    os_unfair_lock_lock(v15 + 4);
    partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(&v82);
    os_unfair_lock_unlock(v15 + 4);
    if (!*(&v82 + 1))
    {
      break;
    }

    v19 = MEMORY[0x1DA6CCED0](v82, *(&v82 + 1));

    v20 = [v2 unlockWithPassword_];

    if ((v20 & 1) == 0)
    {
      break;
    }

LABEL_5:
    v21 = [v2 pageCount];
    v22 = OBJC_IVAR____TtC8PaperKit19PaperKitPDFDocument_pageProxies;
    swift_beginAccess();
    v23 = *&v2[v22];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v2[v22] = v23;
    if (!isUniquelyReferenced_nonNull_native || v21 > v23[3] >> 1)
    {
      if (v23[2] <= v21)
      {
        v25 = v21;
      }

      else
      {
        v25 = v23[2];
      }

      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v25, 0, v23);
    }

    *&v2[v22] = v23;
    swift_endAccess();
    v26 = [v2 pageCount];
    if ((v26 & 0x8000000000000000) == 0)
    {
      v27 = v26;
      if (!v26)
      {
        return 1;
      }

      v28 = OBJC_IVAR____TtC8PaperKit19PaperKitPDFDocument_pdfPageIdMap;
      v76 = (v69 + 56);
      v29 = 0;
      v75 = type metadata accessor for CRAsset();
      v30 = *(v75 - 8);
      v31 = *(v30 + 16);
      v73 = v30 + 16;
      v74 = v31;
      v71 = v22;
      v72 = v13;
      v68 = v9;
      v70 = v27;
      v31(v13 + *(v7 + 20), v80, v75);
      while (1)
      {
        *v13 = v29;
        v32 = *&v2[v22];
        v33 = v32[2];
        v34 = v13;
        v13 = v22;
        if (v33 >= v29)
        {
          v44 = v77;
          outlined init with copy of PDFPageID(v34, v77, type metadata accessor for PDFPageID);
          (*v76)(v44, 0, 1, v7);
          v45 = type metadata accessor for PageId(0);
          v46 = *(v45 + 20);
          v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
          (*(*(v47 - 8) + 56))(v44 + v46, 1, 1, v47);
          (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
          swift_beginAccess();
          v48 = swift_isUniquelyReferenced_nonNull_native();
          *(v13 + v2) = v32;
          if ((v48 & 1) == 0)
          {
            v32 = specialized _ArrayBuffer._consumeAndCreateNew()(v32);
            *(v13 + v2) = v32;
          }

          if (v29 >= v32[2])
          {
            goto LABEL_43;
          }

          outlined assign with take of PageId?(v77, v32 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v29);
        }

        else
        {
          v35 = v7;
          v36 = v79;
          outlined init with copy of PDFPageID(v34, v79, type metadata accessor for PDFPageID);
          v37 = v35;
          (*v76)(v36, 0, 1, v35);
          v38 = type metadata accessor for PageId(0);
          v39 = *(v38 + 20);
          v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
          (*(*(v40 - 8) + 56))(v36 + v39, 1, 1, v40);
          (*(*(v38 - 8) + 56))(v36, 0, 1, v38);
          swift_beginAccess();
          v41 = swift_isUniquelyReferenced_nonNull_native();
          *(v13 + v2) = v32;
          if ((v41 & 1) == 0)
          {
            v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33 + 1, 1, v32);
            *(v13 + v2) = v32;
          }

          v43 = v32[2];
          v42 = v32[3];
          v7 = v37;
          if (v43 >= v42 >> 1)
          {
            v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v42 > 1, v43 + 1, 1, v32);
          }

          v9 = v68;
          v32[2] = v43 + 1;
          outlined init with take of PageId?(v79, v32 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v43);
        }

        *(v13 + v2) = v32;
        swift_endAccess();
        v13 = v72;
        outlined init with copy of PDFPageID(v72, v9, type metadata accessor for PDFPageID);
        swift_beginAccess();
        v49 = swift_isUniquelyReferenced_nonNull_native();
        v81 = *&v2[v28];
        v50 = v81;
        *&v2[v28] = 0x8000000000000000;
        v52 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
        v53 = v50[2];
        v54 = (v51 & 1) == 0;
        v55 = v53 + v54;
        if (__OFADD__(v53, v54))
        {
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          break;
        }

        v56 = v51;
        if (v50[3] >= v55)
        {
          if ((v49 & 1) == 0)
          {
            specialized _NativeDictionary.copy()();
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v55, v49);
          v57 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
          if ((v56 & 1) != (v58 & 1))
          {
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v52 = v57;
        }

        v22 = v71;
        v59 = v81;
        if (v56)
        {
          *(v81[7] + 8 * v52) = v29;
          outlined destroy of PDFPageID(v9, type metadata accessor for PDFPageID);
        }

        else
        {
          v81[(v52 >> 6) + 8] |= 1 << v52;
          outlined init with copy of PDFPageID(v9, v59[6] + *(v69 + 72) * v52, type metadata accessor for PDFPageID);
          *(v59[7] + 8 * v52) = v29;
          outlined destroy of PDFPageID(v9, type metadata accessor for PDFPageID);
          v60 = v59[2];
          v61 = __OFADD__(v60, 1);
          v62 = v60 + 1;
          if (v61)
          {
            goto LABEL_44;
          }

          v59[2] = v62;
        }

        ++v29;
        *&v2[v28] = v59;

        swift_endAccess();
        outlined destroy of PDFPageID(v13, type metadata accessor for PDFPageID);
        if (v70 == v29)
        {
          return 1;
        }

        v74(v13 + *(v7 + 20), v80, v75);
      }
    }

    __break(1u);
LABEL_46:
    v14 = swift_once();
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v64 = type metadata accessor for Logger();
  __swift_project_value_buffer(v64, logger);
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_1D38C4000, v65, v66, "Failed to unlock PDF file", v67, 2u);
    MEMORY[0x1DA6D0660](v67, -1, -1);
  }

  return 0;
}

uint64_t static PaperKitPDFDocument._load(_:assetManager:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26[-v9];
  v11 = type metadata accessor for CRAsset();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v26[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v7, a1, v4, v13);

  CRAsset.init(safelyFrom:coordinated:assetManager:)();
  (*(v12 + 56))(v10, 0, 1, v11);
  v18 = *(v12 + 32);
  v18(v15, v10, v11);
  v19 = objc_allocWithZone(type metadata accessor for PaperKitPDFDocument());
  URL._bridgeToObjectiveC()(v20);
  v22 = v21;
  v23 = [v19 initWithURL_];

  if (v23)
  {
    if (PaperKitPDFDocument.finishLoading(as:)(v15))
    {
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0aB11PDFDocumentC_9Coherence7CRAssetVtMd);
      v25 = *(v24 + 48);
      *a2 = v23;
      v18((a2 + v25), v15, v11);
      return (*(*(v24 - 8) + 56))(a2, 0, 1, v24);
    }

    (*(v12 + 8))(v15, v11);
  }

  else
  {
    (*(v12 + 8))(v15, v11);
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0aB11PDFDocumentC_9Coherence7CRAssetVtMd);
  return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
}

uint64_t static PaperKitPDFDocument._load(_:assetManager:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for CRAsset();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));

  outlined copy of Data._Representation(a1, a2);
  CRAsset.init(data:assetManager:)();
  v10 = objc_allocWithZone(type metadata accessor for PaperKitPDFDocument());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v12 = [v10 initWithData_];

  if (v12)
  {
    if (PaperKitPDFDocument.finishLoading(as:)(v9))
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0aB11PDFDocumentC_9Coherence7CRAssetVtMd);
      v14 = *(v13 + 48);
      *a3 = v12;
      (*(v7 + 32))(&a3[v14], v9, v6);
      return (*(*(v13 - 8) + 56))(a3, 0, 1, v13);
    }

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    (*(v7 + 8))(v9, v6);
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0aB11PDFDocumentC_9Coherence7CRAssetVtMd);
  return (*(*(v16 - 8) + 56))(a3, 1, 1, v16);
}

uint64_t closure #1 in static PaperKitPDFDocument._load(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in static PaperKitPDFDocument._load(_:), 0, 0);
}

uint64_t closure #1 in static PaperKitPDFDocument._load(_:)()
{
  CRAsset.assetManager.getter();
  CRAssetManager.encryptionDelegate.getter();

  if (*(v0 + 80))
  {
    outlined init with take of PaperKitHashable((v0 + 56), v0 + 16);
    v5 = Data.init(contentsOf:options:)();
    v7 = v6;
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v8 = dispatch thunk of EncryptionDelegate.decrypt(_:)();
    v10 = v9;
    v11 = objc_allocWithZone(type metadata accessor for PaperKitPDFDocument());
    isa = Data._bridgeToObjectiveC()().super.isa;
    v13 = [v11 initWithData_];

    outlined consume of Data._Representation(v8, v10);
    outlined consume of Data._Representation(v5, v7);
    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  }

  else
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 56, &_s9Coherence18EncryptionDelegate_pSgMd);
    v1 = objc_allocWithZone(type metadata accessor for PaperKitPDFDocument());
    URL._bridgeToObjectiveC()(v2);
    v4 = v3;
    v13 = [v1 initWithURL_];
  }

  **(v0 + 96) = v13;
  v14 = *(v0 + 8);

  return v14();
}

unint64_t PaperKitPDFDocument.updatePDFPages<A>(in:use:options:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v70 = a5;
  v61 = a3;
  v67 = a1;
  v60 = type metadata accessor for CRKeyPath();
  v9 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit0D12DocumentPageVGSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v66 = &v56 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0A12DocumentPageVSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v56 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v56 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v56 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
  v23 = *(v22 - 8);
  *&v24 = MEMORY[0x1EEE9AC00](v22).n128_u64[0];
  v26 = &v56 - v25;
  v58 = *a2;
  v75 = v6;
  result = [v6 pageCount];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
    v71 = v26;
    v57 = v15;
    v74 = v18;
    v69 = a4;
    if (result)
    {
      v28 = v22;
      v29 = v21;
      v30 = 0;
      v72 = (v23 + 56);
      v68 = (v23 + 48);
      v64 = (v23 + 32);
      v63 = (v23 + 8);
      v56 = (v9 + 8);
      v31 = &_s8PaperKit6PageIdVSgMR;
      v65 = v21;
      v73 = result;
      do
      {
        v32 = v28;
        v33 = v31;
        result = [v75 pageAtIndex_];
        if (!result)
        {
          goto LABEL_24;
        }

        v34 = result;
        type metadata accessor for PaperKitPDFPage(0);
        v35 = swift_dynamicCastClassUnconditional();
        v36 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
        swift_beginAccess();
        v37 = v74;
        outlined init with copy of Date?(v35 + v36, v74, &_s8PaperKit6PageIdVSgMd);
        v38 = type metadata accessor for PageId(0);
        if ((*(*(v38 - 8) + 48))(v37, 1, v38))
        {

          outlined destroy of StocksKitCurrencyCache.Provider?(v37, &_s8PaperKit6PageIdVSgMd);
          v28 = v32;
          (*v72)(v29, 1, 1, v32);
        }

        else
        {
          outlined init with copy of Date?(v37 + *(v38 + 20), v29, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
          outlined destroy of StocksKitCurrencyCache.Provider?(v37, &_s8PaperKit6PageIdVSgMd);
          v28 = v32;
          if ((*v68)(v29, 1, v32) != 1)
          {
            (*v64)(v71, v29, v32);
            v39 = v66;
            v40 = v32;
            WeakTagged_3.tagged3.getter();
            v41 = v39;
            v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit0D12DocumentPageVGMd);
            v43 = *(v42 - 8);
            if ((*(v43 + 48))(v41, 1, v42) == 1)
            {
              v44 = v41;
              v45 = &_s9Coherence7WeakRefVy8PaperKit0D12DocumentPageVGSgMd;
              goto LABEL_15;
            }

            v46 = v57;
            WeakRef.subscript.getter();
            v47 = v42;
            v48 = v46;
            (*(v43 + 8))(v41, v47);
            v49 = type metadata accessor for PaperDocumentPage(0);
            if ((*(*(v49 - 8) + 48))(v46, 1, v49) == 1)
            {
              v44 = v46;
              v45 = &_s8PaperKit0A12DocumentPageVSgMd;
LABEL_15:
              outlined destroy of StocksKitCurrencyCache.Provider?(v44, v45);
              v50 = v71;
LABEL_16:
              v51 = v67;
              v28 = v40;
              WeakTagged_3.subscript.getter();
              v52 = v78;
              if (v78)
              {
                v53 = v79;
                v62 = __swift_project_boxed_opaque_existential_1(v77, v78);
                v54 = v59;
                MEMORY[0x1DA6CB4C0](v28);
                v76 = v58;
                (*(v53 + 152))(v35, v54, &v76, v51, v61, v69, v70, v52, v53);

                (*v56)(v54, v60);
                (*v63)(v71, v28);
                __swift_destroy_boxed_opaque_existential_0(v77);
              }

              else
              {
                (*v63)(v50, v40);

                outlined destroy of StocksKitCurrencyCache.Provider?(v77, &_s8PaperKit0A4Page_pSgMd);
              }
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
              CRRegister.wrappedValue.getter();
              v55 = v77[0];
              outlined destroy of PDFPageID(v48, type metadata accessor for PaperDocumentPage);
              v50 = v71;
              if ((v55 & 0x20) == 0)
              {
                goto LABEL_16;
              }

              v28 = v40;
              (*v63)(v71, v40);
            }

            v29 = v65;
            result = v73;
            v31 = v33;
            goto LABEL_6;
          }
        }

        outlined destroy of StocksKitCurrencyCache.Provider?(v29, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
        result = v73;
LABEL_6:
        ++v30;
      }

      while (result != v30);
    }
  }

  return result;
}

id PaperKitPDFDocument.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaperKitPDFDocument();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t outlined assign with take of PageId?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of PageId?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)@<D0>(_OWORD *a1@<X8>)
{
  return specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(*(v1 + 16), a1);
}

{
  (*(v1 + 16))(&v5);
  if (!v2)
  {
    result = *&v5;
    *a1 = v5;
  }

  return result;
}

uint64_t outlined init with copy of PDFPageID(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of PageId(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with copy of PageId?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PDFPageID(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized static PaperKitPDFDocument._load(_:)()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0aB11PDFDocumentCSgMd);
  *v3 = v0;
  v3[1] = specialized static PaperKitPDFDocument._load(_:);

  return MEMORY[0x1EEDF52A8](v0 + 2, 1, &async function pointer to partial apply for closure #1 in static PaperKitPDFDocument._load(_:), v2, v4);
}

{
  v1 = *(v0 + 16);
  if (v1 >= 2)
  {
    if (PaperKitPDFDocument.finishLoading(as:)(*(v0 + 24)))
    {
      goto LABEL_5;
    }

    outlined consume of PaperKitPDFDocument??(v1);
  }

  v1 = 0;
LABEL_5:
  v2 = *(v0 + 8);

  return v2(v1);
}

void specialized static PaperKitPDFDocument._load(_:)()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](specialized static PaperKitPDFDocument._load(_:), 0, 0);
  }
}

uint64_t partial apply for closure #1 in static PaperKitPDFDocument._load(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in static PaperKitPDFDocument._load(_:)(a1, a2, v6);
}

void outlined consume of PaperKitPDFDocument??(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t dispatch thunk of MagicGenerativePlaygroundTokenProvider.authenticate()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of MagicGenerativePlaygroundTokenProvider.authenticate();

  return v7(a1, a2);
}

{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

void *specialized Dictionary.subscript.getter(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaDictionary.lookup(_:)();

    if (v4)
    {
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIImage);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ResizeHandleType@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ResizeHandleType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

id ControlHandleView.init(elementView:controlPoint:)(void *a1, unsigned __int8 *a2)
{
  v4 = *a2;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *(v2 + OBJC_IVAR____TtC8PaperKit17ControlHandleView_controlPoint) = v4;
  if ((v4 - 1) > 9)
  {
    v5 = 0;
  }

  else
  {
    v5 = byte_1D40607A2[(v4 - 1)];
  }

  v6 = CanvasElementResizeHandle.init(_:category:enabled:)(0, v5, 1);
  v7 = one-time initialization token for paperKitBundle;
  v8 = v6;
  if (v7 != -1)
  {
    swift_once();
  }

  v17._object = 0x80000001D4085E80;
  v9._countAndFlagsBits = 0x206C6F72746E6F43;
  v9._object = 0xEE00656C646E6148;
  v10.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v10.value._object = 0xEB00000000656C62;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v17._countAndFlagsBits = 0xD000000000000029;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, paperKitBundle, v11, v17)._countAndFlagsBits;
  v13 = MEMORY[0x1DA6CCED0](countAndFlagsBits);

  [v8 setAccessibilityLabel_];

  v14 = ControlPointType.accessibilityIdentifier.getter();
  v15 = MEMORY[0x1DA6CCED0](v14);

  [v8 setAccessibilityIdentifier_];

  return v8;
}

id CanvasElementResizeHandle.init(_:category:enabled:)(char a1, char a2, char a3)
{
  v5 = &v3[OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_resizeViewCenter];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  v3[OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_type] = a1;
  v3[OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_category] = a2;
  v3[OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_enabled] = a3;
  v6 = type metadata accessor for PrecisePanGestureRecognizer();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_initialModifierFlags] = 0;
  v7[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_isPrecise] = 1;
  swift_unknownObjectWeakInit();
  *&v7[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_touchesBeganTimestamp] = 0;
  *&v7[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_tapAndHoldTimeout] = 0x3FB999999999999ALL;
  v36.receiver = v7;
  v36.super_class = v6;
  v8 = objc_msgSendSuper2(&v36, sel_initWithTarget_action_, 0, 0);
  v8[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_isPrecise] = 1;
  swift_unknownObjectWeakAssign();
  [v8 setMaximumNumberOfTouches_];
  *&v3[OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_dragGestureRecognizer] = v8;
  if (one-time initialization token for resizeHandleSize != -1)
  {
    swift_once();
  }

  v9 = *&static UIConstants.resizeHandleSize;
  v35.receiver = v3;
  v35.super_class = type metadata accessor for CanvasElementResizeHandle();
  result = objc_msgSendSuper2(&v35, sel_initWithFrame_, 0.0, 0.0, v9, v9);
  if (a3)
  {
    v11 = result;
    v12 = result;
    v13 = [v12 layer];
    LODWORD(v14) = 1045220557;
    [v13 setShadowOpacity_];

    v15 = [v12 layer];
    [v15 setShadowOffset_];

    v16 = [v12 layer];
    v17 = [objc_opt_self() mainScreen];
    [v17 scale];
    v19 = v18;

    [v16 setShadowRadius_];
    if (one-time initialization token for resizeHandleInset != -1)
    {
      swift_once();
    }

    v20 = *&static UIConstants.resizeHandleInset;
    if (one-time initialization token for resizeHandleEdgeWidth != -1)
    {
      swift_once();
    }

    v21 = v20 + *&static UIConstants.resizeHandleEdgeWidth * -0.5;
    v22 = [v12 layer];
    v23 = v12;
    [v23 bounds];
    v38 = CGRectInset(v37, v21, v21);
    v24 = [objc_opt_self() bezierPathWithOvalInRect_];
    v25 = [v24 CGPath];

    [v22 setShadowPath_];
    [v23 setIsAccessibilityElement_];
    v26 = MEMORY[0x1DA6CCED0](0xD00000000000002DLL, 0x80000001D4085EB0);
    [v23 setAccessibilityIdentifier_];

    v27 = CanvasElementResizeHandle.accessibilityLabel()();
    if (v28)
    {
      v29 = MEMORY[0x1DA6CCED0](v27);
    }

    else
    {
      v29 = 0;
    }

    [v23 setAccessibilityLabel_];

    v30 = OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_dragGestureRecognizer;
    v31 = *&v23[OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_dragGestureRecognizer];
    v32 = v23;
    [v31 addTarget:v32 action:sel_handleDidDrag_];
    [v32 addGestureRecognizer_];
    v33 = [objc_allocWithZone(MEMORY[0x1E69DCDB0]) initWithDelegate_];

    [v32 addInteraction_];
    v34 = [objc_allocWithZone(MEMORY[0x1E69DCEC8]) initWithDelegate_];
    [v32 addInteraction_];

    return v11;
  }

  return result;
}

BOOL ControlHandleView.needsRotation.getter()
{
  v0 = ControlHandleView.pointerAccessories()();
  if (v0 >> 62)
  {
    v1 = __CocoaSet.count.getter();
  }

  else
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 < 4;
}

uint64_t ControlHandleView.pointerAccessories()()
{
  v1 = type metadata accessor for UIPointerAccessory.Position();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC8PaperKit17ControlHandleView_controlPoint);
  switch(v5)
  {
    case 8:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1D405B640;
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIPointerAccessory);
      static UIPointerAccessory.Position.bottomLeft.getter();
      v26 = static UIPointerAccessory.arrow(_:)();
      v25 = *(v2 + 8);
      v25(v4, v1);
      *(v23 + 32) = v26;
      static UIPointerAccessory.Position.topRight.getter();
      goto LABEL_21;
    case 5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1D405B640;
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIPointerAccessory);
      static UIPointerAccessory.Position.left.getter();
      v24 = static UIPointerAccessory.arrow(_:)();
      v25 = *(v2 + 8);
      v25(v4, v1);
      *(v23 + 32) = v24;
      static UIPointerAccessory.Position.right.getter();
LABEL_21:
      v27 = static UIPointerAccessory.arrow(_:)();
      v25(v4, v1);
      result = v23;
      *(v23 + 40) = v27;
      return result;
    case 4:
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v7 = Strong;
        v41 = 3;
        v8 = *MEMORY[0x1E69E7D40] & *Strong;
        v42[2] = 0;
        v42[3] = 0x3FF0000000000000;
        v42[0] = 0x3FF0000000000000;
        v42[1] = 0;
        v42[4] = 0;
        v42[5] = 0;
        v9 = (*(v8 + 336))(&v41, v42, 0, 1);
        v11 = v10;
        v43.origin.x = 0.0;
        v43.origin.y = 0.0;
        v43.size.width = 1.0;
        v43.size.height = 1.0;
        MinX = CGRectGetMinX(v43);
        v44.origin.x = 0.0;
        v44.origin.y = 0.0;
        v44.size.width = 1.0;
        v44.size.height = 1.0;
        MaxX = CGRectGetMaxX(v44);
        if (MaxX >= v9)
        {
          MaxX = v9;
        }

        if (MinX <= MaxX)
        {
          MinX = MaxX;
        }

        v45.origin.x = 0.0;
        v45.origin.y = 0.0;
        v45.size.width = 1.0;
        v45.size.height = 1.0;
        MinY = CGRectGetMinY(v45);
        v46.origin.x = 0.0;
        v46.origin.y = 0.0;
        v46.size.width = 1.0;
        v46.size.height = 1.0;
        MaxY = CGRectGetMaxY(v46);
        if (MaxY >= v11)
        {
          MaxY = v11;
        }

        if (MinY > MaxY)
        {
          MaxY = MinY;
        }

        v16 = round(MinX + -0.5 + MinX + -0.5) * 0.5;
        v17 = round(MaxY + -0.5 + MaxY + -0.5) * 0.5;
        if (v16 == -0.5 && v17 == 0.0 || v16 == 0.5 && v17 == 0.0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_1D405B640;
          type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIPointerAccessory);
          static UIPointerAccessory.Position.top.getter();
          v19 = static UIPointerAccessory.arrow(_:)();
          v20 = *(v2 + 8);
          v20(v4, v1);
          *(v18 + 32) = v19;
          static UIPointerAccessory.Position.bottom.getter();
LABEL_18:
          v21 = static UIPointerAccessory.arrow(_:)();
          v20(v4, v1);
          *(v18 + 40) = v21;

          return v18;
        }

        if (v16 == 0.0 && (v17 == -0.5 || v17 == 0.5))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_1D405B640;
          type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIPointerAccessory);
          static UIPointerAccessory.Position.left.getter();
          v35 = static UIPointerAccessory.arrow(_:)();
          v20 = *(v2 + 8);
          v20(v4, v1);
          *(v18 + 32) = v35;
          static UIPointerAccessory.Position.right.getter();
          goto LABEL_18;
        }

        if (v16 == -0.5 && v17 == -0.5)
        {
LABEL_36:
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_1D405B640;
          type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIPointerAccessory);
          static UIPointerAccessory.Position.bottomLeft.getter();
          v37 = static UIPointerAccessory.arrow(_:)();
          v20 = *(v2 + 8);
          v20(v4, v1);
          *(v18 + 32) = v37;
          static UIPointerAccessory.Position.topRight.getter();
          goto LABEL_18;
        }

        if (v16 == 0.5)
        {
          if (v17 == 0.5)
          {
            goto LABEL_36;
          }

          if (v17 == -0.5)
          {
LABEL_44:
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
            v18 = swift_allocObject();
            *(v18 + 16) = xmmword_1D405B640;
            type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIPointerAccessory);
            static UIPointerAccessory.Position.topLeft.getter();
            v39 = static UIPointerAccessory.arrow(_:)();
            v20 = *(v2 + 8);
            v20(v4, v1);
            *(v18 + 32) = v39;
            static UIPointerAccessory.Position.bottomRight.getter();
            goto LABEL_18;
          }
        }

        else if (v16 == -0.5 && v17 == 0.5)
        {
          goto LABEL_44;
        }
      }

      return MEMORY[0x1E69E7CC0];
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1D405B630;
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIPointerAccessory);
      static UIPointerAccessory.Position.top.getter();
      v29 = static UIPointerAccessory.arrow(_:)();
      v30 = *(v2 + 8);
      v30(v4, v1);
      *(v28 + 32) = v29;
      static UIPointerAccessory.Position.right.getter();
      v31 = static UIPointerAccessory.arrow(_:)();
      v30(v4, v1);
      *(v28 + 40) = v31;
      static UIPointerAccessory.Position.bottom.getter();
      v32 = static UIPointerAccessory.arrow(_:)();
      v30(v4, v1);
      *(v28 + 48) = v32;
      static UIPointerAccessory.Position.left.getter();
      v33 = static UIPointerAccessory.arrow(_:)();
      v30(v4, v1);
      result = v28;
      *(v28 + 56) = v33;
      break;
  }

  return result;
}