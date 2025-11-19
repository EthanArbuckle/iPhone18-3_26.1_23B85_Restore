id protocol witness for RawRepresentable.init(rawValue:) in conformance SignatureItem@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = specialized SignatureItem.__allocating_init(rawValue:)(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SignatureItem(uint64_t *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  SignatureItem.encode(with:)(v2);
  v3 = [v2 encodedData];
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  [v2 finishEncoding];
  *a1 = v4;
  a1[1] = v6;
}

id protocol witness for CRType.copy(renamingReferences:) in conformance SignatureItem@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance SignatureItem()
{
  lazy protocol witness table accessor for type SignatureItem and conformance SignatureItem(&lazy protocol witness table cache variable for type SignatureItem and conformance SignatureItem, type metadata accessor for SignatureItem);
  lazy protocol witness table accessor for type SignatureItem and conformance SignatureItem(&lazy protocol witness table cache variable for type SignatureItem and conformance NSObject, type metadata accessor for SignatureItem);

  return CRValue<>.observableDifference(from:with:)();
}

uint64_t protocol witness for CRCodable.init(from:) in conformance SignatureItem()
{
  lazy protocol witness table accessor for type SignatureItem and conformance SignatureItem(&lazy protocol witness table cache variable for type SignatureItem and conformance SignatureItem, type metadata accessor for SignatureItem);
  lazy protocol witness table accessor for type SignatureItem and conformance SignatureItem(&lazy protocol witness table cache variable for type SignatureItem and conformance SignatureItem, type metadata accessor for SignatureItem);
  return CRValue<>.init(from:)();
}

uint64_t protocol witness for CRCodable.encode(to:) in conformance SignatureItem()
{
  lazy protocol witness table accessor for type SignatureItem and conformance SignatureItem(&lazy protocol witness table cache variable for type SignatureItem and conformance SignatureItem, type metadata accessor for SignatureItem);
  lazy protocol witness table accessor for type SignatureItem and conformance SignatureItem(&lazy protocol witness table cache variable for type SignatureItem and conformance SignatureItem, type metadata accessor for SignatureItem);
  return CRValue<>.encode(to:)();
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance SignatureItem(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SignatureItem and conformance SignatureItem(&lazy protocol witness table cache variable for type SignatureItem and conformance SignatureItem, type metadata accessor for SignatureItem);
  v3 = lazy protocol witness table accessor for type SignatureItem and conformance SignatureItem(&lazy protocol witness table cache variable for type SignatureItem and conformance SignatureItem, type metadata accessor for SignatureItem);
  v4 = MEMORY[0x1E6995000];

  return MEMORY[0x1EEDF52E0](a1, v2, v3, v4);
}

uint64_t protocol witness for CRCodable.isDefaultState.getter in conformance SignatureItem(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type SignatureItem and conformance SignatureItem(&lazy protocol witness table cache variable for type SignatureItem and conformance SignatureItem, type metadata accessor for SignatureItem);
  v5 = MEMORY[0x1E6995000];

  return MEMORY[0x1EEDF56A8](a1, a2, v4, v5);
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return result;
    }

    v8 = result;
    if (result <= result >> 32)
    {
      v9 = __DataStorage._bytes.getter();
      if (v9)
      {
        v10 = v9;
        v11 = __DataStorage._offset.getter();
        if (!__OFSUB__(v8, v11))
        {
          v12 = v8 - v11 + v10;
          result = MEMORY[0x1DA6C8120]();
          if (v12)
          {
            return result;
          }

LABEL_21:
          __break(1u);
          return result;
        }

LABEL_17:
        __break(1u);
      }

LABEL_20:
      result = MEMORY[0x1DA6C8120]();
      __break(1u);
      goto LABEL_21;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v2 == 2)
  {
    v3 = *(result + 16);
    v4 = __DataStorage._bytes.getter();
    if (v4)
    {
      v5 = v4;
      v6 = __DataStorage._offset.getter();
      if (__OFSUB__(v3, v6))
      {
        goto LABEL_16;
      }

      v7 = v3 - v6 + v5;
      result = MEMORY[0x1DA6C8120]();
      if (v7)
      {
        return result;
      }
    }

    else
    {
      MEMORY[0x1DA6C8120]();
    }

    __break(1u);
    goto LABEL_20;
  }

  return result;
}

uint64_t closure #1 in static SignatureItem.signaturePathDataRepresentation(from:toKeyChain:)(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = *a1;
  v2 = MEMORY[0x1E69E6290];
  v3 = MEMORY[0x1E6969DF8];
  v20 = MEMORY[0x1E69E6290];
  v21 = MEMORY[0x1E6969DF8];
  v18 = &v17;
  v19 = &v18;
  __swift_project_boxed_opaque_existential_1(&v18, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v18);
  v4 = *a1;
  if (*a1 > 2)
  {
    if (v4 == 3)
    {
      LODWORD(v17) = 3;
      v20 = v2;
      v21 = v3;
      v18 = &v17;
      v19 = &v18;
      __swift_project_boxed_opaque_existential_1(&v18, v2);
      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_0(&v18);
      v7 = **(a1 + 8);
      v17 = v7;
      v20 = v2;
      v21 = v3;
      v18 = &v17;
      v19 = &v18;
      __swift_project_boxed_opaque_existential_1(&v18, v2);
      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_0(&v18);
      v8 = *(*(a1 + 8) + 8);
      v17 = v8;
      v20 = v2;
      v21 = v3;
      v18 = &v17;
      v19 = &v18;
      __swift_project_boxed_opaque_existential_1(&v18, v2);
      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_0(&v18);
      v9 = *(*(a1 + 8) + 16);
      v17 = v9;
      v20 = v2;
      v21 = v3;
      v18 = &v17;
      v19 = &v18;
      __swift_project_boxed_opaque_existential_1(&v18, v2);
      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_0(&v18);
      v10 = *(*(a1 + 8) + 24);
      v17 = v10;
      v20 = v2;
      v21 = v3;
      v18 = &v17;
      v19 = &v18;
      __swift_project_boxed_opaque_existential_1(&v18, v2);
      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_0(&v18);
      v11 = *(*(a1 + 8) + 32);
      v17 = v11;
      v20 = v2;
      v21 = v3;
      v18 = &v17;
      v19 = &v18;
      __swift_project_boxed_opaque_existential_1(&v18, v2);
      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_0(&v18);
      v6 = *(*(a1 + 8) + 40);
      goto LABEL_8;
    }

    if (v4 == 4)
    {
      v17 = 0.0;
      v20 = v2;
      v21 = v3;
      v18 = &v17;
      v19 = &v18;
      goto LABEL_9;
    }
  }

  else
  {
    if (v4 < 2)
    {
      LODWORD(v17) = 1;
      v20 = v2;
      v21 = v3;
      v18 = &v17;
      v19 = &v18;
      __swift_project_boxed_opaque_existential_1(&v18, v2);
      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_0(&v18);
      v5 = **(a1 + 8);
      v17 = v5;
      v20 = v2;
      v21 = v3;
      v18 = &v17;
      v19 = &v18;
      __swift_project_boxed_opaque_existential_1(&v18, v2);
      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_0(&v18);
      v6 = *(*(a1 + 8) + 8);
LABEL_8:
      v15 = v6;
      v17 = v15;
      v20 = v2;
      v21 = v3;
      v18 = &v17;
      v19 = &v18;
LABEL_9:
      __swift_project_boxed_opaque_existential_1(&v18, v2);
      Data._Representation.append(contentsOf:)();
      return __swift_destroy_boxed_opaque_existential_0(&v18);
    }

    if (v4 == 2)
    {
      LODWORD(v17) = 2;
      v20 = v2;
      v21 = v3;
      v18 = &v17;
      v19 = &v18;
      __swift_project_boxed_opaque_existential_1(&v18, v2);
      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_0(&v18);
      v12 = **(a1 + 8);
      v17 = v12;
      v20 = v2;
      v21 = v3;
      v18 = &v17;
      v19 = &v18;
      __swift_project_boxed_opaque_existential_1(&v18, v2);
      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_0(&v18);
      v13 = *(*(a1 + 8) + 8);
      v17 = v13;
      v20 = v2;
      v21 = v3;
      v18 = &v17;
      v19 = &v18;
      __swift_project_boxed_opaque_existential_1(&v18, v2);
      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_0(&v18);
      v14 = *(*(a1 + 8) + 16);
      v17 = v14;
      v20 = v2;
      v21 = v3;
      v18 = &v17;
      v19 = &v18;
      __swift_project_boxed_opaque_existential_1(&v18, v2);
      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_0(&v18);
      v6 = *(*(a1 + 8) + 24);
      goto LABEL_8;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *specialized static SignatureItem.signaturePathDataRepresentation(from:toKeyChain:)(void *result, char a2)
{
  if (result)
  {
    v3 = result;
    BoundingBox = CGPathGetBoundingBox(v3);
    if (CGRectIsNull(BoundingBox))
    {

      return 0;
    }

    else
    {
      v13 = xmmword_1D40621F0;
      v20 = CGPathGetBoundingBox(v3);
      MinY = CGRectGetMinY(v20);
      v21 = CGPathGetBoundingBox(v3);
      v15 = 0;
      v16 = 0;
      v14 = 0x3FF0000000000000;
      v17 = xmmword_1D405A660;
      v18 = MinY + CGRectGetMaxY(v21);
      if (a2)
      {
        v5 = CGPathRef.copy(strokingWithWidth:lineCap:lineJoin:miterLimit:transform:)();
      }

      else
      {
        v5 = v3;
      }

      v6 = v5;
      v7 = swift_allocObject();
      *(v7 + 16) = &v13;
      v8 = swift_allocObject();
      *(v8 + 16) = partial apply for closure #1 in static SignatureItem.signaturePathDataRepresentation(from:toKeyChain:);
      *(v8 + 24) = v7;
      v12[4] = partial apply for thunk for @callee_guaranteed (@unowned UnsafePointer<CGPathElement>) -> ();
      v12[5] = v8;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 1107296256;
      v12[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<CGPathElement>) -> ();
      v12[3] = &block_descriptor_21_1;
      v9 = _Block_copy(v12);

      CGPathApplyWithBlock(v6, v9);

      _Block_release(v9);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      else
      {
        v11 = v13;
        outlined copy of Data._Representation(v13, *(&v13 + 1));
        outlined consume of Data._Representation(v11, *(&v11 + 1));

        return v11;
      }
    }
  }

  return result;
}

uint64_t specialized static SignatureItem.signaturePath(from:)(uint64_t a1, unint64_t a2)
{
  v180 = *MEMORY[0x1E69E9840];
  path = CGPathCreateMutable();
  v177 = a1;
  v178 = a2;
  v179 = 0;
  outlined copy of Data._Representation(a1, a2);
  v4 = 0;
  v5 = 4;
  while (1)
  {
    v10 = v177;
    v9 = v178;
    v11 = v178 >> 62;
    if ((v178 >> 62) > 1)
    {
      if (v11 != 2)
      {
        if ((v5 & 0x8000000000000000) == 0)
        {
          goto LABEL_347;
        }

        memset(v172, 0, 14);
        goto LABEL_31;
      }

      v13 = *(v177 + 16);
      v12 = *(v177 + 24);
      v14 = __OFSUB__(v12, v13);
      v15 = v12 - v13;
      if (v14)
      {
        goto LABEL_351;
      }

      if (v5 >= v15)
      {
        goto LABEL_347;
      }
    }

    else if (v11)
    {
      if (__OFSUB__(HIDWORD(v177), v177))
      {
        goto LABEL_350;
      }

      if (v5 >= HIDWORD(v177) - v177)
      {
        goto LABEL_347;
      }
    }

    else if (v5 >= BYTE6(v178))
    {
      goto LABEL_347;
    }

    if (v11 == 2)
    {
      v20 = *(v177 + 16);

      v21 = __DataStorage._bytes.getter();
      if (!v21)
      {
        MEMORY[0x1DA6C8120]();
LABEL_425:
        __break(1u);
LABEL_426:
        MEMORY[0x1DA6C8120]();
        __break(1u);
LABEL_427:
        __break(1u);
LABEL_428:
        MEMORY[0x1DA6C8120]();
LABEL_429:
        __break(1u);
LABEL_430:
        MEMORY[0x1DA6C8120]();
        __break(1u);
LABEL_431:
        __break(1u);
      }

      v22 = v21;
      v23 = __DataStorage._offset.getter();
      if (__OFSUB__(v20, v23))
      {
        goto LABEL_353;
      }

      v19 = v20 - v23 + v22;
      MEMORY[0x1DA6C8120]();
      if (!v19)
      {
        goto LABEL_425;
      }

      goto LABEL_28;
    }

    if (v11 == 1)
    {
      if (v177 > v177 >> 32)
      {
        goto LABEL_352;
      }

      v16 = __DataStorage._bytes.getter();
      if (!v16)
      {
        goto LABEL_426;
      }

      v17 = v16;
      v18 = __DataStorage._offset.getter();
      if (__OFSUB__(v10, v18))
      {
        goto LABEL_354;
      }

      v19 = v10 - v18 + v17;
      MEMORY[0x1DA6C8120]();
      if (!v19)
      {
        goto LABEL_427;
      }

LABEL_28:
      v24 = *(v19 + v4);
      outlined consume of Data._Representation(v10, v9);
      if (v24 > 4)
      {
        goto LABEL_347;
      }

      goto LABEL_32;
    }

    v172[0] = v177;
    LODWORD(v172[1]) = v178;
    WORD2(v172[1]) = WORD2(v178);
LABEL_31:
    v24 = *(v172 + v4);
    if (v24 > 4)
    {
      goto LABEL_347;
    }

LABEL_32:
    v4 = v5 + 4;
    if (__OFADD__(v5, 4))
    {
      __break(1u);
LABEL_349:
      __break(1u);
LABEL_350:
      __break(1u);
LABEL_351:
      __break(1u);
LABEL_352:
      __break(1u);
LABEL_353:
      __break(1u);
LABEL_354:
      __break(1u);
LABEL_355:
      __break(1u);
LABEL_356:
      __break(1u);
LABEL_357:
      __break(1u);
LABEL_358:
      __break(1u);
LABEL_359:
      __break(1u);
LABEL_360:
      __break(1u);
LABEL_361:
      __break(1u);
LABEL_362:
      __break(1u);
LABEL_363:
      __break(1u);
LABEL_364:
      __break(1u);
LABEL_365:
      __break(1u);
LABEL_366:
      __break(1u);
LABEL_367:
      __break(1u);
LABEL_368:
      __break(1u);
LABEL_369:
      __break(1u);
LABEL_370:
      __break(1u);
LABEL_371:
      __break(1u);
LABEL_372:
      __break(1u);
LABEL_373:
      __break(1u);
LABEL_374:
      __break(1u);
LABEL_375:
      __break(1u);
LABEL_376:
      __break(1u);
LABEL_377:
      __break(1u);
LABEL_378:
      __break(1u);
LABEL_379:
      __break(1u);
LABEL_380:
      __break(1u);
LABEL_381:
      __break(1u);
LABEL_382:
      __break(1u);
LABEL_383:
      __break(1u);
LABEL_384:
      __break(1u);
LABEL_385:
      __break(1u);
LABEL_386:
      __break(1u);
LABEL_387:
      __break(1u);
LABEL_388:
      __break(1u);
LABEL_389:
      __break(1u);
LABEL_390:
      __break(1u);
LABEL_391:
      __break(1u);
LABEL_392:
      __break(1u);
LABEL_393:
      __break(1u);
LABEL_394:
      __break(1u);
LABEL_395:
      __break(1u);
LABEL_396:
      __break(1u);
LABEL_397:
      __break(1u);
LABEL_398:
      __break(1u);
LABEL_399:
      __break(1u);
LABEL_400:
      __break(1u);
LABEL_401:
      __break(1u);
LABEL_402:
      __break(1u);
LABEL_403:
      __break(1u);
LABEL_404:
      __break(1u);
LABEL_405:
      __break(1u);
LABEL_406:
      __break(1u);
LABEL_407:
      __break(1u);
LABEL_408:
      __break(1u);
LABEL_409:
      __break(1u);
LABEL_410:
      __break(1u);
LABEL_411:
      __break(1u);
LABEL_412:
      __break(1u);
LABEL_413:
      __break(1u);
LABEL_414:
      __break(1u);
LABEL_415:
      __break(1u);
LABEL_416:
      __break(1u);
LABEL_417:
      __break(1u);
LABEL_418:
      __break(1u);
LABEL_419:
      __break(1u);
LABEL_420:
      __break(1u);
LABEL_421:
      __break(1u);
LABEL_422:
      __break(1u);
LABEL_423:
      swift_once();
LABEL_344:
      v167 = type metadata accessor for Logger();
      __swift_project_value_buffer(v167, SignatureLogger);
      v168 = Logger.logObject.getter();
      v169 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v168, v169))
      {
        v170 = swift_slowAlloc();
        *v170 = 0;
        _os_log_impl(&dword_1D38C4000, v168, v169, "read element type decoding path", v170, 2u);
        MEMORY[0x1DA6D0660](v170, -1, -1);
      }

LABEL_347:
      outlined consume of Data._Representation(v10, v9);
      return path;
    }

    if (v11 > 1)
    {
      if (v11 != 2)
      {
        if ((v4 & 0x8000000000000000) == 0)
        {
          goto LABEL_347;
        }

        memset(v172, 0, 14);
        goto LABEL_57;
      }

      v26 = *(v10 + 16);
      v25 = *(v10 + 24);
      v14 = __OFSUB__(v25, v26);
      v27 = v25 - v26;
      if (v14)
      {
        goto LABEL_356;
      }

      if (v4 >= v27)
      {
        goto LABEL_347;
      }
    }

    else if (v11)
    {
      if (__OFSUB__(HIDWORD(v10), v10))
      {
        goto LABEL_355;
      }

      if (v4 >= HIDWORD(v10) - v10)
      {
        goto LABEL_347;
      }
    }

    else if (v4 >= BYTE6(v9))
    {
      goto LABEL_347;
    }

    if (v11 == 2)
    {
      v32 = *(v10 + 16);

      v33 = __DataStorage._bytes.getter();
      if (!v33)
      {
        goto LABEL_428;
      }

      v34 = v33;
      v35 = __DataStorage._offset.getter();
      if (__OFSUB__(v32, v35))
      {
        goto LABEL_358;
      }

      v31 = v32 - v35 + v34;
      MEMORY[0x1DA6C8120]();
      if (!v31)
      {
        goto LABEL_429;
      }

LABEL_55:
      v36 = *(v31 + v5);
      outlined consume of Data._Representation(v10, v9);
      goto LABEL_58;
    }

    if (v11 == 1)
    {
      if (v10 > v10 >> 32)
      {
        goto LABEL_357;
      }

      v28 = __DataStorage._bytes.getter();
      if (!v28)
      {
        goto LABEL_430;
      }

      v29 = v28;
      v30 = __DataStorage._offset.getter();
      if (__OFSUB__(v10, v30))
      {
        goto LABEL_359;
      }

      v31 = v10 - v30 + v29;
      MEMORY[0x1DA6C8120]();
      if (!v31)
      {
        goto LABEL_431;
      }

      goto LABEL_55;
    }

    v172[0] = v10;
    LOWORD(v172[1]) = v9;
    BYTE2(v172[1]) = BYTE2(v9);
    BYTE3(v172[1]) = BYTE3(v9);
    BYTE4(v172[1]) = BYTE4(v9);
    BYTE5(v172[1]) = BYTE5(v9);
LABEL_57:
    v36 = *(v172 + v5);
LABEL_58:
    v179 = v5 + 4;
    if (v36 > 3)
    {
      goto LABEL_347;
    }

    if (v24 <= 1)
    {
      if (!v24)
      {
        if (v36 != 1)
        {
          goto LABEL_343;
        }

        v39 = v5 + 8;
        if (__OFADD__(v4, 4))
        {
          goto LABEL_363;
        }

        if (v11 > 1)
        {
          if (v11 == 2)
          {
            v50 = *(v10 + 16);
            v49 = *(v10 + 24);
            v14 = __OFSUB__(v49, v50);
            v40 = v49 - v50;
            if (v14)
            {
              goto LABEL_378;
            }

            goto LABEL_127;
          }

          if ((v39 & 0x8000000000000000) == 0)
          {
            goto LABEL_347;
          }

          memset(v172, 0, 14);
        }

        else
        {
          if (v11)
          {
            LODWORD(v40) = HIDWORD(v10) - v10;
            if (__OFSUB__(HIDWORD(v10), v10))
            {
              goto LABEL_376;
            }

            v40 = v40;
          }

          else
          {
            v40 = BYTE6(v9);
          }

LABEL_127:
          if (v39 >= v40)
          {
            goto LABEL_347;
          }

          if (v11 == 2)
          {
            v79 = *(v10 + 16);

            v80 = __DataStorage._bytes.getter();
            if (!v80)
            {
              goto LABEL_436;
            }

            v81 = v80;
            v82 = __DataStorage._offset.getter();
            if (__OFSUB__(v79, v82))
            {
              goto LABEL_389;
            }

            v64 = v79 - v82 + v81;
            MEMORY[0x1DA6C8120]();
            if (!v64)
            {
              goto LABEL_437;
            }

            goto LABEL_160;
          }

          if (v11 == 1)
          {
            if (v10 > v10 >> 32)
            {
              goto LABEL_383;
            }

            v61 = __DataStorage._bytes.getter();
            if (!v61)
            {
              goto LABEL_442;
            }

            v62 = v61;
            v63 = __DataStorage._offset.getter();
            if (__OFSUB__(v10, v63))
            {
              goto LABEL_391;
            }

            v64 = v10 - v63 + v62;
            MEMORY[0x1DA6C8120]();
            if (!v64)
            {
              goto LABEL_447;
            }

LABEL_160:
            v83 = *(v64 + v4);
            outlined consume of Data._Representation(v10, v9);
LABEL_187:
            v179 = v5 + 8;
            v4 = v5 + 12;
            if (__OFADD__(v39, 4))
            {
              goto LABEL_364;
            }

            if (v11 <= 1)
            {
              if (v11)
              {
                LODWORD(v97) = HIDWORD(v10) - v10;
                if (__OFSUB__(HIDWORD(v10), v10))
                {
                  goto LABEL_401;
                }

                v97 = v97;
              }

              else
              {
                v97 = BYTE6(v9);
              }

              goto LABEL_234;
            }

            if (v11 == 2)
            {
              v99 = *(v10 + 16);
              v98 = *(v10 + 24);
              v14 = __OFSUB__(v98, v99);
              v97 = v98 - v99;
              if (v14)
              {
                goto LABEL_400;
              }

LABEL_234:
              if (v4 >= v97)
              {
                goto LABEL_347;
              }
            }

            else if ((v4 & 0x8000000000000000) == 0)
            {
              goto LABEL_347;
            }

            outlined copy of Data._Representation(v10, v9);
            specialized Data.withUnsafeBytes<A>(_:)(v10, v9);
            v117 = v116;
            outlined consume of Data._Representation(v10, v9);
            v179 = v5 + 12;
            v173.b = 0.0;
            v173.c = 0.0;
            v173.a = 1.0;
            v173.d = 1.0;
            v173.tx = 0.0;
            v173.ty = 0.0;
            CGMutablePathRef.move(to:transform:)(__PAIR128__(v117, v83), &v173);
            goto LABEL_5;
          }

          v172[0] = v10;
          LOWORD(v172[1]) = v9;
          BYTE2(v172[1]) = BYTE2(v9);
          BYTE3(v172[1]) = BYTE3(v9);
          BYTE4(v172[1]) = BYTE4(v9);
          BYTE5(v172[1]) = BYTE5(v9);
        }

        v83 = *(v172 + v4);
        goto LABEL_187;
      }

      if (v36 != 1)
      {
LABEL_343:
        if (one-time initialization token for SignatureLogger == -1)
        {
          goto LABEL_344;
        }

        goto LABEL_423;
      }

      v43 = v5 + 8;
      if (__OFADD__(v4, 4))
      {
        goto LABEL_360;
      }

      if (v11 > 1)
      {
        if (v11 == 2)
        {
          v52 = *(v10 + 16);
          v51 = *(v10 + 24);
          v14 = __OFSUB__(v51, v52);
          v44 = v51 - v52;
          if (v14)
          {
            goto LABEL_381;
          }

          goto LABEL_137;
        }

        if ((v43 & 0x8000000000000000) == 0)
        {
          goto LABEL_347;
        }

        memset(v172, 0, 14);
      }

      else
      {
        if (v11)
        {
          LODWORD(v44) = HIDWORD(v10) - v10;
          if (__OFSUB__(HIDWORD(v10), v10))
          {
            goto LABEL_374;
          }

          v44 = v44;
        }

        else
        {
          v44 = BYTE6(v9);
        }

LABEL_137:
        if (v43 >= v44)
        {
          goto LABEL_347;
        }

        if (v11 == 2)
        {
          v84 = *(v10 + 16);

          v85 = __DataStorage._bytes.getter();
          if (!v85)
          {
            goto LABEL_438;
          }

          v86 = v85;
          v87 = __DataStorage._offset.getter();
          if (__OFSUB__(v84, v87))
          {
            goto LABEL_387;
          }

          v68 = v84 - v87 + v86;
          MEMORY[0x1DA6C8120]();
          if (!v68)
          {
            goto LABEL_439;
          }

          goto LABEL_164;
        }

        if (v11 == 1)
        {
          if (v10 > v10 >> 32)
          {
            goto LABEL_386;
          }

          v65 = __DataStorage._bytes.getter();
          if (!v65)
          {
            goto LABEL_434;
          }

          v66 = v65;
          v67 = __DataStorage._offset.getter();
          if (__OFSUB__(v10, v67))
          {
            goto LABEL_393;
          }

          v68 = v10 - v67 + v66;
          MEMORY[0x1DA6C8120]();
          if (!v68)
          {
            goto LABEL_445;
          }

LABEL_164:
          v88 = *(v68 + v4);
          outlined consume of Data._Representation(v10, v9);
LABEL_197:
          v179 = v5 + 8;
          v4 = v5 + 12;
          if (__OFADD__(v43, 4))
          {
            goto LABEL_367;
          }

          if (v11 <= 1)
          {
            if (v11)
            {
              LODWORD(v6) = HIDWORD(v10) - v10;
              if (__OFSUB__(HIDWORD(v10), v10))
              {
                goto LABEL_395;
              }

              v6 = v6;
            }

            else
            {
              v6 = BYTE6(v9);
            }

            goto LABEL_3;
          }

          if (v11 == 2)
          {
            v101 = *(v10 + 16);
            v100 = *(v10 + 24);
            v14 = __OFSUB__(v100, v101);
            v6 = v100 - v101;
            if (v14)
            {
              goto LABEL_394;
            }

LABEL_3:
            if (v4 >= v6)
            {
              goto LABEL_347;
            }
          }

          else if ((v4 & 0x8000000000000000) == 0)
          {
            goto LABEL_347;
          }

          outlined copy of Data._Representation(v10, v9);
          specialized Data.withUnsafeBytes<A>(_:)(v10, v9);
          v8 = v7;
          outlined consume of Data._Representation(v10, v9);
          v179 = v5 + 12;
          transform.b = 0.0;
          transform.c = 0.0;
          transform.a = 1.0;
          transform.d = 1.0;
          transform.tx = 0.0;
          transform.ty = 0.0;
          CGMutablePathRef.addLine(to:transform:)(__PAIR128__(v8, v88), &transform);
          goto LABEL_5;
        }

        v172[0] = v10;
        LOWORD(v172[1]) = v9;
        BYTE2(v172[1]) = BYTE2(v9);
        BYTE3(v172[1]) = BYTE3(v9);
        BYTE4(v172[1]) = BYTE4(v9);
        BYTE5(v172[1]) = BYTE5(v9);
      }

      v88 = *(v172 + v4);
      goto LABEL_197;
    }

    if (v24 == 2)
    {
      break;
    }

    if (v24 == 3)
    {
      if (v36 != 3)
      {
        goto LABEL_343;
      }

      v37 = v5 + 8;
      if (__OFADD__(v4, 4))
      {
        goto LABEL_361;
      }

      if (v11 > 1)
      {
        if (v11 != 2)
        {
          if ((v37 & 0x8000000000000000) == 0)
          {
            goto LABEL_347;
          }

          memset(v172, 0, 14);
          goto LABEL_176;
        }

        v48 = *(v10 + 16);
        v47 = *(v10 + 24);
        v14 = __OFSUB__(v47, v48);
        v38 = v47 - v48;
        if (v14)
        {
          goto LABEL_375;
        }
      }

      else if (v11)
      {
        LODWORD(v38) = HIDWORD(v10) - v10;
        if (__OFSUB__(HIDWORD(v10), v10))
        {
          goto LABEL_379;
        }

        v38 = v38;
      }

      else
      {
        v38 = BYTE6(v9);
      }

      if (v37 >= v38)
      {
        goto LABEL_347;
      }

      if (v11 == 2)
      {
        v74 = *(v10 + 16);

        v75 = __DataStorage._bytes.getter();
        if (!v75)
        {
          goto LABEL_440;
        }

        v76 = v75;
        v77 = __DataStorage._offset.getter();
        if (__OFSUB__(v74, v77))
        {
          goto LABEL_384;
        }

        v60 = v74 - v77 + v76;
        MEMORY[0x1DA6C8120]();
        if (!v60)
        {
          goto LABEL_441;
        }

LABEL_156:
        v78 = *(v60 + v4);
        outlined consume of Data._Representation(v10, v9);
        goto LABEL_177;
      }

      if (v11 == 1)
      {
        if (v10 > v10 >> 32)
        {
          goto LABEL_388;
        }

        v57 = __DataStorage._bytes.getter();
        if (!v57)
        {
          goto LABEL_443;
        }

        v58 = v57;
        v59 = __DataStorage._offset.getter();
        if (__OFSUB__(v10, v59))
        {
          goto LABEL_392;
        }

        v60 = v10 - v59 + v58;
        MEMORY[0x1DA6C8120]();
        if (!v60)
        {
          goto LABEL_444;
        }

        goto LABEL_156;
      }

      v172[0] = v10;
      LOWORD(v172[1]) = v9;
      BYTE2(v172[1]) = BYTE2(v9);
      BYTE3(v172[1]) = BYTE3(v9);
      BYTE4(v172[1]) = BYTE4(v9);
      BYTE5(v172[1]) = BYTE5(v9);
LABEL_176:
      v78 = *(v172 + v4);
LABEL_177:
      v179 = v5 + 8;
      v93 = v5 + 12;
      if (__OFADD__(v37, 4))
      {
        goto LABEL_365;
      }

      if (v11 > 1)
      {
        if (v11 != 2)
        {
          if ((v93 & 0x8000000000000000) == 0)
          {
            goto LABEL_347;
          }

LABEL_224:
          outlined copy of Data._Representation(v10, v9);
          specialized Data.withUnsafeBytes<A>(_:)(v10, v9);
          v110 = v109;
          outlined consume of Data._Representation(v10, v9);
          v111 = v37 + 8;
          if (__OFADD__(v93, 4))
          {
            goto LABEL_369;
          }

          v10 = v177;
          v9 = v178;
          v112 = v178 >> 62;
          if ((v178 >> 62) > 1)
          {
            if (v112 != 2)
            {
              if ((v111 & 0x8000000000000000) == 0)
              {
                goto LABEL_347;
              }

              memset(v172, 0, 14);
              goto LABEL_283;
            }

            v115 = *(v177 + 16);
            v114 = *(v177 + 24);
            v14 = __OFSUB__(v114, v115);
            v113 = v114 - v115;
            if (v14)
            {
              goto LABEL_403;
            }
          }

          else if (v112)
          {
            LODWORD(v113) = HIDWORD(v177) - v177;
            if (__OFSUB__(HIDWORD(v177), v177))
            {
              goto LABEL_405;
            }

            v113 = v113;
          }

          else
          {
            v113 = BYTE6(v178);
          }

          if (v111 >= v113)
          {
            goto LABEL_347;
          }

          if (v112 == 2)
          {
            v131 = *(v177 + 16);

            v132 = __DataStorage._bytes.getter();
            if (!v132)
            {
              goto LABEL_454;
            }

            v133 = v132;
            v134 = __DataStorage._offset.getter();
            if (__OFSUB__(v131, v134))
            {
              goto LABEL_409;
            }

            v125 = v131 - v134 + v133;
            MEMORY[0x1DA6C8120]();
            if (!v125)
            {
              goto LABEL_455;
            }

LABEL_271:
            v135 = *(v125 + v93);
            outlined consume of Data._Representation(v10, v9);
            goto LABEL_284;
          }

          if (v112 == 1)
          {
            if (v177 > v177 >> 32)
            {
              goto LABEL_407;
            }

            v122 = __DataStorage._bytes.getter();
            if (!v122)
            {
              goto LABEL_451;
            }

            v123 = v122;
            v124 = __DataStorage._offset.getter();
            if (__OFSUB__(v10, v124))
            {
              goto LABEL_410;
            }

            v125 = v10 - v124 + v123;
            MEMORY[0x1DA6C8120]();
            if (!v125)
            {
              goto LABEL_448;
            }

            goto LABEL_271;
          }

          v172[0] = v177;
          LODWORD(v172[1]) = v178;
          WORD2(v172[1]) = WORD2(v178);
LABEL_283:
          v135 = *(v172 + v93);
LABEL_284:
          v179 = v111;
          v139 = v93 + 8;
          if (__OFADD__(v111, 4))
          {
            goto LABEL_371;
          }

          if (v112 > 1)
          {
            if (v112 != 2)
            {
              if ((v139 & 0x8000000000000000) == 0)
              {
                goto LABEL_347;
              }

LABEL_303:
              outlined copy of Data._Representation(v10, v9);
              specialized Data.withUnsafeBytes<A>(_:)(v10, v9);
              v146 = v145;
              outlined consume of Data._Representation(v10, v9);
              v147 = v111 + 8;
              if (__OFADD__(v139, 4))
              {
                goto LABEL_372;
              }

              v10 = v177;
              v9 = v178;
              v148 = v178 >> 62;
              if ((v178 >> 62) > 1)
              {
                if (v148 != 2)
                {
                  if ((v147 & 0x8000000000000000) == 0)
                  {
                    goto LABEL_347;
                  }

                  memset(v172, 0, 14);
                  goto LABEL_328;
                }

                v151 = *(v177 + 16);
                v150 = *(v177 + 24);
                v14 = __OFSUB__(v150, v151);
                v149 = v150 - v151;
                if (v14)
                {
                  goto LABEL_416;
                }
              }

              else if (v148)
              {
                LODWORD(v149) = HIDWORD(v177) - v177;
                if (__OFSUB__(HIDWORD(v177), v177))
                {
                  goto LABEL_417;
                }

                v149 = v149;
              }

              else
              {
                v149 = BYTE6(v178);
              }

              if (v147 >= v149)
              {
                goto LABEL_347;
              }

              if (v148 == 2)
              {
                v156 = *(v177 + 16);

                v157 = __DataStorage._bytes.getter();
                if (!v157)
                {
                  goto LABEL_458;
                }

                v158 = v157;
                v159 = __DataStorage._offset.getter();
                if (__OFSUB__(v156, v159))
                {
                  goto LABEL_419;
                }

                v155 = v156 - v159 + v158;
                result = MEMORY[0x1DA6C8120]();
                if (!v155)
                {
                  goto LABEL_459;
                }

LABEL_326:
                v161 = *(v155 + v139);
                outlined consume of Data._Representation(v10, v9);
                goto LABEL_329;
              }

              if (v148 == 1)
              {
                if (v177 > v177 >> 32)
                {
                  goto LABEL_418;
                }

                v152 = __DataStorage._bytes.getter();
                if (!v152)
                {
                  goto LABEL_457;
                }

                v153 = v152;
                v154 = __DataStorage._offset.getter();
                if (__OFSUB__(v10, v154))
                {
                  goto LABEL_420;
                }

                v155 = v10 - v154 + v153;
                MEMORY[0x1DA6C8120]();
                if (!v155)
                {
                  goto LABEL_456;
                }

                goto LABEL_326;
              }

              v172[0] = v177;
              LODWORD(v172[1]) = v178;
              WORD2(v172[1]) = WORD2(v178);
LABEL_328:
              v161 = *(v172 + v139);
LABEL_329:
              v179 = v147;
              v14 = __OFADD__(v147, 4);
              v4 = v139 + 8;
              if (v14)
              {
                goto LABEL_373;
              }

              if (v148 > 1)
              {
                if (v148 != 2)
                {
                  if ((v4 & 0x8000000000000000) == 0)
                  {
                    goto LABEL_347;
                  }

                  goto LABEL_342;
                }

                v164 = *(v10 + 16);
                v163 = *(v10 + 24);
                v14 = __OFSUB__(v163, v164);
                v162 = v163 - v164;
                if (v14)
                {
                  goto LABEL_422;
                }
              }

              else if (v148)
              {
                LODWORD(v162) = HIDWORD(v10) - v10;
                if (__OFSUB__(HIDWORD(v10), v10))
                {
                  goto LABEL_421;
                }

                v162 = v162;
              }

              else
              {
                v162 = BYTE6(v9);
              }

              if (v4 >= v162)
              {
                goto LABEL_347;
              }

LABEL_342:
              outlined copy of Data._Representation(v10, v9);
              specialized Data.withUnsafeBytes<A>(_:)(v10, v9);
              v166 = v165;
              outlined consume of Data._Representation(v10, v9);
              v179 = v139 + 8;
              v176.b = 0.0;
              v176.c = 0.0;
              v176.a = 1.0;
              v176.d = 1.0;
              v176.tx = 0.0;
              v176.ty = 0.0;
              CGMutablePathRef.addCurve(to:control1:control2:transform:)(__PAIR128__(v166, v161), __PAIR128__(v110, v78), __PAIR128__(v146, v135), &v176);
              goto LABEL_5;
            }

            v142 = *(v10 + 16);
            v141 = *(v10 + 24);
            v14 = __OFSUB__(v141, v142);
            v140 = v141 - v142;
            if (v14)
            {
              goto LABEL_414;
            }
          }

          else if (v112)
          {
            LODWORD(v140) = HIDWORD(v10) - v10;
            if (__OFSUB__(HIDWORD(v10), v10))
            {
              goto LABEL_413;
            }

            v140 = v140;
          }

          else
          {
            v140 = BYTE6(v9);
          }

          if (v139 >= v140)
          {
            goto LABEL_347;
          }

          goto LABEL_303;
        }

        v96 = *(v10 + 16);
        v95 = *(v10 + 24);
        v14 = __OFSUB__(v95, v96);
        v94 = v95 - v96;
        if (v14)
        {
          goto LABEL_398;
        }
      }

      else if (v11)
      {
        LODWORD(v94) = HIDWORD(v10) - v10;
        if (__OFSUB__(HIDWORD(v10), v10))
        {
          goto LABEL_396;
        }

        v94 = v94;
      }

      else
      {
        v94 = BYTE6(v9);
      }

      if (v93 >= v94)
      {
        goto LABEL_347;
      }

      goto LABEL_224;
    }

    if (v36)
    {
      goto LABEL_343;
    }

    CGPathCloseSubpath(path);
LABEL_5:
    v5 = v4 + 4;
    if (__OFADD__(v4, 4))
    {
      goto LABEL_349;
    }
  }

  if (v36 != 2)
  {
    goto LABEL_343;
  }

  v41 = v5 + 8;
  if (__OFADD__(v4, 4))
  {
    goto LABEL_362;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v46 = *(v10 + 16);
      v45 = *(v10 + 24);
      v14 = __OFSUB__(v45, v46);
      v42 = v45 - v46;
      if (v14)
      {
        goto LABEL_377;
      }

      goto LABEL_103;
    }

    if ((v41 & 0x8000000000000000) == 0)
    {
      goto LABEL_347;
    }

    memset(v172, 0, 14);
    goto LABEL_166;
  }

  if (v11)
  {
    LODWORD(v42) = HIDWORD(v10) - v10;
    if (__OFSUB__(HIDWORD(v10), v10))
    {
      goto LABEL_380;
    }

    v42 = v42;
  }

  else
  {
    v42 = BYTE6(v9);
  }

LABEL_103:
  if (v41 >= v42)
  {
    goto LABEL_347;
  }

  if (v11 != 2)
  {
    if (v11 == 1)
    {
      if (v10 > v10 >> 32)
      {
        goto LABEL_385;
      }

      v53 = __DataStorage._bytes.getter();
      if (!v53)
      {
        goto LABEL_435;
      }

      v54 = v53;
      v55 = __DataStorage._offset.getter();
      if (__OFSUB__(v10, v55))
      {
        goto LABEL_390;
      }

      v56 = v10 - v55 + v54;
      MEMORY[0x1DA6C8120]();
      if (!v56)
      {
        goto LABEL_446;
      }

LABEL_152:
      v73 = *(v56 + v4);
      outlined consume of Data._Representation(v10, v9);
LABEL_167:
      v179 = v5 + 8;
      v89 = v5 + 12;
      if (__OFADD__(v41, 4))
      {
        goto LABEL_366;
      }

      if (v11 <= 1)
      {
        if (v11)
        {
          LODWORD(v90) = HIDWORD(v10) - v10;
          if (__OFSUB__(HIDWORD(v10), v10))
          {
            goto LABEL_397;
          }

          v90 = v90;
        }

        else
        {
          v90 = BYTE6(v9);
        }

        goto LABEL_208;
      }

      if (v11 == 2)
      {
        v92 = *(v10 + 16);
        v91 = *(v10 + 24);
        v14 = __OFSUB__(v91, v92);
        v90 = v91 - v92;
        if (v14)
        {
          goto LABEL_399;
        }

LABEL_208:
        if (v89 >= v90)
        {
          goto LABEL_347;
        }
      }

      else if ((v89 & 0x8000000000000000) == 0)
      {
        goto LABEL_347;
      }

      outlined copy of Data._Representation(v10, v9);
      specialized Data.withUnsafeBytes<A>(_:)(v10, v9);
      v103 = v102;
      outlined consume of Data._Representation(v10, v9);
      v104 = v41 + 8;
      if (__OFADD__(v89, 4))
      {
        goto LABEL_368;
      }

      v10 = v177;
      v9 = v178;
      v105 = v178 >> 62;
      if ((v178 >> 62) > 1)
      {
        if (v105 == 2)
        {
          v108 = *(v177 + 16);
          v107 = *(v177 + 24);
          v14 = __OFSUB__(v107, v108);
          v106 = v107 - v108;
          if (v14)
          {
            goto LABEL_402;
          }

          goto LABEL_242;
        }

        if ((v104 & 0x8000000000000000) == 0)
        {
          goto LABEL_347;
        }

        memset(v172, 0, 14);
      }

      else
      {
        if (v105)
        {
          LODWORD(v106) = HIDWORD(v177) - v177;
          if (__OFSUB__(HIDWORD(v177), v177))
          {
            goto LABEL_404;
          }

          v106 = v106;
        }

        else
        {
          v106 = BYTE6(v178);
        }

LABEL_242:
        if (v104 >= v106)
        {
          goto LABEL_347;
        }

        if (v105 == 2)
        {
          v126 = *(v177 + 16);

          v127 = __DataStorage._bytes.getter();
          if (!v127)
          {
            goto LABEL_452;
          }

          v128 = v127;
          v129 = __DataStorage._offset.getter();
          if (__OFSUB__(v126, v129))
          {
            goto LABEL_406;
          }

          v121 = v126 - v129 + v128;
          MEMORY[0x1DA6C8120]();
          if (!v121)
          {
            goto LABEL_453;
          }

          goto LABEL_267;
        }

        if (v105 == 1)
        {
          if (v177 > v177 >> 32)
          {
            goto LABEL_408;
          }

          v118 = __DataStorage._bytes.getter();
          if (!v118)
          {
            goto LABEL_449;
          }

          v119 = v118;
          v120 = __DataStorage._offset.getter();
          if (__OFSUB__(v10, v120))
          {
            goto LABEL_411;
          }

          v121 = v10 - v120 + v119;
          MEMORY[0x1DA6C8120]();
          if (!v121)
          {
            goto LABEL_450;
          }

LABEL_267:
          v130 = *(v121 + v89);
          outlined consume of Data._Representation(v10, v9);
LABEL_274:
          v179 = v104;
          v14 = __OFADD__(v104, 4);
          v4 = v89 + 8;
          if (v14)
          {
            goto LABEL_370;
          }

          if (v105 <= 1)
          {
            if (v105)
            {
              LODWORD(v136) = HIDWORD(v10) - v10;
              if (__OFSUB__(HIDWORD(v10), v10))
              {
                goto LABEL_412;
              }

              v136 = v136;
            }

            else
            {
              v136 = BYTE6(v9);
            }

            goto LABEL_294;
          }

          if (v105 == 2)
          {
            v138 = *(v10 + 16);
            v137 = *(v10 + 24);
            v14 = __OFSUB__(v137, v138);
            v136 = v137 - v138;
            if (v14)
            {
              goto LABEL_415;
            }

LABEL_294:
            if (v4 >= v136)
            {
              goto LABEL_347;
            }
          }

          else if ((v4 & 0x8000000000000000) == 0)
          {
            goto LABEL_347;
          }

          outlined copy of Data._Representation(v10, v9);
          specialized Data.withUnsafeBytes<A>(_:)(v10, v9);
          v144 = v143;
          outlined consume of Data._Representation(v10, v9);
          v179 = v89 + 8;
          v175.b = 0.0;
          v175.c = 0.0;
          v175.a = 1.0;
          v175.d = 1.0;
          v175.tx = 0.0;
          v175.ty = 0.0;
          CGMutablePathRef.addQuadCurve(to:control:transform:)(__PAIR128__(v103, v73), __PAIR128__(v144, v130), &v175);
          goto LABEL_5;
        }

        v172[0] = v177;
        LODWORD(v172[1]) = v178;
        WORD2(v172[1]) = WORD2(v178);
      }

      v130 = *(v172 + v89);
      goto LABEL_274;
    }

    v172[0] = v10;
    LOWORD(v172[1]) = v9;
    BYTE2(v172[1]) = BYTE2(v9);
    BYTE3(v172[1]) = BYTE3(v9);
    BYTE4(v172[1]) = BYTE4(v9);
    BYTE5(v172[1]) = BYTE5(v9);
LABEL_166:
    v73 = *(v172 + v4);
    goto LABEL_167;
  }

  v69 = *(v10 + 16);

  v70 = __DataStorage._bytes.getter();
  if (v70)
  {
    v71 = v70;
    v72 = __DataStorage._offset.getter();
    if (__OFSUB__(v69, v72))
    {
      goto LABEL_382;
    }

    v56 = v69 - v72 + v71;
    MEMORY[0x1DA6C8120]();
    if (!v56)
    {
      goto LABEL_433;
    }

    goto LABEL_152;
  }

  MEMORY[0x1DA6C8120]();
LABEL_433:
  __break(1u);
LABEL_434:
  MEMORY[0x1DA6C8120]();
  __break(1u);
LABEL_435:
  MEMORY[0x1DA6C8120]();
  __break(1u);
LABEL_436:
  MEMORY[0x1DA6C8120]();
LABEL_437:
  __break(1u);
LABEL_438:
  MEMORY[0x1DA6C8120]();
LABEL_439:
  __break(1u);
LABEL_440:
  MEMORY[0x1DA6C8120]();
LABEL_441:
  __break(1u);
LABEL_442:
  MEMORY[0x1DA6C8120]();
  __break(1u);
LABEL_443:
  MEMORY[0x1DA6C8120]();
  __break(1u);
LABEL_444:
  __break(1u);
LABEL_445:
  __break(1u);
LABEL_446:
  __break(1u);
LABEL_447:
  __break(1u);
LABEL_448:
  __break(1u);
LABEL_449:
  MEMORY[0x1DA6C8120]();
  __break(1u);
LABEL_450:
  __break(1u);
LABEL_451:
  MEMORY[0x1DA6C8120]();
  __break(1u);
LABEL_452:
  MEMORY[0x1DA6C8120]();
LABEL_453:
  __break(1u);
LABEL_454:
  MEMORY[0x1DA6C8120]();
LABEL_455:
  __break(1u);
LABEL_456:
  __break(1u);
LABEL_457:
  MEMORY[0x1DA6C8120]();
  __break(1u);
LABEL_458:
  result = MEMORY[0x1DA6C8120]();
LABEL_459:
  __break(1u);
  return result;
}

id specialized SignatureItem.__allocating_init(rawValue:)(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
  v5 = specialized @nonobjc NSKeyedUnarchiver.init(forReadingFrom:)();
  if (!v5)
  {
    outlined consume of Data._Representation(a1, a2);
    return 0;
  }

  v7 = v5;
  v8 = objc_allocWithZone(type metadata accessor for SignatureItem());
  v9 = v7;
  v10 = SignatureItem.init(coder:)(v9);
  v11 = v10;

  outlined consume of Data._Representation(a1, a2);
  if (!v10)
  {
    return 0;
  }

  return v10;
}

uint64_t type metadata accessor for SignatureItem()
{
  result = type metadata singleton initialization cache for SignatureItem;
  if (!type metadata singleton initialization cache for SignatureItem)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for SignatureItem()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Date?(319, &lazy cache variable for type metadata for PKDrawing?, MEMORY[0x1E69783E0]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for Date?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t outlined init with copy of PaperDocument.PDFPageAndPaperPage(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaperDocument.PDFPageAndPaperPage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PaperDocument.PDFPageAndPaperPage(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type SignatureItem and conformance SignatureItem(unint64_t *a1, void (*a2)(uint64_t))
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

double specialized Sequence.reduce<A>(_:_:)(void (*a1)(double *__return_ptr, double *, char *), uint64_t a2, double a3)
{
  v37 = a2;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd);
  v33 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v31 - v17;
  v42 = a3;
  (*(v12 + 16))(v14, v39, v11, v16);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  dispatch thunk of Sequence.makeIterator()();
  v19 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>>.Iterator and conformance CROrderedSet<A>.Iterator, &_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd);
  v38 = v18;
  v39 = v15;
  v20 = v40;
  v36 = v19;
  dispatch thunk of IteratorProtocol.next()();
  v35 = *(v20 + 48);
  if (v35(v10, 1, v5) != 1)
  {
    v23 = *(v20 + 32);
    v22 = v20 + 32;
    v21 = v23;
    v31 = (v22 - 24);
    v23(v7, v10, v5);
    v24 = v32;
    v32(&v41, &v42, v7);
    if (v3)
    {
      (*v31)(v7, v5);
    }

    else
    {
      v25 = v22;
      v26 = v24;
      v34 = v21;
      v40 = v25;
      v27 = v31;
      v28 = *v31;
      while (1)
      {
        v29 = v27;
        v28(v7, v5);
        a3 = v41;
        v42 = v41;
        dispatch thunk of IteratorProtocol.next()();
        if (v35(v10, 1, v5) == 1)
        {
          break;
        }

        v34(v7, v10, v5);
        v26(&v41, &v42, v7);
        v27 = v29;
      }
    }
  }

  (*(v33 + 8))(v38, v39);
  return a3;
}

double specialized Sequence.reduce<A>(_:_:)(void (*a1)(void *__return_ptr, double *, char *), uint64_t a2, double a3, double a4, double a5, double a6)
{
  v35 = a1;
  v36 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v31 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v30 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd);
  v32 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v30 - v22;
  v39 = a3;
  v40 = a4;
  v41 = a5;
  v42 = a6;
  (*(v18 + 16))(v20, v43, v17);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<Ref<CRRegister<TaggedStroke>>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  dispatch thunk of Sequence.makeIterator()();
  v24 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<Ref<CRRegister<TaggedStroke>>>.Iterator and conformance CROrderedSet<A>.Iterator, &_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd);
  v37 = v23;
  v43 = v21;
  v34 = v24;
  dispatch thunk of IteratorProtocol.next()();
  v25 = v31;
  v33 = *(v31 + 48);
  if (v33(v16, 1, v11) != 1)
  {
    v28 = *(v25 + 32);
    v26 = v25 + 32;
    v27 = v28;
    do
    {
      v27(v13, v16, v11);
      v35(v38, &v39, v13);
      (*(v26 - 24))(v13, v11);
      if (v6)
      {
        break;
      }

      a3 = *v38;
      v39 = *v38;
      v40 = *&v38[1];
      v41 = *&v38[2];
      v42 = *&v38[3];
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v33(v16, 1, v11) != 1);
  }

  (*(v32 + 8))(v37, v43);
  return a3;
}

{
  v35 = a1;
  v36 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v31 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v30 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRSequenceV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd);
  v32 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v30 - v22;
  v39 = a3;
  v40 = a4;
  v41 = a5;
  v42 = a6;
  (*(v18 + 16))(v20, v43, v17);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRSequence<Ref<CRRegister<TaggedStroke>>> and conformance CRSequence<A>, &_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  dispatch thunk of Sequence.makeIterator()();
  v24 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRSequence<Ref<CRRegister<TaggedStroke>>>.Iterator and conformance CRSequence<A>.Iterator, &_s9Coherence10CRSequenceV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd);
  v37 = v23;
  v43 = v21;
  v34 = v24;
  dispatch thunk of IteratorProtocol.next()();
  v25 = v31;
  v33 = *(v31 + 48);
  if (v33(v16, 1, v11) != 1)
  {
    v28 = *(v25 + 32);
    v26 = v25 + 32;
    v27 = v28;
    do
    {
      v27(v13, v16, v11);
      v35(v38, &v39, v13);
      (*(v26 - 24))(v13, v11);
      if (v6)
      {
        break;
      }

      a3 = *v38;
      v39 = *v38;
      v40 = *&v38[1];
      v41 = *&v38[2];
      v42 = *&v38[3];
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v33(v16, 1, v11) != 1);
  }

  (*(v32 + 8))(v37, v43);
  return a3;
}

void *specialized Sequence.reduce<A>(_:_:)(void *result, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7)
{
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v8 = *(a7 + 16);
  if (v8)
  {
    v10 = result;
    v11 = 0;
    do
    {
      v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd) - 8);
      result = v10(v13, &v14, a7 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v11);
      if (v7)
      {
        break;
      }

      ++v11;
      v14 = *v13;
      v15 = *&v13[1];
      v16 = *&v13[2];
      v17 = *&v13[3];
    }

    while (v8 != v11);
  }

  return result;
}

uint64_t Capsule.init(serializedPaperData:fileSignature:)()
{
  if (one-time initialization token for allReadableFileFormatVersions != -1)
  {
    swift_once();
  }

  return Capsule.init(serializedData:allowedAppFormats:fileSignature:)();
}

uint64_t key path getter for Paper.drawing : Paper()
{
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  return CRRegister.wrappedValue.getter();
}

uint64_t key path setter for Paper.drawing : Paper(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  outlined init with copy of Date?(a1, &v9 - v6, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  outlined init with copy of Date?(v7, v4, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
}

double Capsule<>.contentBounds(includeDrawing:)(char a1)
{
  v2 = v1;
  v68 = type metadata accessor for Paper(0);
  MEMORY[0x1EEE9AC00](v68);
  v61 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v5 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v7 = &v60 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v71 = &v60 - v9;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v65 = *(v66 - 1);
  MEMORY[0x1EEE9AC00](v66);
  v63 = &v60 - v10;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd);
  v64 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v60 - v11;
  v12 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v60 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v62 = v7;
  if ((a1 & 1) == 0)
  {
    goto LABEL_4;
  }

  v60 = &v60 - v20;
  v67 = v5;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  Capsule.subscript.getter();

  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
    v5 = v67;
LABEL_4:
    v25 = v71;
    goto LABEL_8;
  }

  (*(v19 + 32))(v60, v17, v18);
  _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
  v26 = Ref.subscript.getter();
  MEMORY[0x1EEE9AC00](v26);
  *(&v60 - 2) = v2;
  v27 = specialized Sequence.reduce<A>(_:_:)(partial apply for specialized closure #1 in PKDrawingStruct.bounds<A>(in:), (&v60 - 4), x, y, width, height);
  v29 = v28;
  v31 = v30;
  v33 = v32;
  _s8PaperKit0A0VWOhTm_4(v14, type metadata accessor for PKDrawingStruct);
  if (CGRect.isFinite.getter(v27, v29, v31, v33))
  {
    v80.origin.x = x;
    v80.origin.y = y;
    v80.size.width = width;
    v80.size.height = height;
    v84.origin.x = v27;
    v84.origin.y = v29;
    v84.size.width = v31;
    v84.size.height = v33;
    v81 = CGRectUnion(v80, v84);
    x = v81.origin.x;
    y = v81.origin.y;
    width = v81.size.width;
    height = v81.size.height;
  }

  v5 = v67;
  v25 = v71;
  (*(v19 + 8))(v60, v18);
LABEL_8:
  swift_getKeyPath();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v35 = v63;
  v67 = v34;
  Capsule.subscript.getter();

  v36 = v69;
  v37 = v66;
  CROrderedSet.makeIterator()();
  (*(v65 + 1))(v35, v37);
  v38 = v70;
  CROrderedSet.Iterator.next()();
  v39 = *(v5 + 48);
  v40 = v72;
  if (v39(v25, 1, v72) != 1)
  {
    v41 = v61;
    v43 = *(v5 + 32);
    v42 = v5 + 32;
    v66 = v43;
    v44 = (v42 - 24);
    v65 = v39;
    v45 = v62;
    do
    {
      (v66)(v45, v25, v40);
      _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
      SharedTagged_10.subscript.getter();
      v46 = v42;
      v47 = v76;
      v48 = v77;
      __swift_project_boxed_opaque_existential_1(v75, v76);
      Capsule.root.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
      CRRegister.wrappedValue.getter();
      _s8PaperKit0A0VWOhTm_4(v41, type metadata accessor for Paper);
      v78[0] = v73;
      v78[1] = v74;
      v79 = 0;
      v49 = *(v48 + 136);
      v36 = v69;
      v50 = v47;
      v38 = v70;
      v51 = v48;
      v42 = v46;
      v25 = v71;
      v52 = v49(v78, v50, v51);
      v54 = v53;
      v56 = v55;
      v58 = v57;
      __swift_destroy_boxed_opaque_existential_0(v75);
      v82.origin.x = x;
      v82.origin.y = y;
      v82.size.width = width;
      v82.size.height = height;
      v85.origin.x = v52;
      v85.origin.y = v54;
      v85.size.width = v56;
      v85.size.height = v58;
      v83 = CGRectUnion(v82, v85);
      x = v83.origin.x;
      y = v83.origin.y;
      width = v83.size.width;
      height = v83.size.height;
      (*v44)(v45, v72);
      CROrderedSet.Iterator.next()();
      v40 = v72;
    }

    while (v65(v25, 1, v72) != 1);
  }

  (*(v64 + 8))(v36, v38);
  return x;
}

uint64_t static CRDataStoreBundle<>.paperBundle(_:sync:at:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  outlined init with copy of Date?(a2, &v21 - v11, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd);
  (*(v7 + 16))(v9, a3, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence16CRCodableVersionOGMd);
  v12 = type metadata accessor for CRCodableVersion();
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D405C990;
  v17 = v16 + v15;
  v18 = *(v13 + 104);
  v18(v17, *MEMORY[0x1E6995280], v12);
  v18(v17 + v14, *MEMORY[0x1E6995288], v12);
  if (one-time initialization token for allReadableFileFormatVersions != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v19 = a1;
  return CRDataStoreBundle.init(_:sync:at:allowedEncodings:allowedAppFormats:writableAppFormats:)();
}

uint64_t static CRDataStoreBundle<>.readPaper(_:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15[2] = a2;
  v15[0] = a3;
  v15[1] = a1;
  FileVersionPolicy = type metadata accessor for CRDataStoreBundleReadFileVersionPolicy();
  v4 = *(FileVersionPolicy - 8);
  MEMORY[0x1EEE9AC00](FileVersionPolicy);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence16CRCodableVersionOGMd);
  v7 = type metadata accessor for CRCodableVersion();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D405C990;
  v12 = v11 + v10;
  v13 = *(v8 + 104);
  v13(v12, *MEMORY[0x1E6995280], v7);
  v13(v12 + v9, *MEMORY[0x1E6995288], v7);
  if (one-time initialization token for allReadableFileFormatVersions != -1)
  {
    swift_once();
  }

  (*(v4 + 104))(v6, *MEMORY[0x1E6995398], FileVersionPolicy);
  static CRDataStoreBundle.read(_:url:fileVersionPolicy:allowedEncodings:allowedAppFormats:)();
  (*(v4 + 8))(v6, FileVersionPolicy);
}

uint64_t Capsule<>.createSubCanvasElement(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = *(a5 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v21[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v14 + 16))(a7, v19, v18, v15);
  v22 = a6;
  v23 = a1;
  v24 = a2;
  v25 = a3;
  v26 = a4 & 1;
  Capsule.callAsFunction<A>(_:)();
  Capsule.copy()();
  (*(v14 + 8))(a7, a5);
  return (*(v14 + 32))(a7, v17, a5);
}

void specialized MutableCollection<>.sort(by:)(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v5);
  }

  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(a1, a2);
  *v2 = v5;
}

uint64_t closure #1 in Capsule<>.transformContents(_:)(uint64_t a1, CGFloat *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v95 - v10;
  v111 = type metadata accessor for PKStrokeInheritedProperties(0);
  MEMORY[0x1EEE9AC00](v111);
  v143 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v126 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  v97 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v98 = &v95 - v16;
  v120 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v120);
  v119 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v118 = &v95 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v117 = &v95 - v21;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v96 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v115 = &v95 - v22;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
  v95 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v114 = &v95 - v23;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v125 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v131 = &v95 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v121 = &v95 - v26;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v101 = &v95 - v27;
  v99 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v99);
  v100 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd);
  v104 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v123 = &v95 - v29;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v135 = *(v134 - 1);
  MEMORY[0x1EEE9AC00](v134);
  v106 = &v95 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v112 = (&v95 - v32);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v107 = &v95 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v36 = &v95 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v136 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v95 - v38;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd);
  v110 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v41 = &v95 - v40;
  swift_getKeyPath();
  Capsule.Ref.subscript.getter();
  v42 = v134;

  CROrderedSet.makeIterator()();
  (*(v136 + 8))(v39, v37);
  v43 = v106;
  v44 = v105;
  v133 = v41;
  CROrderedSet.Iterator.next()();
  v45 = v135;
  v46 = *(v135 + 6);
  v130 = (v135 + 48);
  v129 = v46;
  v47 = (v46)(v36, 1, v42);
  v137 = *&a1;
  if (v47 != 1)
  {
    v128 = *(v45 + 4);
    v135 = v45 + 32;
    v127 = (v45 + 8);
    do
    {
      (v128)(v43, v36, v42);
      v136 = SharedTagged_10.subscript.modify();
      v48 = v44;
      v49 = v36;
      v50 = v43;
      v53 = *(v51 + 24);
      v52 = *(v51 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v51, v53);
      v54 = (*(v52 + 24))(&v138, v53, v52);
      v144 = *v55;
      t1.a = v3;
      t1.b = v4;
      t1.c = v5;
      t1.d = v6;
      t1.tx = v7;
      t1.ty = v8;
      *v55 = CGRectApplyAffineTransform(v144, &t1);
      v43 = v50;
      v36 = v49;
      v44 = v48;
      v54(&v138, 0);
      (v136)(&t2, 0);
      v42 = v134;
      (*v127)(v43, v134);
      CROrderedSet.Iterator.next()();
    }

    while ((v129)(v36, 1, v42) != 1);
  }

  v110[1](v133, v44);
  swift_getKeyPath();
  v56 = v112;
  Capsule.Ref.subscript.getter();

  v57 = v108;
  v58 = v109;
  if ((*(v108 + 48))(v56, 1, v109) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v56, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  }

  (*(v57 + 32))(v107, v56, v58);
  v60 = v100;
  Ref.subscript.getter();
  v61 = v102;
  v62 = v101;
  v63 = v103;
  (*(v102 + 16))(v101, v60 + *(v99 + 20), v103);
  _s8PaperKit0A0VWOhTm_4(v60, type metadata accessor for PKDrawingStruct);
  CROrderedSet.makeIterator()();
  (*(v61 + 8))(v62, v63);
  v64 = v121;
  CROrderedSet.Iterator.next()();
  v65 = v64;
  v66 = *(v125 + 48);
  v67 = v122;
  v136 = v125 + 48;
  v135 = v66;
  v68 = (v66)(v64, 1, v122);
  v69 = v98;
  if (v68 != 1)
  {
    v134 = *(v125 + 32);
    v133 = (v96 + 8);
    v130 = (v95 + 56);
    v112 = (v95 + 32);
    v129 = (v95 + 48);
    v70 = (v97 + 48);
    v71 = (v97 + 8);
    v72 = (v97 + 32);
    v110 = (v95 + 8);
    v125 += 32;
    v128 = (v125 - 24);
    v113 = v11;
    (v134)(v131, v65, v67);
    while (1)
    {
      v75 = v115;
      Ref.subscript.getter();
      v76 = v118;
      v77 = v116;
      CRRegister.value.getter();
      (*v133)(v75, v77);
      v78 = v119;
      _s8PaperKit9PDFPageIDVWObTm_0(v76, v119, type metadata accessor for TaggedStroke);
      if (swift_getEnumCaseMultiPayload())
      {
        _s8PaperKit0A0VWOhTm_4(v78, type metadata accessor for TaggedStroke);
        v79 = 1;
        v80 = v117;
        v81 = v132;
      }

      else
      {
        v80 = v117;
        v82 = v78;
        v81 = v132;
        (*v112)(v117, v82, v132);
        v79 = 0;
      }

      (*v130)(v80, v79, 1, v81);
      v83 = (*v129)(v80, 1, v81);
      v84 = v113;
      if (v83 == 1)
      {
        v73 = v122;
        (*v128)(v131, v122);
        outlined destroy of StocksKitCurrencyCache.Provider?(v80, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
      }

      else
      {
        (*v112)(v114, v80, v81);
        v85 = v137;
        v127 = Ref.subscript.modify();
        specialized PKStrokeStruct.uniqueInheritedPropertiesIfNeeded<A>(in:)(*&v85);
        (v127)(&t1, 0);
        Ref.subscript.getter();
        t1.a = v85;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
        CRRegister.wrappedValue.getter();
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Capsule<Paper>.Ref and conformance Capsule<A>.Ref, &_s9Coherence7CapsuleV3RefCy8PaperKit0D0V_GMd);
        while (1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleV3RefCy8PaperKit0D0V_GMd);
          v86 = v143;
          Ref.subscript.getter();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
          CRRegister.wrappedValue.getter();
          _s8PaperKit0A0VWOhTm_4(v86, type metadata accessor for PKStrokeInheritedProperties);
          if ((*v70)(v84, 1, v15) == 1)
          {
            break;
          }

          (*v71)(v69, v15);
          (*v72)(v69, v84, v15);
        }

        outlined destroy of StocksKitCurrencyCache.Provider?(v84, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
        _s8PaperKit0A0VWOhTm_4(v126, type metadata accessor for PKStrokeStruct);

        v87 = Ref.subscript.modify();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
        v88 = CRRegister.wrappedValue.modify();
        v90 = v89;
        v91 = v89[1];
        v92 = v89[2];
        *&t1.a = *v89;
        *&t1.c = v91;
        *&t1.tx = v92;
        t2.a = v3;
        t2.b = v4;
        t2.c = v5;
        t2.d = v6;
        t2.tx = v7;
        t2.ty = v8;
        CGAffineTransformConcat(&v138, &t1, &t2);
        v93 = *&v138.c;
        v94 = *&v138.tx;
        *v90 = *&v138.a;
        v90[1] = v93;
        v90[2] = v94;
        v88(v141, 0);
        v87(v142, 0);
        (*v71)(v69, v15);
        (*v110)(v114, v132);
        v73 = v122;
        (*v128)(v131, v122);
      }

      v74 = v121;
      CROrderedSet.Iterator.next()();
      if ((v135)(v74, 1, v73) == 1)
      {
        break;
      }

      (v134)(v131, v74, v73);
    }
  }

  (*(v104 + 8))(v123, v124);
  return (*(v108 + 8))(v107, v109);
}

uint64_t closure #1 in Capsule<>.append<A>(_:andStrokes:pasteOffset:)(char **a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unsigned int (*a6)(void, void, void), uint64_t a7, __n128 a8, __n128 a9)
{
  v208 = a7;
  v212 = a5;
  LODWORD(v193) = a3;
  v203 = a8;
  v204 = a9;
  v215 = a2;
  v246 = a1;
  KeyPath = *a1;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v190 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v172 = &v170 - v11;
  v12 = *(KeyPath + *MEMORY[0x1E6995440]);
  v177 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v176 = &v170 - v14;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  v171 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v188 = &v170 - v15;
  v198 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v198);
  v187 = &v170 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v217);
  v201 = &v170 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v211 = &v170 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v191 = &v170 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v197 = &v170 - v23;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v173 = *(v216 - 8);
  MEMORY[0x1EEE9AC00](v216);
  v210 = &v170 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v196 = &v170 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v207 = &v170 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v199 = &v170 - v30;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v214 = *(v218 - 8);
  MEMORY[0x1EEE9AC00](v218);
  v221 = &v170 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v209 = &v170 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v220 = &v170 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v206 = &v170 - v37;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd);
  v178 = *(v219 - 8);
  MEMORY[0x1EEE9AC00](v219);
  v213 = &v170 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v200 = &v170 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v175 = &v170 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v186 = &v170 - v44;
  v180 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v180);
  v179 = &v170 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v181 = &v170 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v228 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v227 = &v170 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v184 = &v170 - v51;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd);
  v185 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v182 = &v170 - v52;
  *&v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  *&v224 = *(v223 - 8);
  MEMORY[0x1EEE9AC00](v223);
  v54 = &v170 - v53;
  Capsule.Ref.import<A>(_:)();
  v235 = v12;
  v236 = a4;
  v237 = *(KeyPath + *MEMORY[0x1E6995440] + 8);
  v55 = v237;
  v56 = v212;
  v238 = v212;
  v239 = a6;
  v57 = v208;
  v240 = v208;
  KeyPath = swift_getKeyPath();
  v58 = v12;
  v59 = v223;
  v202 = v58;
  v229 = v58;
  v230 = a4;
  v231 = v55;
  v232 = v56;
  v233 = a6;
  v234 = v57;
  swift_getKeyPath();
  v60 = a4;
  v61 = v224;
  v194 = v60;
  v195 = a6;
  v205 = type metadata accessor for Capsule();
  Capsule.subscript.getter();

  v62 = Capsule.Ref.subscript.modify();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  CROrderedSet.append<A>(contentsOf:)();
  v63 = *(v61 + 8);
  *&v224 = v54;
  v63(v54, v59);
  v62(&t1, 0);

  v65 = fabs(v203.n128_f64[0]) < 0.1;
  if (fabs(v204.n128_f64[0]) >= 0.1)
  {
    v65 = 0;
  }

  v174 = v65;
  if (v65)
  {
    if ((v193 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    v66 = v194;
    *(&v170 - 6) = v202;
    *(&v170 - 5) = v66;
    v170 = v55;
    v67 = v212;
    *(&v170 - 4) = v55;
    *(&v170 - 3) = v67;
    v68 = v208;
    *(&v170 - 2) = v195;
    *(&v170 - 1) = v68;
    swift_getKeyPath();
    v69 = v224;
    Capsule.subscript.getter();

    v70 = v182;
    CROrderedSet.makeIterator()();
    v63(v69, v59);
    v72 = v183;
    v71 = v184;
    CROrderedSet.Iterator.next()();
    v73 = (v228 + 48);
    v74 = *(v228 + 48);
    v75 = v74(v71, 1, v48);
    v76 = v227;
    if (v75 != 1)
    {
      *&v224 = *(v228 + 32);
      v228 += 32;
      *&v223 = v228 - 24;
      *&v77.f64[0] = v203.n128_u64[0];
      *&v77.f64[1] = v204.n128_u64[0];
      v222 = v77;
      v225 = v48;
      KeyPath = v73;
      do
      {
        (v224)(v76, v71, v48);
        v78 = v70;
        v79 = v71;
        v80 = SharedTagged_10.subscript.modify();
        v81 = v72;
        v84 = *(v82 + 24);
        v83 = *(v82 + 32);
        __swift_mutable_project_boxed_opaque_existential_1(v82, v84);
        v85 = *(v83 + 24);
        v86 = v84;
        v72 = v81;
        v87 = v83;
        v76 = v227;
        v88 = v85(&v242, v86, v87);
        *v89 = vaddq_f64(*v89, v222);
        v88(&v242, 0);
        v80(&t1, 0);
        v71 = v79;
        v70 = v78;
        v48 = v225;
        (*v223)(v76, v225);
        CROrderedSet.Iterator.next()();
      }

      while (v74(v71, 1, v48) != 1);
    }

    result = (*(v185 + 8))(v70, v72);
    v55 = v170;
    if ((v193 & 1) == 0)
    {
      return result;
    }
  }

  MEMORY[0x1EEE9AC00](result);
  v90 = v194;
  *(&v170 - 6) = v202;
  *(&v170 - 5) = v90;
  v91 = v212;
  *(&v170 - 4) = v55;
  *(&v170 - 3) = v91;
  v92 = v208;
  *(&v170 - 2) = v195;
  *(&v170 - 1) = v92;
  swift_getKeyPath();
  v93 = v186;
  Capsule.subscript.getter();

  v94 = v190;
  v95 = v190 + 48;
  v96 = *(v190 + 48);
  v97 = v192;
  v98 = v96(v93, 1, v192);
  v99 = v206;
  v100 = v207;
  v101 = v220;
  if (v98 == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v93, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  }

  v195 = v96;
  v205 = v95;
  v102 = v179;
  Ref.subscript.getter();
  v193 = *(v94 + 8);
  v194 = v94 + 8;
  v193(v93, v97);
  v103 = v181;
  _s8PaperKit9PDFPageIDVWObTm_0(v102, v181, type metadata accessor for PKDrawingStruct);
  v104 = *(v180 + 20);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<Ref<CRRegister<TaggedStroke>>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  dispatch thunk of Collection.startIndex.getter();
  v215 = v104;
  v208 = v105;
  dispatch thunk of Collection.endIndex.getter();
  if (*&t1.a != *&v242.a)
  {
    v106 = v246;
    if (!v174)
    {
      CGAffineTransformMakeTranslation(&t1, v203.n128_f64[0], v204.n128_f64[0]);
      v223 = *&t1.a;
      v224 = *&t1.c;
      tx = t1.tx;
      ty = t1.ty;
      CROrderedSet.makeIterator()();
      CROrderedSet.Iterator.next()();
      v109 = *(v214 + 48);
      v110 = v218;
      v228 = v214 + 48;
      v227 = v109;
      v111 = (v109)(v99, 1, v218);
      v112 = v191;
      v113 = v199;
      if (v111 != 1)
      {
        v225 = *(v214 + 32);
        KeyPath = (v214 + 32);
        v145 = (v173 + 8);
        *&v222.f64[0] = v171 + 8;
        v146 = (v214 + 8);
        (v225)(v209, v99, v110);
        while (1)
        {
          v162 = v196;
          Ref.subscript.getter();
          v163 = v197;
          v164 = v216;
          CRRegister.value.getter();
          (*v145)(v162, v164);
          _s8PaperKit9PDFPageIDVWObTm_0(v163, v112, type metadata accessor for TaggedStroke);
          if (swift_getEnumCaseMultiPayload())
          {
            _s8PaperKit0A0VWOhTm_4(v112, type metadata accessor for TaggedStroke);
            v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
            (*(*(v165 - 8) + 56))(v113, 1, 1, v165);
          }

          else
          {
            v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
            v167 = *(v166 - 8);
            (*(v167 + 32))(v113, v112, v166);
            (*(v167 + 56))(v113, 0, 1, v166);
          }

          v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
          v169 = *(v168 - 8);
          if ((*(v169 + 48))(v113, 1, v168) == 1)
          {
            v160 = v218;
            (*v146)(v209, v218);
            outlined destroy of StocksKitCurrencyCache.Provider?(v113, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
          }

          else
          {
            v147 = v187;
            Ref.subscript.getter();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
            v148 = v188;
            CRRegister.wrappedValue.getter();
            v149 = v147;
            v112 = v191;
            _s8PaperKit0A0VWOhTm_4(v149, type metadata accessor for PKStrokeStruct);
            (*(v169 + 8))(v199, v168);
            v150 = v189;
            v151 = Ref.subscript.modify();
            type metadata accessor for PKStrokeInheritedProperties(0);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
            v152 = CRRegister.wrappedValue.modify();
            v154 = v153;
            v155 = v153[1];
            v156 = v153[2];
            *&t1.a = *v153;
            *&t1.c = v155;
            *&t1.tx = v156;
            *&v242.a = v223;
            *&v242.c = v224;
            v242.tx = tx;
            v242.ty = ty;
            CGAffineTransformConcat(&v241, &t1, &v242);
            v157 = *&v241.c;
            v158 = *&v241.tx;
            *v154 = *&v241.a;
            v154[1] = v157;
            v154[2] = v158;
            v152(v243, 0);
            v151(v244, 0);
            v159 = v148;
            v113 = v199;
            (**&v222.f64[0])(v159, v150);
            v160 = v218;
            (*v146)(v209, v218);
          }

          v101 = v220;
          v161 = v206;
          CROrderedSet.Iterator.next()();
          if ((v227)(v161, 1, v160) == 1)
          {
            break;
          }

          (v225)(v209, v161, v160);
        }
      }

      (*(v178 + 8))(v200, v219);
      v106 = v246;
      v100 = v207;
    }

    CROrderedSet.makeIterator()();
    CROrderedSet.Iterator.next()();
    v114 = *(v214 + 48);
    v115 = v218;
    v228 = v214 + 48;
    v227 = v114;
    v116 = (v114)(v101, 1, v218);
    v117 = v201;
    if (v116 != 1)
    {
      v123 = *(v214 + 32);
      v225 = (v173 + 8);
      KeyPath = v123;
      v214 += 32;
      v124 = (v214 - 24);
      (v123)(v221, v101, v115);
      while (1)
      {
        v135 = v210;
        Ref.subscript.getter();
        v136 = v211;
        v137 = v216;
        CRRegister.value.getter();
        (*v225)(v135, v137);
        _s8PaperKit9PDFPageIDVWObTm_0(v136, v117, type metadata accessor for TaggedStroke);
        if (swift_getEnumCaseMultiPayload())
        {
          _s8PaperKit0A0VWOhTm_4(v117, type metadata accessor for TaggedStroke);
          v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
          (*(*(v138 - 8) + 56))(v100, 1, 1, v138);
        }

        else
        {
          v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
          v140 = *(v139 - 8);
          (*(v140 + 32))(v100, v117, v139);
          (*(v140 + 56))(v100, 0, 1, v139);
        }

        v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
        v142 = *(v141 - 8);
        if ((*(v142 + 48))(v100, 1, v141) == 1)
        {
          v133 = v218;
          (*v124)(v221, v218);
          outlined destroy of StocksKitCurrencyCache.Provider?(v100, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
        }

        else
        {
          v125 = Ref.subscript.modify();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
          v126 = CRRegister.wrappedValue.modify();
          v128 = v127;
          v129 = *v127;
          v130 = *v127 & 0xFFFF000000000000;
          LODWORD(v241.a) = *v127;
          WORD2(v241.a) = WORD2(v129);
          _So13PKStrokeFlagsa34__Unnamed_union___Anonymous_field0V02__c10_struct___e1_F0V_isPastedStroke_setter(&v241);
          v131 = v130 | LODWORD(v241.a) | (WORD2(v241.a) << 32);
          v100 = v207;
          *v128 = v131;
          v117 = v201;
          v106 = v246;
          v126(&v242, 0);
          v125(&t1, 0);
          v132 = v218;
          (*v124)(v221, v218);
          (*(v142 + 8))(v100, v141);
          v133 = v132;
        }

        v134 = v220;
        CROrderedSet.Iterator.next()();
        if ((v227)(v134, 1, v133) == 1)
        {
          break;
        }

        KeyPath(v221, v134, v133);
      }
    }

    (*(v178 + 8))(v213, v219);
    v118 = Capsule.Ref.root.modify();
    v119 = v202;
    v120 = v212;
    ContainerCanvasElement.ensureHasDrawing<A>(in:)(v106, v202, v212);
    v118(&t1, 0);
    v121 = v176;
    Capsule.Ref.root.getter();
    v93 = v175;
    (*(v120 + 64))(v119, v120);
    (*(v177 + 8))(v121, v119);
    v122 = v192;
    if (v195(v93, 1, v192))
    {
      _s8PaperKit0A0VWOhTm_4(v181, type metadata accessor for PKDrawingStruct);
      return outlined destroy of StocksKitCurrencyCache.Provider?(v93, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
    }

    v143 = v172;
    (*(v190 + 16))(v172, v93, v122);
    outlined destroy of StocksKitCurrencyCache.Provider?(v93, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
    v144 = Ref.subscript.modify();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<Ref<CRRegister<TaggedStroke>>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
    v103 = v181;
    CROrderedSet.append<A>(contentsOf:)();
    v144(&t1, 0);
    v193(v143, v122);
  }

  return _s8PaperKit0A0VWOhTm_4(v103, type metadata accessor for PKDrawingStruct);
}

uint64_t key path setter for ContainerCanvasElement.subelements : <A><A1>A(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 48);
  v6 = *(a3 + a4 - 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1, v8);
  return (*(v6 + 96))(v10, v5, v6);
}

{
  v5 = *(a3 + a4 - 48);
  v6 = *(a3 + a4 - 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1, v8);
  return (*(v6 + 96))(v10, v5, v6);
}

uint64_t key path setter for ContainerCanvasElement.subelements : <A><A1>A1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 40);
  v6 = *(a3 + a4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1, v8);
  return (*(v6 + 96))(v10, v5, v6);
}

uint64_t key path setter for ContainerCanvasElement.drawing : <A><A1>A1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 40);
  v6 = *(a3 + a4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  outlined init with copy of Date?(a1, &v11 - v8, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  return (*(v6 + 72))(v9, v5, v6);
}

uint64_t closure #1 in Capsule<>.createSubCanvasElement(from:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  LODWORD(v81) = a5;
  v66 = a4;
  v62 = a3;
  v65 = a2;
  v8 = *a1;
  v57 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v57);
  v50 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v54 = &v49 - v10;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v61 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v51 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v52 = &v49 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v58 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v53 = &v49 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v23 = (v8 + *MEMORY[0x1E6995440]);
  v77 = *v23;
  v24 = v77;
  v78 = v23[1];
  v25 = v78;
  v79 = a6;
  v60 = a6;
  KeyPath = swift_getKeyPath();
  v74 = v24;
  v75 = v25;
  v76 = a6;
  swift_getKeyPath();
  Capsule.Ref.subscript.getter();

  v26 = v62;
  v70 = v65;
  v71 = v62;
  v72 = v66;
  v73 = v81 & 1;
  v27 = v63;
  CROrderedSet.filter(_:)();
  v63 = v27;
  v28 = v21;
  v29 = v61;
  (*(v19 + 8))(v28, v18);
  v30 = v26;
  Capsule.Ref.subscript.setter();
  v31 = *(v26 + 16);
  v67 = v24;
  v68 = v25;
  v69 = v60;
  swift_getKeyPath();
  v32 = (v29 + 48);
  if (v31)
  {
    v33 = v58;
    Capsule.Ref.subscript.getter();

    v34 = v64;
    if ((*v32)(v33, 1, v64) == 1)
    {
      return outlined destroy of StocksKitCurrencyCache.Provider?(v33, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
    }

    else
    {
      v39 = v51;
      (*(v29 + 32))(v51, v33, v34);
      v40 = v50;
      v41 = Ref.subscript.getter();
      MEMORY[0x1EEE9AC00](v41);
      *(&v49 - 4) = v65;
      *(&v49 - 3) = v30;
      *(&v49 - 2) = v66;
      *(&v49 - 8) = v81 & 1;
      v42 = PKDrawingStruct.filteredStrokes<A>(in:isIncluded:)(a1, partial apply for closure #2 in closure #1 in Capsule<>.createSubCanvasElement(from:), (&v49 - 6));
      _s8PaperKit0A0VWOhTm_4(v40, type metadata accessor for PKDrawingStruct);
      v80 = v42;
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [Ref<CRRegister<TaggedStroke>>] and conformance [A], &_sSay9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
      v43 = v54;
      CROrderedSet.init<A>(_:)();
      v44 = Ref.subscript.modify();
      (*(v55 + 40))(v45 + *(v57 + 20), v43, v56);
      v44(&v80, 0);
      return (*(v29 + 8))(v39, v34);
    }
  }

  else
  {
    v36 = v52;
    v37 = v53;
    Capsule.Ref.subscript.getter();

    v38 = v64;
    if ((*v32)(v37, 1, v64))
    {
      return outlined destroy of StocksKitCurrencyCache.Provider?(v37, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
    }

    else
    {
      (*(v29 + 16))(v36, v37, v38);
      outlined destroy of StocksKitCurrencyCache.Provider?(v37, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
      v46 = v54;
      CROrderedSet.init()();
      v47 = Ref.subscript.modify();
      (*(v55 + 40))(v48 + *(v57 + 20), v46, v56);
      v47(&v80, 0);
      return (*(v29 + 8))(v36, v38);
    }
  }
}

uint64_t closure #1 in closure #1 in Capsule<>.createSubCanvasElement(from:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  (*(v6 + 16))(v8, a1, v5);
  WeakTagged_10.tag.getter();
  v14 = v16;
  v15 = v17;
  MEMORY[0x1DA6CB7A0](v5);
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  WeakTagged_10.init(_:id:)();
  (*(v6 + 8))(v8, v5);
  LOBYTE(a1) = specialized Set.contains(_:)(v12, a2);
  (*(v10 + 8))(v12, v9);
  return a1 & 1;
}

uint64_t closure #2 in closure #1 in Capsule<>.createSubCanvasElement(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v15 - v12;
  (*(v6 + 16))(v8, a1, v5, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  WeakRef.init<A>(_:)();
  LOBYTE(a3) = specialized Set.contains(_:)(v13, a3);
  (*(v10 + 8))(v13, v9);
  return a3 & 1;
}

uint64_t Capsule<>.suggestedPositionForNewCanvasElement(into:at:withSize:isLTR:extendCanvasHeight:)(void *a1, int a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9)
{
  v45 = a3;
  v46 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v12 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v14 = &v42 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v42 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v42 - v19;
  v22 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  (*(*(v21 + 8) + 32))(v22);
  v24 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v57.origin.x = (*(v23 + 16))(v24, v23);
  v55 = v57;
  v57.size.height = v57.size.height + a9;
  v58 = CGRect.closestRect(in:)(v57);
  x = v58.origin.x;
  y = v58.origin.y;
  width = v58.size.width;
  height = v58.size.height;
  MidX = CGRectGetMidX(v58);
  v59.origin.x = x;
  v59.origin.y = y;
  v59.size.width = width;
  v59.size.height = height;
  MidY = CGRectGetMidY(v59);
  v56[0] = MidX;
  v56[1] = MidY;
  v31 = a1[3];
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v31);
  (*(v32 + 88))(v31, v32);
  v33 = *(v45 + 24);
  v43 = *(v45 + 16);
  v49 = v43;
  v50 = v33;
  v45 = a4;
  v51 = a4;
  v34 = v20;
  v52 = v47;
  v35 = v42;
  v53 = v46;
  (*(v42 + 16))(v17, v34, v15);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v54 = dispatch thunk of Sequence._copyToContiguousArray()();
  specialized MutableCollection<>.sort(by:)(partial apply for closure #1 in Capsule<>.suggestedPositionForNewCanvasElement(into:at:withSize:isLTR:extendCanvasHeight:), v48);
  (*(v35 + 8))(v34, v15);
  v36 = v54;
  v37 = *(v54 + 16);
  if (!v37)
  {
  }

  v38 = 0;
  v39 = (v12 + 8);
  v40 = v44;
  while (v38 < *(v36 + 16))
  {
    (*(v12 + 16))(v14, v36 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v38, v40);
    closure #2 in Capsule<>.suggestedPositionForNewCanvasElement(into:at:withSize:isLTR:extendCanvasHeight:)(20.0, 20.0, v14, v47, v56, v46 & 1, &v55);
    ++v38;
    (*v39)(v14, v40);
    if (v37 == v38)
    {
    }
  }

  __break(1u);

  (*v39)(v14, v40);
  __break(1u);

  __break(1u);
  return result;
}

BOOL closure #1 in Capsule<>.suggestedPositionForNewCanvasElement(into:at:withSize:isLTR:extendCanvasHeight:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  SharedTagged_10.subscript.getter();
  v6 = v24;
  v5 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v26.origin.x = (*(*(v5 + 8) + 8))(v6);
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  MidX = CGRectGetMidX(v26);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  MidY = CGRectGetMidY(v27);
  __swift_destroy_boxed_opaque_existential_0(v23);
  SharedTagged_10.subscript.getter();
  v14 = v24;
  v13 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v28.origin.x = (*(*(v13 + 8) + 8))(v14);
  v15 = v28.origin.x;
  v16 = v28.origin.y;
  v17 = v28.size.width;
  v18 = v28.size.height;
  v19 = CGRectGetMidX(v28);
  v29.origin.x = v15;
  v29.origin.y = v16;
  v29.size.width = v17;
  v29.size.height = v18;
  v20 = CGRectGetMidY(v29);
  __swift_destroy_boxed_opaque_existential_0(v23);
  v21 = v19 < MidX;
  if (a4)
  {
    v21 = MidX < v19;
  }

  if (MidY == v20)
  {
    return v21;
  }

  else
  {
    return MidY < v20;
  }
}

void closure #2 in Capsule<>.suggestedPositionForNewCanvasElement(into:at:withSize:isLTR:extendCanvasHeight:)(double a1, double a2, uint64_t a3, uint64_t a4, double *a5, char a6, __C::CGRect *a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  SharedTagged_10.subscript.getter();
  v13 = v31;
  v12 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  v33.origin.x = (*(*(v12 + 8) + 8))(v13);
  x = v33.origin.x;
  y = v33.origin.y;
  width = v33.size.width;
  height = v33.size.height;
  MidX = CGRectGetMidX(v33);
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  MidY = CGRectGetMidY(v34);
  __swift_destroy_boxed_opaque_existential_0(v30);
  v20 = a5[1];
  v21 = vabdd_f64(MidY, v20);
  if (vabdd_f64(MidX, *a5) < 1.0 && v21 < 1.0)
  {
    v23 = -a1;
    if (a6)
    {
      v23 = a1;
    }

    *a5 = v23 + *a5;
    a5[1] = v20 + a2;
    v35 = CGRect.closestRect(in:)(*a7);
    v24 = v35.origin.x;
    v25 = v35.origin.y;
    v26 = v35.size.width;
    v27 = v35.size.height;
    v28 = CGRectGetMidX(v35);
    v36.origin.x = v24;
    v36.origin.y = v25;
    v36.size.width = v26;
    v36.size.height = v27;
    v29 = CGRectGetMidY(v36);
    *a5 = v28;
    a5[1] = v29;
  }
}

Swift::Int PaperKitCodingError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](v1);
  return Hasher._finalize()();
}

uint64_t one-time initialization function for allReadableFileFormatVersions()
{
  result = specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of one-time initialization function for allFileFormatVersions);
  allReadableFileFormatVersions._rawValue = &outlined read-only object #0 of one-time initialization function for allReadableFileFormatVersions;
  return result;
}

uint64_t static CRDataStoreBundle<>.canDisplayPaper(at:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence16CRCodableVersionOGMd);
  v0 = type metadata accessor for CRCodableVersion();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D405C990;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E6995280], v0);
  v6(v5 + v2, *MEMORY[0x1E6995288], v0);
  if (one-time initialization token for allReadableFileFormatVersions != -1)
  {
    swift_once();
  }

  v7 = static CRDataStoreBundle.canRead(url:allowedEncodings:allowedAppFormats:)();

  return v7 & 1;
}

uint64_t static CRDataStoreBundle<>.canDisplayPaperOnPreSydney(at:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence16CRCodableVersionOGMd);
  v0 = type metadata accessor for CRCodableVersion();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D4058CF0;
  (*(v1 + 104))(v3 + v2, *MEMORY[0x1E6995280], v0);
  v4 = static CRDataStoreBundle.canRead(url:allowedEncodings:allowedAppFormats:)();

  return v4 & 1;
}

uint64_t static CRDataStoreBundle<>.writePaper(_:model:url:)()
{
  return static CRDataStoreBundle<>.writePaper(_:model:url:)();
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence16CRCodableVersionOGMd);
  v0 = type metadata accessor for CRCodableVersion();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D405C990;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E6995280], v0);
  v6(v5 + v2, *MEMORY[0x1E6995288], v0);
  static CRDataStoreBundle.write(_:model:url:allowedEncodings:allowedAppFormats:)();
}

uint64_t static CRDataStoreBundle<>.copyPaper(from:fromContext:to:toContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a1;
  v49 = a4;
  v45 = a3;
  v51 = a2;
  FileVersionPolicy = type metadata accessor for CRDataStoreBundleReadFileVersionPolicy();
  v50 = *(FileVersionPolicy - 1);
  MEMORY[0x1EEE9AC00](FileVersionPolicy);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence16CRCodableVersionOGMd);
  v13 = type metadata accessor for CRCodableVersion();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = *(v14 + 80);
  v17 = (v16 + 32) & ~v16;
  v39 = v17 + 2 * v15;
  v40 = v16;
  v44 = v12;
  v18 = swift_allocObject();
  v38 = xmmword_1D405C990;
  *(v18 + 16) = xmmword_1D405C990;
  v41 = v17;
  v19 = v18 + v17;
  v20 = *(v14 + 104);
  v37 = *MEMORY[0x1E6995280];
  v20(v19);
  v21 = *MEMORY[0x1E6995288];
  v42 = v13;
  v43 = v15;
  v36 = v21;
  v20(v19 + v15);
  if (one-time initialization token for allReadableFileFormatVersions != -1)
  {
    swift_once();
  }

  v22 = v50;
  (*(v50 + 104))(v6, *MEMORY[0x1E6995398], FileVersionPolicy);
  v23 = v53;
  static CRDataStoreBundle.read(_:url:fileVersionPolicy:allowedEncodings:allowedAppFormats:)();
  v24 = v22;
  if (v23)
  {
    (*(v22 + 8))(v6, FileVersionPolicy);
  }

  else
  {
    v26 = v11;
    v27 = v20;
    v53 = v4;
    (*(v24 + 8))(v6, FileVersionPolicy);

    v28 = v46;
    v29 = v48;
    Capsule.copy()();
    v30 = v47;
    v31 = *(v47 + 8);
    v31(v26, v29);
    (*(v30 + 32))(v26, v28, v29);
    CRContext.assetManager.getter();
    Capsule.copyAssetsSync(to:)();

    v32 = swift_allocObject();
    *(v32 + 16) = v38;
    v33 = v32 + v41;
    FileVersionPolicy = v31;
    v34 = v42;
    (v27)(v32 + v41, v37, v42);
    (v27)(v33 + v43, v36, v34);
    static CRDataStoreBundle.write(_:model:url:allowedEncodings:allowedAppFormats:)();
    FileVersionPolicy(v26, v29);
  }
}

uint64_t static CRDataStoreBundle.canDisplayPaper(at:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CRDataStoreBundleCy8PaperKit0E0VGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence16CRCodableVersionOGMd);
  v0 = type metadata accessor for CRCodableVersion();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D405C990;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E6995280], v0);
  v6(v5 + v2, *MEMORY[0x1E6995288], v0);
  if (one-time initialization token for allReadableFileFormatVersions != -1)
  {
    swift_once();
  }

  v7 = static CRDataStoreBundle.canRead(url:allowedEncodings:allowedAppFormats:)();

  return v7 & 1;
}

uint64_t static CRDataStoreBundle.canDisplayPaperOnPreSydney(at:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CRDataStoreBundleCy8PaperKit0E0VGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence16CRCodableVersionOGMd);
  v0 = type metadata accessor for CRCodableVersion();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D4058CF0;
  (*(v1 + 104))(v3 + v2, *MEMORY[0x1E6995280], v0);
  v4 = static CRDataStoreBundle.canRead(url:allowedEncodings:allowedAppFormats:)();

  return v4 & 1;
}

uint64_t static CRDataStoreBundle.paperBundle(_:sync:at:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Capsule();
  v10 = type metadata accessor for Optional();
  v11 = MEMORY[0x1EEE9AC00](v10);
  (*(v13 + 16))(&v24 - v12, a2, v11);
  (*(v7 + 16))(v9, a3, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence16CRCodableVersionOGMd);
  v14 = type metadata accessor for CRCodableVersion();
  v15 = *(v14 - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D405C990;
  v19 = v18 + v17;
  v20 = *(v15 + 104);
  v20(v19, *MEMORY[0x1E6995280], v14);
  v20(v19 + v16, *MEMORY[0x1E6995288], v14);
  v21 = one-time initialization token for allReadableFileFormatVersions;
  v22 = a1;
  if (v21 != -1)
  {
    swift_once();
  }

  return CRDataStoreBundle.__allocating_init(_:sync:at:allowedEncodings:allowedAppFormats:writableAppFormats:)();
}

uint64_t static CRDataStoreBundle.readPaper(_:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15[2] = a2;
  v15[0] = a3;
  v15[1] = a1;
  FileVersionPolicy = type metadata accessor for CRDataStoreBundleReadFileVersionPolicy();
  v4 = *(FileVersionPolicy - 8);
  MEMORY[0x1EEE9AC00](FileVersionPolicy);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence16CRCodableVersionOGMd);
  v7 = type metadata accessor for CRCodableVersion();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D405C990;
  v12 = v11 + v10;
  v13 = *(v8 + 104);
  v13(v12, *MEMORY[0x1E6995280], v7);
  v13(v12 + v9, *MEMORY[0x1E6995288], v7);
  if (one-time initialization token for allReadableFileFormatVersions != -1)
  {
    swift_once();
  }

  (*(v4 + 104))(v6, *MEMORY[0x1E6995398], FileVersionPolicy);
  static CRDataStoreBundle.read(_:url:fileVersionPolicy:allowedEncodings:allowedAppFormats:)();
  (*(v4 + 8))(v6, FileVersionPolicy);
}

uint64_t static CRDataStoreBundle.copyPaper(from:fromContext:to:toContext:eliminateMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v18 = a5;
  v17[1] = a4;
  v9 = type metadata accessor for Capsule();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v17 - v14;
  result = static CRDataStoreBundle.readPaper(_:url:)(a2, a1, v17 - v14);
  if (!v5)
  {
    v17[0] = a3;
    if (v18)
    {
      Capsule.copy()();
      (*(v10 + 8))(v15, v9);
      (*(v10 + 32))(v15, v12, v9);
    }

    CRContext.assetManager.getter();
    Capsule.copyAssetsSync(to:)();

    static CRDataStoreBundle<>.writePaper(_:model:url:)();
    return (*(v10 + 8))(v15, v9);
  }

  return result;
}

uint64_t static CRDataStoreBundle<>.copyPaper(from:fromContext:to:toContext:forNewAttachment:)(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3, uint64_t a4, int a5)
{
  v88 = a1;
  v83 = a5;
  v85 = a4;
  v80 = a3;
  v87 = a2;
  v65 = type metadata accessor for CRKeyPath();
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v66 = &v62 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v68 = &v62 - v9;
  v70 = type metadata accessor for UUID();
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v67 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  FileVersionPolicy = type metadata accessor for CRDataStoreBundleReadFileVersionPolicy();
  v11 = *(FileVersionPolicy - 8);
  MEMORY[0x1EEE9AC00](FileVersionPolicy);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v82 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v81 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v62 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence16CRCodableVersionOGMd);
  v19 = type metadata accessor for CRCodableVersion();
  v20 = *(v19 - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v75 = *(v20 + 80);
  v77 = v18;
  v74 = v22 + 2 * v21;
  v23 = swift_allocObject();
  v73 = xmmword_1D405C990;
  *(v23 + 16) = xmmword_1D405C990;
  v76 = v22;
  v24 = v23 + v22;
  v25 = *(v20 + 104);
  v72 = *MEMORY[0x1E6995280];
  v25(v23 + v22);
  v26 = *MEMORY[0x1E6995288];
  v78 = v21;
  v71 = v26;
  v79 = v19;
  v25(v24 + v21);
  if (one-time initialization token for allReadableFileFormatVersions != -1)
  {
    swift_once();
  }

  v27 = v11;
  v28 = FileVersionPolicy;
  (*(v11 + 104))(v13, *MEMORY[0x1E6995398], FileVersionPolicy);
  v29 = v91;
  v30 = v89;
  static CRDataStoreBundle.read(_:url:fileVersionPolicy:allowedEncodings:allowedAppFormats:)();
  v31 = v28;
  if (!v30)
  {
    v89 = v25;
    v32 = v17;
    (*(v27 + 8))(v13, v31);

    if (v83)
    {
      v92.origin.x = Capsule<>.contentBounds(includeDrawing:)(1);
      x = v92.origin.x;
      y = v92.origin.y;
      width = v92.size.width;
      height = v92.size.height;
      MinY = CGRectGetMinY(v92);
      Translation = CGAffineTransformMakeTranslation(&v90, 0.0, -MinY);
      MEMORY[0x1EEE9AC00](Translation);
      *(&v62 - 2) = &v90;
      v39 = v84;
      v40 = Capsule.callAsFunction<A>(_:)();
      MEMORY[0x1EEE9AC00](v40);
      *(&v62 - 4) = x;
      *(&v62 - 3) = y;
      *(&v62 - 2) = width;
      *(&v62 - 1) = height;
      v41 = v39;
      Capsule.callAsFunction<A>(_:)();
    }

    else
    {
      v41 = v84;
    }

    v42 = v81;
    Capsule.copy()();
    v43 = v82;
    v44 = v82 + 8;
    v45 = *(v82 + 8);
    v45(v32, v41);
    (*(v43 + 32))(v32, v42, v41);
    CRContext.assetManager.getter();
    Capsule.copyAssetsSync(to:)();
    v87 = v45;
    v88 = v44;

    v47 = swift_allocObject();
    *(v47 + 16) = v73;
    v48 = v47 + v76;
    v49 = v79;
    v50 = v89;
    (v89)(v47 + v76, v72, v79);
    (v50)(v48 + v78, v71, v49);
    static CRDataStoreBundle.write(_:model:url:allowedEncodings:allowedAppFormats:)();

    swift_getKeyPath();
    v51 = v66;
    Capsule.subscript.getter();

    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
    v53 = *(v52 - 8);
    v54 = (*(v53 + 48))(v51, 1, v52);
    v55 = v87;
    if (v54 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v51, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
      v56 = v69;
      v57 = v68;
      v58 = v70;
      (*(v69 + 56))(v68, 1, 1, v70);
      v59 = v67;
    }

    else
    {
      v60 = v63;
      Ref.id.getter();
      (*(v53 + 8))(v51, v52);
      v57 = v68;
      CRKeyPath.uuid.getter();
      (*(v64 + 8))(v60, v65);
      v56 = v69;
      v58 = v70;
      v61 = (*(v69 + 48))(v57, 1, v70);
      v59 = v67;
      if (v61 != 1)
      {
        (*(v56 + 32))(v67, v57, v58);
LABEL_16:
        v29 = UUID.uuidString.getter();
        (*(v56 + 8))(v59, v58);
        v55(v32, v84);
        return v29;
      }
    }

    UUID.init()();
    if ((*(v56 + 48))(v57, 1, v58) != 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v57, &_s10Foundation4UUIDVSgMd);
    }

    goto LABEL_16;
  }

  (*(v27 + 8))(v13, v28);

  return v29;
}

uint64_t closure #1 in static CRDataStoreBundle<>.copyPaper(from:fromContext:to:toContext:forNewAttachment:)(double a1, double a2, double a3, double a4)
{
  Height = CGRectGetHeight(*&a1);
  v5 = Capsule.Ref.root.modify();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v6 = CRRegister.wrappedValue.modify();
  *(v7 + 24) = Height;
  v6(&v9, 0);
  return v5(v10, 0);
}

uint64_t Capsule<>.init(_:fromPDF:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13[-v9];
  static CRKeyPath.unique.getter();
  v14 = a2;
  v15 = a1;
  type metadata accessor for PaperDocument(0);
  _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument);
  Capsule.init(id:initClosure:)();

  (*(v8 + 32))(a3, v10, v7);
  (*(v8 + 56))(a3, 0, 1, v7);
  v11 = type metadata accessor for URL();
  return (*(*(v11 - 8) + 8))(a2, v11);
}

uint64_t closure #1 in Capsule<>.init(_:fromPDF:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0A8DocumentVSgMd);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v23 - v12;
  (*(v7 + 16))(v9, a2, v6, v11);

  v14 = CRContext.assetManager.getter();
  _s8PaperKit0A8DocumentV3url2in12assetManagerACSg10Foundation3URLV_9Coherence7CapsuleV3RefCyx_GAK07CRAssetG0CtcAK4CRDTRzlufCAC_Tt3g5(v9, a1, v14, v13);
  v15 = type metadata accessor for PaperDocument(0);
  if ((*(*(v15 - 8) + 48))(v13, 1, v15) != 1)
  {
    return _s8PaperKit9PDFPageIDVWObTm_0(v13, a3, type metadata accessor for PaperDocument);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s8PaperKit0A8DocumentVSgMd);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, logger);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1D38C4000, v17, v18, "Could not load PDF.", v19, 2u);
    MEMORY[0x1DA6D0660](v19, -1, -1);
  }

  v20 = type metadata accessor for CRCodingError();
  _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError, MEMORY[0x1E6995198]);
  swift_allocError();
  *v21 = 0xD000000000000013;
  v21[1] = 0x80000001D4087600;
  (*(*(v20 - 8) + 104))(v21, *MEMORY[0x1E6995188], v20);
  return swift_willThrow();
}

uint64_t Capsule<>.exportToPDF(_:)(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  type metadata accessor for PaperDocument(0);
  v2[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Capsule<>.exportToPDF(_:), 0, 0);
}

{
  v3 = *v1;
  v4 = *(*v1 + 160);
  v7 = *v1;

  outlined destroy of StocksKitCurrencyCache.Provider?(v3 + 16, &_s8PaperKit0A17RenderableOptionsVSgMd);
  _s8PaperKit0A0VWOhTm_4(v4, type metadata accessor for PaperDocument);

  v5 = *(v7 + 8);

  return v5(a1);
}

uint64_t Capsule<>.exportToPDF(_:)()
{
  v1 = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd);
  Capsule.root.getter();
  *(v0 + 16) = xmmword_1D405D330;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 125) = 0u;
  v2 = swift_task_alloc();
  *(v0 + 168) = v2;
  *v2 = v0;
  v2[1] = Capsule<>.exportToPDF(_:);
  v3 = *(v0 + 152);

  return specialized PaperDocument.newPDFDocument<A>(use:in:options:)(v1, v3, v0 + 16);
}

uint64_t Capsule<>.write(_:toPDF:)(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  type metadata accessor for PaperDocument(0);
  v3[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Capsule<>.write(_:toPDF:), 0, 0);
}

uint64_t Capsule<>.write(_:toPDF:)()
{
  v1 = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd);
  Capsule.root.getter();
  *(v0 + 16) = xmmword_1D405D330;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 125) = 0u;
  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  *v2 = v0;
  v2[1] = Capsule<>.write(_:toPDF:);
  v3 = *(v0 + 160);

  return specialized PaperDocument.newPDFDocument<A>(use:in:options:)(v1, v3, v0 + 16);
}

uint64_t Capsule<>.write(_:toPDF:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  *(v2 + 184) = a1;

  outlined destroy of StocksKitCurrencyCache.Provider?(v2 + 16, &_s8PaperKit0A17RenderableOptionsVSgMd);
  _s8PaperKit0A0VWOhTm_4(v3, type metadata accessor for PaperDocument);

  return MEMORY[0x1EEE6DFA0](Capsule<>.write(_:toPDF:), 0, 0);
}

uint64_t Capsule<>.write(_:toPDF:)@<X0>(NSURL *a1@<X8>)
{
  v2 = *(v1 + 184);
  URL._bridgeToObjectiveC()(a1);
  v4 = v3;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo22PDFDocumentWriteOptiona_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for PDFDocumentWriteOption(0);
  _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type PDFDocumentWriteOption and conformance PDFDocumentWriteOption, type metadata accessor for PDFDocumentWriteOption);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 writeToURL:v4 withOptions:isa];

  v6 = *(v1 + 8);

  return v6();
}

uint64_t specialized PaperDocument.newPDFDocument<A>(use:in:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[39] = a3;
  v4[40] = v3;
  v4[37] = a1;
  v4[38] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtMd);
  v4[41] = v5;
  v4[42] = *(v5 - 8);
  v4[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtSgMd);
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd);
  v4[46] = v6;
  v4[47] = *(v6 - 8);
  v4[48] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceVy9Coherence12CROrderedSetVyAC14SharedTagged_3Vy8PaperKit0gH4PageVGGGMd);
  v4[49] = swift_task_alloc();
  v4[50] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceV8IteratorVy9Coherence12CROrderedSetVyAE14SharedTagged_3Vy8PaperKit0hI4PageVGG_GMd);
  v4[51] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd);
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v7 = type metadata accessor for PageId(0);
  v4[58] = v7;
  v4[59] = *(v7 - 8);
  v4[60] = swift_task_alloc();
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v8 = type metadata accessor for PDFPageID();
  v4[63] = v8;
  v4[64] = *(v8 - 8);
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();
  v4[67] = swift_task_alloc();
  v4[68] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetV3key_Si5valuetMd);
  v4[69] = swift_task_alloc();
  v4[70] = swift_task_alloc();
  v4[71] = swift_task_alloc();
  v4[72] = swift_task_alloc();
  v4[73] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd);
  v4[74] = swift_task_alloc();
  v4[75] = swift_task_alloc();
  v4[76] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
  v4[77] = v9;
  v4[78] = *(v9 - 8);
  v4[79] = swift_task_alloc();
  v4[80] = swift_task_alloc();
  v4[81] = swift_task_alloc();
  v4[82] = swift_task_alloc();
  v4[83] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMd);
  v4[84] = swift_task_alloc();
  v4[85] = swift_task_alloc();
  v4[86] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA14SharedTagged_3Vy8PaperKit0fG4PageVG_GMd);
  v4[87] = v10;
  v4[88] = *(v10 - 8);
  v4[89] = swift_task_alloc();
  v4[90] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd);
  v4[91] = swift_task_alloc();
  v4[92] = swift_task_alloc();
  v4[93] = swift_task_alloc();
  v11 = type metadata accessor for CRAsset();
  v4[94] = v11;
  v4[95] = *(v11 - 8);
  v4[96] = swift_task_alloc();
  v4[97] = swift_task_alloc();
  v4[98] = swift_task_alloc();
  v4[99] = swift_task_alloc();
  v4[100] = swift_task_alloc();
  v4[101] = swift_task_alloc();
  v4[102] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized PaperDocument.newPDFDocument<A>(use:in:options:), 0, 0);
}

uint64_t specialized PaperDocument.newPDFDocument<A>(use:in:options:)()
{
  v1 = *(v0 + 760);
  v2 = *(v0 + 752);
  v3 = *(v0 + 744);
  v4 = swift_allocObject();
  *(v0 + 824) = v4;
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence7CRAssetV_8PaperKit0eF11PDFDocumentCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v6 = swift_allocObject();
  *(v0 + 832) = v6;
  *(v6 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence7CRAssetV_SiTt0g5Tf4g_n(v5);
  v7 = type metadata accessor for PaperDocument(0);
  *(v0 + 840) = v7;
  *(v0 + 1024) = *(v7 + 20);
  *(v0 + 848) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  CRRegister.wrappedValue.getter();
  v8 = *(v1 + 48);
  *(v0 + 856) = v8;
  *(v0 + 864) = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v8(v3, 1, v2) != 1)
  {
    (*(*(v0 + 760) + 32))(*(v0 + 816), *(v0 + 744), *(v0 + 752));
    v27 = swift_task_alloc();
    *(v0 + 872) = v27;
    *v27 = v0;
    v27[1] = specialized PaperDocument.newPDFDocument<A>(use:in:options:);
    v28 = *(v0 + 816);
    v29 = v4;
    v30 = v6;
LABEL_10:

    return loadPdfAsset #1 <A>(_:) in PaperDocument.newPDFDocument<A>(use:in:options:)(v28, v29, v30);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 744), &_s9Coherence7CRAssetVSgMd);
  v9 = *(v0 + 688);
  v10 = *(v0 + 624);
  v11 = *(v0 + 616);
  CROrderedSet.makeIterator()();
  CROrderedSet.Iterator.next()();
  v13 = *(v10 + 48);
  v12 = v10 + 48;
  *(v0 + 888) = v13;
  if (v13(v9, 1, v11) != 1)
  {
    *(v0 + 896) = *(*(v0 + 624) + 32);
    do
    {
      v41 = *(v0 + 608);
      v43 = *(v0 + 504);
      v42 = *(v0 + 512);
      (*(v0 + 896))(*(v0 + 664), *(v0 + 688), *(v0 + 616));
      _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument);
      SharedTagged_3.subscript.getter();
      v44 = *(v0 + 120);
      v45 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1((v0 + 96), v44);
      (*(v45 + 112))(v44, v45);
      if ((*(v42 + 48))(v41, 1, v43) == 1)
      {
        v32 = *(v0 + 760);
        v33 = *(v0 + 752);
        v34 = *(v0 + 736);
        v35 = *(v0 + 608);
        (*(*(v0 + 624) + 8))(*(v0 + 664), *(v0 + 616));
        __swift_destroy_boxed_opaque_existential_0(v0 + 96);
        outlined destroy of StocksKitCurrencyCache.Provider?(v35, &_s8PaperKit9PDFPageIDVSgMd);
        (*(v32 + 56))(v34, 1, 1, v33);
      }

      else
      {
        v46 = *(v0 + 856);
        v47 = *(v0 + 760);
        v48 = *(v0 + 752);
        v49 = *(v0 + 736);
        v50 = *(v0 + 608);
        (*(v47 + 16))(v49, v50 + *(*(v0 + 504) + 20), v48);
        _s8PaperKit0A0VWOhTm_4(v50, type metadata accessor for PDFPageID);
        (*(v47 + 56))(v49, 0, 1, v48);
        __swift_destroy_boxed_opaque_existential_0(v0 + 96);
        if (v46(v49, 1, v48) != 1)
        {
          (*(*(v0 + 760) + 32))(*(v0 + 808), *(v0 + 736), *(v0 + 752));
          v59 = swift_task_alloc();
          *(v0 + 912) = v59;
          *v59 = v0;
          v59[1] = specialized PaperDocument.newPDFDocument<A>(use:in:options:);
          v30 = *(v0 + 832);
          v29 = *(v0 + 824);
          v28 = *(v0 + 808);
          goto LABEL_10;
        }

        (*(*(v0 + 624) + 8))(*(v0 + 664), *(v0 + 616));
      }

      v36 = *(v0 + 888);
      v37 = *(v0 + 688);
      v38 = *(v0 + 616);
      v39 = *(v0 + 624) + 48;
      outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 736), &_s9Coherence7CRAssetVSgMd);
      CROrderedSet.Iterator.next()();
      v40 = v38;
      v12 = v39;
    }

    while (v36(v37, 1, v40) != 1);
  }

  *(v0 + 904) = v12 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v14 = *(v0 + 856);
  v15 = *(v0 + 752);
  v16 = *(v0 + 728);
  v262 = *(*(v0 + 704) + 8);
  v262(*(v0 + 720), *(v0 + 696));
  CRRegister.wrappedValue.getter();
  if (v14(v16, 1, v15) != 1)
  {
    v51 = *(v0 + 824);
    (*(*(v0 + 760) + 32))(*(v0 + 800), *(v0 + 728), *(v0 + 752));
    swift_beginAccess();
    v52 = *(v51 + 16);
    if (*(v52 + 16))
    {
      v53 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 800));
      if (v54)
      {
        v55 = *(v0 + 800);
        v56 = *(v0 + 760);
        v57 = *(v0 + 752);
        v58 = *(*(v52 + 56) + 8 * v53);
        goto LABEL_41;
      }
    }

    goto LABEL_132;
  }

  v17 = *(v0 + 832);
  outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 728), &_s9Coherence7CRAssetVSgMd);
  swift_beginAccess();
  v18 = *(v17 + 16);
  v19 = v18 + 64;
  v20 = -1 << *(v18 + 32);
  if (-v20 < 64)
  {
    v21 = ~(-1 << -v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & *(v18 + 64);
  v279 = *(v17 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = __clz(__rbit64(v22));
    v25 = (v22 - 1) & v22;
    v26 = (63 - v20) >> 6;
  }

  else
  {
    v60 = 0;
    v26 = (63 - v20) >> 6;
    do
    {
      if (v26 - 1 == v60)
      {
        v88 = [objc_allocWithZone(type metadata accessor for PaperKitPDFDocument()) init];
        goto LABEL_42;
      }

      v23 = v60 + 1;
      v61 = *(v18 + 72 + 8 * v60);
      v22 -= 64;
      ++v60;
    }

    while (!v61);
    v25 = (v61 - 1) & v61;
    v24 = __clz(__rbit64(v61)) - v22;
  }

  v62 = *(v0 + 760);
  v63 = *(v0 + 576);
  v64 = *(v0 + 568);
  v65 = *(v0 + 544);
  v269 = *(v62 + 72);
  v271 = *(v62 + 16);
  v271(v64, *(v279 + 48) + v269 * v24, *(v0 + 752));
  v273 = v65;
  *(v64 + *(v65 + 48)) = *(*(v279 + 56) + 8 * v24);
  v66 = &_s9Coherence7CRAssetV3key_Si5valuetMd;
  outlined init with take of Range<AttributedString.Index>(v64, v63, &_s9Coherence7CRAssetV3key_Si5valuetMd);

  v278 = v19;
LABEL_30:
  if (v25)
  {
    v67 = v66;
    v68 = v23;
    goto LABEL_36;
  }

  while (1)
  {
    v68 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

    if (v68 >= v26)
    {
      break;
    }

    v25 = *(v19 + 8 * v68);
    ++v23;
    if (v25)
    {
      v67 = v66;
LABEL_36:
      v69 = *(v0 + 576);
      v70 = *(v0 + 560);
      v71 = *(v0 + 552);
      v72 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v73 = v72 | (v68 << 6);
      v271(v71, *(v279 + 48) + v73 * v269, *(v0 + 752));
      *(v71 + *(v273 + 48)) = *(*(v279 + 56) + 8 * v73);
      v66 = v67;
      outlined init with take of Range<AttributedString.Index>(v71, v70, v67);
      if (*(v69 + *(v273 + 48)) >= *(v70 + *(v273 + 48)))
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 560), v67);
      }

      else
      {
        v74 = *(v0 + 576);
        v75 = *(v0 + 560);
        outlined destroy of StocksKitCurrencyCache.Provider?(v74, v67);
        outlined init with take of Range<AttributedString.Index>(v75, v74, v67);
      }

      v23 = v68;
      v19 = v278;
      goto LABEL_30;
    }
  }

  v76 = *(v0 + 824);
  v77 = *(v0 + 792);
  v78 = *(v0 + 784);
  v79 = *(v0 + 760);
  v80 = *(v0 + 752);
  v81 = *(v0 + 584);
  v82 = *(v0 + 576);

  outlined init with take of Range<AttributedString.Index>(v82, v81, &_s9Coherence7CRAssetV3key_Si5valuetMd);
  v83 = *(v79 + 32);
  v83(v78, v81, v80);
  v83(v77, v78, v80);
  swift_beginAccess();
  v84 = *(v76 + 16);
  if (!*(v84 + 16) || (v85 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 792)), (v86 & 1) == 0))
  {
LABEL_133:
    v168 = swift_endAccess();
    __break(1u);
LABEL_134:
    __break(1u);
    return MEMORY[0x1EEDF52A8](v168, v169, v170, v171, v172);
  }

  v55 = *(v0 + 792);
  v56 = *(v0 + 760);
  v57 = *(v0 + 752);
  v58 = *(*(v84 + 56) + 8 * v85);
LABEL_41:
  swift_endAccess();
  v87 = *(v56 + 8);
  v88 = v58;
  v87(v55, v57);
LABEL_42:
  *(v0 + 928) = v88;
  v89 = v88;
  v90 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8PaperKit9PDFPageIDV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v91 = [v89 pageCount];

  if ((v91 & 0x8000000000000000) != 0)
  {
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
    swift_endAccess();
    __break(1u);
    goto LABEL_133;
  }

  v270 = v89;
  if (!v91)
  {
    goto LABEL_71;
  }

  v92 = 0;
  v280 = (*(v0 + 472) + 48);
  v93 = *(v0 + 512);
  v263 = (v93 + 56);
  v265 = *(v0 + 464);
  v260 = v93;
  v274 = v91;
  v276 = (v93 + 48);
  do
  {
    v267 = v90;
    v94 = v92;
    while (1)
    {
      if (v94 >= v91)
      {
        goto LABEL_122;
      }

      v92 = (v94 + 1);
      if (__OFADD__(v94, 1))
      {
        goto LABEL_123;
      }

      if (one-time initialization token for lock != -1)
      {
        swift_once();
      }

      v95 = static PaperKitPDFDocument.lock;
      v96 = swift_task_alloc();
      *(v96 + 16) = v89;
      *(v96 + 24) = v94;
      v97 = swift_task_alloc();
      *(v97 + 16) = partial apply for closure #1 in PaperKitPDFDocument.subscript.getter;
      *(v97 + 24) = v96;
      os_unfair_lock_lock(v95 + 4);
      partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v98);
      v99 = *(v0 + 456);
      v100 = *(v0 + 464);
      os_unfair_lock_unlock(v95 + 4);

      v101 = *v280;
      if ((*v280)(v99, 1, v100) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 456), &_s8PaperKit6PageIdVSgMd);
        v102 = [v89 pageAtIndex_];
        if (!v102)
        {
          goto LABEL_131;
        }

        v103 = v102;
        v104 = *(v0 + 464);
        v105 = *(v0 + 432);
        type metadata accessor for PaperKitPDFPage(0);
        v106 = swift_dynamicCastClassUnconditional();
        v107 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
        swift_beginAccess();
        outlined init with copy of Date?(v106 + v107, v105, &_s8PaperKit6PageIdVSgMd);

        if (v101(v105, 1, v104) == 1)
        {
          v108 = *(v0 + 496);
          v109 = *(v0 + 504);
          outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 432), &_s8PaperKit6PageIdVSgMd);
          (*v263)(v108, 1, 1, v109);
          v110 = *(v265 + 20);
          v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
          (*(*(v111 - 8) + 56))(v108 + v110, 1, 1, v111);
        }

        else
        {
          _s8PaperKit9PDFPageIDVWObTm_0(*(v0 + 432), *(v0 + 496), type metadata accessor for PageId);
        }

        v89 = v270;
        v92 = (v94 + 1);
      }

      else
      {
        _s8PaperKit9PDFPageIDVWObTm_0(*(v0 + 456), *(v0 + 496), type metadata accessor for PageId);
      }

      v112 = *(v0 + 592);
      v114 = *(v0 + 496);
      v113 = *(v0 + 504);
      outlined init with copy of Date?(v114, v112, &_s8PaperKit9PDFPageIDVSgMd);
      _s8PaperKit0A0VWOhTm_4(v114, type metadata accessor for PageId);
      v115 = (*v276)(v112, 1, v113);
      v116 = *(v0 + 592);
      if (v115 != 1)
      {
        break;
      }

      outlined destroy of StocksKitCurrencyCache.Provider?(v116, &_s8PaperKit9PDFPageIDVSgMd);
      ++v94;
      v91 = v274;
      if (v92 == v274)
      {
        v90 = v267;
        goto LABEL_71;
      }
    }

    v117 = *(v0 + 536);
    v118 = *(v0 + 520);
    _s8PaperKit9PDFPageIDVWObTm_0(v116, v117, type metadata accessor for PDFPageID);
    outlined init with copy of PDFPageID(v117, v118);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v121 = specialized __RawDictionaryStorage.find<A>(_:)(v118);
    v122 = v267[2];
    v123 = (v120 & 1) == 0;
    v124 = v122 + v123;
    if (__OFADD__(v122, v123))
    {
      goto LABEL_129;
    }

    v125 = v120;
    if (v267[3] >= v124)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      v126 = *(v0 + 520);
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v124, isUniquelyReferenced_nonNull_native);
      v127 = specialized __RawDictionaryStorage.find<A>(_:)(v126);
      if ((v125 & 1) != (v128 & 1))
      {
        goto LABEL_124;
      }

      v121 = v127;
    }

    v129 = *(v0 + 536);
    v130 = *(v0 + 520);
    if (v125)
    {
      *(v267[7] + 8 * v121) = v94;
      v90 = v267;
      _s8PaperKit0A0VWOhTm_4(v130, type metadata accessor for PDFPageID);
      _s8PaperKit0A0VWOhTm_4(v129, type metadata accessor for PDFPageID);
    }

    else
    {
      v267[(v121 >> 6) + 8] |= 1 << v121;
      outlined init with copy of PDFPageID(v130, v267[6] + *(v260 + 72) * v121);
      *(v267[7] + 8 * v121) = v94;
      v90 = v267;
      _s8PaperKit0A0VWOhTm_4(v130, type metadata accessor for PDFPageID);
      _s8PaperKit0A0VWOhTm_4(v129, type metadata accessor for PDFPageID);
      v131 = v267[2];
      v132 = __OFADD__(v131, 1);
      v133 = v131 + 1;
      if (v132)
      {
        goto LABEL_130;
      }

      v267[2] = v133;
    }

    v91 = v274;
  }

  while (v92 != v274);
LABEL_71:
  v268 = v90;
  *(v0 + 936) = v90;
  v134 = *(v0 + 888);
  v135 = *(v0 + 680);
  v136 = *(v0 + 616);
  CROrderedSet.makeIterator()();
  CROrderedSet.Iterator.next()();
  if (v134(v135, 1, v136) != 1)
  {
    v146 = *(v0 + 624);
    v147 = *(v146 + 32);
    v146 += 32;
    v148 = *(v0 + 512);
    v275 = (v148 + 48);
    v277 = v147;
    v264 = *(v0 + 464);
    v266 = (*(v0 + 472) + 48);
    v258 = (v148 + 56);
    v272 = (v146 - 24);
    v259 = (v146 - 16);
    do
    {
      v153 = *(v0 + 600);
      v154 = *(v0 + 504);
      v277(*(v0 + 656), *(v0 + 680), *(v0 + 616));
      _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument);
      SharedTagged_3.subscript.getter();
      v155 = *(v0 + 80);
      v156 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v155);
      (*(v156 + 112))(v155, v156);
      if ((*v275)(v153, 1, v154) == 1)
      {
        v149 = *(v0 + 600);
        (*v272)(*(v0 + 656), *(v0 + 616));
        outlined destroy of StocksKitCurrencyCache.Provider?(v149, &_s8PaperKit9PDFPageIDVSgMd);
        __swift_destroy_boxed_opaque_existential_0(v0 + 56);
      }

      else
      {
        _s8PaperKit9PDFPageIDVWObTm_0(*(v0 + 600), *(v0 + 528), type metadata accessor for PDFPageID);
        __swift_destroy_boxed_opaque_existential_0(v0 + 56);
        if (*(v268 + 16))
        {
          v157 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 528));
          if (v158)
          {
            v159 = *(*(v268 + 56) + 8 * v157);
            if (one-time initialization token for lock != -1)
            {
              swift_once();
            }

            v160 = static PaperKitPDFDocument.lock;
            v161 = swift_task_alloc();
            *(v161 + 16) = v270;
            *(v161 + 24) = v159;
            v162 = swift_task_alloc();
            *(v162 + 16) = closure #1 in PaperKitPDFDocument.subscript.getterpartial apply;
            *(v162 + 24) = v161;
            os_unfair_lock_lock(v160 + 4);
            closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v163);
            v164 = v159;
            v165 = *(v0 + 464);
            v166 = *(v0 + 448);
            os_unfair_lock_unlock(v160 + 4);

            v167 = *v266;
            if ((*v266)(v166, 1, v165) == 1)
            {
              outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 448), &_s8PaperKit6PageIdVSgMd);
              v168 = [v270 pageAtIndex_];
              if (!v168)
              {
                goto LABEL_134;
              }

              v173 = v168;
              v174 = *(v0 + 464);
              v175 = *(v0 + 440);
              type metadata accessor for PaperKitPDFPage(0);
              v176 = swift_dynamicCastClassUnconditional();
              v177 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
              swift_beginAccess();
              outlined init with copy of Date?(v176 + v177, v175, &_s8PaperKit6PageIdVSgMd);

              if (v167(v175, 1, v174) == 1)
              {
                v178 = *(v0 + 504);
                v179 = *(v0 + 488);
                outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 440), &_s8PaperKit6PageIdVSgMd);
                (*v258)(v179, 1, 1, v178);
                v180 = v264;
                v181 = *(v264 + 20);
                v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
                (*(*(v182 - 8) + 56))(v179 + v181, 1, 1, v182);
                goto LABEL_92;
              }

              v185 = *(v0 + 488);
              v186 = *(v0 + 440);
            }

            else
            {
              v185 = *(v0 + 488);
              v186 = *(v0 + 448);
            }

            _s8PaperKit9PDFPageIDVWObTm_0(v186, v185, type metadata accessor for PageId);
            v180 = v264;
LABEL_92:
            v187 = *(v0 + 488);
            v188 = *(v0 + 424);
            outlined init with copy of Date?(v187 + *(v180 + 20), v188, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
            _s8PaperKit0A0VWOhTm_4(v187, type metadata accessor for PageId);
            v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
            v190 = v180;
            v191 = *(v189 - 8);
            v192 = (*(v191 + 48))(v188, 1, v189);
            outlined destroy of StocksKitCurrencyCache.Provider?(v188, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
            v193 = *(v0 + 656);
            if (v192 == 1)
            {
              v194 = v190;
              v195 = *(v0 + 616);
              v261 = *(v0 + 528);
              v196 = *(v0 + 480);
              v197 = *(v0 + 416);
              (*v259)(*(v0 + 648), v193, v195);
              lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage();
              WeakTagged_3.init(_:)();
              (*(v191 + 56))(v197, 0, 1, v189);
              PaperKitPDFDocument.subscript.getter(v164, v196);
              outlined assign with take of WeakTagged_3<TaggedPaperPage>?(v197, v196 + *(v194 + 20));
              PaperKitPDFDocument.subscript.setter(v196, v164);
              _s8PaperKit0A0VWOhTm_4(v261, type metadata accessor for PDFPageID);
              (*v272)(v193, v195);
            }

            else
            {
              v198 = *(v0 + 616);
              _s8PaperKit0A0VWOhTm_4(*(v0 + 528), type metadata accessor for PDFPageID);
              (*v272)(v193, v198);
            }

            goto LABEL_78;
          }
        }

        v183 = *(v0 + 656);
        v184 = *(v0 + 616);
        _s8PaperKit0A0VWOhTm_4(*(v0 + 528), type metadata accessor for PDFPageID);
        (*v272)(v183, v184);
      }

LABEL_78:
      v150 = *(v0 + 888);
      v151 = *(v0 + 680);
      v152 = *(v0 + 616);
      CROrderedSet.Iterator.next()();
    }

    while (v150(v151, 1, v152) != 1);
  }

  v137 = *(v0 + 824);
  v139 = *(v0 + 296);
  v138 = *(v0 + 304);
  v262(*(v0 + 712), *(v0 + 696));
  swift_beginAccess();
  v140 = specialized PaperDocument.update<A>(_:in:otherDocuments:use:)(v270, v138, *(v137 + 16), v139);
  *(v0 + 944) = v140;
  v141 = *(v140 + 32);
  *(v0 + 1032) = v141;
  v142 = -1;
  v143 = -1 << v141;
  if (-(-1 << v141) < 64)
  {
    v142 = ~(-1 << -(-1 << v141));
  }

  v144 = v142 & *(v140 + 56);
  if (v144)
  {
    v145 = 0;
LABEL_98:
    *(v0 + 960) = v145;
    *(v0 + 952) = v144;
    v201 = *(v0 + 776);
    v202 = *(v0 + 768);
    v203 = *(v0 + 760);
    v204 = *(v0 + 752);
    v205 = *(v140 + 48) + *(v203 + 72) * (__clz(__rbit64(v144)) | (v145 << 6));
    v206 = *(v203 + 16);
    *(v0 + 968) = v206;
    *(v0 + 976) = (v203 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v206(v201, v205, v204);
    (*(v203 + 32))(v202, v201, v204);
    v207 = swift_task_alloc();
    *(v0 + 984) = v207;
    *(v207 + 16) = v202;
    v208 = swift_task_alloc();
    *(v0 + 992) = v208;
    v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0aB11PDFDocumentCSgMd);
    *v208 = v0;
    v208[1] = specialized PaperDocument.newPDFDocument<A>(use:in:options:);
    v170 = &async function pointer to partial apply for closure #1 in static PaperKitPDFDocument._load(_:);
    v168 = (v0 + 280);
    v169 = 1;
    v171 = v207;

    return MEMORY[0x1EEDF52A8](v168, v169, v170, v171, v172);
  }

  v199 = 0;
  v200 = ((63 - v143) >> 6) - 1;
  while (v200 != v199)
  {
    v145 = v199 + 1;
    v144 = *(v140 + 8 * v199++ + 64);
    if (v144)
    {
      goto LABEL_98;
    }
  }

  v210 = *(v0 + 304);
  v209 = *(v0 + 312);
  v211 = *(v0 + 296);

  specialized PaperKitPDFDocument.updatePDFPages<A>(in:use:options:)(v210, v211, v209);
  if (v211 != 0x8000000000000000)
  {
    v213 = *(v0 + 400);
    v212 = *(v0 + 408);
    v215 = *(v0 + 384);
    v214 = *(v0 + 392);
    v216 = *(v0 + 368);
    v217 = *(v0 + 376);
    v218 = *(v0 + 320);
    v219 = *(v0 + 296);
    outlined copy of PaperDocument.PDFDocumentUse(v219);
    outlined consume of PaperDocument.PDFDocumentUse(v219);
    outlined consume of PaperDocument.PDFDocumentUse(0x8000000000000000);
    (*(v217 + 16))(v214, v218, v216);
    (*(v217 + 32))(v215, v214, v216);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_3<TaggedPaperPage>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd);
    dispatch thunk of Sequence.makeIterator()();
    v220 = *(v213 + 36);
    *(v0 + 1028) = v220;
    *(v212 + v220) = 0;
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_3<TaggedPaperPage>>.Iterator and conformance CROrderedSet<A>.Iterator, &_s9Coherence12CROrderedSetV8IteratorVyAA14SharedTagged_3Vy8PaperKit0fG4PageVG_GMd);
    v281 = 0;
    v221 = &selRef_PDFView;
    while (1)
    {
      v222 = *(v0 + 888);
      v223 = *(v0 + 672);
      v224 = *(v0 + 616);
      dispatch thunk of IteratorProtocol.next()();
      if (v222(v223, 1, v224) == 1)
      {
        v225 = *(v0 + 352);
        v226 = *(v0 + 328);
        v227 = *(v0 + 336);
        outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 672), &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMd);
        (*(v227 + 56))(v225, 1, 1, v226);
        v228 = v281;
      }

      else
      {
        v229 = *(v0 + 640);
        v230 = *(v0 + 616);
        v231 = *(v0 + 344);
        v232 = *(v0 + 328);
        v233 = *(*(v0 + 624) + 32);
        v233(v229, *(v0 + 672), v230);
        v234 = *(v232 + 48);
        *v231 = v281;
        v233(v231 + v234, v229, v230);
        v228 = v281 + 1;
        if (__OFADD__(v281, 1))
        {
          goto LABEL_128;
        }

        v235 = *(v0 + 344);
        v236 = *(v0 + 352);
        v237 = *(v0 + 328);
        v238 = *(v0 + 336);
        *(*(v0 + 408) + *(v0 + 1028)) = v228;
        outlined init with take of Range<AttributedString.Index>(v235, v236, &_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtMd);
        (*(v238 + 56))(v236, 0, 1, v237);
        v221 = &selRef_PDFView;
      }

      *(v0 + 1000) = v228;
      v239 = *(v0 + 360);
      v240 = *(v0 + 328);
      v241 = *(v0 + 336);
      outlined init with take of Range<AttributedString.Index>(*(v0 + 352), v239, &_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtSgMd);
      if ((*(v241 + 48))(v239, 1, v240) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 408), &_ss18EnumeratedSequenceV8IteratorVy9Coherence12CROrderedSetVyAE14SharedTagged_3Vy8PaperKit0hI4PageVGG_GMd);
        goto LABEL_118;
      }

      v242 = *(v0 + 928);
      v243 = *(v0 + 360);
      v244 = *v243;
      (*(*(v0 + 624) + 32))(*(v0 + 632), &v243[*(*(v0 + 328) + 48)], *(v0 + 616));
      v245 = [v242 v221[383]];
      *(v0 + 1008) = v245;
      if (v245)
      {
        v246 = v245;
        type metadata accessor for PaperKitPDFPage(0);
        v247 = swift_dynamicCastClass();
        if (v247)
        {
          v248 = v247;
          v249 = *(v0 + 296);
          v250 = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument);
          SharedTagged_3.subscript.getter();
          v251 = *(v0 + 40);
          v252 = *(v0 + 48);
          __swift_project_boxed_opaque_existential_1((v0 + 16), v251);
          *(v0 + 288) = v249;
          v282 = (*(v252 + 168) + **(v252 + 168));
          v253 = swift_task_alloc();
          *(v0 + 1016) = v253;
          *v253 = v0;
          v253[1] = specialized PaperDocument.newPDFDocument<A>(use:in:options:);
          v254 = *(v0 + 840);
          v255 = *(v0 + 304);
          v256 = *(v0 + 312);

          return v282(v248, v0 + 288, v255, v256, v254, v250, v251, v252);
        }
      }

      v281 = v228;
      (*(*(v0 + 624) + 8))(*(v0 + 632), *(v0 + 616));
    }
  }

  outlined consume of PaperDocument.PDFDocumentUse(0x8000000000000000);
  outlined consume of PaperDocument.PDFDocumentUse(0x8000000000000000);
LABEL_118:

  v283 = *(v0 + 928);

  v257 = *(v0 + 8);

  return v257(v283);
}

{
  *(*v1 + 880) = v0;

  if (v0)
  {
    v2 = specialized PaperDocument.newPDFDocument<A>(use:in:options:);
  }

  else
  {
    v2 = specialized PaperDocument.newPDFDocument<A>(use:in:options:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  (*(*(v0 + 760) + 8))(*(v0 + 816), *(v0 + 752));
  v1 = *(v0 + 880);
  v2 = *(v0 + 688);
  v3 = *(v0 + 624);
  v4 = *(v0 + 616);
  CROrderedSet.makeIterator()();
  CROrderedSet.Iterator.next()();
  v6 = *(v3 + 48);
  v5 = v3 + 48;
  *(v0 + 888) = v6;
  if (v6(v2, 1, v4) != 1)
  {
    *(v0 + 896) = *(*(v0 + 624) + 32);
    do
    {
      v27 = *(v0 + 608);
      v28 = *(v0 + 504);
      v29 = *(v0 + 512);
      (*(v0 + 896))(*(v0 + 664), *(v0 + 688), *(v0 + 616));
      _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument);
      SharedTagged_3.subscript.getter();
      v30 = *(v0 + 120);
      v31 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1((v0 + 96), v30);
      (*(v31 + 112))(v30, v31);
      if ((*(v29 + 48))(v27, 1, v28) == 1)
      {
        v20 = *(v0 + 760);
        v21 = *(v0 + 752);
        v22 = *(v0 + 736);
        v23 = *(v0 + 608);
        (*(*(v0 + 624) + 8))(*(v0 + 664), *(v0 + 616));
        __swift_destroy_boxed_opaque_existential_0(v0 + 96);
        outlined destroy of StocksKitCurrencyCache.Provider?(v23, &_s8PaperKit9PDFPageIDVSgMd);
        (*(v20 + 56))(v22, 1, 1, v21);
      }

      else
      {
        v32 = *(v0 + 856);
        v33 = *(v0 + 760);
        v34 = *(v0 + 752);
        v35 = *(v0 + 736);
        v36 = *(v0 + 608);
        (*(v33 + 16))(v35, v36 + *(*(v0 + 504) + 20), v34);
        _s8PaperKit0A0VWOhTm_4(v36, type metadata accessor for PDFPageID);
        (*(v33 + 56))(v35, 0, 1, v34);
        __swift_destroy_boxed_opaque_existential_0(v0 + 96);
        if (v32(v35, 1, v34) != 1)
        {
          (*(*(v0 + 760) + 32))(*(v0 + 808), *(v0 + 736), *(v0 + 752));
          v45 = swift_task_alloc();
          *(v0 + 912) = v45;
          *v45 = v0;
          v45[1] = specialized PaperDocument.newPDFDocument<A>(use:in:options:);
          v46 = *(v0 + 832);
          v47 = *(v0 + 824);
          v48 = *(v0 + 808);

          return loadPdfAsset #1 <A>(_:) in PaperDocument.newPDFDocument<A>(use:in:options:)(v48, v47, v46);
        }

        (*(*(v0 + 624) + 8))(*(v0 + 664), *(v0 + 616));
      }

      v24 = *(v0 + 888);
      v25 = *(v0 + 688);
      v26 = *(v0 + 616);
      v5 = *(v0 + 624) + 48;
      outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 736), &_s9Coherence7CRAssetVSgMd);
      CROrderedSet.Iterator.next()();
    }

    while (v24(v25, 1, v26) != 1);
  }

  *(v0 + 904) = v5 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v7 = *(v0 + 856);
  v8 = *(v0 + 752);
  v9 = *(v0 + 728);
  v247 = *(*(v0 + 704) + 8);
  v247(*(v0 + 720), *(v0 + 696));
  CRRegister.wrappedValue.getter();
  if (v7(v9, 1, v8) != 1)
  {
    v37 = *(v0 + 824);
    (*(*(v0 + 760) + 32))(*(v0 + 800), *(v0 + 728), *(v0 + 752));
    swift_beginAccess();
    v38 = *(v37 + 16);
    if (!*(v38 + 16) || (v39 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 800)), (v40 & 1) == 0))
    {
LABEL_138:
      swift_endAccess();
      __break(1u);
LABEL_139:
      v156 = swift_endAccess();
      __break(1u);
LABEL_140:
      __break(1u);
      return MEMORY[0x1EEDF52A8](v156, v157, v158, v159, v160);
    }

    v41 = *(v0 + 800);
    v42 = *(v0 + 760);
    v43 = *(v0 + 752);
    v44 = *(*(v38 + 56) + 8 * v39);
    goto LABEL_37;
  }

  v10 = *(v0 + 832);
  outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 728), &_s9Coherence7CRAssetVSgMd);
  swift_beginAccess();
  v11 = *(v10 + 16);
  v12 = v11 + 64;
  v13 = -1 << *(v11 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v11 + 64);
  v267 = *(v10 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = __clz(__rbit64(v15));
    v18 = (v15 - 1) & v15;
    v19 = (63 - v13) >> 6;
LABEL_24:
    v52 = *(v0 + 760);
    v252 = *(v0 + 576);
    v53 = *(v0 + 568);
    v54 = *(v0 + 544);
    v255 = *(v52 + 72);
    v258 = *(v52 + 16);
    v258(v53, *(v267 + 48) + v255 * v17, *(v0 + 752));
    v261 = v54;
    *(v53 + *(v54 + 48)) = *(*(v267 + 56) + 8 * v17);
    outlined init with take of Range<AttributedString.Index>(v53, v252, &_s9Coherence7CRAssetV3key_Si5valuetMd);

    v265 = v1;
    while (v18)
    {
      v55 = v16;
LABEL_32:
      v56 = *(v0 + 576);
      v57 = *(v0 + 560);
      v58 = *(v0 + 552);
      v59 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v60 = v59 | (v55 << 6);
      v258(v58, *(v267 + 48) + v60 * v255, *(v0 + 752));
      *(v58 + *(v261 + 48)) = *(*(v267 + 56) + 8 * v60);
      outlined init with take of Range<AttributedString.Index>(v58, v57, &_s9Coherence7CRAssetV3key_Si5valuetMd);
      if (*(v56 + *(v261 + 48)) >= *(v57 + *(v261 + 48)))
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 560), &_s9Coherence7CRAssetV3key_Si5valuetMd);
      }

      else
      {
        v61 = *(v0 + 576);
        v62 = *(v0 + 560);
        outlined destroy of StocksKitCurrencyCache.Provider?(v61, &_s9Coherence7CRAssetV3key_Si5valuetMd);
        outlined init with take of Range<AttributedString.Index>(v62, v61, &_s9Coherence7CRAssetV3key_Si5valuetMd);
      }

      v16 = v55;
      v1 = v265;
    }

    while (1)
    {
      v55 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

      if (v55 >= v19)
      {
        break;
      }

      v18 = *(v12 + 8 * v55);
      ++v16;
      if (v18)
      {
        goto LABEL_32;
      }
    }

    v63 = *(v0 + 824);
    v64 = *(v0 + 792);
    v65 = *(v0 + 784);
    v66 = *(v0 + 760);
    v67 = *(v0 + 752);
    v68 = *(v0 + 584);
    v69 = *(v0 + 576);

    outlined init with take of Range<AttributedString.Index>(v69, v68, &_s9Coherence7CRAssetV3key_Si5valuetMd);
    v70 = *(v66 + 32);
    v70(v65, v68, v67);
    v70(v64, v65, v67);
    swift_beginAccess();
    v71 = *(v63 + 16);
    if (!*(v71 + 16))
    {
      goto LABEL_139;
    }

    v72 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 792));
    if ((v73 & 1) == 0)
    {
      goto LABEL_139;
    }

    v41 = *(v0 + 792);
    v42 = *(v0 + 760);
    v43 = *(v0 + 752);
    v44 = *(*(v71 + 56) + 8 * v72);
LABEL_37:
    swift_endAccess();
    v74 = *(v42 + 8);
    v75 = v44;
    v74(v41, v43);
    goto LABEL_38;
  }

  v50 = 0;
  v19 = (63 - v13) >> 6;
  while (v19 - 1 != v50)
  {
    v16 = v50 + 1;
    v51 = *(v11 + 72 + 8 * v50);
    v15 -= 64;
    ++v50;
    if (v51)
    {
      v18 = (v51 - 1) & v51;
      v17 = __clz(__rbit64(v51)) - v15;
      goto LABEL_24;
    }
  }

  v75 = [objc_allocWithZone(type metadata accessor for PaperKitPDFDocument()) init];
LABEL_38:
  *(v0 + 928) = v75;
  v76 = v75;
  v77 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8PaperKit9PDFPageIDV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v78 = [v76 pageCount];
  v268 = v76;

  if ((v78 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v78)
  {
    v256 = v77;
    v79 = 0;
    v263 = (*(v0 + 472) + 48);
    v80 = *(v0 + 512);
    v248 = (v80 + 56);
    v250 = *(v0 + 464);
    v245 = v80;
    v81 = (v80 + 48);
    v259 = (v80 + 48);
    v253 = v78;
    do
    {
      while (1)
      {
        if (v79 >= v78)
        {
          goto LABEL_128;
        }

        if (__OFADD__(v79, 1))
        {
          goto LABEL_129;
        }

        if (one-time initialization token for lock != -1)
        {
          swift_once();
        }

        v82 = static PaperKitPDFDocument.lock;
        v83 = swift_task_alloc();
        *(v83 + 16) = v268;
        *(v83 + 24) = v79;
        v84 = swift_task_alloc();
        *(v84 + 16) = partial apply for closure #1 in PaperKitPDFDocument.subscript.getter;
        *(v84 + 24) = v83;
        os_unfair_lock_lock(v82 + 4);
        partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v85);
        if (v1)
        {
          v122 = v82 + 4;
          goto LABEL_70;
        }

        v266 = (v79 + 1);
        v86 = *(v0 + 456);
        v87 = *(v0 + 464);
        os_unfair_lock_unlock(v82 + 4);

        v88 = *v263;
        if ((*v263)(v86, 1, v87) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 456), &_s8PaperKit6PageIdVSgMd);
          v89 = [v268 pageAtIndex_];
          if (!v89)
          {
            goto LABEL_137;
          }

          v90 = v89;
          v91 = *(v0 + 464);
          v92 = *(v0 + 432);
          type metadata accessor for PaperKitPDFPage(0);
          v93 = swift_dynamicCastClassUnconditional();
          v94 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
          swift_beginAccess();
          outlined init with copy of Date?(v93 + v94, v92, &_s8PaperKit6PageIdVSgMd);

          if (v88(v92, 1, v91) == 1)
          {
            v95 = *(v0 + 496);
            v96 = *(v0 + 504);
            outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 432), &_s8PaperKit6PageIdVSgMd);
            (*v248)(v95, 1, 1, v96);
            v97 = *(v250 + 20);
            v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
            (*(*(v98 - 8) + 56))(v95 + v97, 1, 1, v98);
          }

          else
          {
            _s8PaperKit9PDFPageIDVWObTm_0(*(v0 + 432), *(v0 + 496), type metadata accessor for PageId);
          }

          v78 = v253;
          v81 = v259;
        }

        else
        {
          _s8PaperKit9PDFPageIDVWObTm_0(*(v0 + 456), *(v0 + 496), type metadata accessor for PageId);
        }

        v99 = *(v0 + 592);
        v101 = *(v0 + 496);
        v100 = *(v0 + 504);
        outlined init with copy of Date?(v101, v99, &_s8PaperKit9PDFPageIDVSgMd);
        _s8PaperKit0A0VWOhTm_4(v101, type metadata accessor for PageId);
        v102 = (*v81)(v99, 1, v100);
        v103 = *(v0 + 592);
        if (v102 != 1)
        {
          break;
        }

        outlined destroy of StocksKitCurrencyCache.Provider?(v103, &_s8PaperKit9PDFPageIDVSgMd);
        v1 = 0;
        ++v79;
        if (v266 == v78)
        {
          goto LABEL_73;
        }
      }

      v104 = *(v0 + 536);
      v105 = *(v0 + 520);
      _s8PaperKit9PDFPageIDVWObTm_0(v103, v104, type metadata accessor for PDFPageID);
      outlined init with copy of PDFPageID(v104, v105);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v107 = specialized __RawDictionaryStorage.find<A>(_:)(v105);
      v109 = v256[2];
      v110 = (v108 & 1) == 0;
      v111 = __OFADD__(v109, v110);
      v112 = v109 + v110;
      if (v111)
      {
        goto LABEL_135;
      }

      v113 = v108;
      if (v256[3] >= v112)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v121 = v107;
          specialized _NativeDictionary.copy()();
          v107 = v121;
        }
      }

      else
      {
        v114 = *(v0 + 520);
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v112, isUniquelyReferenced_nonNull_native);
        v107 = specialized __RawDictionaryStorage.find<A>(_:)(v114);
        if ((v113 & 1) != (v115 & 1))
        {
          goto LABEL_130;
        }
      }

      v116 = *(v0 + 536);
      v117 = *(v0 + 520);
      if (v113)
      {
        *(v256[7] + 8 * v107) = v79;
        _s8PaperKit0A0VWOhTm_4(v117, type metadata accessor for PDFPageID);
        _s8PaperKit0A0VWOhTm_4(v116, type metadata accessor for PDFPageID);
      }

      else
      {
        v256[(v107 >> 6) + 8] |= 1 << v107;
        v118 = v107;
        outlined init with copy of PDFPageID(v117, v256[6] + *(v245 + 72) * v107);
        *(v256[7] + 8 * v118) = v79;
        _s8PaperKit0A0VWOhTm_4(v117, type metadata accessor for PDFPageID);
        _s8PaperKit0A0VWOhTm_4(v116, type metadata accessor for PDFPageID);
        v119 = v256[2];
        v111 = __OFADD__(v119, 1);
        v120 = v119 + 1;
        if (v111)
        {
          goto LABEL_136;
        }

        v256[2] = v120;
      }

      ++v79;
      v1 = 0;
    }

    while (v266 != v78);
LABEL_73:
    v77 = v256;
  }

  v257 = v77;
  *(v0 + 936) = v77;
  v123 = *(v0 + 888);
  v124 = *(v0 + 680);
  v125 = *(v0 + 616);
  CROrderedSet.makeIterator()();
  CROrderedSet.Iterator.next()();
  if (v123(v124, 1, v125) == 1)
  {
LABEL_75:
    v126 = *(v0 + 824);
    v128 = *(v0 + 296);
    v127 = *(v0 + 304);
    v247(*(v0 + 712), *(v0 + 696));
    swift_beginAccess();
    v129 = specialized PaperDocument.update<A>(_:in:otherDocuments:use:)(v268, v127, *(v126 + 16), v128);
    *(v0 + 944) = v129;
    v130 = *(v129 + 32);
    *(v0 + 1032) = v130;
    v131 = -1;
    v132 = -1 << v130;
    if (-(-1 << v130) < 64)
    {
      v131 = ~(-1 << -(-1 << v130));
    }

    v133 = v131 & *(v129 + 56);
    if (!v133)
    {
      v185 = 0;
      v186 = ((63 - v132) >> 6) - 1;
      while (v186 != v185)
      {
        v134 = v185 + 1;
        v133 = *(v129 + 8 * v185++ + 64);
        if (v133)
        {
          goto LABEL_103;
        }
      }

      v196 = *(v0 + 304);
      v195 = *(v0 + 312);
      v197 = *(v0 + 296);

      specialized PaperKitPDFDocument.updatePDFPages<A>(in:use:options:)(v196, v197, v195);
      if (v197 != 0x8000000000000000)
      {
        v199 = *(v0 + 400);
        v198 = *(v0 + 408);
        v201 = *(v0 + 384);
        v200 = *(v0 + 392);
        v202 = *(v0 + 368);
        v203 = *(v0 + 376);
        v204 = *(v0 + 320);
        v205 = *(v0 + 296);
        outlined copy of PaperDocument.PDFDocumentUse(v205);
        outlined consume of PaperDocument.PDFDocumentUse(v205);
        outlined consume of PaperDocument.PDFDocumentUse(0x8000000000000000);
        (*(v203 + 16))(v200, v204, v202);
        (*(v203 + 32))(v201, v200, v202);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_3<TaggedPaperPage>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd);
        dispatch thunk of Sequence.makeIterator()();
        v206 = *(v199 + 36);
        *(v0 + 1028) = v206;
        *(v198 + v206) = 0;
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_3<TaggedPaperPage>>.Iterator and conformance CROrderedSet<A>.Iterator, &_s9Coherence12CROrderedSetV8IteratorVyAA14SharedTagged_3Vy8PaperKit0fG4PageVG_GMd);
        v269 = 0;
        while (1)
        {
          v207 = *(v0 + 888);
          v208 = *(v0 + 672);
          v209 = *(v0 + 616);
          dispatch thunk of IteratorProtocol.next()();
          if (v207(v208, 1, v209) == 1)
          {
            v210 = *(v0 + 352);
            v211 = *(v0 + 328);
            v212 = *(v0 + 336);
            outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 672), &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMd);
            (*(v212 + 56))(v210, 1, 1, v211);
            v213 = v269;
          }

          else
          {
            v214 = *(v0 + 640);
            v215 = *(v0 + 616);
            v216 = *(v0 + 344);
            v217 = *(v0 + 328);
            v218 = *(*(v0 + 624) + 32);
            v218(v214, *(v0 + 672), v215);
            v219 = *(v217 + 48);
            *v216 = v269;
            v218(v216 + v219, v214, v215);
            v213 = v269 + 1;
            if (__OFADD__(v269, 1))
            {
              goto LABEL_134;
            }

            v220 = *(v0 + 344);
            v221 = *(v0 + 352);
            v222 = *(v0 + 328);
            v223 = *(v0 + 336);
            *(*(v0 + 408) + *(v0 + 1028)) = v213;
            outlined init with take of Range<AttributedString.Index>(v220, v221, &_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtMd);
            (*(v223 + 56))(v221, 0, 1, v222);
          }

          *(v0 + 1000) = v213;
          v224 = *(v0 + 360);
          v225 = *(v0 + 328);
          v226 = *(v0 + 336);
          outlined init with take of Range<AttributedString.Index>(*(v0 + 352), v224, &_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtSgMd);
          if ((*(v226 + 48))(v224, 1, v225) == 1)
          {
            outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 408), &_ss18EnumeratedSequenceV8IteratorVy9Coherence12CROrderedSetVyAE14SharedTagged_3Vy8PaperKit0hI4PageVGG_GMd);
            goto LABEL_121;
          }

          v227 = *(v0 + 928);
          v228 = *(v0 + 360);
          v229 = *v228;
          (*(*(v0 + 624) + 32))(*(v0 + 632), &v228[*(*(v0 + 328) + 48)], *(v0 + 616));
          v230 = [v227 pageAtIndex_];
          *(v0 + 1008) = v230;
          if (v230)
          {
            v231 = v230;
            type metadata accessor for PaperKitPDFPage(0);
            v232 = swift_dynamicCastClass();
            if (v232)
            {
              v234 = v232;
              v235 = *(v0 + 296);
              v236 = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument);
              SharedTagged_3.subscript.getter();
              v237 = *(v0 + 40);
              v238 = *(v0 + 48);
              __swift_project_boxed_opaque_existential_1((v0 + 16), v237);
              *(v0 + 288) = v235;
              v271 = (*(v238 + 168) + **(v238 + 168));
              v239 = swift_task_alloc();
              *(v0 + 1016) = v239;
              *v239 = v0;
              v239[1] = specialized PaperDocument.newPDFDocument<A>(use:in:options:);
              v240 = *(v0 + 840);
              v241 = *(v0 + 304);
              v242 = *(v0 + 312);

              return v271(v234, v0 + 288, v241, v242, v240, v236, v237, v238);
            }
          }

          v269 = v213;
          (*(*(v0 + 624) + 8))(*(v0 + 632), *(v0 + 616));
        }
      }

      outlined consume of PaperDocument.PDFDocumentUse(0x8000000000000000);
      outlined consume of PaperDocument.PDFDocumentUse(0x8000000000000000);
LABEL_121:

      v270 = *(v0 + 928);

      v233 = *(v0 + 8);

      return v233(v270);
    }

    v134 = 0;
LABEL_103:
    *(v0 + 960) = v134;
    *(v0 + 952) = v133;
    v187 = *(v0 + 776);
    v188 = *(v0 + 768);
    v189 = *(v0 + 760);
    v190 = *(v0 + 752);
    v191 = *(v129 + 48) + *(v189 + 72) * (__clz(__rbit64(v133)) | (v134 << 6));
    v192 = *(v189 + 16);
    *(v0 + 968) = v192;
    *(v0 + 976) = (v189 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v192(v187, v191, v190);
    (*(v189 + 32))(v188, v187, v190);
    v193 = swift_task_alloc();
    *(v0 + 984) = v193;
    *(v193 + 16) = v188;
    v194 = swift_task_alloc();
    *(v0 + 992) = v194;
    v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0aB11PDFDocumentCSgMd);
    *v194 = v0;
    v194[1] = specialized PaperDocument.newPDFDocument<A>(use:in:options:);
    v158 = &async function pointer to partial apply for closure #1 in static PaperKitPDFDocument._load(_:);
    v156 = (v0 + 280);
    v157 = 1;
    v159 = v193;

    return MEMORY[0x1EEDF52A8](v156, v157, v158, v159, v160);
  }

  v135 = *(v0 + 624);
  v136 = *(v135 + 32);
  v135 += 32;
  v264 = v136;
  v137 = *(v0 + 512);
  v262 = (v137 + 48);
  v249 = *(v0 + 464);
  v254 = (*(v0 + 472) + 48);
  v243 = (v137 + 56);
  v260 = (v135 - 24);
  v244 = (v135 - 16);
  while (1)
  {
    v142 = *(v0 + 600);
    v143 = *(v0 + 504);
    v264(*(v0 + 656), *(v0 + 680), *(v0 + 616));
    _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument);
    SharedTagged_3.subscript.getter();
    v144 = *(v0 + 80);
    v145 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v144);
    (*(v145 + 112))(v144, v145);
    if ((*v262)(v142, 1, v143) != 1)
    {
      break;
    }

    v138 = *(v0 + 600);
    (*v260)(*(v0 + 656), *(v0 + 616));
    outlined destroy of StocksKitCurrencyCache.Provider?(v138, &_s8PaperKit9PDFPageIDVSgMd);
    __swift_destroy_boxed_opaque_existential_0(v0 + 56);
LABEL_81:
    v139 = *(v0 + 888);
    v140 = *(v0 + 680);
    v141 = *(v0 + 616);
    CROrderedSet.Iterator.next()();
    if (v139(v140, 1, v141) == 1)
    {
      goto LABEL_75;
    }
  }

  _s8PaperKit9PDFPageIDVWObTm_0(*(v0 + 600), *(v0 + 528), type metadata accessor for PDFPageID);
  __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  if (!*(v257 + 16) || (v146 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 528)), (v147 & 1) == 0))
  {
    v171 = *(v0 + 656);
    v172 = *(v0 + 616);
    _s8PaperKit0A0VWOhTm_4(*(v0 + 528), type metadata accessor for PDFPageID);
    (*v260)(v171, v172);
    goto LABEL_81;
  }

  v148 = *(*(v257 + 56) + 8 * v146);
  if (one-time initialization token for lock != -1)
  {
    swift_once();
  }

  v149 = static PaperKitPDFDocument.lock;
  v150 = swift_task_alloc();
  *(v150 + 16) = v268;
  *(v150 + 24) = v148;
  v151 = swift_task_alloc();
  *(v151 + 16) = closure #1 in PaperKitPDFDocument.subscript.getterpartial apply;
  *(v151 + 24) = v150;
  os_unfair_lock_lock(v149 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v152);
  if (!v1)
  {
    v153 = *(v0 + 464);
    v154 = *(v0 + 448);
    os_unfair_lock_unlock(v149 + 4);

    v155 = *v254;
    v251 = v148;
    if ((*v254)(v154, 1, v153) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 448), &_s8PaperKit6PageIdVSgMd);
      v156 = [v268 pageAtIndex_];
      if (!v156)
      {
        goto LABEL_140;
      }

      v161 = v156;
      v162 = *(v0 + 464);
      v163 = *(v0 + 440);
      type metadata accessor for PaperKitPDFPage(0);
      v164 = swift_dynamicCastClassUnconditional();
      v165 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
      swift_beginAccess();
      outlined init with copy of Date?(v164 + v165, v163, &_s8PaperKit6PageIdVSgMd);

      if (v155(v163, 1, v162) == 1)
      {
        v166 = *(v0 + 504);
        v167 = *(v0 + 488);
        outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 440), &_s8PaperKit6PageIdVSgMd);
        (*v243)(v167, 1, 1, v166);
        v168 = v249;
        v169 = *(v249 + 20);
        v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
        (*(*(v170 - 8) + 56))(v167 + v169, 1, 1, v170);
LABEL_96:
        v175 = *(v0 + 488);
        v176 = *(v0 + 424);
        outlined init with copy of Date?(v175 + *(v168 + 20), v176, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
        _s8PaperKit0A0VWOhTm_4(v175, type metadata accessor for PageId);
        v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
        v178 = *(v177 - 8);
        v179 = (*(v178 + 48))(v176, 1, v177);
        outlined destroy of StocksKitCurrencyCache.Provider?(v176, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
        v180 = *(v0 + 656);
        if (v179 == 1)
        {
          v181 = *(v0 + 616);
          v246 = *(v0 + 528);
          v182 = *(v0 + 480);
          v183 = *(v0 + 416);
          (*v244)(*(v0 + 648), v180, v181);
          lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage();
          WeakTagged_3.init(_:)();
          (*(v178 + 56))(v183, 0, 1, v177);
          PaperKitPDFDocument.subscript.getter(v251, v182);
          outlined assign with take of WeakTagged_3<TaggedPaperPage>?(v183, v182 + *(v168 + 20));
          PaperKitPDFDocument.subscript.setter(v182, v251);
          _s8PaperKit0A0VWOhTm_4(v246, type metadata accessor for PDFPageID);
          (*v260)(v180, v181);
        }

        else
        {
          v184 = *(v0 + 616);
          _s8PaperKit0A0VWOhTm_4(*(v0 + 528), type metadata accessor for PDFPageID);
          (*v260)(v180, v184);
        }

        v1 = 0;
        goto LABEL_81;
      }

      v173 = *(v0 + 488);
      v174 = *(v0 + 440);
    }

    else
    {
      v173 = *(v0 + 488);
      v174 = *(v0 + 448);
    }

    _s8PaperKit9PDFPageIDVWObTm_0(v174, v173, type metadata accessor for PageId);
    v168 = v249;
    goto LABEL_96;
  }

  v122 = v149 + 4;
LABEL_70:
  os_unfair_lock_unlock(v122);
}

{
  (*(v0[95] + 8))(v0[102], v0[94]);
  v1 = v0[110];
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D38C4000, v3, v4, "Could not create PDFDocument.", v5, 2u);
    MEMORY[0x1DA6D0660](v5, -1, -1);
  }

  v8 = [objc_allocWithZone(type metadata accessor for PaperKitPDFDocument()) init];

  v6 = v0[1];

  return v6(v8);
}

{
  *(*v1 + 920) = v0;

  if (v0)
  {
    v2 = specialized PaperDocument.newPDFDocument<A>(use:in:options:);
  }

  else
  {
    v2 = specialized PaperDocument.newPDFDocument<A>(use:in:options:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 888);
  v2 = *(v0 + 688);
  v3 = *(v0 + 664);
  v4 = *(v0 + 624);
  v5 = *(v0 + 616);
  (*(*(v0 + 760) + 8))(*(v0 + 808), *(v0 + 752));
  v6 = v4 + 48;
  (*(v4 + 8))(v3, v5);
  CROrderedSet.Iterator.next()();
  v7 = v1(v2, 1, v5);
  v8 = *(v0 + 920);
  if (v7 != 1)
  {
    do
    {
      v29 = *(v0 + 608);
      v31 = *(v0 + 504);
      v30 = *(v0 + 512);
      (*(v0 + 896))(*(v0 + 664), *(v0 + 688), *(v0 + 616));
      _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument);
      SharedTagged_3.subscript.getter();
      v32 = *(v0 + 120);
      v33 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1((v0 + 96), v32);
      (*(v33 + 112))(v32, v33);
      if ((*(v30 + 48))(v29, 1, v31) == 1)
      {
        v22 = *(v0 + 760);
        v23 = *(v0 + 752);
        v24 = *(v0 + 736);
        v25 = *(v0 + 608);
        (*(*(v0 + 624) + 8))(*(v0 + 664), *(v0 + 616));
        __swift_destroy_boxed_opaque_existential_0(v0 + 96);
        outlined destroy of StocksKitCurrencyCache.Provider?(v25, &_s8PaperKit9PDFPageIDVSgMd);
        (*(v22 + 56))(v24, 1, 1, v23);
      }

      else
      {
        v34 = *(v0 + 856);
        v35 = *(v0 + 760);
        v36 = *(v0 + 752);
        v37 = *(v0 + 736);
        v38 = *(v0 + 608);
        (*(v35 + 16))(v37, v38 + *(*(v0 + 504) + 20), v36);
        _s8PaperKit0A0VWOhTm_4(v38, type metadata accessor for PDFPageID);
        (*(v35 + 56))(v37, 0, 1, v36);
        __swift_destroy_boxed_opaque_existential_0(v0 + 96);
        if (v34(v37, 1, v36) != 1)
        {
          (*(*(v0 + 760) + 32))(*(v0 + 808), *(v0 + 736), *(v0 + 752));
          v47 = swift_task_alloc();
          *(v0 + 912) = v47;
          *v47 = v0;
          v47[1] = specialized PaperDocument.newPDFDocument<A>(use:in:options:);
          v48 = *(v0 + 832);
          v49 = *(v0 + 824);
          v50 = *(v0 + 808);

          return loadPdfAsset #1 <A>(_:) in PaperDocument.newPDFDocument<A>(use:in:options:)(v50, v49, v48);
        }

        (*(*(v0 + 624) + 8))(*(v0 + 664), *(v0 + 616));
      }

      v26 = *(v0 + 888);
      v27 = *(v0 + 688);
      v28 = *(v0 + 616);
      v6 = *(v0 + 624) + 48;
      outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 736), &_s9Coherence7CRAssetVSgMd);
      CROrderedSet.Iterator.next()();
    }

    while (v26(v27, 1, v28) != 1);
  }

  *(v0 + 904) = v6 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v9 = *(v0 + 856);
  v10 = *(v0 + 752);
  v11 = *(v0 + 728);
  v249 = *(*(v0 + 704) + 8);
  v249(*(v0 + 720), *(v0 + 696));
  CRRegister.wrappedValue.getter();
  if (v9(v11, 1, v10) != 1)
  {
    v39 = *(v0 + 824);
    (*(*(v0 + 760) + 32))(*(v0 + 800), *(v0 + 728), *(v0 + 752));
    swift_beginAccess();
    v40 = *(v39 + 16);
    if (!*(v40 + 16) || (v41 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 800)), (v42 & 1) == 0))
    {
LABEL_138:
      swift_endAccess();
      __break(1u);
LABEL_139:
      v158 = swift_endAccess();
      __break(1u);
LABEL_140:
      __break(1u);
      return MEMORY[0x1EEDF52A8](v158, v159, v160, v161, v162);
    }

    v43 = *(v0 + 800);
    v44 = *(v0 + 760);
    v45 = *(v0 + 752);
    v46 = *(*(v40 + 56) + 8 * v41);
    goto LABEL_37;
  }

  v12 = *(v0 + 832);
  outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 728), &_s9Coherence7CRAssetVSgMd);
  swift_beginAccess();
  v13 = *(v12 + 16);
  v14 = v13 + 64;
  v15 = -1 << *(v13 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v13 + 64);
  v269 = *(v12 + 16);
  if (v17)
  {
    v18 = 0;
    v19 = __clz(__rbit64(v17));
    v20 = (v17 - 1) & v17;
    v21 = (63 - v15) >> 6;
LABEL_24:
    v54 = *(v0 + 760);
    v254 = *(v0 + 576);
    v55 = *(v0 + 568);
    v56 = *(v0 + 544);
    v257 = *(v54 + 72);
    v260 = *(v54 + 16);
    v260(v55, *(v269 + 48) + v257 * v19, *(v0 + 752));
    v263 = v56;
    *(v55 + *(v56 + 48)) = *(*(v269 + 56) + 8 * v19);
    outlined init with take of Range<AttributedString.Index>(v55, v254, &_s9Coherence7CRAssetV3key_Si5valuetMd);

    v267 = v8;
    while (v20)
    {
      v57 = v18;
LABEL_32:
      v58 = *(v0 + 576);
      v59 = *(v0 + 560);
      v60 = *(v0 + 552);
      v61 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v62 = v61 | (v57 << 6);
      v260(v60, *(v269 + 48) + v62 * v257, *(v0 + 752));
      *(v60 + *(v263 + 48)) = *(*(v269 + 56) + 8 * v62);
      outlined init with take of Range<AttributedString.Index>(v60, v59, &_s9Coherence7CRAssetV3key_Si5valuetMd);
      if (*(v58 + *(v263 + 48)) >= *(v59 + *(v263 + 48)))
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 560), &_s9Coherence7CRAssetV3key_Si5valuetMd);
      }

      else
      {
        v63 = *(v0 + 576);
        v64 = *(v0 + 560);
        outlined destroy of StocksKitCurrencyCache.Provider?(v63, &_s9Coherence7CRAssetV3key_Si5valuetMd);
        outlined init with take of Range<AttributedString.Index>(v64, v63, &_s9Coherence7CRAssetV3key_Si5valuetMd);
      }

      v18 = v57;
      v8 = v267;
    }

    while (1)
    {
      v57 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

      if (v57 >= v21)
      {
        break;
      }

      v20 = *(v14 + 8 * v57);
      ++v18;
      if (v20)
      {
        goto LABEL_32;
      }
    }

    v65 = *(v0 + 824);
    v66 = *(v0 + 792);
    v67 = *(v0 + 784);
    v68 = *(v0 + 760);
    v69 = *(v0 + 752);
    v70 = *(v0 + 584);
    v71 = *(v0 + 576);

    outlined init with take of Range<AttributedString.Index>(v71, v70, &_s9Coherence7CRAssetV3key_Si5valuetMd);
    v72 = *(v68 + 32);
    v72(v67, v70, v69);
    v72(v66, v67, v69);
    swift_beginAccess();
    v73 = *(v65 + 16);
    if (!*(v73 + 16))
    {
      goto LABEL_139;
    }

    v74 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 792));
    if ((v75 & 1) == 0)
    {
      goto LABEL_139;
    }

    v43 = *(v0 + 792);
    v44 = *(v0 + 760);
    v45 = *(v0 + 752);
    v46 = *(*(v73 + 56) + 8 * v74);
LABEL_37:
    swift_endAccess();
    v76 = *(v44 + 8);
    v77 = v46;
    v76(v43, v45);
    goto LABEL_38;
  }

  v52 = 0;
  v21 = (63 - v15) >> 6;
  while (v21 - 1 != v52)
  {
    v18 = v52 + 1;
    v53 = *(v13 + 72 + 8 * v52);
    v17 -= 64;
    ++v52;
    if (v53)
    {
      v20 = (v53 - 1) & v53;
      v19 = __clz(__rbit64(v53)) - v17;
      goto LABEL_24;
    }
  }

  v77 = [objc_allocWithZone(type metadata accessor for PaperKitPDFDocument()) init];
LABEL_38:
  *(v0 + 928) = v77;
  v78 = v77;
  v79 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8PaperKit9PDFPageIDV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v80 = [v78 pageCount];
  v270 = v78;

  if ((v80 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v80)
  {
    v258 = v79;
    v81 = 0;
    v265 = (*(v0 + 472) + 48);
    v82 = *(v0 + 512);
    v250 = (v82 + 56);
    v252 = *(v0 + 464);
    v247 = v82;
    v83 = (v82 + 48);
    v261 = (v82 + 48);
    v255 = v80;
    do
    {
      while (1)
      {
        if (v81 >= v80)
        {
          goto LABEL_128;
        }

        if (__OFADD__(v81, 1))
        {
          goto LABEL_129;
        }

        if (one-time initialization token for lock != -1)
        {
          swift_once();
        }

        v84 = static PaperKitPDFDocument.lock;
        v85 = swift_task_alloc();
        *(v85 + 16) = v270;
        *(v85 + 24) = v81;
        v86 = swift_task_alloc();
        *(v86 + 16) = partial apply for closure #1 in PaperKitPDFDocument.subscript.getter;
        *(v86 + 24) = v85;
        os_unfair_lock_lock(v84 + 4);
        partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v87);
        if (v8)
        {
          v124 = v84 + 4;
          goto LABEL_70;
        }

        v268 = (v81 + 1);
        v88 = *(v0 + 456);
        v89 = *(v0 + 464);
        os_unfair_lock_unlock(v84 + 4);

        v90 = *v265;
        if ((*v265)(v88, 1, v89) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 456), &_s8PaperKit6PageIdVSgMd);
          v91 = [v270 pageAtIndex_];
          if (!v91)
          {
            goto LABEL_137;
          }

          v92 = v91;
          v93 = *(v0 + 464);
          v94 = *(v0 + 432);
          type metadata accessor for PaperKitPDFPage(0);
          v95 = swift_dynamicCastClassUnconditional();
          v96 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
          swift_beginAccess();
          outlined init with copy of Date?(v95 + v96, v94, &_s8PaperKit6PageIdVSgMd);

          if (v90(v94, 1, v93) == 1)
          {
            v97 = *(v0 + 496);
            v98 = *(v0 + 504);
            outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 432), &_s8PaperKit6PageIdVSgMd);
            (*v250)(v97, 1, 1, v98);
            v99 = *(v252 + 20);
            v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
            (*(*(v100 - 8) + 56))(v97 + v99, 1, 1, v100);
          }

          else
          {
            _s8PaperKit9PDFPageIDVWObTm_0(*(v0 + 432), *(v0 + 496), type metadata accessor for PageId);
          }

          v80 = v255;
          v83 = v261;
        }

        else
        {
          _s8PaperKit9PDFPageIDVWObTm_0(*(v0 + 456), *(v0 + 496), type metadata accessor for PageId);
        }

        v101 = *(v0 + 592);
        v103 = *(v0 + 496);
        v102 = *(v0 + 504);
        outlined init with copy of Date?(v103, v101, &_s8PaperKit9PDFPageIDVSgMd);
        _s8PaperKit0A0VWOhTm_4(v103, type metadata accessor for PageId);
        v104 = (*v83)(v101, 1, v102);
        v105 = *(v0 + 592);
        if (v104 != 1)
        {
          break;
        }

        outlined destroy of StocksKitCurrencyCache.Provider?(v105, &_s8PaperKit9PDFPageIDVSgMd);
        v8 = 0;
        ++v81;
        if (v268 == v80)
        {
          goto LABEL_73;
        }
      }

      v106 = *(v0 + 536);
      v107 = *(v0 + 520);
      _s8PaperKit9PDFPageIDVWObTm_0(v105, v106, type metadata accessor for PDFPageID);
      outlined init with copy of PDFPageID(v106, v107);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v109 = specialized __RawDictionaryStorage.find<A>(_:)(v107);
      v111 = v258[2];
      v112 = (v110 & 1) == 0;
      v113 = __OFADD__(v111, v112);
      v114 = v111 + v112;
      if (v113)
      {
        goto LABEL_135;
      }

      v115 = v110;
      if (v258[3] >= v114)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v123 = v109;
          specialized _NativeDictionary.copy()();
          v109 = v123;
        }
      }

      else
      {
        v116 = *(v0 + 520);
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v114, isUniquelyReferenced_nonNull_native);
        v109 = specialized __RawDictionaryStorage.find<A>(_:)(v116);
        if ((v115 & 1) != (v117 & 1))
        {
          goto LABEL_130;
        }
      }

      v118 = *(v0 + 536);
      v119 = *(v0 + 520);
      if (v115)
      {
        *(v258[7] + 8 * v109) = v81;
        _s8PaperKit0A0VWOhTm_4(v119, type metadata accessor for PDFPageID);
        _s8PaperKit0A0VWOhTm_4(v118, type metadata accessor for PDFPageID);
      }

      else
      {
        v258[(v109 >> 6) + 8] |= 1 << v109;
        v120 = v109;
        outlined init with copy of PDFPageID(v119, v258[6] + *(v247 + 72) * v109);
        *(v258[7] + 8 * v120) = v81;
        _s8PaperKit0A0VWOhTm_4(v119, type metadata accessor for PDFPageID);
        _s8PaperKit0A0VWOhTm_4(v118, type metadata accessor for PDFPageID);
        v121 = v258[2];
        v113 = __OFADD__(v121, 1);
        v122 = v121 + 1;
        if (v113)
        {
          goto LABEL_136;
        }

        v258[2] = v122;
      }

      ++v81;
      v8 = 0;
    }

    while (v268 != v80);
LABEL_73:
    v79 = v258;
  }

  v259 = v79;
  *(v0 + 936) = v79;
  v125 = *(v0 + 888);
  v126 = *(v0 + 680);
  v127 = *(v0 + 616);
  CROrderedSet.makeIterator()();
  CROrderedSet.Iterator.next()();
  if (v125(v126, 1, v127) == 1)
  {
LABEL_75:
    v128 = *(v0 + 824);
    v130 = *(v0 + 296);
    v129 = *(v0 + 304);
    v249(*(v0 + 712), *(v0 + 696));
    swift_beginAccess();
    v131 = specialized PaperDocument.update<A>(_:in:otherDocuments:use:)(v270, v129, *(v128 + 16), v130);
    *(v0 + 944) = v131;
    v132 = *(v131 + 32);
    *(v0 + 1032) = v132;
    v133 = -1;
    v134 = -1 << v132;
    if (-(-1 << v132) < 64)
    {
      v133 = ~(-1 << -(-1 << v132));
    }

    v135 = v133 & *(v131 + 56);
    if (!v135)
    {
      v187 = 0;
      v188 = ((63 - v134) >> 6) - 1;
      while (v188 != v187)
      {
        v136 = v187 + 1;
        v135 = *(v131 + 8 * v187++ + 64);
        if (v135)
        {
          goto LABEL_103;
        }
      }

      v198 = *(v0 + 304);
      v197 = *(v0 + 312);
      v199 = *(v0 + 296);

      specialized PaperKitPDFDocument.updatePDFPages<A>(in:use:options:)(v198, v199, v197);
      if (v199 != 0x8000000000000000)
      {
        v201 = *(v0 + 400);
        v200 = *(v0 + 408);
        v203 = *(v0 + 384);
        v202 = *(v0 + 392);
        v204 = *(v0 + 368);
        v205 = *(v0 + 376);
        v206 = *(v0 + 320);
        v207 = *(v0 + 296);
        outlined copy of PaperDocument.PDFDocumentUse(v207);
        outlined consume of PaperDocument.PDFDocumentUse(v207);
        outlined consume of PaperDocument.PDFDocumentUse(0x8000000000000000);
        (*(v205 + 16))(v202, v206, v204);
        (*(v205 + 32))(v203, v202, v204);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_3<TaggedPaperPage>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd);
        dispatch thunk of Sequence.makeIterator()();
        v208 = *(v201 + 36);
        *(v0 + 1028) = v208;
        *(v200 + v208) = 0;
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_3<TaggedPaperPage>>.Iterator and conformance CROrderedSet<A>.Iterator, &_s9Coherence12CROrderedSetV8IteratorVyAA14SharedTagged_3Vy8PaperKit0fG4PageVG_GMd);
        v271 = 0;
        while (1)
        {
          v209 = *(v0 + 888);
          v210 = *(v0 + 672);
          v211 = *(v0 + 616);
          dispatch thunk of IteratorProtocol.next()();
          if (v209(v210, 1, v211) == 1)
          {
            v212 = *(v0 + 352);
            v213 = *(v0 + 328);
            v214 = *(v0 + 336);
            outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 672), &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMd);
            (*(v214 + 56))(v212, 1, 1, v213);
            v215 = v271;
          }

          else
          {
            v216 = *(v0 + 640);
            v217 = *(v0 + 616);
            v218 = *(v0 + 344);
            v219 = *(v0 + 328);
            v220 = *(*(v0 + 624) + 32);
            v220(v216, *(v0 + 672), v217);
            v221 = *(v219 + 48);
            *v218 = v271;
            v220(v218 + v221, v216, v217);
            v215 = v271 + 1;
            if (__OFADD__(v271, 1))
            {
              goto LABEL_134;
            }

            v222 = *(v0 + 344);
            v223 = *(v0 + 352);
            v224 = *(v0 + 328);
            v225 = *(v0 + 336);
            *(*(v0 + 408) + *(v0 + 1028)) = v215;
            outlined init with take of Range<AttributedString.Index>(v222, v223, &_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtMd);
            (*(v225 + 56))(v223, 0, 1, v224);
          }

          *(v0 + 1000) = v215;
          v226 = *(v0 + 360);
          v227 = *(v0 + 328);
          v228 = *(v0 + 336);
          outlined init with take of Range<AttributedString.Index>(*(v0 + 352), v226, &_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtSgMd);
          if ((*(v228 + 48))(v226, 1, v227) == 1)
          {
            outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 408), &_ss18EnumeratedSequenceV8IteratorVy9Coherence12CROrderedSetVyAE14SharedTagged_3Vy8PaperKit0hI4PageVGG_GMd);
            goto LABEL_121;
          }

          v229 = *(v0 + 928);
          v230 = *(v0 + 360);
          v231 = *v230;
          (*(*(v0 + 624) + 32))(*(v0 + 632), &v230[*(*(v0 + 328) + 48)], *(v0 + 616));
          v232 = [v229 pageAtIndex_];
          *(v0 + 1008) = v232;
          if (v232)
          {
            v233 = v232;
            type metadata accessor for PaperKitPDFPage(0);
            v234 = swift_dynamicCastClass();
            if (v234)
            {
              v236 = v234;
              v237 = *(v0 + 296);
              v238 = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument);
              SharedTagged_3.subscript.getter();
              v239 = *(v0 + 40);
              v240 = *(v0 + 48);
              __swift_project_boxed_opaque_existential_1((v0 + 16), v239);
              *(v0 + 288) = v237;
              v273 = (*(v240 + 168) + **(v240 + 168));
              v241 = swift_task_alloc();
              *(v0 + 1016) = v241;
              *v241 = v0;
              v241[1] = specialized PaperDocument.newPDFDocument<A>(use:in:options:);
              v242 = *(v0 + 840);
              v243 = *(v0 + 304);
              v244 = *(v0 + 312);

              return v273(v236, v0 + 288, v243, v244, v242, v238, v239, v240);
            }
          }

          v271 = v215;
          (*(*(v0 + 624) + 8))(*(v0 + 632), *(v0 + 616));
        }
      }

      outlined consume of PaperDocument.PDFDocumentUse(0x8000000000000000);
      outlined consume of PaperDocument.PDFDocumentUse(0x8000000000000000);
LABEL_121:

      v272 = *(v0 + 928);

      v235 = *(v0 + 8);

      return v235(v272);
    }

    v136 = 0;
LABEL_103:
    *(v0 + 960) = v136;
    *(v0 + 952) = v135;
    v189 = *(v0 + 776);
    v190 = *(v0 + 768);
    v191 = *(v0 + 760);
    v192 = *(v0 + 752);
    v193 = *(v131 + 48) + *(v191 + 72) * (__clz(__rbit64(v135)) | (v136 << 6));
    v194 = *(v191 + 16);
    *(v0 + 968) = v194;
    *(v0 + 976) = (v191 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v194(v189, v193, v192);
    (*(v191 + 32))(v190, v189, v192);
    v195 = swift_task_alloc();
    *(v0 + 984) = v195;
    *(v195 + 16) = v190;
    v196 = swift_task_alloc();
    *(v0 + 992) = v196;
    v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0aB11PDFDocumentCSgMd);
    *v196 = v0;
    v196[1] = specialized PaperDocument.newPDFDocument<A>(use:in:options:);
    v160 = &async function pointer to partial apply for closure #1 in static PaperKitPDFDocument._load(_:);
    v158 = (v0 + 280);
    v159 = 1;
    v161 = v195;

    return MEMORY[0x1EEDF52A8](v158, v159, v160, v161, v162);
  }

  v137 = *(v0 + 624);
  v138 = *(v137 + 32);
  v137 += 32;
  v266 = v138;
  v139 = *(v0 + 512);
  v264 = (v139 + 48);
  v251 = *(v0 + 464);
  v256 = (*(v0 + 472) + 48);
  v245 = (v139 + 56);
  v262 = (v137 - 24);
  v246 = (v137 - 16);
  while (1)
  {
    v144 = *(v0 + 600);
    v145 = *(v0 + 504);
    v266(*(v0 + 656), *(v0 + 680), *(v0 + 616));
    _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument);
    SharedTagged_3.subscript.getter();
    v146 = *(v0 + 80);
    v147 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v146);
    (*(v147 + 112))(v146, v147);
    if ((*v264)(v144, 1, v145) != 1)
    {
      break;
    }

    v140 = *(v0 + 600);
    (*v262)(*(v0 + 656), *(v0 + 616));
    outlined destroy of StocksKitCurrencyCache.Provider?(v140, &_s8PaperKit9PDFPageIDVSgMd);
    __swift_destroy_boxed_opaque_existential_0(v0 + 56);
LABEL_81:
    v141 = *(v0 + 888);
    v142 = *(v0 + 680);
    v143 = *(v0 + 616);
    CROrderedSet.Iterator.next()();
    if (v141(v142, 1, v143) == 1)
    {
      goto LABEL_75;
    }
  }

  _s8PaperKit9PDFPageIDVWObTm_0(*(v0 + 600), *(v0 + 528), type metadata accessor for PDFPageID);
  __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  if (!*(v259 + 16) || (v148 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 528)), (v149 & 1) == 0))
  {
    v173 = *(v0 + 656);
    v174 = *(v0 + 616);
    _s8PaperKit0A0VWOhTm_4(*(v0 + 528), type metadata accessor for PDFPageID);
    (*v262)(v173, v174);
    goto LABEL_81;
  }

  v150 = *(*(v259 + 56) + 8 * v148);
  if (one-time initialization token for lock != -1)
  {
    swift_once();
  }

  v151 = static PaperKitPDFDocument.lock;
  v152 = swift_task_alloc();
  *(v152 + 16) = v270;
  *(v152 + 24) = v150;
  v153 = swift_task_alloc();
  *(v153 + 16) = closure #1 in PaperKitPDFDocument.subscript.getterpartial apply;
  *(v153 + 24) = v152;
  os_unfair_lock_lock(v151 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v154);
  if (!v8)
  {
    v155 = *(v0 + 464);
    v156 = *(v0 + 448);
    os_unfair_lock_unlock(v151 + 4);

    v157 = *v256;
    v253 = v150;
    if ((*v256)(v156, 1, v155) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 448), &_s8PaperKit6PageIdVSgMd);
      v158 = [v270 pageAtIndex_];
      if (!v158)
      {
        goto LABEL_140;
      }

      v163 = v158;
      v164 = *(v0 + 464);
      v165 = *(v0 + 440);
      type metadata accessor for PaperKitPDFPage(0);
      v166 = swift_dynamicCastClassUnconditional();
      v167 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
      swift_beginAccess();
      outlined init with copy of Date?(v166 + v167, v165, &_s8PaperKit6PageIdVSgMd);

      if (v157(v165, 1, v164) == 1)
      {
        v168 = *(v0 + 504);
        v169 = *(v0 + 488);
        outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 440), &_s8PaperKit6PageIdVSgMd);
        (*v245)(v169, 1, 1, v168);
        v170 = v251;
        v171 = *(v251 + 20);
        v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
        (*(*(v172 - 8) + 56))(v169 + v171, 1, 1, v172);
LABEL_96:
        v177 = *(v0 + 488);
        v178 = *(v0 + 424);
        outlined init with copy of Date?(v177 + *(v170 + 20), v178, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
        _s8PaperKit0A0VWOhTm_4(v177, type metadata accessor for PageId);
        v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
        v180 = *(v179 - 8);
        v181 = (*(v180 + 48))(v178, 1, v179);
        outlined destroy of StocksKitCurrencyCache.Provider?(v178, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
        v182 = *(v0 + 656);
        if (v181 == 1)
        {
          v183 = *(v0 + 616);
          v248 = *(v0 + 528);
          v184 = *(v0 + 480);
          v185 = *(v0 + 416);
          (*v246)(*(v0 + 648), v182, v183);
          lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage();
          WeakTagged_3.init(_:)();
          (*(v180 + 56))(v185, 0, 1, v179);
          PaperKitPDFDocument.subscript.getter(v253, v184);
          outlined assign with take of WeakTagged_3<TaggedPaperPage>?(v185, v184 + *(v170 + 20));
          PaperKitPDFDocument.subscript.setter(v184, v253);
          _s8PaperKit0A0VWOhTm_4(v248, type metadata accessor for PDFPageID);
          (*v262)(v182, v183);
        }

        else
        {
          v186 = *(v0 + 616);
          _s8PaperKit0A0VWOhTm_4(*(v0 + 528), type metadata accessor for PDFPageID);
          (*v262)(v182, v186);
        }

        v8 = 0;
        goto LABEL_81;
      }

      v175 = *(v0 + 488);
      v176 = *(v0 + 440);
    }

    else
    {
      v175 = *(v0 + 488);
      v176 = *(v0 + 448);
    }

    _s8PaperKit9PDFPageIDVWObTm_0(v176, v175, type metadata accessor for PageId);
    v170 = v251;
    goto LABEL_96;
  }

  v124 = v151 + 4;
LABEL_70:
  os_unfair_lock_unlock(v124);
}

{
  v1 = v0[90];
  v2 = v0[88];
  v3 = v0[87];
  v4 = v0[83];
  v5 = v0[78];
  v6 = v0[77];
  (*(v0[95] + 8))(v0[101], v0[94]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = v0[115];
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, logger);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1D38C4000, v9, v10, "Could not create PDFDocument.", v11, 2u);
    MEMORY[0x1DA6D0660](v11, -1, -1);
  }

  v14 = [objc_allocWithZone(type metadata accessor for PaperKitPDFDocument()) init];

  v12 = v0[1];

  return v12(v14);
}

{
  v1 = *(v0 + 280);
  if (v1 >= 2)
  {
    if (PaperKitPDFDocument.finishLoading(as:)(*(v0 + 768)))
    {
      v2 = *(v0 + 968);
      v3 = *(v0 + 768);
      v4 = *(v0 + 752);
      v80 = *(v0 + 928);
      v78 = *(v0 + 304);
      v79 = *(v0 + 296);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence7CRAssetV_8PaperKit0fG11PDFDocumentCtGMd);
      v5 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetV_8PaperKit0cD11PDFDocumentCtMd) - 8);
      v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1D4058CF0;
      v8 = v7 + v6;
      v9 = v5[14];
      v2(v8, v3, v4);
      *(v8 + v9) = v1;
      v10 = v1;
      v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence7CRAssetV_8PaperKit0eF11PDFDocumentCTt0g5Tf4g_n(v7);
      swift_setDeallocating();
      outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s9Coherence7CRAssetV_8PaperKit0cD11PDFDocumentCtMd);
      swift_deallocClassInstance();
      specialized PaperDocument.update<A>(_:in:otherDocuments:use:)(v80, v78, v11, v79);
    }

    outlined consume of PaperKitPDFDocument??(v1);
  }

  v12 = (*(*(v0 + 760) + 8))(*(v0 + 768), *(v0 + 752));
  v17 = *(v0 + 960);
  v18 = (*(v0 + 952) - 1) & *(v0 + 952);
  if (v18)
  {
    v12 = *(v0 + 944);
LABEL_11:
    *(v0 + 960) = v17;
    *(v0 + 952) = v18;
    v20 = *(v0 + 776);
    v21 = *(v0 + 768);
    v22 = *(v0 + 760);
    v23 = *(v0 + 752);
    v24 = *(v12 + 48) + *(v22 + 72) * (__clz(__rbit64(v18)) | (v17 << 6));
    v25 = *(v22 + 16);
    *(v0 + 968) = v25;
    *(v0 + 976) = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v25(v20, v24, v23);
    (*(v22 + 32))(v21, v20, v23);
    v26 = swift_task_alloc();
    *(v0 + 984) = v26;
    *(v26 + 16) = v21;
    v27 = swift_task_alloc();
    *(v0 + 992) = v27;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0aB11PDFDocumentCSgMd);
    *v27 = v0;
    v27[1] = specialized PaperDocument.newPDFDocument<A>(use:in:options:);
    v14 = &async function pointer to partial apply for closure #1 in static PaperKitPDFDocument._load(_:);
    v12 = v0 + 280;
    v13 = 1;
    v15 = v26;

    return MEMORY[0x1EEDF52A8](v12, v13, v14, v15, v16);
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      return MEMORY[0x1EEDF52A8](v12, v13, v14, v15, v16);
    }

    v12 = *(v0 + 944);
    if (v19 >= (((1 << *(v0 + 1032)) + 63) >> 6))
    {
      break;
    }

    v18 = *(v12 + 8 * v19 + 56);
    ++v17;
    if (v18)
    {
      v17 = v19;
      goto LABEL_11;
    }
  }

  v29 = *(v0 + 304);
  v28 = *(v0 + 312);
  v30 = *(v0 + 296);

  specialized PaperKitPDFDocument.updatePDFPages<A>(in:use:options:)(v29, v30, v28);
  if (v30 != 0x8000000000000000)
  {
    v32 = *(v0 + 400);
    v31 = *(v0 + 408);
    v34 = *(v0 + 384);
    v33 = *(v0 + 392);
    v35 = *(v0 + 368);
    v36 = *(v0 + 376);
    v37 = *(v0 + 320);
    v38 = *(v0 + 296);
    outlined copy of PaperDocument.PDFDocumentUse(v38);
    outlined consume of PaperDocument.PDFDocumentUse(v38);
    outlined consume of PaperDocument.PDFDocumentUse(0x8000000000000000);
    (*(v36 + 16))(v33, v37, v35);
    (*(v36 + 32))(v34, v33, v35);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_3<TaggedPaperPage>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd);
    dispatch thunk of Sequence.makeIterator()();
    v39 = *(v32 + 36);
    *(v0 + 1028) = v39;
    *(v31 + v39) = 0;
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_3<TaggedPaperPage>>.Iterator and conformance CROrderedSet<A>.Iterator, &_s9Coherence12CROrderedSetV8IteratorVyAA14SharedTagged_3Vy8PaperKit0fG4PageVG_GMd);
    v40 = 0;
    while (1)
    {
      v41 = *(v0 + 888);
      v42 = *(v0 + 672);
      v43 = *(v0 + 616);
      dispatch thunk of IteratorProtocol.next()();
      if (v41(v42, 1, v43) == 1)
      {
        v44 = *(v0 + 352);
        v45 = *(v0 + 328);
        v46 = *(v0 + 336);
        outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 672), &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMd);
        (*(v46 + 56))(v44, 1, 1, v45);
      }

      else
      {
        v47 = *(v0 + 640);
        v48 = *(v0 + 616);
        v49 = *(v0 + 344);
        v50 = *(v0 + 328);
        v51 = *(*(v0 + 624) + 32);
        v51(v47, *(v0 + 672), v48);
        v52 = *(v50 + 48);
        *v49 = v40;
        v12 = v51(&v49[v52], v47, v48);
        if (__OFADD__(v40++, 1))
        {
          goto LABEL_34;
        }

        v54 = *(v0 + 344);
        v55 = *(v0 + 352);
        v56 = *(v0 + 328);
        v57 = *(v0 + 336);
        *(*(v0 + 408) + *(v0 + 1028)) = v40;
        outlined init with take of Range<AttributedString.Index>(v54, v55, &_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtMd);
        (*(v57 + 56))(v55, 0, 1, v56);
      }

      *(v0 + 1000) = v40;
      v58 = *(v0 + 360);
      v59 = *(v0 + 328);
      v60 = *(v0 + 336);
      outlined init with take of Range<AttributedString.Index>(*(v0 + 352), v58, &_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtSgMd);
      if ((*(v60 + 48))(v58, 1, v59) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 408), &_ss18EnumeratedSequenceV8IteratorVy9Coherence12CROrderedSetVyAE14SharedTagged_3Vy8PaperKit0hI4PageVGG_GMd);
        goto LABEL_27;
      }

      v61 = *(v0 + 928);
      v62 = *(v0 + 360);
      v63 = *v62;
      (*(*(v0 + 624) + 32))(*(v0 + 632), &v62[*(*(v0 + 328) + 48)], *(v0 + 616));
      v64 = [v61 pageAtIndex_];
      *(v0 + 1008) = v64;
      if (v64)
      {
        v65 = v64;
        type metadata accessor for PaperKitPDFPage(0);
        v66 = swift_dynamicCastClass();
        if (v66)
        {
          v69 = *(v0 + 296);
          v70 = v66;
          v71 = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument);
          SharedTagged_3.subscript.getter();
          v72 = *(v0 + 40);
          v73 = *(v0 + 48);
          __swift_project_boxed_opaque_existential_1((v0 + 16), v72);
          *(v0 + 288) = v69;
          v82 = (*(v73 + 168) + **(v73 + 168));
          v74 = swift_task_alloc();
          *(v0 + 1016) = v74;
          *v74 = v0;
          v74[1] = specialized PaperDocument.newPDFDocument<A>(use:in:options:);
          v75 = *(v0 + 840);
          v76 = *(v0 + 304);
          v77 = *(v0 + 312);

          return v82(v70, v0 + 288, v76, v77, v75, v71, v72, v73);
        }
      }

      (*(*(v0 + 624) + 8))(*(v0 + 632), *(v0 + 616));
    }
  }

  outlined consume of PaperDocument.PDFDocumentUse(0x8000000000000000);
  outlined consume of PaperDocument.PDFDocumentUse(0x8000000000000000);
LABEL_27:

  v81 = *(v0 + 928);

  v67 = *(v0 + 8);

  return v67(v81);
}

{

  return MEMORY[0x1EEE6DFA0](specialized PaperDocument.newPDFDocument<A>(use:in:options:), 0, 0);
}

{
  v1 = *(v0 + 632);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  v4 = *(v0 + 1000);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_3<TaggedPaperPage>>.Iterator and conformance CROrderedSet<A>.Iterator, &_s9Coherence12CROrderedSetV8IteratorVyAA14SharedTagged_3Vy8PaperKit0fG4PageVG_GMd);
  while (1)
  {
    v5 = *(v0 + 888);
    v6 = *(v0 + 672);
    v7 = *(v0 + 616);
    dispatch thunk of IteratorProtocol.next()();
    if (v5(v6, 1, v7) == 1)
    {
      v8 = *(v0 + 352);
      v9 = *(v0 + 328);
      v10 = *(v0 + 336);
      outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 672), &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMd);
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    else
    {
      v11 = *(v0 + 640);
      v12 = *(v0 + 616);
      v13 = *(v0 + 344);
      v14 = *(v0 + 328);
      v15 = *(*(v0 + 624) + 32);
      v15(v11, *(v0 + 672), v12);
      v16 = *(v14 + 48);
      *v13 = v4;
      result = v15(&v13[v16], v11, v12);
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return result;
      }

      v19 = *(v0 + 344);
      v20 = *(v0 + 352);
      v21 = *(v0 + 328);
      v22 = *(v0 + 336);
      *(*(v0 + 408) + *(v0 + 1028)) = v4;
      outlined init with take of Range<AttributedString.Index>(v19, v20, &_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtMd);
      (*(v22 + 56))(v20, 0, 1, v21);
    }

    *(v0 + 1000) = v4;
    v23 = *(v0 + 360);
    v24 = *(v0 + 328);
    v25 = *(v0 + 336);
    outlined init with take of Range<AttributedString.Index>(*(v0 + 352), v23, &_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtSgMd);
    if ((*(v25 + 48))(v23, 1, v24) == 1)
    {
      break;
    }

    v26 = *(v0 + 928);
    v27 = *(v0 + 360);
    v28 = *v27;
    (*(*(v0 + 624) + 32))(*(v0 + 632), &v27[*(*(v0 + 328) + 48)], *(v0 + 616));
    v29 = [v26 pageAtIndex_];
    *(v0 + 1008) = v29;
    if (v29)
    {
      v30 = v29;
      type metadata accessor for PaperKitPDFPage(0);
      v31 = swift_dynamicCastClass();
      if (v31)
      {
        v33 = *(v0 + 296);
        v34 = v31;
        v35 = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument);
        SharedTagged_3.subscript.getter();
        v36 = *(v0 + 40);
        v37 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v36);
        *(v0 + 288) = v33;
        v43 = (*(v37 + 168) + **(v37 + 168));
        v38 = swift_task_alloc();
        *(v0 + 1016) = v38;
        *v38 = v0;
        v38[1] = specialized PaperDocument.newPDFDocument<A>(use:in:options:);
        v39 = *(v0 + 840);
        v40 = *(v0 + 304);
        v41 = *(v0 + 312);

        return v43(v34, v0 + 288, v40, v41, v39, v35, v36, v37);
      }
    }

    (*(*(v0 + 624) + 8))(*(v0 + 632), *(v0 + 616));
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 408), &_ss18EnumeratedSequenceV8IteratorVy9Coherence12CROrderedSetVyAE14SharedTagged_3Vy8PaperKit0hI4PageVGG_GMd);

  v42 = *(v0 + 928);

  v32 = *(v0 + 8);

  return v32(v42);
}

void specialized PaperDocument.newPDFDocument<A>(use:in:options:)()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](specialized PaperDocument.newPDFDocument<A>(use:in:options:), 0, 0);
  }
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  v6 = _minimumMergeRunLength(_:)(v5);
  if (v6 < v5)
  {
    if (v5 >= -1)
    {
      v7 = v6;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v9 + 16) = v8;
      }

      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd) - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v11, v12, v2, a1, a2, v7);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v5, 1, a1);
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  v51 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v50 = &v36 - v12;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v49 = &v36 - v15;
  v37 = a2;
  if (a3 != a2)
  {
    v16 = *v4;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v19 = *(v17 + 56);
    v47 = (v17 - 8);
    v48 = v18;
    v43 = (v17 + 16);
    v44 = v16;
    v20 = (v16 + v19 * (a3 - 1));
    v42 = -v19;
    v21 = a1 - a3;
    v36 = v19;
    v22 = v16 + v19 * a3;
    v53 = v8;
    v45 = v17;
LABEL_4:
    v40 = v20;
    v41 = a3;
    v38 = v22;
    v39 = v21;
    v23 = v21;
    v24 = v20;
    while (1)
    {
      v52 = v23;
      v25 = v48;
      v26 = v49;
      (v48)(v49, v22, v8, v14);
      v27 = v50;
      v25(v50, v24, v53);
      v28 = v54;
      v29 = v51(v26, v27);
      v30 = *v47;
      v31 = v27;
      v8 = v53;
      (*v47)(v31, v53);
      v30(v26, v8);
      v54 = v28;
      if (v28)
      {
        break;
      }

      if (v29)
      {
        v32 = v52;
        if (!v44)
        {
          __break(1u);
          return;
        }

        v33 = *v43;
        v34 = v46;
        (*v43)(v46, v22, v8);
        swift_arrayInitWithTakeFrontToBack();
        v33(v24, v34, v8);
        v24 += v42;
        v22 += v42;
        v35 = __CFADD__(v32, 1);
        v23 = v32 + 1;
        if (!v35)
        {
          continue;
        }
      }

      a3 = v41 + 1;
      v20 = &v40[v36];
      v21 = v39 - 1;
      v22 = v38 + v36;
      if (v41 + 1 != v37)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(int64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v142 = a1;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  MEMORY[0x1EEE9AC00](v163);
  v146 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v149 = &v134 - v14;
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v134 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v140 = &v134 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v29 = MEMORY[0x1EEE9AC00](&v134 - v23);
  v161 = v26;
  v162 = a3;
  v30 = a3[1];
  if (v30 < 1)
  {
    v32 = MEMORY[0x1E69E7CC0];
    v33 = a4;
LABEL_104:
    a4 = *v142;
    if (*v142)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_138;
      }

      goto LABEL_106;
    }

    goto LABEL_147;
  }

  v141 = &v134 - v25;
  v139 = v24;
  v151 = v19;
  v147 = v28;
  v148 = v27;
  v137 = a6;
  v31 = 0;
  v159 = (v26 + 8);
  v160 = v26 + 16;
  v155 = (v26 + 32);
  v32 = MEMORY[0x1E69E7CC0];
  v156 = a5;
  v33 = a4;
  v158 = a4;
  while (1)
  {
    v34 = v31;
    v143 = v32;
    if ((v31 + 1) < v30)
    {
      v144 = v31;
      v145 = v30;
      v35 = *v162;
      v36 = *(v161 + 72);
      a4 = *v162 + v36 * (v31 + 1);
      v37 = *(v161 + 16);
      v38 = v163;
      v37(v141, a4, v163, v29);
      v157 = v36;
      v138 = v35;
      v39 = &v35[v36 * v144];
      v40 = v139;
      v152 = v37;
      (v37)(v139, v39, v38);
      v41 = v141;
      LODWORD(v154) = v33(v141, v40);
      if (v7)
      {
        v133 = *v159;
        (*v159)(v40, v38);
        v133(v41, v38);
        goto LABEL_117;
      }

      v164 = 0;
      v42 = *v159;
      (*v159)(v40, v38);
      v150 = v42;
      (v42)(v41, v38);
      v136 = v145 - 1;
      v153 = v145 - 2;
      v43 = v144;
      a5 = v156;
      v44 = v157;
      v45 = &v138[v157 * (v144 + 2)];
      v46 = v140;
      while (v153 != v43)
      {
        v47 = v163;
        v48 = v152;
        (v152)(v46, v45, v163);
        v49 = a5;
        v50 = v151;
        (v48)(v151, a4, v47);
        v51 = v49;
        v52 = v164;
        v53 = v158(v46, v50);
        v164 = v52;
        if (v52)
        {
          v131 = v150;
          (v150)(v50, v47);
          v131(v46, v47);
LABEL_117:

          return;
        }

        v54 = v53;
        v55 = v150;
        (v150)(v50, v47);
        v55(v46, v47);
        ++v43;
        v44 = v157;
        v45 += v157;
        a4 += v157;
        a5 = v51;
        if ((v154 ^ v54))
        {
          v56 = v43 + 1;
          goto LABEL_12;
        }
      }

      v43 = v136;
      v56 = v145;
LABEL_12:
      v34 = v144;
      if (v154)
      {
        if (v56 < v144)
        {
          goto LABEL_141;
        }

        v32 = v163;
        if (v144 <= v43)
        {
          a4 = v44 * (v56 - 1);
          v57 = v56;
          v58 = v56 * v44;
          v145 = v57;
          v59 = v57;
          v60 = v144;
          v61 = v144 * v44;
          do
          {
            if (v60 != --v59)
            {
              v63 = *v162;
              if (!*v162)
              {
                goto LABEL_145;
              }

              v64 = *v155;
              (*v155)(v146, &v63[v61], v163);
              if (v61 < a4 || &v63[v61] >= &v63[v58])
              {
                v62 = v163;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v62 = v163;
                if (v61 != a4)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v64(&v63[a4], v146, v62);
              a5 = v156;
              v44 = v157;
              v32 = v62;
            }

            ++v60;
            a4 -= v44;
            v58 -= v44;
            v61 += v44;
          }

          while (v60 < v59);
          v7 = v164;
          v33 = v158;
          v34 = v144;
          v56 = v145;
        }

        else
        {
          v7 = v164;
          v33 = v158;
        }
      }

      else
      {
        v32 = v163;
        v7 = v164;
        v33 = v158;
      }
    }

    else
    {
      v56 = (v31 + 1);
      v32 = v163;
    }

    v65 = v162[1];
    if (v56 < v65)
    {
      if (__OFSUB__(v56, v34))
      {
        goto LABEL_137;
      }

      if (v56 - v34 < v137)
      {
        if (__OFADD__(v34, v137))
        {
          __break(1u);
        }

        else
        {
          v145 = v56;
          if (&v34[v137] >= v65)
          {
            v66 = v65;
          }

          else
          {
            v66 = &v34[v137];
          }

          if (v66 >= v34)
          {
            if (v145 == v66)
            {
              v56 = v145;
              goto LABEL_38;
            }

            v164 = v7;
            v113 = *v162;
            v114 = *(v161 + 72);
            v157 = *(v161 + 16);
            v115 = (v113 + v114 * (v145 - 1));
            v153 = -v114;
            v154 = v113;
            v144 = v34;
            v116 = &v34[-v145];
            v135 = v114;
            a4 = v113 + v145 * v114;
            v152 = v66;
            while (1)
            {
              v136 = a4;
              v138 = v116;
              v150 = v115;
              while (1)
              {
                v117 = v147;
                v118 = v157;
                (v157)(v147, a4, v32, v29);
                v119 = v148;
                v118(v148, v115, v32);
                v120 = v164;
                v121 = v158(v117, v119);
                v164 = v120;
                if (v120)
                {
                  v132 = *v159;
                  (*v159)(v119, v32);
                  v132(v117, v32);
                  goto LABEL_117;
                }

                v122 = v121;
                v123 = *v159;
                (*v159)(v119, v32);
                v123(v117, v32);
                if ((v122 & 1) == 0)
                {
                  break;
                }

                if (!v154)
                {
                  goto LABEL_143;
                }

                v124 = *v155;
                v125 = v149;
                v32 = v163;
                (*v155)(v149, a4, v163);
                swift_arrayInitWithTakeFrontToBack();
                v124(v115, v125, v32);
                v115 += v153;
                a4 += v153;
                v126 = __CFADD__(v116++, 1);
                a5 = v156;
                if (v126)
                {
                  goto LABEL_101;
                }
              }

              a5 = v156;
              v32 = v163;
LABEL_101:
              v115 = &v150[v135];
              v116 = v138 - 1;
              a4 = v136 + v135;
              v56 = v152;
              if (++v145 == v152)
              {
                v33 = v158;
                v7 = v164;
                v34 = v144;
                goto LABEL_38;
              }
            }
          }
        }

        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }
    }

LABEL_38:
    v32 = v143;
    if (v56 < v34)
    {
      goto LABEL_136;
    }

    a4 = v33;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 2) + 1, 1, v32);
    }

    v68 = *(v32 + 2);
    v67 = *(v32 + 3);
    v69 = v68 + 1;
    if (v68 >= v67 >> 1)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1, v32);
    }

    *(v32 + 2) = v69;
    v70 = &v32[16 * v68];
    *(v70 + 4) = v34;
    *(v70 + 5) = v56;
    v152 = v56;
    v71 = *v142;
    if (!*v142)
    {
      goto LABEL_146;
    }

    if (v68)
    {
      break;
    }

    a5 = v156;
    v33 = a4;
LABEL_90:
    v30 = v162[1];
    v31 = v152;
    if (v152 >= v30)
    {
      goto LABEL_104;
    }
  }

  a5 = v156;
  v33 = a4;
  while (1)
  {
    a4 = v69 - 1;
    if (v69 >= 4)
    {
      v76 = &v32[16 * v69 + 32];
      v77 = *(v76 - 64);
      v78 = *(v76 - 56);
      v82 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      if (v82)
      {
        goto LABEL_123;
      }

      v81 = *(v76 - 48);
      v80 = *(v76 - 40);
      v82 = __OFSUB__(v80, v81);
      v74 = v80 - v81;
      v75 = v82;
      if (v82)
      {
        goto LABEL_124;
      }

      v83 = &v32[16 * v69];
      v85 = *v83;
      v84 = *(v83 + 1);
      v82 = __OFSUB__(v84, v85);
      v86 = v84 - v85;
      if (v82)
      {
        goto LABEL_126;
      }

      v82 = __OFADD__(v74, v86);
      v87 = v74 + v86;
      if (v82)
      {
        goto LABEL_129;
      }

      if (v87 >= v79)
      {
        v105 = &v32[16 * a4 + 32];
        v107 = *v105;
        v106 = *(v105 + 1);
        v82 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v82)
        {
          goto LABEL_135;
        }

        if (v74 < v108)
        {
          a4 = v69 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

    if (v69 == 3)
    {
      v72 = *(v32 + 4);
      v73 = *(v32 + 5);
      v82 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      v75 = v82;
LABEL_59:
      if (v75)
      {
        goto LABEL_125;
      }

      v88 = &v32[16 * v69];
      v90 = *v88;
      v89 = *(v88 + 1);
      v91 = __OFSUB__(v89, v90);
      v92 = v89 - v90;
      v93 = v91;
      if (v91)
      {
        goto LABEL_128;
      }

      v94 = &v32[16 * a4 + 32];
      v96 = *v94;
      v95 = *(v94 + 1);
      v82 = __OFSUB__(v95, v96);
      v97 = v95 - v96;
      if (v82)
      {
        goto LABEL_131;
      }

      if (__OFADD__(v92, v97))
      {
        goto LABEL_132;
      }

      if (v92 + v97 >= v74)
      {
        if (v74 < v97)
        {
          a4 = v69 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_73;
    }

    v98 = &v32[16 * v69];
    v100 = *v98;
    v99 = *(v98 + 1);
    v82 = __OFSUB__(v99, v100);
    v92 = v99 - v100;
    v93 = v82;
LABEL_73:
    if (v93)
    {
      goto LABEL_127;
    }

    v101 = &v32[16 * a4];
    v103 = *(v101 + 4);
    v102 = *(v101 + 5);
    v82 = __OFSUB__(v102, v103);
    v104 = v102 - v103;
    if (v82)
    {
      goto LABEL_130;
    }

    if (v104 < v92)
    {
      goto LABEL_90;
    }

LABEL_80:
    v109 = a4 - 1;
    if (a4 - 1 >= v69)
    {
      break;
    }

    if (!*v162)
    {
      goto LABEL_142;
    }

    v110 = *&v32[16 * v109 + 32];
    v111 = *&v32[16 * a4 + 40];
    specialized _merge<A>(low:mid:high:buffer:by:)(*v162 + *(v161 + 72) * v110, *v162 + *(v161 + 72) * *&v32[16 * a4 + 32], *v162 + *(v161 + 72) * v111, v71, v33, a5);
    if (v7)
    {
      goto LABEL_117;
    }

    if (v111 < v110)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew()(v32);
    }

    if (v109 >= *(v32 + 2))
    {
      goto LABEL_122;
    }

    v112 = &v32[16 * v109];
    *(v112 + 4) = v110;
    *(v112 + 5) = v111;
    v165 = v32;
    specialized Array.remove(at:)(a4);
    v32 = v165;
    v69 = *(v165 + 2);
    if (v69 <= 1)
    {
      goto LABEL_90;
    }
  }

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
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  v32 = specialized _ArrayBuffer._consumeAndCreateNew()(v32);
LABEL_106:
  v165 = v32;
  v127 = *(v32 + 2);
  if (v127 < 2)
  {
    goto LABEL_117;
  }

  while (*v162)
  {
    v128 = *&v32[16 * v127];
    v129 = *&v32[16 * v127 + 24];
    specialized _merge<A>(low:mid:high:buffer:by:)(*v162 + *(v161 + 72) * v128, *v162 + *(v161 + 72) * *&v32[16 * v127 + 16], *v162 + *(v161 + 72) * v129, a4, v33, a5);
    if (v7)
    {
      goto LABEL_117;
    }

    if (v129 < v128)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew()(v32);
    }

    if (v127 - 2 >= *(v32 + 2))
    {
      goto LABEL_134;
    }

    v130 = &v32[16 * v127];
    *v130 = v128;
    *(v130 + 1) = v129;
    v165 = v32;
    specialized Array.remove(at:)(v127 - 1);
    v32 = v165;
    v127 = *(v165 + 2);
    if (v127 <= 1)
    {
      goto LABEL_117;
    }
  }

LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

void specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, uint64_t), uint64_t a6)
{
  v77 = a6;
  v78 = a5;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v11 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v68 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v22 = *(v21 + 72);
  if (!v22)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v23 = &v68 - v19;
  if (a2 - a1 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_67;
  }

  v24 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v22 != -1)
  {
    v25 = (a2 - a1) / v22;
    v84 = a1;
    v83 = a4;
    v79 = v22;
    if (v25 < v24 / v22)
    {
      v26 = v25 * v22;
      if (a4 < a1 || a1 + v26 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v75 = a4 + v26;
      v82 = a4 + v26;
      if (v26 >= 1 && a2 < a3)
      {
        v52 = *(v11 + 16);
        v73 = v17;
        v74 = v11 + 16;
        v71 = v52;
        v72 = (v11 + 8);
        v53 = v23;
        v54 = v76;
        v55 = v6;
        v70 = a3;
        while (1)
        {
          v80 = a1;
          v56 = v71;
          v71(v53, a2, v54);
          v57 = a2;
          v58 = v53;
          v59 = v73;
          v56(v73, a4, v54);
          v60 = v78(v58, v59);
          if (v55)
          {
            break;
          }

          v61 = v60;
          v81 = 0;
          v62 = *v72;
          (*v72)(v59, v54);
          v62(v58, v54);
          v53 = v58;
          if (v61)
          {
            v63 = v79;
            v64 = v80;
            a2 = v57 + v79;
            if (v80 < v57 || v80 >= a2)
            {
              v54 = v76;
              swift_arrayInitWithTakeFrontToBack();
              v63 = v79;
              v55 = v81;
            }

            else
            {
              v55 = v81;
              v54 = v76;
              if (v80 != v57)
              {
                swift_arrayInitWithTakeBackToFront();
                v63 = v79;
              }
            }
          }

          else
          {
            v63 = v79;
            v64 = v80;
            v65 = a4 + v79;
            a2 = v57;
            if (v80 < a4 || v80 >= v65)
            {
              v54 = v76;
              swift_arrayInitWithTakeFrontToBack();
              v63 = v79;
              v55 = v81;
            }

            else
            {
              v55 = v81;
              v54 = v76;
              if (v80 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
                v63 = v79;
              }
            }

            v83 = v65;
            a4 = v65;
          }

          a1 = v64 + v63;
          v84 = a1;
          if (a4 >= v75 || a2 >= v70)
          {
            goto LABEL_65;
          }
        }

        v66 = *v72;
        (*v72)(v59, v54);
        v66(v58, v54);
      }

LABEL_65:
      specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v84, &v83, &v82);
      return;
    }

    v75 = v20;
    v27 = a3;
    v28 = a2;
    v29 = v24 / v22 * v22;
    if (a4 < v28 || v28 + v29 <= a4)
    {
      v30 = v28;
      v31 = v76;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v30 = v28;
      v31 = v76;
      if (a4 == v28)
      {
LABEL_24:
        v81 = v6;
        v33 = a4 + v29;
        if (v29 >= 1)
        {
          v34 = -v22;
          v68 = a4;
          v69 = (v11 + 16);
          v71 = (v11 + 8);
          v35 = a4 + v29;
          v36 = v27;
          v37 = v75;
          v80 = a1;
          v73 = -v22;
          do
          {
            v74 = v33;
            v70 = v33;
            v38 = v30;
            v76 = v30 + v34;
            v72 = v30;
            while (1)
            {
              if (v38 <= a1)
              {
                v84 = v38;
                v33 = v70;
                goto LABEL_64;
              }

              v39 = v36;
              v40 = v73;
              v79 = v35;
              v41 = v35 + v73;
              v42 = *v69;
              (*v69)(v37, v35 + v73, v31);
              v42(v13, v76, v31);
              v43 = v37;
              v44 = v81;
              v45 = v78(v37, v13);
              v81 = v44;
              if (v44)
              {
                v67 = *v71;
                (*v71)(v13, v31);
                v67(v43, v31);
                v84 = v72;
                v33 = v74;
                goto LABEL_64;
              }

              v46 = v45;
              v47 = &v39[v40];
              v48 = v13;
              v49 = *v71;
              v50 = v48;
              (*v71)();
              v49(v43, v31);
              if (v46)
              {
                break;
              }

              v36 = &v39[v40];
              if (v39 < v79 || v47 >= v79)
              {
                swift_arrayInitWithTakeFrontToBack();
                v13 = v50;
                v37 = v75;
              }

              else
              {
                v13 = v50;
                v37 = v75;
                if (v39 != v79)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v74 = v41;
              v35 = v41;
              a1 = v80;
              v38 = v72;
              if (v41 <= v68)
              {
                v30 = v72;
                v33 = v74;
                goto LABEL_63;
              }
            }

            v36 = &v39[v40];
            if (v39 < v72 || v47 >= v72)
            {
              v30 = v76;
              swift_arrayInitWithTakeFrontToBack();
              v51 = v68;
              v13 = v50;
              v37 = v75;
            }

            else
            {
              v37 = v75;
              v30 = v76;
              v51 = v68;
              v13 = v50;
              if (v39 != v72)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v35 = v79;
            a1 = v80;
            v34 = v73;
            v33 = v74;
          }

          while (v79 > v51);
        }

LABEL_63:
        v84 = v30;
LABEL_64:
        v82 = v33;
        goto LABEL_65;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v22 = v79;
    goto LABEL_24;
  }

LABEL_68:
  __break(1u);
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for UUID();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void specialized closure #1 in PKDrawingStruct.bounds<A>(in:)(CGFloat *a1@<X0>, void *a2@<X2>, CGRect *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v21 - v8);
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  type metadata accessor for Paper(0);
  _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
  Ref.subscript.getter();
  v14 = specialized CRRegister<>.bounds(in:)(a2, v9);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  (*(v7 + 8))(v9, v6);
  v22.origin.x = v10;
  v22.origin.y = v11;
  v22.size.width = v12;
  v22.size.height = v13;
  v23.origin.x = v14;
  v23.origin.y = v16;
  v23.size.width = v18;
  v23.size.height = v20;
  *a3 = CGRectUnion(v22, v23);
}

{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v21 - v8);
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  type metadata accessor for PKDrawingStruct(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_6(&lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct, type metadata accessor for PKDrawingStruct);
  Ref.subscript.getter();
  v14 = specialized CRRegister<>.bounds(in:)(a2, v9);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  (*(v7 + 8))(v9, v6);
  v22.origin.x = v10;
  v22.origin.y = v11;
  v22.size.width = v12;
  v22.size.height = v13;
  v23.origin.x = v14;
  v23.origin.y = v16;
  v23.size.width = v18;
  v23.size.height = v20;
  *a3 = CGRectUnion(v22, v23);
}

void partial apply for specialized closure #1 in PKDrawingStruct.bounds<A>(in:)(CGFloat *a1@<X0>, CGRect *a2@<X8>)
{
  specialized closure #1 in PKDrawingStruct.bounds<A>(in:)(a1, *(v2 + 16), a2);
}

{
  specialized closure #1 in PKDrawingStruct.bounds<A>(in:)(a1, *(v2 + 16), a2);
}

unint64_t lazy protocol witness table accessor for type PaperKitCodingError and conformance PaperKitCodingError()
{
  result = lazy protocol witness table cache variable for type PaperKitCodingError and conformance PaperKitCodingError;
  if (!lazy protocol witness table cache variable for type PaperKitCodingError and conformance PaperKitCodingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PaperKitCodingError and conformance PaperKitCodingError);
  }

  return result;
}

uint64_t outlined assign with take of WeakTagged_3<TaggedPaperPage>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in Capsule<>.append<A>(_:andStrokes:pasteOffset:)(char **a1, __n128 a2, __n128 a3)
{
  a2.n128_u64[0] = *(v3 + 56);
  a3.n128_u64[0] = *(v3 + 64);
  return closure #1 in Capsule<>.append<A>(_:andStrokes:pasteOffset:)(a1, *(v3 + 48), *(v3 + 72), *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), a2, a3);
}

uint64_t _s8PaperKit9PDFPageIDVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s8PaperKit0A0VWOhTm_4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

PaperKit::FormContentType __swiftcall FormContentType.init(_:)(Swift::String a1)
{
  v2 = v1;
  v3 = MEMORY[0x1DA6CCED0](a1._countAndFlagsBits);

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {

    goto LABEL_8;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {

LABEL_8:
    v11 = 2;
    goto LABEL_9;
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
  {

    v11 = 3;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {

      v11 = 3;
    }

    else
    {
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
      if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
      {

        v11 = 4;
      }

      else
      {
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v22)
        {

          v11 = 4;
        }

        else
        {
          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;
          if (v23 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v25 == v26)
          {

            v11 = 5;
          }

          else
          {
            v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v27)
            {

              v11 = 5;
            }

            else
            {
              v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v30 = v29;
              if (v28 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v30 == v31)
              {

                v11 = 6;
              }

              else
              {
                v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v32)
                {

                  v11 = 6;
                }

                else
                {
                  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v35 = v34;
                  if (v33 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v35 == v36)
                  {

                    v11 = 7;
                  }

                  else
                  {
                    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v37)
                    {

                      v11 = 7;
                    }

                    else
                    {
                      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v40 = v39;
                      if (v38 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v40 == v41)
                      {

                        v11 = 8;
                      }

                      else
                      {
                        v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

                        if (v42)
                        {

                          v11 = 8;
                        }

                        else
                        {
                          v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v45 = v44;
                          if (v43 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v45 == v46)
                          {

                            v11 = 9;
                          }

                          else
                          {
                            v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

                            if (v47)
                            {

                              v11 = 9;
                            }

                            else
                            {
                              v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                              v50 = v49;
                              if (v48 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v50 == v51)
                              {

                                v11 = 10;
                              }

                              else
                              {
                                v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v52)
                                {

                                  v11 = 10;
                                }

                                else
                                {
                                  v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                  v55 = v54;
                                  if (v53 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v55 == v56)
                                  {

                                    v11 = 11;
                                  }

                                  else
                                  {
                                    v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                    if (v57)
                                    {

                                      v11 = 11;
                                    }

                                    else
                                    {
                                      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                      v60 = v59;
                                      if (v58 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v60 == v61)
                                      {

                                        v11 = 12;
                                      }

                                      else
                                      {
                                        v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                        if (v62)
                                        {

                                          v11 = 12;
                                        }

                                        else
                                        {
                                          v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                          v65 = v64;
                                          if (v63 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v65 == v66)
                                          {

                                            v11 = 13;
                                          }

                                          else
                                          {
                                            v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                            if (v67)
                                            {

                                              v11 = 13;
                                            }

                                            else
                                            {
                                              v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                              v70 = v69;
                                              if (v68 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v70 == v71)
                                              {

                                                v11 = 14;
                                              }

                                              else
                                              {
                                                v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                if (v72)
                                                {

                                                  v11 = 14;
                                                }

                                                else
                                                {
                                                  v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                  v75 = v74;
                                                  if (v73 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v75 == v76)
                                                  {

                                                    v11 = 15;
                                                  }

                                                  else
                                                  {
                                                    v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                    if (v77)
                                                    {

                                                      v11 = 15;
                                                    }

                                                    else
                                                    {
                                                      v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                      v80 = v79;
                                                      if (v78 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v80 == v81)
                                                      {

                                                        v11 = 16;
                                                      }

                                                      else
                                                      {
                                                        v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                        if (v82)
                                                        {

                                                          v11 = 16;
                                                        }

                                                        else
                                                        {
                                                          v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                          v85 = v84;
                                                          if (v83 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v85 == v86)
                                                          {

                                                            v11 = 17;
                                                          }

                                                          else
                                                          {
                                                            v87 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                            if (v87)
                                                            {

                                                              v11 = 17;
                                                            }

                                                            else
                                                            {
                                                              v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                              v90 = v89;
                                                              if (v88 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v90 == v91)
                                                              {

                                                                v11 = 18;
                                                              }

                                                              else
                                                              {
                                                                v92 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                if (v92)
                                                                {

                                                                  v11 = 18;
                                                                }

                                                                else
                                                                {
                                                                  v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                  v95 = v94;
                                                                  if (v93 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v95 == v96)
                                                                  {

                                                                    v11 = 19;
                                                                  }

                                                                  else
                                                                  {
                                                                    v97 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                    if (v97)
                                                                    {

                                                                      v11 = 19;
                                                                    }

                                                                    else
                                                                    {
                                                                      v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                      v100 = v99;
                                                                      if (v98 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v100 == v101)
                                                                      {

                                                                        v11 = 20;
                                                                      }

                                                                      else
                                                                      {
                                                                        v102 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                        if (v102)
                                                                        {

                                                                          v11 = 20;
                                                                        }

                                                                        else
                                                                        {
                                                                          v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                          v105 = v104;
                                                                          if (v103 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v105 == v106)
                                                                          {

                                                                            v11 = 21;
                                                                          }

                                                                          else
                                                                          {
                                                                            v107 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                            if (v107)
                                                                            {

                                                                              v11 = 21;
                                                                            }

                                                                            else
                                                                            {
                                                                              v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                              v110 = v109;
                                                                              if (v108 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v110 == v111)
                                                                              {

                                                                                v11 = 22;
                                                                              }

                                                                              else
                                                                              {
                                                                                v112 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                                if (v112)
                                                                                {

                                                                                  v11 = 22;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                                  v115 = v114;
                                                                                  if (v113 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v115 == v116)
                                                                                  {

                                                                                    v11 = 23;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v117 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                                    if (v117)
                                                                                    {

                                                                                      v11 = 23;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                                      v120 = v119;
                                                                                      if (v118 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v120 == v121)
                                                                                      {

                                                                                        v11 = 24;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v122 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                                        if (v122)
                                                                                        {

                                                                                          v11 = 24;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                                          v125 = v124;
                                                                                          if (v123 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v125 == v126)
                                                                                          {

                                                                                            v11 = 25;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v127 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                                            if (v127)
                                                                                            {

                                                                                              v11 = 25;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                                              v130 = v129;
                                                                                              if (v128 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v130 == v131)
                                                                                              {

                                                                                                v11 = 26;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v132 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                                                if (v132)
                                                                                                {

                                                                                                  v11 = 26;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v133 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                                                  v135 = v134;
                                                                                                  if (v133 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v135 == v136)
                                                                                                  {

                                                                                                    v11 = 27;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v137 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                                                    if (v137)
                                                                                                    {

                                                                                                      v11 = 27;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v138 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                                                      v140 = v139;
                                                                                                      if (v138 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v140 == v141)
                                                                                                      {

                                                                                                        v11 = 28;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        v142 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                                                        if (v142)
                                                                                                        {

                                                                                                          v11 = 28;
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                                                          v145 = v144;
                                                                                                          if (v143 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v145 == v146)
                                                                                                          {

                                                                                                            v11 = 29;
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            v147 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                                                            if (v147)
                                                                                                            {

                                                                                                              v11 = 29;
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                                                              v150 = v149;
                                                                                                              if (v148 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v150 == v151)
                                                                                                              {

                                                                                                                v11 = 30;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v152 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                                                                if (v152)
                                                                                                                {

                                                                                                                  v11 = 30;
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  v153 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                                                                  v155 = v154;
                                                                                                                  if (v153 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v155 == v156)
                                                                                                                  {

                                                                                                                    v11 = 31;
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    v157 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                                                                    if (v157)
                                                                                                                    {

                                                                                                                      v11 = 31;
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v158 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                                                                      v160 = v159;
                                                                                                                      if (v158 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v160 == v161)
                                                                                                                      {

                                                                                                                        v11 = 32;
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        v162 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                                                                        if (v162)
                                                                                                                        {

                                                                                                                          v11 = 32;
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          v163 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                                                                          v165 = v164;
                                                                                                                          if (v163 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v165 == v166)
                                                                                                                          {

                                                                                                                            v11 = 33;
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            v167 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                                                                            if (v167)
                                                                                                                            {

                                                                                                                              v11 = 33;
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              v168 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                                                                              v170 = v169;
                                                                                                                              if (v168 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v170 == v171)
                                                                                                                              {

                                                                                                                                v11 = 37;
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                v172 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                                                                                if (v172)
                                                                                                                                {

                                                                                                                                  v11 = 37;
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  v173 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                                                                                  v175 = v174;
                                                                                                                                  if (v173 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v175 == v176)
                                                                                                                                  {

                                                                                                                                    v11 = 38;
                                                                                                                                  }

                                                                                                                                  else
                                                                                                                                  {
                                                                                                                                    v177 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                                                                                    if (v177)
                                                                                                                                    {

                                                                                                                                      v11 = 38;
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      v178 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                                                                                      v180 = v179;
                                                                                                                                      if (v178 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v180 == v181)
                                                                                                                                      {

                                                                                                                                        v11 = 39;
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        v182 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                                                                                        if (v182)
                                                                                                                                        {

                                                                                                                                          v11 = 39;
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          v183 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                                                                                          v185 = v184;
                                                                                                                                          if (v183 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v185 == v186)
                                                                                                                                          {

                                                                                                                                            v11 = 40;
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            v187 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                                                                                            if (v187)
                                                                                                                                            {

                                                                                                                                              v11 = 40;
                                                                                                                                            }

                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                              v188 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                                                                                              v190 = v189;
                                                                                                                                              if (v188 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v190 == v191)
                                                                                                                                              {

                                                                                                                                                v11 = 42;
                                                                                                                                              }

                                                                                                                                              else
                                                                                                                                              {
                                                                                                                                                v192 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                                                                                                if (v192)
                                                                                                                                                {

                                                                                                                                                  v11 = 42;
                                                                                                                                                }

                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                  v193 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                                                                                                  v195 = v194;
                                                                                                                                                  if (v193 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v195 == v196)
                                                                                                                                                  {

                                                                                                                                                    v11 = 1;
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    v197 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                                                                                                    if (v197)
                                                                                                                                                    {

                                                                                                                                                      v11 = 1;
                                                                                                                                                    }

                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                      v198 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                                                                                                      v200 = v199;
                                                                                                                                                      if (v198 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v200 == v201)
                                                                                                                                                      {

                                                                                                                                                        v11 = 43;
                                                                                                                                                      }

                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                        v202 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                                                                                                        if (v202)
                                                                                                                                                        {

                                                                                                                                                          v11 = 43;
                                                                                                                                                        }

                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                          v203 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                                                                                                          v205 = v204;
                                                                                                                                                          if (v203 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v205 == v206)
                                                                                                                                                          {

                                                                                                                                                            v11 = 44;
                                                                                                                                                          }

                                                                                                                                                          else
                                                                                                                                                          {
                                                                                                                                                            v207 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                                                                                                            if (v207)
                                                                                                                                                            {

                                                                                                                                                              v11 = 44;
                                                                                                                                                            }

                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                              v208 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                                                                                                              v210 = v209;
                                                                                                                                                              if (v208 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v210 == v211)
                                                                                                                                                              {

                                                                                                                                                                v11 = 45;
                                                                                                                                                              }

                                                                                                                                                              else
                                                                                                                                                              {
                                                                                                                                                                v212 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                                                                                                                if (v212)
                                                                                                                                                                {

                                                                                                                                                                  v11 = 45;
                                                                                                                                                                }

                                                                                                                                                                else
                                                                                                                                                                {
                                                                                                                                                                  v213 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                                                                                                                  v215 = v214;
                                                                                                                                                                  if (v213 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v215 == v216)
                                                                                                                                                                  {

                                                                                                                                                                    v11 = 46;
                                                                                                                                                                  }

                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                    v217 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                                                                                                                    if (v217)
                                                                                                                                                                    {

                                                                                                                                                                      v11 = 46;
                                                                                                                                                                    }

                                                                                                                                                                    else
                                                                                                                                                                    {
                                                                                                                                                                      v218 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                                                                                                                      v220 = v219;
                                                                                                                                                                      if (v218 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v220 == v221)
                                                                                                                                                                      {

                                                                                                                                                                        v11 = 73;
                                                                                                                                                                      }

                                                                                                                                                                      else
                                                                                                                                                                      {
                                                                                                                                                                        v222 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                                                                                                                        if (v222)
                                                                                                                                                                        {

                                                                                                                                                                          v11 = 73;
                                                                                                                                                                        }

                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                          v223 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                                                                                                                          v225 = v224;
                                                                                                                                                                          v226 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                                                                                                                                                          v228 = v227;

                                                                                                                                                                          if (v223 == v226 && v225 == v228)
                                                                                                                                                                          {

                                                                                                                                                                            v11 = 74;
                                                                                                                                                                          }

                                                                                                                                                                          else
                                                                                                                                                                          {
                                                                                                                                                                            v229 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                                                                                                                            if (v229)
                                                                                                                                                                            {
                                                                                                                                                                              v11 = 74;
                                                                                                                                                                            }

                                                                                                                                                                            else
                                                                                                                                                                            {
                                                                                                                                                                              v11 = 1;
                                                                                                                                                                            }
                                                                                                                                                                          }
                                                                                                                                                                        }
                                                                                                                                                                      }
                                                                                                                                                                    }
                                                                                                                                                                  }
                                                                                                                                                                }
                                                                                                                                                              }
                                                                                                                                                            }
                                                                                                                                                          }
                                                                                                                                                        }
                                                                                                                                                      }
                                                                                                                                                    }
                                                                                                                                                  }
                                                                                                                                                }
                                                                                                                                              }
                                                                                                                                            }
                                                                                                                                          }
                                                                                                                                        }
                                                                                                                                      }
                                                                                                                                    }
                                                                                                                                  }
                                                                                                                                }
                                                                                                                              }
                                                                                                                            }
                                                                                                                          }
                                                                                                                        }
                                                                                                                      }
                                                                                                                    }
                                                                                                                  }
                                                                                                                }
                                                                                                              }
                                                                                                            }
                                                                                                          }
                                                                                                        }
                                                                                                      }
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_9:
  *v2 = v11;
  return result;
}