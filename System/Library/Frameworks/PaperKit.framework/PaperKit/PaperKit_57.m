uint64_t Shape.$textResizeBehavior.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for Shape(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Shape.$textResizeBehavior.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for Shape(0) + 60);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t Shape.$flags.getter()
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for Shape.$flags : Shape()
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for Shape.$flags : Shape(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for Shape(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t Shape.$flags.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for Shape(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Shape.$flags.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for Shape(0) + 64);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t (*Shape.strokeStyle.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t Shape.strokeStyle.getter(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for Shape(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMd);
  return a1(v2);
}

uint64_t key path getter for Shape.strokeStyle : Shape(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for Shape(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMd);
  return a4(v5);
}

uint64_t key path setter for Shape.$strokeStyle : Shape(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for Shape(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t Shape.$strokeStyle.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for Shape(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Shape.$strokeStyle.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for Shape(0) + 68);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t (*Shape.shadow.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t Shape.shadow.getter(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for Shape(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMd);
  return a1(v2);
}

uint64_t key path getter for Shape.shadow : Shape(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for Shape(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMd);
  return a4(v5);
}

uint64_t key path setter for Shape.$shadow : Shape(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for Shape(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t Shape.$shadow.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for Shape(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Shape.$shadow.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for Shape(0) + 72);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t Shape.auxiliaryInfo.getter()
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGMd);
  return CRRegister.wrappedValue.getter();
}

double key path getter for Shape.auxiliaryInfo : Shape@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGMd);
  CRRegister.wrappedValue.getter();
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t key path setter for Shape.auxiliaryInfo : Shape()
{
  type metadata accessor for Shape(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t Shape.auxiliaryInfo.setter()
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t (*Shape.auxiliaryInfo.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t Shape.$auxiliaryInfo.getter()
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for Shape.$auxiliaryInfo : Shape()
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for Shape.$auxiliaryInfo : Shape(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for Shape(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t Shape.$auxiliaryInfo.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for Shape(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Shape.$auxiliaryInfo.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for Shape(0) + 76);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

BOOL Shape.Partial.merge(delta:)(uint64_t a1)
{
  v2 = v1;
  v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGMd);
  v321 = *(v313 - 8);
  MEMORY[0x1EEE9AC00](v313);
  v5 = &v258 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v289 = &v258 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v258 - v9;
  v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMd);
  v320 = *(v312 - 8);
  MEMORY[0x1EEE9AC00](v312);
  v274 = &v258 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v288 = &v258 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v311 = &v258 - v15;
  v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMd);
  v319 = *(v310 - 8);
  MEMORY[0x1EEE9AC00](v310);
  v273 = &v258 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v287 = &v258 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v309 = &v258 - v20;
  v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v318 = *(v308 - 8);
  MEMORY[0x1EEE9AC00](v308);
  v272 = &v258 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v286 = &v258 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v307 = &v258 - v25;
  v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v317 = *(v306 - 8);
  MEMORY[0x1EEE9AC00](v306);
  v271 = &v258 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGSgMd);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v285 = &v258 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v305 = &v258 - v30;
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
  v316 = *(v304 - 8);
  MEMORY[0x1EEE9AC00](v304);
  v270 = &v258 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGSgMd);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v284 = &v258 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v303 = &v258 - v35;
  v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GMd);
  v315 = *(v302 - 8);
  MEMORY[0x1EEE9AC00](v302);
  v269 = &v258 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v283 = &v258 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v301 = &v258 - v40;
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
  v323 = *(v325 - 8);
  MEMORY[0x1EEE9AC00](v325);
  v268 = &v258 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v267 = &v258 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGSgMd);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v282 = &v258 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v300 = &v258 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v281 = &v258 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v299 = &v258 - v51;
  v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v314 = *(v298 - 8);
  MEMORY[0x1EEE9AC00](v298);
  v266 = &v258 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGSgMd);
  MEMORY[0x1EEE9AC00](v53 - 8);
  v280 = &v258 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v297 = &v258 - v56;
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v322 = *(v295 - 8);
  MEMORY[0x1EEE9AC00](v295);
  v263 = &v258 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v262 = &v258 - v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  MEMORY[0x1EEE9AC00](v60 - 8);
  v277 = &v258 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v291 = &v258 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v276 = &v258 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v290 = &v258 - v67;
  v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v324 = *(v326 - 1);
  MEMORY[0x1EEE9AC00](v326);
  v265 = &v258 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v69);
  v264 = &v258 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v261 = &v258 - v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v73 - 8);
  v279 = &v258 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v75);
  v296 = &v258 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v278 = &v258 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v292 = &v258 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v275 = &v258 - v82;
  MEMORY[0x1EEE9AC00](v83);
  v85 = &v258 - v84;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v87 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v294 = &v258 - v88;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v89 - 8);
  v91 = &v258 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v92);
  v94 = &v258 - v93;
  v327 = type metadata accessor for Shape.Partial(0);
  MEMORY[0x1EEE9AC00](v327);
  v96 = &v258 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s8PaperKit9ShapeTypeOWOcTm_3(v2, v96, type metadata accessor for Shape.Partial);
  v328 = a1;
  v97 = Shape.Partial.canMerge(delta:)(a1);
  _s8PaperKit9ShapeTypeOWOhTm_1(v96, type metadata accessor for Shape.Partial);
  if (v97)
  {
    v259 = v97;
    v260 = v10;
    v258 = v5;
    outlined init with copy of Date?(v2, v94, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v293 = v87;
    v98 = *(v87 + 48);
    v99 = v98(v94, 1, v86);
    outlined destroy of StocksKitCurrencyCache.Provider?(v94, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    if (v99 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v328, v2, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      outlined init with copy of Date?(v328, v91, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
      if (v98(v91, 1, v86) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v91, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
      }

      else
      {
        v100 = v293;
        v101 = v294;
        v293[4](v294, v91, v86);
        if (!v98(v2, 1, v86))
        {
          CRRegister.merge(delta:)();
        }

        (v100[1])(v101, v86);
      }
    }

    v102 = v326;
    v103 = v327;
    v104 = v327[5];
    outlined init with copy of Date?(v2 + v104, v85, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v106 = (v324 + 48);
    v105 = *(v324 + 48);
    v107 = (v105)(v85, 1, v102);
    outlined destroy of StocksKitCurrencyCache.Provider?(v85, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v108 = v103[5];
    v294 = v106;
    v293 = v105;
    if (v107 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v328 + v108, v2 + v104, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
      v109 = v295;
    }

    else
    {
      v110 = v275;
      outlined init with copy of Date?(v328 + v108, v275, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
      v111 = (v105)(v110, 1, v102);
      v109 = v295;
      if (v111 == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v110, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
      }

      else
      {
        v112 = v324;
        v113 = v261;
        (*(v324 + 32))(v261, v110, v102);
        if (!(v105)(v2 + v104, 1, v102))
        {
          CRRegister.merge(delta:)();
        }

        (*(v112 + 8))(v113, v102);
      }
    }

    v114 = v327;
    v115 = v327[6];
    v116 = v290;
    outlined init with copy of Date?(v2 + v115, v290, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    v117 = *(v322 + 48);
    v118 = v117(v116, 1, v109);
    outlined destroy of StocksKitCurrencyCache.Provider?(v116, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    v119 = v114[6];
    if (v118 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v328 + v119, v2 + v115, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    }

    else
    {
      v120 = v276;
      outlined init with copy of Date?(v328 + v119, v276, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
      if (v117(v120, 1, v109) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v120, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
      }

      else
      {
        v121 = v322;
        v122 = v262;
        (*(v322 + 32))(v262, v120, v109);
        if (!v117(v2 + v115, 1, v109))
        {
          CRRegister.merge(delta:)();
        }

        (*(v121 + 8))(v122, v109);
      }
    }

    v123 = v327;
    v124 = v327[7];
    v125 = v291;
    outlined init with copy of Date?(v2 + v124, v291, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    v126 = v117(v125, 1, v109);
    outlined destroy of StocksKitCurrencyCache.Provider?(v125, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    v127 = v123[7];
    if (v126 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v328 + v127, v2 + v124, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    }

    else
    {
      v128 = v277;
      outlined init with copy of Date?(v328 + v127, v277, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
      if (v117(v128, 1, v109) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v128, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
      }

      else
      {
        v129 = v322;
        v130 = v263;
        (*(v322 + 32))(v263, v128, v109);
        if (!v117(v2 + v124, 1, v109))
        {
          CRRegister.merge(delta:)();
        }

        (*(v129 + 8))(v130, v109);
      }
    }

    v131 = v327;
    v132 = v327[8];
    v133 = v292;
    outlined init with copy of Date?(v2 + v132, v292, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v134 = v326;
    v135 = v293;
    v136 = (v293)(v133, 1, v326);
    outlined destroy of StocksKitCurrencyCache.Provider?(v133, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v137 = v131[8];
    if (v136 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v328 + v137, v2 + v132, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
      v138 = v314;
    }

    else
    {
      v139 = v278;
      outlined init with copy of Date?(v328 + v137, v278, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
      v140 = (v135)(v139, 1, v134);
      v138 = v314;
      if (v140 == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v139, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
      }

      else
      {
        v141 = v324;
        v142 = v264;
        (*(v324 + 32))(v264, v139, v134);
        if (!(v135)(v2 + v132, 1, v134))
        {
          CRRegister.merge(delta:)();
        }

        (*(v141 + 8))(v142, v134);
      }
    }

    v143 = v327;
    v144 = v327[9];
    v145 = v297;
    outlined init with copy of Date?(v2 + v144, v297, &_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGSgMd);
    v146 = *(v138 + 48);
    v147 = v298;
    v148 = v146(v145, 1, v298);
    outlined destroy of StocksKitCurrencyCache.Provider?(v145, &_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGSgMd);
    v149 = v143[9];
    if (v148 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v328 + v149, v2 + v144, &_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGSgMd);
    }

    else
    {
      v150 = v280;
      outlined init with copy of Date?(v328 + v149, v280, &_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGSgMd);
      if (v146(v150, 1, v147) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v150, &_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGSgMd);
      }

      else
      {
        v151 = v314;
        v152 = v266;
        (*(v314 + 32))(v266, v150, v147);
        if (!v146(v2 + v144, 1, v147))
        {
          CRRegister.merge(delta:)();
        }

        (*(v151 + 8))(v152, v147);
      }
    }

    v154 = v326;
    v153 = v327;
    v155 = v327[10];
    v156 = v296;
    outlined init with copy of Date?(v2 + v155, v296, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v157 = v293;
    v158 = (v293)(v156, 1, v154);
    outlined destroy of StocksKitCurrencyCache.Provider?(v156, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v159 = v153[10];
    if (v158 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v328 + v159, v2 + v155, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      v160 = v279;
      outlined init with copy of Date?(v328 + v159, v279, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
      if ((v157)(v160, 1, v154) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v160, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
      }

      else
      {
        v161 = v324;
        v162 = v265;
        (*(v324 + 32))(v265, v160, v154);
        if (!(v157)(v2 + v155, 1, v154))
        {
          CRRegister.merge(delta:)();
        }

        (*(v161 + 8))(v162, v154);
      }
    }

    v163 = v325;
    v164 = v327;
    v165 = v327[11];
    v166 = v299;
    outlined init with copy of Date?(v2 + v165, v299, &_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGSgMd);
    v167 = *(v323 + 48);
    v168 = v167(v166, 1, v163);
    outlined destroy of StocksKitCurrencyCache.Provider?(v166, &_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGSgMd);
    v169 = v164[11];
    if (v168 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v328 + v169, v2 + v165, &_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGSgMd);
    }

    else
    {
      v170 = v281;
      outlined init with copy of Date?(v328 + v169, v281, &_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGSgMd);
      if (v167(v170, 1, v163) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v170, &_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGSgMd);
      }

      else
      {
        v171 = v323;
        v172 = v267;
        (*(v323 + 32))(v267, v170, v163);
        if (!v167(v2 + v165, 1, v163))
        {
          CRRegister.merge(delta:)();
        }

        (*(v171 + 8))(v172, v163);
      }
    }

    v173 = v327;
    v174 = v327[12];
    v175 = v300;
    outlined init with copy of Date?(v2 + v174, v300, &_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGSgMd);
    v176 = v325;
    v177 = v167(v175, 1, v325);
    outlined destroy of StocksKitCurrencyCache.Provider?(v175, &_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGSgMd);
    v178 = v173[12];
    if (v177 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v328 + v178, v2 + v174, &_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGSgMd);
    }

    else
    {
      v179 = v282;
      outlined init with copy of Date?(v328 + v178, v282, &_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGSgMd);
      if (v167(v179, 1, v176) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v179, &_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGSgMd);
      }

      else
      {
        v180 = v323;
        v181 = v268;
        (*(v323 + 32))(v268, v179, v176);
        if (!v167(v2 + v174, 1, v176))
        {
          CRRegister.merge(delta:)();
        }

        (*(v180 + 8))(v181, v176);
      }
    }

    v182 = v327;
    v183 = v327[13];
    v184 = v301;
    outlined init with copy of Date?(v2 + v183, v301, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
    v185 = *(v315 + 48);
    v186 = v302;
    v187 = v185(v184, 1, v302);
    outlined destroy of StocksKitCurrencyCache.Provider?(v184, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
    v188 = v182[13];
    if (v187 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v328 + v188, v2 + v183, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
    }

    else
    {
      v189 = v283;
      outlined init with copy of Date?(v328 + v188, v283, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
      if (v185(v189, 1, v186) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v189, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
      }

      else
      {
        v190 = v315;
        v191 = v269;
        (*(v315 + 32))(v269, v189, v186);
        if (!v185(v2 + v183, 1, v186))
        {
          CRAttributedString.Partial.merge(delta:)();
        }

        (*(v190 + 8))(v191, v186);
      }
    }

    v192 = v327;
    v193 = v327[14];
    v194 = v303;
    outlined init with copy of Date?(v2 + v193, v303, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGSgMd);
    v195 = *(v316 + 48);
    v196 = v304;
    v197 = v195(v194, 1, v304);
    outlined destroy of StocksKitCurrencyCache.Provider?(v194, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGSgMd);
    v198 = v192[14];
    if (v197 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v328 + v198, v2 + v193, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGSgMd);
    }

    else
    {
      v199 = v284;
      outlined init with copy of Date?(v328 + v198, v284, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGSgMd);
      if (v195(v199, 1, v196) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v199, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGSgMd);
      }

      else
      {
        v200 = v316;
        v201 = v270;
        (*(v316 + 32))(v270, v199, v196);
        if (!v195(v2 + v193, 1, v196))
        {
          CRRegister.merge(delta:)();
        }

        (*(v200 + 8))(v201, v196);
      }
    }

    v202 = v327;
    v203 = v327[15];
    v204 = v305;
    outlined init with copy of Date?(v2 + v203, v305, &_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGSgMd);
    v205 = *(v317 + 48);
    v206 = v306;
    v207 = v205(v204, 1, v306);
    outlined destroy of StocksKitCurrencyCache.Provider?(v204, &_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGSgMd);
    v208 = v202[15];
    if (v207 == 1)
    {
      v209 = v328;
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v328 + v208, v2 + v203, &_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGSgMd);
      v210 = v209;
    }

    else
    {
      v211 = v328;
      v212 = v285;
      outlined init with copy of Date?(v328 + v208, v285, &_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGSgMd);
      if (v205(v212, 1, v206) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v212, &_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGSgMd);
        v210 = v211;
      }

      else
      {
        v213 = v317;
        v214 = v271;
        (*(v317 + 32))(v271, v212, v206);
        if (!v205(v2 + v203, 1, v206))
        {
          CRRegister.merge(delta:)();
        }

        (*(v213 + 8))(v214, v206);
        v210 = v328;
      }
    }

    v215 = v327;
    v216 = v327[16];
    v217 = v307;
    outlined init with copy of Date?(v2 + v216, v307, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
    v218 = v308;
    v326 = *(v318 + 48);
    v219 = (v326)(v217, 1, v308);
    outlined destroy of StocksKitCurrencyCache.Provider?(v217, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
    v220 = v215[16];
    if (v219 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v210 + v220, v2 + v216, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
    }

    else
    {
      v221 = v2;
      v222 = v286;
      outlined init with copy of Date?(v210 + v220, v286, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
      v223 = v326;
      if ((v326)(v222, 1, v218) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v222, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
      }

      else
      {
        v224 = v318;
        v225 = v272;
        (*(v318 + 32))(v272, v222, v218);
        if (!v223(v221 + v216, 1, v218))
        {
          CRRegister.merge(delta:)();
        }

        (*(v224 + 8))(v225, v218);
      }

      v2 = v221;
    }

    v226 = v327;
    v227 = v327[17];
    v228 = v309;
    outlined init with copy of Date?(v2 + v227, v309, &_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGSgMd);
    v229 = *(v319 + 48);
    v230 = v310;
    v231 = v229(v228, 1, v310);
    outlined destroy of StocksKitCurrencyCache.Provider?(v228, &_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGSgMd);
    v232 = v226[17];
    if (v231 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v328 + v232, v2 + v227, &_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGSgMd);
    }

    else
    {
      v233 = v287;
      outlined init with copy of Date?(v328 + v232, v287, &_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGSgMd);
      if (v229(v233, 1, v230) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v233, &_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGSgMd);
      }

      else
      {
        v234 = v319;
        v235 = v273;
        (*(v319 + 32))(v273, v233, v230);
        if (!v229(v2 + v227, 1, v230))
        {
          CRRegister.merge(delta:)();
        }

        (*(v234 + 8))(v235, v230);
      }
    }

    v236 = v327;
    v237 = v327[18];
    v238 = v311;
    outlined init with copy of Date?(v2 + v237, v311, &_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGSgMd);
    v239 = *(v320 + 48);
    v240 = v312;
    v241 = v239(v238, 1, v312);
    outlined destroy of StocksKitCurrencyCache.Provider?(v238, &_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGSgMd);
    v242 = v236[18];
    if (v241 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v328 + v242, v2 + v237, &_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGSgMd);
    }

    else
    {
      v243 = v288;
      outlined init with copy of Date?(v328 + v242, v288, &_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGSgMd);
      if (v239(v243, 1, v240) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v243, &_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGSgMd);
      }

      else
      {
        v244 = v320;
        v245 = v274;
        (*(v320 + 32))(v274, v243, v240);
        if (!v239(v2 + v237, 1, v240))
        {
          CRRegister.merge(delta:)();
        }

        (*(v244 + 8))(v245, v240);
      }
    }

    v246 = v321;
    v247 = v327;
    v248 = v327[19];
    v249 = v260;
    outlined init with copy of Date?(v2 + v248, v260, &_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGSgMd);
    v250 = *(v246 + 48);
    v251 = v313;
    v252 = v250(v249, 1, v313);
    outlined destroy of StocksKitCurrencyCache.Provider?(v249, &_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGSgMd);
    v253 = v247[19];
    if (v252 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v328 + v253, v2 + v248, &_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGSgMd);
    }

    else
    {
      v254 = v289;
      outlined init with copy of Date?(v328 + v253, v289, &_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGSgMd);
      if (v250(v254, 1, v251) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v254, &_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGSgMd);
      }

      else
      {
        v255 = v321;
        v256 = v258;
        (*(v321 + 32))(v258, v254, v251);
        if (!v250(v2 + v248, 1, v251))
        {
          CRRegister.merge(delta:)();
        }

        (*(v255 + 8))(v256, v251);
      }
    }

    LOBYTE(v97) = v259;
  }

  return v97;
}

BOOL Shape.Partial.canMerge(delta:)(uint64_t a1)
{
  v289 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v225 = &v224 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v237 = &v224 - v4;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGMd);
  v239 = *(v240 - 8);
  MEMORY[0x1EEE9AC00](v240);
  v238 = &v224 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v227 = &v224 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v243 = &v224 - v9;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMd);
  v244 = *(v236 - 8);
  MEMORY[0x1EEE9AC00](v236);
  v226 = &v224 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v228 = &v224 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v246 = &v224 - v14;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMd);
  v247 = *(v248 - 8);
  MEMORY[0x1EEE9AC00](v248);
  v262 = &v224 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v230 = &v224 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v250 = &v224 - v19;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v251 = *(v252 - 8);
  MEMORY[0x1EEE9AC00](v252);
  v229 = &v224 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGSgMd);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v268 = &v224 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v254 = &v224 - v24;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v255 = *(v256 - 8);
  MEMORY[0x1EEE9AC00](v256);
  v231 = &v224 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGSgMd);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v233 = &v224 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v259 = &v224 - v29;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
  v260 = *(v261 - 8);
  MEMORY[0x1EEE9AC00](v261);
  v232 = &v224 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v235 = &v224 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v266 = &v224 - v34;
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GMd);
  v267 = *(v277 - 8);
  MEMORY[0x1EEE9AC00](v277);
  v234 = &v224 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGSgMd);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v242 = &v224 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v265 = &v224 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v272 = &v224 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v271 = &v224 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
  v281 = *(v44 - 8);
  v282 = v44;
  MEMORY[0x1EEE9AC00](v44);
  v241 = &v224 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v245 = &v224 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGSgMd);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v280 = &v224 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v276 = &v224 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v274 = *(v52 - 8);
  v275 = v52;
  MEMORY[0x1EEE9AC00](v52);
  v253 = &v224 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  MEMORY[0x1EEE9AC00](v54 - 8);
  v264 = &v224 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v278 = &v224 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v269 = &v224 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v283 = &v224 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v63 = *(v62 - 8);
  v285 = v62;
  v286 = v63;
  MEMORY[0x1EEE9AC00](v62);
  v263 = &v224 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65);
  v284 = &v224 - v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v67 - 8);
  v249 = &v224 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v69);
  v270 = &v224 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v258 = &v224 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v279 = &v224 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v224 - v76;
  MEMORY[0x1EEE9AC00](v78);
  v80 = &v224 - v79;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v287 = *(v81 - 8);
  v288 = v81;
  MEMORY[0x1EEE9AC00](v81);
  v273 = &v224 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v83);
  v257 = &v224 - v84;
  MEMORY[0x1EEE9AC00](v85);
  v87 = &v224 - v86;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v88 - 8);
  v90 = &v224 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v91);
  v93 = &v224 - v92;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v95 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v97 = &v224 - v96;
  outlined init with copy of Date?(v289, v93, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  v98 = *(v95 + 48);
  if (v98(v93, 1, v94) == 1)
  {
    v90 = v93;
LABEL_5:
    v99 = v285;
    outlined destroy of StocksKitCurrencyCache.Provider?(v90, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v100 = v289;
    v101 = v287;
    goto LABEL_6;
  }

  (*(v95 + 32))(v97, v93, v94);
  outlined init with copy of Date?(v290, v90, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  if (v98(v90, 1, v94) == 1)
  {
    (*(v95 + 8))(v97, v94);
    goto LABEL_5;
  }

  v137 = CRRegister.canMerge(delta:)();
  v138 = *(v95 + 8);
  v138(v97, v94);
  v138(v90, v94);
  v100 = v289;
  v101 = v287;
  v99 = v285;
  if ((v137 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v102 = type metadata accessor for Shape.Partial(0);
  outlined init with copy of Date?(v100 + v102[5], v80, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  v103 = *(v101 + 48);
  v104 = v288;
  v105 = v103(v80, 1, v288);
  v285 = v103;
  if (v105 == 1)
  {
    v77 = v80;
LABEL_10:
    outlined destroy of StocksKitCurrencyCache.Provider?(v77, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v106 = v284;
    goto LABEL_11;
  }

  (*(v101 + 32))(v87, v80, v104);
  outlined init with copy of Date?(v290 + v102[5], v77, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  if (v103(v77, 1, v104) == 1)
  {
    (*(v101 + 8))(v87, v104);
    goto LABEL_10;
  }

  v139 = v101;
  v140 = v104;
  v141 = CRRegister.canMerge(delta:)();
  v142 = *(v139 + 8);
  v142(v87, v140);
  v142(v77, v140);
  v100 = v289;
  v106 = v284;
  if ((v141 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v107 = v283;
  outlined init with copy of Date?(v100 + v102[6], v283, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  v108 = v286;
  v109 = *(v286 + 6);
  if (v109(v107, 1, v99) == 1)
  {
LABEL_14:
    outlined destroy of StocksKitCurrencyCache.Provider?(v107, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    goto LABEL_15;
  }

  (*(v108 + 4))(v106, v107, v99);
  v107 = v269;
  outlined init with copy of Date?(v290 + v102[6], v269, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  if (v109(v107, 1, v99) == 1)
  {
    (*(v108 + 1))(v106, v99);
    goto LABEL_14;
  }

  v147 = v107;
  v148 = CRRegister.canMerge(delta:)();
  v149 = *(v108 + 1);
  v149(v106, v99);
  v149(v147, v99);
  v100 = v289;
  if ((v148 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  v110 = v278;
  outlined init with copy of Date?(v100 + v102[7], v278, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  if (v109(v110, 1, v99) == 1)
  {
    v111 = v280;
LABEL_19:
    outlined destroy of StocksKitCurrencyCache.Provider?(v110, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    v115 = v279;
    goto LABEL_20;
  }

  v112 = v100;
  v113 = v286;
  v114 = v263;
  (*(v286 + 4))(v263, v110, v99);
  v110 = v264;
  outlined init with copy of Date?(v290 + v102[7], v264, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  if (v109(v110, 1, v99) == 1)
  {
    (*(v113 + 1))(v114, v99);
    v111 = v280;
    v100 = v112;
    goto LABEL_19;
  }

  v167 = v110;
  v168 = CRRegister.canMerge(delta:)();
  v169 = *(v113 + 1);
  v169(v114, v99);
  v169(v167, v99);
  v115 = v279;
  v111 = v280;
  v100 = v112;
  if ((v168 & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  outlined init with copy of Date?(v100 + v102[8], v115, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  v116 = v288;
  v117 = v285;
  if (v285(v115, 1, v288) == 1)
  {
    v118 = v276;
LABEL_24:
    outlined destroy of StocksKitCurrencyCache.Provider?(v115, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    goto LABEL_25;
  }

  v119 = v287;
  v120 = v257;
  (*(v287 + 32))(v257, v115, v116);
  v286 = v102;
  v115 = v258;
  outlined init with copy of Date?(v290 + v102[8], v258, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  if (v117(v115, 1, v116) == 1)
  {
    (*(v119 + 8))(v120, v116);
    v118 = v276;
    v102 = v286;
    goto LABEL_24;
  }

  v170 = v116;
  v171 = CRRegister.canMerge(delta:)();
  v172 = *(v119 + 8);
  v172(v120, v170);
  v172(v115, v170);
  v100 = v289;
  v118 = v276;
  v102 = v286;
  if ((v171 & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  outlined init with copy of Date?(v100 + v102[9], v118, &_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGSgMd);
  v121 = v274;
  v122 = v275;
  v123 = *(v274 + 48);
  if (v123(v118, 1, v275) == 1)
  {
    v111 = v118;
LABEL_29:
    outlined destroy of StocksKitCurrencyCache.Provider?(v111, &_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGSgMd);
    v125 = v281;
    v126 = v273;
    v127 = v285;
    goto LABEL_30;
  }

  v124 = v253;
  (*(v121 + 32))(v253, v118, v122);
  outlined init with copy of Date?(v290 + v102[9], v111, &_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGSgMd);
  if (v123(v111, 1, v122) == 1)
  {
    (*(v121 + 8))(v124, v122);
    goto LABEL_29;
  }

  v173 = CRRegister.canMerge(delta:)();
  v174 = *(v121 + 8);
  v174(v124, v122);
  v174(v111, v122);
  v125 = v281;
  v126 = v273;
  v127 = v285;
  if ((v173 & 1) == 0)
  {
    return 0;
  }

LABEL_30:
  v128 = v270;
  outlined init with copy of Date?(v100 + v102[10], v270, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  v129 = v288;
  if (v127(v128, 1, v288) == 1)
  {
LABEL_33:
    v131 = v277;
    v132 = v272;
    outlined destroy of StocksKitCurrencyCache.Provider?(v128, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v133 = v271;
    goto LABEL_34;
  }

  v130 = v287;
  (*(v287 + 32))(v126, v128, v129);
  v128 = v249;
  outlined init with copy of Date?(v290 + v102[10], v249, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  if (v127(v128, 1, v129) == 1)
  {
    (*(v130 + 8))(v126, v129);
    goto LABEL_33;
  }

  v183 = v128;
  v184 = CRRegister.canMerge(delta:)();
  v185 = *(v130 + 8);
  v185(v126, v129);
  v185(v183, v129);
  v131 = v277;
  v133 = v271;
  v132 = v272;
  if ((v184 & 1) == 0)
  {
    return 0;
  }

LABEL_34:
  outlined init with copy of Date?(v100 + v102[11], v133, &_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGSgMd);
  v134 = v125;
  v135 = *(v125 + 48);
  v136 = v282;
  if (v135(v133, 1, v282) == 1)
  {
    v132 = v133;
LABEL_42:
    outlined destroy of StocksKitCurrencyCache.Provider?(v132, &_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGSgMd);
    goto LABEL_43;
  }

  v143 = v245;
  (*(v134 + 32))(v245, v133, v136);
  outlined init with copy of Date?(v290 + v102[11], v132, &_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGSgMd);
  if (v135(v132, 1, v136) == 1)
  {
    (*(v134 + 8))(v143, v136);
    v131 = v277;
    goto LABEL_42;
  }

  v197 = v136;
  v198 = CRRegister.canMerge(delta:)();
  v199 = *(v134 + 8);
  v199(v143, v197);
  v199(v132, v197);
  v131 = v277;
  v100 = v289;
  if ((v198 & 1) == 0)
  {
    return 0;
  }

LABEL_43:
  v144 = v265;
  outlined init with copy of Date?(v100 + v102[12], v265, &_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGSgMd);
  v145 = v282;
  if (v135(v144, 1, v282) == 1)
  {
    v146 = v268;
LABEL_49:
    outlined destroy of StocksKitCurrencyCache.Provider?(v144, &_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGSgMd);
    v154 = v267;
    v155 = v266;
    goto LABEL_50;
  }

  v150 = v131;
  v151 = v281;
  v152 = v290;
  v153 = v241;
  (*(v281 + 32))(v241, v144, v145);
  v144 = v242;
  outlined init with copy of Date?(v152 + v102[12], v242, &_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGSgMd);
  if (v135(v144, 1, v145) == 1)
  {
    (*(v151 + 8))(v153, v145);
    v146 = v268;
    v131 = v150;
    goto LABEL_49;
  }

  v200 = v144;
  v201 = CRRegister.canMerge(delta:)();
  v202 = *(v151 + 8);
  v202(v153, v145);
  v202(v200, v145);
  v146 = v268;
  v154 = v267;
  v155 = v266;
  v131 = v150;
  if ((v201 & 1) == 0)
  {
    return 0;
  }

LABEL_50:
  outlined init with copy of Date?(v100 + v102[13], v155, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
  v156 = *(v154 + 48);
  if (v156(v155, 1, v131) == 1)
  {
LABEL_53:
    outlined destroy of StocksKitCurrencyCache.Provider?(v155, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
    v158 = v260;
    v159 = v261;
    v160 = v259;
    goto LABEL_54;
  }

  v157 = v234;
  (*(v154 + 32))(v234, v155, v131);
  v155 = v235;
  outlined init with copy of Date?(v290 + v102[13], v235, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
  if (v156(v155, 1, v131) == 1)
  {
    (*(v154 + 8))(v157, v131);
    goto LABEL_53;
  }

  v210 = CRAttributedString.Partial.canMerge(delta:)();
  v211 = *(v154 + 8);
  v211(v157, v131);
  v211(v155, v131);
  v158 = v260;
  v159 = v261;
  v160 = v259;
  if ((v210 & 1) == 0)
  {
    return 0;
  }

LABEL_54:
  outlined init with copy of Date?(v100 + v102[14], v160, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGSgMd);
  v161 = *(v158 + 48);
  if (v161(v160, 1, v159) == 1)
  {
LABEL_57:
    outlined destroy of StocksKitCurrencyCache.Provider?(v160, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGSgMd);
    v163 = v255;
    v164 = v256;
    v165 = v254;
    goto LABEL_58;
  }

  v162 = v232;
  (*(v158 + 32))(v232, v160, v159);
  v160 = v233;
  outlined init with copy of Date?(v290 + v102[14], v233, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGSgMd);
  if (v161(v160, 1, v159) == 1)
  {
    (*(v158 + 8))(v162, v159);
    goto LABEL_57;
  }

  v212 = CRRegister.canMerge(delta:)();
  v213 = *(v158 + 8);
  v213(v162, v159);
  v213(v160, v159);
  v163 = v255;
  v164 = v256;
  v165 = v254;
  if ((v212 & 1) == 0)
  {
    return 0;
  }

LABEL_58:
  outlined init with copy of Date?(v100 + v102[15], v165, &_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGSgMd);
  v166 = *(v163 + 48);
  if (v166(v165, 1, v164) == 1)
  {
    v146 = v165;
LABEL_68:
    outlined destroy of StocksKitCurrencyCache.Provider?(v146, &_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGSgMd);
    v177 = v251;
    v178 = v250;
    v179 = v262;
    v180 = v252;
    goto LABEL_69;
  }

  v175 = v165;
  v176 = v231;
  (*(v163 + 32))(v231, v175, v164);
  outlined init with copy of Date?(v290 + v102[15], v146, &_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGSgMd);
  if (v166(v146, 1, v164) == 1)
  {
    (*(v163 + 8))(v176, v164);
    goto LABEL_68;
  }

  v214 = CRRegister.canMerge(delta:)();
  v215 = *(v163 + 8);
  v215(v176, v164);
  v215(v146, v164);
  v177 = v251;
  v178 = v250;
  v179 = v262;
  v180 = v252;
  if ((v214 & 1) == 0)
  {
    return 0;
  }

LABEL_69:
  outlined init with copy of Date?(v100 + v102[16], v178, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  v181 = *(v177 + 48);
  if (v181(v178, 1, v180) == 1)
  {
    v182 = v178;
LABEL_75:
    outlined destroy of StocksKitCurrencyCache.Provider?(v182, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
    v188 = v247;
    v189 = v248;
    v190 = v246;
    goto LABEL_76;
  }

  v186 = v229;
  (*(v177 + 32))(v229, v178, v180);
  v187 = v230;
  outlined init with copy of Date?(v290 + v102[16], v230, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  if (v181(v187, 1, v180) == 1)
  {
    (*(v177 + 8))(v186, v180);
    v182 = v187;
    v179 = v262;
    goto LABEL_75;
  }

  v216 = CRRegister.canMerge(delta:)();
  v217 = *(v177 + 8);
  v217(v186, v180);
  v217(v187, v180);
  v188 = v247;
  v189 = v248;
  v179 = v262;
  v190 = v246;
  if ((v216 & 1) == 0)
  {
    return 0;
  }

LABEL_76:
  outlined init with copy of Date?(v100 + v102[17], v190, &_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGSgMd);
  v191 = *(v188 + 48);
  if (v191(v190, 1, v189) == 1)
  {
LABEL_79:
    outlined destroy of StocksKitCurrencyCache.Provider?(v190, &_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGSgMd);
    v192 = v244;
    v193 = v243;
    goto LABEL_80;
  }

  (*(v188 + 32))(v179, v190, v189);
  v190 = v228;
  outlined init with copy of Date?(v290 + v102[17], v228, &_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGSgMd);
  if (v191(v190, 1, v189) == 1)
  {
    (*(v188 + 8))(v179, v189);
    goto LABEL_79;
  }

  v218 = CRRegister.canMerge(delta:)();
  v219 = *(v188 + 8);
  v219(v179, v189);
  v219(v190, v189);
  v192 = v244;
  v193 = v243;
  if ((v218 & 1) == 0)
  {
    return 0;
  }

LABEL_80:
  outlined init with copy of Date?(v100 + v102[18], v193, &_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGSgMd);
  v194 = *(v192 + 48);
  v195 = v236;
  if (v194(v193, 1, v236) == 1)
  {
    v196 = v193;
  }

  else
  {
    v203 = v226;
    (*(v192 + 32))(v226, v193, v195);
    v196 = v227;
    outlined init with copy of Date?(v290 + v102[18], v227, &_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGSgMd);
    if (v194(v196, 1, v195) != 1)
    {
      v220 = CRRegister.canMerge(delta:)();
      v221 = *(v192 + 8);
      v221(v203, v195);
      v221(v196, v195);
      v204 = v239;
      v205 = v237;
      v206 = v238;
      v207 = v240;
      if ((v220 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_89;
    }

    (*(v192 + 8))(v203, v195);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v196, &_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGSgMd);
  v204 = v239;
  v205 = v237;
  v206 = v238;
  v207 = v240;
LABEL_89:
  outlined init with copy of Date?(v289 + v102[19], v205, &_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGSgMd);
  v208 = *(v204 + 48);
  if (v208(v205, 1, v207) == 1)
  {
LABEL_92:
    outlined destroy of StocksKitCurrencyCache.Provider?(v205, &_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGSgMd);
    return 1;
  }

  (*(v204 + 32))(v206, v205, v207);
  v205 = v225;
  outlined init with copy of Date?(v290 + v102[19], v225, &_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGSgMd);
  if (v208(v205, 1, v207) == 1)
  {
    (*(v204 + 8))(v206, v207);
    goto LABEL_92;
  }

  v222 = CRRegister.canMerge(delta:)();
  v223 = *(v204 + 8);
  v223(v206, v207);
  v223(v205, v207);
  return (v222 & 1) != 0;
}

uint64_t Shape.Partial.visitReferences(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v100 = &v88 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v99 = &v88 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v88 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v97 = &v88 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v96 = &v88 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v95 = &v88 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v94 = &v88 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGSgMd);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v93 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v92 = &v88 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGSgMd);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v91 = &v88 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v88 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v88 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v90 = &v88 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v89 = &v88 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v88 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v39 = &v88 - v38;
  outlined init with copy of Date?(v2, &v88 - v38, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v41 = *(v40 - 8);
  v42 = (*(v41 + 48))(v39, 1, v40);
  v98 = v10;
  if (v42 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v39, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v41 + 8))(v39, v40);
  }

  v43 = type metadata accessor for Shape.Partial(0);
  outlined init with copy of Date?(v2 + v43[5], v36, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v45 = *(v44 - 8);
  v103 = *(v45 + 48);
  v46 = v103(v36, 1, v44);
  v101 = v45;
  v102 = a1;
  if (v46 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v36, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v45 + 8))(v36, v44);
  }

  v47 = v2;
  outlined init with copy of Date?(v2 + v43[6], v29, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v49 = *(v48 - 8);
  v50 = *(v49 + 48);
  if (v50(v29, 1, v48) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v29, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v49 + 8))(v29, v48);
  }

  v51 = v88;
  outlined init with copy of Date?(v47 + v43[7], v88, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  v52 = v50(v51, 1, v48);
  v53 = v91;
  if (v52 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v51, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v49 + 8))(v51, v48);
  }

  v54 = v97;
  v55 = v47;
  v56 = v89;
  outlined init with copy of Date?(v47 + v43[8], v89, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  if (v103(v56, 1, v44) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v56, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v101 + 8))(v56, v44);
  }

  outlined init with copy of Date?(v47 + v43[9], v53, &_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGSgMd);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v58 = *(v57 - 8);
  if ((*(v58 + 48))(v53, 1, v57) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v53, &_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v58 + 8))(v53, v57);
  }

  v59 = v90;
  outlined init with copy of Date?(v55 + v43[10], v90, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  v60 = v103(v59, 1, v44);
  v61 = v101;
  if (v60 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v59, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v61 + 8))(v59, v44);
  }

  v62 = v98;
  v63 = v92;
  outlined init with copy of Date?(v55 + v43[11], v92, &_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGSgMd);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
  v65 = *(v64 - 8);
  v66 = *(v65 + 48);
  if (v66(v63, 1, v64) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v63, &_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v65 + 8))(v63, v64);
  }

  v67 = v93;
  outlined init with copy of Date?(v55 + v43[12], v93, &_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGSgMd);
  if (v66(v67, 1, v64) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v67, &_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v65 + 8))(v67, v64);
  }

  v69 = v99;
  v68 = v100;
  v70 = v94;
  outlined init with copy of Date?(v55 + v43[13], v94, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GMd);
  v72 = *(v71 - 8);
  if ((*(v72 + 48))(v70, 1, v71) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v70, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
  }

  else
  {
    CRAttributedString.Partial.visitReferences(_:)();
    (*(v72 + 8))(v70, v71);
  }

  v73 = v95;
  outlined init with copy of Date?(v55 + v43[14], v95, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGSgMd);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
  v75 = *(v74 - 8);
  if ((*(v75 + 48))(v73, 1, v74) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v73, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v75 + 8))(v73, v74);
  }

  v76 = v96;
  outlined init with copy of Date?(v55 + v43[15], v96, &_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGSgMd);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v78 = *(v77 - 8);
  if ((*(v78 + 48))(v76, 1, v77) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v76, &_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v78 + 8))(v76, v77);
  }

  outlined init with copy of Date?(v55 + v43[16], v54, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v80 = *(v79 - 8);
  if ((*(v80 + 48))(v54, 1, v79) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v54, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v80 + 8))(v54, v79);
  }

  outlined init with copy of Date?(v55 + v43[17], v62, &_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGSgMd);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMd);
  v82 = *(v81 - 8);
  if ((*(v82 + 48))(v62, 1, v81) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v62, &_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v82 + 8))(v62, v81);
  }

  outlined init with copy of Date?(v55 + v43[18], v69, &_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGSgMd);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMd);
  v84 = *(v83 - 8);
  if ((*(v84 + 48))(v69, 1, v83) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v69, &_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v84 + 8))(v69, v83);
  }

  outlined init with copy of Date?(v55 + v43[19], v68, &_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGSgMd);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGMd);
  v86 = *(v85 - 8);
  if ((*(v86 + 48))(v68, 1, v85) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v68, &_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGSgMd);
  }

  CRRegister.visitReferences(_:)();
  return (*(v86 + 8))(v68, v85);
}

uint64_t Shape.Partial.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v214 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v153 = v144 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v157 = v144 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v191 = v144 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v197 = v144 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v198 = v144 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v174 = v144 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v175 = v144 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v180 = v144 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v181 = v144 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGSgMd);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v188 = v144 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v195 = v144 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v208 = v144 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v186 = v144 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v190 = v144 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v204 = v144 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v207 = v144 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v36 = *(v35 - 8);
  v201 = *(v36 + 56);
  v202 = v35;
  v200 = v36 + 56;
  v201(a2, 1, 1);
  v37 = type metadata accessor for Shape.Partial(0);
  v38 = v37[5];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v40 = *(v39 - 8);
  v41 = *(v40 + 56);
  v42 = v40 + 56;
  v196 = v38;
  v41(a2 + v38, 1, 1, v39);
  v43 = v37[6];
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v45 = *(v44 - 8);
  v46 = *(v45 + 56);
  v47 = v45 + 56;
  v203 = v43;
  v46(a2 + v43, 1, 1, v44);
  v189 = v37[7];
  v193 = v46;
  v194 = v44;
  v192 = v47;
  v46(a2 + v189, 1, 1, v44);
  v187 = v37[8];
  v41(a2 + v187, 1, 1, v39);
  v48 = v37[9];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v50 = *(v49 - 8);
  v51 = *(v50 + 56);
  v185 = v48;
  v184 = v49;
  v183 = v51;
  v182 = v50 + 56;
  (v51)(a2 + v48, 1, 1);
  v205 = v37[10];
  v209 = v39;
  v210 = v41;
  v199 = v42;
  v41(a2 + v205, 1, 1, v39);
  v52 = v37[11];
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
  v54 = *(v53 - 8);
  v55 = *(v54 + 56);
  v56 = v54 + 56;
  v176 = v52;
  v55(a2 + v52, 1, 1, v53);
  v173 = v37[12];
  v179 = v53;
  v178 = v55;
  v177 = v56;
  v55(a2 + v173, 1, 1, v53);
  v57 = v37[13];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GMd);
  v59 = *(v58 - 8);
  v60 = *(v59 + 56);
  v170 = v57;
  v169 = v58;
  v168 = v60;
  v167 = v59 + 56;
  (v60)(a2 + v57, 1, 1);
  v61 = v37[14];
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
  v63 = *(v62 - 8);
  v64 = *(v63 + 56);
  v211 = v61;
  v165 = v62;
  v164 = v64;
  v163 = v63 + 56;
  (v64)(a2 + v61, 1, 1);
  v65 = v37[15];
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v67 = *(v66 - 8);
  v68 = *(v67 + 56);
  v161 = v65;
  v160 = v66;
  v159 = v68;
  v158 = v67 + 56;
  (v68)(a2 + v65, 1, 1);
  v69 = v37[16];
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v71 = *(v70 - 8);
  v72 = *(v71 + 56);
  v166 = v69;
  v156 = v70;
  v155 = v72;
  v154 = v71 + 56;
  (v72)(a2 + v69, 1, 1);
  v73 = v37[17];
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMd);
  v75 = *(v74 - 8);
  v76 = *(v75 + 56);
  v162 = v73;
  v172 = v76;
  v171 = v75 + 56;
  v76(a2 + v73, 1, 1, v74);
  v77 = v37[18];
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMd);
  v79 = *(v78 - 8);
  v80 = *(v79 + 56);
  v81 = v79 + 56;
  v152 = v77;
  v82 = a2;
  v151 = v80;
  v80(a2 + v77, 1, 1, v78);
  v83 = v37[19];
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGMd);
  v85 = *(v84 - 8);
  v86 = *(v85 + 56);
  v87 = v85 + 56;
  v213 = v82;
  v86(v82 + v83, 1, 1, v84);
  v88 = v212;
  v89 = dispatch thunk of CRDecoder.keyedContainer()();
  if (v88)
  {

    v90 = v213;
    return _s8PaperKit9ShapeTypeOWOhTm_1(v90, type metadata accessor for Shape.Partial);
  }

  v91 = v208;
  v150 = v74;
  v148 = v81;
  v149 = v78;
  v144[1] = v87;
  v145 = v86;
  v146 = v84;
  v147 = v83;
  v206 = 0;
  v212 = v89;
  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    type metadata accessor for CGRect(0);
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_13(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
    v92 = v206;
    v93 = v207;
    CRRegister.init(from:)();
    v90 = v213;
    v94 = v210;
    v95 = v211;
    v96 = v209;
    if (v92)
    {
      goto LABEL_51;
    }

    v97 = v91;
    v206 = 0;
    (v201)(v93, 0, 1, v202);
    outlined assign with take of UUID?(v93, v90, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    v90 = v213;
    v94 = v210;
    v95 = v211;
    v96 = v209;
    v97 = v91;
  }

  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v98 = v204;
    v99 = v206;
    CRRegister.init(from:)();
    if (v99)
    {
      goto LABEL_51;
    }

    v206 = 0;
    v94(v98, 0, 1, v96);
    outlined assign with take of UUID?(v98, v90 + v196, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  }

  v100 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v101 = v205;
  v102 = v203;
  if (v100)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
    lazy protocol witness table accessor for type Color? and conformance <A> A?();
    v103 = v206;
    CRRegister.init(from:)();
    if (v103)
    {
      goto LABEL_51;
    }

    v206 = 0;
    v193(v97, 0, 1, v194);
    outlined assign with take of UUID?(v97, v90 + v102, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    v95 = v211;
  }

  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
    lazy protocol witness table accessor for type Color? and conformance <A> A?();
    v104 = v195;
    v105 = v206;
    CRRegister.init(from:)();
    if (v105)
    {
      goto LABEL_51;
    }

    v206 = 0;
    v193(v104, 0, 1, v194);
    outlined assign with take of UUID?(v104, v90 + v189, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    v95 = v211;
  }

  v106 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v107 = v191;
  v109 = v197;
  v108 = v198;
  if (v106)
  {
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v110 = v190;
    v111 = v206;
    CRRegister.init(from:)();
    if (v111)
    {
      goto LABEL_51;
    }

    v206 = 0;
    v210(v110, 0, 1, v96);
    outlined assign with take of UUID?(v110, v90 + v187, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v101 = v205;
  }

  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    type metadata accessor for ShapeType(0);
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_13(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, type metadata accessor for ShapeType);
    v112 = v188;
    v113 = v206;
    CRRegister.init(from:)();
    if (v113)
    {
      goto LABEL_51;
    }

    v206 = 0;
    v183(v112, 0, 1, v184);
    outlined assign with take of UUID?(v112, v90 + v185, &_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGSgMd);
    v108 = v198;
    v96 = v209;
    v101 = v205;
  }

  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    v114 = v107;
    v115 = v108;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v116 = v186;
    v117 = v206;
    CRRegister.init(from:)();
    if (v117)
    {
      goto LABEL_51;
    }

    v206 = 0;
    v210(v116, 0, 1, v96);
    outlined assign with take of UUID?(v116, v90 + v101, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v108 = v115;
    v107 = v114;
    v109 = v197;
  }

  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
    v118 = v181;
    v119 = v206;
    CRRegister.init(from:)();
    if (v119)
    {
      goto LABEL_51;
    }

    v206 = 0;
    v178(v118, 0, 1, v179);
    outlined assign with take of UUID?(v118, v90 + v176, &_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGSgMd);
    v109 = v197;
    v108 = v198;
    v95 = v211;
  }

  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
    v120 = v180;
    v121 = v206;
    CRRegister.init(from:)();
    if (v121)
    {
      goto LABEL_51;
    }

    v206 = 0;
    v178(v120, 0, 1, v179);
    outlined assign with take of UUID?(v120, v90 + v173, &_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGSgMd);
    v109 = v197;
    v108 = v198;
    v95 = v211;
  }

  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKeyPath:)())
  {
    lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
    v122 = v175;
    v123 = v206;
    CRAttributedString.Partial.init(from:)();
    if (v123)
    {
      goto LABEL_51;
    }

    v206 = 0;
    v168(v122, 0, 1, v169);
    outlined assign with take of UUID?(v122, v90 + v170, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
    v95 = v211;
  }

  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKeyPath:)())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
    v124 = v206;
    CRRegister.init(from:)();
    if (v124)
    {
      goto LABEL_51;
    }

    v125 = v109;
    v206 = 0;
    v126 = v174;
    v164(v174, 0, 1, v165);
    outlined assign with take of UUID?(v126, v90 + v95, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGSgMd);
    v108 = v198;
  }

  else
  {
    v125 = v109;
  }

  v127 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKeyPath:)();
  v128 = v172;
  if (v127)
  {
    lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
    v129 = v206;
    CRRegister.init(from:)();
    if (v129)
    {
      goto LABEL_51;
    }

    v206 = 0;
    v159(v108, 0, 1, v160);
    outlined assign with take of UUID?(v108, v90 + v161, &_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGSgMd);
  }

  v130 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKeyPath:)();
  v131 = v166;
  if (v130)
  {
    lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
    v132 = v206;
    CRRegister.init(from:)();
    if (v132)
    {
      goto LABEL_51;
    }

    v133 = v107;
    v206 = 0;
    v155(v125, 0, 1, v156);
    outlined assign with take of UUID?(v125, v90 + v131, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  }

  else
  {
    v133 = v107;
  }

  v134 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKeyPath:)();
  v135 = v162;
  v136 = v150;
  if (!v134)
  {
    goto LABEL_49;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd);
  lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
  v137 = v206;
  CRRegister.init(from:)();
  if (v137)
  {
LABEL_51:

    return _s8PaperKit9ShapeTypeOWOhTm_1(v90, type metadata accessor for Shape.Partial);
  }

  v206 = 0;
  v128(v133, 0, 1, v136);
  outlined assign with take of UUID?(v133, v90 + v135, &_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGSgMd);
LABEL_49:
  v138 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKeyPath:)();
  v139 = v157;
  if (v138)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd);
    lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
    v140 = v206;
    CRRegister.init(from:)();
    if (v140)
    {
      goto LABEL_51;
    }

    v206 = 0;
    v151(v139, 0, 1, v149);
    outlined assign with take of UUID?(v139, v90 + v152, &_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGSgMd);
  }

  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKeyPath:)())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
    lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
    v142 = v153;
    v143 = v206;
    CRRegister.init(from:)();

    if (v143)
    {
      return _s8PaperKit9ShapeTypeOWOhTm_1(v90, type metadata accessor for Shape.Partial);
    }

    v145(v142, 0, 1, v146);
    return outlined assign with take of UUID?(v142, v90 + v147, &_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGSgMd);
  }

  else
  {
  }
}

uint64_t Shape.Partial.encode(to:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v157 = &v149 - v1;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGMd);
  v183 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v155 = &v149 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v160 = &v149 - v4;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMd);
  v168 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v156 = &v149 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v163 = &v149 - v7;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMd);
  v164 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v159 = &v149 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v167 = &v149 - v10;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v172 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v162 = &v149 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v189 = &v149 - v13;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v170 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v166 = &v149 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v182 = &v149 - v16;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
  v175 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v169 = &v149 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v188 = &v149 - v19;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GMd);
  v177 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v173 = &v149 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGSgMd);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v180 = &v149 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v187 = &v149 - v24;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
  v185 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v176 = &v149 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v179 = &v149 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGSgMd);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v191 = &v149 - v29;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v192 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v184 = &v149 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v197 = &v149 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v199 = &v149 - v34;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v198 = *(v202 - 8);
  MEMORY[0x1EEE9AC00](v202);
  v193 = &v149 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v195 = &v149 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v186 = &v149 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v194 = &v149 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v44 = (&v149 - v43);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v200 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v149 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v149 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v149 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v54 - 8);
  v56 = &v149 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v201 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v149 - v58;
  v60 = v203;
  result = dispatch thunk of CREncoder.keyedContainer()();
  if (!v60)
  {
    v152 = v53;
    v153 = v44;
    v151 = v50;
    v62 = v202;
    v150 = v47;
    v154 = v45;
    v203 = 0;
    outlined init with copy of Date?(v204, v56, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v63 = v201;
    if ((*(v201 + 48))(v56, 1, v57) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v56, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      (*(v63 + 32))(v59, v56, v57);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
      v64 = v203;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      v203 = v64;
      if (v64)
      {
        (*(v63 + 8))(v59, v57);
      }

      (*(v63 + 8))(v59, v57);
    }

    v201 = type metadata accessor for Shape.Partial(0);
    v65 = v153;
    outlined init with copy of Date?(v204 + *(v201 + 20), v153, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v66 = v200;
    v67 = *(v200 + 48);
    v68 = v154;
    v69 = v67(v65, 1, v154);
    v70 = v199;
    if (v69 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v65, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      v71 = v152;
      (*(v66 + 32))();
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGFloat> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
      v72 = v203;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      v203 = v72;
      if (v72)
      {
        (*(v66 + 8))(v71, v68);
      }

      (*(v66 + 8))(v71, v68);
    }

    outlined init with copy of Date?(v204 + *(v201 + 24), v70, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    v73 = v198;
    v74 = *(v198 + 48);
    v75 = v62;
    if (v74(v70, 1, v62) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v70, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
      v76 = v197;
    }

    else
    {
      v153 = v67;
      v77 = v195;
      (*(v73 + 32))(v195, v70, v62);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Color?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
      v78 = v203;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      v203 = v78;
      v76 = v197;
      if (v78)
      {
        (*(v73 + 8))(v77, v75);
      }

      (*(v73 + 8))(v77, v75);
      v67 = v153;
    }

    outlined init with copy of Date?(v204 + *(v201 + 28), v76, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    if (v74(v76, 1, v75) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v76, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
      v79 = v196;
      v80 = v154;
    }

    else
    {
      v81 = v193;
      (*(v73 + 32))(v193, v76, v75);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Color?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
      v82 = v203;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      v203 = v82;
      v79 = v196;
      v80 = v154;
      if (v82)
      {
        (*(v73 + 8))(v81, v75);
      }

      (*(v73 + 8))(v81, v75);
    }

    v83 = v194;
    outlined init with copy of Date?(v204 + *(v201 + 32), v194, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    if (v67(v83, 1, v80) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v83, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      v84 = v200;
      v85 = v151;
      (*(v200 + 32))();
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGFloat> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
      v86 = v203;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      v203 = v86;
      if (v86)
      {
        goto LABEL_35;
      }

      (*(v84 + 8))(v85, v80);
    }

    v87 = v191;
    outlined init with copy of Date?(v204 + *(v201 + 36), v191, &_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGSgMd);
    v88 = v192;
    if ((*(v192 + 48))(v87, 1, v79) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v87, &_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGSgMd);
    }

    else
    {
      v89 = v87;
      v90 = v184;
      (*(v88 + 32))(v184, v89, v79);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<ShapeType> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
      v91 = v203;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      v203 = v91;
      if (v91)
      {
        (*(v88 + 8))(v90, v79);
      }

      (*(v88 + 8))(v90, v79);
    }

    v92 = v186;
    outlined init with copy of Date?(v204 + *(v201 + 40), v186, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v80 = v154;
    if (v67(v92, 1, v154) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v92, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
      v93 = v188;
      v94 = v189;
      v95 = v187;
LABEL_37:
      outlined init with copy of Date?(v204 + *(v201 + 44), v95, &_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGSgMd);
      v97 = v185;
      v98 = *(v185 + 48);
      v99 = v190;
      if (v98(v95, 1, v190) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v95, &_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGSgMd);
      }

      else
      {
        v100 = v95;
        v101 = v179;
        (*(v97 + 32))(v179, v100, v99);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CRExtensible<LineEnd>> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
        v102 = v203;
        dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
        v203 = v102;
        if (v102)
        {
          (*(v97 + 8))(v101, v99);
        }

        (*(v97 + 8))(v101, v99);
      }

      v103 = v180;
      outlined init with copy of Date?(v204 + *(v201 + 48), v180, &_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGSgMd);
      v104 = v190;
      if (v98(v103, 1, v190) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v103, &_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGSgMd);
        v105 = v183;
        v106 = v182;
        v107 = v181;
      }

      else
      {
        v108 = v185;
        v109 = v176;
        (*(v185 + 32))(v176, v103, v104);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CRExtensible<LineEnd>> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
        v110 = v203;
        dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
        v105 = v183;
        v203 = v110;
        v106 = v182;
        v107 = v181;
        if (v110)
        {
          (*(v108 + 8))(v109, v104);
        }

        (*(v108 + 8))(v109, v104);
      }

      outlined init with copy of Date?(v204 + *(v201 + 52), v93, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
      v111 = v177;
      v112 = (*(v177 + 48))(v93, 1, v107);
      v113 = v178;
      if (v112 == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v93, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
      }

      else
      {
        v114 = v105;
        v115 = v173;
        (*(v111 + 32))(v173, v93, v107);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Partial and conformance CRAttributedString<A>.Partial, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GMd);
        v116 = v203;
        dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKeyPath:)();
        v203 = v116;
        if (v116)
        {
          (*(v111 + 8))(v115, v107);
        }

        (*(v111 + 8))(v115, v107);
        v105 = v114;
      }

      outlined init with copy of Date?(v204 + *(v201 + 56), v106, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGSgMd);
      v117 = v175;
      v118 = v174;
      if ((*(v175 + 48))(v106, 1, v174) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v106, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGSgMd);
      }

      else
      {
        v119 = v106;
        v120 = v169;
        (*(v117 + 32))(v169, v119, v118);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CRAttributedString<TextAttributeScope>.Attributes?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
        v121 = v203;
        dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKeyPath:)();
        v203 = v121;
        if (v121)
        {
          (*(v117 + 8))(v120, v118);
        }

        (*(v117 + 8))(v120, v118);
      }

      outlined init with copy of Date?(v204 + *(v201 + 60), v94, &_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGSgMd);
      v122 = v170;
      v123 = v171;
      v124 = (*(v170 + 48))(v94, 1, v171);
      v125 = v172;
      if (v124 == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v94, &_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGSgMd);
      }

      else
      {
        v126 = v105;
        v127 = v166;
        (*(v122 + 32))(v166, v94, v123);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CanvasElementAutoresizeBehavior> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
        v128 = v203;
        dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKeyPath:)();
        v203 = v128;
        if (v128)
        {
          (*(v122 + 8))(v127, v123);
        }

        (*(v122 + 8))(v127, v123);
        v105 = v126;
      }

      v129 = v167;
      outlined init with copy of Date?(v204 + *(v201 + 64), v167, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
      v130 = (*(v125 + 48))(v129, 1, v113);
      v131 = v168;
      if (v130 == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v129, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
      }

      else
      {
        v132 = *(v125 + 32);
        v133 = v129;
        v134 = v125;
        v135 = v162;
        v132(v162, v133, v113);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CanvasElementFlags> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
        v136 = v203;
        dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKeyPath:)();
        v203 = v136;
        if (v136)
        {
          (*(v134 + 8))(v135, v113);
        }

        (*(v134 + 8))(v135, v113);
      }

      v137 = v163;
      outlined init with copy of Date?(v204 + *(v201 + 68), v163, &_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGSgMd);
      v138 = v164;
      v139 = v165;
      if ((*(v164 + 48))(v137, 1, v165) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v137, &_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGSgMd);
      }

      else
      {
        v140 = v159;
        (*(v138 + 32))(v159, v137, v139);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<StrokeStyle?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMd);
        v141 = v203;
        dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKeyPath:)();
        (*(v138 + 8))(v140, v139);
        v203 = v141;
        if (v141)
        {
        }
      }

      v142 = v160;
      outlined init with copy of Date?(v204 + *(v201 + 72), v160, &_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGSgMd);
      v143 = v161;
      if ((*(v131 + 48))(v142, 1, v161) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v142, &_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGSgMd);
        goto LABEL_76;
      }

      v144 = v156;
      (*(v131 + 32))(v156, v142, v143);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Shadow?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMd);
      v145 = v203;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKeyPath:)();
      (*(v131 + 8))(v144, v143);
      v203 = v145;
      if (!v145)
      {
LABEL_76:
        v146 = v157;
        outlined init with copy of Date?(v204 + *(v201 + 76), v157, &_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGSgMd);
        v147 = v158;
        if ((*(v105 + 48))(v146, 1, v158) == 1)
        {

          return outlined destroy of StocksKitCurrencyCache.Provider?(v146, &_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGSgMd);
        }

        else
        {
          v148 = v155;
          (*(v105 + 32))(v155, v146, v147);
          lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<ShapeAuxiliaryInfo?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGMd);
          dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKeyPath:)();
          (*(v105 + 8))(v148, v147);
        }
      }
    }

    v84 = v200;
    v85 = v150;
    (*(v200 + 32))();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGFloat> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
    v96 = v203;
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    v203 = v96;
    v93 = v188;
    v94 = v189;
    v95 = v187;
    if (!v96)
    {
      (*(v84 + 8))(v85, v80);
      goto LABEL_37;
    }

LABEL_35:
    (*(v84 + 8))(v85, v80);
  }

  return result;
}

uint64_t Shape.minAppFormatVersion.getter()
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v0 = CRAttributedString.attributedString.getter();
  v1 = [v0 string];

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  if (v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 == 0xE000000000000000;
  }

  if (v5)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 4;
    }
  }
}

void (*Shape.rotation.modify(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  *(v3 + 32) = *(type metadata accessor for Shape(0) + 20);
  *(v4 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  CRRegister.value.getter();
  return Shape.rotation.modify;
}

void Shape.rotation.modify(double **a1)
{
  v1 = *a1;
  v2 = **a1;
  CRRegister.value.getter();
  if (vabdd_f64(v1[1], v2) > 0.01)
  {
    v1[1] = v2;
    CRRegister.value.setter();
  }

  free(v1);
}

uint64_t Shape.shared(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v10[15] = 5;
  (*(v7 + 16))(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v5);
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  SharedTagged_10.init(_:id:)();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t Shape.thumbnail.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CRAsset();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t Shape.renderedLineCap.getter()
{
  v0 = type metadata accessor for StrokeStyle(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMd);
  CRRegister.wrappedValue.getter();
  if ((*(v1 + 48))(v6, 1, v0) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s8PaperKit11StrokeStyleOSgMd);
    return 0;
  }

  else
  {
    _s8PaperKit9ShapeTypeOWOcTm_3(v6, v3, type metadata accessor for StrokeStyle);
    if (swift_getEnumCaseMultiPayload())
    {
      _s8PaperKit9ShapeTypeOWOhTm_1(v3, type metadata accessor for StrokeStyle);
      v7 = 0;
    }

    else
    {
      v7 = *(v3 + 4);
    }

    _s8PaperKit9ShapeTypeOWOhTm_1(v6, type metadata accessor for StrokeStyle);
  }

  return v7;
}

uint64_t Shape.render<A>(in:id:capsule:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return (specialized Shape.render<A>(in:id:capsule:options:))(a1, a2, a4, a5, a6);
}

double closure #1 in Shape.renderSync<A>(in:id:capsule:options:)@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  result = v3 * v5;
  *a2 = v3 * v5;
  return result;
}

__C::CGRect __swiftcall Shape.renderFrame(in:)(__C::CGRect_optional *in)
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  CRRegister.wrappedValue.getter();
  if (LOBYTE(t1.a))
  {
    v3 = _s8PaperKit21ShapeTextBoxRenderingC20unrotatedRenderFrame_2inSo6CGRectVx_AGSgt9Coherence4CRDTRzAA0cdE0RzlFZAA0C0V_Tt1g5(v1, in);
    v5 = v4;
    v7 = v6;
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
    CRRegister.value.getter();
    v82 = v5 - v9 * 0.0;
    v84 = v3 - v7 * 0.0;
    v92.origin.x = v3;
    v92.origin.y = v5;
    v92.size.width = v7;
    v78 = v7;
    v80 = v9;
    v92.size.height = v9;
    MidX = CGRectGetMidX(v92);
    v93.origin.x = v3;
    v93.origin.y = v5;
    v93.size.width = v7;
    v93.size.height = v9;
    MidY = CGRectGetMidY(v93);
    CGAffineTransformMakeRotation(&t1, t1.a);
    tx = t1.tx;
    ty = t1.ty;
    v69 = *&t1.c;
    v73 = *&t1.a;
    CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
    a = t1.a;
    b = t1.b;
    c = t1.c;
    d = t1.d;
    v18 = t1.tx;
    v19 = t1.ty;
    *&t2.a = v73;
    *&t2.c = v69;
    t2.tx = tx;
    t2.ty = ty;
    CGAffineTransformConcat(&v90, &t1, &t2);
    v20 = v90.tx;
    v21 = v90.ty;
    v70 = *&v90.c;
    v74 = *&v90.a;
    t1.a = a;
    t1.b = b;
    t1.c = c;
    t1.d = d;
    t1.tx = v18;
    t1.ty = v19;
    CGAffineTransformInvert(&t2, &t1);
    *&t1.a = v74;
    *&t1.c = v70;
    t1.tx = v20;
    t1.ty = v21;
    CGAffineTransformConcat(&v90, &t1, &t2);
    t1.a = v78;
    t1.b = 0.0;
    t1.c = 0.0;
    t1.d = v80;
    t1.tx = v84;
    t1.ty = v82;
    t2 = v90;
    CGAffineTransformConcat(&v90, &t1, &t2);
    t1 = v90;
    v94.origin.x = 0.0;
    v94.origin.y = 0.0;
    v94.size.width = 1.0;
    v94.size.height = 1.0;
    v95 = CGRectApplyAffineTransform(v94, &t1);
    y = v95.origin.y;
    x = v95.origin.x;
    height = v95.size.height;
    width = v95.size.width;
  }

  else
  {
    y = *(MEMORY[0x1E695F050] + 8);
    x = *MEMORY[0x1E695F050];
    height = *(MEMORY[0x1E695F050] + 24);
    width = *(MEMORY[0x1E695F050] + 16);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  v22 = t1.a;
  v23 = t1.b;
  v25 = t1.c;
  v24 = t1.d;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  CRRegister.value.getter();
  v26 = t1.a;
  v75 = v22 - v25 * 0.0;
  v67 = v24;
  v71 = v23 - v24 * 0.0;
  v96.origin.x = v22;
  v96.origin.y = v23;
  v96.size.width = v25;
  v65 = v25;
  v96.size.height = v24;
  v27 = CGRectGetMidX(v96);
  v97.origin.x = v22;
  v97.origin.y = v23;
  v97.size.width = v25;
  v97.size.height = v24;
  v28 = CGRectGetMidY(v97);
  CGAffineTransformMakeRotation(&t1, v26);
  v29 = t1.tx;
  v30 = t1.ty;
  v61 = *&t1.c;
  v63 = *&t1.a;
  CGAffineTransformMakeTranslation(&t1, -v27, -v28);
  v31 = t1.a;
  v32 = t1.b;
  v33 = t1.c;
  v34 = t1.d;
  v35 = t1.tx;
  v36 = t1.ty;
  *&t2.a = v63;
  *&t2.c = v61;
  t2.tx = v29;
  t2.ty = v30;
  CGAffineTransformConcat(&v90, &t1, &t2);
  v37 = v90.tx;
  v38 = v90.ty;
  v62 = *&v90.c;
  v64 = *&v90.a;
  t1.a = v31;
  t1.b = v32;
  t1.c = v33;
  t1.d = v34;
  t1.tx = v35;
  t1.ty = v36;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = v64;
  *&t1.c = v62;
  t1.tx = v37;
  t1.ty = v38;
  CGAffineTransformConcat(&v90, &t1, &t2);
  t1.a = v65;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = v67;
  t1.tx = v75;
  t1.ty = v71;
  CGAffineTransformConcat(&t2, &t1, &v90);
  Shape.pathAndLineEnds(in:scale:)(&t2, &t1, 1.0);
  v39 = t1.a;
  v40 = t1.b;
  v41 = t1.c;
  v76 = t1.d;
  v42 = t1.ty;
  v43 = v87;
  v68 = v88;
  v72 = t1.tx;
  v66 = v89;
  CRRegister.wrappedValue.getter();
  Shape.renderedLineCap.getter();
  t1.a = 1.0;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = 1.0;
  t1.tx = 0.0;
  t1.ty = 0.0;
  v44 = CGPathRef.copy(strokingWithWidth:lineCap:lineJoin:miterLimit:transform:)();
  PathBoundingBox = CGPathGetPathBoundingBox(v44);
  v45 = PathBoundingBox.origin.x;
  v46 = PathBoundingBox.origin.y;
  v47 = PathBoundingBox.size.width;
  v48 = PathBoundingBox.size.height;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
  CRRegister.wrappedValue.getter();
  if ((LOBYTE(v90.b) & 1) != 0 || LOBYTE(v90.a))
  {
    CRRegister.wrappedValue.getter();
    v49 = LineEnd.path(from:to:strokeWidth:)(v40, v41, v42, v43, v85);
    if (v49)
    {
      v50 = v49;
      v106 = CGPathGetPathBoundingBox(v49);
      v99.origin.x = v45;
      v99.origin.y = v46;
      v99.size.width = v47;
      v99.size.height = v48;
      v100 = CGRectUnion(v99, v106);
      v45 = v100.origin.x;
      v46 = v100.origin.y;
      v47 = v100.size.width;
      v48 = v100.size.height;
    }
  }

  CRRegister.wrappedValue.getter();
  if ((LOBYTE(v90.b) & 1) != 0 || LOBYTE(v90.a))
  {
    CRRegister.wrappedValue.getter();
    v51 = LineEnd.path(from:to:strokeWidth:)(v76, v72, v68, v66, v85);
    if (v51)
    {
      v52 = v51;
      v107 = CGPathGetPathBoundingBox(v51);
      v101.origin.x = v45;
      v101.origin.y = v46;
      v101.size.width = v47;
      v101.size.height = v48;
      v102 = CGRectUnion(v101, v107);
      v45 = v102.origin.x;
      v46 = v102.origin.y;
      v47 = v102.size.width;
      v48 = v102.size.height;
    }
  }

  v103.origin.x = v45;
  v103.origin.y = v46;
  v103.size.width = v47;
  v103.size.height = v48;
  v108.origin.y = y;
  v108.origin.x = x;
  v108.size.height = height;
  v108.size.width = width;
  v104 = CGRectUnion(v103, v108);
  v53 = v104.origin.x;
  v54 = v104.origin.y;
  v55 = v104.size.width;
  v56 = v104.size.height;

  v57 = v53;
  v58 = v54;
  v59 = v55;
  v60 = v56;
  result.size.height = v60;
  result.size.width = v59;
  result.origin.y = v58;
  result.origin.x = v57;
  return result;
}

void Shape.update<A>(use:ref:pdfAnnotation:in:capsule:options:)(unint64_t *a1, void (*a2)(char *, uint64_t, void), void *a3, __C::CGRect_optional *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v198 = a8;
  v199 = a7;
  v192 = a6;
  v197 = a5;
  v202 = a2;
  v208 = a4;
  height = a4->value.size.height;
  v187 = type metadata accessor for StrokeStyle(0);
  v185 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v183 = &v180 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v186 = &v180 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v194 = &v180 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v193 = &v180 - v18;
  v190 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v190);
  v191 = &v180 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v189 = &v180 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v188 = &v180 - v23;
  *&v24 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd));
  v205 = *(v24 - 8);
  v206 = *&v24;
  MEMORY[0x1EEE9AC00](v24);
  v195 = &v180 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v200 = &v180 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v180 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v180 - v32;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v203 = *(v204 - 8);
  MEMORY[0x1EEE9AC00](v204);
  v35 = &v180 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v180 - v37;
  v39 = type metadata accessor for Date();
  v40 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v180 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = *a1;
  type metadata accessor for CanvasElementPDFAnnotation();
  v210 = swift_dynamicCastClass();
  if (v210)
  {
    v181 = v38;
    v201 = type metadata accessor for Shape(0);
    v43 = *(v201 + 64);
    v44 = a3;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
    v209 = v9;
    v207 = v43;
    v46 = v45;
    CRRegister.wrappedValue.getter();
    if ((LOBYTE(v211.origin.x) & 0x20) == 0)
    {
      v47 = v210;
      goto LABEL_5;
    }

    v47 = v210;
    if ((LOBYTE(v211.origin.x) & 0x40) == 0)
    {
LABEL_5:
      v47[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writingAKAnnotation] = 2;
      v48 = v209;
      Shape.setAKAnnotation(on:in:)(v47, &v208->value.origin.x);
      CRRegister.wrappedValue.getter();
      v49 = v44;
      if ((LOBYTE(v211.origin.x) & 0x40) == 0)
      {
        v50 = *&v47[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation__akAnnotation];
        if (v50)
        {
          objc_opt_self();
          v51 = swift_dynamicCastObjCClass();
          v52 = v44;
          v53 = v50;
          v54 = v53;
          v55 = v51 == 0;
          if (v51)
          {
            v53 = v51;
          }

          v49 = v44;
          v56 = &selRef_drawingBounds;
          if (!v55)
          {
            v56 = &selRef_rectangle;
          }

          [v53 *v56];
          [v47 setBounds_];
        }

        else
        {
          v214 = Shape.renderFrame(in:)(v208);
          x = v214.origin.x;
          y = v214.origin.y;
          width = v214.size.width;
          v62 = v214.size.height;
          v63 = v44;
          v64 = [v47 page];
          if (v64)
          {
            v65 = v64;
            [v64 boundsForBox_];
            v67 = v66;
            v69 = v68;

            v215.origin.x = x;
            v215.origin.y = y;
            v215.size.width = width;
            v215.size.height = v62;
            MinX = CGRectGetMinX(v215);
            v216.origin.x = x;
            v216.origin.y = y;
            v216.size.width = width;
            v216.size.height = v62;
            v71 = v69 + v67 + v67 - CGRectGetMaxY(v216);
            v217.origin.x = x;
            v217.origin.y = y;
            v217.size.width = width;
            v217.size.height = v62;
            v72 = CGRectGetWidth(v217);
            v218.origin.x = x;
            v218.origin.y = y;
            v218.size.width = width;
            v218.size.height = v62;
            v62 = CGRectGetHeight(v218);
            width = v72;
            x = MinX;
            y = v71;
          }

          v219.origin.x = x;
          v219.origin.y = y;
          v219.size.width = width;
          v219.size.height = v62;
          v220 = CGRectIntegral(v219);
          [v47 setBounds_];
        }

        v48 = v209;
      }

      v73 = v49;
      Date.init()();
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v40 + 8))(v42, v39);
      [v47 setModificationDate_];

      outlined init with copy of Date?(v202, v33, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
      v75 = v203;
      v76 = v204;
      v77 = (*(v203 + 48))(v33, 1, v204);
      v182 = v46;
      if (v77 == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v33, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
        v78 = v206;
        goto LABEL_25;
      }

      v79 = v181;
      (*(v75 + 32))(v181, v33, v76);
      v80 = v196;
      v81 = v196;
      v78 = v206;
      if (v196 >> 62)
      {
        if (v196 >> 62 != 1)
        {
LABEL_24:
          (*(v75 + 8))(v79, v76);
LABEL_25:
          CRRegister.wrappedValue.getter();
          if ((LOBYTE(v211.origin.x) & 0x20) != 0)
          {

LABEL_104:
            return;
          }

          v204 = v73;
          v83 = v201;
          v84 = *(v201 + 52);
          v202 = *(v205 + 16);
          v202(v200, v48 + v84, *&v78);
          v85 = CRAttributedString.attributedString.getter();
          v86 = [v85 string];

          v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v89 = v88;

          v203 = v84;
          if (v87 || v89 != 0xE000000000000000)
          {
            v91 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v92 = v200;
            v200 = *(v205 + 8);
            (v200)(v92, *&v78);
            if ((v91 & 1) == 0)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
              CRRegister.wrappedValue.getter();
              v93 = v193;
              if (*&v211.origin.x)
              {
                v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v100 = v116;
LABEL_33:
                v101 = MEMORY[0x1DA6CCED0](v98, v100);

                [v210 setType_];

                CanvasElementPDFAnnotation.setRendered<A, B>(in:element:capsule:options:)(v208, v48, v197, v192, v199, v83, v198, &protocol witness table for Shape);
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
                CRRegister.wrappedValue.getter();
                v102 = type metadata accessor for Color(0);
                v103 = *(*(v102 - 8) + 48);
                if (v103(v93, 1, v102) == 1)
                {
                  outlined destroy of StocksKitCurrencyCache.Provider?(v93, &_s8PaperKit5ColorVSgMd);
                  v104 = 0;
                }

                else
                {
                  v104 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
                  _s8PaperKit9ShapeTypeOWOhTm_1(v93, type metadata accessor for Color);
                }

                v105 = v210;
                [v210 setInteriorColor_];

                v106 = v194;
                CRRegister.wrappedValue.getter();
                if (v103(v106, 1, v102) == 1)
                {
                  outlined destroy of StocksKitCurrencyCache.Provider?(v106, &_s8PaperKit5ColorVSgMd);
                  [v105 removeValueForAnnotationKey_];
                  [v105 setBorder_];
                  v107 = v203;
                }

                else
                {
                  v108 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
                  _s8PaperKit9ShapeTypeOWOhTm_1(v106, type metadata accessor for Color);
                  [v105 setColor_];
                  v109 = [v105 border];
                  v107 = v203;
                  if (!v109)
                  {
                    v109 = [objc_allocWithZone(MEMORY[0x1E6978020]) init];
                  }

                  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
                  CRRegister.wrappedValue.getter();
                  [v109 setLineWidth_];
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMd);
                  v110 = v186;
                  CRRegister.wrappedValue.getter();
                  if ((*(v185 + 48))(v110, 1, v187) == 1)
                  {
                    outlined destroy of StocksKitCurrencyCache.Provider?(v110, &_s8PaperKit11StrokeStyleOSgMd);
                    v111 = 0;
                  }

                  else
                  {
                    v117 = v183;
                    _s8PaperKit9ShapeTypeOWOcTm_3(v110, v183, type metadata accessor for StrokeStyle);
                    if (swift_getEnumCaseMultiPayload())
                    {
                      _s8PaperKit9ShapeTypeOWOhTm_1(v117, type metadata accessor for StrokeStyle);
                      _s8PaperKit9ShapeTypeOWOhTm_1(v110, type metadata accessor for StrokeStyle);
                      v111 = 0;
                    }

                    else
                    {
                      v118 = *(v117 + 8);
                      _s8PaperKit9ShapeTypeOWOhTm_1(v110, type metadata accessor for StrokeStyle);
                      specialized _arrayForceCast<A, B>(_:)(v118);

                      v111 = Array._bridgeToObjectiveC()().super.isa;
                    }
                  }

                  [v109 setDashPattern_];

                  v105 = v210;
                  [v210 setBorder_];
                }

                __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
                v119 = v209;
                CRRegister.wrappedValue.getter();
                v120 = CGFloat._bridgeToObjectiveC()().super.super.isa;
                v121 = MEMORY[0x1DA6CCED0](4277039, 0xE300000000000000);
                [v105 setValue:v120 forAnnotationKey:v121];

                v122 = v195;
                v123 = v206;
                v202(v195, v119 + v107, *&v206);
                v124 = CRAttributedString.attributedString.getter();
                v125 = [v124 string];

                v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v128 = v127;

                if (v126 || v128 != 0xE000000000000000)
                {
                  v129 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  (v200)(v122, *&v123);
                  v73 = v204;
                  if ((v129 & 1) == 0)
                  {
                    v130 = CRAttributedString.attributedString.getter();
                    v131 = [v130 string];

                    if (!v131)
                    {
                      v132 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v131 = MEMORY[0x1DA6CCED0](v132);
                    }

                    [v210 setContents_];

                    v133 = CRAttributedString.attributedString.getter();
                    v134 = CRAttributedString.attributedString.getter();
                    v135 = [v134 length];

                    if (__OFSUB__(v135, 1))
                    {
                      __break(1u);
                      return;
                    }

                    v136 = [v133 attributesAtIndex:v135 - 1 effectiveRange:0];

                    type metadata accessor for NSAttributedStringKey(0);
                    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_13(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
                    v137 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

                    if (*(v137 + 16) && (v138 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E69DB648]), (v139 & 1) != 0))
                    {
                      outlined init with copy of Any(*(v137 + 56) + 32 * v138, &v211);
                      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIFont);
                      if (swift_dynamicCast())
                      {
                        v140 = v213;
                      }

                      else
                      {
                        v140 = 0;
                      }
                    }

                    else
                    {
                      v140 = 0;
                    }

                    [v210 setFont_];

                    if (*(v137 + 16) && (v141 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E69DB650]), (v142 & 1) != 0))
                    {
                      outlined init with copy of Any(*(v137 + 56) + 32 * v141, &v211);
                      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIColor);
                      if (swift_dynamicCast())
                      {
                        v143 = v213;
                      }

                      else
                      {
                        v143 = 0;
                      }
                    }

                    else
                    {
                      v143 = 0;
                    }

                    [v210 setFontColor_];

                    if (*(v137 + 16) && (v144 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E69DB688]), (v145 & 1) != 0))
                    {
                      outlined init with copy of Any(*(v137 + 56) + 32 * v144, &v211);

                      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSParagraphStyle);
                      if (swift_dynamicCast())
                      {
                        v146 = v213;
                        v147 = [v213 alignment];
                        [v210 setAlignment_];
                      }
                    }

                    else
                    {
                    }
                  }
                }

                else
                {

                  (v200)(v122, *&v123);
                  v73 = v204;
                }

                v148 = Shape.isFormField.getter();
                v149 = v210;
                if (v148)
                {
                  v150 = Bool._bridgeToObjectiveC()().super.super.isa;
                  v151 = MEMORY[0x1DA6CCED0](0x46533A4C5041412FLL, 0xE900000000000046);
                  [v149 setValue:v150 forAnnotationKey:v151];
                }

                __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
                v152 = v189;
                CRRegister.wrappedValue.getter();
                v153 = v152;
                v154 = v191;
                _s8PaperKit9ShapeTypeOWObTm_0(v153, v191, type metadata accessor for ShapeType);
                if (swift_getEnumCaseMultiPayload() != 2)
                {

                  _s8PaperKit9ShapeTypeOWOhTm_1(v154, type metadata accessor for ShapeType);
LABEL_102:
                  CRRegister.wrappedValue.getter();
                  [v149 setHidden_];
                  CRRegister.wrappedValue.getter();
                  [v149 setReadOnlyAnnotation_];
                  CRRegister.wrappedValue.getter();
                  [v149 setLocked_];
                  CRRegister.wrappedValue.getter();
                  if ((LOWORD(v211.origin.x) & 0x100) != 0)
                  {
                    [v149 setShouldBurnIn_];
                  }

                  goto LABEL_104;
                }

                v155 = *v154;
                v156 = *(v154 + 8);
                v158 = *(v154 + 32);
                v157 = *(v154 + 40);
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
                CRRegister.wrappedValue.getter();
                if (LOBYTE(v211.origin.y))
                {
                  v159 = 5;
                }

                else
                {
                  v159 = 5;
                  if (LOBYTE(v211.origin.x) > 4u)
                  {
                    if (LOBYTE(v211.origin.x) > 6u)
                    {
                      if (LOBYTE(v211.origin.x) == 7)
                      {
                        v159 = 0;
                      }
                    }

                    else
                    {
                      v159 = 1;
                    }
                  }

                  else if (LOBYTE(v211.origin.x) > 2u)
                  {
                    v159 = 2;
                  }

                  else if (LOBYTE(v211.origin.x) - 1 >= 2)
                  {
LABEL_83:
                    CRRegister.wrappedValue.getter();
                    v206 = v157;
                    if (LOBYTE(v211.origin.y))
                    {
                      v160 = 5;
                    }

                    else
                    {
                      v160 = 5;
                      if (LOBYTE(v211.origin.x) > 4u)
                      {
                        if (LOBYTE(v211.origin.x) > 6u)
                        {
                          if (LOBYTE(v211.origin.x) == 7)
                          {
                            v160 = 0;
                          }
                        }

                        else
                        {
                          v160 = 1;
                        }
                      }

                      else if (LOBYTE(v211.origin.x) > 2u)
                      {
                        v160 = 2;
                      }

                      else if (LOBYTE(v211.origin.x) - 1 >= 2)
                      {
                        goto LABEL_86;
                      }
                    }

                    [v149 setEndLineStyle_];
LABEL_86:
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
                    CRRegister.wrappedValue.getter();
                    v161 = v211.origin.x;
                    v162 = v211.origin.y;
                    v163 = v211.size.width;
                    v164 = v211.size.height;
                    v165 = CGRectGetMinX(v211);
                    v221.origin.x = v161;
                    v221.origin.y = v162;
                    v221.size.width = v163;
                    v221.size.height = v164;
                    v166 = v165 + v155 * CGRectGetWidth(v221);
                    v222.origin.x = v161;
                    v222.origin.y = v162;
                    v222.size.width = v163;
                    v222.size.height = v164;
                    MinY = CGRectGetMinY(v222);
                    v223.origin.x = v161;
                    v223.origin.y = v162;
                    v223.size.width = v163;
                    v223.size.height = v164;
                    v168 = MinY + v156 * CGRectGetHeight(v223);
                    is_nil = v208->is_nil;
                    if (is_nil)
                    {
                      CRRegister.wrappedValue.getter();
                      v170 = v211.size.height;
                    }

                    else
                    {
                      v170 = height;
                    }

                    [v149 setStartPoint_];
                    CRRegister.wrappedValue.getter();
                    v171 = v211.origin.x;
                    v172 = v211.origin.y;
                    v173 = v211.size.width;
                    v174 = v211.size.height;
                    v175 = CGRectGetMinX(v211);
                    v224.origin.x = v171;
                    v224.origin.y = v172;
                    v224.size.width = v173;
                    v224.size.height = v174;
                    v176 = v175 + v158 * CGRectGetWidth(v224);
                    v225.origin.x = v171;
                    v225.origin.y = v172;
                    v225.size.width = v173;
                    v225.size.height = v174;
                    v177 = CGRectGetMinY(v225);
                    v226.origin.x = v171;
                    v226.origin.y = v172;
                    v226.size.width = v173;
                    v226.size.height = v174;
                    v178 = v177 + v206 * CGRectGetHeight(v226);
                    if (is_nil)
                    {
                      CRRegister.wrappedValue.getter();
                      v179 = v211.size.height;
                    }

                    else
                    {
                      v179 = height;
                    }

                    [v149 setEndPoint_];

                    goto LABEL_102;
                  }
                }

                [v149 setStartLineStyle_];
                goto LABEL_83;
              }

LABEL_32:
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
              v94 = v188;
              CRRegister.wrappedValue.getter();
              ShapeType.any.getter(&v211);
              _s8PaperKit9ShapeTypeOWOhTm_1(v94, type metadata accessor for ShapeType);
              v95 = v211.size.height;
              v96 = v212;
              __swift_project_boxed_opaque_existential_1(&v211, *&v211.size.height);
              v97 = (*(v96 + 56))(COERCE_CGFLOAT(*&v95), v96);
              v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v100 = v99;

              __swift_destroy_boxed_opaque_existential_0(&v211);
              goto LABEL_33;
            }
          }

          else
          {

            v90 = v200;
            v200 = *(v205 + 8);
            (v200)(v90, *&v78);
          }

          v93 = v193;
          goto LABEL_32;
        }

        v81 = (v196 & 0x3FFFFFFFFFFFFFFFLL);
      }

      outlined copy of PaperDocument.PDFDocumentUse(v196);
      v82 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_13(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape);
      specialized CanvasElementPDFAnnotation.encodeCanvasElement<A, B>(_:_:ref:writeCanvasElement:capsule:)(v81, v79, 1, v197, v201, v199, v82, &protocol witness table for Shape, v198);
      outlined consume of PaperDocument.PDFDocumentUse(v80);
      goto LABEL_24;
    }

    v210[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writingAKAnnotation] = 1;
    outlined init with copy of Date?(v202, v30, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
    v57 = v203;
    v58 = v204;
    if ((*(v203 + 48))(v30, 1, v204) == 1)
    {

      outlined destroy of StocksKitCurrencyCache.Provider?(v30, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
      return;
    }

    (*(v57 + 32))(v35, v30, v58);
    v112 = v196;
    v113 = v196;
    v114 = v201;
    if (v196 >> 62)
    {
      if (v196 >> 62 != 1)
      {
LABEL_46:

        (*(v57 + 8))(v35, v58);
        return;
      }

      v113 = (v196 & 0x3FFFFFFFFFFFFFFFLL);
    }

    outlined copy of PaperDocument.PDFDocumentUse(v196);
    v115 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_13(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape);
    specialized CanvasElementPDFAnnotation.encodeCanvasElement<A, B>(_:_:ref:writeCanvasElement:capsule:)(v113, v35, 0, v197, v114, v199, v115, &protocol witness table for Shape, v198);
    outlined consume of PaperDocument.PDFDocumentUse(v112);
    goto LABEL_46;
  }
}

void Shape.setAKAnnotation(on:in:)(uint64_t a1, double *a2)
{
  v155 = *MEMORY[0x1E69E9840];
  v3 = a2[1];
  v150 = a2;
  v4 = a2[3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v139 = &v132 - v6;
  v144 = type metadata accessor for StrokeStyle(0);
  v143 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v136 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v138 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v142 = &v132 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v137 = &v132 - v13;
  v151 = COERCE_DOUBLE(type metadata accessor for ShapeType(0));
  MEMORY[0x1EEE9AC00](*&v151);
  v146 = (&v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v145 = &v132 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v148 = &v132 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v147 = &v132 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v132 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v132 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = (&v132 - v28);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v132 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = (&v132 - v34);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v132 - v37;
  v39 = Shape.akAnnotation(for:)(a1);
  if (v39)
  {
    v40 = v39;
    v149 = type metadata accessor for Shape(0);
    v41 = *(v149 + 64);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
    v141 = v41;
    v140 = v42;
    CRRegister.wrappedValue.getter();
    if ((LOBYTE(v152.origin.x) & 0x20) != 0 && (LOBYTE(v152.origin.x) & 0x40) != 0)
    {
      goto LABEL_62;
    }

    v135 = a1;
    objc_opt_self();
    v43 = swift_dynamicCastObjCClass();
    if (v43)
    {
      v44 = v43;
      v45 = v40;
      Shape.addAKRectangularShapeAnnotationProperties(to:in:)(v44, v150);
    }

    else
    {
      objc_opt_self();
      v46 = swift_dynamicCastObjCClass();
      if (v46)
      {
        v47 = v46;
        v48 = v40;
        Shape.addAKArrowAnnotationProperties(to:in:)(v47, v150);
      }

      else
      {
        objc_opt_self();
        v49 = swift_dynamicCastObjCClass();
        if (!v49)
        {
          objc_opt_self();
          v49 = swift_dynamicCastObjCClass();
          if (!v49)
          {
LABEL_13:
            objc_opt_self();
            v58 = swift_dynamicCastObjCClass();
            if (v58)
            {
              v59 = v58;
              v134 = v40;
              v60 = v40;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
              CRRegister.wrappedValue.getter();
              _s8PaperKit9ShapeTypeOWObTm_0(v38, v35, type metadata accessor for ShapeType);
              if (swift_getEnumCaseMultiPayload() == 5)
              {
                v61 = *v35;
                CRRegister.wrappedValue.getter();
                if ((LOBYTE(v152.origin.x) & 0x20) == 0)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
                  CRRegister.wrappedValue.getter();
                  Width = CGRectGetWidth(v152);
                  CRRegister.wrappedValue.getter();
                  Height = CGRectGetHeight(v152);
                  if (Height >= Width)
                  {
                    Height = Width;
                  }

                  [v59 setCornerRadius_];
                }

                a1 = v135;
                v40 = v134;
                goto LABEL_62;
              }

              _s8PaperKit9ShapeTypeOWOhTm_1(v35, type metadata accessor for ShapeType);
              v40 = v134;
            }

            objc_opt_self();
            v64 = swift_dynamicCastObjCClass();
            if (v64)
            {
              v65 = v64;
              v66 = v40;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
              CRRegister.wrappedValue.getter();
              _s8PaperKit9ShapeTypeOWObTm_0(v32, v29, type metadata accessor for ShapeType);
              if (swift_getEnumCaseMultiPayload() == 6)
              {
                v67 = *v29;
                CRRegister.wrappedValue.getter();
                if ((LOBYTE(v152.origin.x) & 0x20) == 0)
                {
                  [v65 setPointCount_];
                }

                a1 = v135;
                goto LABEL_62;
              }

              _s8PaperKit9ShapeTypeOWOhTm_1(v29, type metadata accessor for ShapeType);
            }

            objc_opt_self();
            v68 = swift_dynamicCastObjCClass();
            if (v68)
            {
              v69 = v68;
              v70 = v40;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
              CRRegister.wrappedValue.getter();
              _s8PaperKit9ShapeTypeOWObTm_0(v26, v23, type metadata accessor for ShapeType);
              if (swift_getEnumCaseMultiPayload() == 7)
              {
                v71 = v23[1];
                CRRegister.wrappedValue.getter();
                if ((LOBYTE(v152.origin.x) & 0x20) == 0)
                {
                  [v69 setPointCount_];
                  [v69 setInnerRadiusFactor_];
                }

LABEL_38:

                goto LABEL_61;
              }

              _s8PaperKit9ShapeTypeOWOhTm_1(v23, type metadata accessor for ShapeType);
            }

            objc_opt_self();
            v72 = swift_dynamicCastObjCClass();
            if (v72)
            {
              v73 = v72;
              v70 = v40;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
              v74 = v147;
              CRRegister.wrappedValue.getter();
              v75 = v148;
              _s8PaperKit9ShapeTypeOWObTm_0(v74, v148, type metadata accessor for ShapeType);
              if (swift_getEnumCaseMultiPayload() == 4)
              {
                v77 = *v75;
                v76 = *(v75 + 8);
                v78 = *(v75 + 16);
                CRRegister.wrappedValue.getter();
                if ((LOBYTE(v152.origin.x) & 0x20) == 0)
                {
                  [v73 setPointyBitBaseWidthAngle_];
                  v70 = v70;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
                  CRRegister.wrappedValue.getter();
                  v151 = v76;
                  x = v152.origin.x;
                  y = v152.origin.y;
                  v81 = v152.size.width;
                  v82 = v152.size.height;
                  MinX = CGRectGetMinX(v152);
                  v160.origin.x = x;
                  v160.origin.y = y;
                  v160.size.width = v81;
                  v160.size.height = v82;
                  v84 = MinX + v77 * CGRectGetWidth(v160);
                  v161.origin.x = x;
                  v161.origin.y = y;
                  v161.size.width = v81;
                  v161.size.height = v82;
                  MinY = CGRectGetMinY(v161);
                  v162.origin.x = x;
                  v162.origin.y = y;
                  v162.size.width = v81;
                  v162.size.height = v82;
                  v86 = MinY + v151 * CGRectGetHeight(v162);
                  if (v150[4])
                  {
                    CRRegister.wrappedValue.getter();
                    v3 = v152.origin.y;
                    v4 = v152.size.height;
                  }

                  [v73 setPointyBitPoint_];
                }

                goto LABEL_38;
              }

              _s8PaperKit9ShapeTypeOWOhTm_1(v75, type metadata accessor for ShapeType);
            }

            objc_opt_self();
            v87 = swift_dynamicCastObjCClass();
            a1 = v135;
            if (!v87)
            {
LABEL_62:
              v131 = *(a1 + OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation__akAnnotation);
              *(a1 + OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation__akAnnotation) = v40;

              return;
            }

            v88 = v87;
            v89 = v40;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
            v90 = v145;
            CRRegister.wrappedValue.getter();
            v91 = v90;
            v92 = v146;
            _s8PaperKit9ShapeTypeOWObTm_0(v91, v146, type metadata accessor for ShapeType);
            if (swift_getEnumCaseMultiPayload() == 3)
            {
              v93 = *v92;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
              CRRegister.wrappedValue.getter();
              [v88 setRectangle_];
              if ((v150[4] & 1) == 0)
              {
                v94 = v150[3];
                v95 = v150[1];
                [v88 rectangle];
                v96 = v163.origin.x;
                v97 = v163.origin.y;
                v98 = v163.size.width;
                v99 = v163.size.height;
                v100 = CGRectGetMinX(v163);
                v164.origin.x = v96;
                v164.origin.y = v97;
                v164.size.width = v98;
                v164.size.height = v99;
                v101 = v94 + v95 + v95 - CGRectGetMaxY(v164);
                v165.origin.x = v96;
                v165.origin.y = v97;
                v165.size.width = v98;
                v165.size.height = v99;
                v102 = CGRectGetWidth(v165);
                v166.origin.x = v96;
                v166.origin.y = v97;
                v166.size.width = v98;
                v166.size.height = v99;
                [v88 setRectangle_];
              }

              CRRegister.wrappedValue.getter();
              v103 = v144;
              v104 = v143;
              if ((LOBYTE(v152.origin.x) & 0x20) != 0)
              {
              }

              else
              {
                v150 = v89;
                v151 = *&v93;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
                CRRegister.value.getter();
                [v88 setRotationAngle_];
                CRRegister.wrappedValue.getter();
                v105 = v88;
                [v88 setStrokeWidth_];
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
                v106 = v137;
                CRRegister.wrappedValue.getter();
                v107 = type metadata accessor for Color(0);
                v108 = (*(*(v107 - 8) + 48))(v106, 1, v107);
                v134 = v40;
                if (v108 == 1)
                {
                  outlined destroy of StocksKitCurrencyCache.Provider?(v106, &_s8PaperKit5ColorVSgMd);
                  v109 = 0;
                }

                else
                {
                  v110 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
                  _s8PaperKit9ShapeTypeOWOhTm_1(v106, type metadata accessor for Color);
                  CRRegister.wrappedValue.getter();
                  v109 = [v110 colorWithAlphaComponent_];
                }

                [v105 setStrokeColor_];

                __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMd);
                v111 = v142;
                CRRegister.wrappedValue.getter();
                v112 = v111;
                v113 = *(v104 + 48);
                if (v113(v112, 1, v103) == 1)
                {
                  outlined destroy of StocksKitCurrencyCache.Provider?(v112, &_s8PaperKit11StrokeStyleOSgMd);
                  v114 = 0;
                }

                else
                {
                  v115 = v112;
                  v116 = v136;
                  _s8PaperKit9ShapeTypeOWOcTm_3(v115, v136, type metadata accessor for StrokeStyle);
                  if (swift_getEnumCaseMultiPayload())
                  {
                    _s8PaperKit9ShapeTypeOWOhTm_1(v116, type metadata accessor for StrokeStyle);
                    v114 = 0;
                  }

                  else
                  {
                    v117 = *(*(v116 + 8) + 16);

                    v114 = v117 != 0;
                  }

                  _s8PaperKit9ShapeTypeOWOhTm_1(v142, type metadata accessor for StrokeStyle);
                }

                [v105 setDashed_];
                v118 = v138;
                CRRegister.wrappedValue.getter();
                if (v113(v118, 1, v103) == 1)
                {
                  outlined destroy of StocksKitCurrencyCache.Provider?(v118, &_s8PaperKit11StrokeStyleOSgMd);
                  v119 = 0;
                }

                else
                {
                  v119 = StrokeStyle.akBrushStyle.getter();
                  _s8PaperKit9ShapeTypeOWOhTm_1(v118, type metadata accessor for StrokeStyle);
                }

                v40 = v134;
                [v105 setBrushStyle_];
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMd);
                v120 = v139;
                CRRegister.wrappedValue.getter();
                v121 = type metadata accessor for Shadow();
                v122 = (*(*(v121 - 8) + 48))(v120, 1, v121) != 1;
                outlined destroy of StocksKitCurrencyCache.Provider?(v120, &_s8PaperKit6ShadowVSgMd);
                [v105 setHasShadow_];
                CRRegister.wrappedValue.getter();
                v123 = CGRectGetMinX(v152);
                CRRegister.wrappedValue.getter();
                MaxY = CGRectGetMaxY(v152);
                CRRegister.wrappedValue.getter();
                v125 = CGRectGetWidth(v152);
                CRRegister.wrappedValue.getter();
                v126 = CGRectGetHeight(v152);
                v152.origin.x = v125;
                v152.origin.y = 0.0;
                v152.size.width = 0.0;
                v152.size.height = -v126;
                v153 = v123 - v125 * 0.0;
                v154 = MaxY + v126 * 0.0;
                v127 = v151;
                v128 = MEMORY[0x1DA6CF2B0](*&v151, &v152);
                if (!v128)
                {
                  __break(1u);
                  return;
                }

                v129 = v128;
                v130 = [objc_opt_self() bezierPathWithCGPath_];

                [v105 setPath_];
              }
            }

            else
            {

              _s8PaperKit9ShapeTypeOWOhTm_1(v92, type metadata accessor for ShapeType);
            }

LABEL_61:
            a1 = v135;
            goto LABEL_62;
          }
        }

        v50 = v49;
        v51 = v40;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
        CRRegister.wrappedValue.getter();
        [v50 setRectangle_];
        if ((v150[4] & 1) == 0)
        {
          [v50 rectangle];
          v52 = v156.origin.x;
          v53 = v156.origin.y;
          v54 = v156.size.width;
          v55 = v156.size.height;
          v133 = CGRectGetMinX(v156);
          v157.origin.x = v52;
          v157.origin.y = v53;
          v157.size.width = v54;
          v157.size.height = v55;
          v56 = v4 + v3 + v3 - CGRectGetMaxY(v157);
          v158.origin.x = v52;
          v158.origin.y = v53;
          v158.size.width = v54;
          v158.size.height = v55;
          v57 = CGRectGetWidth(v158);
          v159.origin.x = v52;
          v159.origin.y = v53;
          v159.size.width = v54;
          v159.size.height = v55;
          [v50 setRectangle_];
        }
      }
    }

    goto LABEL_13;
  }
}

uint64_t Shape.hdrHeadroom(in:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return specialized Shape.hdrHeadroom(in:)();
}

uint64_t Shape.asyncHdrHeadroom<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a2;
  return MEMORY[0x1EEE6DFA0](Shape.asyncHdrHeadroom<A>(in:), 0, 0);
}

uint64_t Shape.asyncHdrHeadroom<A>(in:)()
{
  type metadata accessor for Capsule();
  swift_getWitnessTable();
  specialized Shape.hdrHeadroom(in:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t (*protocol witness for CanvasElement.frame.modify in conformance Shape(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

double protocol witness for CanvasElement.rotation.getter in conformance Shape()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  CRRegister.value.getter();
  return v1;
}

uint64_t protocol witness for CanvasElement.rotation.setter in conformance Shape(double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  result = CRRegister.value.getter();
  if (vabdd_f64(v3, a1) > 0.01)
  {
    return CRRegister.value.setter();
  }

  return result;
}

void (*protocol witness for CanvasElement.rotation.modify in conformance Shape(uint64_t **a1))(void *a1)
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
  v2[4] = Shape.rotation.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocument.modify in conformance PaperTextAttachmentView;
}

uint64_t (*protocol witness for CanvasElement.flags.modify in conformance Shape(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t protocol witness for CanvasElement.shared(_:) in conformance Shape@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v4);
  v9[15] = 5;
  (*(v6 + 16))(&v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], a1);
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  SharedTagged_10.init(_:id:)();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t protocol witness for PaperRenderable.render<A>(in:id:capsule:options:) in conformance Shape(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return (specialized Shape.render<A>(in:id:capsule:options:))(a1, a2, a4, a5, a6);
}

uint64_t protocol witness for PaperRenderable.hdrHeadroom(in:) in conformance Shape(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return specialized Shape.hdrHeadroom(in:)();
}

id Shape.akAnnotation(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v32 - v11;
  v13 = *(a1 + OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation__akAnnotation);
  if (v13)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
      v14 = v13;
      return v13;
    }
  }

  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  CRRegister.wrappedValue.getter();
  if (v32[0])
  {
    if (v13)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        return v13;
      }
    }

    v16 = MEMORY[0x1E698AA08];
LABEL_9:
    v13 = [objc_allocWithZone(v16) init];

    if (v13)
    {
      return v13;
    }

    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  CRRegister.wrappedValue.getter();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        if (v13)
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            return v13;
          }
        }

        v16 = MEMORY[0x1E698A970];
      }

      else if (EnumCaseMultiPayload == 3)
      {
        _s8PaperKit9ShapeTypeOWOhTm_1(v12, type metadata accessor for ShapeType);
        if (v13)
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            return v13;
          }
        }

        v16 = MEMORY[0x1E698A990];
      }

      else
      {
        if (v13)
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            return v13;
          }
        }

        v16 = MEMORY[0x1E698A9F0];
      }

      goto LABEL_9;
    }

    if (EnumCaseMultiPayload)
    {
      if (v13)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          return v13;
        }
      }

      v16 = MEMORY[0x1E698A9C0];
      goto LABEL_9;
    }

LABEL_35:
    if (v13)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        return v13;
      }
    }

    v16 = MEMORY[0x1E698A9D0];
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload != 5)
    {
      if (v13)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          return v13;
        }
      }

      v16 = MEMORY[0x1E698A9C8];
      goto LABEL_9;
    }

    goto LABEL_35;
  }

  if (EnumCaseMultiPayload == 7)
  {
    if (v13)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        return v13;
      }
    }

    v16 = MEMORY[0x1E698A9F8];
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 8)
  {
    if (v13)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        return v13;
      }
    }

    v16 = MEMORY[0x1E698A978];
    goto LABEL_9;
  }

  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd) + 48);
  v31 = type metadata accessor for AnyCRValue();
  (*(*(v31 - 8) + 8))(&v12[v30], v31);
  if (v13)
  {
    return v13;
  }

LABEL_10:
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, logger);
  _s8PaperKit9ShapeTypeOWOcTm_3(v2, v6, type metadata accessor for Shape);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v35 = v21;
    *v20 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
    CRRegister.wrappedValue.getter();
    ShapeType.any.getter(v32);
    _s8PaperKit9ShapeTypeOWOhTm_1(v9, type metadata accessor for ShapeType);
    v22 = v33;
    v23 = v34;
    __swift_project_boxed_opaque_existential_1(v32, v33);
    v24 = (*(v23 + 48))(v22, v23);
    v26 = v25;
    _s8PaperKit9ShapeTypeOWOhTm_1(v6, type metadata accessor for Shape);
    __swift_destroy_boxed_opaque_existential_0(v32);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v35);

    *(v20 + 4) = v27;
    _os_log_impl(&dword_1D38C4000, v18, v19, "Did not create AKAnnotation for Shape with shapeType: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x1DA6D0660](v21, -1, -1);
    MEMORY[0x1DA6D0660](v20, -1, -1);
  }

  else
  {

    _s8PaperKit9ShapeTypeOWOhTm_1(v6, type metadata accessor for Shape);
  }

  return 0;
}

id Shape.addAKRectangularShapeAnnotationProperties(to:in:)(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v42 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  [a1 setRectangle_];
  if ((*(a2 + 32) & 1) == 0)
  {
    v12 = *(a2 + 24);
    v13 = *(a2 + 8);
    [a1 rectangle];
    x = v50.origin.x;
    y = v50.origin.y;
    width = v50.size.width;
    height = v50.size.height;
    MinX = CGRectGetMinX(v50);
    v51.origin.x = x;
    v51.origin.y = y;
    v51.size.width = width;
    v51.size.height = height;
    v19 = v12 + v13 + v13 - CGRectGetMaxY(v51);
    v52.origin.x = x;
    v52.origin.y = y;
    v52.size.width = width;
    v52.size.height = height;
    v20 = CGRectGetWidth(v52);
    v53.origin.x = x;
    v53.origin.y = y;
    v53.size.width = width;
    v53.size.height = height;
    [a1 setRectangle_];
  }

  v21 = type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  result = CRRegister.wrappedValue.getter();
  if ((LOBYTE(v44) & 0x20) == 0)
  {
    Shape.addAKShapeAnnotationProperties(to:)(a1);
    [a1 originalModelBaseScaleFactor];
    v23 = 1.0;
    if (v24 != 0.0)
    {
      [a1 originalModelBaseScaleFactor];
      v23 = 1.0 / v25;
    }

    v42[1] = v21;
    (*(v9 + 16))(v11, v2 + *(v21 + 52), v8);
    v26 = CRAttributedString.attributedString.getter();
    v27 = [v26 string];

    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    if (v28)
    {
      v31 = 0;
    }

    else
    {
      v31 = v30 == 0xE000000000000000;
    }

    if (v31)
    {

      (*(v9 + 8))(v11, v8);
      v33 = 0;
    }

    else
    {
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*(v9 + 8))(v11, v8);
      v33 = 0;
      if ((v32 & 1) == 0)
      {
        v34 = CRAttributedString<>.nsAttributedString.getter();
        v35 = NSAttributedString.scaledByOriginalModelBaseScaleFactor(_:)(v23);

        v33 = [objc_allocWithZone(MEMORY[0x1E69DB850]) initWithAttributedString_];
      }
    }

    [a1 setAnnotationText_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
    CRRegister.wrappedValue.getter();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
    v37 = *(v36 - 8);
    if ((*(v37 + 48))(v7, 1, v36) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      if (one-time initialization token for defaultTextBoxAttributes != -1)
      {
        swift_once();
      }

      v38 = static UIConstants.defaultTextBoxAttributes;
    }

    else
    {
      v38 = CRAttributedString.Attributes<>.nsTypeAttributesScaledBy(_:)(v23);
      (*(v37 + 8))(v7, v36);
    }

    specialized _dictionaryUpCast<A, B, C, D>(_:)(v38);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [a1 setTypingAttributes_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
    CRRegister.wrappedValue.getter();
    [a1 setTextIsFixedWidth_];
    CRRegister.wrappedValue.getter();
    [a1 setTextIsFixedHeight_];
    [a1 setIsFormField_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGMd);
    CRRegister.wrappedValue.getter();
    if (v49)
    {
      LOBYTE(v45) &= 1u;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit15FormContentTypeOGMd);
      CRExtensible.rawValue.getter();

      FormContentType.init(rawValue:)(v42[2]);
      v40 = v43;
      if (v43 == 76)
      {
        v40 = 0;
      }
    }

    else
    {
      v40 = 0;
    }

    LOBYTE(v44) = v40;
    [a1 setTextContentType_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
    CRRegister.value.getter();
    [a1 setRotationAngle_];
    CRRegister.wrappedValue.getter();
    if (v49)
    {
      v41 = v48;
    }

    else
    {
      v41 = 0;
    }

    return [a1 setMaximumNumberOfCharacters_];
  }

  return result;
}

void Shape.addAKArrowAnnotationProperties(to:in:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  *&v113 = &v105 - v9;
  *&v10 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd));
  v111 = *(v10 - 8);
  v112 = *&v10;
  MEMORY[0x1EEE9AC00](v10);
  v114 = &v105 - v11;
  v12 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v105 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v105 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v105 - v22;
  v116 = *&a1;
  Shape.addAKShapeAnnotationProperties(to:)(a1);
  v115 = type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  CRRegister.wrappedValue.getter();
  _s8PaperKit9ShapeTypeOWObTm_0(v23, v20, type metadata accessor for ShapeType);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v24 = *v20;
    v25 = v20[1];
    v110 = v7;
    v26 = v6;
    v27 = v20[3];
    v106 = v20[2];
    v107 = v27;
    v28 = v20[5];
    v108 = v20[4];
    v109 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
    CRRegister.wrappedValue.getter();
    x = v121.origin.x;
    y = v121.origin.y;
    width = v121.size.width;
    height = v121.size.height;
    MinX = CGRectGetMinX(v121);
    v122.origin.x = x;
    v122.origin.y = y;
    v122.size.width = width;
    v122.size.height = height;
    v34 = MinX + v24 * CGRectGetWidth(v122);
    v123.origin.x = x;
    v123.origin.y = y;
    v123.size.width = width;
    v123.size.height = height;
    MinY = CGRectGetMinY(v123);
    v124.origin.x = x;
    v124.origin.y = y;
    v124.size.width = width;
    v124.size.height = height;
    v36 = v25 * CGRectGetHeight(v124);
    v37 = v26;
    v38 = v110;
    v39 = MinY + v36;
    v40 = *(a2 + 32);
    v41 = v37;
    v42 = v110;
    if (v40)
    {
      CRRegister.wrappedValue.getter();
      v41 = v121.origin.y;
      v42 = v121.size.height;
    }

    v43 = v116;
    [*&v116 setStartPoint_];
    CRRegister.wrappedValue.getter();
    v44 = v121.origin.x;
    v45 = v121.origin.y;
    v46 = v121.size.width;
    v47 = v121.size.height;
    v48 = CGRectGetMinX(v121);
    v125.origin.x = v44;
    v125.origin.y = v45;
    v125.size.width = v46;
    v125.size.height = v47;
    v49 = v48 + v106 * CGRectGetWidth(v125);
    v126.origin.x = v44;
    v126.origin.y = v45;
    v126.size.width = v46;
    v126.size.height = v47;
    v50 = CGRectGetMinY(v126);
    v127.origin.x = v44;
    v127.origin.y = v45;
    v127.size.width = v46;
    v127.size.height = v47;
    v51 = v50 + v107 * CGRectGetHeight(v127);
    v52 = v37;
    v53 = v38;
    if (v40)
    {
      CRRegister.wrappedValue.getter();
      v52 = v121.origin.y;
      v53 = v121.size.height;
    }

    [*&v43 setMidPoint_];
    CRRegister.wrappedValue.getter();
    v54 = v121.origin.x;
    v55 = v121.origin.y;
    v56 = v121.size.width;
    v57 = v121.size.height;
    v58 = CGRectGetMinX(v121);
    v128.origin.x = v54;
    v128.origin.y = v55;
    v128.size.width = v56;
    v128.size.height = v57;
    v59 = v58 + v108 * CGRectGetWidth(v128);
    v129.origin.x = v54;
    v129.origin.y = v55;
    v129.size.width = v56;
    v129.size.height = v57;
    v60 = CGRectGetMinY(v129);
    v130.origin.x = v54;
    v130.origin.y = v55;
    v130.size.width = v56;
    v130.size.height = v57;
    v61 = v60 + v109 * CGRectGetHeight(v130);
    if (v40)
    {
      CRRegister.wrappedValue.getter();
      v37 = v121.origin.y;
      v38 = v121.size.height;
    }

    [*&v43 setEndPoint_];
    v62 = v115;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
    CRRegister.wrappedValue.getter();
    if ((LOBYTE(v121.origin.x) & 0x20) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
      CRRegister.wrappedValue.getter();
      v118 = v121.origin.x;
      y_low = LOBYTE(v121.origin.y);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
      CRExtensible.rawValue.getter();
      LineEnd.init(rawValue:)(v117);
      v63 = v120;
      if (v120 == 9)
      {
        v63 = 0;
      }

      v64 = 1u >> v63;
      CRRegister.wrappedValue.getter();
      v118 = v121.origin.x;
      y_low = LOBYTE(v121.origin.y);
      CRExtensible.rawValue.getter();
      LineEnd.init(rawValue:)(v117);
      if (v120)
      {
        v65 = v111;
        if (v120 != 9)
        {
          if (v64)
          {
            v66 = 2;
          }

          else
          {
            v66 = 3;
          }

          goto LABEL_25;
        }

        if (v64)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v65 = v111;
        if (v64)
        {
LABEL_14:
          v66 = 0;
LABEL_25:
          [*&v43 setArrowHeadStyle_];
          [*&v43 originalModelBaseScaleFactor];
          v80 = 1.0;
          v81 = v112;
          if (v82 != 0.0)
          {
            [*&v43 originalModelBaseScaleFactor];
            v80 = 1.0 / v83;
          }

          (*(*&v65 + 16))(v114, v3 + *(v62 + 52), COERCE_DOUBLE(*&v81));
          v84 = CRAttributedString.attributedString.getter();
          v85 = [v84 string];

          v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v88 = v87;

          if (v86 || v88 != 0xE000000000000000)
          {
            v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

            (*(*&v65 + 8))(v114, COERCE_DOUBLE(*&v81));
            v89 = 0;
            if ((v90 & 1) == 0)
            {
              v91 = CRAttributedString<>.nsAttributedString.getter();
              v92 = NSAttributedString.scaledByOriginalModelBaseScaleFactor(_:)(v80);

              v89 = [objc_allocWithZone(MEMORY[0x1E69DB850]) initWithAttributedString_];
            }
          }

          else
          {

            (*(*&v65 + 8))(v114, COERCE_DOUBLE(*&v81));
            v89 = 0;
          }

          [*&v43 setAnnotationText_];

          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
          v93 = *&v113;
          CRRegister.wrappedValue.getter();
          v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
          v95 = *(v94 - 8);
          if ((*(v95 + 48))(v93, 1, v94) == 1)
          {
            outlined destroy of StocksKitCurrencyCache.Provider?(v93, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
            if (one-time initialization token for defaultTextBoxAttributes != -1)
            {
              swift_once();
            }

            v96 = static UIConstants.defaultTextBoxAttributes;
          }

          else
          {
            v96 = CRAttributedString.Attributes<>.nsTypeAttributesScaledBy(_:)(v80);
            (*(v95 + 8))(v93, v94);
          }

          specialized _dictionaryUpCast<A, B, C, D>(_:)(v96);

          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          [*&v43 setTypingAttributes_];

          return;
        }
      }

      v66 = 1;
      goto LABEL_25;
    }
  }

  else
  {
    _s8PaperKit9ShapeTypeOWOhTm_1(v20, type metadata accessor for ShapeType);
    CRRegister.wrappedValue.getter();
    _s8PaperKit9ShapeTypeOWObTm_0(v17, v14, type metadata accessor for ShapeType);
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      v67 = *v14;
      v68 = v14[1];
      objc_opt_self();
      v69 = v116;
      v70 = swift_dynamicCastObjCClass();
      if (v70)
      {
        v71 = v70;
        *&v114 = v67;
        v72 = v6;
        v73 = *&v69;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
        CRRegister.wrappedValue.getter();
        v74 = v121.origin.x;
        v75 = v121.origin.y;
        v77 = v121.size.width;
        v76 = v121.size.height;
        v113 = CGRectGetMinX(v121);
        v131.origin.x = v74;
        v131.origin.y = v75;
        v131.size.width = v77;
        v131.size.height = v76;
        v112 = CGRectGetWidth(v131);
        v132.origin.x = v74;
        v132.origin.y = v75;
        v132.size.width = v77;
        v132.size.height = v76;
        v78 = CGRectGetMinY(v132);
        v133.origin.x = v74;
        v133.origin.y = v75;
        v133.size.width = v77;
        v133.size.height = v76;
        v79 = v78 + v68 * CGRectGetHeight(v133);
        if (*(a2 + 32))
        {
          v116 = v79;
        }

        else
        {
          v134.origin.x = v74;
          v134.origin.y = v75;
          v134.size.width = v77;
          v134.size.height = v76;
          v111 = CGRectGetMinX(v134);
          v98 = v7 + v72 + v72;
          v135.origin.x = v74;
          v135.origin.y = v75;
          v135.size.width = v77;
          v135.size.height = v76;
          v99 = v98 - CGRectGetMaxY(v135);
          v136.origin.x = v74;
          v136.origin.y = v75;
          v136.size.width = v77;
          v136.size.height = v76;
          v100 = CGRectGetWidth(v136);
          v137.origin.x = v74;
          v137.origin.y = v75;
          v137.size.width = v77;
          v137.size.height = v76;
          v76 = CGRectGetHeight(v137);
          v116 = v98 - v79;
          v74 = v111;
          v75 = v99;
          v77 = v100;
        }

        v101 = v73;
        v138.origin.x = v74;
        v138.origin.y = v75;
        v138.size.width = v77;
        v138.size.height = v76;
        v102 = CGRectGetMinX(v138);
        v139.origin.x = v74;
        v139.origin.y = v75;
        v139.size.width = v77;
        v139.size.height = v76;
        [v71 setStartPoint_];
        v140.origin.x = v74;
        v140.origin.y = v75;
        v140.size.width = v77;
        v140.size.height = v76;
        MaxX = CGRectGetMaxX(v140);
        v141.origin.x = v74;
        v141.origin.y = v75;
        v141.size.width = v77;
        v141.size.height = v76;
        [v71 setEndPoint_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
        CRRegister.wrappedValue.getter();
        if ((LOBYTE(v121.origin.x) & 0x20) == 0)
        {
          v142.origin.x = v74;
          v142.origin.y = v75;
          v142.size.width = v77;
          v142.size.height = v76;
          [v71 setArrowHeadLength_];
          v143.origin.x = v74;
          v143.origin.y = v75;
          v143.size.width = v77;
          v143.size.height = v76;
          [v71 setArrowHeadWidth_];
          v144.origin.x = v74;
          v144.origin.y = v75;
          v144.size.width = v77;
          v144.size.height = v76;
          CGRectGetMidX(v144);
          v145.origin.x = v74;
          v145.origin.y = v75;
          v145.size.width = v77;
          v145.size.height = v76;
          MidY = CGRectGetMidY(v145);
          [v71 setArrowLineWidth_];
          [v71 setArrowHeadStyle_];
        }
      }
    }

    else
    {
      _s8PaperKit9ShapeTypeOWOhTm_1(v14, type metadata accessor for ShapeType);
    }
  }
}

id Shape.addAKShapeAnnotationProperties(to:)(void *a1)
{
  v66 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v54 - v2;
  v4 = type metadata accessor for StrokeStyle(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v61 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v64 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v62 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v54 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v54 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v54 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v54 - v23;
  v25 = type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  result = CRRegister.wrappedValue.getter();
  if ((LOBYTE(v67) & 0x20) != 0)
  {
    return result;
  }

  v58 = v4;
  v59 = v15;
  v56 = v3;
  v57 = v5;
  v60 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  CRRegister.wrappedValue.getter();
  v28 = type metadata accessor for Color(0);
  v29 = *(*(v28 - 8) + 48);
  v30 = v29(v24, 1, v28);
  v63 = v27;
  if (v30 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v24, &_s8PaperKit5ColorVSgMd);
    v31 = 0;
    v32 = v66;
    v33 = v59;
  }

  else
  {
    v55 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
    _s8PaperKit9ShapeTypeOWOhTm_1(v24, type metadata accessor for Color);
    CRRegister.wrappedValue.getter();
    result = v29(v21, 1, v28);
    if (result == 1)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    result = CGColorRef.components.getter();
    v32 = v66;
    v33 = v59;
    if (!result)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (*(result + 2) < 4uLL)
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v34 = *(result + 7);

    _s8PaperKit9ShapeTypeOWOhTm_1(v21, type metadata accessor for Color);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
    CRRegister.wrappedValue.getter();
    v35 = v55;
    v31 = [v55 colorWithAlphaComponent_];
  }

  [v32 setFillColor_];

  CRRegister.wrappedValue.getter();
  v36 = v29(v18, 1, v28);
  outlined destroy of StocksKitCurrencyCache.Provider?(v18, &_s8PaperKit5ColorVSgMd);
  v37 = 0.0;
  if (v36 != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
    CRRegister.wrappedValue.getter();
    v37 = v67;
  }

  [v32 setStrokeWidth_];
  CRRegister.wrappedValue.getter();
  if (v29(v33, 1, v28) != 1)
  {
    v42 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
    _s8PaperKit9ShapeTypeOWOhTm_1(v33, type metadata accessor for Color);
    v43 = v62;
    CRRegister.wrappedValue.getter();
    result = v29(v43, 1, v28);
    if (result == 1)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    result = CGColorRef.components.getter();
    if (!result)
    {
LABEL_32:
      __break(1u);
      return result;
    }

    v40 = v57;
    v39 = v58;
    v41 = v65;
    v32 = v66;
    if (*(result + 2) >= 4uLL)
    {
      v44 = *(result + 7);

      _s8PaperKit9ShapeTypeOWOhTm_1(v43, type metadata accessor for Color);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
      CRRegister.wrappedValue.getter();
      v38 = [v42 colorWithAlphaComponent_];

      goto LABEL_16;
    }

    goto LABEL_28;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v33, &_s8PaperKit5ColorVSgMd);
  v38 = 0;
  v40 = v57;
  v39 = v58;
  v41 = v65;
LABEL_16:
  [v32 setStrokeColor_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMd);
  CRRegister.wrappedValue.getter();
  v45 = *(v40 + 48);
  if (v45(v41, 1, v39) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v41, &_s8PaperKit11StrokeStyleOSgMd);
    v46 = 0;
  }

  else
  {
    v47 = v61;
    _s8PaperKit9ShapeTypeOWOcTm_3(v41, v61, type metadata accessor for StrokeStyle);
    if (swift_getEnumCaseMultiPayload())
    {
      _s8PaperKit9ShapeTypeOWOhTm_1(v47, type metadata accessor for StrokeStyle);
      v46 = 0;
    }

    else
    {
      v48 = *(*(v47 + 8) + 16);

      v46 = v48 != 0;
    }

    _s8PaperKit9ShapeTypeOWOhTm_1(v41, type metadata accessor for StrokeStyle);
  }

  [v32 setDashed_];
  v49 = v64;
  CRRegister.wrappedValue.getter();
  if (v45(v49, 1, v39) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v49, &_s8PaperKit11StrokeStyleOSgMd);
    v50 = 0;
  }

  else
  {
    v50 = StrokeStyle.akBrushStyle.getter();
    _s8PaperKit9ShapeTypeOWOhTm_1(v49, type metadata accessor for StrokeStyle);
  }

  [v32 setBrushStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMd);
  v51 = v56;
  CRRegister.wrappedValue.getter();
  v52 = type metadata accessor for Shadow();
  v53 = (*(*(v52 - 8) + 48))(v51, 1, v52) != 1;
  outlined destroy of StocksKitCurrencyCache.Provider?(v51, &_s8PaperKit6ShadowVSgMd);
  return [v32 setHasShadow_];
}

id NSAttributedString.scaledByOriginalModelBaseScaleFactor(_:)(double a1)
{
  if (a1 != 1.0 && a1 != 0.0)
  {
    v19 = v1;
    [v1 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSMutableAttributedString);
    swift_dynamicCast();
    v3 = v26;
    v4 = [v1 length];
    v5 = *MEMORY[0x1E69DB648];
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = v3;
    v7 = swift_allocObject();
    *(v7 + 16) = partial apply for closure #1 in NSAttributedString.scaledByOriginalModelBaseScaleFactor(_:);
    *(v7 + 24) = v6;
    v24 = partial apply for thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    v25 = v7;
    aBlock = MEMORY[0x1E69E9820];
    v21 = 1107296256;
    v22 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    v23 = &block_descriptor_66;
    v8 = _Block_copy(&aBlock);
    v9 = v3;

    [v19 enumerateAttribute:v5 inRange:0 options:v4 usingBlock:{0x100000, v8}];
    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }

    else if (one-time initialization token for originalFont == -1)
    {
      goto LABEL_5;
    }

    swift_once();
LABEL_5:
    v10 = static NSAttributedStringKey.originalFont;
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = v9;
    v12 = swift_allocObject();
    *(v12 + 16) = partial apply for closure #2 in NSAttributedString.scaledByOriginalModelBaseScaleFactor(_:);
    *(v12 + 24) = v11;
    v24 = thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
    v25 = v12;
    aBlock = MEMORY[0x1E69E9820];
    v21 = 1107296256;
    v22 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    v23 = &block_descriptor_153;
    v13 = _Block_copy(&aBlock);
    v14 = v9;
    v15 = v10;

    [v19 enumerateAttribute:v15 inRange:0 options:v4 usingBlock:{0x100000, v13}];

    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      [v14 copy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSAttributedString);
      swift_dynamicCast();
      v18 = v26;

      return v18;
    }

    return result;
  }

  return v1;
}

uint64_t CRAttributedString.Attributes<>.nsTypeAttributesScaledBy(_:)(double a1)
{
  v2 = CRAttributedString.Attributes<>.nsAttributes(darkMode:)(0);
  if (*(v2 + 16))
  {
    v3 = *MEMORY[0x1E69DB648];
    v4 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E69DB648]);
    if (v5)
    {
      outlined init with copy of Any(*(v2 + 56) + 32 * v4, &v13);
      v6 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIFont);
      if (swift_dynamicCast())
      {
        v7 = v12[0];
        if (a1 == 1.0 || a1 == 0.0)
        {
          v9 = v12[0];
        }

        else
        {
          [v12[0] pointSize];
          v9 = [v12[0] fontWithSize_];
        }

        v14 = v6;
        *&v13 = v9;
        outlined init with take of Any(&v13, v12);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, v3, isUniquelyReferenced_nonNull_native);
      }
    }
  }

  return v2;
}

uint64_t one-time initialization function for originalFont()
{
  result = MEMORY[0x1DA6CCED0](0x6E696769724F534ELL, 0xEE00746E6F466C61);
  static NSAttributedStringKey.originalFont = result;
  return result;
}

void closure #1 in NSAttributedString.scaledByOriginalModelBaseScaleFactor(_:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, void *a6)
{
  outlined init with copy of Date?(a1, v20, &_sypSgMd);
  if (v21)
  {
    v10 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIFont);
    if (swift_dynamicCast())
    {
      v11 = v19;
      if (a4 != 1.0 && a4 != 0.0)
      {
        [v19 pointSize];
        v13 = [v19 fontWithSize_];

        v11 = v13;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D4058CF0;
      v15 = *MEMORY[0x1E69DB648];
      *(inited + 32) = *MEMORY[0x1E69DB648];
      *(inited + 64) = v10;
      *(inited + 40) = v11;
      v16 = v15;
      v17 = v11;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of StocksKitCurrencyCache.Provider?(inited + 32, &_sSo21NSAttributedStringKeya_yptMd);
      type metadata accessor for NSAttributedStringKey(0);
      _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_13(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [a6 addAttributes:isa range:{a2, a3}];
    }
  }

  else
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_sypSgMd);
  }
}

void closure #2 in NSAttributedString.scaledByOriginalModelBaseScaleFactor(_:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, void *a6)
{
  outlined init with copy of Date?(a1, v20, &_sypSgMd);
  if (v21)
  {
    v10 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIFont);
    if (swift_dynamicCast())
    {
      v11 = v19;
      if (a4 != 1.0 && a4 != 0.0)
      {
        [v19 pointSize];
        v13 = [v19 fontWithSize_];

        v11 = v13;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D4058CF0;
      if (one-time initialization token for originalFont != -1)
      {
        swift_once();
      }

      v15 = static NSAttributedStringKey.originalFont;
      *(inited + 64) = v10;
      *(inited + 32) = v15;
      *(inited + 40) = v11;
      v16 = v15;
      v17 = v11;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of StocksKitCurrencyCache.Provider?(inited + 32, &_sSo21NSAttributedStringKeya_yptMd);
      type metadata accessor for NSAttributedStringKey(0);
      _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_13(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [a6 addAttributes:isa range:{a2, a3}];
    }
  }

  else
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_sypSgMd);
  }
}

uint64_t Shape.merge(_:)(uint64_t a1)
{
  v2 = type metadata accessor for MergeResult();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Shape.merge(_:)(a1, v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t Shape.merge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v194 = a1;
  v191 = a2;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGMd);
  v179 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v178 = &v137 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v176 = &v137 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v175 = &v137 - v7;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMd);
  v174 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v173 = &v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v171 = &v137 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v170 = &v137 - v12;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMd);
  v169 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v168 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v166 = &v137 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v165 = &v137 - v17;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v164 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v163 = &v137 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v161 = &v137 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v160 = &v137 - v22;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v159 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v158 = &v137 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v156 = &v137 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v155 = &v137 - v27;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
  v154 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v153 = &v137 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v151 = &v137 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v150 = &v137 - v32;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
  v189 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v185 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v148 = &v137 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v147 = &v137 - v37;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v146 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v145 = &v137 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v143 = &v137 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v142 = &v137 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v44 = *(v43 - 8);
  v187 = v43;
  v188 = v44;
  MEMORY[0x1EEE9AC00](v43);
  v184 = &v137 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v183 = &v137 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v182 = &v137 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v186 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v141 = &v137 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v140 = &v137 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v181 = &v137 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v57 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v192 = &v137 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v137 - v60;
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v137 - v63;
  v195 = type metadata accessor for MergeResult();
  v193 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v66 = &v137 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MergeResult.init()();
  CRRegister.projectedValue.getter();
  v180 = v2;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v67 = *(v57 + 8);
  v67(v64, v56);
  (*(v57 + 16))(v192, v61, v56);
  CRRegister.projectedValue.setter();
  v67(v61, v56);
  MergeResult.merge(_:)();
  v68 = v193 + 8;
  v69 = *(v193 + 8);
  v70 = v195;
  v69(v66, v195);
  v192 = v69;
  v193 = v68;
  v71 = type metadata accessor for Shape(0);
  CRRegister.merge(_:)();
  MergeResult.merge(_:)();
  v69(v66, v70);
  v190 = v71;
  v72 = v181;
  CRRegister.projectedValue.getter();
  v73 = v140;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v74 = v186;
  v75 = v186[1];
  v75(v72, v50);
  v138 = v75;
  v76 = v74[2];
  v186 = v74 + 2;
  v139 = v76;
  v77 = v141;
  v76(v141, v73, v50);
  CRRegister.projectedValue.setter();
  v75(v73, v50);
  MergeResult.merge(_:)();
  (v192)(v66, v195);
  v78 = v181;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v79 = v78;
  v80 = v138;
  v138(v79, v50);
  v139(v77, v73, v50);
  CRRegister.projectedValue.setter();
  v80(v73, v50);
  MergeResult.merge(_:)();
  (v192)(v66, v195);
  v81 = v182;
  v82 = v187;
  CRRegister.projectedValue.getter();
  v83 = v183;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v84 = v188;
  v85 = (v188 + 8);
  v86 = *(v188 + 8);
  v86(v81, v82);
  v141 = v86;
  v181 = v85;
  v87 = *(v84 + 16);
  v188 = v84 + 16;
  v186 = v87;
  (v87)(v184, v83, v82);
  CRRegister.projectedValue.setter();
  v86(v83, v82);
  MergeResult.merge(_:)();
  (v192)(v66, v195);
  v88 = v142;
  v89 = v144;
  CRRegister.projectedValue.getter();
  v90 = v143;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v91 = v146;
  v92 = *(v146 + 8);
  v92(v88, v89);
  (*(v91 + 16))(v145, v90, v89);
  CRRegister.projectedValue.setter();
  v92(v90, v89);
  MergeResult.merge(_:)();
  (v192)(v66, v195);
  v93 = v182;
  v94 = v187;
  CRRegister.projectedValue.getter();
  v95 = v183;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v96 = v141;
  (v141)(v93, v94);
  (v186)(v184, v95, v94);
  CRRegister.projectedValue.setter();
  v96(v95, v94);
  MergeResult.merge(_:)();
  (v192)(v66, v195);
  v97 = v147;
  v98 = v149;
  CRRegister.projectedValue.getter();
  v99 = v148;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v100 = v189;
  v101 = *(v189 + 8);
  v101(v97, v98);
  v188 = *(v100 + 16);
  v189 = v100 + 16;
  (v188)(v185, v99, v98);
  CRRegister.projectedValue.setter();
  v101(v99, v98);
  MergeResult.merge(_:)();
  (v192)(v66, v195);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v101(v97, v98);
  (v188)(v185, v99, v98);
  CRRegister.projectedValue.setter();
  v101(v99, v98);
  MergeResult.merge(_:)();
  v102 = v195;
  v103 = v192;
  (v192)(v66, v195);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  CRAttributedString.merge(_:)();
  MergeResult.merge(_:)();
  (v103)(v66, v102);
  v104 = v150;
  v105 = v152;
  CRRegister.projectedValue.getter();
  v106 = v151;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v107 = v154;
  v108 = *(v154 + 8);
  v108(v104, v105);
  (*(v107 + 16))(v153, v106, v105);
  CRRegister.projectedValue.setter();
  v108(v106, v105);
  MergeResult.merge(_:)();
  (v192)(v66, v195);
  v109 = v155;
  v110 = v157;
  CRRegister.projectedValue.getter();
  v111 = v156;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v112 = v159;
  v113 = *(v159 + 8);
  v113(v109, v110);
  (*(v112 + 16))(v158, v111, v110);
  CRRegister.projectedValue.setter();
  v113(v111, v110);
  MergeResult.merge(_:)();
  (v192)(v66, v195);
  v114 = v160;
  v115 = v162;
  CRRegister.projectedValue.getter();
  v116 = v161;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v117 = v164;
  v118 = *(v164 + 8);
  v118(v114, v115);
  (*(v117 + 16))(v163, v116, v115);
  CRRegister.projectedValue.setter();
  v118(v116, v115);
  MergeResult.merge(_:)();
  (v192)(v66, v195);
  v119 = v165;
  v120 = v167;
  CRRegister.projectedValue.getter();
  v121 = v166;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v122 = v169;
  v123 = *(v169 + 8);
  v123(v119, v120);
  (*(v122 + 16))(v168, v121, v120);
  CRRegister.projectedValue.setter();
  v123(v121, v120);
  MergeResult.merge(_:)();
  (v192)(v66, v195);
  v124 = v170;
  v125 = v172;
  CRRegister.projectedValue.getter();
  v126 = v171;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v127 = v174;
  v128 = *(v174 + 8);
  v128(v124, v125);
  (*(v127 + 16))(v173, v126, v125);
  CRRegister.projectedValue.setter();
  v128(v126, v125);
  MergeResult.merge(_:)();
  (v192)(v66, v195);
  v129 = v175;
  v130 = v177;
  CRRegister.projectedValue.getter();
  v131 = v176;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v132 = v179;
  v133 = *(v179 + 8);
  v133(v129, v130);
  (*(v132 + 16))(v178, v131, v130);
  CRRegister.projectedValue.setter();
  v133(v131, v130);
  MergeResult.merge(_:)();
  v134 = v195;
  v135 = v192;
  (v192)(v66, v195);
  UnknownProperties.merge(_:)();
  MergeResult.merge(_:)();
  return (v135)(v66, v134);
}

uint64_t Shape.actionUndoingDifference(from:)@<X0>(uint64_t a1@<X8>)
{
  v184 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGMd);
  v2 = *(v1 - 8);
  v182 = v1;
  v183 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v181 = &v148 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v180 = &v148 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18ShapeAuxiliaryInfoVSg_GSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v196 = &v148 - v7;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMd);
  v179 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v177 = &v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v176 = &v148 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit6ShadowVSg_GSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v197 = &v148 - v12;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMd);
  v175 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v173 = &v148 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v172 = &v148 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit11StrokeStyleOSg_GSgMd);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v187 = &v148 - v17;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v171 = *(v170 - 8);
  MEMORY[0x1EEE9AC00](v170);
  v169 = &v148 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v168 = &v148 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18CanvasElementFlagsV_GSgMd);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v188 = &v148 - v22;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v167 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v165 = &v148 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v164 = &v148 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit31CanvasElementAutoresizeBehaviorV_GSgMd);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v189 = &v148 - v27;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
  v163 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v161 = &v148 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v160 = &v148 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSg_GSgMd);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v198 = &v148 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV14MutatingActionVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v190 = &v148 - v34;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
  v159 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v157 = &v148 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v156 = &v148 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVyAA12CRExtensibleOy8PaperKit7LineEndOG_GSgMd);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v193 = &v148 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v195 = &v148 - v41;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v154 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v152 = &v148 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v151 = &v148 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit9ShapeTypeO_GSgMd);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v199 = &v148 - v46;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v192 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v186 = &v148 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v150 = &v148 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v149 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v148 = &v148 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v148 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMd);
  MEMORY[0x1EEE9AC00](v55 - 8);
  v194 = &v148 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v201 = &v148 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v59 - 8);
  v191 = &v148 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v200 = &v148 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v202 = &v148 - v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v66 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v68 = &v148 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v148 - v70;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v72 - 8);
  v155 = &v148 - v73;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v74 = *(v66 + 8);
  v74(v68, v65);
  v74(v71, v65);
  type metadata accessor for Shape(0);
  v75 = v185;
  CRRegister.actionUndoingDifference(from:)();
  CRRegister.projectedValue.getter();
  v76 = v148;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v77 = *(v149 + 8);
  v77(v76, v50);
  v77(v54, v50);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v77(v76, v50);
  v77(v54, v50);
  v78 = v150;
  v79 = v75;
  CRRegister.projectedValue.getter();
  v80 = v186;
  CRRegister.projectedValue.getter();
  v81 = v78;
  CRRegister.actionUndoingDifference(from:)();
  v82 = *(v192 + 8);
  v192 += 8;
  v82(v80, v79);
  v82(v81, v79);
  v83 = v151;
  v84 = v153;
  CRRegister.projectedValue.getter();
  v85 = v152;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v86 = *(v154 + 8);
  v86(v85, v84);
  v86(v83, v84);
  v87 = v185;
  CRRegister.projectedValue.getter();
  v88 = v186;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v82(v88, v87);
  v82(v81, v87);
  v89 = v156;
  v90 = v158;
  CRRegister.projectedValue.getter();
  v91 = v157;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v92 = *(v159 + 8);
  v92(v91, v90);
  v92(v89, v90);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v92(v91, v90);
  v92(v89, v90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  CRAttributedString.actionUndoingDifference(from:)();
  v93 = v160;
  v94 = v162;
  CRRegister.projectedValue.getter();
  v95 = v161;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v96 = *(v163 + 8);
  v96(v95, v94);
  v96(v93, v94);
  v97 = v164;
  v98 = v166;
  CRRegister.projectedValue.getter();
  v99 = v165;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v100 = *(v167 + 8);
  v100(v99, v98);
  v100(v97, v98);
  v101 = v168;
  v102 = v170;
  CRRegister.projectedValue.getter();
  v103 = v169;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v104 = *(v171 + 8);
  v104(v103, v102);
  v104(v101, v102);
  v105 = v172;
  v106 = v174;
  CRRegister.projectedValue.getter();
  v107 = v173;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v108 = *(v175 + 8);
  v108(v107, v106);
  v108(v105, v106);
  v109 = v176;
  v110 = v178;
  CRRegister.projectedValue.getter();
  v111 = v177;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v112 = *(v179 + 8);
  v112(v111, v110);
  v113 = v109;
  v114 = v193;
  v112(v113, v110);
  v115 = v155;
  v116 = v180;
  v117 = v182;
  CRRegister.projectedValue.getter();
  v118 = v194;
  v119 = v195;
  v120 = v181;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v121 = *(v183 + 8);
  v121(v120, v117);
  v121(v116, v117);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GMd);
  if ((*(*(v122 - 8) + 48))(v115, 1, v122) == 1 && (v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GMd), v124 = *(*(v123 - 8) + 48), v124(v202, 1, v123) == 1) && (v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GMd), v126 = *(*(v125 - 8) + 48), v126(v201, 1, v125) == 1) && v126(v118, 1, v125) == 1 && v124(v200, 1, v123) == 1 && (v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit9ShapeTypeO_GMd), (*(*(v127 - 8) + 48))(v199, 1, v127) == 1) && v124(v191, 1, v123) == 1 && (v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVyAA12CRExtensibleOy8PaperKit7LineEndOG_GMd), v129 = *(*(v128 - 8) + 48), v129(v119, 1, v128) == 1) && v129(v114, 1, v128) == 1 && (v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV14MutatingActionVy8PaperKit18TextAttributeScopeV_GMd), (*(*(v130 - 8) + 48))(v190, 1, v130) == 1) && (v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSg_GMd), (*(*(v131 - 8) + 48))(v198, 1, v131) == 1) && (v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit31CanvasElementAutoresizeBehaviorV_GMd), (*(*(v132 - 8) + 48))(v189, 1, v132) == 1) && (v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18CanvasElementFlagsV_GMd), (*(*(v133 - 8) + 48))(v188, 1, v133) == 1) && (v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit11StrokeStyleOSg_GMd), (*(*(v134 - 8) + 48))(v187, 1, v134) == 1) && (v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit6ShadowVSg_GMd), (*(*(v135 - 8) + 48))(v197, 1, v135) == 1) && (v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18ShapeAuxiliaryInfoVSg_GMd), (*(*(v136 - 8) + 48))(v196, 1, v136) == 1))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v115, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd);
    v137 = type metadata accessor for Shape.MutatingAction(0);
    (*(*(v137 - 8) + 56))(v184, 1, 1, v137);
    v138 = v187;
    v139 = v188;
    v140 = v189;
    v141 = v190;
    v142 = v191;
  }

  else
  {
    v143 = v114;
    v144 = v184;
    outlined init with copy of Date?(v115, v184, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd);
    v145 = type metadata accessor for Shape.MutatingAction(0);
    outlined init with copy of Date?(v202, v144 + v145[5], &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd);
    outlined init with copy of Date?(v201, v144 + v145[6], &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMd);
    v146 = v198;
    outlined init with copy of Date?(v118, v144 + v145[7], &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMd);
    outlined init with copy of Date?(v200, v144 + v145[8], &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd);
    outlined init with copy of Date?(v199, v144 + v145[9], &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit9ShapeTypeO_GSgMd);
    v142 = v191;
    outlined init with copy of Date?(v191, v144 + v145[10], &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd);
    outlined init with copy of Date?(v119, v144 + v145[11], &_s9Coherence10CRRegisterV14MutatingActionVyAA12CRExtensibleOy8PaperKit7LineEndOG_GSgMd);
    outlined init with copy of Date?(v143, v144 + v145[12], &_s9Coherence10CRRegisterV14MutatingActionVyAA12CRExtensibleOy8PaperKit7LineEndOG_GSgMd);
    v141 = v190;
    outlined init with copy of Date?(v190, v144 + v145[13], &_s9Coherence18CRAttributedStringV14MutatingActionVy8PaperKit18TextAttributeScopeV_GSgMd);
    outlined init with copy of Date?(v146, v144 + v145[14], &_s9Coherence10CRRegisterV14MutatingActionVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSg_GSgMd);
    v140 = v189;
    outlined init with copy of Date?(v189, v144 + v145[15], &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit31CanvasElementAutoresizeBehaviorV_GSgMd);
    v139 = v188;
    outlined init with copy of Date?(v188, v144 + v145[16], &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18CanvasElementFlagsV_GSgMd);
    v138 = v187;
    outlined init with copy of Date?(v187, v144 + v145[17], &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit11StrokeStyleOSg_GSgMd);
    outlined init with copy of Date?(v197, v144 + v145[18], &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit6ShadowVSg_GSgMd);
    outlined init with copy of Date?(v196, v144 + v145[19], &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18ShapeAuxiliaryInfoVSg_GSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v115, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd);
    (*(*(v145 - 1) + 56))(v144, 0, 1, v145);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v196, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18ShapeAuxiliaryInfoVSg_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v197, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit6ShadowVSg_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v138, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit11StrokeStyleOSg_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v139, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18CanvasElementFlagsV_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v140, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit31CanvasElementAutoresizeBehaviorV_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v198, &_s9Coherence10CRRegisterV14MutatingActionVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSg_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v141, &_s9Coherence18CRAttributedStringV14MutatingActionVy8PaperKit18TextAttributeScopeV_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v193, &_s9Coherence10CRRegisterV14MutatingActionVyAA12CRExtensibleOy8PaperKit7LineEndOG_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v195, &_s9Coherence10CRRegisterV14MutatingActionVyAA12CRExtensibleOy8PaperKit7LineEndOG_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v142, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v199, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit9ShapeTypeO_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v200, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v194, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v201, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMd);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v202, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd);
}

uint64_t Shape.apply(_:)(uint64_t a1)
{
  v124 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGMd);
  v119 = *(v1 - 8);
  v120 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v118 = &v85 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v117 = &v85 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMd);
  v115 = *(v5 - 8);
  v116 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v114 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v113 = &v85 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMd);
  v111 = *(v9 - 8);
  v112 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v110 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v109 = &v85 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v107 = *(v13 - 8);
  v108 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v106 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v105 = &v85 - v16;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v102 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v101 = &v85 - v19;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v98 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v97 = &v85 - v22;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v94 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v93 = &v85 - v25;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v89 = &v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v88 = &v85 - v28;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v125 = *(v123 - 1);
  MEMORY[0x1EEE9AC00](v123);
  v122 = &v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v90 = &v85 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v87 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v85 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v86 = &v85 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v85 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v85 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v85 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeV14MutatingActionVSgMd);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v45 = &v85 - v44;
  v46 = type metadata accessor for Shape.MutatingAction(0);
  v47 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v126 = &v85 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Date?(v124, v45, &_s8PaperKit5ShapeV14MutatingActionVSgMd);
  if ((*(v47 + 48))(v45, 1, v46) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v45, &_s8PaperKit5ShapeV14MutatingActionVSgMd);
  }

  _s8PaperKit9ShapeTypeOWObTm_0(v45, v126, type metadata accessor for Shape.MutatingAction);
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v50 = v85;
  (*(v85 + 16))(v39, v42, v37);
  CRRegister.projectedValue.setter();
  (*(v50 + 8))(v42, v37);
  v124 = type metadata accessor for Shape(0);
  CRRegister.apply(_:)();
  v121 = v46;
  v51 = v86;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v52 = v87;
  v85 = v87[2];
  (v85)(v34, v51, v32);
  CRRegister.projectedValue.setter();
  v87 = v52[1];
  (v87)(v51, v32);
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  (v85)(v34, v51, v32);
  CRRegister.projectedValue.setter();
  (v87)(v51, v32);
  v53 = v90;
  v54 = v123;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v55 = v125;
  v56 = *(v125 + 16);
  v86 = (v125 + 16);
  v87 = v56;
  (v56)(v122, v53, v54);
  v57 = v54;
  CRRegister.projectedValue.setter();
  v58 = *(v55 + 8);
  v125 = v55 + 8;
  v58(v53, v57);
  v59 = v88;
  v60 = v92;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v61 = v91;
  (*(v91 + 16))(v89, v59, v60);
  CRRegister.projectedValue.setter();
  (*(v61 + 8))(v59, v60);
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  (v87)(v122, v53, v57);
  CRRegister.projectedValue.setter();
  v58(v53, v57);
  v62 = v93;
  v63 = v96;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v64 = v95;
  v125 = *(v95 + 16);
  v65 = v94;
  (v125)(v94, v62, v63);
  CRRegister.projectedValue.setter();
  v123 = *(v64 + 8);
  (v123)(v62, v63);
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  (v125)(v65, v62, v63);
  CRRegister.projectedValue.setter();
  (v123)(v62, v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v66 = v126;
  CRAttributedString.apply(_:)();
  v67 = v97;
  v68 = v100;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v69 = v99;
  (*(v99 + 16))(v98, v67, v68);
  CRRegister.projectedValue.setter();
  (*(v69 + 8))(v67, v68);
  v70 = v101;
  v71 = v104;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v72 = v103;
  (*(v103 + 16))(v102, v70, v71);
  CRRegister.projectedValue.setter();
  (*(v72 + 8))(v70, v71);
  v73 = v105;
  v74 = v108;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v75 = v107;
  (*(v107 + 16))(v106, v73, v74);
  CRRegister.projectedValue.setter();
  (*(v75 + 8))(v73, v74);
  v76 = v109;
  v77 = v112;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v78 = v111;
  (*(v111 + 16))(v110, v76, v77);
  CRRegister.projectedValue.setter();
  (*(v78 + 8))(v76, v77);
  v79 = v113;
  v80 = v116;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v81 = v115;
  (*(v115 + 16))(v114, v79, v80);
  CRRegister.projectedValue.setter();
  (*(v81 + 8))(v79, v80);
  v82 = v117;
  v83 = v120;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v84 = v119;
  (*(v119 + 16))(v118, v82, v83);
  CRRegister.projectedValue.setter();
  (*(v84 + 8))(v82, v83);
  return _s8PaperKit9ShapeTypeOWOhTm_1(v66, type metadata accessor for Shape.MutatingAction);
}

uint64_t Shape.hasDelta(from:)(uint64_t a1)
{
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGMd);
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v106 = &v104 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v105 = &v104 - v5;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMd);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v110 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v109 = &v104 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMd);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v114 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v113 = &v104 - v11;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v118 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v117 = &v104 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v123 = *(v15 - 8);
  v124 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v122 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v121 = &v104 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
  v127 = *(v19 - 8);
  v128 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v126 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v125 = &v104 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
  v131 = *(v23 - 8);
  v132 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v130 = &v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v129 = &v104 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v135 = *(v27 - 8);
  v136 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v134 = &v104 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v133 = &v104 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v137 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v139 = &v104 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v138 = &v104 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v140 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v104 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v104 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v104 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v104 - v46;
  v142 = v1;
  CRRegister.projectedValue.getter();
  v141 = a1;
  CRRegister.projectedValue.getter();
  v48 = CRRegister.hasDelta(from:)();
  v49 = *(v42 + 8);
  v49(v44, v41);
  v49(v47, v41);
  if (v48 & 1) != 0 || (type metadata accessor for Shape(0), (CRRegister.hasDelta(from:)()) || (v50 = v31, CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), v51 = CRRegister.hasDelta(from:)(), v52 = *(v140 + 8), v52(v37, v35), v52(v40, v35), (v51) || (CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), v53 = CRRegister.hasDelta(from:)(), v52(v37, v35), v52(v40, v35), (v53) || (v54 = v138, CRRegister.projectedValue.getter(), v55 = v139, CRRegister.projectedValue.getter(), v56 = CRRegister.hasDelta(from:)(), v57 = *(v137 + 1), v57(v55, v50), v57(v54, v50), (v56) || (v137 = v57, v58 = v133, v59 = v136, CRRegister.projectedValue.getter(), v60 = v134, CRRegister.projectedValue.getter(), LODWORD(v140) = CRRegister.hasDelta(from:)(), v61 = *(v135 + 8), v61(v60, v59), v61(v58, v59), (v140) || (v62 = v138, CRRegister.projectedValue.getter(), v63 = v139, CRRegister.projectedValue.getter(), v64 = CRRegister.hasDelta(from:)(), v65 = v137, v137(v63, v50), v65(v62, v50), (v64) || (v66 = v129, v67 = v132, CRRegister.projectedValue.getter(), v68 = v130, CRRegister.projectedValue.getter(), v69 = CRRegister.hasDelta(from:)(), v70 = *(v131 + 8), v70(v68, v67), v70(v66, v67), (v69) || (CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), v71 = CRRegister.hasDelta(from:)(), v70(v68, v67), v70(v66, v67), (v71) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd), (CRAttributedString.hasDelta(from:)()) || (v72 = v125, v73 = v128, CRRegister.projectedValue.getter(), v74 = v126, CRRegister.projectedValue.getter(), v75 = CRRegister.hasDelta(from:)(), v76 = *(v127 + 8), v76(v74, v73), v76(v72, v73), (v75) || (v77 = v121, v78 = v124, CRRegister.projectedValue.getter(), v79 = v122, CRRegister.projectedValue.getter(), v80 = CRRegister.hasDelta(from:)(), v81 = *(v123 + 8), v81(v79, v78), v81(v77, v78), (v80) || (v82 = v117, v83 = v120, CRRegister.projectedValue.getter(), v84 = v118, CRRegister.projectedValue.getter(), v85 = CRRegister.hasDelta(from:)(), v86 = *(v119 + 8), v86(v84, v83), v86(v82, v83), (v85) || (v87 = v113, v88 = v116, CRRegister.projectedValue.getter(), v89 = v114, CRRegister.projectedValue.getter(), v90 = CRRegister.hasDelta(from:)(), v91 = *(v115 + 8), v91(v89, v88), v91(v87, v88), (v90) || (v92 = v109, v93 = v112, CRRegister.projectedValue.getter(), v94 = v110, CRRegister.projectedValue.getter(), v95 = CRRegister.hasDelta(from:)(), v96 = *(v111 + 8), v96(v94, v93), v96(v92, v93), (v95) || (v97 = v105, v98 = v108, CRRegister.projectedValue.getter(), v99 = v106, CRRegister.projectedValue.getter(), v100 = CRRegister.hasDelta(from:)(), v101 = *(v107 + 8), v101(v99, v98), v101(v97, v98), (v100))
  {
    v102 = 1;
  }

  else
  {
    v102 = UnknownProperties.hasDelta(from:)();
  }

  return v102 & 1;
}

uint64_t Shape.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v158 = a1;
  v164 = a2;
  v4 = type metadata accessor for UnknownProperties();
  v156 = *(v4 - 8);
  v157 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v155 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGMd);
  v7 = *(v6 - 8);
  v153 = v6;
  v154 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v152 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v151 = &v117 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMd);
  v12 = *(v11 - 8);
  v149 = v11;
  v150 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v148 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v147 = &v117 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMd);
  v17 = *(v16 - 8);
  v145 = v16;
  v146 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v144 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v143 = &v117 - v20;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v142 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v140 = &v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v139 = &v117 - v23;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v138 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v136 = &v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v135 = &v117 - v26;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
  v134 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v132 = &v117 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v131 = &v117 - v29;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v130 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v128 = &v117 - v30;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
  v162 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v126 = &v117 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v125 = &v117 - v33;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v124 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v122 = &v117 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v121 = &v117 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v161 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v117 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v120 = &v117 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v165 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v159 = &v117 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v160 = &v117 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v47 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v117 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v117 - v51;
  v163 = v2;
  _s8PaperKit9ShapeTypeOWOcTm_3(v2, a2, type metadata accessor for Shape);
  CRRegister.projectedValue.getter();
  CRRegister.copy(renamingReferences:)();
  v53 = *(v47 + 8);
  v53(v49, v46);
  (*(v47 + 16))(v49, v52, v46);
  v54 = v164;
  CRRegister.projectedValue.setter();
  v53(v52, v46);
  v55 = type metadata accessor for Shape(0);
  v56 = v160;
  v119 = v42;
  CRRegister.copy(renamingReferences:)();
  (*(v165 + 5))(v54 + v55[5], v56, v42);
  CRRegister.projectedValue.getter();
  v57 = v120;
  CRRegister.copy(renamingReferences:)();
  v58 = v161;
  v59 = v161[1];
  v59(v39, v37);
  v60 = v58[2];
  v161 = v58 + 2;
  v118 = v60;
  v60(v39, v57, v37);
  CRRegister.projectedValue.setter();
  v59(v57, v37);
  CRRegister.projectedValue.getter();
  CRRegister.copy(renamingReferences:)();
  v59(v39, v37);
  v118(v39, v57, v37);
  CRRegister.projectedValue.setter();
  v59(v57, v37);
  v61 = v159;
  v62 = v119;
  CRRegister.projectedValue.getter();
  v63 = v160;
  CRRegister.copy(renamingReferences:)();
  v64 = v165;
  v65 = *(v165 + 1);
  v118 = (v165 + 8);
  v66 = v62;
  v65(v61, v62);
  v120 = v65;
  v67 = *(v64 + 2);
  v165 = v64 + 16;
  v161 = v67;
  (v67)(v61, v63, v62);
  CRRegister.projectedValue.setter();
  v65(v63, v62);
  v68 = v122;
  v69 = v123;
  CRRegister.projectedValue.getter();
  v70 = v121;
  CRRegister.copy(renamingReferences:)();
  v71 = v124;
  v72 = *(v124 + 8);
  v72(v68, v69);
  (*(v71 + 16))(v68, v70, v69);
  CRRegister.projectedValue.setter();
  v72(v70, v69);
  v73 = v159;
  CRRegister.projectedValue.getter();
  v74 = v160;
  CRRegister.copy(renamingReferences:)();
  v75 = v120;
  (v120)(v73, v66);
  (v161)(v73, v74, v66);
  CRRegister.projectedValue.setter();
  v75(v74, v66);
  v76 = v126;
  v77 = v127;
  CRRegister.projectedValue.getter();
  v78 = v125;
  CRRegister.copy(renamingReferences:)();
  v79 = v162;
  v80 = *(v162 + 8);
  v80(v76, v77);
  v81 = *(v79 + 16);
  v162 = v79 + 16;
  v165 = v81;
  (v81)(v76, v78, v77);
  v82 = v164;
  CRRegister.projectedValue.setter();
  v80(v78, v77);
  CRRegister.projectedValue.getter();
  CRRegister.copy(renamingReferences:)();
  v80(v76, v77);
  (v165)(v76, v78, v77);
  CRRegister.projectedValue.setter();
  v80(v78, v77);
  v83 = v128;
  v84 = v129;
  CRAttributedString.copy(renamingReferences:)();
  (*(v130 + 40))(v82 + v55[13], v83, v84);
  v85 = v132;
  v86 = v133;
  CRRegister.projectedValue.getter();
  v87 = v131;
  CRRegister.copy(renamingReferences:)();
  v88 = v134;
  v89 = *(v134 + 8);
  v89(v85, v86);
  (*(v88 + 16))(v85, v87, v86);
  CRRegister.projectedValue.setter();
  v89(v87, v86);
  v90 = v136;
  v91 = v137;
  CRRegister.projectedValue.getter();
  v92 = v135;
  CRRegister.copy(renamingReferences:)();
  v93 = v138;
  v94 = *(v138 + 8);
  v94(v90, v91);
  (*(v93 + 16))(v90, v92, v91);
  CRRegister.projectedValue.setter();
  v94(v92, v91);
  v95 = v140;
  v96 = v141;
  CRRegister.projectedValue.getter();
  v97 = v139;
  CRRegister.copy(renamingReferences:)();
  v98 = v142;
  v99 = *(v142 + 8);
  v99(v95, v96);
  (*(v98 + 16))(v95, v97, v96);
  CRRegister.projectedValue.setter();
  v99(v97, v96);
  v100 = v144;
  v101 = v145;
  CRRegister.projectedValue.getter();
  v102 = v143;
  CRRegister.copy(renamingReferences:)();
  v103 = v146;
  v104 = *(v146 + 8);
  v104(v100, v101);
  (*(v103 + 16))(v100, v102, v101);
  CRRegister.projectedValue.setter();
  v104(v102, v101);
  v106 = v148;
  v105 = v149;
  CRRegister.projectedValue.getter();
  v107 = v147;
  CRRegister.copy(renamingReferences:)();
  v108 = v150;
  v109 = *(v150 + 8);
  v109(v106, v105);
  (*(v108 + 16))(v106, v107, v105);
  CRRegister.projectedValue.setter();
  v109(v107, v105);
  v111 = v152;
  v110 = v153;
  CRRegister.projectedValue.getter();
  v112 = v151;
  CRRegister.copy(renamingReferences:)();
  v113 = v154;
  v114 = *(v154 + 8);
  v114(v111, v110);
  (*(v113 + 16))(v111, v112, v110);
  CRRegister.projectedValue.setter();
  v114(v112, v110);
  v115 = v155;
  UnknownProperties.copy(renamingReferences:)();
  return (*(v156 + 40))(v82 + v55[20], v115, v157);
}

uint64_t Shape.init(defaultState:)@<X0>(uint64_t a1@<X8>)
{
  v103 = type metadata accessor for UnknownProperties();
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v106 = &v102 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGMd);
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v109 = &v102 - v3;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMd);
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v113 = &v102 - v4;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMd);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v117 = &v102 - v5;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v122 = &v102 - v6;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v126 = &v102 - v7;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v130 = &v102 - v8;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v128 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v133 = &v102 - v9;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
  v135 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v136 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v140 = &v102 - v12;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v143 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v146 = &v102 - v13;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v150 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v152 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v157 = &v102 - v16;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v158 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v142 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v148 = &v102 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v159 = &v102 - v21;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v155 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v173 = &v102 - v22;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd);
  MEMORY[0x1EEE9AC00](v175);
  v172 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v171 = &v102 - v25;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd);
  MEMORY[0x1EEE9AC00](v176);
  v170 = &v102 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v169 = &v102 - v28;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v177);
  v166 = &v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v165 = &v102 - v31;
  v178 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v178);
  v164 = &v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v163 = &v102 - v34;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v179);
  v36 = &v102 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v102 - v38;
  type metadata accessor for CGRect(0);
  v168 = v40;
  v167 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_13(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
  v180 = 0u;
  v181 = 0u;
  CRRegister.init(wrappedValue:)();
  v41 = type metadata accessor for Shape(0);
  v42 = *(v41 + 20);
  v43 = v41;
  v162 = v41;
  *&v180 = 0;
  v183 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v154 = v42;
  v160 = a1;
  CRRegister.init(_:)();
  v44 = *(v43 + 24);
  v45 = type metadata accessor for Color(0);
  v161 = *(*(v45 - 8) + 56);
  v161(v39, 1, 1, v45);
  outlined init with copy of Date?(v39, v36, &_s8PaperKit5ColorVSgMd);
  v46 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
  v149 = v44;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v39, &_s8PaperKit5ColorVSgMd);
  v47 = v162;
  v48 = v162[7];
  v161(v39, 1, 1, v45);
  outlined init with copy of Date?(v39, v36, &_s8PaperKit5ColorVSgMd);
  v147 = v48;
  v49 = v160;
  v161 = v46;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v39, &_s8PaperKit5ColorVSgMd);
  v50 = v47[8];
  *&v180 = 0x4014000000000000;
  v145 = v50;
  v51 = v49;
  CRRegister.init(wrappedValue:)();
  v52 = v47[9];
  v53 = v163;
  swift_storeEnumTagMultiPayload();
  _s8PaperKit9ShapeTypeOWOcTm_3(v53, v164, type metadata accessor for ShapeType);
  v54 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_13(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, type metadata accessor for ShapeType);
  v141 = v52;
  v164 = v54;
  CRRegister.init(wrappedValue:)();
  _s8PaperKit9ShapeTypeOWOhTm_1(v53, type metadata accessor for ShapeType);
  v55 = v47[10];
  *&v180 = 0x3FF0000000000000;
  v139 = v55;
  CRRegister.init(wrappedValue:)();
  v56 = v47[11];
  *&v180 = 0;
  BYTE8(v180) = 0;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
  v58 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
  v134 = v56;
  CRRegister.init(wrappedValue:)();
  v59 = v47[12];
  *&v180 = 0;
  BYTE8(v180) = 0;
  v132 = v59;
  v163 = v57;
  v138 = v58;
  CRRegister.init(wrappedValue:)();
  v60 = v47[13];
  v61 = lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
  v127 = v60;
  v131 = v61;
  CRAttributedString.init(_:)();
  v62 = v47[14];
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
  v64 = v165;
  (*(*(v63 - 8) + 56))(v165, 1, 1, v63);
  outlined init with copy of Date?(v64, v166, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  v65 = lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
  v123 = v62;
  v166 = v65;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v64, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  v66 = v47[15];
  *&v180 = 0;
  v67 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
  v119 = v66;
  v165 = v67;
  CRRegister.init(wrappedValue:)();
  v68 = v47[16];
  *&v180 = 0;
  v69 = lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
  v114 = v68;
  v118 = v69;
  CRRegister.init(wrappedValue:)();
  v70 = v47[17];
  v71 = type metadata accessor for StrokeStyle(0);
  v72 = v169;
  (*(*(v71 - 8) + 56))(v169, 1, 1, v71);
  outlined init with copy of Date?(v72, v170, &_s8PaperKit11StrokeStyleOSgMd);
  v73 = lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
  v110 = v70;
  v170 = v73;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v72, &_s8PaperKit11StrokeStyleOSgMd);
  v74 = v47[18];
  v75 = type metadata accessor for Shadow();
  v76 = v171;
  (*(*(v75 - 8) + 56))(v171, 1, 1, v75);
  outlined init with copy of Date?(v76, v172, &_s8PaperKit6ShadowVSgMd);
  v77 = lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v76, &_s8PaperKit6ShadowVSgMd);
  v78 = v47[19];
  v181 = 0u;
  v182 = 0u;
  v180 = 0u;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
  v80 = lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
  v81 = v51;
  CRRegister.init(wrappedValue:)();
  v82 = v47[20];
  UnknownProperties.init()();
  v83 = v174;
  v84 = v173;
  CRRegister.init(defaultState:)();
  if (v83)
  {
    return _s8PaperKit9ShapeTypeOWOhTm_1(v51, type metadata accessor for Shape);
  }

  v168 = v78;
  v169 = v80;
  v171 = v79;
  v174 = v77;
  v167 = v82;
  v172 = v74;
  v85 = v154;
  v86 = v157;
  v87 = v158;
  (*(v155 + 40))(v51, v84, v156);
  CRRegister.init(defaultState:)();
  v88 = *(v87 + 40);
  v88(v51 + v85, v159, v153);
  CRRegister.init(defaultState:)();
  v173 = v88;
  v158 = v87 + 40;
  v89 = *(v150 + 40);
  v90 = v151;
  v89(v51 + v149, v86, v151);
  v91 = v152;
  CRRegister.init(defaultState:)();
  v89(v81 + v147, v91, v90);
  v92 = v148;
  CRRegister.init(defaultState:)();
  v93 = v173;
  (v173)(v81 + v145, v92, v153);
  v94 = v146;
  CRRegister.init(defaultState:)();
  (*(v143 + 40))(v81 + v141, v94, v144);
  v95 = v142;
  CRRegister.init(defaultState:)();
  v93(v81 + v139, v95, v153);
  v96 = v140;
  CRRegister.init(defaultState:)();
  v97 = *(v135 + 40);
  v98 = v137;
  v97(v81 + v134, v96, v137);
  v99 = v136;
  CRRegister.init(defaultState:)();
  v97(v81 + v132, v99, v98);
  v100 = v133;
  CRAttributedString.init(defaultState:)();
  (*(v128 + 40))(v81 + v127, v100, v129);
  CRRegister.init(defaultState:)();
  (*(v124 + 40))(v81 + v123, v130, v125);
  CRRegister.init(defaultState:)();
  (*(v120 + 40))(v81 + v119, v126, v121);
  CRRegister.init(defaultState:)();
  (*(v115 + 40))(v81 + v114, v122, v116);
  CRRegister.init(defaultState:)();
  (*(v111 + 40))(v81 + v110, v117, v112);
  CRRegister.init(defaultState:)();
  (*(v107 + 40))(v81 + v172, v113, v108);
  CRRegister.init(defaultState:)();
  (*(v104 + 40))(v81 + v168, v109, v105);
  UnknownProperties.init(defaultState:)();
  return (*(v102 + 40))(v81 + v167, v106, v103);
}

uint64_t Shape.isDefaultState.getter()
{
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGMd);
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v60 - v1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMd);
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v60 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMd);
  v68 = *(v3 - 8);
  v69 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v67 = &v60 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v71 = *(v5 - 8);
  v72 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v70 = &v60 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v74 = *(v7 - 8);
  v75 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v60 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
  v77 = *(v9 - 8);
  v78 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v60 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
  v80 = *(v11 - 8);
  v81 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v79 = &v60 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v82 = *(v13 - 8);
  v83 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v60 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v84 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v60 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v60 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v60 - v25;
  v85 = type metadata accessor for Shape(0);
  v86 = v0;
  if (UnknownProperties.isDefaultState.getter() & 1) != 0 && (CRRegister.projectedValue.getter(), v27 = CRRegister.isDefaultState.getter(), (*(v24 + 8))(v26, v23), (v27) && (CRRegister.isDefaultState.getter() & 1) != 0 && (CRRegister.projectedValue.getter(), v28 = CRRegister.isDefaultState.getter(), v29 = *(v20 + 8), v29(v22, v19), (v28) && (CRRegister.projectedValue.getter(), v30 = CRRegister.isDefaultState.getter(), v29(v22, v19), (v30) && (CRRegister.projectedValue.getter(), v31 = CRRegister.isDefaultState.getter(), v32 = *(v84 + 8), v32(v18, v16), (v31) && (v33 = v83, CRRegister.projectedValue.getter(), v34 = CRRegister.isDefaultState.getter(), (*(v82 + 8))(v15, v33), (v34) && (CRRegister.projectedValue.getter(), v35 = CRRegister.isDefaultState.getter(), v32(v18, v16), (v35) && (v36 = v79, v37 = v81, CRRegister.projectedValue.getter(), v38 = CRRegister.isDefaultState.getter(), v39 = *(v80 + 8), v39(v36, v37), (v38) && (CRRegister.projectedValue.getter(), v40 = CRRegister.isDefaultState.getter(), v39(v36, v37), (v40) && (__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd), (CRAttributedString.isDefaultState.getter()) && (v41 = v76, v42 = v78, CRRegister.projectedValue.getter(), v43 = CRRegister.isDefaultState.getter(), (*(v77 + 8))(v41, v42), (v43) && (v44 = v73, v45 = v75, CRRegister.projectedValue.getter(), v46 = CRRegister.isDefaultState.getter(), (*(v74 + 8))(v44, v45), (v46) && (v47 = v70, v48 = v72, CRRegister.projectedValue.getter(), v49 = CRRegister.isDefaultState.getter(), (*(v71 + 8))(v47, v48), (v49) && (v50 = v67, v51 = v69, CRRegister.projectedValue.getter(), v52 = CRRegister.isDefaultState.getter(), (*(v68 + 8))(v50, v51), (v52) && (v53 = v64, v54 = v66, CRRegister.projectedValue.getter(), v55 = CRRegister.isDefaultState.getter(), (*(v65 + 8))(v53, v54), (v55))
  {
    v56 = v61;
    v57 = v63;
    CRRegister.projectedValue.getter();
    v58 = CRRegister.isDefaultState.getter();
    (*(v62 + 8))(v56, v57);
  }

  else
  {
    v58 = 0;
  }

  return v58 & 1;
}

uint64_t Shape.visitReferences(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGMd);
  v1 = *(v0 - 8);
  v77 = v0;
  v78 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v76 = &v52 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMd);
  v4 = *(v3 - 8);
  v74 = v3;
  v75 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v73 = &v52 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMd);
  v7 = *(v6 - 8);
  v71 = v6;
  v72 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v70 = &v52 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v10 = *(v9 - 8);
  v68 = v9;
  v69 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v67 = &v52 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v13 = *(v12 - 8);
  v65 = v12;
  v66 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v52 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
  v16 = *(v15 - 8);
  v62 = v15;
  v63 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v61 = &v52 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
  v19 = *(v18 - 8);
  v59 = v18;
  v60 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v58 = &v52 - v20;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v57 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v52 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v54 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v52 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v53 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v52 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v52 - v30;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v29 + 8))(v31, v28);
  type metadata accessor for Shape(0);
  CRRegister.visitReferences(_:)();
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  v32 = *(v53 + 8);
  v32(v27, v25);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  v32(v27, v25);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  v33 = *(v54 + 8);
  v33(v24, v22);
  v34 = v55;
  v35 = v56;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v57 + 8))(v34, v35);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  v33(v24, v22);
  v37 = v58;
  v36 = v59;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  v38 = *(v60 + 8);
  v38(v37, v36);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  v38(v37, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  CRAttributedString.visitReferences(_:)();
  v40 = v61;
  v39 = v62;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v63 + 8))(v40, v39);
  v42 = v64;
  v41 = v65;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v66 + 8))(v42, v41);
  v44 = v67;
  v43 = v68;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v69 + 8))(v44, v43);
  v46 = v70;
  v45 = v71;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v72 + 8))(v46, v45);
  v48 = v73;
  v47 = v74;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v75 + 8))(v48, v47);
  v50 = v76;
  v49 = v77;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v78 + 8))(v50, v49);
  return UnknownProperties.visitReferences(_:)();
}

uint64_t Shape.newRefs(from:)(uint64_t a1)
{
  v2 = v1;
  v109[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGMd);
  v4 = *(v3 - 8);
  v141 = v3;
  v142 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v140 = v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v139 = v109 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMd);
  v9 = *(v8 - 8);
  v137 = v8;
  v138 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v136 = v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v135 = v109 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMd);
  v14 = *(v13 - 8);
  v133 = v13;
  v134 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v132 = v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v131 = v109 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v19 = *(v18 - 8);
  v129 = v18;
  v130 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v128 = v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v127 = v109 - v22;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v126 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v124 = v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v123 = v109 - v25;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
  v122 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v120 = v109 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v119 = v109 - v28;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
  v118 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v116 = v109 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v115 = v109 - v31;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v114 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v112 = v109 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v111 = v109 - v34;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v146 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v145 = v109 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v144 = v109 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v110 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v40 = v109 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = v109 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v45 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v47 = v109 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v50 = v109 - v49;
  v147 = MEMORY[0x1E69E7CD0];
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v51 = CRRegister.newRefs(from:)();
  v52 = *(v45 + 8);
  v52(v47, v44);
  v52(v50, v44);
  specialized Set.formUnion<A>(_:)(v51);
  type metadata accessor for Shape(0);
  v53 = CRRegister.newRefs(from:)();
  specialized Set.formUnion<A>(_:)(v53);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v54 = CRRegister.newRefs(from:)();
  v55 = *(v110 + 8);
  v55(v40, v38);
  v55(v43, v38);
  specialized Set.formUnion<A>(_:)(v54);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v56 = CRRegister.newRefs(from:)();
  v55(v40, v38);
  v55(v43, v38);
  specialized Set.formUnion<A>(_:)(v56);
  v109[2] = v2;
  v58 = v143;
  v57 = v144;
  CRRegister.projectedValue.getter();
  v59 = v145;
  CRRegister.projectedValue.getter();
  v60 = CRRegister.newRefs(from:)();
  v61 = *(v146 + 8);
  v146 += 8;
  v61(v59, v58);
  v61(v57, v58);
  specialized Set.formUnion<A>(_:)(v60);
  v62 = v111;
  v63 = v113;
  CRRegister.projectedValue.getter();
  v64 = v112;
  CRRegister.projectedValue.getter();
  v65 = CRRegister.newRefs(from:)();
  v66 = *(v114 + 8);
  v66(v64, v63);
  v66(v62, v63);
  specialized Set.formUnion<A>(_:)(v65);
  v67 = v144;
  CRRegister.projectedValue.getter();
  v68 = v145;
  CRRegister.projectedValue.getter();
  v69 = CRRegister.newRefs(from:)();
  v61(v68, v58);
  v61(v67, v58);
  specialized Set.formUnion<A>(_:)(v69);
  v70 = v115;
  v71 = v117;
  CRRegister.projectedValue.getter();
  v72 = v116;
  CRRegister.projectedValue.getter();
  v73 = CRRegister.newRefs(from:)();
  v74 = *(v118 + 8);
  v74(v72, v71);
  v74(v70, v71);
  specialized Set.formUnion<A>(_:)(v73);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v75 = CRRegister.newRefs(from:)();
  v74(v72, v71);
  v74(v70, v71);
  specialized Set.formUnion<A>(_:)(v75);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v76 = CRAttributedString.newRefs(from:)();
  specialized Set.formUnion<A>(_:)(v76);
  v77 = v119;
  v78 = v121;
  CRRegister.projectedValue.getter();
  v79 = v120;
  CRRegister.projectedValue.getter();
  v80 = CRRegister.newRefs(from:)();
  v81 = *(v122 + 8);
  v81(v79, v78);
  v81(v77, v78);
  specialized Set.formUnion<A>(_:)(v80);
  v82 = v123;
  v83 = v125;
  CRRegister.projectedValue.getter();
  v84 = v124;
  CRRegister.projectedValue.getter();
  v85 = CRRegister.newRefs(from:)();
  v86 = *(v126 + 8);
  v86(v84, v83);
  v86(v82, v83);
  specialized Set.formUnion<A>(_:)(v85);
  v87 = v127;
  v88 = v129;
  CRRegister.projectedValue.getter();
  v89 = v128;
  CRRegister.projectedValue.getter();
  v90 = CRRegister.newRefs(from:)();
  v91 = *(v130 + 8);
  v91(v89, v88);
  v91(v87, v88);
  specialized Set.formUnion<A>(_:)(v90);
  v92 = v131;
  v93 = v133;
  CRRegister.projectedValue.getter();
  v94 = v132;
  CRRegister.projectedValue.getter();
  v95 = CRRegister.newRefs(from:)();
  v96 = *(v134 + 8);
  v96(v94, v93);
  v96(v92, v93);
  specialized Set.formUnion<A>(_:)(v95);
  v97 = v135;
  v98 = v137;
  CRRegister.projectedValue.getter();
  v99 = v136;
  CRRegister.projectedValue.getter();
  v100 = CRRegister.newRefs(from:)();
  v101 = *(v138 + 8);
  v101(v99, v98);
  v101(v97, v98);
  specialized Set.formUnion<A>(_:)(v100);
  v102 = v139;
  v103 = v141;
  CRRegister.projectedValue.getter();
  v104 = v140;
  CRRegister.projectedValue.getter();
  v105 = CRRegister.newRefs(from:)();
  v106 = *(v142 + 8);
  v106(v104, v103);
  v106(v102, v103);
  specialized Set.formUnion<A>(_:)(v105);
  v107 = UnknownProperties.newRefs(from:)();
  specialized Set.formUnion<A>(_:)(v107);
  return v147;
}

Swift::Bool __swiftcall Shape.needToFinalizeTimestamps()()
{
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGMd);
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v62 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMd);
  v66 = *(v2 - 8);
  v67 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v65 = &v62 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMd);
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v68 = &v62 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v72 = *(v6 - 8);
  v73 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v62 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v75 = *(v8 - 8);
  v76 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v74 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
  v78 = *(v10 - 8);
  v79 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v77 = &v62 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
  v81 = *(v12 - 8);
  v82 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v80 = &v62 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v83 = *(v14 - 8);
  v84 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v62 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v85 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v62 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v62 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v62 - v26;
  v86 = v0;
  CRRegister.projectedValue.getter();
  v28 = CRRegister.needToFinalizeTimestamps()();
  (*(v25 + 8))(v27, v24);
  v60 = v28 || (type metadata accessor for Shape(0), CRRegister.needToFinalizeTimestamps()()) || (CRRegister.projectedValue.getter(), v29 = CRRegister.needToFinalizeTimestamps()(), v30 = *(v21 + 8), v30(v23, v20), v29) || (CRRegister.projectedValue.getter(), v31 = CRRegister.needToFinalizeTimestamps()(), v30(v23, v20), v31) || (CRRegister.projectedValue.getter(), v32 = CRRegister.needToFinalizeTimestamps()(), v33 = *(v85 + 8), v33(v19, v17), v32) || (v34 = v84, CRRegister.projectedValue.getter(), v35 = CRRegister.needToFinalizeTimestamps()(), (*(v83 + 8))(v16, v34), v35) || (CRRegister.projectedValue.getter(), v36 = CRRegister.needToFinalizeTimestamps()(), v33(v19, v17), v36) || (v37 = v80, v38 = v82, CRRegister.projectedValue.getter(), v39 = CRRegister.needToFinalizeTimestamps()(), v40 = *(v81 + 8), v40(v37, v38), v39) || (CRRegister.projectedValue.getter(), v41 = CRRegister.needToFinalizeTimestamps()(), v40(v37, v38), v41) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd), CRAttributedString.needToFinalizeTimestamps()()) || (v42 = v77, v43 = v79, CRRegister.projectedValue.getter(), v44 = CRRegister.needToFinalizeTimestamps()(), (*(v78 + 8))(v42, v43), v44) || (v45 = v74, v46 = v76, CRRegister.projectedValue.getter(), v47 = CRRegister.needToFinalizeTimestamps()(), (*(v75 + 8))(v45, v46), v47) || (v48 = v71, v49 = v73, CRRegister.projectedValue.getter(), v50 = CRRegister.needToFinalizeTimestamps()(), (*(v72 + 8))(v48, v49), v50) || (v51 = v68, v52 = v70, CRRegister.projectedValue.getter(), v53 = CRRegister.needToFinalizeTimestamps()(), (*(v69 + 8))(v51, v52), v53) || (v54 = v65, v55 = v67, CRRegister.projectedValue.getter(), v56 = CRRegister.needToFinalizeTimestamps()(), (*(v66 + 8))(v54, v55), v56) || (v57 = v62, v58 = v64, CRRegister.projectedValue.getter(), v59 = CRRegister.needToFinalizeTimestamps()(), (*(v63 + 8))(v57, v58), v59) || UnknownProperties.needToFinalizeTimestamps()();
  return v60;
}

uint64_t Shape.finalizeTimestamps(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGMd);
  v3 = *(v2 - 8);
  v119 = v2;
  v120 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v118 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v117 = &v85 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMd);
  v8 = *(v7 - 8);
  v115 = v7;
  v116 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v114 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v113 = &v85 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMd);
  v13 = *(v12 - 8);
  v111 = v12;
  v112 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v110 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v109 = &v85 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v18 = *(v17 - 8);
  v107 = v17;
  v108 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v106 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v105 = &v85 - v21;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v104 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v102 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v101 = &v85 - v24;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
  v100 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v98 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v97 = &v85 - v27;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
  v125 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v95 = &v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v94 = &v85 - v30;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v93 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v91 = &v85 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v90 = &v85 - v33;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v124 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v123 = &v85 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v89 = &v85 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v88 = &v85 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v85 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v44 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v85 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v85 - v48;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  (*(v44 + 16))(v46, v49, v43);
  CRRegister.projectedValue.setter();
  (*(v44 + 8))(v49, v43);
  v85 = type metadata accessor for Shape(0);
  v50 = a1;
  CRRegister.finalizeTimestamps(_:)();
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v87 = *(v38 + 16);
  v51 = v88;
  v87(v88, v42, v37);
  CRRegister.projectedValue.setter();
  v86 = *(v38 + 8);
  v86(v42, v37);
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v87(v51, v42, v37);
  CRRegister.projectedValue.setter();
  v86(v42, v37);
  v52 = v89;
  v53 = v122;
  CRRegister.projectedValue.getter();
  v121 = v50;
  CRRegister.finalizeTimestamps(_:)();
  v54 = v124;
  v55 = *(v124 + 16);
  v87 = (v124 + 16);
  v88 = v55;
  (v55)(v123, v52, v53);
  CRRegister.projectedValue.setter();
  v56 = *(v54 + 8);
  v124 = v54 + 8;
  v86 = v56;
  v56(v52, v53);
  v57 = v90;
  v58 = v92;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v59 = v93;
  (*(v93 + 16))(v91, v57, v58);
  CRRegister.projectedValue.setter();
  (*(v59 + 8))(v57, v58);
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  (v88)(v123, v52, v53);
  CRRegister.projectedValue.setter();
  v86(v52, v53);
  v60 = v94;
  v61 = v96;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v62 = v125;
  v124 = *(v125 + 16);
  v63 = v95;
  (v124)(v95, v60, v61);
  CRRegister.projectedValue.setter();
  v64 = *(v62 + 8);
  v125 = v62 + 8;
  v64(v60, v61);
  CRRegister.projectedValue.getter();
  v65 = v121;
  CRRegister.finalizeTimestamps(_:)();
  (v124)(v63, v60, v61);
  CRRegister.projectedValue.setter();
  v64(v60, v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  CRAttributedString.finalizeTimestamps(_:)();
  v66 = v97;
  v67 = v99;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v68 = v100;
  (*(v100 + 16))(v98, v66, v67);
  CRRegister.projectedValue.setter();
  (*(v68 + 8))(v66, v67);
  v69 = v101;
  v70 = v103;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v71 = v104;
  (*(v104 + 16))(v102, v69, v70);
  CRRegister.projectedValue.setter();
  (*(v71 + 8))(v69, v70);
  v72 = v105;
  v73 = v107;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v74 = v108;
  (*(v108 + 16))(v106, v72, v73);
  CRRegister.projectedValue.setter();
  (*(v74 + 8))(v72, v73);
  v75 = v109;
  v76 = v111;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v77 = v112;
  (*(v112 + 16))(v110, v75, v76);
  CRRegister.projectedValue.setter();
  (*(v77 + 8))(v75, v76);
  v78 = v113;
  v79 = v115;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v80 = v116;
  (*(v116 + 16))(v114, v78, v79);
  CRRegister.projectedValue.setter();
  (*(v80 + 8))(v78, v79);
  v81 = v117;
  v82 = v119;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v83 = v120;
  (*(v120 + 16))(v118, v81, v82);
  CRRegister.projectedValue.setter();
  (*(v83 + 8))(v81, v82);
  return MEMORY[0x1DA6CBA30](v65);
}

uint64_t Shape.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v334 = a1;
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGMd);
  v264 = *(v265 - 8);
  MEMORY[0x1EEE9AC00](v265);
  v263 = &v262 - v2;
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMd);
  v270 = *(v271 - 8);
  MEMORY[0x1EEE9AC00](v271);
  v269 = &v262 - v3;
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMd);
  v275 = *(v276 - 8);
  MEMORY[0x1EEE9AC00](v276);
  v274 = &v262 - v4;
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v280 = *(v281 - 8);
  MEMORY[0x1EEE9AC00](v281);
  v279 = &v262 - v5;
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v284 = *(v285 - 8);
  MEMORY[0x1EEE9AC00](v285);
  v283 = &v262 - v6;
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
  v289 = *(v290 - 8);
  MEMORY[0x1EEE9AC00](v290);
  v288 = &v262 - v7;
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
  v303 = *(v299 - 8);
  MEMORY[0x1EEE9AC00](v299);
  v295 = &v262 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v298 = &v262 - v10;
  v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v307 = *(v308 - 8);
  MEMORY[0x1EEE9AC00](v308);
  v306 = &v262 - v11;
  v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v315 = *(v322 - 1);
  MEMORY[0x1EEE9AC00](v322);
  v302 = &v262 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v311 = &v262 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v319 = *(v15 - 8);
  v320 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v314 = &v262 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v318 = &v262 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v325 = *(v19 - 8);
  v326 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v324 = &v262 - v20;
  v21 = type metadata accessor for CRCodableVersion();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v268 = &v262 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v266 = &v262 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v267 = &v262 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v272 = &v262 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v273 = &v262 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v277 = &v262 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v278 = &v262 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v262 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v282 = &v262 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v286 = &v262 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v287 = &v262 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v291 = &v262 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v292 = &v262 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v293 = &v262 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v294 = &v262 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v296 = &v262 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v297 = &v262 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v300 = &v262 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v301 = &v262 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v304 = &v262 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v305 = &v262 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v309 = &v262 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v310 = &v262 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v312 = &v262 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v313 = &v262 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v316 = &v262 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v317 = &v262 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v262 - v78;
  MEMORY[0x1EEE9AC00](v80);
  v321 = &v262 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v262 - v83;
  MEMORY[0x1EEE9AC00](v85);
  v87 = &v262 - v86;
  MEMORY[0x1EEE9AC00](v88);
  v90 = &v262 - v89;
  MEMORY[0x1EEE9AC00](v91);
  v93 = &v262 - v92;
  v323 = type metadata accessor for Shape(0);
  v331 = v1;
  UnknownProperties.minEncodingVersion.getter();
  v94 = *(v22 + 104);
  v329 = *MEMORY[0x1E6995288];
  v330 = v22 + 104;
  v328 = v94;
  v94(v90);
  v333 = v93;
  v95 = static CRCodableVersion.== infix(_:_:)();
  v96 = (v22 + 8);
  v97 = *(v22 + 8);
  v327 = v90;
  v332 = v21;
  v97(v90, v21);
  if (v95)
  {
    return (*(v22 + 32))(v334, v333, v332);
  }

  v99 = v324;
  v100 = v326;
  CRRegister.projectedValue.getter();
  CRRegister.minEncodingVersion.getter();
  (*(v325 + 8))(v99, v100);
  v101 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_13(&lazy protocol witness table cache variable for type CRCodableVersion and conformance CRCodableVersion, MEMORY[0x1E6995298]);
  v103 = v332;
  v102 = v333;
  v326 = v101;
  v104 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v105 = (v104 & 1) == 0;
  if (v104)
  {
    v106 = v102;
  }

  else
  {
    v106 = v84;
  }

  if (v105)
  {
    v107 = v102;
  }

  else
  {
    v107 = v84;
  }

  v97(v106, v103);
  v110 = *(v22 + 32);
  v108 = v22 + 32;
  v109 = v110;
  v110(v87, v107, v103);
  v110(v102, v87, v103);
  v111 = v327;
  v328(v327, v329, v103);
  v112 = static CRCodableVersion.== infix(_:_:)();
  v97(v111, v103);
  if (v112)
  {
    return v109(v334, v102, v103);
  }

  v324 = v38;
  CRRegister.minEncodingVersion.getter();
  v113 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v114 = (v113 & 1) == 0;
  v115 = (v113 & 1) != 0 ? v102 : v79;
  v116 = v114 ? v102 : v79;
  v97(v115, v103);
  v117 = v321;
  v109(v321, v116, v103);
  v325 = v108;
  v109(v102, v117, v103);
  v328(v111, v329, v103);
  v118 = static CRCodableVersion.== infix(_:_:)();
  v97(v111, v103);
  if (v118)
  {
    return v109(v334, v102, v103);
  }

  v119 = v318;
  v120 = v320;
  CRRegister.projectedValue.getter();
  v121 = v316;
  CRRegister.minEncodingVersion.getter();
  v319 = *(v319 + 8);
  (v319)(v119, v120);
  v122 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v123 = (v122 & 1) == 0;
  v124 = (v122 & 1) != 0 ? v102 : v121;
  v125 = v123 ? v102 : v121;
  v126 = v327;
  v97(v124, v103);
  v127 = v317;
  v109(v317, v125, v103);
  v109(v102, v127, v103);
  v328(v126, v329, v103);
  v128 = static CRCodableVersion.== infix(_:_:)();
  v321 = v97;
  v97(v126, v103);
  if (v128)
  {
    return v109(v334, v102, v103);
  }

  v129 = v314;
  CRRegister.projectedValue.getter();
  v130 = v312;
  CRRegister.minEncodingVersion.getter();
  (v319)(v129, v120);
  v131 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v132 = (v131 & 1) == 0;
  v133 = (v131 & 1) != 0 ? v102 : v130;
  v134 = v132 ? v102 : v130;
  v135 = v321;
  (v321)(v133, v103);
  v136 = v313;
  v109(v313, v134, v103);
  v109(v102, v136, v103);
  v328(v126, v329, v103);
  v137 = static CRCodableVersion.== infix(_:_:)();
  v135(v126, v103);
  if (v137)
  {
    return v109(v334, v102, v103);
  }

  v262 = v109;
  v138 = v311;
  v139 = v322;
  CRRegister.projectedValue.getter();
  v140 = v135;
  v141 = v309;
  CRRegister.minEncodingVersion.getter();
  v142 = *(v315 + 8);
  v143 = v262;
  v315 += 8;
  v320 = v142;
  v142(v138, v139);
  v144 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v145 = (v144 & 1) == 0;
  if (v144)
  {
    v146 = v102;
  }

  else
  {
    v146 = v141;
  }

  if (v145)
  {
    v147 = v102;
  }

  else
  {
    v147 = v141;
  }

  v148 = v140;
  v149 = v96;
  v148(v146, v103);
  v150 = v310;
  v143(v310, v147, v103);
  v143(v102, v150, v103);
  v328(v126, v329, v103);
  v151 = static CRCodableVersion.== infix(_:_:)();
  v148(v126, v103);
  if (v151)
  {
    return (v143)(v334, v102, v103);
  }

  v152 = v306;
  v153 = v308;
  CRRegister.projectedValue.getter();
  v154 = v304;
  CRRegister.minEncodingVersion.getter();
  v155 = v152;
  v156 = v262;
  (*(v307 + 8))(v155, v153);
  v157 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v158 = (v157 & 1) == 0;
  if (v157)
  {
    v159 = v102;
  }

  else
  {
    v159 = v154;
  }

  if (v158)
  {
    v160 = v102;
  }

  else
  {
    v160 = v154;
  }

  v148(v159, v103);
  v161 = v305;
  v156(v305, v160, v103);
  v156(v102, v161, v103);
  v328(v126, v329, v103);
  v162 = static CRCodableVersion.== infix(_:_:)();
  v148(v126, v103);
  if (v162)
  {
    goto LABEL_62;
  }

  v163 = v322;
  v164 = v302;
  CRRegister.projectedValue.getter();
  v165 = v300;
  CRRegister.minEncodingVersion.getter();
  v320(v164, v163);
  v166 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v167 = (v166 & 1) == 0;
  v168 = (v166 & 1) != 0 ? v102 : v165;
  v169 = v167 ? v102 : v165;
  v156 = v262;
  v148(v168, v103);
  v170 = v301;
  v156(v301, v169, v103);
  v156(v102, v170, v103);
  v328(v126, v329, v103);
  v171 = static CRCodableVersion.== infix(_:_:)();
  v148(v126, v103);
  if (v171)
  {
    goto LABEL_62;
  }

  v172 = v298;
  v173 = v299;
  CRRegister.projectedValue.getter();
  v174 = v296;
  CRRegister.minEncodingVersion.getter();
  v175 = *(v303 + 8);
  v303 += 8;
  v322 = v175;
  (v175)(v172, v173);
  v176 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v177 = (v176 & 1) == 0;
  v178 = (v176 & 1) != 0 ? v102 : v174;
  v179 = v177 ? v102 : v174;
  v156 = v262;
  v148(v178, v103);
  v180 = v297;
  v156(v297, v179, v103);
  v156(v102, v180, v103);
  v328(v126, v329, v103);
  v181 = static CRCodableVersion.== infix(_:_:)();
  v148(v126, v103);
  if (v181)
  {
    goto LABEL_62;
  }

  v320 = v149;
  v184 = v295;
  v185 = v299;
  CRRegister.projectedValue.getter();
  v186 = v293;
  CRRegister.minEncodingVersion.getter();
  (v322)(v184, v185);
  v187 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v188 = (v187 & 1) == 0;
  if (v187)
  {
    v189 = v102;
  }

  else
  {
    v189 = v186;
  }

  if (v188)
  {
    v190 = v102;
  }

  else
  {
    v190 = v186;
  }

  v148(v189, v103);
  v191 = v294;
  v156(v294, v190, v103);
  v156(v102, v191, v103);
  v328(v126, v329, v103);
  v192 = static CRCodableVersion.== infix(_:_:)();
  v148(v126, v103);
  if (v192)
  {
    return (v262)(v334, v102, v103);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v193 = v291;
  CRAttributedString.minEncodingVersion.getter();
  v194 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v195 = (v194 & 1) == 0;
  if (v194)
  {
    v196 = v102;
  }

  else
  {
    v196 = v193;
  }

  if (v195)
  {
    v197 = v102;
  }

  else
  {
    v197 = v193;
  }

  v148(v196, v103);
  v198 = v292;
  v156 = v262;
  v262(v292, v197, v103);
  v156(v102, v198, v103);
  v328(v126, v329, v103);
  v199 = static CRCodableVersion.== infix(_:_:)();
  v148(v126, v103);
  v182 = v334;
  if (v199)
  {
    goto LABEL_63;
  }

  v200 = v148;
  v201 = v288;
  v202 = v290;
  CRRegister.projectedValue.getter();
  v203 = v286;
  CRRegister.minEncodingVersion.getter();
  (*(v289 + 8))(v201, v202);
  v204 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v205 = (v204 & 1) == 0;
  if (v204)
  {
    v206 = v102;
  }

  else
  {
    v206 = v203;
  }

  if (v205)
  {
    v207 = v102;
  }

  else
  {
    v207 = v203;
  }

  v200(v206, v103);
  v208 = v287;
  v156(v287, v207, v103);
  v156(v102, v208, v103);
  v209 = v327;
  v328(v327, v329, v103);
  v210 = static CRCodableVersion.== infix(_:_:)();
  v200(v209, v103);
  if (v210)
  {
LABEL_62:
    v182 = v334;
LABEL_63:
    v183 = v102;
    return (v156)(v182, v183, v103);
  }

  v211 = v283;
  v212 = v285;
  CRRegister.projectedValue.getter();
  v213 = v324;
  CRRegister.minEncodingVersion.getter();
  v214 = v212;
  v102 = v333;
  (*(v284 + 8))(v211, v214);
  v215 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v216 = (v215 & 1) == 0;
  v217 = (v215 & 1) != 0 ? v102 : v213;
  v218 = v216 ? v102 : v213;
  v200(v217, v103);
  v219 = v282;
  v156(v282, v218, v103);
  v156(v102, v219, v103);
  v220 = v327;
  v328(v327, v329, v103);
  v221 = static CRCodableVersion.== infix(_:_:)();
  v200(v220, v103);
  if (v221)
  {
    return (v262)(v334, v102, v103);
  }

  v222 = v279;
  v223 = v281;
  CRRegister.projectedValue.getter();
  v224 = v277;
  CRRegister.minEncodingVersion.getter();
  v225 = v223;
  v102 = v333;
  (*(v280 + 8))(v222, v225);
  v226 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v227 = (v226 & 1) == 0;
  v228 = (v226 & 1) != 0 ? v102 : v224;
  v229 = v227 ? v102 : v224;
  v200(v228, v103);
  v230 = v278;
  v231 = v229;
  v232 = v262;
  v262(v278, v231, v103);
  v232(v102, v230, v103);
  v233 = v327;
  v328(v327, v329, v103);
  LOBYTE(v232) = static CRCodableVersion.== infix(_:_:)();
  v200(v233, v103);
  if (v232)
  {
    return (v262)(v334, v102, v103);
  }

  v234 = v102;
  v235 = v274;
  v156 = v262;
  v236 = v276;
  CRRegister.projectedValue.getter();
  v237 = v272;
  CRRegister.minEncodingVersion.getter();
  (*(v275 + 8))(v235, v236);
  v238 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v239 = (v238 & 1) == 0;
  if (v238)
  {
    v240 = v234;
  }

  else
  {
    v240 = v237;
  }

  if (v239)
  {
    v241 = v234;
  }

  else
  {
    v241 = v237;
  }

  v200(v240, v103);
  v242 = v273;
  v156(v273, v241, v103);
  v156(v234, v242, v103);
  v243 = v327;
  v328(v327, v329, v103);
  v244 = static CRCodableVersion.== infix(_:_:)();
  v200(v243, v103);
  if (v244)
  {
    v183 = v333;
    v182 = v334;
    return (v156)(v182, v183, v103);
  }

  v245 = v269;
  v246 = v271;
  CRRegister.projectedValue.getter();
  v247 = v266;
  CRRegister.minEncodingVersion.getter();
  (*(v270 + 8))(v245, v246);
  v248 = v333;
  v249 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v250 = (v249 & 1) == 0;
  if (v249)
  {
    v251 = v248;
  }

  else
  {
    v251 = v247;
  }

  if (v250)
  {
    v252 = v248;
  }

  else
  {
    v252 = v247;
  }

  v200(v251, v103);
  v253 = v267;
  v156(v267, v252, v103);
  v156(v248, v253, v103);
  v254 = v327;
  v328(v327, v329, v103);
  v255 = static CRCodableVersion.== infix(_:_:)();
  v200(v254, v103);
  if (v255)
  {
    v257 = v333;
    v256 = v334;
    v258 = v332;
  }

  else
  {
    v259 = v263;
    v260 = v265;
    CRRegister.projectedValue.getter();
    CRRegister.minEncodingVersion.getter();
    (*(v264 + 8))(v259, v260);
    if (dispatch thunk of static Comparable.>= infix(_:_:)())
    {
      v261 = v332;
      v200(v333, v332);
      v256 = v334;
      v257 = v268;
    }

    else
    {
      v261 = v332;
      v200(v268, v332);
      v257 = v333;
      v256 = v334;
    }

    v258 = v261;
  }

  return (v156)(v256, v257, v258);
}

uint64_t Shape.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v190 = a2;
  v181 = a3;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGMd);
  v180 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v178 = v145 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v177 = v145 - v6;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMd);
  v176 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v174 = v145 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v173 = v145 - v9;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMd);
  v172 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v170 = v145 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v169 = v145 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleO20ObservableDifferenceOSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v196 = v145 - v14;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v168 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v166 = v145 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v165 = v145 - v17;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v164 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v162 = v145 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v161 = v145 - v20;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
  v160 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v158 = v145 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v157 = v145 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV20ObservableDifferenceVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v197 = v145 - v25;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
  v156 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v154 = v145 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v153 = v145 - v28;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v152 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v150 = v145 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v149 = v145 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9ShapeTypeO20ObservableDifferenceOSgMd);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v199 = v145 - v33;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v195 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v187 = v145 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v185 = v145 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v148 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v147 = v145 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v146 = v145 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = v145 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v47 = v145 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence27CRValueObservableDifferenceOSgMd);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v191 = v145 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v192 = v145 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v186 = v145 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v188 = v145 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v193 = v145 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v198 = v145 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v189 = v145 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v194 = v145 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v200 = v145 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v201 = v145 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v202 = v145 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v184 = v145 - v71;
  MEMORY[0x1EEE9AC00](v72);
  v182 = v145 - v73;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v74 = *(v42 + 8);
  v74(v44, v41);
  v74(v47, v41);
  type metadata accessor for Shape(0);
  CRRegister.observableDifference(from:with:)();
  v75 = v146;
  CRRegister.projectedValue.getter();
  v145[1] = a1;
  v76 = v147;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v77 = *(v148 + 1);
  v77(v76, v37);
  v77(v75, v37);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v77(v76, v37);
  v77(v75, v37);
  v78 = v185;
  v79 = v183;
  CRRegister.projectedValue.getter();
  v80 = v187;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v81 = *(v195 + 8);
  v195 += 8;
  v82 = v80;
  v83 = v81;
  v148 = v81;
  v81(v82, v79);
  v84 = v79;
  v83(v78, v79);
  v85 = v149;
  v86 = v151;
  CRRegister.projectedValue.getter();
  v87 = v150;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v88 = *(v152 + 8);
  v88(v87, v86);
  v88(v85, v86);
  v89 = v185;
  CRRegister.projectedValue.getter();
  v90 = v187;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v91 = v90;
  v92 = v148;
  v148(v91, v84);
  v92(v89, v84);
  v93 = v153;
  v94 = v155;
  CRRegister.projectedValue.getter();
  v95 = v154;
  CRRegister.projectedValue.getter();
  v96 = v93;
  CRRegister.observableDifference(from:with:)();
  v97 = *(v156 + 8);
  v97(v95, v94);
  v97(v96, v94);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v97(v95, v94);
  v97(v96, v94);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  CRAttributedString.observableDifference(from:with:)();
  v98 = v157;
  v99 = v159;
  CRRegister.projectedValue.getter();
  v100 = v158;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v101 = *(v160 + 8);
  v101(v100, v99);
  v101(v98, v99);
  v102 = v161;
  v103 = v163;
  CRRegister.projectedValue.getter();
  v104 = v162;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v105 = *(v164 + 8);
  v105(v104, v103);
  v105(v102, v103);
  v106 = v165;
  v107 = v167;
  CRRegister.projectedValue.getter();
  v108 = v166;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v109 = *(v168 + 8);
  v109(v108, v107);
  v109(v106, v107);
  v110 = v169;
  v111 = v171;
  CRRegister.projectedValue.getter();
  v112 = v170;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v113 = *(v172 + 8);
  v113(v112, v111);
  v113(v110, v111);
  v114 = v173;
  v115 = v175;
  CRRegister.projectedValue.getter();
  v116 = v174;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v117 = *(v176 + 8);
  v118 = v116;
  v119 = v182;
  v117(v118, v115);
  v120 = v114;
  v121 = v194;
  v117(v120, v115);
  v122 = v177;
  v123 = v179;
  CRRegister.projectedValue.getter();
  v124 = v188;
  v125 = v178;
  CRRegister.projectedValue.getter();
  v126 = v186;
  CRRegister.observableDifference(from:with:)();
  v127 = *(v180 + 8);
  v127(v125, v123);
  v128 = v122;
  v129 = v189;
  v130 = v123;
  v131 = v184;
  v127(v128, v130);
  v132 = type metadata accessor for CRValueObservableDifference();
  v133 = *(*(v132 - 8) + 48);
  if (v133(v119, 1, v132) == 1 && v133(v131, 1, v132) == 1 && v133(v202, 1, v132) == 1 && v133(v201, 1, v132) == 1 && v133(v200, 1, v132) == 1 && (v134 = type metadata accessor for ShapeType.ObservableDifference(0), (*(*(v134 - 8) + 48))(v199, 1, v134) == 1) && v133(v121, 1, v132) == 1 && v133(v129, 1, v132) == 1 && v133(v198, 1, v132) == 1 && (v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV20ObservableDifferenceVy8PaperKit18TextAttributeScopeV_GMd), (*(*(v135 - 8) + 48))(v197, 1, v135) == 1) && v133(v193, 1, v132) == 1 && v133(v124, 1, v132) == 1 && v133(v126, 1, v132) == 1 && (v136 = type metadata accessor for StrokeStyle.ObservableDifference(0), (*(*(v136 - 8) + 48))(v196, 1, v136) == 1) && v133(v192, 1, v132) == 1 && v133(v191, 1, v132) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v119, &_s9Coherence27CRValueObservableDifferenceOSgMd);
    v137 = type metadata accessor for Shape.ObservableDifference(0);
    (*(*(v137 - 8) + 56))(v181, 1, 1, v137);
    v138 = v192;
    v139 = v193;
    v140 = v191;
  }

  else
  {
    v141 = v119;
    v142 = v181;
    outlined init with copy of Date?(v141, v181, &_s9Coherence27CRValueObservableDifferenceOSgMd);
    v143 = type metadata accessor for Shape.ObservableDifference(0);
    outlined init with copy of Date?(v131, v142 + v143[5], &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined init with copy of Date?(v202, v142 + v143[6], &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined init with copy of Date?(v201, v142 + v143[7], &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined init with copy of Date?(v200, v142 + v143[8], &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined init with copy of Date?(v199, v142 + v143[9], &_s8PaperKit9ShapeTypeO20ObservableDifferenceOSgMd);
    outlined init with copy of Date?(v121, v142 + v143[10], &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined init with copy of Date?(v129, v142 + v143[11], &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined init with copy of Date?(v198, v142 + v143[12], &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined init with copy of Date?(v197, v142 + v143[13], &_s9Coherence18CRAttributedStringV20ObservableDifferenceVy8PaperKit18TextAttributeScopeV_GSgMd);
    v139 = v193;
    outlined init with copy of Date?(v193, v142 + v143[14], &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined init with copy of Date?(v124, v142 + v143[15], &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined init with copy of Date?(v126, v142 + v143[16], &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined init with copy of Date?(v196, v142 + v143[17], &_s8PaperKit11StrokeStyleO20ObservableDifferenceOSgMd);
    v138 = v192;
    outlined init with copy of Date?(v192, v142 + v143[18], &_s9Coherence27CRValueObservableDifferenceOSgMd);
    v140 = v191;
    outlined init with copy of Date?(v191, v142 + v143[19], &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v182, &_s9Coherence27CRValueObservableDifferenceOSgMd);
    (*(*(v143 - 1) + 56))(v142, 0, 1, v143);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v140, &_s9Coherence27CRValueObservableDifferenceOSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v138, &_s9Coherence27CRValueObservableDifferenceOSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v196, &_s8PaperKit11StrokeStyleO20ObservableDifferenceOSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v126, &_s9Coherence27CRValueObservableDifferenceOSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v124, &_s9Coherence27CRValueObservableDifferenceOSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v139, &_s9Coherence27CRValueObservableDifferenceOSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v197, &_s9Coherence18CRAttributedStringV20ObservableDifferenceVy8PaperKit18TextAttributeScopeV_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v198, &_s9Coherence27CRValueObservableDifferenceOSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v129, &_s9Coherence27CRValueObservableDifferenceOSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v194, &_s9Coherence27CRValueObservableDifferenceOSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v199, &_s8PaperKit9ShapeTypeO20ObservableDifferenceOSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v200, &_s9Coherence27CRValueObservableDifferenceOSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v201, &_s9Coherence27CRValueObservableDifferenceOSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v202, &_s9Coherence27CRValueObservableDifferenceOSgMd);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v184, &_s9Coherence27CRValueObservableDifferenceOSgMd);
}

uint64_t Shape.encode(to:)()
{
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGMd);
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v57 = v52 - v0;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMd);
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v60 = v52 - v1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMd);
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v63 = v52 - v2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v68 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v67 = v52 - v3;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v69 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v70 = v52 - v4;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
  v72 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v73 = v52 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
  v77 = *(v6 - 8);
  v78 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v75 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v76 = v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v80 = *(v10 - 8);
  v81 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v79 = v52 - v11;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v82 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v13 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v52 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v83 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v52 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = v52 - v25;
  v27 = v85;
  result = dispatch thunk of CREncoder.keyedContainer()();
  v85 = result;
  if (!v27)
  {
    v56 = v22;
    v55 = v19;
    v54 = v16;
    v53 = v13;
    v29 = v84;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v24 + 8))(v26, v23);
    v30 = type metadata accessor for Shape(0);
    v31 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGFloat> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    v32 = v17;
    v33 = v56;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Color?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    v52[1] = v31;
    v83 = *(v83 + 8);
    (v83)(v33, v32);
    v34 = v55;
    CRRegister.projectedValue.getter();
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (v83)(v34, v32);
    v83 = v30;
    v35 = v54;
    CRRegister.projectedValue.getter();
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    v36 = *(v82 + 8);
    v36(v35, v29);
    v37 = v79;
    v38 = v81;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<ShapeType> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v80 + 8))(v37, v38);
    v39 = v53;
    CRRegister.projectedValue.getter();
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    v36(v39, v29);
    v40 = v76;
    v41 = v78;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CRExtensible<LineEnd>> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    v42 = *(v77 + 8);
    v42(v40, v41);
    v43 = v75;
    CRRegister.projectedValue.getter();
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    v42(v43, v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope> and conformance CRAttributedString<A>, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKeyPath:)();
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CRAttributedString<TextAttributeScope>.Attributes?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKeyPath:)();
    (*(v72 + 8))(v73, v74);
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CanvasElementAutoresizeBehavior> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKeyPath:)();
    (*(v69 + 8))(v70, v71);
    v44 = v66;
    v45 = v67;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CanvasElementFlags> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKeyPath:)();
    (*(v68 + 8))(v45, v44);
    v46 = v63;
    v47 = v65;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<StrokeStyle?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKeyPath:)();
    (*(v64 + 8))(v46, v47);
    v48 = v60;
    v49 = v62;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Shadow?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKeyPath:)();
    (*(v61 + 8))(v48, v49);
    v50 = v57;
    v51 = v59;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<ShapeAuxiliaryInfo?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKeyPath:)();
    (*(v58 + 8))(v50, v51);
    UnknownProperties.encode(to:)();
  }

  return result;
}

uint64_t Shape.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v245 = a1;
  v172 = type metadata accessor for UnknownProperties();
  v171 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v170 = &v165 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v181 = (&v165 - v5);
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtMd);
  v175 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v169 = &v165 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v168 = &v165 - v8;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGMd);
  v173 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v178 = &v165 - v9;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMd);
  v176 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v182 = &v165 - v10;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMd);
  v201 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v183 = &v165 - v11;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v199 = *(v200 - 8);
  MEMORY[0x1EEE9AC00](v200);
  v186 = &v165 - v12;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v210 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207);
  v191 = &v165 - v13;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
  v188 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v194 = &v165 - v14;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v193 = *(v233 - 8);
  MEMORY[0x1EEE9AC00](v233);
  v198 = &v165 - v15;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd);
  v213 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203);
  v202 = &v165 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v204 = &v165 - v18;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v231 = *(v232 - 8);
  MEMORY[0x1EEE9AC00](v232);
  v211 = &v165 - v19;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v229 = *(v230 - 8);
  MEMORY[0x1EEE9AC00](v230);
  v218 = &v165 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v222 = &v165 - v22;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v220 = *(v221 - 8);
  MEMORY[0x1EEE9AC00](v221);
  v209 = &v165 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v214 = &v165 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v225 = &v165 - v27;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v223 = *(v224 - 8);
  MEMORY[0x1EEE9AC00](v224);
  v228 = &v165 - v28;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd);
  MEMORY[0x1EEE9AC00](v246);
  v243 = &v165 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v242 = &v165 - v31;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd);
  MEMORY[0x1EEE9AC00](v247);
  v241 = &v165 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v240 = &v165 - v34;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v248);
  v239 = &v165 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v238 = &v165 - v37;
  v249 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v249);
  v237 = &v165 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v236 = &v165 - v40;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v250);
  v42 = &v165 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v165 - v44;
  type metadata accessor for CGRect(0);
  v47 = v46;
  v48 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_13(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
  v253 = 0u;
  v254 = 0u;
  v227 = v47;
  v226 = v48;
  CRRegister.init(wrappedValue:)();
  v49 = type metadata accessor for Shape(0);
  v50 = *(v49 + 20);
  v51 = v49;
  v235 = v49;
  *&v253 = 0;
  v251 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v219 = v50;
  v252 = a2;
  CRRegister.init(_:)();
  v52 = *(v51 + 24);
  v53 = type metadata accessor for Color(0);
  v234 = *(*(v53 - 8) + 56);
  v234(v45, 1, 1, v53);
  outlined init with copy of Date?(v45, v42, &_s8PaperKit5ColorVSgMd);
  v54 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
  v215 = v52;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v45, &_s8PaperKit5ColorVSgMd);
  v55 = v235;
  v56 = v235[7];
  v234(v45, 1, 1, v53);
  outlined init with copy of Date?(v45, v42, &_s8PaperKit5ColorVSgMd);
  v212 = v56;
  v234 = v54;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v45, &_s8PaperKit5ColorVSgMd);
  v57 = v55[8];
  *&v253 = 0x4014000000000000;
  v216 = v57;
  CRRegister.init(wrappedValue:)();
  v58 = v55[9];
  v59 = v236;
  swift_storeEnumTagMultiPayload();
  _s8PaperKit9ShapeTypeOWOcTm_3(v59, v237, type metadata accessor for ShapeType);
  v60 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_13(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, type metadata accessor for ShapeType);
  v217 = v58;
  v237 = v60;
  CRRegister.init(wrappedValue:)();
  _s8PaperKit9ShapeTypeOWOhTm_1(v59, type metadata accessor for ShapeType);
  v61 = v55[10];
  *&v253 = 0x3FF0000000000000;
  v236 = v61;
  CRRegister.init(wrappedValue:)();
  v62 = v55[11];
  *&v253 = 0;
  BYTE8(v253) = 0;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
  v64 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
  v205 = v62;
  CRRegister.init(wrappedValue:)();
  v65 = v55[12];
  *&v253 = 0;
  BYTE8(v253) = 0;
  v195 = v65;
  v206 = v63;
  v208 = v64;
  CRRegister.init(wrappedValue:)();
  v66 = v55[13];
  v67 = lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
  v192 = v66;
  v197 = v67;
  CRAttributedString.init(_:)();
  v68 = v55[14];
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
  v70 = v238;
  (*(*(v69 - 8) + 56))(v238, 1, 1, v69);
  outlined init with copy of Date?(v70, v239, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  v71 = lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
  v187 = v68;
  v239 = v71;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v70, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  v72 = v55[15];
  *&v253 = 0;
  v73 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
  v184 = v72;
  v238 = v73;
  CRRegister.init(wrappedValue:)();
  v74 = v55[16];
  *&v253 = 0;
  v75 = lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
  v190 = v74;
  v185 = v75;
  CRRegister.init(wrappedValue:)();
  v76 = v55[17];
  v77 = type metadata accessor for StrokeStyle(0);
  v78 = v240;
  (*(*(v77 - 8) + 56))(v240, 1, 1, v77);
  outlined init with copy of Date?(v78, v241, &_s8PaperKit11StrokeStyleOSgMd);
  v79 = lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
  v179 = v76;
  v241 = v79;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v78, &_s8PaperKit11StrokeStyleOSgMd);
  v80 = v55[18];
  v81 = type metadata accessor for Shadow();
  v82 = v242;
  (*(*(v81 - 8) + 56))(v242, 1, 1, v81);
  outlined init with copy of Date?(v82, v243, &_s8PaperKit6ShadowVSgMd);
  v83 = lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v82, &_s8PaperKit6ShadowVSgMd);
  v84 = v55[19];
  v254 = 0u;
  v255 = 0u;
  v253 = 0u;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
  v86 = lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  v87 = v55[20];
  UnknownProperties.init()();
  v88 = v244;
  v89 = dispatch thunk of CRDecoder.keyedContainer()();
  if (v88)
  {
LABEL_38:

    return _s8PaperKit9ShapeTypeOWOhTm_1(v252, type metadata accessor for Shape);
  }

  else
  {
    v242 = v83;
    v243 = v85;
    v240 = v86;
    v167 = v84;
    v235 = v80;
    v90 = v229;
    v91 = v230;
    v92 = v231;
    v93 = v232;
    v94 = v233;
    v166 = v87;
    v244 = v89;
    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      v95 = v228;
      CRRegister.init(from:)();
      v96 = v94;
      (*(v223 + 40))(v252, v95, v224);
    }

    else
    {
      v96 = v94;
    }

    v97 = v93;
    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      v98 = v225;
      CRRegister.init(from:)();
      v99 = v92;
      (*(v220 + 40))(v252 + v219, v98, v221);
    }

    else
    {
      v99 = v92;
    }

    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      v100 = v222;
      CRRegister.init(from:)();
      (*(v90 + 40))(v252 + v215, v100, v91);
    }

    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      v101 = v218;
      CRRegister.init(from:)();
      (*(v90 + 40))(v252 + v212, v101, v91);
    }

    v102 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v103 = v217;
    v104 = v216;
    if (v102)
    {
      v105 = v214;
      CRRegister.init(from:)();
      (*(v220 + 40))(v252 + v104, v105, v221);
    }

    v106 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v107 = v213;
    if (v106)
    {
      v108 = v211;
      CRRegister.init(from:)();
      (*(v99 + 40))(v252 + v103, v108, v97);
    }

    v109 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v110 = v210;
    v111 = v221;
    v112 = v220;
    v113 = v209;
    v114 = v236;
    if (v109)
    {
      CRRegister.init(from:)();
      (*(v112 + 40))(&v114[v252], v113, v111);
    }

    v115 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v116 = v207;
    v117 = v205;
    if (v115)
    {
      v118 = v204;
      CRRegister.init(from:)();
      v119 = v252 + v117;
      v120 = v203;
      (*(v107 + 40))(v119, v118, v203);
    }

    else
    {
      v120 = v203;
    }

    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      v121 = v202;
      CRRegister.init(from:)();
      (*(v107 + 40))(v252 + v195, v121, v120);
    }

    v122 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKeyPath:)();
    v123 = v201;
    v124 = v200;
    v125 = v199;
    if (v122)
    {
      v126 = v198;
      CRAttributedString.init(from:)();
      (*(v193 + 40))(v252 + v192, v126, v96);
    }

    v127 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKeyPath:)();
    v128 = v196;
    if (v127)
    {
      v129 = v194;
      CRRegister.init(from:)();
      (*(v188 + 40))(v252 + v187, v129, v189);
    }

    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKeyPath:)())
    {
      v130 = v191;
      CRRegister.init(from:)();
      (*(v110 + 40))(v252 + v184, v130, v116);
    }

    v131 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKeyPath:)();
    v132 = v190;
    if (v131)
    {
      v133 = v186;
      CRRegister.init(from:)();
      (*(v125 + 40))(v252 + v132, v133, v124);
    }

    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKeyPath:)())
    {
      v134 = v183;
      CRRegister.init(from:)();
      (*(v123 + 40))(v252 + v179, v134, v128);
    }

    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKeyPath:)())
    {
      v135 = v182;
      CRRegister.init(from:)();
      (*(v176 + 40))(v235 + v252, v135, v177);
    }

    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKeyPath:)())
    {
      v136 = v178;
      CRRegister.init(from:)();
      (*(v173 + 40))(v252 + v167, v136, v174);
    }

    v137 = dispatch thunk of CRDecoder.CRDTKeyedContainer.allKeys()();
    v250 = 0;
    v139 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v137);

    *&v253 = v139;
    specialized Set._Variant.remove(_:)(0x656D617266, 0xE500000000000000);

    specialized Set._Variant.remove(_:)(0x6E6F697461746F72, 0xE800000000000000);

    specialized Set._Variant.remove(_:)(0x6F6C6F436C6C6966, 0xE900000000000072);

    specialized Set._Variant.remove(_:)(0x6F43656B6F727473, 0xEB00000000726F6CLL);

    specialized Set._Variant.remove(_:)(0x6957656B6F727473, 0xEB00000000687464);

    specialized Set._Variant.remove(_:)(1701869940, 0xE400000000000000);

    specialized Set._Variant.remove(_:)(0x7974696361706FLL, 0xE700000000000000);

    specialized Set._Variant.remove(_:)(0x6E694C7472617473, 0xEC000000646E4565);

    specialized Set._Variant.remove(_:)(0x45656E694C646E65, 0xEA0000000000646ELL);

    specialized Set._Variant.remove(_:)(0xD000000000000013, 0x80000001D4081260);

    specialized Set._Variant.remove(_:)(0xD000000000000013, 0x80000001D4081260);

    specialized Set._Variant.remove(_:)(0xD000000000000013, 0x80000001D4081260);

    specialized Set._Variant.remove(_:)(0xD000000000000013, 0x80000001D4081260);

    specialized Set._Variant.remove(_:)(0xD000000000000013, 0x80000001D4081260);

    specialized Set._Variant.remove(_:)(0xD000000000000013, 0x80000001D4081260);

    specialized Set._Variant.remove(_:)(0xD000000000000013, 0x80000001D4081260);

    v140 = v253 + 56;
    v141 = 1 << *(v253 + 32);
    v142 = -1;
    if (v141 < 64)
    {
      v142 = ~(-1 << v141);
    }

    v143 = v142 & *(v253 + 56);
    v144 = (v141 + 63) >> 6;
    v145 = (v175 + 56);
    v146 = v253;

    v147 = 0;
    v251 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v148 = v147;
      if (!v143)
      {
        break;
      }

LABEL_47:
      v149 = __clz(__rbit64(v143));
      v143 &= v143 - 1;
      v150 = (*(v146 + 48) + ((v147 << 10) | (16 * v149)));
      v152 = *v150;
      v151 = v150[1];

      if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
      {
        v249 = *(v180 + 48);
        v154 = v181;
        *v181 = v152;
        v154[1] = v151;

        v155 = v250;
        AnyCRDT.init(from:)();
        v250 = v155;
        if (v155)
        {
LABEL_62:

          swift_bridgeObjectRelease_n();
          return _s8PaperKit9ShapeTypeOWOhTm_1(v252, type metadata accessor for Shape);
        }

        v156 = v181;
        (*v145)(v181, 0, 1, v180);
        v157 = v156;
        v158 = v168;
        outlined init with take of (String, AnyCRDT)(v157, v168);
        outlined init with take of (String, AnyCRDT)(v158, v169);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v251 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v251[2] + 1, 1, v251);
        }

        v160 = v251[2];
        v159 = v251[3];
        if (v160 >= v159 >> 1)
        {
          v251 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v159 > 1, v160 + 1, 1, v251);
        }

        v161 = v251;
        v251[2] = v160 + 1;
        outlined init with take of (String, AnyCRDT)(v169, v161 + ((*(v175 + 80) + 32) & ~*(v175 + 80)) + *(v175 + 72) * v160);
      }

      else
      {

        v153 = v181;
        (*v145)(v181, 1, 1, v180);
        outlined destroy of StocksKitCurrencyCache.Provider?(v153, &_sSS_9Coherence7AnyCRDTVtSgMd);
      }
    }

    while (1)
    {
      v147 = v148 + 1;
      if (__OFADD__(v148, 1))
      {
        __break(1u);
        goto LABEL_62;
      }

      if (v147 >= v144)
      {
        break;
      }

      v143 = *(v140 + 8 * v147);
      ++v148;
      if (v143)
      {
        goto LABEL_47;
      }
    }

    if (v251[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9Coherence7AnyCRDTVGMd);
      v162 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v162 = MEMORY[0x1E69E7CC8];
    }

    v256 = v162;
    v163 = v250;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v251, 1, &v256);
    if (v163)
    {

      goto LABEL_38;
    }

    v164 = v170;
    UnknownProperties.init(_:)();

    return (*(v171 + 40))(v252 + v166, v164, v172);
  }
}